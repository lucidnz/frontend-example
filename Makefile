
# [b]make(1)

PROJECT_NAME=	frontend-example

SUBDIR=		assets/css
SUBDIR+=	assets/js

.PHONY: watch
watch:
	while true; do find assets | entr -d $(MAKE); done

.include <bsd.subdir.mk>
