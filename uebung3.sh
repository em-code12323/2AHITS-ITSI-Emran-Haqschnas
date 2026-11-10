#!/bin/bash
# 1. Das erste Argument ($1) in einer Variable speichern (z.B. file1.txt)
eingabe_datei=$1
# 2. Das aktuelle Datum im Format YYYY-MM-DD holen
heute=$(date +%F)
# 3. Den neuen Dateinamen zusammenbauen (Datum + Unterstrich + alter Name)
neue_datei="${heute}_${eingabe_datei}"
# 4. Die Datei kopieren
cp "$eingabe_datei" "$neue_datei"
# 5. Erfolgsmeldung ausgeben
echo "Kopie erfolgreich erstellt: $neue_datei"
