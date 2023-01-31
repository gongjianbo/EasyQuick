#pragma once
#include <QQmlExtensionPlugin>
#include <qqml.h>
#include "EStylesObject.h"

class EStylesPlugin : public QQmlExtensionPlugin
{
    Q_OBJECT
    Q_PLUGIN_METADATA(IID QQmlExtensionInterface_iid)
public:
    void registerTypes(const char *uri) override {
        //@uri EasyQuick.Styles
        qmlRegisterType<EStylesObject>(uri, 1, 0, "StylesObject");
    }
};
