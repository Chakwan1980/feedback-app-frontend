FROM node:22-bookworm-slim AS buildstage

WORKDIR /usr/src/app

COPY package*.json .

RUN npm install

COPY . .

RUN npm run build

FROM nginx:1.27-bookworm

COPY --from=buildstage /usr/src/app/build /usr/share/nginx/html

# Copia tu archivo de configuración de Nginx
COPY nginx_default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]


# Definition: A Dockerfile:
# is a text file that contains the instructions for building a Docker image. Essentially, 
# it defines the steps required to package an application along with all its
# dependencies and configurations into an image that can then be run in a container.