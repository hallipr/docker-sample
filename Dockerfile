FROM microsoft/nanoserver:10.0.14393.1066
WORKDIR /app
EXPOSE 80

COPY out .
ENTRYPOINT ["webapplication.exe"]