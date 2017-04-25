dotnetapp-selfcontained Sample
==============================

This sample builds 2 docker images containing the same application. The first is a self contained dotnetcore app.  The second, a dotnet core app requiring a runtime.

| Image Name              | Size(MB) | Base Image                          | Size(MB) | Delta(MB) |
|-------------------------|---------:|-------------------------------------|---------:|----------:|
| dotnetapp-selfcontained |  1006.76 | microsoft/nanoserver                |   961.02 |     45.74 |
| dotnetapp               |  1064.44 | microsoft/dotnet:runtime-nanoserver |  1064.31 |      0.13 |


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
dotnet restore -r win10-x64
dotnet publish -r win10-x64 -c Release -o out
out\dotnetapp.exe
```

Follow these steps to run this sample in a  Windows container:

```console
build.cmd
docker run dotnetapp-selfcontained Hello .NET Core from Docker

build.runtime.cmd
docker run dotnetapp Hello .NET Core from Docker
```
