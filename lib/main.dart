import 'package:flutter/material.dart';

void main() {
  runApp(const GpsDoMundo());
}

class GpsDoMundo extends StatelessWidget {
  const GpsDoMundo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final darkTheme = ThemeData.dark();

    return MaterialApp(
      theme: darkTheme,
      title: 'GPS do Mundo',
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fooderlich',
          style: theme.textTheme.titleLarge,
        ),
      ),
      body: Center(
        child: _buildPage(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget _buildPage(int index) {
    switch (index) {
      case 0:
        return Container(
          color: Colors.red,
          child: const Center(
            child: Text('Conteúdo da guia Home'),
          ),
        );
      case 1:
        return Container(
          color: Colors.blue,
          child: const Center(
            child: Text('Conteúdo da guia Search'),
          ),
        );
      case 2:
        return Container(
          color: Colors.green,
          child: const Center(
            child: Text('Conteúdo da guia Profile'),
          ),
        );
      default:
        return Container();
    }
  }
}
