#
# Qt project file for build configurations
#
# @package    Compress
# @author     azampagl
# @license    MIT
# @copyright  (c) 2013 - Present - Aaron Zampaglione <azampagl@azampagl.com>
#

#
# Qt settings.
#

QT       += core
QT       -= gui

CONFIG   += console
CONFIG   -= app_bundle

#
# Set the output file name and type.
#

TARGET = thetastar-simulator
TEMPLATE = app

#
# Set the include/depend path.
#

#DEPENDPATH += "$$PWD/../thetastar"

INCLUDEPATH += "$$PWD/"
INCLUDEPATH += "$$PWD/../"

#
# Set headers and cpp files.
#

#HEADERS += \

SOURCES += \
   main.cpp

#
# Set the build path.
#

RCC_DIR = "$$PWD/bin/tmp/rcc"
UI_DIR = "$$PWD/bin/tmp/ui"
MOC_DIR = "$$PWD/bin/tmp/moc"
OBJECTS_DIR = "$$PWD/bin/tmp/obj"

# Determine shared library extension.
win32: SONAME="dll"
mac: SONAME="dylib"
else: SONAME="so"

CONFIG(debug, debug|release) {
   DESTDIR = "$$PWD/bin/debug"
   LIBS += -L$$PWD/../thetastar/bin/debug -lthetastar
}
CONFIG(release, debug|release) {
   DEFINES += QT_NO_DEBUG_OUTPUT
   DESTDIR = "$$PWD/bin/release"
   LIBS += -L$$PWD/../thetastar/bin/release -lthetastar
}
