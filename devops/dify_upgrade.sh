cd dify
git checkout main
git pull origin main

cd docker
sed -i 's|\(- '${EXPOSE_NGINX_PORT:-5001}:\${NGINX_PORT:-80}'\)|- '${EXPOSE_NGINX_PORT:-8501}:\${NGINX_PORT:-80}'|' docker-compose.yaml
docker compose down
docker compose up -d

cd ../../
