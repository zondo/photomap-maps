# Makefile for photomap maps.

PHOTOS = ../photos

MAPS = albania-2022 italy-2025 prague-2025 sweden-2023 westbay-2025 graceland-2025
HTML = $(addsuffix .html,$(MAPS))

all: $(HTML)

%.html: $(PHOTOS)/%.zip
	photomap --trace -o $@ $<
