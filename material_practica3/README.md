# Práctica de Laboratorio 3 --- Análisis de Series Temporales

Este repositorio contiene el material docente correspondiente a la
**Práctica de Laboratorio 3** de la asignatura *Análisis de Series
Temporales* (curso 2025--2026).
El cuaderno está diseñado como recurso educativo en **acceso abierto**.

------------------------------------------------------------------------

## Autores

-   Vanesa Gómez Martínez
-   Cristian David Chushig Muzo
-   Marius Marinescu
-   Eva Milara Hernando

**Afiliación:**
Universidad Rey Juan Carlos
Departamento de Teoría de la Señal y Comunicaciones y Sistemas
Telemáticos y Computación

------------------------------------------------------------------------

## Objetivo general

El objetivo de esta práctica es aplicar los conceptos fundamentales de:

-   Técnicas de procesamiento de señales (análisis espectral).
-   Técnicas de suavizado y filtrado.

En particular, se trabajan:

-   Estimación de densidad espectral mediante periodogramas y FFT.
-   Mejora del periodograma mediante ventanas y el método de Welch.
-   Comparación entre estimaciones espectrales empíricas y densidades
    teóricas en procesos ARMA.
-   Análisis del papel de polos y ceros en la forma del espectro.
-   Técnicas de suavizado temporal para estimar tendencia y
    estacionalidad.
-   Filtrado en frecuencia para aislar componentes relevantes de la
    señal.

El cuaderno combina simulación, visualización e interpretación
estadística.

------------------------------------------------------------------------

## Contenido

El notebook principal sigue la siguiente estructura:

1.  Análisis espectral de series temporales
2.  La densidad espectral de un ARMA: polos y ceros
3.  Técnicas de suavizado y filtrado

Cada apartado incluye:

-   Generación o carga de datos.
-   Visualización.
-   Cálculo estadístico.
-   Interpretación de resultados.

------------------------------------------------------------------------

## Archivos

-   `AST-Practica-3.ipynb`: cuaderno principal de la práctica.
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

-   Cada bloque de código va acompañado de explicación.
-   Las figuras incluyen interpretación.
-   Los resultados estadísticos se comentan explícitamente.
-   El flujo sigue una práctica real de laboratorio.

Puede utilizarse como:

-   Práctica guiada.
-   Material de apoyo en clase.
-   Punto de partida para extensiones (análisis espectral avanzado,
    filtrado digital, SARIMA, etc.).

------------------------------------------------------------------------

## Licencia

Se recomienda distribuir este material bajo licencia:

**Creative Commons Attribution 4.0 International (CC BY 4.0)**

Esto permite reutilización y adaptación, siempre que se cite la fuente.

------------------------------------------------------------------------

## Cómo citar este material (ejemplo)

Gómez Martínez, V., Chushig Muzo, C. D., Marinescu, M., & Milara
Hernando, E. (2026).
*Práctica de Laboratorio 3 --- Análisis de Series Temporales*.
Universidad Rey Juan Carlos.
