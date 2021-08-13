
`Desarrollo Mobile` > `Swift Fundamentals`


## Simulador y Terminal

### OBJETIVO

- Aprender el uso del Simulador y la Terminal en Mac OS.

#### REQUISITOS

1. Xcode, iOS Simulator y Terminal.

#### DESARROLLO

Abrir la Terminal de macOS y realizar lo siguiente.

1.- Mostrar todos los simuladores creados.

2.- Ejecutar simulador desde la terminal.

3.- Grabar video del simulador.

4.- Tomar screenshot del simulador.

5.- Abrir una URL del simulador.

6.- Mostrar todos los comandos disponibles del simulador en la terminal.


<details>
        <summary>Solución</summary>
        1.- Mostrar todos los simuladores creados.

2.- Ejecutar simulador desde la terminal.

open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app/

3.- Grabar video del simulador.

xcrun simctl io booted recordVideo — type=mp4 ./test.mp4

4.- Tomar screenshot del simulador.

xcrun simctl io booted screenshot ./screen.png

5.- Abrir una URL del simulador.

xcrun simctl openurl booted https://google.com

6.- Mostrar todos los comandos disponibles del simulador en la terminal.

xcrun simctl help

</details>


