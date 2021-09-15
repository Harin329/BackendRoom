# BackendRoom

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
2. Run chmod +x init-letsencrypt.sh
3. Run sudo ./init-letsencrypt.sh 
4. Run docker-compose up --build -d