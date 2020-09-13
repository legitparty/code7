.PHONY: all

all: code7.ttf code7sc.ttf code7it.ttf

%.ttf: %.bdf
	docker build --build-arg font=${*} --output .

code7_glyphs   := $(wildcard ./fnt/code7/6x7/U+*)
code7sc_glyphs := $(wildcard ./fnt/code7sc//6x7/U+*)
code7it_glyphs := $(wildcard ./fnt/code7it//6x7/U+*)

code7.bdf: ${code7_glyphs}
	./fnt/src/2bdf "${<D}" > "${@}"

code7sc.bdf: ${code7sc_glyphs}
	./fnt/src/2bdf "${<D}" > "${@}"

code7it.bdf: ${code7it_glyphs}
	./fnt/src/2bdf "${<D}" > "${@}"

