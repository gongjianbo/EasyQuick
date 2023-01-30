TEMPLATE = lib
TARGET = $$qtLibraryTarget(EasyQuickStyles)

CONFIG += plugin
CONFIG += qmltypes
QML_IMPORT_NAME = Easy.Styles
QML_IMPORT_MAJOR_VERSION = 1

include( $$PWD/../SourceConfig.pri )

OTHER_FILES += \
    qmldir

HEADERS += \
    EStylesObject.h \
    EStylesPlugin.h

SOURCES += \
    EStylesObject.cpp

DESTDIR = $$PWD/../../bin/EasyQuick/Styles

#make dll and amldir to qt install dir.
#or using make arguments"install".
copy_qmltypes.files = $$OUT_PWD/plugins.qmltypes
copy_qmltypes.path = $$DESTDIR
COPIES += copy_qmltypes
copy_qmldir.files = qmldir
copy_qmldir.path = $$DESTDIR
COPIES += copy_qmldir

DESTPATH = $$[QT_INSTALL_QML]/EasyQuick/Styles
target.path = $$DESTPATH
qmldir.files = $$PWD/qmldir
qmldir.path = $$DESTPATH
INSTALLS += target qmldir
