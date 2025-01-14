# gito

`gito` is a command-line tool designed to simplify Git workflows by automatically generating commit messages. It comes with an easy-to-use installation structure and a minimal set of commands.

## File Structure  

```sh
C://Windows/System32       # Local system directory
├─ ELW
│  ├─ gito
│  │  ├─ program
│  │  │  ├─ main.exe       # Core executable for generating commit messages
│  │  │  └─ uninstall.ps1  # PowerShell script to uninstall the gito module
│  │  ├─ install.bat       # Installation script
│  │  └─ move.bat          # Moving script
├─ git.bat                 # Batch file to interact with the gito tool
```

---

## Commands  

### **gito**

**Description**:  
The `gito` command generates meaningful and descriptive Git commit messages based on the current state of your repository. This command is designed to be simple and efficient, requiring no manual input for crafting messages.  

**Usage**:  

```bash
git add .
```
```bash
gito
add --> README.md
to commit (c): # to commit enter c if you want to cancel the commant press anything but c
```
```bash
git push origin main
```

---

### **gito --uninstall**

**Description**:  
The `gito --uninstall` command removes the gito module from your system, including all associated files and configurations.  

**Usage**:  

```bash
gito --uninstall
```

---

## Installation Path  

The gito module and its associated files are stored in the following directory:  

```sh
C://Windows/System32/ELW/gito
```

- **`main.exe`**: The core executable responsible for generating commit messages.  
- **`uninstall.ps1`**: A script to cleanly remove the gito module from your system.  
- **`git.bat`**: A wrapper batch file stored in `C://Windows/System32` for easier console access.

---

## Note  

Ensure the `git.bat` file is located in a directory listed in your system's PATH variable for seamless command-line execution.

---