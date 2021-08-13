
`Desarrollo Mobile` > `Swift Fundamentals`

## Postwork: Personalización de UIObjects

### OBJETIVO

- Familizarizarse a profundidad con los objetos de UIKit y Storyboard.

#### DESARROLLO

1.- Crear un nuevo proyecto `Single View App` en Xcode, con Swift y Storyboard.

<img src="1.png" alt="Solucion" width="410" height="255">

2.- Ir al Storyboard y agregar elementos del Library. Podemos agregar elementos como Label, Button, Switch, etc.

<img src="2.png" alt="Solucion" width="380" height="380">

3.- Intenta recrear algo similar a esto:

<img src="3.png" alt="Solucion" width="480" height="355">


<details>
        <summary>Solución</summary>
        <p> Para personalizar un componente de UI en el Storyboard, debemos apoyarnos del Inspector. Las opciones dentro del Inspector cambian de acuerdo al elemento seleccionado. </p>
        <p> Por ejemplo, al seleccionar el Label, las opciones serian: </p>
        <img src="4.png" alt="Solucion" width="600" height="411">
        <p> Veamos ahora como cambian al seleccionar el <strong>Slider</strong>: </p>
        <img src="5.png" alt="Solucion" width="600" height="411">
        <p> Bien, ahora seleccionemos el Segmented Control, vemos que aqui las opciones cambian aun mas. Tenemos Segments y Segment(menú), en el primero indicamos el número de opciones a mostrar y en el segundo configuramos cada opción.</p>
        <img src="6.png" alt="Solucion" width="600" height="411">
</details>


#### ¿TERMINASTE EL POSTWORK?

Investigar:  
¿A qué se le llama `InterfaceBuilder`?

¿Qué es `IBInspectable` y`IBDesignable`?

Lectura breve (EN)
[medium.com](https://medium.com/@nimjea/ibdesignable-and-ibinspectable-in-swift-c12ea557b82b)

### Algo adicional...

Para tu proyecto final sería increíble incluir una manera más avanzada para personalizar tus componentes. Busca en esta carpeta el archivo en swift llamado `CustomButton.swift` y agrégalo a tu proyecto.

<img src="7.gif" alt="Solucion" width="590" height="330">


<details>
        <summary>Solución</summary>
        <p> Una vez agregado el archivo al proyecto, procedemos a asignarlo a un Botón. Damos click en el UIButton azul que tenemos y en el inspector agregamos la clase. </p>
        <p> Esta clase permitirá agregar esquinas redondeadas a tu botón.</p>
        <img src="8.gif" alt="Solucion" width="600" height="330">
</details>


¿Quieres saber más?, visita: [supereasyapps.com](https://blog.supereasyapps.com/how-to-create-round-buttons-using-ibdesignable-on-ios-11/)

