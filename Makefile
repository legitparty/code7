%.ttf: %.bdf
	docker build --build-arg font=$* --output .
