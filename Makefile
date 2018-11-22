DOCKER_USER := ogarcia
DOCKER_ORGANIZATION := connectical
DOCKER_IMAGE := rclone

docker-image:
	docker build -t $(DOCKER_ORGANIZATION)/$(DOCKER_IMAGE) .

ci-test: docker-image
	docker run --rm $(DOCKER_ORGANIZATION)/$(DOCKER_IMAGE) /usr/bin/rclone version

.PHONY: docker-image ci-test
# vim:ft=make
