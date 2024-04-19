import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: rect
        width: 100
        height: 100
        color: "red"

        x: 0
        y: (parent.height / 2) - (height / 2)

        PropertyAnimation {
            id: animation1
            target: rect
            properties: "x"
            to: root.width - rect.width
            duration: 500
        }

        PropertyAnimation {
            id: animation2
            target: rect
            properties: "x"
            to: 0
            duration: 500
        }

        MouseArea {
            id: mouseArea
            anchors.fill: parent
            onClicked: {
                if (rect.x === 0) {
                    animation1.start()
                } else {
                    animation2.start()
                }
            }
        }
    }
}
