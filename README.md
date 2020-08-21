# HyperloopUPV
___
Para poder visualizar la telemetría es necesario el ***middleware*** + ***interfaz***
Cualquier problema que tengaís para instalarlo preguntarme.
___

### Interfaz gráfica (GUI)
La GUI se está desarrollando constantemente, aquí tendreís la última version.
- Windows: [https://s3.amazonaws.com/hyperloopupv/GUI/bundle-win.zip](https://s3.amazonaws.com/hyperloopupv/GUI/bundle-win.zip)
- Mac: [https://s3.amazonaws.com/hyperloopupv/GUI/bundle-mac.zip](https://s3.amazonaws.com/hyperloopupv/GUI/bundle-mac.zip)
- Linux: [https://s3.amazonaws.com/hyperloopupv/GUI/bundle-linux.zip](https://s3.amazonaws.com/hyperloopupv/GUI/bundle-linux.zip)

Nos podeís decir sugerencias, ideas, fallos...
___

### Middleware
1. Instalar docker
Link de descarga: [https://hub.docker.com/search/?type=edition&offering=community](https://hub.docker.com/search/?type=edition&offering=community)
En el caso de Windows, si no teneís la versión Professional o Enterprise 64-bit, os teneís que descargar [Docker Toolbox](https://docs.docker.com/toolbox/overview/)

2. Construir imagen
Abriros un shell y situados en la carpeta(donde se encuentra el archivo .yml), ejecutar:
`docker-compose build`

3. Crear contenedor
`docker-compose up`
Para cerrarlo podeis escapar del terminal con `Ctrl + c` y después `docker-compose down`

El tercer paso es el único que teneís que hacer cada vez para ejecutar el middleware. El primer y segundo paso solo lo hareís una vez, para instalarlo todo.
