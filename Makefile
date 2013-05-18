
css:
	stylus sources/styles/main.styl -o website/css/

js:
	bash compiler.sh

clean-js:
	rm -fr sources/javascript/build sources/javascript/components sources/javascript/template.js

ftp-push:
	clear
	make all
	bash ftp-push.sh

init:
	git ftp init -vv -u mestizoamerica@xifox.net -p Mestizo10America20. ftp://mestizoamerica.com.ar

deploy:
	git ftp push -vv -u mestizoamerica@xifox.net -p Mestizo10America20. ftp//mestizoamerica.com.ar

.PHONY: html
