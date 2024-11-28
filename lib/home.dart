import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  List<Widget> body = const [
    Text(
      "Página Home",
      style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.deepPurple),
    ),
    Text(
      "Página Shoes",
      style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.deepPurple),
    ),
    Text(
      "Página Phones",
      style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.deepPurple),
    ),
    Text(
      "Página Person",
      style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.deepPurple),
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Navegações",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple[400],
        elevation: 0,
      ),
      body: Center(
          child: body[_currentIndex]
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_view_rounded),
              label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.store),
              label: 'Shoes'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_call),
              label: 'Phones'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Person'
          ),
        ],
        onTap: (myIndex) {
          setState(() {
            _currentIndex = myIndex;
          });
        },
      ),
    );
  }
}
