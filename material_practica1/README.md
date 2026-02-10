# Práctica de Laboratorio 1 --- Análisis de Series Temporales

Este repositorio contiene el material docente correspondiente a la
**Práctica de Laboratorio 1** de la asignatura *Análisis de Series
Temporales* (curso 2025--2026).
El objetivo es introducir, de forma práctica, los conceptos
fundamentales del análisis de series temporales mediante simulación,
visualización e interpretación estadística.

El recurso está pensado para su uso en docencia universitaria y para su
distribución en acceso abierto.

------------------------------------------------------------------------

## Objetivos de la práctica

A lo largo del cuaderno se trabajan los siguientes conceptos:

-   Diferencia entre series estacionarias y no estacionarias.
-   Diagnóstico visual mediante gráficas y estadísticas móviles.
-   Tests de estacionariedad ADF y KPSS e interpretación de p-values.
-   Funciones de Autocovarianza (AVF) y Autocorrelación (ACF).
-   Modelos básicos de series temporales: Ruido Blanco, MA(q) y AR(p).
-   Transformaciones habituales (diferenciación y Box--Cox).
-   Descomposición de series temporales en tendencia, estacionalidad y
    residuo.
-   Análisis del conjunto de datos AirPassengers y simulaciones
    sintéticas aditiva y multiplicativa.

El cuaderno combina código Python con explicaciones pedagógicas e
interpretaciones de resultados.

------------------------------------------------------------------------

## Contenido

El notebook principal sigue la siguiente estructura:

1.  Series estacionarias y no estacionarias
    1.1 Ruido blanco (proceso estacionario)
    1.2 Ejemplos no estacionarios y transformaciones

2.  AVF y ACF

3.  Modelos básicos: Ruido Blanco, MA(q) y AR(p)

4.  Descomposición de series temporales (AirPassengers y simulaciones)

Cada apartado incluye:

-   Generación o carga de datos.
-   Visualización.
-   Cálculos estadísticos.
-   Interpretación de resultados.

------------------------------------------------------------------------

## Archivos

-   `AST-Practica-1.ipynb` (o versión más reciente):
    cuaderno principal de la práctica.
-   `README.md`: este archivo.

------------------------------------------------------------------------

## Requisitos

Para ejecutar el notebook se recomienda un entorno Python 3.9+ con las
siguientes librerías:

-   numpy
-   pandas
-   matplotlib
-   seaborn
-   scipy
-   statsmodels
-   jupyter

Todas ellas pueden instalarse, por ejemplo, mediante:

``` bash
pip install numpy pandas matplotlib seaborn scipy statsmodels jupyter
```

------------------------------------------------------------------------

## Uso

1.  Abrir el notebook con Jupyter:

``` bash
jupyter notebook
```

2.  Ejecutar las celdas en orden.

El cuaderno ya incluye resultados y figuras, pero se recomienda volver a
ejecutarlo para reproducir los experimentos.

------------------------------------------------------------------------

## Enfoque docente

Este material está diseñado como recurso educativo abierto:

-   Cada bloque de código va acompañado de explicación.
-   Los tests estadísticos incluyen interpretación.
-   Las figuras clave se comentan explícitamente.
-   El flujo sigue el guion de una práctica de laboratorio real.

Puede utilizarse como:

-   Práctica guiada.
-   Material de apoyo en clase.
-   Punto de partida para ampliaciones (ARIMA, SARIMA, etc.).

------------------------------------------------------------------------

## Licencia

Se recomienda distribuir este material bajo licencia:

**Creative Commons Attribution 4.0 International (CC BY 4.0)**

Esto permite reutilización y adaptación, siempre que se cite la fuente.

------------------------------------------------------------------------

## Autores

Vanesa Gómez Martínez
Cristian David Chushig Muzo
Marius Marinescu  
Eva Milara Hernando  

Universidad Rey Juan Carlos

