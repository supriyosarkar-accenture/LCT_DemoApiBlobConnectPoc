# Azure App Service → Logic App → Blob Storage POC

## Overview

This Proof of Concept demonstrates how to integrate an ASP.NET Core Web
API hosted on Azure App Service with an Azure Logic App. The Logic App
invokes the API, retrieves a JSON payload, and stores it in Azure Blob
Storage using a Managed Identity authenticated Blob Storage connector.

## Architecture

![Architecture diagram](docs/architecture.png)

## Azure Resources

-   Resource Group
-   App Service Plan (Windows)
-   Azure App Service (.NET 8)
-   Logic App (Consumption)
-   Storage Account
-   Blob Container (`api-output`)

## Flow

1.  ASP.NET Core API exposes `GET /api/hello`.
2.  Logic App runs on a Recurrence trigger.
3.  HTTP action calls the API.
4.  Blob Storage connector creates a timestamped JSON file.
5.  Blob is stored in `api-output`.

## Security

-   Logic App uses a System Assigned Managed Identity.
-   Managed Identity is assigned the **Storage Blob Data Contributor**
    role.

## Sample Response

``` json
{
  "application": "Hello API",
  "message": "Hello World",
  "timestamp": "2026-07-16T13:15:30Z"
}
```
