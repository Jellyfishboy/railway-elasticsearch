# Elasticsearch for railway.app

<!---
Deploy Elasticsearch on railway with one click.

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.app/template/anURAt?referralCode=2_sIT9)
-->

## ✨ Features

* Elasticsearch with automated setup
* Kibana
* Password Authentication (Set username & password in environment variables)

## 🐍 How to Deploy

1. Click Deploy on Railway and setup your credentials in the environment variables

```bash
ELK_VERSION=8.3.3
PORT=9200
```

2. Wait for Build & Deployment to Finish
3. Open the custom URL an enter your credentials

## 👩‍💻 How to Use

1. When you configure your Elasticsearch connection, use your custom URL as the host.
2. Use the token in the environment variables to authenticate
3. Setup bucket name and organization name in the environment variables
4. Use Elasticsearch version 2.0 or above

## 🐳  Local Development

```bash
docker compose build
docker compose up -d
```

Connect to http://localhost:9200 use setup username & password from docker-compose file to login to elk.
