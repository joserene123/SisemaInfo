import 'package:flutter/material.dart';
import 'package:proyectlicorteca/Screen/edituser_screen.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Perfil'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const EditUsuario(),
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage("assets/perfil.png"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.code),
              title: Text('Código: codigo'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Nombre: nombre'),
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Dirección: direccion'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Teléfono: telefono'),
            ),
            ListTile(
              leading: Icon(Icons.credit_card),
              title: Text('NIT: nit'),
            ),
          ],
        ),
      ),
    );
  }
}
