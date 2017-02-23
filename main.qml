import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Dialogs 1.2
import QtQuick.Layouts 1.1
import my.customermodel.singleton 1.0

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Quick Controls")

    MainForm{
        anchors.fill: parent
        Layout.minimumWidth: 800
        Layout.minimumHeight: 480
        Layout.preferredWidth: 768
        Layout.preferredHeight: 480

        tableView.model: CustomerModel

        Component.onCompleted: CustomerModel.selection = tableView.selection;
    }
}
