#include <QtGui/QApplication>
#include "qtweathermainwindow.h"

Q_DECL_EXPORT int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QtWeatherMainWindow window;
    window.show();

    return app.exec();
}
