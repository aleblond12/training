# Démo 3

Démo poursuivant la [démo 2](https://github.com/aleblond12/training/docker-intro/demo2) en montrant comment partager un répertoire entre l'hôte et le conteneur.

## Image et Dockerfile :
Construire l'image depuis le Dockerfile
```
docker build -t docker-intro/nginx-c .
```

## Conteneur
Lancer un conteneur depuis l'image créée (en remplaçant [/ABSOLUTE/PATH/HOTE]) :
```
docker run --name nginx-c -d -p 8082:80 -v [/ABSOLUTE/PATH/HOTE]:/var/www/html docker-intro/nginx-c
```
