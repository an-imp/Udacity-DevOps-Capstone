FROM nginx

# use Nginx to serve simple html site
COPY index.html /usr/share/nginx/html