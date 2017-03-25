
# [b]make(1)

PROJECT_NAME=	frontend-example

SUBDIR=		assets/css
SUBDIR+=	assets/js

.PHONY: watch
watch:
	find assets -name \*.\* | entr $(MAKE)

.include <bsd.subdir.mk>
