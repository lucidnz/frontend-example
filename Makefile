
# [b]make(1)

SUBDIR=		assets/css
SUBDIR+=	assets/js

.PHONY: watch

watch:
	find assets -name \*.\* | entr $(MAKE)

.include <bsd.subdir.mk>
