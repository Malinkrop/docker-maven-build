### EJERCICIO DOCKER DIPLOMADO DEVOPS 2022-2023

## EJECUCION MEDIANTE

docker container run -it --rm -d -p 8081:8081 malinkrop/docker-maven-build

## VERIFICACION REST

http://localhost:8081/rest/mscovid/test?masg=testing

http://localhost:8081/rest/mscovid/estadoMundial

http://localhost:8081/rest/mscovid/estadoPais?pais=chile
