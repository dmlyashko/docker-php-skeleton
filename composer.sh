PWD=$(pwd)
docker run -ti --volume "${PWD}/app:/app" --workdir "/app" --user $(id -u):$(id -g) composer "$@"
