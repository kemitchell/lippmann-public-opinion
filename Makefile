chapters=$(wildcard **/chapter-*.md)

all: $(chapters:.md=.pdf)

%.pdf: %.md
	pandoc -o $@ $<
