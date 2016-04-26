# Démo 4
Petite introduction à **Docker Compose** pour montrer que l'on peut monter toute une architecture très simplement.

La démo se compose :
- de deux conteneurs lançant la même application Python
- d'un conteneur avec un serveur Hipache servant de load balancer devant les deux applications Python
- d'un conteneur Redis servant de base de données


## Lancer l'architectre
Lancer les conteneurs :
```
docker-compose up -d
```

Configurer le serveur Hipache (en remplaçant [YOUR IP] par votre IP publique) :
```
sh hipache-init.sh [YOUR IP]
```

## Visualiser le load balancing
Lancer les logs sur les deux conteneurs Python :
```
docker logs -f demo4_app1_1
docker logs -f demo4_app2_1
```
Appeler l'adresse [http://localhost:9090](http://localhost:9090) : les appels sont répartis sur les deux conteneurs
