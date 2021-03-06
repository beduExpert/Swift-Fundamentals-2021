
`Desarrollo Mobile` > `Swift Fundamentals`


## :wave: Sesi贸n 1: Introducci贸n al desarrollo m贸vil   

### 馃幆 Objetivo de la sesi贸n:

Describir el ecosistema iOS, las tecnologias disponibles, pr谩cticas, inicio del proceso de dise帽o y la distribuci贸n de una App.


### 馃幆 Qu茅 aprender谩n


## Introducci贸n al desarrollo en iOS, generalidades.

#### Ciclo de Vida de una App
 
 El desarrollo de una App no es un proceso finito, puede pensarse que una vez que se tenga un producto terminado este ya no necesitar谩 modificarse nunca mas. Este pensamiento es errado y no obstante, el desarrollo de un software es un proceso iterativo de mejora continua.
 
 En un equipo de desarrollo de software existen diferentes roles, desde el desarrolldor senior front-end, back-end, middle-ware, QA, etc. Cada uno con una misi贸n pero todos con el mismo objetivo, lanzar a producci贸n una nueva versi贸n de la App.
 
 Ya que una App puede ser parte de un negocio, es necesario medir. Cualquier m茅trica que aporte valor al producto debe ser incluida, como por ejemplo, que tipo de usuario interactua con la App, las opciones mas utilizadas, zona geogr谩fica, tipo de usuario respecto a ingresos, etc.
 
 Entonces, comenzamos el ciclo de vida de una App desde el dise帽o, una vez definidas las historias de usuario, comenzamos el dise帽o del sistema: Etapa de desarrollo.
 
 Imaginemos que hemos alcanzado la primera versi贸n de la App, es momento de distribuirla con los clientes, estamos ahora en la etapa de Distribuci贸n, sin embargo, antes de enviar un aversi贸n a producci贸n, debemos probar el producto, entonces pasamos al a fase de Pruebas (QA).
 
 En la etapa de Testing, no solo se prueba el c贸digo o la App, sino temas de negocio, como quizas algun asunto legal, de marketing, etc.
 
 De momento nuestro proceso sigue el siguiente flujo:
 
 > Development -> Testing
 
 Ya autorizado por QA, es momento de enviar la App a producci贸n. Para ello enviamos una versi贸n a Apple. El equipo de Apple se encargar谩 de verificar que nuestro producto cumpla sus lineamientos.
 
  ![](images/2.png)
  
