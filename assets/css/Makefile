
# [b]make(1)

PROJECT_NAME?=		frontend-example

PUBLIC=			../../public/css
SOURCES!=       	find * -name \*.scss
SOURCES_FINGERPRINT!=	tar -cf - $(SOURCES) | md5sum | cut -c 1-16
TARGET=			$(PUBLIC)/$(SOURCES_FINGERPRINT)_$(PROJECT_NAME).css



.PHONY: all
all: $(TARGET)
	:

$(TARGET): $(SOURCES) $(PUBLIC)
	sassc -t compressed index.scss $@

$(PUBLIC):
	mkdir -p $@

.PHONY: clean
clean:
	rm -f $(PUBLIC)/????????????????_*.css
