import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Controls.Material

import io.qt.edcviewer

    ColumnLayout{

        id: root    
        Bridge {
            id: bridge
        }
    
        spacing: 10
    
        Text { 
            text: "登录"                
            font.family: "华文彩云"               
            font.pixelSize: 20                    
            Layout.alignment: Qt.AlignHCenter                   
        }
    
        RowLayout {
    
            Layout.alignment: Qt.AlignHCenter
            Layout.preferredWidth: 200
            Layout.preferredHeight: 40
    
            Text {
               id: ip_header
               text:"IP:"
               font.family: "微软雅黑"
               font.pixelSize: 20
               Layout.alignment: Qt.AlignLeft
               Layout.preferredHeight: 40 
               Layout.preferredWidth: 40
               verticalAlignment: Text.AlignVCenter
               visible: true       
            }
    
            TextField {
                id: ip_message
                Layout.preferredHeight: 40
                Layout.fillWidth: true
                placeholderText: "IP:Port"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignLeft
            }
            
        }
    
        Button {
            text: "确认"
            Layout.preferredWidth: 200
            Layout.preferredHeight: 40
            Layout.alignment: Qt.AlignHCenter
            highlighted: true
            Material.accent: Material.Blue
            onClicked: registry()
        }

        function registry() {
            if(bridge.register(ip_message.text))
            {
                root.visible = false
                var MainPage = Qt.createComponent("Page.qml").createObject(mainWin);
            }

        }

    }
