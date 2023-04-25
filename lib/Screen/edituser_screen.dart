import 'package:flutter/material.dart';

class EditUsuario extends StatefulWidget {
  const EditUsuario({super.key});

  @override
  State<EditUsuario> createState() => _EditUsuarioState();
}

class _EditUsuarioState extends State<EditUsuario> {
  final TextEditingController _codeController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _nitController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Editar Proveedor'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              controller: _codeController,
              decoration: const InputDecoration(labelText: 'Código'),
            ),
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Nombre'),
            ),
            TextFormField(
              controller: _addressController,
              decoration: const InputDecoration(labelText: 'Dirección'),
            ),
            TextFormField(
              controller: _phoneController,
              decoration: const InputDecoration(labelText: 'Teléfono'),
            ),
            TextFormField(
              controller: _nitController,
              decoration: const InputDecoration(labelText: 'NIT'),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              child: const Text('Guardar'),
              onPressed: () {
                // Aquí colocas el código que se ejecutará al presionar el botón de guardar
                // Puedes obtener los valores de los campos con _codeController.text, _nameController.text, etc.
              },
            ),
          ],
        ),
      ),
    );
  }
}
