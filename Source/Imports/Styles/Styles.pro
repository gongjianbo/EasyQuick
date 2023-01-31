MODULE_NAME = Styles

DESTDIR = $$PWD/../../../bin/EasyQuick/$${MODULE_NAME}
INSTALLDIR = $$[QT_INSTALL_QML]/EasyQuick/$${MODULE_NAME}

load(easy_plugin)

load(source_config)

HEADERS += \
    EStylesPlugin.h


CONFIG(release, debug|release): LIBS += -L$$PWD/../../../bin/ -lEasyQuickStyles
else:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../bin/ -lEasyQuickStylesd

INCLUDEPATH += $$PWD/../../Styles
DEPENDPATH += $$PWD/../../Styles
