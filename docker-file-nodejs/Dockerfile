#! Se puede cambiar por otra version de node que se necesite
FROM node:12

#! El directorio de trabajo donde levantara la App
WORKDIR /usr/src/app

#! Se copia la 'receta' de los paquetes que debe contener el proyecto
COPY package*.json ./

#! Se usa para instalar todos los paquetes segundo el package.json
RUN npm install

#! Se copia el proyecto que se pondra en produccion
COPY ./dist .

#! Se configuran los puertos
EXPOSE 8080 3200

CMD ["node", "index.js"]