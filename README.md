# travis_docker_test

## Introduction

This is a silly repository to test whether various projects can build, using travis and docker.

## Quicklinks

* docker image is something like `ocaml/opam2:4.07`

## Usage

Make changes and commit. Travis will then try to rebuild.

## Files

- .travis.yml to tell travis to build
- Makefile (called from .travis.yml)
- Dockerfile (called from Makefile)
- install_script.sh (called from Dockerfile)

## Old stuff which probably needs deleting

To build an environment for the Jane Street Core library on the latest stable OCaml, a simple Dockerfile looks like this:

FROM ocaml/opam
RUN opam depext -i core

You can build and use this image locally for development by saving the Dockerfile and:

docker build -t ocaml-core .
docker run -ti ocaml-core bash