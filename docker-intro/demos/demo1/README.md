# Démo 1
Démo montrant comment simplement créer, lancer et jouer avec un conteneur.

## Image et Dockerfile :
Construire l'image depuis le Dockerfile
```
docker build -t docker-intro/nginx-a .
docker images
```

## Conteneur
Lancer un conteneur depuis l'image créée :
```
docker run --name nginx-a -d -p 8080:80 docker-intro/nginx-a
```

S'amuser avec quelques commandes :
```
docker ps
docker logs nginx-a
docker exec -it nginx-a bash
```

Arrêter et supprimer le conteneur :
```
docker stop nginx-a
docker rm nginx-a
```

## Registry
Ca marche bien, on push!
Créer un registry privé :
```
docker run -d -p 5000:5000 registry
```

Envoyer une image sur le registry :
```
docker tag docker-intro/nginx-a localhost:5000/nginx-a
docker push localhost:5000/nginx-a
```

Récupérer une image :
```
docker pull localhost:5000/nginx-a
```