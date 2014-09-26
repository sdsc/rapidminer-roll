NAME        = rapidminer-modules
RELEASE     = 2
PKGROOT     = /opt/modulefiles/applications/rapidminer

VERSION_SRC = $(REDHAT.ROOT)/src/rapidminer/version.mk
VERSION_INC = version.inc
include $(VERSION_INC)

RPM.EXTRAS  = AutoReq:No
