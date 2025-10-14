# Makefile for photomap maps.

.DEFAULT:; mkdocs $@

all: build

serve:
	python -m http.server -d site -b 0.0.0.0

publish:
	mkdocs gh-deploy -v --no-history
