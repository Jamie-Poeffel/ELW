# gito

`gito` ist ein Kommandozeilen-Tool, das den Umgang mit Git erleichtert, indem es automatisch Commit-Nachrichten erstellt. Es bietet eine einfache Installation und nur zwei grundlegende Befehle.

## Verzeichnisstruktur  

```sh
C://Windows/System32       # Lokales Systemverzeichnis
├─ ELW
│  ├─ gito
│  │  ├─ program
│  │  │  ├─ main.exe       # Hauptprogramm zur Erstellung von Commit-Nachrichten
│  │  │  └─ uninstall.ps1  # PowerShell-Skript zur Deinstallation des gito-Moduls
│  │  ├─ install.bat       # Script zum installieren wird automatisch ausgeführt
│  │  └─ move.bat          # Script zum die dateien an das richtige ort zu bringen
├─ git.bat                 # Batch-Datei zur Interaktion mit dem gito-Tool
```

---

## Befehle  

### **gito**

**Beschreibung**:  
Der Befehl `gito` erstellt automatisch sinnvolle und beschreibende Git-Commit-Nachrichten basierend auf dem aktuellen Status deines Repositories. Der Prozess ist einfach und benötigt keine manuelle Eingabe.  

**Verwendung**:  

```bash
git add .
```
```bash
gito
add --> README.md
zum commiten (c): # Zum Commiten C eingeben sonst nichts oder nichts um den commit abzubrechen
```
```bash
git push origin main
```

---

### **gito --uninstall**

**Beschreibung**:  
Mit dem Befehl `gito --uninstall` wird das gito-Modul, einschließlich aller zugehörigen Dateien und Konfigurationen, von deinem System entfernt.  

**Verwendung**:  

```bash
gito --uninstall
```

---

## Installationspfad  

Das gito-Modul und die zugehörigen Dateien befinden sich im folgenden Verzeichnis:  

```plaintext
C://Windows/System32/ELW/gito
```

- **`main.exe`**: Das Hauptprogramm zur Erstellung der Commit-Nachrichten.  
- **`uninstall.ps1`**: Ein Skript, um das gito-Modul sauber vom System zu entfernen.  
- **`git.bat`**: Eine Wrapper-Batch-Datei, gespeichert in `C://Windows/System32`, um den Zugriff über die Konsole zu erleichtern.

---

## Hinweis  

Stelle sicher, dass sich die Datei `git.bat` in einem Verzeichnis befindet, das im PATH-Systemvariablenpfad enthalten ist, um die Nutzung über die Konsole zu vereinfachen.
