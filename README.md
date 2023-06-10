Budowanie:
docker build -f Dockerfile_lab8 -t lab8docker .

Uruchomienie kontenera:
docker run -dt --name limit512 --memory=512m --mount source=RemoteVol,target=/logi lab8docker /bin/sh

Sprawdzenie wolumena:
docker inspect limit512 | jq ".[].Mounts"

Sprawdzenie ograniczenia pamieci:
docker stats limit512

Sprawdzenie zawartosci info.log:
docker exec limit512 cat /logi/info.log

