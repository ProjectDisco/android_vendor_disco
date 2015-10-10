# Semantic versioning
DISCO_VERSION_MAJOR := 2
DISCO_VERSION_MINOR := 5
DISCO_VERSION_MICRO := 0

# ProjectDisco version number
DISCO_VERSION := $(DISCO_VERSION_MAJOR).$(DISCO_VERSION_MINOR).$(DISCO_VERSION_MICRO)

# Detailed version string
ROM_VERSION := $(TARGET_PRODUCT)-$(DISCO_VERSION)-$(shell date -u +%Y%m%d)
