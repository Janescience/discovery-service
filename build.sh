mvn clean package
docker build -t discovery-service .
docker rmi $(docker images -qa -f 'dangling=true')
docker rm -f discovery-service
docker run -d --name discovery-service -p 9001:9001 discovery-service


docker buildx build --platform linux/amd64 -t discovery-service . 
docker tag discovery-service:latest janescience/discovery-service:latest