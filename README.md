# Configure Development under WSL on a Windows Machine

This guide will help you configure a Windows 11 machine with WSL 2, Docker Desktop and other tools
for development.

## Prerequisites

A Windows 11 machine with administrative privileges and git installed.

## Step 1: Clone the repository

Clone the repository containing the configuration scripts to your Windows 11 machine.

```powershell
git clone https://github.com/dorinandreidragan/config-wsl-dev.git
```

## Step 2: Run the config.ps1 script

Open a PowerShell window as an administrator and navigate to the root folder of the repository.

```powershell
cd config-wsl-dev
```

Run the `config.ps1` script to install WSL 2 and Docker Desktop on your Windows 11 machine.

```powershell
.\config.ps1
```

## What does the config.ps1 script do?

The config.ps1 script is a PowerShell script that calls the following scripts:

- The `install-wsl.ps1` script installs WSL 2 and sets it as the default version for Windows
  Subsystem for Linux.
- The `install-docker-desktop.ps1` script installs Docker Desktop on your Windows 11 machine and
  adds the current Windows user to the Docker group created by the installation.
- The `install-vscode.ps1` script installs VSCode and the extensions specified in
  `vscode-extensions.json` file.

## Conclusion

After running the `config.ps1` script, you should have:

- WSL 2
- Docker Desktop
- VSCode

installed and configured on your Windows 11 machine. You can now use them for your development work.
