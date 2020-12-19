import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15

Rectangle {
    color: Material.backgroundColor
    height: parent.height * 0.1

    Rectangle {
        color: Material.primaryColor
        anchors.centerIn: parent
        height: parent.height - 10
        width: parent.width - 10

        ListView {
            anchors.fill: parent
            model: hmi.guildsModel.channelsModel.msgModel
            clip: true
            boundsBehavior: ListView.StopAtBounds
            delegate: Text {
                text: authorRole+":"+ " " + contentRole
                color: Material.foreground
            }
        }
    }
}