import 'package:flutter/material.dart';
import 'package:proyectlicorteca/Screen/productos_screen.dart';

class CardsCategoria extends StatefulWidget {
  final String nombreCategoria;
  const CardsCategoria({super.key, required this.nombreCategoria});

  @override
  State<CardsCategoria> createState() => _CardsCategoriaState();
}

class _CardsCategoriaState extends State<CardsCategoria> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 8),
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(20), // bordes redondeados de la Card
      ),
      elevation: 30,
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Productos(),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(
                width: 50,
                height: 50,
                child: Image(
                  image: AssetImage("assets/folder.png"),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Categoria: "),
                ],
              ),
              const Text("Categoria A")
            ],
          ),
        ),
      ),
    );
  }
}
