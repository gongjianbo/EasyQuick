MODULE_NAME = Controls

DESTDIR = $$PWD/../../../bin/EasyQuick/$${MODULE_NAME}
INSTALLDIR = $$[QT_INSTALL_QML]/EasyQuick/$${MODULE_NAME}

load(easy_plugin)

load(source_config)

HEADERS += \
    EControlsPlugin.h


CONFIG(release, debug|release): LIBS += -L$$PWD/../../../bin/ -lEasyQuickControls
else:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../bin/ -lEasyQuickControlsd

INCLUDEPATH += $$PWD/../../Controls
DEPENDPATH += $$PWD/../../Controls
