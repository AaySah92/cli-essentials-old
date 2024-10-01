.PHONY: install enter remove

all: help

install:
	ansible-playbook local.yml

enter:
	distrobox enter -a "--env XDG_CONFIG_HOME=$(CURDIR)/dotfiles" arch

remove:
	ansible-playbook local.yml -e "state=absent"

help:
	@echo "Valid commands:"
	@echo "  make install   Install cli-essentials"
	@echo "  make remove    Remove cli-essentials"
	@echo "  make help      Show this help message"
