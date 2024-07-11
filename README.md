# Plantillas y modelos de documentos en LaTeX para la Universidad de Granada

Plantillas y modelos de documentos en LaTeX que respeten los criterios de uso de la imagen corporativa de la Universidad de Granada

## Objetivo

El objetivo de este repositorio es la creación de una clases de LaTeX para la creación de documentos (certificados, cartas, exámenes,...) que respeten el [manual de identidad visual corporativa](https://secretariageneral.ugr.es/sites/webugr/secretariageneral/public/inline-files/Manual_IVC_UGR_1.pdf) de la Universidad de Granada. Para ello se ha hecho uso tanto de los [elementos de identidad visual corporativa](https://secretariageneral.ugr.es/informacion/servicios/identidad-visual/descarga) como del [repositorio de documentos administrativos](https://institucional.ugr.es/areas/coordinacion-y-proyectos/proyectos/homogeneizacion/documentos-administrativos/repositorio) de la Universidad de Granada.

## ¿Qué es LaTeX y qué es una *clase de documento*?

Ver [Instalación y uso](#instalacion-y-uso)

## Clases y opciones
Actualmente se han creado tres clases: `UGR-generico.cls`, `UGR-carta.cls` y `UGR-examen.cls`. Para seleccionar dicha clase en nuestro documento LaTeX debemos usar el comando `\documentclass` al inicio del documento, p.e.:
```tex
\documentclass[monocromo, noDatosPie]{UGR-generico}
```
donde hemos cargado la clase `UGR-generico` con las opciones `monocromo` y `noDatosPie`. **Es importante respetar las mayúsculas y minúsculas al seleccionar una clase o una opción**

### Opciones comunes
Todas las clases creadas comparten las siguientes opciones:
- `monocromo`: El logotipo y la marca de agua se imprimen en blanco y negro.
- `corporativo`: El logotipo y la marca de agua se imprimen en el color rojo corporativo.
- `marcaagua`: Imprime una marca de agua con el escudo de la Universidad de Granada en la parte inferior derecha de la página. El color de dicha marca de agua depende de las anteriores opciones.

Si no se selecciona ninguna de dichas opciones el logotipo (situado siempre en la parte superior izquierda de la página) se imprime en color y no se incluye la marca de agua.
### Opciones y variables específicas de cada clase

#### Clase `UGR-generico`
- `noDatosCabecera`: No imprime los datos del autor del documento en la parte superior derecha de la cabecera.
- `noDatosPie`: No imprime los datos del autor del documento en el pie de página.

#### Clase `UGR-carta`
#### Clase `UGR-examen`

### Ejemplos

### Adaptación de la clase `UGR-generico` para diferentes propósitos.

## Instalación y uso

### Descargar y uso

### Instalación de las clases y logos el el arbol local de TeX.

## Automatización y uso con `pandoc`

