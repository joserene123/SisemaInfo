import 'package:flutter/material.dart';

class PerfilProducto extends StatefulWidget {
  final String nombreProducto;
  final String id;
  final String nombreProveedor;
  const PerfilProducto(
      {super.key,
      required this.nombreProducto,
      required this.id,
      required this.nombreProveedor});

  @override
  State<PerfilProducto> createState() => _PerfilProductoState();
}

class _PerfilProductoState extends State<PerfilProducto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Perfil del producto'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Imagen del producto
            Container(
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/producto.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Nombre del producto
            ListTile(
              title: const Text('Nombre del producto'),
              subtitle: Text(widget.nombreProducto),
            ),
            // Código del producto
            ListTile(
              title: const Text('Código'),
              subtitle: Text(widget.id),
            ),
            // Nombre del proveedor
            ListTile(
              title: const Text('Nombre del proveedor'),
              subtitle: Text(widget.nombreProveedor),
            ),
            // Fecha de compra
            const ListTile(
              title: Text('Fecha de compra'),
              subtitle: Text('12-12-12'),
            ),
            // Próxima fecha de pedido
            const ListTile(
              title: Text('Próxima fecha de pedido'),
              subtitle: Text('12-12-12'),
            ),
            // Características generales
            const ListTile(
              title: Text('Características generales'),
              subtitle: Text('Si manejas, bebe hasta quedarte yema'),
            ),
          ],
        ),
      ),
    );
  }
}
