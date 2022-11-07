import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Tags")

    Button{

        width: 0.15 * root.width
        height: 0.15 * root.height
        x: root.width / 15
        y: root.width / 10
    }

    Gameboard{
        id: gameboard
        anchors.fill: parent
        anchors.leftMargin: 0.3 * root.width
    }
}
