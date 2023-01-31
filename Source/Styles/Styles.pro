MODULE_NAME = Styles

DESTDIR = $$PWD/../../bin
INSTALLDIR = $$[QT_INSTALL_BINS]

load(easy_lib)

load(source_config)

DEFINES += EASYQUICK_STYLES_BUILD_LIB

HEADERS += \
    EStylesGlobal.h \
    EStylesObject.h

SOURCES += \
    EStylesGlobal.cpp \
    EStylesObject.cpp

