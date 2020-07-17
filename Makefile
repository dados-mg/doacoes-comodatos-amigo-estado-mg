.PHONY: help publish

#====================================================================
# PHONY TARGETS

help: 
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' Makefile | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-10s\033[0m %s\n", $$1, $$2}'

publish: ## Adiciona commit hash ao datapackage.json e exporta para buid/
	Rscript --verbose scripts/process.R 2> logs/log.Rout

