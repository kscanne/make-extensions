VERSION=1.0.2
PRODUCT=make-extensions

dist: make-extensions LICENSE README
	zip -r $(PRODUCT)-$(VERSION).zip make-extensions LICENSE README mozilla-model/ ooo-model/

# this is for kscanne only :)
installkps:
	cp -f make-extensions ${HOME}/clar/script/make-exts
	chmod 700 ${HOME}/clar/script/make-exts

clean:
	rm -f *.zip *.oxt *.xpi
