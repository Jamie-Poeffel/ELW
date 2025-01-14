# elx

## Installer Structure

The **elx** is a module that includes multiple scripts and batch files to simplify the installation and management of modules and applications. Below is the directory structure of the installer:

```sh
C://Windows/System32   # Local System
├─ ELW 
│  ├─ program
│  │  ├─ help.ps1      # PowerShell script for help
│  │  ├─ install.ps1   # PowerShell script for installation
│  │  └─ setup.ps1     # PowerShell script for setup
│  ├─ install.bat      # Batch file for installation
│  └─ move.bat         # Batch file for moving files
└─ elx.bat             # Batch file for console mode execution
```

### File Descriptions

- **help.ps1**: A PowerShell script that assists users in understanding how the installer works and answers frequently asked questions.
- **install.ps1**: Executes the actual installation of the modules and tools managed by the elx installer.
- **setup.ps1**: Ensures all required dependencies and configurations for the installer are correctly set up.
- **install.bat**: A batch file that acts as an installation script for the entire installer, designed for Windows systems.
- **move.bat**: A batch file that moves files to the correct locations to complete the installation process.
- **elx.bat**: The central batch file that serves as the entry point for starting the installer in console mode and interacting with its various functions.

---

## Commands

The elx installer provides several commands that can be executed in the console. These commands help in setting up and managing modules and applications.

### **setup**

**Description**:  
The `elx setup` command should be executed after installing the tool to add essential dependencies and configurations. This ensures all necessary modules and configurations are in place before proceeding with the actual module installation.

**Usage**:  
Run this command to prepare the installer for use by setting up dependencies and configurations.

```ps
ps> elx setup  # Richte den Modul-Installer ein
```

---

### **install**

**Description**:  
The `elx install` command is used to install modules and applications on your local PC. This command is executed after the installer has been successfully set up.

**Usage**:  
Use this command to install the desired modules or applications on your system. Depending on the modules being installed, this step may take some time.

```ps
ps> elx install  # Installiere die Module auf deinem System
```

---

### **--help**

**Description**:  
The `elx --help` command provides quick assistance directly in the console. If you're unsure how to use a specific command or need help, you can execute this command to get information and guidance.

**Usage**:  
Run this command to display a complete list of available commands and their descriptions. It's particularly useful when you need details about available options or further assistance.

```ps
ps> elx --help  # Hole dir Hilfe in der Konsole
```

---

## Additional Notes

- **Using PowerShell and Batch Files**: The elx installer uses both PowerShell scripts and batch files to ensure broad compatibility across different Windows environments. Batch files (`.bat`) can be used on older Windows systems, while PowerShell scripts (`.ps1`) are designed for more modern and robust system configurations.
- **Administrator Rights**: Some commands and functions of the installer, especially those involving file movement and module installation, require administrator privileges. Ensure that you run PowerShell or the console with administrator rights to avoid permission errors.
- **Troubleshooting**: If errors occur during installation or setup, ensure that all dependencies are properly installed and configured. Use the `--help` command for more troubleshooting information.
