#..............................................................................#
# Utils

.PHONY: help
help: ## Show help menu
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m\033[0m\n"} /^[$$()% a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-20s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

#..............................................................................#
# Project config

.PHONY: install
install: ## Install dependencies
	pip install -r requirements.txt

.PHONY: run
run: ## Run jupyter notebook
	jupyter notebook

.PHONY: deploy
deploy: ## Install dependecies and Run jupyter notebook
	make install
	make run