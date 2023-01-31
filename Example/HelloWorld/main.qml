import QtQuick 2.15
import QtQuick.Window 2.15
import EasyQuick.Controls 1.0
import EasyQuick.Styles 1.0

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Example: Hello World \t (by GongJianBo 1992)")

    ControlsObject {
        id: controls_obj
        style: StylesObject {
            id: styles_obj
        }
    }

    Column {
        anchors.centerIn: parent
        spacing: 12
        Text {
            text: controls_obj.name
            font.family: "Microsoft YaHei"
            font.pixelSize: 24
        }
        Text {
            text: controls_obj.style.name
            font.family: "Microsoft YaHei"
            font.pixelSize: 24
        }
    }
}
