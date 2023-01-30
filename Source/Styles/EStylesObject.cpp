#include "EStylesObject.h"

EStylesObject::EStylesObject(QObject *parent)
    : QObject{parent}
{

}

QString EStylesObject::getName()
{
    return myName;
}

void EStylesObject::setName(const QString &name)
{
    if (myName != name) {
        myName = name;
        emit nameChanged();
    }
}
