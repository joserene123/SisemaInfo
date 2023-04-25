import 'package:flutter/material.dart';
import 'package:proyectlicorteca/Widgets/Cards/cards_productos.dart';
import 'package:proyectlicorteca/service/api.dart';

class Productos extends StatefulWidget {
  const Productos({super.key});

  @override
  State<Productos> createState() => _ProductosState();
}

class _ProductosState extends State<Productos> {
  ApiMananging apiMananging = ApiMananging();
  @override
  void initState() {
    super.initState();
    //log(apiMananging.getCategoria().toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent.shade200,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Productos"),
      ),
      body: FutureBuilder<List<dynamic>>(
        future: apiMananging.getProducto(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (context, index) {
                return CardsProductos(
                  nombreCategoria: snapshot.data![index]['name'],
                  categoria:
                      snapshot.data![index]['categoria'] ?? 'sin categoria',
                  codigo: snapshot.data![index]['_id'],
                  proveedor: snapshot.data![index]['proveedor_id'] != null
                      ? snapshot.data![index]['proveedor_id']['name']
                      : 'sin proveedor',
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
