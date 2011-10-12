#include <QtGui/QApplication>
<<<<<<< HEAD
#include "qtweathermainwindow.h"

Q_DECL_EXPORT int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QtWeatherMainWindow window;
    window.show();

    return app.exec();
=======
#include "qmlapplicationviewer.h"

Q_DECL_EXPORT int main(int argc, char *argv[])
{
    QScopedPointer<QApplication> app(createApplication(argc, argv));
    QScopedPointer<QmlApplicationViewer> viewer(QmlApplicationViewer::create());

    viewer->setOrientation(QmlApplicationViewer::ScreenOrientationAuto);
    viewer->setMainQmlFile(QLatin1String("qml/QtWeather/main.qml"));
    viewer->showExpanded();

    return app->exec();
>>>>>>> 90fb7ec46f6d9885bf0daa05b621670e4c674d76
}
