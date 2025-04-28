# Makefile pour SimpleText → HTML

.PHONY: all build run clean

all: build run

menhir:
	menhir --infer parser.mly

lexer:
	ocamllex lexer.mll

build: menhir lexer
	dune build

run:
	dune exec ./main.exe -- exemples/exemple2.stxt

clean:
	dune clean
	@rm -f parser.ml parser.mli lexer.ml
