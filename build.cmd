@echo off

echo "build dotnetapp via Dockerfile.build"
docker build -t build-image -f Dockerfile.build .

echo "start build container"
docker create --name build-container build-image

echo "copy dotnetapp out of build container"
docker cp build-container:/app/out ./

echo "build image"
docker build -t dotnetapp-selfcontained .

echo "cleanup"
docker rm build-container
docker rmi build-image
rd out /S /Q