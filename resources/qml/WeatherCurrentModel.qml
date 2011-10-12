import QtQuick 1.0

XmlListModel {

    property string city: "chengdu"
    source: "http://www.google.com/ig/api?weather=" + page.city
    query: "/xml_api_reply/weather/current_conditions"

    //current condition
    XmlRole { name: "condition"; query: "condition/@data/string()" }
    XmlRole { name: "temp_f"; query: "temp_f/@data/string()" }
    XmlRole { name: "temp_c"; query: "temp_c/@data/string()" }
    XmlRole { name: "humidity"; query: "humidity/@data/string()" }
    XmlRole { name: "icon"; query: "icon/@data/string()" }
    XmlRole { name: "wind_condition"; query: "wind_condition/@data/string()" }

}
