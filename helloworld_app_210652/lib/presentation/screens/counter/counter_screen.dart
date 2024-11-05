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
        title: const Center(child: Text('Contador Functions-210084')),
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
                fontFamily: 'PTMono',// Cambiar tipografía
                color: counterColor, // Color dinámico
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
            backgroundColor: Colors.blue, // Botón de reiniciar
          ),
          const SizedBox(height: 10),
          CustomButton(
            icon: Icons.exposure_minus_1_outlined,
            onPressed: decrement,
            backgroundColor: Colors.red, // Botón de restar
          ),
          const SizedBox(height: 10),
          CustomButton(
            icon: Icons.plus_one,
            onPressed: increment,
            backgroundColor: Colors.green, // Botón de sumar
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
