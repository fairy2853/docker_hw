to build an image you need to write

sudo docker build -t netcat .

------------------------------------------
to create network write

sudo docker network create --driver bridge --name mynet

----------------------------------------
to run containers run

sudo docker container run -d --network mynet --name server -v $(pwd):/app/scripts netcat 

sudo docker container run -d --network mynet --name client -v $(pwd):/app/scripts netcat 

-------------------------------------------
to see if they conacted you can run 

sudo docker network inspect mynet  and see that we have theese containers in out network


--------------------------------------------------------
to check if they are see ecah other you need to run 

sudo docker exec -it server sh

then type 
sh server.sh

then open another terminal and type 

sudo docker exec -it server sh

then type 
sh client.sh

and then you can see in our current directory that 2 files appeard text.txt and recieved.txt 


