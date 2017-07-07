#PASSO 1
  - Configurar a infra

#PASSO 2
  - Instalar o rails
    docker-compose run app gem install rails
    docker-compose run app rails new . -d mysql

#PASSO 3
  - Configurar o Banco
    ./config/database.yml

#PASSO 4
  - Gerar Controller/View
    docker-compose run app rails g controller Cars index

#PASSO 5
  - Passar informações da Controller para a View
    ./app/controllers/cars_controller.rb
    ./app/views/cars/index.html.erb
