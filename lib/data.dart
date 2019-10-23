import 'package:hola/vendedor.dart';

import 'producto.dart';

var vendedores = [
  new Vendedor(
    "harry.jpg",
    "Harry Potter",
    "harry@gmail.com",
    "4448275277",
    0
  ),
  new Vendedor(
    "hermione.jpg",
    "Hermione Granger",
    "hermione@gmail.com",
    "666",
    1
  ),
  new Vendedor(
    "ron.jpg",
    "Ron Weasley",
    "ron@gmail.com",
    "123456789",
    2
  ),
];

var productos = [
  new Producto(
    'cama.jpg',
    'Cojín de Algodón',
    'Con forma de hot-dog, cama del animal doméstico de la perrera del perro del gato del nido del perrito de la casa, cojín de la estera caliente almohadilla',
    '40%',
    'La foto del producto en venta aparenta ser más grande, aún así el producto cumple con lo que ofrece.',
    'La primera foto no concuerda con el producto entregado.',
    '¿De que collor es?',
    'azul',
    'Cuantos perros caben',
    '3 perritos',
    2
  ),
  new Producto(
    'casita.jpg',
    'Barlingrock Pet Cat Dog Puppy Bed',
    'En forma de casa interior Calentamiento Cálido Sweet Room Cojín Durable de tela Lavable Portátil Almohadilla de descanso Nido Caja de almohadilla Almohadilla de perrera Perrito para peluche Perro pequeño Gatito',
    '81%',
    'Es perfecta! Es resistente, fácil de transportar porque se puede doblar debido a que el suelo de abajo se puede quitar entonces la puedes llevar a donde sea, super cómoda y suave por todas partes, aparte de que es bellísima, es justo lo que buscaba para mi perro tamaño mini, es de un tamaño adecuado y cualquier gato o perro raza pequeña (muy pequeña o mini) puede caber ahí, tiene una excelente altura, etc. Mi único inconveniente es que la tela de abajo de donde va el piso removible se ve un poco frágil y siento que a la hora de lavarla se puede dañar pues eso no se puede quitar, pero de ahí en más es perfecta, aparte de que tardó mucho menos de lo esperado, la recomiendo muchísimo',
    'ES una casa fansy, pero mi chihuahua la destrozo y ahora tiene un lindo trampolín para dormir por las tardes y casa de campaña para las noches, considero que el material es fácil de limpiar, y que mi perra es la culpable del destrozo le duro 2 meses bien, ahora es multinacional, aun así le sigue encantando.',
    '¿De que collor es?',
    'verde',
    'Cuantos perros caben',
    '22',
    0
  ),
  new Producto(
    'peluhe.jpg',
    'SpinMaster Plush Gund Cozy',
    '¡Un tierno acompañante hecho de un material de felpa especial, tan lindo como un mejor amigo!. Estos juguetones amigos son de 8 pulgadas. Son perfectos para cualquier sesión de acurrucamient',
    '40%',
    'Bueno.',
    'Bonito.',
    '¿De que collor es?',
    'verde',
    'Cuantos perros caben',
    '22',
    1,
  )
];

