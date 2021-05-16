# Basico de Docker com NodeJS

## Comandos

<p>
Comandos basicos para gerar um container Docker com Dockerfile e docker-compose.yml
<br>
OBS: Verificar também as instruções nos arquivos Dockerfile, dockercompose.yml e .dockerignore
</p>

- Gerando o container com base no Dockerfile
- hiagolf/dockernode: Nome do container
- . (Ponto): Local da Dockerfile (Diretório atual)

  > docker build -t hiagolf/dockernode .

- Colocar o container no ar
  > docker run -p 3000:3000 -d hiagolf/dockernode

OU

- Subir o container com docker-compose
- O arquivo docker-compose deve estar presente no diretório
  > docker-compose up
