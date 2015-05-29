# This script assumes mne-tools.github.io lives in the same
# directory as mne-python

copy: pull
	cp -R ../expyfun/doc/build/html/* expyfun/
	cp -R ../mnefun/doc/build/html/* mnefun/

pull:
	git fetch origin
	git reset --hard origin/master

push:
	git commit -am 'ENH: Update'
	git push origin master

html: pull copy push

