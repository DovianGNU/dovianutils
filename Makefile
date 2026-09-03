.PHONY: copy makedeb

deb-pkg: copy makedeb

copy:
	bash install/sh/copy.sh

makedeb:
	bash install/sh/makedeb.sh