var electronicos = [
  new Producto(
    "bateria.jpg",
    "ADATA Powerbank AP20000D - Negro, 20000 mAh",
    "Dos puertos USB para un uso más práctico de la carga, 1 puerto de entrada micro USB, Los 20,000 mAh son suficientes para 1,8 cargas completas de una tablet y 6,4 veces la capacidad de un smartphone promedio, También utilizable como una potente linterna LED, Cómodo diseño de mano, Peso: 450 gramos, Dimensiones: 2.3cm x 8cm x 16.3cm",
    "35 %",
    "La compre por que la iba a necesitar para el Talent Land que iba a ser en Guadalajara ya que soy de afuera e iba a necesitar carga para poder mantener mi teléfono con vida durante todo el evento, y para mi sorpresa este Power Bank jamas me dejo mal parado y siempre tuve energía durante los 5 días del evento cargando muy poco esta batería y usándola constantemente. Esos 20,000 mAh que maneja la pila realmente son muy duraderos y sirven para cargar un teléfono completamente varias veces sin titubear. Toda la semana estuve con la batería a mi lado y me resulto muy útil para poder estar en el evento sin quedarme sin carga, a su vez que solo cargue muy poco la batería cuando tenia tiempo libre, aunque igualmente sin haberlo hecho hubiera salido librado sin ningún problema. El peso de la batería no lo veo como punto negativo ya que se justifica por su capacidad, por tanto no lo veo como algo malo. Tiene ademas una linterna LED suficiente para cuando no hay luz, y una pantalla iluminada color azul para mostrar la información de la batería. Los dos puertos que tiene la hacen útil para cargar mas de un dispositivo a la vez, lo que la hace mas conveniente. Eso si, se tarda bastantes horas debido a la capacidad del producto, pero con dejarla cargar durante la noche hará que tengas la suficiente pila para varios días dependiendo de que tanto uso le des. Realmente, este producto es un acierto en todo aspecto; tiene batería de sobra y ademas otras prestaciones que la hacen mas practica a la hora de usarla, cosa que hace imposible no quererla, ademas de que tiene excelente precio para lo que ofrece. Altamente recomendada.",
    "Había utilizado la batería por varias semanas y todo bien. Hasta que en una ocasión conecté mi teléfono como normalmente lo hacía, y después de un rato me percaté que no estaba cargando. Al revisar la batería me di cuenta que el la entrada USB estaba pegada y no la podía despegar, se había fundido por dentro. Me gustaría el proveedor me hiciera el cambio del producto o me regrese mi dinero.",
    "Es compartible con carga rapida? ",
    "Yo lo he usado por meses, y la verdad lo carga casi como si fuera carga rápida, en aprox hora y media se carga, y eso que tengo un mate 20 pro de 4200 mAp",
    "¿Alguien a tenido problemas en vuelos internacionales? El maximo permitido para las baterias es de 100W•h y esta está justo en el límite. ",
    " Yo he viajado a Madrid por Iberia 2 veces sin problemas, dentro de europa tuve 2 vuelos internacionales más y sin problemas ",
    0
  ),
  new Producto(
    "switch.jpg",
    "Nintendo Consola Switch Gris 32GB Version 1.1 - Standard Edition ",
    "Presentamos Nintendo Switch, el nuevo sistema de videojuego para el hogar de Nintendo; además de proporcionar emociones únicas y multijugador en casa, el sistema Nintendo Switch se puede llevar mientras viaja para que los jugadores puedan disfrutar de una experiencia de consola completa en cualquier momento y en cualquier lugar. Nintendo Switch está diseñado para IR a donde quiera que vaya, transformando la consola de casa en un sistema portátil en un abrir y cerrar de ojos; así que obtienes más tiempo para jugar los juegos que amas, como quieras ",
    "27 %",
    "Voy a escribir una reseña prematura ya que solamente venía la consola como tal, cuando compré algún juego les escribo la reseña completa: En primera, ya tenía ganas de comprar el Switch, me habían dicho que iba a salir una versión de revisión y me esperé a la dicha. En segunda, llego todo súper bien. Al momento de abrir la caja, traia unos golpes pero, no por eso mi calificación será menor, puede ser que pase y más por que el envío es de Amazon. El producto como tal estaba intacto, nuevo, todo en perfecta condición y la instalación fue en menos de 25 mins. Había dudado de comprarla por el tema de que los Joy Coins decian se barren, la resolución, bla,bla,bla. En mi punto de vista, no hagan caso, si son fans de Nintendo o quieren descubrir una consola nuevas definitivamente será esta. Tenía ganas de un Xbox One, pero los precios son altos, y con esta consola estoy más que satisfecho.",
    "Gran consola, que aunque carece de potencia como xbox o playstation, es una opcion buenísima para jugar, y el hecho de ser hibrida entre portatil y sobremesa le da muchisimo valor. Los materiales de la consola se sienten de buena calidad, excepto los joycons, que no es que sean malos, pero se siente muy delicados, eso si, no me han dado ningún tipo de problema, asi que quizas solo sea la sensacion de fragilidad. La pantalla cumple muy bien, aun que ahi ya depende tambien de los juegos, agunos se ven mejor que otros en modo portatil. Es recomendable comprar una mica de cristal, ya que aun que es el nuevo modelo no parece que hayan arreglado del todo el problema de la fricción con el dock, y con una cuantas veces que lo he metido se a rayado (Aun que no fueron marcas permanentes, quizás con el tiempo si sean permanentes). La bateria dura bastante, no podria decir la diferencia con el modelo anterior por que no lo tengo, pero por lo general me dura entre 6-9 horas usandolo con diferentes juegos.",
    "Es versión nacional? ",
    "Importada ",
    "¿Es la nueva version acaba de salir con mayor rendimiento de bateria? ",
    "Si es la nueva versión, con su batería de 9 horas",
    1
  ),
  new Producto(
    "huawei.jpg",
    "Smartphone Huawei P30 Lite - 128 GB - Desbloqueado - Color Azul Orquidea",
    " Azul Orquídea MicroSD expandible a 256 GB Parlantes stereo",
    "18%",
    "Compre este celular por la buena fama que han adquirido los productos Huawei en tiempos recientes, y debido a que mi anterior celular (iPhone 6 Plus) ya estaba en condiciones precarias y con varias fallas (por uso).",
    "Excelente teléfono, no le pide nada a los de gama alta. Reemplacé un Galaxy S8+ por este y el rendimiento es similar. La batería tiene buena duración y carga bastante rápido. No tiene certificación contra agua o carga inalámbrica pero si esos no son atributos que buscas cumple muy bien con lo demás. En red AT&T 4g funciona perfectamente.",
    "Si es dual sim? trae en la caja los 2 muneros imei que acrediten que es de 2 tarjetas sim ? ",
    " No sé de los números IMEI, pero si es dual SIM, lo único es que no puedes usar una sd card y dos sim al mismo tiempo, es la tarjeta o el sim. Aunque el teléfono trae 128gb de memoria por lo que no creo requieras la SD card. ",
    "Es negro mate? ",
    " Es Azul Orquídea ",
    2
  ),
  new Producto(
    "memoria.jpg",
    "ADATA RAM-3040 Memoria Micro SDHC/SDXC Uhs-I 128GB Clase 10 A1 85Mb/Seg C/Adaptador ",
    "Las tarjetas de memoria Premier microSDXC / SDHC UHS-I Clase 10 proporcionan velocidades de lectura de hasta 100 MB por segundo para transferencias rápidas de archivos. Con una calificación de rendimiento de Clase 10, las tarjetas de memoria Premier microSDXC / SDHC UHS-I permiten la grabación ininterrumpida y de alta calidad de video Full HD en teléfonos inteligentes y tabletas. También cumple con el estándar A1 para una ejecución más rápida y fluida de las aplicaciones. Al estar calificados para V10 (Video Speed Class), pueden grabar un mínimo de 10 MB de video por segundo. ¡Disponibles en capacidades que van desde 16GB a 256GB y respaldadas por una sólida protección multipunto, las tarjetas de memoria Premier microSDXC / SDHC UHS-I le permiten grabar y compartir recuerdos maravillosos con facilidad! ",
    "70 %",
    "Compre esta tarjeta para mi nintendo y no la reconoce, la formate varias veces y aun así no la reconoció. en mi computadora si funciona pero tengan cuidado para que dispositivo la requieren.",
    "Mi Nintendo Switch la reconoce sin problemas, cero quejas",
    "¿alguien que ya haya adquirido este producto con anterioridad (+6 meses) para saber si presenta problemas de lectura o escritura?",
    " Ninguno, tengo un año con la memoria y sigue funcionando",
    "Servira para una nintendo switch? ",
    " Es posible que si, hay ver hasta que capacidad soporta, pero supongo que , y por el tipo de clase es perfecta para la comunicación de datos ",
    3,
  ),
];

