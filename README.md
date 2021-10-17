# BackendRoom

Welcome to the BackendRoom. This is a boilerplate setup for MySQL, Python FastAPI and Nginx. It supports HTTPS and uses docker-compose to get your backend up and going in seconds. Built for usage on cloud providers, but can be easily adapted with some extra configuration steps for a on premise machine.

## Prerequisites
- python
- pip
- docker
    - [Post Installation](https://docs.docker.com/engine/install/linux-postinstall/)
- docker-compose
- mysql or mysql-client
    - [Pre Installation](https://pypi.org/project/mysqlclient/)
- connect external IP to a DNS for let's encrypt

## Usage
1. Git clone latest from repo
2. Run `docker-compose up --build -d` to get the server up for challenge
3. Run `chmod +x init-letsencrypt.sh`
4. Run `sudo ./init-letsencrypt.sh `
5. Run `docker-compose up --build -d` to build further changes
