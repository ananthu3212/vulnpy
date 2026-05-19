FROM python:3.9-slim
RUN apt-get update && apt-get install -y \
    build-essential libxml2-dev libxslt-dev \
    && apt-get clean
WORKDIR /vulnpy
COPY . .
RUN pip install -e ".[flask]"
EXPOSE 3010