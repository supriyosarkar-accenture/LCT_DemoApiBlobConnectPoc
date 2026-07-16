# Setup Guide

## Prerequisites

-   Azure Subscription
-   .NET 8 SDK
-   VS Code + Azure App Service Extension
-   Azure CLI (optional)

## Azure Resources

1.  Create a Resource Group.
2.  Create an App Service Plan (Windows).
3.  Create an Azure App Service (.NET 8).
4.  Create a Storage Account.
5.  Create a private Blob Container named `api-output`.
6.  Create a Logic App (Consumption).

## API

-   Build locally.
-   Publish using: `dotnet publish -c Release`
-   Deploy the **publish** folder to Azure App Service.

## Managed Identity

1.  Enable System Assigned Identity on the Logic App.
2.  Assign **Storage Blob Data Contributor** on the Storage Account.

## Logic App Workflow

-   Trigger: Recurrence
-   Action 1: HTTP GET -\>
    https://`<app>`{=html}.azurewebsites.net/api/hello
-   Action 2: Create Blob (V2)
    -   Blob Name:
        `concat('HelloApi_',formatDateTime(utcNow(),'yyyyMMdd_HHmmss'),'.json')`
    -   Blob Content: HTTP Body

## Validation

Run the Logic App and verify a JSON file appears in the `api-output`
container.
