import QtQuick 1.0

Component {
    Item {
        Row {
            id: row1
            x: 0
            y: 0
            width: 241
            height: 103
            Column {
                Image {
                    width: 90
                    height: 90
                    anchors.horizontalCenter: parent.horizontalCenter
                    source: "http://www.google.com" + icon}
                Text {
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: wind_condition; style: Text.Outline; font.bold: true; font.italic: true; color: "#cc6161"; font.family: "Nokia Sans"; font.pixelSize: 12}
            }
            Column {
                y: 0
                height: 107
                transformOrigin: Item.Bottom
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0
                Text { text: condition; color: "yellow"; font.family: "Nokia Sans"; font.pixelSize: 24}
                Text { text: temp_f + "°F"; font.bold: true; color: "white"; font.family: "Nokia Sans"; font.pixelSize: 18}
                Text { text: temp_c + "°C"; font.bold: true; color: "white"; font.family: "Nokia Sans"; font.pixelSize: 18}
                Text { text: humidity; style: Text.Outline; font.bold: false; transformOrigin: Item.Bottom; color: "green"; font.family: "Nokia Sans"; font.pixelSize: 25}
            }
        }
    }
}
