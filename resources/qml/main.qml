import Qt 4.7
import "./"

Rectangle {
    id: page
    width: 350
    height: 600
    color: "#000000"
    radius: 5
    smooth: true

    property string city: "chengdu"

    ShadowRectangle {
        id: shadowrectangle2
        color: "#434343"
        transformOrigin: "Center"
        opacity: 0.97
        visible: true
        anchors.centerIn: parent; width: 346; height: 596
    }

    Row {
        spacing: 2
        x: 25; y: 41
        anchors.horizontalCenter: column1.horizontalCenter

        ShadowRectangle {
            id: shadowrectangle1
            width: 240
            height: 40
            FocusScope {
                id: focusScope
                width: 240; height: 40
                focus:true

                BorderImage {
                    source: "../images/lineedit-bg.png"
                    width: parent.width; height: parent.height
                    border { left: 4; top: 4; right: 4; bottom: 4 }
                }

                Text {
                    id: typeSomething
                    anchors.fill: parent; anchors.leftMargin: 8
                    verticalAlignment: Text.AlignVCenter
                    text: "请输入城市名（例如：成都）"
                    color: "gray"
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: { focusScope.focus = true; textInput.openSoftwareInputPanel(); }
                }

                TextInput {
                    id: textInput
                    anchors { left: parent.left; leftMargin: 8; right: clear.left; rightMargin: 8; verticalCenter: parent.verticalCenter }
                    focus: true
                    font.pixelSize:20
                }

                Image {
                    id: clear
                    anchors { right: parent.right; rightMargin: 8; verticalCenter: parent.verticalCenter }
                    source: "../images/clear.png"
                    opacity: 0

                    MouseArea {
                        anchors.fill: parent
                        onClicked: { textInput.text = ''; focusScope.focus = true; textInput.openSoftwareInputPanel(); }
                    }
                }

                states: State {
                    name: "hasText"; when: textInput.text != ''
                    PropertyChanges { target: typeSomething; opacity: 0 }
                    PropertyChanges { target: clear; opacity: 1 }
                }

                transitions: [
                    Transition {
                        from: ""; to: "hasText"
                        NumberAnimation { exclude: typeSomething; properties: "opacity" }
                    },
                    Transition {
                        from: "hasText"; to: ""
                        NumberAnimation { properties: "opacity" }
                    }
                ]
            }
        }
        TextButton {
            width: 58; height: 40
            text: "Search"
            onClicked: {
                console.log("Search Button was clicked!")
                console.debug(textInput.text)
                page.city = textInput.text
            }
        }
    }

    Column {
        spacing: 2
        id: column1
        x: 25
        y: 122
        width: 300
        height: 468
        anchors.horizontalCenterOffset: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        anchors.horizontalCenter: shadowrectangle2.horizontalCenter
        ListView {
            id: viewCurrent
            y: 0
            width: 282
            height: 130
            anchors.horizontalCenter: parent.horizontalCenter
            orientation: ListView.Vertical
            model: WeatherCurrentModel {}
            delegate: WeatherCurrentComp {}

        }
        ListView {
            anchors.horizontalCenter: parent.horizontalCenter
            id: viewDailyForecast1
            width: 240
            height: 110
            model: WeatherDailyForecastModel { index: 1 }
            delegate: WeatherDailyForecastComp {}
        }
        ListView {
            anchors.horizontalCenter: parent.horizontalCenter
            id: viewDailyForecast2
            width: 240
            height: 110
            model: WeatherDailyForecastModel { index: 2 }
            delegate: WeatherDailyForecastComp {}
        }
        ListView {
            anchors.horizontalCenter: parent.horizontalCenter
            id: viewDailyForecast3
            width: 240
            height: 110
            model: WeatherDailyForecastModel { index: 3 }
            delegate: WeatherDailyForecastComp {}
        }
    }

}
