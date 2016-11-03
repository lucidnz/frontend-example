
# [b]make(1)

NPM_BIN=        ../../node_modules/.bin

SOURCES!=       find * -name \*.js
D=              ../../public/js
T=              ${D}/frontend-example.js
TMIN=           ${T:.js=.min.js}



.PHONY: all clean



all: ${T} ${TMIN}

${TMIN}: ${T}
	${NPM_BIN}/uglifyjs $> >$@

${T}: ${SOURCES}
	${NPM_BIN}/rollup -c -f iife -g m:m >$@



clean:
	rm -f ${T} ${TMIN}
