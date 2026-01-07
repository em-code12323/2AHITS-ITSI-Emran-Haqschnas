# Theoretisches Wissen der Stdinput und stdoutput funktionen und befehle sowie Argumentationen 

 1. Normaler Weise gibt man den Input mit seiner Tastatur ein und dieser wird von der console ausgegeben.
  2. Man kann jedoch dies manipulieren mit Hilfe von einigen Argumenten.
  ## Stdoutput

  > Um einen output so zu manipulieren das jener nicht von der console ausgegeben wird sondern auf eine andere Datei gespeichert wird kann man denn befehl
> cat <text.txt (verwenden siehe unten)
```sh
cat > text.txt
```
der Pfeil zeigt zu der Datei jenes bedeutet das alles was mithilfe von der cat funktion ausgegeben wird(output) in die angezeigte datei gespeichert wird und nicht von der Konsole ausgegeben wird.

> Will man aber jetzt seinen Input ansehen, sprich auf der Konsole ausgeben so muss man diesen befehl verwenden
```sh
cat < text.txt
```
Dieser Befehl ist der direkte Gegenspieler zur vorherigen Funktion (macht das selbe in umgekehrter weise) also es gibt  dann den Inhalt der gewünschten Datei aus.



## Speicherung von input 


```sh
echo slalom <texticus.txt
```
So speichert man direkt den input in eine separate datei also ist  kein output nötig sondern es wird direkt in die Datei selbst gespeichert.
> Hier läuft man aber in ein Problem, würde man diese funktion verwenden ,dann könnte man immer nur eine Eingabe in der Datei haben.Sprich immer wenn man was neues eingibt wird der alte Inhalt überschrieben.

```sh
echo wasd > dsaw.txt
```
```sh
cat dsaw.txt
```
```sh
wasd
```
würde ich jetz was anderes rein schreiben wollen passiert jenes.

```sh
echo slalom >dsaw.txt 
cat dsaw.txt 
```

```sh
 slalom
```

 >Um das zu umgehen
>benutzt man doppelte >> größer Zeichen
>man schreibt also alles gleich jedoch mit >>
```sh
echo slalom >>dsaw.txt
echo wsda >>dsaw.txt
echo wsda >>dsaw.txt
```
```sh
slalom
wsda
slalom
```

     