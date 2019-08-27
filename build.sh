#!/bin/sh

_name="python_php_app"
_tag="0.0.1"
_container=${_name}-${_tag}
_image=${_name}:${_tag}

# build and deploy to Docker
docker stop $_container
if [ $? -ne 0 ]; then
  echo "No ${_container} running"
else
  docker rm ${_container}
fi
docker rmi $_image;
if [ $? -ne 0 ]; then
  echo "No ${_image} found"
fi
docker build -f Dockerfile -t $_image .
_result=$?
if [ $_result -ne 0 ]; then
  echo "ERROR @ docker build"
  exit $_result
fi

# run!
docker run -d -p 8083:80 --name $_container $_image
_result=$?
if [ $_result -ne 0 ]; then
  echo "ERROR @ docker run"
  exit $_result
fi
