# Imagem docker a ser utilizado
FROM node:alpine

# Diretório para trabalhar dentro do container
WORKDIR /usr/app

# Copiar arquivos para dentro de ./ no container
# Todos os arquivos que começam com package e terminam com .json
COPY package*.json ./

# Rodar comando
RUN npm install

# Copiar o resto dos arquivos Para dentro do container
# Serão levado em conta o .dockerignore
COPY . .

# Porta exposta do container
EXPOSE 3000

# Qual o comando necessário para a aplicação se iniciar
# Normalmente o Dockerfile deve ter apenas 1 CMD
CMD ["npm", "start"]