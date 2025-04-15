# SCCM - Automação de Atualização de Aplicativos

Este projeto contém scripts PowerShell prontos para automação da atualização de aplicativos populares via **SCCM (System Center Configuration Manager)**.

## 💼 Aplicações incluídas

- WinRAR
- Adobe Reader
- 7-Zip
- Template genérico para outros softwares

## 📂 Estrutura

- `scripts/`: Contém os scripts PowerShell de atualização
- `relatorios/`: Exemplos de relatórios gerados
- `docs/`: Documentação e instruções de uso

## 🚀 Requisitos

- PowerShell 5.1+
- Permissões de administrador no SCCM
- Console do SCCM instalado
- Caminhos de rede configurados com os instaladores

## 🔧 Como utilizar

1. Edite os scripts com os caminhos corretos para sua estrutura de rede.
2. Execute os scripts no servidor SCCM com permissões elevadas.
3. Os scripts criam pacotes, distribuem e preparam para deploy via Console SCCM.

## ✍️ Contribuições

Sugestões e melhorias são bem-vindas! Faça um fork ou envie um pull request.

## 🛡️ Autor

**Matheus Silva**  
Especialista em Infraestrutura, Automação e Segurança da Informação  
[LinkedIn](https://www.linkedin.com/in/matheus-s-6a6b0734b) | [GitHub](https://github.com/masasilva)

