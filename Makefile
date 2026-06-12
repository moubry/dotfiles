# Shell scripts that shellcheck can analyze (sh/bash). The Ruby and Perl
# scripts and the compiled `vcprompt` binary are excluded, as are the files
# under zsh/ — they are zsh-dialect config sourced at startup, which shellcheck
# does not support.
SHELL_SCRIPTS = bootstrap.sh encode flush git-diff-cmd.sh git-notpushed \
                orgmode rc rendermd

.PHONY: lint
lint: ## Run shellcheck over the shell scripts
	shellcheck $(SHELL_SCRIPTS)

.PHONY: help
help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "  %-12s %s\n", $$1, $$2}'
