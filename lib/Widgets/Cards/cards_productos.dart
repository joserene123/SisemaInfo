import 'package:flutter/material.dart';
import 'package:proyectlicorteca/Screen/perfilproducto_screen.dart';

class CardsProductos extends StatefulWidget {
  final String nombreCategoria;
  final String categoria;
  final String codigo;
  final String proveedor;
  const CardsProductos(
      {super.key,
      required this.nombreCategoria,
      required this.categoria,
      required this.codigo,
      required this.proveedor});

  @override
  State<CardsProductos> createState() => _CardsProductosState();
}

class _CardsProductosState extends State<CardsProductos> {
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
              builder: (context) => PerfilProducto(
                id: widget.codigo,
                nombreProducto: widget.nombreCategoria,
                nombreProveedor: widget.proveedor,
              ),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/producto.png', height: 100.0),
              const SizedBox(
                width: 16.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FittedBox(
                    child: Text('Nombre: ${widget.nombreCategoria}'),
                    // Text('Producto: ${widget.categoria}'),
                    // Text('Código: ${widget.codigo}'),
                    // const Text('Stock: 27'),
                    // Text('Provedor: ${widget.proveedor}'),
                    // const Text('Fecha Pedido: 12/12/12'),
                  ),
                  // FittedBox(
                  //   child: Text('Producto: ${widget.categoria}'),
                  // ),
                  // Container(
                  //   child: AutoSizeText,
                  // )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
