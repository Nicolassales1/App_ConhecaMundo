import 'package:flutter/material.dart';
import 'card1.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fooderlich',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      body: Center(
        child: _selectedIndex == 0
            ? Container(
                color: Colors.red,
                child: Center(
                  child: Text(
                    'Conteúdo da guia Home',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
              )
            : _selectedIndex == 1
                ? Container(
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        'Conteúdo da guia Search',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),
                  )
                : Container(
                    color: Colors.green,
                    child: Center(
                      child: Text(
                        'Conteúdo da guia Profile',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),
                  ),
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
}
