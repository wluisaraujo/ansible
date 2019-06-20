<?php
class Banco
{
    private $conn,$dsn,$st;

    public function __construct()
    {

        global $config;

        try{

            $this->dsn = "$config[driver]:
            host=$config[host];
            dbname=$config[dbname]";

            $this->conn = new PDO(
                $this->dsn,
                $config['user'],
                $config['password']
            );

            $this->conn->setAttribute(
                PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION
            );

        }catch (PDOException $err){
            echo 'Erro:'.$err->getMessage();
        }


    }

    public function inserir($tabela, array $dados)
    {
        #estrutura do array ( campo => valor ) campo == campo da tabela
        #INSERT INTO TABELA(CAMPOS)VALUES(VALORES);
        unset($_SESSION[$tabela]);

        try{

            foreach ($dados as $campo => $valor){
                $campos[]  = $campo;
                $holders[] = '?';
                $valores[] = $valor;
            }

            $campos[]  = 'ip';
            $holders[] = '?';
            $valores[] = $_SERVER['REMOTE_ADDR'];

            $campos  = implode(',', $campos);

            $holders = implode( ',', $holders);

            $sql = "INSERT INTO $tabela($campos)VALUES($holders)";

            $this->st  = $this->conn->prepare($sql);

            return $this->st->execute($valores);

        }catch (PDOException $err){
            die("Erro:{$err->getMessage()}");
        }

    }

    public function alterar($tabela, array $dados, $condicao = null)
    {
        #formato $condicao campo = valor;
        $registro = $this->ver($tabela, $condicao);

        if(strtolower($_SESSION['usuario']) != 'admin'){
            if($registro['ip'] != $_SERVER['REMOTE_ADDR']){
                $_SESSION[$tabela] = 'Vocẽ não pode alterar este registro, somente registros que você cadastrou';
                $_SESSION['tipo']  = 'danger';
                return false;
            }
        }

        try{

            foreach ($dados as $campo => $valor){
                $sets[]    = "$campo=?";
                $valores[] = $valor;
            }

            $sets = implode( ',', $sets);

            $sql  = "UPDATE $tabela SET $sets";
            $sql .= ($condicao) ? " WHERE $condicao" : '';

            $this->st  = $this->conn->prepare($sql);

            if($this->st->execute($valores)){
                $_SESSION[$tabela] = 'Dados Alterados!';
                $_SESSION['tipo']  = 'success';
                return true;
            }

        }catch (PDOException $err){
            die("Erro:{$err->getMessage()}");
        }

    }

    public function query($tabela, $campos = '*')
    {
        $sql = "SELECT $campos FROM $tabela";
        return $this->conn->query($sql);
    }


    public function listar($tabela, $campos = '*', $condicao = null)
    {
        #SELECT CAMPOS FROM $tabela
        try{

            $sql = "SELECT $campos FROM $tabela";

            if(is_null($condicao)){
                $sql  .= " WHERE ip = '{$_SERVER['REMOTE_ADDR']}' OR ip = 'localhost'";

            }else{
                $sql  .= " WHERE $condicao AND (ip = '{$_SERVER['REMOTE_ADDR']}' OR ip = 'localhost')";
            }

            return $this->conn->query($sql)->fetchAll(PDO::FETCH_ASSOC);

        }catch (PDOException $err){
            echo "Erro:{$err->getMessage()}";
        }

    }

    public function ver($tabela, $condicao, $campos = '*')
    {
        try{
            $sql = "SELECT $campos FROM $tabela $condicao";
            return $this->conn->query($sql)->fetch(PDO::FETCH_ASSOC);
        }catch (PDOException $err){
            echo "Erro:{$err->getMessage()}";
        }

    }

    public function logar($email, $senha)
    {
        $sql = 'SELECT * FROM funcionarios WHERE email = ? AND senha = ?';
        $st = $this->conn->prepare($sql);
        $st->execute(array($email, $senha));
        return $st->fetch(PDO::FETCH_ASSOC);
    }

    public function excluir($tabela, $condicao)
    {
        $registro = $this->ver($tabela, $condicao);

        if($registro['ip'] != $_SERVER['REMOTE_ADDR']){
            $_SESSION[$tabela] = 'Vocẽ não pode excluir este registro, somente registros que você cadastrou';
            $_SESSION['tipo']  = 'danger';
            return false;
        }

        try{
            $sql = "DELETE FROM $tabela $condicao";
            return $this->conn->query($sql);
        }catch (PDOException $err){
            echo "Erro:{$err->getMessage()}";
        }
    }
}












