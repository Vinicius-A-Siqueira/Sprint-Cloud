# 🚀 Sprint-1-2025 – Mottu Fleet API

![image](https://github.com/user-attachments/assets/6335eded-1ce5-41f1-8fbd-7921804f3f67)

## 👥 Integrantes

- **Gabriel Camargo** – RM557879  
- **Kauan Felipe** – RM557954  
- **Vinicius Alves** – RM551939

---

## 📌 Descrição do Projeto

Esta API RESTful em **.NET 8** foi desenvolvida para a **Mottu** como parte da solução de mapeamento inteligente e gestão de motos nos pátios das filiais. A API serve como backend e realiza o cadastro, leitura, atualização e exclusão de informações no banco de dados **Oracle**, com foco nas entidades `Filial`, `Moto` e `Pátio`.

A estrutura do projeto segue os padrões de **Clean Architecture** e **Domain-Driven Design (DDD)**, visando manutenibilidade, escalabilidade e organização de código. O projeto inclui documentação com **Swagger**, manipulação de erros, validações, e integração futura com autenticação e testes.

---

## 🛠️ Tecnologias Utilizadas

- [.NET 8](https://dotnet.microsoft.com/en-us/download/dotnet/8.0)
- **Entity Framework Core** (Oracle Provider)
- **Clean Architecture**
- **Domain-Driven Design (DDD)**
- **AutoMapper**
- **Swagger/OpenAPI**
- **Oracle Database**
- **Docker**
- **Azure CLI** + **Ubuntu Virtual Machine**

---

## 📦 Estrutura do Projeto

```bash
Mottu.Fleet/
├── Domain/              # Entidades e interfaces de domínio
├── Application/         # Serviços, interfaces e DTOs
├── Infrastructure/      # Acesso a dados (EF Core + Oracle)
├── API/                 # Web API com controllers e middlewares
├── Dockerfile           # Dockerfile otimizado
└── README.md            # Instruções e documentação
```

---

## 🚀 Execução Local

### ✅ Pré-requisitos

- .NET 8 SDK instalado  
- Banco de dados Oracle rodando e acessível  
- Variável de ambiente ou `appsettings.json` com a Connection String

```json
"ConnectionStrings": {
  "OracleConnection": "User Id=your_user;Password=your_password;Data Source=your_datasource"
}
```

---

## 🧪 Endpoints disponíveis

Acesse a documentação interativa via Swagger:

📍 **http://localhost:5010/swagger**

| Método | Rota                 | Descrição                         |
|--------|----------------------|----------------------------------|
| GET    | `/api/filial`        | Lista todas as filiais           |
| GET    | `/api/filial/{id}`   | Busca uma filial pelo ID         |
| POST   | `/api/filial`        | Cria uma nova filial             |
| PUT    | `/api/filial/{id}`   | Atualiza uma filial existente    |
| DELETE | `/api/filial/{id}`   | Remove uma filial                |
| GET    | `/api/moto`          | Lista todas as motos             |
| POST   | `/api/moto`          | Cadastra uma nova moto           |
| PUT    | `/api/moto/{id}`     | Atualiza dados de uma moto       |
| DELETE | `/api/moto/{id}`     | Exclui uma moto                  |

---

## ☁️ Execução em Nuvem via Azure (Docker)

Os scripts a seguir automatizam a execução do projeto em uma **VM Linux no Azure**.

### 1. Criação da VM

```bash
bash create-vm.sh
```

### 2. Liberação da Porta 5010

```bash
bash open-ports.sh
```

### 3. Instalação do Docker

```bash
bash install-docker.sh
```

### 4. Construção da Imagem e Execução

```bash
docker build -t mottu-fleet-app .
docker run -d -p 5010:5000 --name mottu-fleet-container mottu-fleet-app
```

---

## 🧭 Arquitetura Macro

> O diagrama de arquitetura foi criado no [Draw.io](https://draw.io) e está disponível na pasta `/Arquitetura`.

- Usuário → Front-end (futuro) → API REST (.NET)  
- API REST → Banco Oracle  
- Hospedagem: Azure VM (Linux) + Docker  

---

## 🧹 Encerramento

Ao final da entrega, delete a VM para evitar custos adicionais:

```bash
az vm delete --resource-group Mottu-RG --name MottuVM --yes
```

---

## 📄 Licença

Este projeto foi desenvolvido como parte da Sprint acadêmica de 2025 – FIAP.  
Uso educacional e não comercial.
