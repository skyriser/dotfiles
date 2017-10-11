all: install

help:
	@echo "make deploy:	Create symlink to home directory"
	@echo "make update:	Update repos."
	@echo "make install: deploy & update"

update:
	git pull origin master
	git submodule init
	git submodule update
	git submodule foreach git pull origin master

deploy:
	@/bin/sh deploy.sh

install: update deploy
	@exec $$SHELL
