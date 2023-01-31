#pragma once
#include <QObject>
#include "EStylesGlobal.h"

class EasyQuick_Styles EStylesObject : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString name READ getName WRITE setName NOTIFY nameChanged)
public:
    explicit EStylesObject(QObject *parent = nullptr);

    QString getName();
    void setName(const QString &name);

signals:
    void nameChanged();

private:
    QString myName{"StylesObject Name"};
};
