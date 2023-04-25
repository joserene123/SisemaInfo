import 'package:flutter/material.dart';

class MainScren extends StatefulWidget {
  const MainScren({super.key});

  @override
  State<MainScren> createState() => _MainScrenState();
}

class _MainScrenState extends State<MainScren>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('LICORTECA S.R.L.'),
        automaticallyImplyLeading: false,
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Center(
            child: Text('Pestaña 1'),
          ),
          Center(
            child: Text('Pestaña 2'),
          ),
          Center(
            child: Text('Pestaña 3'),
          ),
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.blue,
        child: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(
              icon: Icon(Icons.home),
              text: 'Inicio',
            ),
            Tab(
              icon: Icon(Icons.search),
              text: 'Buscar',
            ),
            Tab(
              icon: Icon(Icons.person),
              text: 'Perfil',
            ),
          ],
        ),
      ),
    );
  }
}
