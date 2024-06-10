FROM ubuntu:20.04
WORKDIR /app

RUN apt update && apt install wget -y
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

RUN nvm install 20

COPY . .

CMD node index.js