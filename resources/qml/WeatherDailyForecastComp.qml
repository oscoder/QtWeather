import QtQuick 1.0

Component {
    Item {
        Row {
            spacing: 10
            Image { width: 88; height: 88; z: 31; smooth: true; source: "http://www.google.com" + icon }
            Column {
                width: 107
                Text { text: condition; style: Text.Outline; color: "#f7f415"; font.family: "Nokia Sans"; font.pixelSize: 18}
                Text { text: "LOW:" + low + "°F"; font.bold: true; color: "white"; font.family: "Nokia Sans"; font.pixelSize: 18}
                Text { text: "HIGHT:" + high + "°F"; font.bold: true; color: "white"; font.family: "Nokia Sans"; font.pixelSize: 18}
                Text { text: day_of_week; style: Text.Outline; color: "#c45252"; font.family: "Nokia Sans"; font.pixelSize: 18}
            }
        }
    }
}
