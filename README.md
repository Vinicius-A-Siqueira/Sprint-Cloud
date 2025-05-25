# Sprint-1-2025

![image](https://github.com/user-attachments/assets/6335eded-1ce5-41f1-8fbd-7921804f3f67)

## 👥 Integrantes

- **Gabriel Camargo** – RM557879  
- **Kauan Felipe** – RM557954  
- **Vinicius Alves** – RM551939

## Descrição do Projeto

Esta API RESTful em .NET 8 foi desenvolvida para a Mottu como parte da solução de mapeamento inteligente e gestão das motos nos pátios das filiais. Ela é responsável pelo backend, integrando o banco de dados Oracle para cadastro, consulta, atualização e exclusão de dados relacionados a filiais, motos e pátios.

A API segue os princípios de Clean Architecture e Domain-Driven Design (DDD), garantindo organização, escalabilidade e facilidade de manutenção. Inclui autenticação, validação, tratamento de erros e documentação via Swagger.

---

## Tecnologias Utilizadas

- .NET 8
- Entity Framework Core com Oracle Provider
- Clean Architecture & Domain-Driven Design
- AutoMapper
- Swagger para documentação
- Oracle Database
- Testes unitários e integração (em desenvolvimento)
- Azure CLI + Máquina Virtual (Ubuntu)

---

## Instruções para Execução

### Pré-requisitos

- .NET 8 SDK instalado
- Oracle Database configurado e acessível
- Variáveis de ambiente ou arquivo `appsettings.json` com a connection string Oracle

### Passos para AS Rotas

http://localhost:5010/swagger

| Método | Rota                 | Descrição                        |
|--------|----------------------|---------------------------------|
| GET    | /api/filial          | Lista todas as filiais           |
| GET    | /api/filial/{id}     | Busca filial pelo ID             |
| POST   | /api/filial          | Cria uma nova filial             |
| PUT    | /api/filial/{id}     | Atualiza filial existente        |
| DELETE | /api/filial/{id}     | Remove filial                   |
| GET    | /api/moto            | Lista todas as motos             |
| POST   | /api/moto            | Cadastra nova moto               |
| PUT    | /api/moto/{id}       | Atualiza dados da moto           |
| DELETE | /api/moto/{id}       | Remove moto                     |
| GET    | /api/patio           | Lista pátios                    |
| POST   | /api/patio           | Cria pátio                     |
