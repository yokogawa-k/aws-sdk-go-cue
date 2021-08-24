# vi: set ft=make ts=2 sw=2 sts=0 noet:

SHELL := /bin/bash
REPOSITORY := github.com/aws/aws-sdk-go
SERVICES := ec2 ecs eks


.PHONY: default
default: help

# http://postd.cc/auto-documented-makefile/
.PHONY: help help-common
help: help-common

help-common:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m %-30s\033[0m %s\n", $$1, $$2}'

.PHONY: init goget generate
init:
	go mod init
	cue mod init

goget:
	for i in $(SERVICES); do \
		go get $(REPOSITORY)/service/$${i}; \
	done

generate: goget
	for i in $(SERVICES); do \
		cue get go $(REPOSITORY)/service/$${i} || true ; \
	done

sync: generate
	for i in $(SERVICES); do \
		rsync -avKi cue.mod/gen/$(REPOSITORY)/service/$${i} ./service/; \
	done

