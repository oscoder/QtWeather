#include "qtweathermainwindow.h"

QtWeatherMainWindow::QtWeatherMainWindow(QWidget *parent) :
    QMainWindow(parent)
{
    setWindowFlags(Qt::FramelessWindowHint);
    setAttribute(Qt::WA_TranslucentBackground, true);
    setStyleSheet("background:transparent;");

    ui = new QDeclarativeView;
    ui->setSource(QUrl("qrc:/resources/qml/main.qml"));
    setCentralWidget(ui);
    resize(QSize(350, 600));

    ui->rootContext()->setContextProperty("borderColor", QColor(Qt::blue));
}

QtWeatherMainWindow::~QtWeatherMainWindow()
{
    delete ui;
}
