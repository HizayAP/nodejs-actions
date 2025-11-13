# Nodejs CI + Docker template


Pasos para usar esta plantilla:


1. Crear un nuevo repositorio en GitHub y subir los archivos.
2. En Docker Hub crea un repositorio público llamado `nodejs-ci-docker-template` dentro de tu usuario.
3. En GitHub > Settings > Secrets and variables > Actions añade:
- `DOCKERHUB_USERNAME` = tu usuario de Docker Hub
- `DOCKERHUB_TOKEN` = password o access token (recomendado usar token)
4. Haz push a la rama `main`.
5. Ve a la pestaña **Actions** del repo; verás el workflow `CI` ejecutándose. Si todo va bien, el job `Install & Test` debe completar con éxito y luego `Build and push` subirá la imagen.


### Comandos locales (testing rápido)


```bash
# construir imagen localmente
docker build -t tuusuario/nodejs-ci-docker-template:local .
# correr
docker run -p 3000:3000 tuusuario/nodejs-ci-docker-template:local
# probar
curl http://localhost:3000