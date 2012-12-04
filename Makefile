INSTALLDIR=/usr/share/fortune/

.PHONY: all clean install

all: newsticker newsticker.dat

newsticker: newsticker.txt
	./to-fortune.sh $< >$@

%.dat: %
	strfile $<

clean:
	$(RM) newsticker newsticker.dat

install: all
	install -m 644 newsticker newsticker.dat $(INSTALLDIR)
