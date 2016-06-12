# Komponenten
Die Mastersoftware ist aus mehreren Schichten aufgebaut:
 - Betriebssystem: Raspbian, basierend auf Debian, basierend auf Linux mit Display-Treiber
 - Basissoftware: X11 und LXDE für die graphische Benutzeroberfläche.
 - Basis für den Mastersoftware-Code: Laufzeiten für Python 3 sowie Qt 5, erweitert durch umfangreiche Programmbibliotheken
 - Mastersteuerung: Implementation der Masterfunktionalität in Python

## Lizenzen
Bei der Auswahl von Drittsoftware wurde auf die jeweiligen Lizenzbedingungen geachtet, um keine Konflikte zu verursachen. Die wichtigsten drei Lizenz-Bereiche werden wie folgt definiert:

Teil                                 | Lizenz                            | Bedingung
Linux-Kernel                         | GPL                               | Quellcode und Änderungen müssen öffentlich sein.
Treiber für Raspberry Pi und Display | Restricted                        | Quellcode wird vom Hersteller geheim gehalten
Raspbian                             | DFSG (Sammlung diverser Lizenzen) | Darf frei verwendet, aber nicht unbedingt verkauft, werden.

Grundlage für die Software bildet das angepasste Betriebssystem. Dieses wird von der Raspberry Pi Foundation frei zur Verfügung gestellt und unterliegt den Bedingungen der DFSG. Die darauf aufbauenden Programmbibliotheken zur Abstraktion von Betriebsystemfunktionen und weiteren Hardwareaufrufen sind alle aus Raspbian-Repository verfügbar und unterliegen daher ebenfalls der DFSG.
Da die Mastersoftware zwar auf diesen Komponenten aufsetzt, sie aber nicht verändert oder statisch verlinkt wird, entstehen keine Lizenzkonflikte. Zu beachten ist hier, dass diese Drittsoftware im Allgemeinen nicht als Eigenwerk verkauft werden darf. Das heisst, dass sie zwar beliebig verbreitet werden darf, nicht aber zum Produkt hinzugezählt werden kann.
Die DFSG stellt insbesondere folgende Anforderung an alle Programme, welche Teil von Raspbian sind:
 - Die Software darf frei verbreitet werden (Regel 1)
 - Die Software darf für beliebige Zwecke eingesetzt werden (Regel 6)
 - Die Software beschränkt unzusammenhängende Software nicht (Regel 9)
Quelle: <https://www.debian.org/social_contract#guidelines>
Der eigentliche Mastersoftware-Quellcode dagegen ist nicht öffentlich und kann als Bestandteil des Produkts verkauft werden.

## Python-Bibliotheken
Folgende Python-Bilbiotheken kommen in der Mastersoftware zum Einsatz:

Name                | Version | Zweck                                                       | Webseite
PyQt                | 5       | Erstellen und verwalten von graphischen Benutzeroberflächen | <https://riverbankcomputing.com/software/pyqt/intro>
SQLAlchemy          | 1.0     | Datenbankabstraktion                                        | <http://www.sqlalchemy.org/>
WiringPi for Python | 2       | Abstraktion der  Hardwareschnittstellen                     | <https://github.com/WiringPi/WiringPi-Python>

# Interner Aufbau
## Threads
Die Mastersoftware ist in mehrere Threads gegliedert, unter welchen die Funktionen aufgeteild sind. Sie werden alle von einem Hauptthread gestartet, welcher die Koordination mittels Semaphoren übernimmt. Dazu initialisiert er alle Resourcen, auf welche aus mehreren Threads zugegriffen sind. Dies sind Datenbank und Logging-System, welche beide Multithreading beherrschen und threadsafe sind. Die zentrale Koordination bedeutet zudem, dass alle Arbeitsschritte nur sofern nötig und nicht mit veralteten Daten ausgeführt werden.
Um die Threadsicherheit zu gewährleisten verwenden die beiden geteilten Resourcen spezielle Mechanismen:
 - Die Loggingfunktion setzt eine Queue eim um Meldungen zu zwischenzuspeichern und asynchron hintereinander abzuarbeiten.
 - SQLAlchemy beinhaltet mit der "ScopedSession" eine Methode um aus mehreren Threads parallel aufgerufen zu werden. Dazu werden die Anfragen aus jeweils einem Thread gruppiert und dann atomar ausgeführt.
Alle anderen externen Ressourcen, dies sind I2C-bus, UART und GPIO, werden jeweils von nur einem Thread genutzt, wodurch keine Konflikte auftreten können.

## Aufgabenteilung (KÖNNTE VON MARCEL VERÄNDERT WERDEN)
Im Detail sieht die Aufgabenteilung folgendermassen aus:
 - Prozesssteuerung: Der Hauptthread verwaltet Resourcen und alle weiteren Threads.
 - Datensammlung: Ein Thread empfängt die Spannungs- und Strommesswerte von den Sensoren und speichert sie in der Datenbank ab.
 - Datenauswertung: Ein separater Thread untersucht die gespeicherten Messwerte auf defekte Panels und speichert die Ergebnisse ebenfalls in der Datenbank ab.
 - Graphisches Benutzerinterface: Der GUI-Thread stellt ein Fenster dar mit welchem der Benutzer die Einstellungen von Alarmierung und Telefonnummer konfigurieren kann und speichert Änderungen in der Datenbank.
 - Ausgabe: Die Umsetzung der definierten Massnahmen obliegt einem Thread, welcher das Modem verwaltet und bei Bedarf die digitalen Ausgänge zur Steuerung der Relais betätigt
