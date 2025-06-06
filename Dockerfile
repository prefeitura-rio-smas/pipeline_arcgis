# Imagem base enxuta
FROM python:3.11-slim

# Diretório de trabalho
WORKDIR /app

# Dependências
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Código + script de entrada
COPY . .

# garante que o profile seja incluído
COPY queries/profiles.yml /app/queries/profiles.yml

ENV DBT_PROFILES_DIR=/app/queries
COPY entrypoint.sh .
RUN chmod +x /app/entrypoint.sh

# Container roda o loop horário
ENTRYPOINT ["./entrypoint.sh"]
