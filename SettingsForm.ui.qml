import QtQuick 2.4
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.3

Item {
    id: content
    width: 400
    height: 400
    property alias title: title
    property alias cancel: cancel
    property alias save: save
    property alias rowLayout: rowLayout
    property alias gridLayout: gridLayout
    property alias firstName: firstName
    property alias lastName: lastName
    property alias customerId: customerId

    GridLayout {
        id: gridLayout
        columns: 3
        rows: 4
        columnSpacing: 0
        rowSpacing: 8
        anchors.right: parent.right
        anchors.rightMargin: 12
        anchors.left: parent.left
        anchors.leftMargin: 12
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 12
        anchors.top: parent.top
        anchors.topMargin: 12

        Label {
            id: label
            text: qsTr("Title")
        }

        Label {
            id: label1
            text: qsTr("First Name")
        }

        Label {
            id: label2
            text: qsTr("Last Name")
        }


        Text {
            id: title
            text: qsTr("Title")
            font.pixelSize: 12
        }

        Text {
            id: firstName
            text: qsTr("First Name")
            font.pixelSize: 12
        }

        Text {
            id: lastName
            text: qsTr("Last Name")
            font.pixelSize: 12
        }

        Label {
            id: label3
            text: qsTr("Customer Id")
        }

        TextEdit {
            id: customerId
            width: 80
            height: 20
            text: qsTr("Customer Id")
            Layout.fillWidth: true
            Layout.columnSpan: 3
            font.pixelSize: 12
        }

        ComboBox {
            id: comboBox
        }

    }

    RowLayout {
        id: rowLayout
        anchors.right: parent.right
        anchors.rightMargin: 12
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 12

        Button {
            id: save
            text: qsTr("Save")
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Button {
            id: cancel
            text: qsTr("Cancel")
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
    }
}
