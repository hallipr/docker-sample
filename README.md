dotnetapp-selfcontained Sample
==============================

The dotnetapp-selfcontained sample demonstrates how you can build and run the dotnetapp sample as a [self-contained .NET Core application](https://docs.microsoft.com/en-us/dotnet/articles/core/deploying/) that relies only on an operating system image (plus dependencies). It's a good option for creating a Docker image for production.

The instructions assume that you already have [.NET Core 1.0](https://www.microsoft.com/net/download/core#/sdk) and [Git](https://git-scm.com/downloads) and [Docker](https://www.docker.com/products/docker) clients installed. They also assume you already know how to target Linux or Windows containers. Do try both image types. You need the latest Windows 10 or Windows Server 2016 to use [Windows containers](http://aka.ms/windowscontainers).

Instructions
------------

First, prepare your environment by cloning the repository and navigating to the sample:

```console
git clone https://github.com/hallipr/docker-sample
cd docker-sample
```

Follow these steps to run the sample locally:

```console
cd app
dotnet restore
dotnet run Hello .NET Core from Docker
```

Follow these steps to build and run the sample locally as a self-contained app on Windows:

```console
cd app
dotnet restore
dotnet publish -c Release -o out -r win10-x64
out\dotnetapp.exe
```

Follow these steps to run this sample in a  Windows container:

```console
build.cmd
docker run dotnetapp-selfcontained Hello .NET Core from Docker
```
