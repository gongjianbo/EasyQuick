#include "EControlsObject.h"
#include "EStylesObject.h"

EControlsObject::EControlsObject(QObject *parent)
    : QObject{parent}
{

}

EStylesObject *EControlsObject::getStyle()
{
    return myStyle;
}

void EControlsObject::setStyle(EStylesObject *style)
{
    if (myStyle != style) {
        myStyle = style;
        emit styleChanged();
    }
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
