import QtQuick 1.0

XmlListModel {
    source: "http://www.google.com/ig/api?weather=" + page.city
    query: "/xml_api_reply/weather/forecast_information"

    //forecast information
    XmlRole { name: "city"; query: "city/@data/string()" }
    XmlRole { name: "postal_code"; query: "postal_code/@data/string()" }
    XmlRole { name: "latitude_e6"; query: "latitude_e6/@data/string()" }
    XmlRole { name: "longitude_e6"; query: "longitude_e6/@data/string()" }
    XmlRole { name: "forecast_date"; query: "forecast_date/@data/string()" }
    XmlRole { name: "current_date_time"; query: "current_date_time/@data/string()" }
    XmlRole { name: "unit_system"; query: "unit_system/@data/string()" }
}
