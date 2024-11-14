# HELLOWORLD APP, MI PRIMERA APLICACION EN FLUTTER
# DMI-10A-HELLOWORLD-FLUTTER
PRIMERA APLICACION REALIZADA EN FLUTTER PARA DISPOSIDTIVOS MOVILES, PARTE DE LA UNIDAD 2 DE LA ASIGNATURA DESARRLLO MOVIL INTEGRAL 



### HISTORIAL DE PRACTICAS
|NO.|NOMBRE|POTENCIADOR|ESTATUS|
|--|--|--|--|
|20|INSTALACION Y CONFIGURACION DE FLUTER |10|Finalizada |
|21|HELLO WORLD APP| 14|⭐ACTIVA|









### LISTA DE HERRAMIENTAS
![DART](https://img.shields.io/badge/Dart-0175c2?style=for-the-badge&logo=dart&logoColor=white)
![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)

### AUTOR
ELABORADO POR BRUNO LEMUS GONZALEZ [@brunolemus](https://github.com/beunolemus)







<div align="center">

 ![Imagen 1](https://github.com/JonaIbarra/Recursos-Humanos/blob/America/Documentation/LOGO%20UNIVERSIDAD%201.jpeg)    


## UNIVERSIDAD TECNOLÓGICA DE XICOTEPEC DE JUÁREZ, PUEBLA

INGENIERIA EN DESARROLLO Y GESTIÓN DE SOFTWARE 

### PRÁCTICA 21 - HELLO WORLD APP


"10° A"


| INTEGRANTES       |
       
| Bruno Lemus González - M-210652 | 


</div>

### OBJETIVO
Crear una interfaz de contador que permita a los usuarios modificar un valor numérico utilizando tres botones.

### DESCRIPCIÓN 

consiste en el desarrollo de una interfaz de usuario para un contador interactivo con tres botones que permiten manipular el valor del contador de forma intuitiva. La interfaz responde visualmente al valor del contador mediante colores y tipografía específicos, facilitando la interpretación rápida de su estado.:

Incrementar (+1): Aumenta el contador en uno. Este botón debe aparecer en color verde.
Decrementar (-1): Disminuye el contador en uno. Este botón debe aparecer en color rojo.
Reiniciar (0): Restablece el contador a cero. Este botón debe aparecer en color azul.
El color del número del contador debe cambiar según su valor:

Positivo: Verde.
Cero: Azul.
Negativo: Rojo.
Además, se debe aplicar una tipografía específica para el texto en la interfaz, garantizando que sea legible y estéticamente coherente con la funcionalidad de la vista.

### CÓDIGO FUENTE
```dart
import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;

  void increment() {
    setState(() {
      clickCounter++;
    });
  }

  void decrement() {
    setState(() {
      clickCounter--;
    });
  }

  void reset() {
    setState(() {
      clickCounter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Determinar el color basado en el valor del contador
    Color counterColor = clickCounter == 0
        ? Colors.blue
        : clickCounter > 0
            ? Colors.green
            : Colors.red;

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Contador Functions-210652')),
        actions: [
          IconButton(
              icon: const Icon(Icons.refresh_rounded),
              onPressed: reset)
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style: TextStyle(
                fontSize: 160,
                fontWeight: FontWeight.w100,
                fontFamily: 'PTMono',
                color: counterColor, 
              ),
            ),
            Text(
              clickCounter == 1 || clickCounter == -1 ? 'Click' : 'Clicks',
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(height: 10),
          CustomButton(
            icon: Icons.refresh_rounded,
            onPressed: reset,
            backgroundColor: const Color.fromARGB(255, 3, 139, 250), // Botón de reiniciar
          ),
          const SizedBox(height: 10),
          CustomButton(
            icon: Icons.exposure_minus_1_outlined,
            onPressed: decrement,
            backgroundColor: const Color.fromARGB(255, 246, 39, 25), // Botón de restar
          ),
          const SizedBox(height: 10),
          CustomButton(
            icon: Icons.plus_one,
            onPressed: increment,
            backgroundColor: const Color.fromARGB(255, 5, 232, 13), // Botón de sumar
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  final Color backgroundColor;

  const CustomButton({
    super.key,
    required this.icon,
    this.onPressed,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: onPressed,
      backgroundColor: backgroundColor,
      child: Icon(icon),
    );
  }
}

```
### REAULTADOS

Incrementar (+1): Aumenta el contador en uno. Este botón debe aparecer en color verde.
![image](https://github.com/user-attachments/assets/e4dac156-23ce-44e5-8a40-ba06935d8de8)

Decrementar (-1): Disminuye el contador en uno. Este botón debe aparecer en color rojo.
![image](https://github.com/user-attachments/assets/3b810d6e-fe75-4177-9573-e6da29612119)

Reiniciar (0): Restablece el contador a cero. Este botón debe aparecer en color azul.
![image](https://github.com/user-attachments/assets/4071cac4-fa0d-4f13-9e5a-d38c01f19952)


### Tipografia:
PTMono
Antes:
![image](https://github.com/user-attachments/assets/14fcb4c3-6606-41f3-ba92-116f5e9195e5)

Después:
![image](https://github.com/user-attachments/assets/d1cea9ce-8e8d-46cd-b3d1-dfae375ed65a)





