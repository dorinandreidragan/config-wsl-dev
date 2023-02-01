# Check if WSL 2 is already installed
if (Get-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux) {
  Write-Output "WSL 2 is already installed."
} else {
  # Enable WSL 2 Feature
  Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux

  # Set WSL version 2 as default
  wsl --set-default-version 2

  Write-Output "WSL 2 has been installed."
}