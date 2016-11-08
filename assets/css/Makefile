
# [b]make(1)

SOURCES!=       find * -name \*.scss
E=              index.scss
D=		../../public/css
T=              $(D)/frontend-example.min.css



.PHONY: all clean



all: $T

$T: $D $(SOURCES)
	sassc -t compressed $E >$@

$D:
	mkdir -p $D



clean:
	rm -f $T
