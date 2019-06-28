#!/bin/bash

opam install -y dune ocamlfind odoc

opam pin add -y -n p0_lib https://github.com/tomjridge/p0.git#dev
opam pin add -y -n example_grammars https://github.com/tomjridge/example_grammars.git
opam pin add -y -n tjr_simple_earley https://github.com/tomjridge/tjr_simple_earley.git#dev
opam install -y p0_lib example_grammars tjr_simple_earley
