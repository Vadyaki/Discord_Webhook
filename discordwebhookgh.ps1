$hookUrl = 'https://discord.com/api/webhooks/token/key'

$content = @"
text
"@

$payload = [PSCustomObject]@{

    content = $content

}

Invoke-RestMethod -Uri $hookUrl -Method Post -Body ($payload | ConvertTo-Json) -ContentType 'Application/Json'