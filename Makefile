help:
	@echo "Available Targets:"
	@cat Makefile | egrep '^(\w+?):' | sed 's/:\(.*\)//g' | sed 's/^/- /g'

test:
	@python runtests.py

release:
	@python setup.py sdist bdist_wheel upload

.PHONY: test release

