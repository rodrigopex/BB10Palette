# Auto-generated by IDE. All changes by user will be lost!
# Created at 1/5/13 7:22 PM

BASEDIR = $$_PRO_FILE_PWD_

INCLUDEPATH +=  \
    $$BASEDIR/src

SOURCES +=  \
    $$BASEDIR/src/BB10Palette.cpp \
    $$BASEDIR/src/main.cpp

HEADERS +=  \
    $$BASEDIR/src/BB10Palette.hpp

lupdate_inclusion {
    SOURCES += \
        $$BASEDIR/../assets/*.qml
}

TRANSLATIONS = \
    $${TARGET}.ts
