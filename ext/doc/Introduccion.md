#Introducción

El siguiente proyecto surge en el año 2015-2016 durante la realización de prácticas externas en el ayuntamiento de [Sella](https://www.openstreetmap.org/search?query=sella%20alicante#map=17/38.60839/-0.27132), con el objetivo de investigar el diseño de una geodatabase para la gestión de cementerios. Este proyecto se realiza tanto en el municipio de Sella como con la colaboración del Laboratorio de Geomática de la UA, concretamente con la ayuda de [Benito Zaragozí](http://benito-zaragozi.com/about/).

#Planteamiento del proyecto

El municipio de Sella planteó unos objetivos basados en sus necesidades más urgentes, profundizando en la necesidad de un nuevo procedimiento para gestionar su cementerio municipal por problemas como:

-     Obsolescencia en los trámites actuales 
-     Desfase entre la información registrada y la real 
De manera que se decide dar solución a estas carencias por medio de una geodatabase, a partir de la cual poder localizar difuntos, obtener información de ellos, gestionar cambios, trámites, etc.

#¿Qué es una base de datos?

Las bases de datos (BD) tienen una aplicación en la práctica totalidad de campos para para un propósito general, la necesidad de gestionar datos. De manera que las BD son un conjunto de datos estructurados y almacenados sistemáticamente para poder utilizar cualquier tipo de dato.

En una organización como un ayuntamiento puede ser que necesiten gestionar sus datos acudiendo a un repositorio único de datos. Un ejemplo sería la gestión de su cementerio el cual ya tiene y genera unos datos específicos que pueden tener interés tanto para quien los gestiona como para el propio usuario, siendo su nexo de unión un difunto/tumba en este caso. Lo relevante de este nexo es la información útil para cada usuario, puesto que probablemente no requieran la misma.

Hay distintos tipos de BD, como las relacionales, que son las que más se encuentran en ámbitos [SIG](https://www.ign.es/ign/layoutIn/actividadesSistemaInfoGeografica.do). Los datos se organizan en tablas y cada tabla hace referencia a una entidad. 

Para nuestro cementerio tendríamos las siguientes entidades:

- Difunto: persona que ha fallecido 
- Tumba: lugar donde se deposita al difunto 
- Familiar/es: persona/s relacionadas con el difunto 
- Administración: entidad local que se hace cargo de trámites entre el difunto y los familiares. 
- Trámites: son los procesos que se han de llevar a cabo entre la administración y los familiares.
