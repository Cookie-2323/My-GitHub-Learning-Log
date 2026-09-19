# 获取当前日期，格式为 YYYY-MM-DD
$date = Get-Date -Format "yyyy-MM-dd"
$targetFile = "notes/$date.md"

if (Test-Path $targetFile) {
    Write-Host "ℹ️ 今天的日志已存在: $targetFile" -ForegroundColor Yellow
} else {
    Copy-Item "templates/daily-template.md" -Destination $targetFile
    Write-Host "✅ 今日日志已成功创建: $targetFile" -ForegroundColor Green
}