QT += quick

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        main.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

msvc {
    QMAKE_CFLAGS += /utf8
    QMAKE_CXXFLAGS += /utf8
}

unix|win32: LIBS += -L$$PWD/mqtt/lib/x64/ -lpaho-mqtt3a-static  # 异步
unix|win32: LIBS += -L$$PWD/mqtt/lib/x64/ -lpaho-mqtt3c-static  # 同步

INCLUDEPATH += $$PWD/mqtt/include
DEPENDPATH += $$PWD/mqtt/include
