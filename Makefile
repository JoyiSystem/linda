pull:
	docker pull quay.io/kpashka/linda

run:
	docker run -it -p 8080:8080 -e "LINDA_CONFIG=$(LINDA_CONFIG)" quay.io/kpashka/linda

.PHONY: pull run