[App Store Review Guidelines](https://developer.apple.com/app-store/review/guidelines/)

 A grandes rasgos estos lineamientos consisten en no publicar una App que pueda contener temas sensibles, de copyright, que atente contra la seguridad o desinformaci贸n. Que sea una copia de otra App, Spam, o que no tenga regulaci贸n por alguna autoridad, por ejemplo, una app para minar criptomonedas directamente en el smartphone quedaria prohibida del AppStore.
 
 Bien, si la App pasa el filtro de Apple, es momento de publicarla en el AppStore. El proceso se ve de la sig. forma:
 
 
  > Development -> Testing -> Review -> Publishing
  
  Por 煤ltimo, hace falta mejorar el producto, para poder mejorarlo es necesario medir que se quiere mejorar. Para ello tenemos herramientas de anal铆ticos (como se mencionaron en el prework). Agregamos esta etapa al ciclo de vida:
  
> Development -> Testing -> Review -> Publishing -> Analytics

Con la informaci贸n recopilada de los Analytics, podemos agregar, quitar o modificar nuestra App.

 Bien, ya tenemos las etapas del ciclo de vida de una App. 驴Que herramientas tenemos para cada una?. De lado del programador, en la etapa de Development contamos con Xcode. Para la fase de pruebas tenemos [Testflight](https://developer.apple.com/testflight/) para distribuir una versi贸n de nuestra App a QA, pero, si se requiere Testing de lado del desarrollador podemos hacer uso de Instruments, el cu谩l esta incluido en Xcode as铆 como tambien de Unit Tests, estas 煤ltimas son conocidas como pruebas unitarias. Un ejemplo de prueba unitaria ser铆a verificar que el email ingresado tenga el formato deseado, para ello extraemos el c贸digo que verifica dicho valor y creamos casos que deben cumplirse, si estos son exitosos, esta garantizado que en nuestra app funcionar谩 perfectamente.
 
 Para la etapa de Review, necesitaremos una cuenta de Apple. Para ello visitamos el portal de developer apple: [developer.apple.com](https://developer.apple.com).
 
 Una vez registrado una cuenta, tenemos dos opciones, registrarnos como empresas o como personas [Programs Enroll](https://developer.apple.com/programs/enroll/).
 
![](images/3.png)


Una vez registrada una cuenta de desarrollador podemos acceder a herramientas y recursos de Apple, versiones Beta, versiones legacy, soporte, opciones avanzadas como In-App Purchases (compras directamente en la App), push notifications, Cloud Kit, etc.

 
#### Instalando Xcode

Como hemos visto a lo largo de la clase o como bien ya tendras conocimiento, para desarrollar Apps en iOS podemos utilizar el editor oficial de Apple, Xcode.

Para ello podemos ir directamete al AppStore, o si ya contamos con una cuenta de desarrollador, podemos acceder a la zona de descargas en developer.apple.com.

![](images/4.png)
 
 
 Una vez instalado ejecutamos la App, se nos solicitar谩 instalar los command line tools. Este paquete incluye todas las herramientas que Xcode necesita para poder compilar nuestro c贸digo.
 
 ![](images/5.png)
 
 Una vez finalizada la instalaci贸n, la pantalla de bienvenida se muestra.
 
 ![](images/6.png)
 
 Esta ventana ser谩 muy recurrente a lo largo de las sesiones. En ella podemos ubicar el bot贸n para crear un nuevo proyecto.
 
  ![](images/7.png)
  
 
 Continuamos la creaci贸n del proyecto Eligiendo el tipo de proyecto a crear, App. El nombre, Identificador, lenguaje de programaci贸n, etc.
 
![](images/8.gif)
  
  Dentro de estas opciones, es importante se帽alar el **Organization Identifier**. Este identificador es aquel que tiene la forma de un sitio web escrito al rev茅s, por ejemplo `com.myCompany`. Y es 煤nico, de esta manera Apple identificara los productos en su AppStore.
  Debajo de esta Organization Identifier encontramos al bundle Identifier o bundle ID. Este ID posee el valor del Organization Identifier mas el nombre de nuestra App o identificador ue queramos ponerle a nuestra App. Como mencionamos, este ID es 煤nico en el sistema de Apple y ser谩 hasta el momento de publicar una App cuando quede registrada.
  
Asi mismo, Xcode puede manejar las cuentas de Apple creadas:  
  
![](images/9.png)

Y tambien descargar sus certificados necesarios para poder subir una versi贸n de la App al portal de desarrolladores:

![](images/10.png)

  
#### Certificados
  
  Los certificados en Apple vienen en dos sabores, es decir, para desarrollo (development) o distribuci贸n. Como la palabra lo indica, si lo que necesitamos es ejecutar la App en un dispositivo f铆sico pero no publicarla en la tienda, hacemos uso de un certificado de Development. Pero si lo que requerimos es publicar una versi贸n nueva, haremos uso de un certificado de distribuci贸n.
  
  ![](images/11.png)
  
  
#### Provisioning profiles

Para poder crear un provisioning profile, es necesario tener un certificado y un App ID. Este nos permitir谩 poder instalar las Apps que creemos en nuestro dispositivo f铆sico.
Cada provisioning profile requiere que se especifique que dispositivos van a ser compatibles.

  ![](images/12.png)


#### TestFlight

Apple provee una herramienta para distribuir una versi贸n de tu App para que pueda pasar por la etapa de QA. Hablamos de Testflight, esta herramiente es descargable desde el AppStore, tan solo hay que buscar `TestFlight`.


  ![](images/13.png)

Esta App trabaja directametne con el Apple ID. En esta herramienta se listaran las versiones de la App que estes desarrollando. Mostrando la versi贸n y n煤mero de Build. Cabe mencionar que esta versi贸n de prueba cuenta con fecha de expiraci贸n. Al seleccionar el bot贸n Install, automaticamente comenzar谩 la descarga al dispositivo.

 ![](images/14.jpeg)
 
 
#### Build Configurations

Es com煤n crear una App con diferentes tipos de configuraci贸n. Por ejemplo una version de tu App que solo muestre cierto tipo de contenido mientras esta en Testing, pero al momento de enviarla a Release muestre el contenido de Producci贸n. Para lograr esto podemos tomar ventaja de los "Build Configurations". Por defecto un proyecto en iOS tiene dos: Debug y Release. Usando estas configuraciones, puedes especificar 
 
 ![](images/17.png)

 
#### Schemes
 
Un Scheme es una colecci贸n de Targets, Build configurations y Build Settings que Xcode usa cuando esta compilado. Los schemes son la uni贸n de estas partes, al elegir un scheme, usas un tipo de configuraci贸n global.
 
![](images/15.png)

![](images/16.png)


#### Targets

Un Target es una lista de archivos e instrucciones que le dice a Xcode como construir una App o una extensi贸n. Cuando ejecutamos el bot贸n de ejecutar app, estamos ejecutando el Target. En Xcode podemos agregar diferentes tipos de Target, por defecto tenemos aquel que representa a la configuraci贸n global o principal. Usualmente tiene el nombre de tu App.

![](images/18.png)

 Es muy f谩cil agregar un nuevo Target, solo dando click en el icono de `+` en la parte inferior de la secci贸n de Targets.
 
 ![](images/19.png)

 Si tu proyecto requiere tener una versi贸n para Apple Watch, un nuevo Target debes agregar.
 
  ![](images/20.png)


#### Secrets

En algunos casos una App debe manejar alg煤n valor secreto, como una llave. Un secret es un tipo de dato privado que tu App usar谩, puede ser un password, servicio o credenciales.

Es importante manejar un medio para almacenar un secreto en la App, ya que es muy facil exponer estos valores en un repositorio por error y as铆 un tercero pueda ver esta informaci贸n.

Xcode provee un archivo especial llamado Configuration file `.xcconfig`, este archivo no debe ser compartido por un control de versiones como Git.

Con un archivo `.xcconfig` podr谩s almacenar tus *secrets*. Este archivo debe ser agregado a .gitignore si estamos usando Git (o alguna configuraci贸n similar). La idea es no incluir este archivo a alg煤n repositorio. Cada Secreet debe ser referenciado por c贸digo.


![](images/21.png)

 
### Ejemplos
 
Crear un Target customizado [Ejemplo 01](Ejemplo-01)
 
Crear un Build Configuration, especificar que dispositivo esta permitido iPhone o iPad
[Ejemplo 02](Ejemplo-02)
 
Crear un Scheme, cambiar idioma [Ejemplo 03](Ejemplo-03)

Crea un Secret, crear un secret [Ejemplo 04](Ejemplo-04)


#### Reto

Configuraci贸n inicial de proyecto: [Reto 01](Reto-01)


### 馃搨 Entregable del proyecto

El experto mostar谩 un ejemplo de aplicaci贸n similar a la que se construir谩 en las siguientes sesiones.

