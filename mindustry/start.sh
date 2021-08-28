#! /bin/bash
docker rm mindustry
docker run -p 6567:6567/tcp -p 6567:6567/udp --name mindustry --interactive --tty -v $(pwd)/config:/config mindustry
