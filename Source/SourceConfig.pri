QT += core 
QT += gui 
QT += qml 
QT += quick

QT_PRIVATE += core-private
QT_PRIVATE += gui-private
QT_PRIVATE += qml-private
QT_PRIVATE += quick-private

greaterThan( QT_MAJOR_VERSION, 5 ) {
    QT_PRIVATE += opengl-private
}

CONFIG += no_private_qt_headers_warning
CONFIG += warn_on
CONFIG += hide_symbols
CONFIG += c++17
CONFIG += utf8_source
