FROM microsoft/nanoserver
WORKDIR /app
EXPOSE 5000
ENV ASPNETCORE_ENVIRONMENT Development

COPY out .
ENTRYPOINT ["webapplication.exe"]