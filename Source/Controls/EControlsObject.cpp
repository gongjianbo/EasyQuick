#include "EControlsObject.h"

EControlsObject::EControlsObject(QObject *parent)
    : QObject{parent}
{

}

QString EControlsObject::getName()
{
    return myName;
}

void EControlsObject::setName(const QString &name)
{
    if (myName != name) {
        myName = name;
        emit nameChanged();
    }
}
