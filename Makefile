all: install

help:
	@echo "make deploy:	Create symlink to home directory"
	@echo "make update:	Update repos."
	@echo "make install: deploy & update"

update:
	git pull origin main
	git submodule init
	git submodule update
	git submodule foreach git pull origin main

deploy:
	@/bin/sh deploy.sh

install: update deploy
	@exec $$SHELL
