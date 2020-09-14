.PHONY: all

all: code7.ttf code7sc.ttf code7it.ttf

%.ttf: %.bdf fontforge
	docker image rm ttf || true
	DOCKER_BUILDKIT=1 docker build -f Dockerfile.ttf --build-arg font=${*} --target ttf -t ttf .
	DOCKER_BUILDKIT=1 docker build -f Dockerfile     --build-arg font=${*} --target export --output type=local,dest=. .

code7_glyphs   := $(wildcard ./fnt/code7/6x7/U+*)
code7sc_glyphs := $(wildcard ./fnt/code7sc//6x7/U+*)
code7it_glyphs := $(wildcard ./fnt/code7it//6x7/U+*)

code7.bdf: ${code7_glyphs}
	./fnt/src/2bdf.sh "${<D}" > "${@}"

code7sc.bdf: ${code7sc_glyphs}
	./fnt/src/2bdf.sh "${<D}" > "${@}"

code7it.bdf: ${code7it_glyphs}
	./fnt/src/2bdf.sh "${<D}" > "${@}"

fontforge:
	DOCKER_BUILDKIT=1 docker build -f Dockerfile.fontforge --build-arg font=${*} --target fontforge -t fontforge .
	touch fontforge
