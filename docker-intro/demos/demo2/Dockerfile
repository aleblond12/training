FROM debian:8.0

# Installation de nginx
RUN apt-get update && apt-get install -y nginx

# Redirection des access et erreurs (permet a docker logs de recuperer ces flux)
RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log

COPY html /var/www/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
