# w4-ETL-Project

![poke](https://github.com/Edupastore/w4-ETL-Project/blob/main/images/pokemaniac.jpg)


## ⛓️ Índice de contenidos

1.[✍️ Descripción del proyecto](#descripción)\
2.[🤓 Extracción de datos](#extracción)\
3.[🗂️ Transformación](#transformación)\
4.[🧬 Carga en base de datos](#carga)\
5.[📊 Objetivo](#objetivo)

## ✍️ Descripción

En este proyecto, hemos llevado a cabo una ETL; es decir, en primer lugar, hemos extraido unos datos (Extraction), a continuación los hemos transfromado (Transformation) y, por último, los hemos cargado o inconrporado a una base de datos (Loading).

La temática escogida ha sido Pokémon, concretamente hemos recabado datos sobre todos los Pokémon conocidos hasta la fecha (1.008) y hemos estandarizado la información para que resultase más accesible.

El proceso de manera detallada se expone a continuación.

<a name="extracción"/>
 
## 🤓 Extracción de datos

En primer lugar, cabe mencionar que para la extracción de los datos sobre los Pokémon teníamos un par de limitaciones o reglas:
<br>
<br>
    - Los datos extraídos debían ser provenientes de al menos tres fuentes distintas.
    - Los métodos de extracción empleados debían ser dos como mínimo.
<br>
<br>
Sabiendo esto, las tres fuentes de información que hemos empleado para elaborar este proyecto, son las siguientes:

<details>
<summary>DATASET DE LOS PRIMEROS 898 POKÉMON (gen. I a VIII)</summary>
<br>

![pokemain](https://github.com/Edupastore/w4-ETL-Project/blob/main/images/pokemain.jpg)
<br>
<br>
El enlace al mencionado dataset es el siguiente: https://data.world/data-society/pokemon-with-stats
<br>
<br>
De este archivo csv hemos extraído valiosa información sobre los Pokémon que van desde la primera generación a la octava (correspondientes a las regiones de Kanto, Johto, Hoenn, Sinnoh, Teselia, Kalos, Alola y Galar).
<br>
<br>
EL fichero nos ha brindado la siguiente información: número de la Pokédex nacional, nombre del Pokémon, tipo 1, tipo 2, suma del total de las estadísticas, nivel de salud, ataque, defensa, ataque especial, defensa especial, velocidad, generación y si es legendario o no el Pokémon.
</details>

<details>
<summary>WEB SCRAPING DEL PORTAL SEREBII.NET</summary>
<br>
El enlace a la mencionada Web es el siguiente: https://www.serebii.net/pokemon/all.shtml
<br>
<br>
De esta página hemos tratado de extraer la misma información que arriba, pero de los Pokémon correspondientes a la novena generación.
<br>
<br>
A través del web-scraping y, mediante Selenium, hemos extraído parte de esa información sobre Pokémon de las regiones de Hisui (octava generación) y de Paldea (novena generación).
<br>
<br>
Este portal nos ha brindado la siguiente información: número de la Pokédex nacional, nombre del Pokémon, nivel de salud, ataque, defensa, ataque especial, defensa especial y velocidad.
</details>

<details>
<summary>WEB SCRAPING DEL PORTAL POKEMONDB.NET</summary>
<br>
El enlace a la mencionada página es el siguiente: https://pokemondb.net/pokedex/national#gen-9
<br>
<br>
En esta Web, hemos tratado de completar la información faltante sobre los Pokémon de Hisui y Paldea que mencionábamos en el epígrafe anterior.
<br>
<br>
Para ello, hemos vuelto a emplear Selenium y hemos extraído la información sobre los tipos de cada Pokémon. El resto de información faltante, la hemos calculado o la hemos rellenado.
</details>

<a name="transformación"/>

## 🗂️ Transformación

El proceso de transformación ha sido, sin duda, el más tedioso y largo. Para no extendernos mucho, dejaremos a continuación una serie de pinceladas, unas líneas generales, sobre lo que hemos hecho.
<br>
<br>
    - En primer lugar, hemos limpiado los datos del primer dataset, llevando a cabo la eliminación de registros con el mismo número de Pokémon (eran distintas versiones del mismo, no Pokémon completamente distintos), la homogeneización de los datos contenidos en cada columna, hemos cambiado el formato del número de la Pokédex (de 1, 2 , 3, etcétera hemos pasado a 0001, 0002, 0003, etcétera), hemos cambiando en "legendary" los booleanos True/False por "leg"/"notleg", en "type2" hemos rellenado con "Mono" los valores nulos (para indicar que son Pokémon monotipo) y, en definitiva, hemos comprobado de manera exhaustiva que todo concordase y tuviese coherencia.
<br>
<br>
    - En segundo lugar, hemos transformado también los datos obtenidos de los dos portales Web mencionados con anterioridad y los hemos "acondicionado" de tal manera que el producto final fuese una tabla de idénticas dimensiones, con idénticos nombres de columnas e idénticos tipos de datos que los del dataset anterior. Tras una serie de transformaciones, lo conseguimos.
<br>
<br>
    - En tercer lugar, hemos comprobado que los tipos de datos del primer dataset y del segundo fuesen iguales y hemos optimizado dichos tipos.
<br>
<br>
    - Por último, hemos concatenado ambas tablas para conformar un registro único con datos sobre todos los Pokémon existentes a fecha de hoy (13/02/2023).
<br>

<a name="carga"/>

## 🧬 Carga en base de datos
El último paso ha sido la incorporación de esta tabla maestra a una base de datos en SQL. Para ello, hemos creado en Workbench el esquema de la base de datos (configurando la tabla de Pokémon, con sus columnas y los tipos de datos de cada una de ellas).
<br>
<br>
Una vez hecho esto, hemos volcado los datos de nuestra tabla maestra en la base de datos que hemos llamado "pokemon". Con esta acción, hemos dado por concluída la elaboración del proyecto.
<br>

![eerd](https://github.com/Edupastore/w4-ETL-Project/blob/main/images/eerd.jpg)
<br>

<a name="objetivo"/>

## 📊 Objetivo
El objetivo que nos hemos marcado con este proyecto ha sido configurar una base de datos completa sobre todos los Pokémon existentes, para que nos pueda servir como herramienta de consulta (por ejemplo, cuando estemos jugando a cualquiera de los juegos principales de la franquicia).
<br>

![sqlpoke](https://github.com/Edupastore/w4-ETL-Project/blob/main/images/sqlpoke.jpg)
<br>
