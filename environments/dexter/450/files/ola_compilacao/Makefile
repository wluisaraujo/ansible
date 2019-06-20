top_srcdir=.
CONFIG_MAKE=$(top_srcdir)/config.make

-include $(top_srcdir)/config.make

oi: src/oi.c
	gcc -o oi  src/oi.c

install: oi
	mkdir -p $(prefix)
	install oi $(prefix)

uninstall:
	rm -f $(prefix)/oi

clean:
	rm -f oi
	rm -f config.make
