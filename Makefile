SHELL	= /bin/bash
RM	= rm -rf

all:
	@echo options:
	@grep "^[b-z]" ./Makefile | sed -e "s/^\(.*\):.*/  \1/g"

setup:
	./cwdemacs --batch \
	--eval="(setq network-security-level 'low)" -l ./init.el

purge:
	find . -type f -name "*~" -exec $(RM) {} \+
	find . -name "*#*" -exec $(RM) {} \+

clean: purge
	$(RM) $$(grep '^[^\*\!]' .gitignore | grep -v run | tr -d /)
