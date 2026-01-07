# Wgets & head Befehl

-Wgets ist ein ***Befehl*** der dem User ermöglicht Dateien Herunterzuladen.
syntax:
```sh

wgets Link
```
Wollen sie denn Inhalt der Heruntergeladenen Datei Auslesen,nutzen sie den head Befehl.Dieser ermöglicht es ihnen auf den Inhalt zuzugreifen.
zb.
```sh
head hipotalamus.txt

```
Eine Erweiterung ist die -nZahl funktion.Mit dieser können sie die Ausgabe auf die Jeweilige Anzahl Begrenzen.
zb.
```sh
head hipotalamus.txt -n4
```
oder 
```sh
head shopping.txt -n2
```
# Übungen
## passwd/ 5 zeilen auslesen 
```sh
~/workspace$ mkdir etc
~/workspace$ cd etc
~/workspace/etc$ touch passwd
~/workspace/etc$ touch group
~/workspace/etc$ ls
group  passwd
~/workspace/etc$ nano passw
~/workspace/etc$ head passw 
hallo 
ich 
bin 
passwd
ich 
habe 7
zeilen 
~/workspace/etc$ head passw -n5
hallo 
ich 
bin 
passwd
ich 
~/workspace/etc$
```

## Group / 7zeilen auslesen
```sh

~/workspace/etc$ ls
group  passwd
~/workspace/etc$ nano group
~/workspace/etc$ ls
group  passwd
~/workspace/etc$ head group
hallo 
ich 
habe 
10
zeilen
ich 
bin 
group
ja
ich
~/workspace/etc$ head group -n7
hallo 
ich 
habe 
10
zeilen
ich 
bin 
~/workspace/etc$ 
```
 ## man ***Page*** von ***head*** nicht erreichbar?

```sh
~/workspace$ man head
No manual entry for head
```

# Seq

```sh
seq 0 99 >zahlen.txt
```

```sh
~/workspace$ head zahlen.txt -n10
0
1
2
3
4
5
6
7
8
9
```
## schreibe die ersten 7 zeilen der datei zahlen.txt in eine neue datei zuhause fertig machen.



 # Wildcards in der shell

 ### 'formen der Wildcard'
 Wildcards kommen in verschieden syntax Formen
 zb.ls* txt
 das * steht für eine beliebige anzahl an Unbekannten Zeichen.Diese sind sehr wertvoll für Daten manipulation oder zur suche von Dateien.


 
