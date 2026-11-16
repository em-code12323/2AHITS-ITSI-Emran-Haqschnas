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
### Benennen sie dann die Virtuelle Maschine und finden sie denn gleichnamingen ordner (WK10-2)
Einstellungen:
SSD:40GB
RAM/MEMORY:4GB
NETZWERK:custom VMnet0
CD/DVD(SATA):USE iso image file (browse -> wählen sie die  iso datei aus)
-----------

### Danach kann man sich ganz normal über domain Anmelden 
- user:sysadmin
- password:Win#sys#admin10
-----

### Im Windows angekommen stellt man die auflösung richtig und Konfiguriert das Netzwerk
Dazu geht man auf ->View Network connections -> Rechtsklick auf ethernet gehen -> ip version 4 -> Eigenschaften -> properties 


## Dort folgendes eingeben:
- ip adresse 192.168.12.12 (Ich saß auf pc 12 deshalb ist bei mir 12 an dritter stelle )
- subnetmask 255.255.255.0
- default gateway 192.168.12.254
- bevorzugter dns server :1.1.1.1
- ----
pingen sie jetzt www.orf.at
hierzu windows+r -> cmd ->(im fenster)ping www.orf.at


