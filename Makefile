REPO ?= quay.io/kpashka/linda
BRANCH ?= latest
PORT ?= 8080

build:
	go build -o ./linda

run:
	./linda -c $(LINDA_CONFIG)

pull:
	docker pull $(REPO):$(BRANCH)

up:
	docker run -it -p $(PORT):$(PORT) -e "LINDA_CONFIG=$(LINDA_CONFIG)" $(REPO):$(BRANCH)

.PHONY: build run pull run