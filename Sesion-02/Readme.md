
`Desarrollo Mobile` > `Swift Fundamentals`

## :wave: Sesión 2: Herramientas de desarrollo en iOS    

### 🎯 Objetivo de la sesión:

- Reconocer las herramientas necesarias para el desarrollo de apps en iOS. 

- Aprenderán las partes principales de Xcode. Utilizar los simuladores de iphone.


### ⚙ Configuración

Software instalado:

- Xcode 12.5.1
- Command line tools 

### 🎯 Qué aprenderán

- Uso de Xcode, Targets, Inspector, Playgrounds y simulador.
- Asociár cuentas con Xcode.
- Creación de proyectos en iOS.
- Manejo del simulador por medio de la terminal.
- Planteamiento del proyecto: Se plantea el proceso de desarrollo de una App a nivel general.

### 🎩 Desarrollo

Al inicio de la clase se planteará el proyecto a desarrollar a lo largo de las sesiones.

En esta sesión aprenderemos a utilizar los componentes de Xcode así como el uso de Playgrounds y simulador. Se crearán diferentes tipos de proyectos en iOS tanto con el uso de UIKit, AppDelegate, SceneDelegate y SwiftUI. Incluyendo el uso de Storyboards y al mismo tiempo como crear un proyecto que no dependa del Storyboards.

#### Antes de comenzar...

Con la creación de Apps en iOS debes saber que existen diferentes formas de crear un proyecto desde cero.

##### ¿Que hay que considerar?

Primero comenzamos con el tipo de dispositivo a soportar, ya sea iPhone, iPad, Watch, Apple TV o Mac.

Una vez definido el dispositivo, hay que elegir la versión del sistema operativo.

Esto es importante ya que es nuestro punto de partida, esto definirá si utilizaremos entre `AppDelegate`, `SceneDelegate` o `SwiftUI`.

##### ¿Con que opciones contamos?

- `AppDelegate` es utilizado principalmente en sistemas menores a iOS 13, pero compatible con cualquier versión.

- `SceneDelegate` se introdujó a partir de iOS 13. La idea es poder tener multiples ventanas en una app.

- [SwiftUI](https://developer.apple.com/documentation/swiftui/) esta disponible a partir de iOS 13 bajo la versión de Swift 5.1+. Es la nueva propuesta para UI en iOS. El problema radica en que no esta soportado en versiones inferiores a iOS 13.


### AppDelegate




### Ejemplos y Retos

- Creando un proyecto con UIKit - AppDelegate, Switf y Storyboards.

	[Ejemplo 01](Ejemplo-01)

	- Reto-01. Crear un proyecto con UIKit - AppDelegate, Objective-C y Storyboards.

		[Reto 01](Reto-01)

- Creando un proyecto con UIKit - AppDelegate, Swift y SwiftUI.

	[Ejemplo 02](Ejemplo-02)

	- Reto-02. Crear un proyecto con SwiftUI y su propio ciclo de vida.

		[Reto 02](Reto-02)

- Multiples iconos de App en una sola App

	[Ejemplo 03](Ejemplo-03)
  

### Postwork

- [Creación de Proyectos y Playgrounds](Postwork)

