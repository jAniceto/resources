# Open by running: code $profile or notepad $profile

# Modify the Powershell prompt style
function Prompt
{
    $promptString = "$pwd `n$ "
    Write-Host $promptString -NoNewline -ForegroundColor green
    return " "
}
