all:
	@echo "AVAILABLE COMMANDS:"
	@echo "    patch_release"
	@echo "    minor_release"
	@echo "    major_release"
	@echo "    release"

patch_release:
	bumpversion patch
	$(MAKE) release

minor_release:
	bumpversion minor
	$(MAKE) release

major_release:
	bumpversion major
	$(MAKE) release

release:
	python setup.py sdist upload -r internal
