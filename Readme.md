# A1 — Vectores de datos económicos
### Módulo II · Semana 3 · **Actividad formativa — sin nota, entrega obligatoria**
#### Fundamentos de Programación para Análisis Económico · UdeC-EAN

**Tipo:** formativa. **Prepara la [T2 (S5, dplyr)](tarea_semana5.md).**
No lleva nota, pero debe entregarse: recibes retroalimentación escrita y en Canvas
la actividad debe estar entregada para avanzar en el módulo.
**Entrega:** script `.R` comentado, subido a tu repositorio de GitHub.

---

## Objetivo

Crear y manipular vectores con datos económicos, seleccionar subconjuntos por
posición y por condición, y calcular estadísticas descriptivas — todo documentado.

> Punto de partida: [esqueleto del laboratorio](../labs/semana3_lab_esqueleto.R)
> y el [cheatsheet de tipos](../materiales/cheatsheet_tipos_datos.md).

---

## Qué debes hacer

En un script `scripts/tarea_s3.R` con encabezado (autor, fecha, qué hace):

1. **Crea al menos 3 vectores** con datos económicos coherentes entre sí
   (ej: `salario`, `educ` y `anios` para un grupo de trabajadores). Verifica su
   `class()` y su `length()`.
2. **Selecciona por posición:** extrae elementos específicos (ej: el primero, los
   tres últimos, todos menos uno).
3. **Selecciona por condición:** filtra con una condición lógica (ej: salarios
   sobre cierto umbral) y **cuenta** cuántos y qué **proporción** la cumplen
   (`sum()` / `mean()`).
4. **Operación vectorizada:** calcula una variable derivada sobre todo el vector
   (ej: salario real = salario / ipc).
5. **Estadísticas:** calcula `mean`, `median`, `sd` y `quantile` de un vector, y
   **comenta** en una línea qué te dice cada una sobre los datos.
6. **Comenta el porqué**, no el qué: cada bloque con un comentario que explique la
   decisión, no que repita el código.

---

## Qué se evalúa

- [ ] Vectores creados correctamente, con tipos verificados.
- [ ] Subsetting por posición y por condición funcionando.
- [ ] Uso del patrón `sum()`/`mean()` de una condición.
- [ ] Al menos una operación vectorizada (variable derivada).
- [ ] Estadísticas descriptivas con interpretación breve.
- [ ] Comentarios que explican el porqué; nombres descriptivos.
- [ ] Subido a GitHub con un commit de mensaje claro.

---

## Entrega

Pega el **enlace al script** (o al repositorio) en Canvas.
Recuerda: debes poder **explicar cada línea** de tu código.

# =============================================================================
# DECLARACIÓN DE AUTORÍA HUMANA Y USO DE TECNOLOGÍAS DIGITALES EMERGENTES
# A1 — Vectores de datos económicos · Módulo II, Semana 3
# Fundamentos de Programación para Análisis Económico · UdeC-EAN
# Autor: Cristóbal Sepúlveda · Fecha: 28-08-2026 

# HERRAMIENTA UTILIZADA
# Claude (Anthropic), en modo tutor, durante el desarrollo de esta actividad.

# PARA QUÉ LA USÉ
# 1. Depuración: le mostré los errores que me arrojaba la consola
#    ("unexpected '>' en ingreso[>", "unexpected symbol en salario esperado")
#    y me explicó la causa —que `>` necesita un operando a la izquierda y que R
#    no admite espacios en los nombres de objetos— sin darme la línea corregida.
#    La corrección la escribí yo.
# 2. Ayuda conceptual: me explicó el patrón sum()/mean() sobre una condición
#    lógica (TRUE = 1, FALSE = 0), la diferencia entre operar sobre un vector y
#    colapsarlo con mean(), y qué miden la desviación estándar y los cuantiles.
# 3. Revisión crítica: revisó mi script y detectó problemas que yo no había
#    visto —que mi variable derivada era un escalar y no un vector, que un
#    objeto seguía en el Environment sin estar en el script, y que el vector
#    `educacion` tenía un solo elemento.
# 4. Estructura de comentarios: me señaló que mis comentarios describían el
#    "qué" y no el "porqué", como pide la pauta.

# QUÉ HICE YO
# - Definí el tema, las variables y todos los valores de los vectores.
# - Escribí la totalidad del código de este script. No copié ninguna línea
#   generada por la IA; en el único caso en que recibí una estructura, fue un
#   esqueleto con espacios en blanco —ingreso[____], sum(____), mean(____)—
#   que completé yo a partir de una condición que ya había escrito.
# - Encontré por mi cuenta el error del espacio en el nombre "salario esperado".
# - Escribí todas las interpretaciones de los resultados estadísticos con mis
#   propias palabras, a partir de los números que obtuve al correr mi script.
# - Verifiqué la reproducibilidad reiniciando R y ejecutando el script completo.
# - Puedo explicar cada línea de este código y por qué está ahí.

# QUÉ NO HICE CON IA
# No pedí ni utilicé código resuelto, ni redacté con IA el análisis o las
# interpretaciones económicas de los resultados.
#
# BITÁCORA DE PROMPTS CLAVE
# - "Estoy haciendo la tarea de la semana 3 (...) No me des el código hecho,
#    sino una ayuda."
# - "El profesor me dijo que lo simplificara" (reformulación del ejercicio a un
#    diseño de una fila por individuo).
# - "Voy en el paso 3, hice el filtro de una condición, lo demás no lo sé hacer."
# - "No entiendo lo del punto 3."
# - "¿Estará bien?" (revisión crítica de mi avance).
# - "Me ayuda con sd y quantile" (explicación conceptual para redactar yo la
#    interpretación).
# =============================================================================

# Cristóbal Sepúlveda Sepúlveda
