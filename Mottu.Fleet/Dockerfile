# Etapa 1: build
FROM mcr.microsoft.com/dotnet/sdk:8.0-slim AS build
WORKDIR /src

COPY . .

RUN dotnet restore "Mottu.Fleet/Mottu.Fleet.csproj"
RUN dotnet publish "Mottu.Fleet/Mottu.Fleet.csproj" -c Release -o /app/publish

# Etapa 2: runtime
FROM mcr.microsoft.com/dotnet/aspnet:8.0-slim AS runtime
WORKDIR /app

RUN useradd -m appuser
USER appuser

COPY --from=build /app/publish .

EXPOSE 5000

ENTRYPOINT ["dotnet", "Mottu.Fleet.dll"]
