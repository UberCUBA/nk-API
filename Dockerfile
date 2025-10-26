# Use the official .NET 9 SDK image to build and publish the app
FROM mcr.microsoft.com/dotnet/sdk:9.0 AS build
WORKDIR /src

# Copy the project file and restore dependencies
COPY ["KaizenekaApi/KaizenekaApi.csproj", "KaizenekaApi.csproj"]
RUN dotnet restore "KaizenekaApi.csproj"

# Copy the rest of the source code
COPY . .

# Publish the application (this handles build + publish in one step)
RUN dotnet publish "KaizenekaApi.csproj" -c Release -o /app/publish --no-restore /p:UseAppHost=false

# Use the official .NET 9 runtime image to run the app
FROM mcr.microsoft.com/dotnet/aspnet:9.0 AS final
WORKDIR /app

# Copy the published app
COPY --from=build /app/publish .

# Expose the port the app runs on
EXPOSE 8080

# Set the entry point
ENTRYPOINT ["dotnet", "KaizenekaApi.dll"]