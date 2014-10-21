NAME           = rapidminer
VERSION        = 6.1.0
RELEASE        = 0
PKGROOT        = /opt/rapidminer

SRC_SUBDIR     = rapidminer

SOURCE_NAME    = rapidminer-studio
SOURCE_SUFFIX  = zip
SOURCE_VERSION = $(VERSION)
SOURCE_PKG     = $(SOURCE_NAME)-$(SOURCE_VERSION).$(SOURCE_SUFFIX)
SOURCE_DIR     = $(SOURCE_NAME)

ZIP_PKGS       = $(SOURCE_PKG)

RPM.EXTRAS     = AutoReq:No
