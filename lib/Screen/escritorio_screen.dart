import 'package:flutter/material.dart';
//import 'package:proyectlicorteca/Screen/categoriaproducto_screen.dart';
import 'package:proyectlicorteca/Screen/productos_screen.dart';
import 'package:proyectlicorteca/Screen/proveedor_screen.dart';
import 'package:proyectlicorteca/Screen/userprofile_screen.dart';

//import 'navigator.dart';

class Escritorio extends StatelessWidget {
  const Escritorio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent.shade200,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Home"),
        //automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const UserProfile(),
                ),
              );
            },
          ),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 16, // espacio vertical entre los elementos
        crossAxisSpacing: 16, // espacio horizontal entre los elementos
        padding:
            const EdgeInsets.only(top: 100, left: 16, right: 16, bottom: 16),
        children: <Widget>[
          SizedBox(
            width: 30, // ancho de la tarjeta
            height: 40,
            child: Card(
              elevation: 30,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12), // borde redondeado
              ),
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      // builder: (context) => const CategoriaProducto(),
                      builder: (context) => const Productos(),
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const ListTile(
                    title: Text(
                      'CATEGORIA',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontStyle: FontStyle.normal),
                    ),
                    subtitle: Center(
                      heightFactor: 1.3,
                      child: Image(
                        image: AssetImage("assets/categoria.png"),
                      ),
                    ),
                  ), // espacio interno
                ),
                // child: const ListTile(
                //   title: Text(
                //     'Inventario',
                //     textAlign: TextAlign.center,
                //   ),
                //   subtitle: Image(
                //     image: AssetImage("assets/inventario.png"),
                //   ),
                // ),
              ),
            ),
          ),
          Card(
            elevation: 30,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // borde redondeado
            ),
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                //navegarAVentas();
              },
              child: const ListTile(
                title: Text(
                  'VENTAS',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontStyle: FontStyle.normal),
                ),
                subtitle: Center(
                  heightFactor: 1.3,
                  child: Image(
                    image: AssetImage("assets/ventas.png"),
                  ),
                ),
              ),
            ),
          ),
          Card(
            elevation: 30,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // borde redondeado
            ),
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Proveedores(),
                  ),
                );
              },
              child: const ListTile(
                title: Text(
                  'PROVEEDOR',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontStyle: FontStyle.normal),
                ),
                subtitle: Image(
                  image: AssetImage("assets/proveedor.png"),
                ),
              ),
            ),
          ),
          Card(
            elevation: 30,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // borde redondeado
            ),
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                //navegarAAcercaDe();
              },
              child: const ListTile(
                title: Text(
                  'Acerca de',
                  textAlign: TextAlign.center,
                ),
                subtitle: Image(
                  image: AssetImage("assets/inventario.png"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
