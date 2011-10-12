import Qt 4.7

Item {
    property alias color : rectangle.color

    BorderImage {
        anchors.fill: rectangle
        anchors { leftMargin: 0; topMargin: 0; rightMargin: -8; bottomMargin: -8 }
        border { left: 10; top: 10; right: 10; bottom: 10 }
        source: "../images/shadow.png"; smooth: true
    }

    Rectangle { id: rectangle; anchors.fill: parent; radius:5}
}

