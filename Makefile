PREFIX ?= "/"
VERSION=$(shell cat VERSION)
SDIST_DIR=sdist/
TARBALL=${VERSION}.tar.gz


.PHONY: help
help:
	@echo "Targets:"
	@echo "  help: What you are reading"
	@echo "  install: Install all scripts"
	@echo "  clean: clean up"
	@echo "  sdist: create a source distribution"
	@echo ""
	@echo "Environment Variables:"
	@echo "  PREFIX: Prefix to install to. Default: ${PREFIX}"


.PHONY: install
install:
	install -m 755 -D scripts/coreos-fips ${PREFIX}/usr/libexec/rhcos-tools/coreos-fips


.PHONY: clean
clean:
	rm -rf sdist/


.PHONY: sdist
sdist:
	mkdir -p ${SDIST_DIR}/rhcos-tools-${VERSION}
	cp -rf COPYING LICENSE README.md Makefile rhcos-tools.spec scripts VERSION ${SDIST_DIR}/rhcos-tools-${VERSION}
	tar -C sdist -czf ${SDIST_DIR}/${TARBALL} rhcos-tools-${VERSION}
