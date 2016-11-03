
# [b]make(1)

T=              ../../public/css/frontend-example.min.css
E=              index.scss
# SOURCES=        index.scss \
                # test1.scss \
                # test2.scss
#
# - or -
#
SOURCES!=       find * -name \*.scss



.PHONY: all clean



all: $T

$T: ${SOURCES}
	sassc -t compressed $E >$@



clean:
	rm -f $T
