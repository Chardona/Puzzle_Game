import QtQuick 2.0
import QtQuick.Controls 2.12
import Game 1.0

RoundButton{
    text: "Restart game"
    onClicked:{
        GameBoardModel.model.shuffle()
    }
}
