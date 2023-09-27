FROM  debian:bookworm

RUN apt -y update && apt install -y nginx && apt install openssl -y 
 
RUN mkdir /etc/nginx/certs
RUN openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048  -keyout /etc/nginx/certs/keyprivate.key -out /etc/nginx/certs/CSR.csr  -subj "/C=US/ST=New York/L=New York City/O=Example Company/CN=asekkak.42.fr.com"
RUN unlink /etc/nginx/sites-enabled/default
COPY test.conf /etc/nginx/conf.d/test.conf
 
 
COPY  file.sh /home/file.sh


 
CMD ["nginx", "-g", "daemon off;"]

 