NAME               = rapidminer
VERSION            = 5.2.008
RELEASE            = 1
PKGROOT            = /opt/rapidminer
RPM.EXTRAS         = AutoReq:No

SRC_SUBDIR         = rapidminer

SOURCE_NAME        = $(NAME)
SOURCE_VERSION     = $(VERSION)
SOURCE_SUFFIX      = tgz
SOURCE_PKG         = $(SOURCE_NAME)-$(SOURCE_VERSION).$(SOURCE_SUFFIX)
SOURCE_DIR         = $(SOURCE_PKG:%.$(SOURCE_SUFFIX)=%)

TGZ_PKGS           = $(SOURCE_PKG)

