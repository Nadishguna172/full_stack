sudo apt-get install nginx
sudo apt-get install apache2-utils

docker build -t flaskapp5 .
docker run -d -p 5001:5000 flaskapp5
docker run -d -p 5002:5000 flaskapp5
docker run -d -p 5003:5000 flaskapp5

ab -n 1000 -c 100 http://localhost:5001/

code /etc/nginx/nginx.conf
sudo chmod o+w /etc/nginx/nginx.conf
sudo rm /etc/nginx/sites-enabled/default
sudo nginx -t
sudo systemctl restart nginx
curl http://localhost/
ab -n 1000 -c 100 http://localhost/
docker logs containerID

When a text editor or vsc opens, type this:

http {
upstream flaskapp {
server localhost:5001;
server localhost:5002;
server localhost:5003;
}
server {
listen 80;
location / {
proxy_pass http://flaskapp;
}
}
}
