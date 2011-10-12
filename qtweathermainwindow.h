#ifndef QTWEATHERMAINWINDOW_H
#define QTWEATHERMAINWINDOW_H

#include <QMainWindow>
#include <QtDeclarative>

namespace Ui {
    class QtWeatherMainWindow;
}

class QtWeatherMainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit QtWeatherMainWindow(QWidget *parent = 0);
    ~QtWeatherMainWindow();

private:
    QDeclarativeView *ui;
};

#endif // QTWEATHERMAINWINDOW_H

