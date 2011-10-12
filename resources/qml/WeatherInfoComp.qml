import QtQuick 1.0

Component {
    Item {
        Column {
            Text { text: city; color: "white"; font.family: "Nokia Sans"; font.pixelSize: 18}
            Text { text: postal_code; color: "white"; font.family: "Nokia Sans"; font.pixelSize: 18}
            Text { text: latitude_e6; color: "white"; font.family: "Nokia Sans"; font.pixelSize: 18}
            Text { text: longitude_e6; color: "white"; font.family: "Nokia Sans"; font.pixelSize: 18}
            Text { text: forecast_date; color: "white"; font.family: "Nokia Sans"; font.pixelSize: 18}
            Text { text: current_date_time; color: "white"; font.family: "Nokia Sans"; font.pixelSize: 18}
            Text { text: unit_system; color: "white"; font.family: "Nokia Sans"; font.pixelSize: 18}
        }
    }
}