var musica = [
  new Producto(
    "jack.jpg" ,
    "Cable Audio Estéreo, Ugreen Cable Auxiliar 3.5mm Nylon Trenzado",
    "Este cable audio estéreo con clavijas jack 3,5mm te permite conectar cualquier dispositivo de audio portátil (iPhones, iPod, iPad, teléfonos, tablets, ordenadores o reproductores MP3) a 3,5mm conectores estándares de audio como de auriculares, altavoces, equipo estéreo de coche o hogar y entre otros. ",
    "32 %",
    "Necesitaba uno de estos para mis audífonos. Es bueno, esta reforzado con tela y la verdad parece muy resistente, hasta el momento no tengo ninguna queja, ya que probando y tocando la calidad me parecen excelente. Lo único que si deben tener en cuenta es que yo compre la versión de 1 metro y para mi esta super bien porque solo los uso enfrente de la pc y mi pc esta a poco espacio de mi siempre por lo cual el cable me sobra en esa medida. Pero de todas formas llega sin problemas desde mi cabeza a la bolsa de mi pantalon para escuchar musica desde mi cel.",
    "He quedado extremadamente sorprendido. Desde el momento en que puse las manos en el cable, con el primer contacto me di cuenta inmediatamente que era uno excelente. Jamás había tenido en mis manos un cable auxiliar que tuviera tanta calidad (y eso que hay mejores en el catálogo de Amazon). El uso que le doy a los auxiliares es casi exclusivamente para escuchar música en unos audífonos con cable desmontable. Y desde entonces he usado varios. El que más me ha convencido ha sido tan bueno que me dura por lo menos cosa de un año (lo he comprado dos veces, en Wal Mart) y la diferencia es brutal. Conste que el cable que menciono me tenía bastante satisfecho, porque era duradero, sencillo, me prestaba buena fidelidad al escuchar música (mucha más que otros que he usado) pero mi única queja con ese cable, y con muchos, es que era muy grueso en el contorno, por lo que tenía que pasarle alrededor con una navaja para que pudiera entrar. Es por eso que busque un cable más delgado, como éste. No sólo es palpable al tacto la calidad de todos los materiales, sino que la fidelidad me parece aún superior! Justo después de ese primer contacto ya sabía todo lo que tenía por decir. Ahora la última prueba la dará el tiempo: todo parece indicar que será durable",
    "Es Hi-fi? ",
    "Así es ",
    "¿cuenta con el certificado mfi? tengo un iphone x y quisiera saber si es compatible conectándolo a través del adaptador que trae el teléfono. ",
    " Mfi solo es para conexiones lighning, ningún cable de 3.5 mm tiene certificación; en conclusión, lo puedes conectar sin problema",
    0
  ),
  new Producto( 
    "pistola.jpg",
    "Mfi solo es para conexiones lighning, ningún cable de 3.5 mm tiene certificación; en conclusión, lo puedes conectar sin problema",
    "Pistola de calor. Dos ajustes de calor. Unidad compacta y ligera. 1375 W. 2 años de garantía. 500° F a 1.000° F. 4.600 BTU. Longitud: 9,37. Ancho: 9,62 cm. Altura: 3 cm.",
    "0 %",
    "Muy buena calidad. Es muy practico y fácil de usar. Es ligero y sólido. Cumple muy bien su propósito",
    "When my truly ancient heat gun died this year, I sought a good replacement. After confusing myself over too many choices, I decided to go with Black & Decker because I've had such good service from their products for so many years. It didn't come with any accessories or optional nozzles, but it has a 3-way trigger switch for Hi range (=), Low range (-), and off. The heavy duty power cord is two meters (a little over six feet) long, with a 2-prong plug. There's a little metal clip on the handle that helps support the gun in the vertical position, which is also handy for letting it cool. I also cut off the end of a soft drink can to slip over the hot exhaust so I can put it back in the drawer right away. Finally, keep in mind that every machine is a smoke machine if you operate it wrong enough. I hope this was helpful.",
    "¿Es confiable",
    "si",
    "",
    "",
    1
  ),
  new Producto( 
    "camara.jpg",
    "AKASO Cámara de Seguridad Exterior HD1080P IP WIFI Impermeable",
    "【Compatible con Alexa y Google Home & Fire TV】 AKASO de Vigilancia Exterior 1080P HD es compatible con Amazon Echo Show para el control de voz, solo pídale a Alexa que muestre lo que quiere. También es compatible con Google Home y Fire TV.",
    "10 %",
    "Lo único malo que tiene son las instrucciones para usar con Alexa, aquí trataré de explicarlo como me hubiera gustado que me lo explicaran. Paso 1) Después de conectarla a la corriente y haber bajado la aplicación Akaso Smart, abrir la aplicación, seleccionar el símbolo +, luego seleccionar sensor de protección, luego cámara de seguridad. Seguir los pasos hasta que aparece un código QR y ese ponerlo enfrente de la cámara. Con eso queda lista esta parte. Paso 2) Para conectar con Alexa, yo tengo un Echo Show. Aquí es donde más batallé ya que le pedía que descubriera dispositivos y no funcionaba. El truco es que antes de intentar descubrirlo, hay que descargar el skill de Smart Life. Una vez hecho esto, ahora sí le puedes pedir a Alexa que descubra tu dispositivo y lo hace rapidísimo. Como pueden ver, es muy sencillo de instalar, solo que no lo explica el fabricante de manera entendible. Además tiene muy buena imagen y se puede ver desde la APP o desde el echo show con muy buena resolución, y con sonido bidireccional",
    "Esta cámara debe tener la mejor aplicación que he usado, está muy bien hecha, por supuesto cuenta con las opciones básicas de la mayoría, audio dos vías, captura de pantalla, grabar en tiempo real en la sd, detección de movimiento, infrarrojo, etc... pero además puedes agregar escenarios y automatización, es decir programas lo que va a hacer la cámara dependiendo la hora del día, inclusive según el clima o la hora del día. Por ejemplo, si esta lloviendo puedes hacer que capture un time lapse, si la humedad cambia que envíe una notificación, que comience a grabar según la hora, en fin muy completa.",
    "se puede conectar un dvr?",
    "No, solo con la aplicación, solo cuenta con conector de alimentación de corriente",
    "Como grabó en tiempo real, ya que si me salgo de la app se corta el video.",
    "Tienes que poner una sd de hasta 128 g y te graba como 1 mes",
    1
  )
];