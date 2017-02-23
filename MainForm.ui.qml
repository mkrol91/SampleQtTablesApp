import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1

Item {
    width: 640
    height: 480
    property alias splitView: splitView
    property alias tab: tab
    property alias tabView: tabView

    SplitView {
        id: splitView
        orientation: Qt.Horizontal
        anchors.fill: parent

        TabView {
            id: tabView
            width: 269
            height: 259

            Tab {
                id: tab
                source: "Tab.qml"
                title: "Customer Settings"
            }

            Tab {
                id: tab1
                x: -2
                y: 8
                source: "Tab.qml"
                title: "Customer Notes"
            }

            Tab {
                id: tab2
                x: 3
                y: 0
                source: "Tab.qml"
                title: "Customer History"
            }
        }

        CustomerTableView {
            id: tableView
        }
    }
}
