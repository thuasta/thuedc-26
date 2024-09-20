import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Controls.Material

ApplicationWindow {

    id: mainWin
    visible: true

    title: "App"

    Login {
        anchors.centerIn: parent
    }
}