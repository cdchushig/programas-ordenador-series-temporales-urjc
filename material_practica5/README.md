# Práctica de Laboratorio 3C --- Análisis de Series Temporales (Filtro de Kalman y VAR)

Este repositorio contiene el material docente correspondiente a la
**Práctica de Laboratorio 3C** de la asignatura *Análisis de Series
Temporales* (curso 2025--2026).
El cuaderno está diseñado como recurso educativo en **acceso abierto**.

------------------------------------------------------------------------

## Autores
-   Marius Marinescu
-   Vanesa Gómez Martínez
-   Cristian David Chushig Muzo
-   Eva Milara Hernando

**Afiliación:**
Universidad Rey Juan Carlos
Departamento de Teoría de la Señal y Comunicaciones y Sistemas****
Telemáticos y Computación

------------------------------------------------------------------------

## Objetivo general

El objetivo de esta práctica es introducir el uso del **filtro de
Kalman** en problemas de estimación y predicción en series temporales.

Además, se introduce su aplicación en modelos **VAR (Vector
Autoregressive)** para el análisis y predicción de series
multivariantes.

En particular, se trabajan:

-   Implementación del algoritmo del filtro de Kalman.
-   Predicción de procesos ARMA mediante representación en espacio de
    estados.
-   Estimación recursiva de parámetros de modelos AR mediante Kalman.
-   Predicción en datos reales mediante modelos en espacio de estados.
-   Aplicación del filtro de Kalman a modelos VAR multivariantes.

El cuaderno combina desarrollo matemático, simulación, visualización e
interpretación estadística.

------------------------------------------------------------------------

## Contenido

El notebook principal sigue la siguiente estructura:

1.  Implementación del filtro de Kalman
2.  Predicción de procesos ARMA mediante Kalman
3.  Estimación en tiempo real de parámetros AR con Kalman
4.  Predicción en datos reales (temperatura --- Svedala)
5.  Predicción multivariante VAR mediante Kalman

Cada apartado incluye:

-   Desarrollo matemático.
-   Simulación o carga de datos.
-   Visualización.
-   Interpretación de resultados.

------------------------------------------------------------------------

## Archivos

-   `AST-Practica-5.ipynb`: cuaderno principal de la práctica.
-   `README.md`: este archivo.

------------------------------------------------------------------------

## Requisitos

Se recomienda Python 3.9+ y las siguientes librerías:

-   numpy
-   pandas
-   matplotlib
-   seaborn
-   scipy
-   statsmodels
-   pmdarima
-   jupyter

Instalación típica:

``` bash
pip install numpy pandas matplotlib seaborn scipy statsmodels pmdarima jupyter
```

------------------------------------------------------------------------

## Uso

1.  Abrir el notebook con Jupyter:

``` bash
jupyter notebook
```

2.  Ejecutar las celdas en orden.

El cuaderno incluye resultados y figuras, pero se recomienda volver a
ejecutarlo para reproducir todos los experimentos.

------------------------------------------------------------------------

## Enfoque docente

Este material está pensado como recurso educativo abierto:

-   Combina formulación matemática y experimentación computacional.
-   Incluye interpretación explícita de resultados.
-   Presenta aplicaciones tanto univariantes como multivariantes.

Puede utilizarse como:

-   Práctica guiada.
-   Material de apoyo en clase.
-   Base para ampliaciones (filtros extendidos, modelos de espacio de
    estados avanzados, control y estimación).

------------------------------------------------------------------------

## Licencia

Se recomienda distribuir este material bajo licencia:

**Creative Commons Attribution 4.0 International (CC BY 4.0)**

Esto permite reutilización y adaptación, siempre que se cite la fuente.

------------------------------------------------------------------------

## Cómo citar este material (ejemplo)

D., Marinescu, Gómez Martínez, V., Chushig Muzo, C.  M., & Milara
Hernando, E. (2026).
*Práctica de Laboratorio 3C --- Análisis de Series Temporales*.
Universidad Rey Juan Carlos.
