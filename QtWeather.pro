QT += core gui declarative

TARGET = QtWeather
TEMPLATE = app

HEADERS += \
    qtweathermainwindow.h

SOURCES += main.cpp \
    qtweathermainwindow.cpp

RESOURCES += \
    res.qrc \
    res.qrc

OTHER_FILES += \
    resources/qml/main.qml \
    resources/qml/WeatherCurrentComp.qml \
    resources/qml/WeatherCurrentModel.qml \
    resources/qml/WeatherDailyForecastComp.qml \
    resources/qml/WeatherDailyForecastModel.qml \
    resources/qml/WeatherInfoComp.qml \
    resources/qml/WeatherInfoModel.qml \
    resources/qml/ShadowRectangle.qml \
    resources/qml/TextBox.qml \
    resources/qml/TextButton.qml

