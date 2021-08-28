#! /bin/bash
docker rm ubuntu-vnc
docker run -p 5900:5900 --name ubuntu-vnc -d ubuntu-vnc
