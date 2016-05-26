# Komponenten
 - Betriebssystem: Raspbian, basierend auf Debian, basierend auf Linux mit angepasstem Kernel für erweiterte Display-Funktionalität
 - Software basiert auf Python3 und QT5
 - Funtkionalität von Python3 wird durch Biblioheken erweitert
 - Eigener Code, welcher Masterfunktionalität implementiert

## Lizenzen
Unterschiedliche konditionen zur Verwendung der Software
 - GPL für Linux kernel
 - Closed Source Firmware Blobs für rpi und display
 - DFSG für alle weitere Software, da von Debian kontrolliert

In Ordung für kommerzielle Zwecke, darf kein Geld verlangt werden
Eigener Quellcode nicht öffentlich und kann als Bestandteil des Produkts verkauft werden.

# Aufbau
## Layering
 - Grundlage für die Software bildet das angepasste Betriebssystem.
 - Darauf aufgebaut sind Programmbibliotheken zur Abstraktion von Betriebsystemfunktionen und weiteren Hardwareaufrufen.
 - Diese werden in der Master-Software eingebunden und mittels Python-API angesprochen.

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
