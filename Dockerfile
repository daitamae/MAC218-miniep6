FROM caddy:latest
WORKDIR /usr/src/pages
# Antes da segunda tarefa, a linha abaixo seria necessária para copiar os arquivos html para o container.
# Com a segunda tarefa e a criação do volume, a linha abaixo se torna desnecessária, uma vez que o vínculo
# criado entre o diretório local e o diretório do container já realiza essa cópia dos arquivos
# COPY /src/*.html /usr/src/pages
COPY Caddyfile /etc/caddy/Caddyfile