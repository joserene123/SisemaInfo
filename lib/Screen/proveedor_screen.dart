import 'package:flutter/material.dart';
import 'package:proyectlicorteca/Widgets/Cards/cards_proveedores.dart';
import 'package:proyectlicorteca/service/api.dart';

class Proveedores extends StatefulWidget {
  const Proveedores({super.key});

  @override
  State<Proveedores> createState() => _ProveedoresState();
}

class _ProveedoresState extends State<Proveedores> {
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
        title: const Text("Proveedores"),
      ),
      body: FutureBuilder<List<dynamic>>(
        future: apiMananging.getProveedores(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (context, index) {
                return CardsProveedores(
                  nombreProveedor:
                      snapshot.data![index]['name'] ?? 'sin nombre',
                  id: snapshot.data![index]['_id'],
                  email: snapshot.data![index]['email'] ?? 'sin email',
                  phone: snapshot.data![index]['phone'] ?? 'sin celular',
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
