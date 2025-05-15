# Diagnóstico de Hosts via PowerShell 🖥️

Este projeto contém um script em PowerShell que testa a conectividade de uma lista de computadores ou dispositivos da rede por hostname, exibindo status colorido diretamente no terminal.

## 🚀 Funcionalidade

- Varre uma lista de hosts personalizados (nome + localização)
- Realiza `Test-Connection` (ping) com retorno visual:
  - 🟢 Online (verde)
  - 🔴 Offline (vermelho)
- Pode ser usado para diagnosticar terminais, impressoras, câmeras, switches e muito mais

## 📂 Estrutura do Script

```powershell
$hosts = @(
    @{Nome="Insira o hostname aqui"; Local="Insira onde fica o computador aqui"},
    ...
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
```

## 🛠️ Como usar

1. Edite o arquivo `ping_hosts_example.ps1` com os nomes reais das máquinas e suas localizações
2. Execute o script no PowerShell:
```bash
powershell -ExecutionPolicy Bypass -File .\ping_hosts_example.ps1
```
3. Veja no terminal o status de cada host

## 💡 Dicas

- Agende esse script no **Agendador de Tarefas** para execuções automáticas
- Combine com exportação para CSV ou envio por e-mail para monitoramento
- Pode adaptar para checar portas específicas com `Test-NetConnection`

## 📦 Arquivos

- `ping_hosts_example.ps1`: Script principal com estrutura pronta para uso

## 🔒 Requisitos

- PowerShell 5.1+ (nativo no Windows 10/11)
- Acesso à rede onde os hosts estão localizados

## 📃 Licença

Este projeto é open-source e está licenciado sob a [MIT License](LICENSE).
