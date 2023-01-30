#pragma once
#include <QQmlExtensionPlugin>
#include <qqml.h>
#include "EControlsObject.h"

class EControlsPlugin : public QQmlExtensionPlugin
{
    Q_OBJECT
    Q_PLUGIN_METADATA(IID QQmlExtensionInterface_iid)
public:
    void registerTypes(const char *uri) override {
        //@uri EasyQuick.Controls
        qmlRegisterType<EControlsObject>(uri, 1, 0, "ControlsObject");
    }
};
