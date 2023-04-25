import 'package:flutter/material.dart';
import 'package:proyectlicorteca/Screen/proveedorprofile_screen.dart';

class CardsProveedores extends StatefulWidget {
  final String nombreProveedor;
  final String id;
  final String phone;
  final String email;
  const CardsProveedores(
      {super.key,
      required this.nombreProveedor,
      required this.id,
      required this.phone,
      required this.email});

  @override
  State<CardsProveedores> createState() => _CardsProveedoresState();
}

class _CardsProveedoresState extends State<CardsProveedores> {
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
              builder: (context) => ProveedorPerfil(
                codigo: widget.id,
                email: widget.email,
                nombreProveedor: widget.nombreProveedor,
                phone: widget.phone,
              ),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/perfil.png', height: 100.0),
              const SizedBox(
                width: 16.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Nombre: ${widget.nombreProveedor}'),
                  const Text('Producto: Camisa'),
                  Text('Código: ${widget.id}'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
