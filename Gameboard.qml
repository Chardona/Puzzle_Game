import QtQuick 2.0
import Game 1.0

GridView {
    id: root
    cellHeight: height / root.model.dimension
    cellWidth: width / root.model.dimension
    model: GameBoardModel {

    }

    delegate: Item{
        id: _bgDelegate
        width: root.cellWidth
        height: root.cellHeight
        visible: display != (root.model.dimension * root.model.dimension)
        Tile {
            anchors.fill: _bgDelegate
            anchors.margins: 5
            displayText: display
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    root.model.move(index);
                }
            }
        }
    }
}
