# Como Usar os Scripts de Atualização SCCM

## 1. Pré-Requisitos

- Acesso administrativo ao servidor SCCM.
- O módulo PowerShell para SCCM (`ConfigurationManager.psd1`) deve estar instalado.
- A rede corporativa deve ter os caminhos de instalação corretamente configurados.

## 2. Execução dos Scripts

1. Edite os scripts PowerShell para adicionar os caminhos corretos de rede (`$SourcePath`), o código do site SCCM (`$SCCMSiteCode`), e o servidor SCCM (`$SCCMServer`).
2. Execute os scripts no servidor SCCM com permissões elevadas (Executar como administrador).
3. Durante a execução, os logs e relatórios serão gerados na pasta `/logs/` e `/relatorios/`.

## 3. Estrutura do Relatório

Após a execução de cada pacote, um relatório será gerado automaticamente. O relatório conterá informações sobre o status de distribuição do pacote para cada ponto de distribuição.

- O relatório de execução será salvo em `C:\Caminho\Para\Relatorios\relatorio_execucao_YYYYMMDD.txt`.
- O log de execução detalhado será salvo em `C:\Caminho\Para\Logs\log_sccm_YYYYMMDD.log`.

## 4. Monitoramento de Execução

- Verifique os logs para mensagens detalhadas de execução.
- Consulte os relatórios para ver o status da distribuição de pacotes.

## 5. Solução de Problemas

Caso algum pacote não seja distribuído corretamente, consulte o log e os erros registrados. Se necessário, consulte a documentação do SCCM para diagnósticos mais avançados.

