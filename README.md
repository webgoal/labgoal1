#PASSO 1
  - Configurar a infra

#PASSO 2
  - Instalar o rails
    docker-compose run app gem install rails
    docker-compose run app rails new . -d mysql
