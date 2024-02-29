
# Imagenes Docker - fullstack - n5

Teniendo Docker con docker-compose instalado, se debe crear un folder para clonar el proyecto desde github.com, sugiero un folder con el mismo nombre del proyecto en git: "ProyectoN5-JohnSandoval", pero puede se cualquier nombre.

Posteriormente, se debe clonar el proyecto desde: 

https://github.com/MrJohnSandoval/ProyectoN5-JohnSandoval.git

A continuación se debe ejecutar el siguiente comando:

docker-compose -f docker-compose.yml up -d

Se descargaran e instalaran los contenedores del proyecto, incluso los del frontend y el backend.

https://github.com/MrJohnSandoval/ProyectoN5-JohnSandoval

**\kafka** = Intruciones para la creación del topic

**\kibana** = mapa del la estructura de la tabla permiso en elasticsearh

**\sqlserver** = archivo .sql para la creación de la base de datos

**docker-compose-base.yml** = Instalación de la infraestructura base, solamente.

**docker-compose-dev.yml** = Instalación del backend y el frontend

**docker-compose-kafka-zookeeper.yml** = Instalación de solo zookeeper

**docker-compose.yml** = Instala todo lo necesario, la infraestructura base + la instalación del backend y el frontend.







## Referencias:

Infraestructura base:
https://github.com/MrJohnSandoval/ProyectoN5-JohnSandoval

Backend:
https://github.com/MrJohnSandoval/BackendChallengeTechFullStackN5

Frontend:
https://github.com/MrJohnSandoval/frontendchallengetechfullstackn5



## Autor
John Sandoval
- [@MrJohnSandoval](https://www.github.com/MrJohnSandoval)
## Reconocimientos

 - [Construcción profesional de documentación tipo README](https://awesomeopensource.com/project/elangosundar/awesome-README-templates)
 - [READMEs asombrosos](https://github.com/matiassingers/awesome-readme)
 - [Como escribir un buen README](https://bulldogjob.com/news/449-how-to-write-a-good-readme-for-your-github-project)
