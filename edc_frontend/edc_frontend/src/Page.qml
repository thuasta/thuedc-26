import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Controls.Material
import QtMultimedia

    ColumnLayout {
        id: root
    
        RowLayout {
            id: header
    
            spacing: 10
        
            property string stage: "Ready"
            property string ticks: "0"
            property int textSize: 20
        
            Text {
                id: stage_message
                Layout.alignment: Qt.AlignLeft 
                Layout.preferredWidth: 200 
                text: "Stage:" + header.stage
                font.family: "微软雅黑"
                font.pixelSize: header.textSize
            }
        
            Text {
                id: ticks_message
                Layout.alignment: Qt.AlignLeft 
                Layout.preferredWidth: 200
                text: "Ticks:" + header.ticks
                font.family: "微软雅黑"
                font.pixelSize: header.textSize
            }
        }
        
        RowLayout {
            id: content
    
            spacing: 20
            Layout.preferredWidth: Window.width
            Layout.fillWidth: true
    
            ColumnLayout{
                id: information
    
                spacing: 10
    
                RowLayout{
                    id: buttonsAndplayer
    
                    spacing: 10
    
                    ColumnLayout {
                        id: buttons
                        
                        Layout.preferredWidth: 200
                        spacing: 10
                
                        property int textSize: 20
                        
                        Button {
                            Layout.alignment: Qt.AlignHCenter
                            Layout.preferredHeight: 60
                            Layout.preferredWidth: 150
                            text: qsTr("Start")
                            font.pixelSize: buttons.textSize
                            highlighted: true
                            Material.accent: Material.Blue
                        }
                    
                        Button {
                            Layout.alignment: Qt.AlignHCenter
                            Layout.preferredHeight: 60
                            Layout.preferredWidth: 150
                            text: qsTr("Calibrate")
                            font.pixelSize: buttons.textSize
                            highlighted: true
                            Material.accent: Material.Green
                        }
                    
                        Button {
                            Layout.alignment: Qt.AlignHCenter
                            Layout.preferredHeight: 60
                            Layout.preferredWidth: 150
                            text: qsTr("End")
                            font.pixelSize: buttons.textSize
                            highlighted: true
                            Material.accent: Material.Red
                        }
                    }
                
                    ColumnLayout {
                        id: player_information
                
                        Layout.preferredWidth: 300
                        Layout.preferredHeight: buttons.height
                        spacing: 5
                        
                        Text {
                            id: player_header
                            Layout.alignment: Qt.AlignTop 
                            text: "Player"
                            font.family: "微软雅黑"
                            font.pixelSize: 20
                            verticalAlignment: Text.AlignVCenter
                        }
    
                        RowLayout {
                            spacing: 5
    
                            Layout.alignment: Qt.AlignTop
                    
                            Text {
                               text:"Score:"
                               font.family: "微软雅黑"
                               font.pixelSize: 20
                               Layout.alignment: Qt.AlignLeft 
                               verticalAlignment: Text.AlignVCenter       
                            }
                        }
                    }
                }
    
                ColumnLayout {
                    id: settings
                    
                    Layout.preferredWidth: 500
    
                    spacing: 5
            
                    Text {
                        id: settings_header
                        Layout.alignment: Qt.AlignLeft
                        text: "Settings"
                        font.family: "微软雅黑"
                        font.pixelSize: 20
                    }
    
                    GridLayout {
                        id: grid1
    
                        columns: 2
                        rowSpacing: 5
    
                        Layout.alignment: Qt.AlignHCenter
    
                        Text {
                           text:"Port:"
                           font.family: "微软雅黑"
                           font.pixelSize: 16
                           Layout.alignment: Qt.AlignLeft
                           Layout.preferredWidth: 100 
                           Layout.preferredHeight: 30
                           verticalAlignment: Text.AlignVCenter
                        }
    
                        ComboBox {
                            textRole: "key"
                            Layout.alignment: Qt.AlignHCenter
                            Layout.preferredHeight: 30
                            Layout.preferredWidth: 200
                            model: ListModel {
                                ListElement { key: "COM9"; value: 0 }
                            }
                        }
    
                        Text {
                           text:"Show Mask:"
                           font.family: "微软雅黑"
                           Layout.preferredWidth: 100 
                           font.pixelSize: 16
                           Layout.alignment: Qt.AlignLeft 
                           Layout.preferredHeight: 30
                           verticalAlignment: Text.AlignVCenter       
                        }
    
                        CheckBox {
                            Material.accent: Material.Purple
                            Layout.alignment: Qt.AlignHCenter
                            Layout.preferredHeight: 30
                        }
    
                        Text {
                           text:"BaudRate:"
                           font.family: "微软雅黑"
                           font.pixelSize: 16
                           Layout.alignment: Qt.AlignLeft
                           Layout.preferredWidth: 100  
                           Layout.preferredHeight: 30
                           verticalAlignment: Text.AlignVCenter       
                        }
    
                        ComboBox {
                            textRole: "key"
                            Layout.alignment: Qt.AlignHCenter
                            Layout.preferredHeight: 30
                            Layout.preferredWidth: 200
                            model: ListModel {
                                ListElement { key: "115200"; value: 115200 }
                                ListElement { key: "57600"; value: 57600}
                                ListElement { key: "38400"; value: 38400}
                                ListElement { key: "19200"; value: 19200}
                                ListElement { key: "9600"; value: 9600}
                                ListElement { key: "4800"; value: 4800}
                                ListElement { key: "2400"; value: 2400}
                            }
                        }
    
                    }
    
                    Text { 
                       text: "Camara"                
                       font.family: "微软雅黑"               
                       font.pixelSize: 20                    
                       Layout.alignment: Qt.AlignHCenter               
                    }
    
                    GridLayout {
                        id: grid2
    
                        columns: 2
                        rowSpacing: 5
                
                        Layout.alignment: Qt.AlignHCenter
                
                        Text {
                           text:"Brightness:"
                           font.family: "微软雅黑"
                           font.pixelSize: 16
                           Layout.alignment: Qt.AlignLeft
                           Layout.preferredWidth: 100 
                           Layout.preferredHeight: 30
                           verticalAlignment: Text.AlignVCenter       
                        }
                
                        Slider {
                            id: brightness
                            Layout.alignment: Qt.AlignLeft
                            Layout.preferredHeight: 30
                            Layout.preferredWidth: 200
                            Material.accent: Material.Orange
                            value: 0.5
                        }
                
                        Text {
                           text:"Contrast:"
                           font.family: "微软雅黑"
                           font.pixelSize: 16
                           Layout.alignment: Qt.AlignLeft
                           Layout.preferredWidth: 100 
                           Layout.preferredHeight: 30
                           verticalAlignment: Text.AlignVCenter       
                        }
                
                        Slider {
                            id: contrast
                            Layout.alignment: Qt.AlignLeft 
                            Layout.preferredHeight: 30
                            Layout.preferredWidth: 200
                            Material.accent: Material.Orange
                            value: 0.5
                        }
                
                        Text {
                           text:"Saturation:"
                           font.family: "微软雅黑"
                           font.pixelSize: 16
                           Layout.alignment: Qt.AlignLeft
                           Layout.preferredWidth: 100 
                           Layout.preferredHeight: 30
                           verticalAlignment: Text.AlignVCenter       
                        }
                
                        Slider {
                            id: saturation
                            Layout.alignment: Qt.AlignLeft 
                            Layout.preferredHeight: 30
                            Layout.preferredWidth: 200
                            Material.accent: Material.Orange
                            value: 0.5
                        }
    
                        Text {
                           text:"Exposure:"
                           font.family: "微软雅黑"
                           font.pixelSize: 16
                           Layout.alignment: Qt.AlignLeft
                           Layout.preferredWidth: 100 
                           Layout.preferredHeight: 30
                           verticalAlignment: Text.AlignVCenter       
                        }
                
                        Slider {
                            id: exposure
                            Layout.alignment: Qt.AlignLeft 
                            Layout.preferredHeight: 30
                            Layout.preferredWidth: 200
                            value: 0.5
                            Material.accent: Material.Orange
                        }
    
                        Text {
                           text:"Auto Exposure:"
                           font.family: "微软雅黑"
                           font.pixelSize: 16
                           Layout.alignment: Qt.AlignLeft
                           Layout.preferredWidth: 100 
                           Layout.preferredHeight: 30
                           verticalAlignment: Text.AlignVCenter       
                        }
    
                        CheckBox {
                            Material.accent: Material.Purple
                            Layout.alignment: Qt.AlignHCenter
                            Layout.preferredHeight: 30
                        }
    
                    }
    
                }
            }
    
            Rectangle {
                Layout.alignment: Qt.AlignRight
                Layout.preferredHeight: 600
                Layout.preferredWidth: 800
    
                border.width: 2
                border.color: "#444444"
    
                VideoOutput {
                    anchors.fill: parent
                }
    
            }
        }
    }