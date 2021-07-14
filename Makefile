SHELL := /bin/bash

export TARDIGRADE_CI_ORG = kbalk
export TARDIGRADE_CI_BRANCH = add-pytest-targets

include $(shell test -f .tardigrade-ci || curl -sSL -o .tardigrade-ci "https://raw.githubusercontent.com/plus3it/tardigrade-ci/master/bootstrap/Makefile.bootstrap"; echo .tardigrade-ci)
