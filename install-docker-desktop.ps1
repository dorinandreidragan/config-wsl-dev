# Install Docker Desktop
winget install --id=Docker.DockerDesktop -e -h

# Start Docker Desktop service
Start-Service "Docker Desktop Service"

# Add the current Windows user to the Docker group
$user = [Environment]::UserName
$group = "docker-users"
net localgroup $group $user /add

# Verify the installation
docker version
