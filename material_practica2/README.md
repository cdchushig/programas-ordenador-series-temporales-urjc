# Práctica de Laboratorio 2 --- Análisis de Series Temporales

Este repositorio contiene el material docente correspondiente a la
**Práctica de Laboratorio 2** de la asignatura *Análisis de Series
Temporales* (curso 2025--2026).\
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

Esta práctica desarrolla los contenidos del segundo bloque de la
asignatura, centrándose en la identificación, estimación y validación de
modelos de series temporales.

En particular, se trabajan:

-   Análisis conjunto de ACF y PACF para modelos MA, AR y ARMA.
-   Estudio de invertibilidad (MA) y causalidad/estacionariedad (AR)
    mediante raíces de polinomios.
-   Estimación de parámetros AR mediante ecuaciones de Yule--Walker.
-   Aplicación completa de la metodología Box--Jenkins con datos reales.
-   Ajuste de modelos SARIMA y validación de residuos.
-   Generación de predicciones con intervalos de confianza.

El cuaderno combina simulación, visualización e interpretación
estadística.

------------------------------------------------------------------------

## Contenido

El notebook principal sigue la siguiente estructura:

1.  ACF y PACF en modelos MA, AR y ARMA
2.  Invertibilidad y causalidad
3.  Ecuaciones de Yule--Walker (AR(3))
4.  Metodología Box--Jenkins (serie real + SARIMA)

Cada apartado incluye:

-   Generación o carga de datos.
-   Visualización.
-   Cálculo estadístico.
-   Interpretación de resultados.

------------------------------------------------------------------------

## Archivos

-   `AST-Practica-2.ipynb` (o versión más reciente):
    cuaderno principal de la práctica.
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
-   Punto de partida para extensiones (ARIMA, SARIMA avanzados,
    validación cruzada, etc.).

------------------------------------------------------------------------

## Licencia

Se recomienda distribuir este material bajo licencia:

**Creative Commons Attribution 4.0 International (CC BY 4.0)**

Esto permite reutilización y adaptación, siempre que se cite la fuente.

------------------------------------------------------------------------

## Cómo citar este material (ejemplo)

Gómez Martínez, V., Chushig Muzo, C. D., Marinescu, M., & Milara Hernando, E. (2026).
*Práctica de Laboratorio 2 --- Análisis de Series Temporales*.
Universidad Rey Juan Carlos.

