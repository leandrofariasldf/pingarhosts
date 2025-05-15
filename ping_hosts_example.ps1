$hosts = @(
    @{Nome="Insira o hostname aqui"; Local="Insira onde fica o computador aqui"},
    @{Nome="Insira o hostname aqui"; Local="Insira onde fica o computador aqui"},
    @{Nome="Insira o hostname aqui"; Local="Insira onde fica o computador aqui"}
)

foreach ($item in $hosts) {
    $hostname = $item.Nome
    $local = $item.Local
    if (Test-Connection -ComputerName $hostname -Count 1 -Quiet) {
        Write-Host "🟢 $hostname ($local)" -ForegroundColor Green
    } else {
        Write-Host "🔴 $hostname ($local)" -ForegroundColor Red
    }
}
