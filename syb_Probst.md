Übung (Directory Struktur)
Schreibe ein Shell-Script das Unterverzeichnisse und Dateien anlegt, es wird ein Argument an das Script übergeben.

Aufruf: ./build_dirs.sh abcd

Dies führt zu folgender Directorystruktur:

./
└── abcd/
    ├── abcd_01/
    │   ├── abcd.01.1.txt
    │   ├── abcd.01.2.txt
    │   └── abcd.01.3.txt
    └── abcd_02/
        ├── abcd.02.1.txt
        ├── abcd.02.2.txt
        └── abcd.02.3.txt
Schreibe weiters ein Shell-Script clean_dir.sh das diese Verzeichnisstruktur wieder löscht.


```sh
#!/bin/bash


if [ -z "$1" ]; then
    echo "Fehler: Bitte gib einen Namen als Argument an."
    exit 1
fi

BASE="$1"


mkdir -p "$BASE"


for ((i=1; i<=2; i++))
do
    DIR="$BASE/${BASE}_0$i"
    mkdir -p "$DIR"

   
    for ((a=1; a<=3; a++))
    do
        touch "$DIR/$BASE"
    done
done

echo " '$BASE' erfolgreich erstellt!"
```

# übung (Skript Generator)
Schreibe ein Skript das

eine Skriptdatei erzeugt (Name wird als Argument übergeben),
die She-Bang Zeile einfügt,
einen echo Befehl einfügt und
das eXecution Flag für das Skript setzt.

```sh
#!/bin/bash

mkdir "$1"
echo "#!/bin/bash" > "$1/$1.sh"
echo "echo "Hello World"" >> "$1/$1.sh"
chmod +x "$1/$1.sh"
```


# cat headline 
```sh
#!/bin/bash

> result.txt
for file in "$@"
do
    echo "== $file ==========================================" >> result.txt
    cat "$file" >> result.txt
    echo "" >> result.txt
done
```

