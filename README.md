![Karate CI-Test](https://github.com/mpuertao/test-integration-karate/workflows/Karate%20CI-Test/badge.svg)

# test-integration-karate
Proyecto de pruebas de integracion con Karate Framework para una API Rest

# Pre-Condiciones
Aún no se expone la API a internet, por ende las pruebas fallan, proximamente subiremos la API en internet y las pruebas deben pasar

# Insumo para ejecutar las pruebas:

Se debe clonar o forkear el repo https://github.com/mpuertao/tdd-springboot-api-recovered y ejecutar en local con el comando `gradlew bootRun`

# Ejecución

Para ejecutar las pruebas, luego de tener la API arriba, ejecutamos las pruebas como el comando `gradlew clean test -i`

# Reporte

El reporte de cucumber se genera en la carpeta target y se llama overview-features.html
