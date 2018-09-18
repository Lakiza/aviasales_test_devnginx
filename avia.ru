server {
	listen 80;
	server_name avia.ru;
	
	location / {
		proxy_pass http://localhost:3000;
	}
	location /api {
		rewrite /api/(.*) /$1 break;
		proxy_pass http://localhost:5000;
	}
}
