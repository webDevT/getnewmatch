$images = Get-ChildItem -Path "app\img" -File | Where-Object { $_.Extension -in @('.png', '.svg', '.webp', '.jpg', '.jpeg') } | Select-Object -ExpandProperty Name
$unused = @()

foreach ($img in $images) {
    $found = Select-String -Path "app\*.html", "app\sass\*.sass", "app\css\*.css", "app\js\*.js" -Pattern ([regex]::Escape($img)) -ErrorAction SilentlyContinue
    if (-not $found) {
        $unused += $img
    }
}

Write-Host "Невикористані зображення:"
$unused | ForEach-Object { Write-Host $_ }

