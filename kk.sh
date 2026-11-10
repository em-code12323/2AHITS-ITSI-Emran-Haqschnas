#!/bin/bash

datei="wordlist.txt"
anzahl_woerter=$(wc -l < "$datei")
wort1=$(sed -n "$(( (RANDOM % anzahl_woerter) + 1 ))p" "$datei")
wort2=$(sed -n "$(( (RANDOM % anzahl_woerter) + 1 ))p" "$datei")
wort3=$(sed -n "$(( (RANDOM % anzahl_woerter) + 1 ))p" "$datei")
wort4=$(sed -n "$(( (RANDOM % anzahl_woerter) + 1 ))p" "$datei")
wort5=$(sed -n "$(( (RANDOM % anzahl_woerter) + 1 ))p" "$datei")
echo "$wort1 $wort2 $wort3 $wort4 $wort5"
