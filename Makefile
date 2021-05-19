clear:
	docker container rm rtmp-server-1 
	docker image rm rtmp-server

build:
	docker build -t rtmp-server .

run:
	docker run -d --name rtmp-server-1 -p 80:80 -p 8080:8080 -p 1935:1935 rtmp-server

exec:
	docker exec -it rtmp-server-1 sh