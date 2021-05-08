PWD=$(pwd)
docker run -ti --volume "${PWD}/app:/app" --workdir "/app" -u "${uid}:${gid}" composer "$@"
