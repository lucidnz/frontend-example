
# [b]make(1)

PROJECT_NAME?=		frontend-example

NODE_BIN=		../../node_modules/.bin
PUBLIC=			../../public/js
SOURCES!=       	find * -name \*.js
SOURCES_FINGERPRINT!=	tar -cf - $(SOURCES) | md5sum | cut -c 1-16
TARGET=			$(PUBLIC)/$(SOURCES_FINGERPRINT)_$(PROJECT_NAME).js



.PHONY: all
all: $(TARGET)
	:

$(TARGET): $(SOURCES) $(PUBLIC)
	$(NODE_BIN)/rollup -c | $(NODE_BIN)/uglifyjs >$@

$(PUBLIC):
	mkdir -p $@

.PHONY: clean
clean:
	rm -f $(PUBLIC)/????????????????_*.js
