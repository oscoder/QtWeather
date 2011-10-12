import QtQuick 1.0

XmlListModel {

    property int index
    source: "http://www.google.com/ig/api?weather=" + page.city
    query: "/xml_api_reply/weather"

    XmlRole { name: "day_of_week"; query: "forecast_conditions[" + index.toString() + "]/day_of_week/@data/string()" }
    XmlRole { name: "low"; query: "forecast_conditions[" + index.toString() + "]/low/@data/string()" }
    XmlRole { name: "high"; query: "forecast_conditions[" + index.toString() + "]/high/@data/string()" }
    XmlRole { name: "icon"; query: "forecast_conditions[" + index.toString() + "]/icon/@data/string()" }
    XmlRole { name: "condition"; query: "forecast_conditions[" + index.toString() + "]/condition/@data/string()" }
}
