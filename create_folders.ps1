# Run this file in PowerShell: .\create_folders.ps1

Write-Output "Creating Flutter project structure..."

$root = "lib"

# Main folders
$folders = @(
    "$root/core/constants",
    "$root/core/error",
    "$root/core/network",
    "$root/core/utils",

    "$root/data/models",
    "$root/data/services",
    "$root/data/repositories",

    "$root/domain",

    "$root/presentation/blocs",
    "$root/presentation/viewmodels",
    "$root/presentation/screens",
    "$root/presentation/widgets",

    "$root/localization"
)

# Create folders
foreach ($folder in $folders) {
    if (-Not (Test-Path $folder)) {
        New-Item -ItemType Directory -Path $folder | Out-Null
        Write-Output "Created folder: $folder"
    }
}

# Create main files
$files = @(
    "$root/app.dart",
    "$root/main.dart"
)

foreach ($file in $files) {
    if (-Not (Test-Path $file)) {
        New-Item -ItemType File -Path $file | Out-Null
        Write-Output "Created file: $file"
    }
}

Write-Output "Flutter project structure ready!"
