import 'package:flutter/material.dart';

import '../Widgets/Cards/cards_categoria.dart';

class CategoriaProducto extends StatefulWidget {
  const CategoriaProducto({super.key});

  @override
  State<CategoriaProducto> createState() => _CategoriaProductoState();
}

class _CategoriaProductoState extends State<CategoriaProducto> {
  //ApiMananging apiMananging = ApiMananging();
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
        title: const Text("Categoria"),
      ),
      body: ListView.builder(
        // itemCount: apiMananging.getProducto().toString().length,
        itemCount: 3,
        itemBuilder: (context, index) {
          return const CardsCategoria(
            nombreCategoria: " apiMananging.getProducto(),",
          );
        },
      ),
    );
  }
}
