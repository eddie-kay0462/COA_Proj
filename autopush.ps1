# Change directory to your Git project folder
cd "C:\Users\eddie\Desktop\Final Project"

while ($true) {
    git add .

    # Check for changes in the working tree
    $status = git status --porcelain
    if ($status) {
        $time = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
        git commit -m "Auto update: $time"
        git push origin main
        Write-Output "[$time] Changes detected and pushed."
    } else {
        $time = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
        Write-Output "[$time] No changes to commit."
    }

    Start-Sleep -Seconds 300  # Wait 5 minutes before next check
}
