MODULE_NAME = Controls

DESTDIR = $$PWD/../../bin
INSTALLDIR = $$[QT_INSTALL_BINS]

load(easy_lib)

load(source_config)

DEFINES += EASYQUICK_CONTROLS_BUILD_LIB

HEADERS += \
    EControlsGlobal.h \
    EControlsObject.h

SOURCES += \
    EControlsGlobal.cpp \
    EControlsObject.cpp

CONFIG(release, debug|release): LIBS += -L$$PWD/../../bin/ -lEasyQuickStyles
else:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../bin/ -lEasyQuickStylesd

INCLUDEPATH += $$PWD/../Styles
DEPENDPATH += $$PWD/../Styles
