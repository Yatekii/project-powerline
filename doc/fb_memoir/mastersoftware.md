# Komponenten
Die Mastersoftware ist aus mehreren Schichten aufgebaut:
 - Betriebssystem: Raspbian, basierend auf Debian, basierend auf Linux mit Display-Treiber
 - Basissoftware: X11 und LXDE für die graphische Benutzeroberfläche.
 - Basis für den Mastersoftware-Code: Laufzeiten für Python 3 sowie Qt 5, erweitert durch umfangreiche Programmbibliotheken
 - Mastersteuerung: Implementation der Masterfunktionalität in Python

## Lizenzen
Bei der Auswahl von Drittsoftware wurde auf die jeweiligen Lizenzbedingungen geachtet, um keine Konflikte zu verursachen. Die wichtigsten drei Lizenz-Bereiche werden wie folgt definiert:
Teil | Lizenz | Bedingung
Linux-Kernel | GPL | Quellcode und Änderungen müssen öffentlich sein.
Treiber für Raspberry Pi und Display | Restricted | Quellcode wird vom Hersteller geheim gehalten
Raspbian | DFSG (Sammlung diverser Lizenzen) | Darf frei verwendet, aber nicht unbedingt verkauft, werden.
Grundlage für die Software bildet das angepasste Betriebssystem. Dieses wird von der Raspberry Pi Foundation frei zur Verfügung gestellt und unterliegt den Bedingungen der DFSG. Die darauf aufbauenden Programmbibliotheken zur Abstraktion von Betriebsystemfunktionen und weiteren Hardwareaufrufen sind alle aus Raspbian-Repository verfügbar und unterliegen daher ebenfalls der DFSG.
Da die Mastersoftware zwar auf diesen Komponenten aufsetzt, sie aber nicht verändert oder statisch verlinkt wird, entstehen keine Lizenzkonflikte. Zu beachten ist hier, dass diese Drittsoftware im Allgemeinen nicht als Eigenwerk verkauft werden darf. Das heisst, dass sie zwar beliebig verbreitet werden darf, nicht aber zum Produkt hinzugezählt werden kann.
Die DFSG stellt insbesondere folgende Anforderung an alle Programme, welche Teil von Raspbian sind: Quelle: <https://www.debian.org/social_contract#guidelines>
 - Die Software darf frei verbreitet werden (Regel 1)
 - Die Software darf für beliebige Zwecke eingesetzt werden (Regel 6)
 - Die Software beschränkt unzusammenhängende Software nicht (Regel 9)
Der Mastersoftware-Quellcode dagegen ist nicht öffentlich und kann als Bestandteil des Produkts verkauft werden.

## Python-Bibliotheken
Folgende Python-Bilbiotheken kommen in der Mastersoftware zum Einsatz:
Name | Version | Zweck | Webseite
PyQt | 5 | Erstellen und verwalten von graphischen Benutzeroberflächen | <https://riverbankcomputing.com/software/pyqt/intro>
SQLAlchemy | 1.0 | Datenbankabstraktion | <http://www.sqlalchemy.org/>
WiringPi for Python | 2 | Abstraktion der  Hardwareschnittstellen | <https://github.com/WiringPi/WiringPi-Python>

^ DONE ^
v TODO v
# Interner Aufbau
## Threads

 - Hauptthread initialisiert Datenbank und startet Threads, unter welchen die eigentlichen Funktionen aufgeteilt sind.
 - Unterthreads werden mittels Semaphoren vom Hauptthread koordiniert. Dies gewährleistet, dass Arbeitsschritte nur mit aktuellen Daten durchgeführt werden.
 - Geteilte Ressourcen wie die Datenbank und Logging-Funktionalität sind threadsafe.
    - Logging verwendet eine Queue um Anfragen zu speichern und hintereinander abzuarbeiten.
    - Die verwendete Datenbankbibliothek beinhaltet Funkionalität um aus mehreren Threads parallel aufgerufen zu werden. Dazu werden die Anfragen aus jeweils einem Thread gruppiert und atomar ausgeführt.
 - Alle anderen externen Ressourcen, dies sind I2C-bus, UART und GPIO, werden jeweils von nur einem Thread genutzt, wodurch keine Konflikte auftreten können.

## Aufgabenteilung
 - Datensammlung: Empfangen von Spannungs- und Strommesswerte von den Sensoren und abspeichern in der Datenbank.
 - Datenauswertung: Untersuchen der gespeicherten Messwerte auf Defekte Panels
 - Benutzerinterface
   - Graphisch (Display / Touchscreen): Konfigurieren der Einstellungen von Alarmierung und Telefonnummer.
   - Modem (SMS): Versand von SMS beim Eintritt von vordefinierten Ereignissen.
   - Elektrisch (Relais / Tasten): Schalten der eingebauten Relais
 - Datenbankverwaltung: Initialisierung der Datenbank und Vorbereiten der Datenbankverbindung
 - Prozesssteuerung: Verwaltung der einzelnen Threads und ihrem Zustand
