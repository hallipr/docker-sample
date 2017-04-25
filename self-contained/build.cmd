@echo off

echo "build dotnetapp via Dockerfile.build"
docker build -t build-image -f Dockerfile.build .

echo "start build container"
docker create --name build-container build-image

echo "copy dotnetapp out of build container"
docker cp build-container:/app/out ./

echo "cleanup"
docker rm build-container
docker rmi build-image

echo "cleanup"
docker build -t dotnetapp-selfcontained .