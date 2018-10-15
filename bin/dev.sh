HOST_PORT=8787
IMAGE=sinonkt/docker-r-slurm-sim-tools:latest
rserver_container_id=$(docker run -t -v $(pwd):/home/dev -p $HOST_PORT:8787 -d $IMAGE)

# Change password of user `dev` is recommended. for every time spawn dev server
# Executed this while being root
# > echo "dev:your_new_passwd" | chpasswd
docker exec -it $rserver_container_id bash