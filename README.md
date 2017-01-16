#GoCD Docker Environment

This is a very simple docker compose focused goCD environemnt setup.
The docker-compose.yml file sets up a goCD Server and a goCD agent. 
The dockerfiles can be inspected within their appropraite folders.

goCD agent has a thin wrapper script which continually checks whether 
goCD Server's port accepting connections.

#Usage

```
git clone git@github.com:ldelossa/goCD_docker.git
cd /gocd/
docker-compose up
```

Now you should be able to connect to goCD on localhost:8153. 
If you'd like to change around the ports, simply change the docker-compose file. 
