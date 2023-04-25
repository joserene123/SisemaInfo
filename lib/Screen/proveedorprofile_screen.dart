import 'package:flutter/material.dart';
import 'package:proyectlicorteca/Screen/editproveedor_screen.dart';

class ProveedorPerfil extends StatefulWidget {
  final String codigo;
  final String nombreProveedor;
  final String email;
  final String phone;
  const ProveedorPerfil(
      {super.key,
      required this.codigo,
      required this.nombreProveedor,
      required this.email,
      required this.phone});

  @override
  State<ProveedorPerfil> createState() => _ProveedorPerfilState();
}

class _ProveedorPerfilState extends State<ProveedorPerfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Perfil Proveedor'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const EditProveedor(),
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage("assets/perfil.png"),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.code),
              title: Text('Código: ${widget.codigo}'),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: Text('Nombre: ${widget.nombreProveedor}'),
            ),
            ListTile(
              leading: const Icon(Icons.location_on),
              title: Text('Email: ${widget.email}'),
            ),
            ListTile(
              leading: const Icon(Icons.phone),
              title: Text('Teléfono: ${widget.phone}'),
            ),
            const ListTile(
              leading: Icon(Icons.credit_card),
              title: Text('NIT: no nit BD'),
            ),
            ElevatedButton(
              child: const Text('Ver Catalogo'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
