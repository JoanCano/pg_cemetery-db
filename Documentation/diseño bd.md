#Como diseñar nuestra base de datos

El diseño de BD implica definir una estructura en la que se tiene que tener en cuenta:

- El tipo de datos que van a almacenarse (su naturaleza). 
- El modelo elegido de BD, además de algoritmos y procesos que vayan a emplearse. 

Siguiendo una serie de fases en el desarrollo de BD, tendríamos:

1.     Diseño lógico: se entiende como un diseño conceptual independiente de un[SGBD](https://es.wikipedia.org/wiki/Sistema_de_Gesti%C3%B3n_de_Bases_de_Datos), que modeliza el contenido de nuestra BD.

Una de las metodologías para desarrollar un modelo conceptual es el modelo Entidad-Relación (E-R), donde una entidad es un objeto/concepto del mundo real y una relación es una dependencia existente entre entidades.

Pero el modelo E-R a veces presenta limitaciones semánticas y no es suficiente para expresar con detalle la estructura de algunos tipos de información, de aquí que surgiese el modelo E-R extendido. Hay que tener este detalle en cuenta por si se va a utilizar BD espaciales como en este caso, debido a que aunque las BD relacionales sean las más extendidas, las orientadas a objetos resultan más ventajosas para el manejo de datos complejos, grupo en el que se incluyen las geometrías que utilizamos en un SIG para recoger la componente espacial de un datos espacial.

Por tanto las[BD Objeto-Relacionales](http://informatica.uv.es/iiguia/DBD/Teoria/capitulo_4.pdf) (ORDB) capturan la riqueza semántica del modelo conceptual de la orientación a objetos y la sencillez de la implementación del modelo relacional.

Volviendo al diseño de nuestra BD, dadas nuestras anteriores entidades nuestro modelo de BD quedaría tal que así:

[Modelo bd](https://github.com/JoanCano/pg_cemetery-db/Documentation/modelo.png)

Se puede apreciar que se han relacionado las entidades. Ya que es necesario definir estas relaciones entre las distintas tablas. Una tabla es pues el eje central del modelo relacional.

Una vez se tiene claro como va a funcionar la BD, un elemento fundamental para su aprovechamiento son los SGBD.

2.     Diseño físico: se adapta el diseño conceptual al SGBD 

Los SGBD son un elemento intermedio entre los datos y programas que los utilizan. Tienen unas u otras características en función del modelo de BD subyacente.

[PostgreSQL](http://postgresql.org.es/) es un SGBD Objeto-Relacional que se distribuye bajo licencia BSD y con su código fuente libre. Es el SGBD de código abierto más potente del mercado, por lo que se ha elegido para operar con él en este proyecto, ya que además ofrece mucha más características que lo hacen apropiado.

A la hora de implementar nuestro modelo en la BD nos percatamos de que ha de optimizarse para adaptarse al SGBD, para ello creamos el siguiente diagrama E-R.

[Diagrama E-R](https://github.com/JoanCano/pg_cemetery-db/Documentation/cemetery.png)

Si nos fijamos, al revisarlo nos ha hecho falta normalizar nuestro modelo, para ver si se podía reducir u optimizar por problemas tales como la redundancia, que ocurre cuando se abarrotan demasiados datos en una sola relación. Como nuestras tablas tumba y tramite albergan gran cantidad de información y repetirse, pasaremos a crear unas tablas de carácter auxiliar para optimizar nuestra BD.

Se han creado dominios en las 2 tablas antes mencionadas para evitar errores en la introducción de nuevos datos o su posterior edición.

Un dominio es un tipo de datos con restricciones opcionales y es único. Es útil utilizar dominios para poner una restricción común en un campo. El campo con la restricción puede y es más efectivo que se repita en otras tablas.
