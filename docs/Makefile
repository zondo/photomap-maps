# Makefile for photomap maps.

FILES = $(wildcard *.zip)
HTML  = $(subst .zip,.html,$(FILES))

all: $(HTML)

%.html: %.zip
	photomap --trace -o $@ $<
