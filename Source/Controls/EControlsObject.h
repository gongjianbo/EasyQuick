#pragma once
#include <QObject>
#include "EControlsGlobal.h"
class EStylesObject;

class EasyQuick_Controls EControlsObject : public QObject
{
    Q_OBJECT
    Q_PROPERTY(EStylesObject* style READ getStyle WRITE setStyle NOTIFY styleChanged)
    Q_PROPERTY(QString name READ getName WRITE setName NOTIFY nameChanged)
public:
    explicit EControlsObject(QObject *parent = nullptr);

    EStylesObject* getStyle();
    void setStyle(EStylesObject* style);

    QString getName();
    void setName(const QString &name);

signals:
    void styleChanged();
    void nameChanged();

private:
    EStylesObject* myStyle{nullptr};
    QString myName{"ControlsObject Name"};
};
