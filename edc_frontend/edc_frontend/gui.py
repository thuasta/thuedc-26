import sys

from pathlib import Path

from PySide6.QtCore import QObject, Slot
from PySide6.QtQuickControls2 import QQuickStyle
from PySide6.QtGui import QGuiApplication
from PySide6.QtQml import QQmlApplicationEngine, QmlElement

QML_IMPORT_NAME = "io.qt.edcviewer"
QML_IMPORT_MAJOR_VERSION = 1

@QmlElement
class Bridge(QObject):

    @Slot(str, result = bool)
    def register(self, s):
        if s.lower() == "12345678":
            return True
        else:
            return False

class GUI:
    """GUI class for the application"""
    def __init__(self):
        self.app = QGuiApplication(sys.argv)
        self.engine = QQmlApplicationEngine()

        self.qml_file = Path(__file__).parent / 'src' / 'View.qml'

    def start(self):
        """Start the GUI"""
        QQuickStyle.setStyle("Material")
        self.engine.load(self.qml_file)

        if not self.engine.rootObjects():
            sys.exit(-1)
    
        sys.exit(self.app.exec())

    def stop(self):
        """Stop the GUI"""

    def show_image(self, image):
        """Show a single frame"""

    def calibrate(self):
        """Calibrate the camera"""

if __name__ == '__main__':
    gui = GUI()
    gui.start()

