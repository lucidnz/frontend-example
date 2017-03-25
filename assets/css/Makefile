
# [b]make(1)

PROJECT_NAME?=		frontend-example

PUBLIC=			../../public/css
SOURCES!=       	find * -name \*.scss
SOURCES_FINGERPRINT!=	tar -cf - $(SOURCES) | md5sum | cut -c 1-16
SOURCES_IN=		index.scss
TARGET=			$(SOURCES_FINGERPRINT)_$(PROJECT_NAME).css



.PHONY: all
all: $(PUBLIC)/$(PROJECT_NAME).css
	:

$(PUBLIC)/$(PROJECT_NAME).css: $(PUBLIC)/$(TARGET)
	ln -fs $(TARGET) $@

$(PUBLIC)/$(TARGET): $(SOURCES) $(PUBLIC)
	sassc -t compressed $(SOURCES_IN) $@

$(PUBLIC):
	mkdir -p $@

.PHONY: clean
clean:
	rm -f $(PUBLIC)/????????????????_*.css
