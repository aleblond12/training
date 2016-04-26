# Démo 2

Démo poursuivant la [démo 1](../demo1) en montrant comment placer le contenu que l'on souhaite dans le conteneur grâce à l'instruction **VOLUME**.

## Image et Dockerfile :
Construire l'image depuis le Dockerfile
```
docker build -t docker-intro/nginx-b .
```

## Conteneur
Lancer un conteneur depuis l'image créée :
```
docker run --name nginx-b -d -p 8081:80 docker-intro/nginx-b
```

