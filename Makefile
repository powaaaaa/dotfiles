# シェルを指定（必要に応じて変更）
SHELL := /bin/bash

# デフォルトのターゲット
all: setup

# setup ターゲット
setup: link
	@echo "------------------------------------"
	@echo
	@printf '\033[30;1m%s\033[m\n' 'Running setup.sh...'
	@echo
	@./scripts/setup.sh

# link ターゲット
link:
	@printf '\033[30;1m%s\033[m\n' 'Running link.sh...'
	@echo
	@./scripts/link.sh

# zsh-install ターゲット
zsh-install:
	@printf '\033[30;1m%s\033[m\n' 'Running link.sh...'
	@if [ "$$(basename $$SHELL)" = "bash" ]; then \
		printf '\033[30;1m%s\033[m' 'Current shell is bash. Running zsh-install.sh...' ; \
		./scripts/zsh-install.sh; \
	else \
		printf "\033[31;1m%s\033[m" 'Current shell is not bash. Skipping zsh-install.sh...' ;\
	fi
