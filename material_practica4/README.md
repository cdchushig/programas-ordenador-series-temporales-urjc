# Práctica de Laboratorio 3B --- Análisis de Series Temporales (Predicción SARIMA)

Este repositorio contiene el material docente correspondiente a la
**Práctica de Laboratorio 3B** de la asignatura *Análisis de Series
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
Departamento de Teoría de la Señal y Comunicaciones y Sistemas
Telemáticos y Computación

------------------------------------------------------------------------

## Objetivo general

El objetivo de esta práctica es introducir la **predicción de series
temporales mediante modelos SARIMA**, combinando desarrollo analítico y
experimentación computacional.

En particular, se trabajan:

-   Obtención de polinomios predictores F(z) y G(z) para modelos MA, AR
    y ARMA.
-   Construcción del predictor óptimo a varios pasos vista.
-   Análisis de la estructura del error de predicción y su varianza.
-   Predicción en un modelo SARIMA simulado.
-   Evaluación empírica del error de predicción.
-   Predicción en una serie real (AirPassengers) y análisis de
    intervalos de confianza.

El cuaderno combina desarrollo teórico, simulación, visualización e
interpretación estadística.

------------------------------------------------------------------------

## Contenido

El notebook principal sigue la siguiente estructura:

1.  Polinomios predictores (MA, AR, ARMA y SARIMA)
2.  Predicción en un caso simulado
3.  Predicción en un caso real (AirPassengers, SARIMA)

Cada apartado incluye:

-   Desarrollo analítico.
-   Simulación o carga de datos.
-   Visualización.
-   Interpretación de resultados.

------------------------------------------------------------------------

## Archivos

-   `AST-Practica-4.ipynb`: cuaderno principal de la práctica.
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

-   Combina formulación matemática y experimentación.
-   Incluye interpretación explícita de resultados.
-   Sigue el flujo completo identificación--predicción--evaluación.

Puede utilizarse como:

-   Práctica guiada.
-   Material de apoyo en clase.
-   Base para ampliaciones (predicción multihorizonte, comparación de
    modelos, validación cruzada).

------------------------------------------------------------------------

## Licencia

Se recomienda distribuir este material bajo licencia:

**Creative Commons Attribution 4.0 International (CC BY 4.0)**

Esto permite reutilización y adaptación, siempre que se cite la fuente.

------------------------------------------------------------------------

## Cómo citar este material (ejemplo)

Marinescu, M., Gómez Martínez, V., Chushig Muzo, C. D., & Milara
Hernando, E. (2026).
*Práctica de Laboratorio 3B --- Análisis de Series Temporales*.
Universidad Rey Juan Carlos.
