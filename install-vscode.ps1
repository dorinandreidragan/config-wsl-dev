# Install Visual Studio Code
winget install --id=Microsoft.VisualStudioCode -e -h

# Load the JSON file containing the extensions
$extensionsJson = Get-Content '.\vscode-extensions.json' | ConvertFrom-Json

# Install the extensions
foreach ($extension in $extensionsJson.recommendations) {
    & code --install-extension $extension --force
}

# Verify the installation and configuration
code --list-extensions
