# Betriebsystem Aufsetzen 
## Vorraussetzungen 
Sie brauchen eine Iso datei mit dem sie Windows 10 Booten können.
In meinem falle ist diese schon bereit gestellt .


###  1. Schritt
Öffnen   sie  Vmware und kreieren sie eine Virtuelle Machine
Konfigurieren sie diese mit folgenden Werten.

```
I will install the operating system later.
The virtual machine will be created with a blank hard disk.
``` 

```
Guest operating system

Microsoft Windows
Linux
Other

Version

Windows 10(AUSWAELBAR)
```
Sie Benennen dann die Virtuelle Maschine Wk10-2 und browsen zu dem passenden Ordner.
Jetzt stellen sie die SSD größe ein (40GB) und für RAM/Memory 4 GB zudem wählt man als Netzwerk Einstellung Custom und dann  VMnet0 aus.

Bei der Cd sas nutzne wir die eigene iso datei zum booten dann startet man die Virutelle Maschine und logt sich ganz normal über domain an mit dem user sysadmin und passwort:Win#sys#admin10.
jetzt würde man im windows 10 sein als erstes bildschirm 
Auflösung einstellen und dann direkt das netzwerk Konfigurieren mittels View Netzwork connections dort machen wir einen Rechtsklick auf das ethernet gehen zur ip version 4 einstellung drücken auf propertiers und stellen die ip adresse . . . .  subnetmask 255.255 .255.0  dns 1.1.1.1  