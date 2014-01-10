VERSION=1.0.2
PRODUCT=make-extensions

dist: make-extensions LICENSE README
	zip -r $(PRODUCT)-$(VERSION).zip make-extensions LICENSE README mozilla-model/ ooo-model/

# this is for kscanne only :)
installkps:
	rm -f ${HOME}/clar/script/make-exts
	cat make-extensions | sed '/^BASEDIR/s/.*/BASEDIR=$${HOME}\/seal\/make-extensions/' | sed '1s/.*/&\n# DO NOT EDIT! Installed from make-extensions github clone (make installkps)/' > ${HOME}/clar/script/make-exts
	chmod 500 ${HOME}/clar/script/make-exts

clean:
	rm -f *.zip *.oxt *.xpi
