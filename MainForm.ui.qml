import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1

Item {
    width: 640
    height: 480

    property alias button3: button3
    property alias button2: button2
    property alias button1: button1

    ToolButton {
        id: toolButton1
        x: 546
        y: 361
        width: 75
        height: 30
        text: "Wiew"
    }

    Label {
        id: label1
        x: 20
        y: 361
        width: 134
        height: 30
        text: qsTr("File Path:")
        font.bold: true
        font.pointSize: 18
        verticalAlignment: Text.AlignVCenter
        textFormat: Text.AutoText
        horizontalAlignment: Text.AlignHCenter
    }

    Button {
        id: button1
        x: 384
        y: 418
        width: 75
        height: 23
        text: qsTr("Ok")
    }

    Button {
        id: button2
        x: 465
        y: 418
        width: 75
        height: 23
        text: qsTr("Save")
    }

    Button {
        id: button3
        x: 546
        y: 418
        text: qsTr("Delete")
    }

    TextField {
        id: textField1
        x: 160
        y: 361
        width: 380
        height: 30
        font.bold: true
        font.pixelSize: 16
        font.family: "Times New Roman"
        placeholderText: qsTr("")
    }

    ListView {
        id: listView1
        x: 20
        y: 20
        width: 601
        height: 320
        smooth: true
        enabled: true
        transformOrigin: Item.Center
        flickableDirection: Flickable.AutoFlickDirection
        model: ListModel {
            ListElement {
                name: "Grey"
                colorCode: "grey"
            }

            ListElement {
                name: "Red"
                colorCode: "red"
            }

            ListElement {
                name: "Blue"
                colorCode: "blue"
            }

            ListElement {
                name: "Green"
                colorCode: "green"
            }
        }
        delegate: Item {
            x: 5
            width: 80
            height: 40
            Row {
                id: row1
                Rectangle {
                    width: 40
                    height: 40
                    color: colorCode
                }

                Text {
                    text: name
                    anchors.verticalCenter: parent.verticalCenter
                    font.bold: true
                }
                spacing: 10
            }
        }
    }
}
