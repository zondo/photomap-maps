# Makefile for photomap maps.

PHOTOS = ../photos

FILES = $(wildcard $(PHOTOS)/*.zip)
HTML  = $(subst .zip,.html,$(filename $(FILES)))

all: $(HTML)

%.html: %.zip
	photomap --trace -o $@ $<
