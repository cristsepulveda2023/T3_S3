
# A1 — Vectores de datos económicos
### Módulo II · Semana 3 · **Actividad formativa — sin nota, entrega obligatoria**
#### Fundamentos de Programación para Análisis Económico · UdeC-EAN

#Autor:  Cristóbal Ignacio Sepúlveda Sepúlveda
# Fecha:  28-08-2026

# Objetivo: Evaluar los ingresos respecto a su región y años de experiencia


region <- c("ñuble", "biobio", "metropolitana", "maule" , "los lagos", "los rios") 
# Vector 1 son las regiones a evualuar.

educacion <- c("superior")  
# Vector 2 son los niveles de educación a evaluar.
                                               
ingreso <-c(800000, 825000, 975000, 725000, 750000,850000)
# Vector 3 son los ingresos que perciben cada individuo.

años_experencia <- c(5, 5, 6, 5, 6, 6)
# Vector 4 son los años de experencia de cada individuo
  
class(region)                                   # Verificando el tipo de clase
class(educacion)                                # que tiene cada uno de los
class(ingreso)                                  # vectores.
class(años_experencia)

length(region)                                  # Verificando la cantidad de 
length(educacion)                               # elementos que tiene cada uno
length(ingreso)                                 # de los vectores.
length(años_experencia)


region[c(1, 3, 5)]                           # Verificando el paso 2
ingreso[c(1)]
años_experencia[c(2, 4, 6)]

ingreso > 800000              # filtrando la condición logica
años_experencia == 5

ingreso[ingreso > 800000]     # los ingresos que superan el umbral
sum(ingreso > 800000)         # cuántas personas lo superan
mean(ingreso > 800000)        # qué proporción del total

saliario_esperado <- ingreso/años_experencia 
# el salario espera que percibirian cada individuo según su ingreso y año de experiencia

mean(ingreso)        # me dice el promedio del ingreso 820833.3
median(ingreso)      # me dice la mediana del ingreso  812500
sd(ingreso)          # me dice cuánto se dispersa el grupo alrededor de su promedio 88623.74
quantile(ingreso)    # me dice en % quienes son los ingresos de los más bajos a los más altos

