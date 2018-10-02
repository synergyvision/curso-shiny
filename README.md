curso-shiny
===========

Esta es una colección de ejemplos de programación con la librería `shiny` en R para 
dar un curso completo sobre la creación de aplicaciones interactivas y reactivas.

Para correr alguno de los ejemplos instale el paquete `shiny` en R y utilice la función
 `runGithub()`. Por ejemplo, para correr el ejemplo `001`:

```R
if (!require('shiny')) install.packages("shiny")
shiny::runGitHub("curso-shiny", "synergyvision", subdir = "practica/001")
```

Por otra parte puede descargar el repositorio (*clone*) y correr la función:
`shiny::runApp("practica/001")`.

