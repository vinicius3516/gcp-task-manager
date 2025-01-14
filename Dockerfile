# Usar uma imagem oficial do Python
FROM python:3.9-slim

# Configurar o diretório de trabalho
WORKDIR /app

# Copiar os arquivos da aplicação para o contêiner
COPY . .

# Instalar as dependências
RUN pip install --no-cache-dir -r requirements.txt

# Expor a porta que o Flask usará (padrão 8080 para Cloud Run)
EXPOSE 8080

# Definir a variável de ambiente PORT
ENV PORT 8080

# Comando para rodar a aplicação
CMD ["python", "app.py"]
