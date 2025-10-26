# NK-API

API REST desarrollada en ASP.NET Core para la aplicación Kaizeneka.

## 🚀 Despliegue en Railway.app

### Configuración Automática
Railway detectará automáticamente la configuración del `railway.json` y usará Docker para el despliegue.

### Variables de Entorno Requeridas
Configura estas variables en el dashboard de Railway:

```
JWT_SECRET=tu-clave-jwt-generada-aqui
QVAPAY_BEARER_TOKEN=146631|$2b$10$MCYH7AOUif/E2CEo4Y3jOOzA.0NLO3w6XZ8hVQExSTuuhWqOOJSSq
QVAPAY_APP_UUID=9d17b1cf-e57f-4a09-91e7-756e20b92142
QVAPAY_APP_SECRET=EQeoVvshL7wGXMpm3F61ffDwEJL1ghAi6ZdOPOE5OdSDREUXIQ
```

### Despliegue
1. Conecta este repositorio a Railway.app
2. Railway construirá automáticamente la imagen Docker
3. La API estará disponible en la URL proporcionada por Railway

## 🛠️ Desarrollo Local

### Prerrequisitos
- .NET 9.0 SDK
- Docker (opcional)

### Ejecución
```bash
# Usando .NET directamente
dotnet run --project KaizenekaApi/KaizenekaApi.csproj

# Usando Docker
docker-compose up --build
```

### Documentación API
Una vez ejecutándose, accede a:
- Swagger UI: `http://localhost:5000/swagger`
- Health Check: `http://localhost:5000/`

## 📋 Características

- ✅ Autenticación JWT
- ✅ Integración con QvaPay
- ✅ Documentación OpenAPI/Swagger
- ✅ Logging con Serilog
- ✅ Contenedor Docker
- ✅ Despliegue automático en Railway

## 🔧 Tecnologías

- **ASP.NET Core 9.0**
- **Entity Framework Core**
- **JWT Authentication**
- **Serilog**
- **Docker**
- **Railway.app**