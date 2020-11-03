# pushprox-dockerfile
Dockerfile for building within a docker-compose file.

#### Use the following as a docker-compose entry
```
version: '3.1'
services:
  proxy:
    build: "git://github.com/ejlevin1/pushprox-dockerfile"
    restart: always
    command: ["./pushprox-proxy", "--web.listen-address=\":8080\""]
```