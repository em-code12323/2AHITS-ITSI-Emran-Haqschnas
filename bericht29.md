# Bericht: Lab – Linux Servers – Identifikation von Diensten

**Titel:** Übungen – Lab – Linux Servers  
**Ziel:** Verwendung der Linux-Kommandozeile zur Identifikation laufender Serverdienste auf einem System.  
**Durchführender:** Analyst  
**System:** CyberOps Workstation VM

## Einleitung

Ziel dieses Labs war es, mit Hilfe von Standard-Tools (`ps`, `netstat`, `telnet`) laufende Serverprozesse auf einem Linux-System zu identifizieren und zu analysieren. Der Fokus lag auf dem Verständnis von Prozesshierarchien, Netzwerkports und der Kommunikation mit Diensten.

## Teil 1: Identifikation von Servern und Prozessen

Zunächst wurde die Kommandozeile der CyberOps VM geöffnet und der Zugriff auf das System sichergestellt.

### 1. Anzeige laufender Prozesse mit `ps`

Mit dem Befehl `sudo ps -elf` wurden alle Hintergrundprozesse angezeigt.

**Frage: Warum war es notwendig, `ps` mit `sudo` auszuführen?**  
**Antwort:** Viele Prozesse, insbesondere Systemdienste und Server (wie `nginx`, `sshd`), gehören dem Benutzer `root`. Ohne `sudo` zeigt `ps` nur die Prozesse des aktuellen Benutzers (`analyst`) an. Mit `sudo` werden alle Prozesse des gesamten Systems sichtbar, was für eine vollständige Analyse erforderlich ist.

### 2. Prozesshierarchie mit `ps -ejH`

Nach dem Start des `nginx`-Webservers (`sudo /usr/sbin/nginx`) wurde die Prozessbaumstruktur mit `sudo ps -ejH` angezeigt.

**Frage: Wie wird die Prozesshierarchie durch `ps` dargestellt?**  
**Antwort:** Die Option `-H` zeigt die Prozesse in einer Baumstruktur an. Die Einrückung (Tree-View) visualisiert die Eltern-Kind-Beziehung. Ein Prozess, der einen anderen gestartet hat, wird als Elternteil (Parent) oberhalb und weiter links dargestellt, die davon gestarteten Kindprozesse (Children) sind eingerückt rechts unten. Die Spalten `PID` (Prozess-ID) und `PPID` (Parent Process ID) sind dabei die technische Grundlage.

### 3. Analyse von Netzwerkdiensten mit `netstat`

`netstat` wurde verwendet, um Server zu identifizieren, die auf Netzwerkverbindungen warten.

Mit dem Befehl `sudo netstat -tunap` wurde folgende (gekürzte) Ausgabe erzeugt:

```text
Proto Recv-Q Send-Q Local Address   Foreign Address   State    PID/Program name
tcp   0      0      0.0.0.0:80      0.0.0.0:*         LISTEN   395/nginx
tcp   0      0      0.0.0.0:22      0.0.0.0:*         LISTEN   277/sshd