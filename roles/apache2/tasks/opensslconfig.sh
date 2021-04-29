a2enmod ssl
a2ensite soufiane
service apache2 reload
apt-get install openssl
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -sha256 -out /etc/apache2/server.crt -keyout /etc/apache2/server.key -subj "/C=FR/ST=SUD/L=Avignon/O=AJC Security/OU=IT Department/CN=example.com" 
chmod 440 /etc/apache2/server.crt
a2enmod ssl
a2ensite soufiane
service apache2 reload
