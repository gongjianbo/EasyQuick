#pragma once
#include <QObject>

class EControlsObject : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString name READ getName WRITE setName NOTIFY nameChanged)
public:
    explicit EControlsObject(QObject *parent = nullptr);

    QString getName();
    void setName(const QString &name);

signals:
    void nameChanged();

private:
    QString myName{"ControlsObject Name"};
};
