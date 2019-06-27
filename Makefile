NAME:=travis_docker_test

all:
	$(MAKE) opam_with_pinning

DOCKER_FLAGS:= # --no-cache?
opam_with_pinning:
	docker build $(DOCKER_FLAGS) -t $(NAME) -f Dockerfile .
