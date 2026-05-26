# Arbeitsbericht 
### 20.05.2026

- Theorie
- Aufgaben


   ## Theorie

wc (wordcount)
sort   
cut filern spalten 
```sh 
 cut -d, -f2  klassenkassa.csv 
 ```

 sed ... stream editor 
 ```sh
 echo "hello there" | sed "s/hello/hi"
 ```

 ## Aufgaben

 wc
 Recherchiere, experimentiere und erkläre die folgenden Optionen:

 -m
 -l
 -L
 -w

### wc - m zählt die Anzahl der zeichen 
____
### wc - l zählt die Anzahl der lines also die Zeilen
____
### wc -w zählt die Wörter 
 ____
### wc - L sucht die längste Zeile und übergibt sie 

### Finde heraus (Recherchieren, Experimentieren) was die folgende Kommandozeile macht (lies die man page von wc ab “Description”):

$ echo eins zwei drei | wc - klassenkassa.csv


 ###  Übung (cut)
Recherchiere und experimentiere – cut:

in welchen Varianten können Felder mit der -f Option angegeben werden?
-d 
was unterscheidet die -c Option von -f ?
f gibt die jeweilige spalte aus und  -c gibt eine  eine range von  n0-n1 aus die man natürlich selbst eingeben kann.

## Übung (Anzahl Werkstatt)
Schreibe ein shell Kommando (Einzeiler) das in klassenkassa.csv die Anzahl der Einträge mit dem Text Werkstatt zählt.

```sh
grep -c "Werkstatt" klassenkassa.csv
```



Übung (Werkstatt Summe)
Schreibe ein shell Kommando (Einzeiler) das in klassenkassa.csv alle Beträge mit dem Text Werkstatt in folgender Form ausgibt:
```
3.0+15.0+3.0+13.0+2.5
```
```sh
grep "Werkstatt" klassenkassa.csv | cut -d',' -f3
```






 
 