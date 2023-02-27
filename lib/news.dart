import 'package:flutter/material.dart';
import './radio.dart';

void main() {
  runApp(News());
}

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              alignment: Alignment.center,
              child: Text("Jadwal Tayang",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  color: Colors.deepOrange.shade200),
              height: 60,
              width: double.infinity,

            ),
            Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  color: Colors.deepOrange.shade200),
              height: 60,
              width: double.infinity,
              
            ),
            Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  color: Colors.deepOrange.shade200),
              height: 60,
              width: double.infinity,
              
            ),
            Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  color: Colors.deepOrange.shade200),
              height: 60,
              width: double.infinity,
              
            )
          ],
        ),
         bottomNavigationBar: BottomAppBar(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center, 
            children: [
              IconButton(
                onPressed: (){
                  Navigator.pushNamed(context, "/radio");
                },
                icon: Icon(Icons.newspaper)),
              IconButton(
                onPressed: (){
                  Navigator.pushNamed(context, "/radio");
                },
                icon: Icon(Icons.podcasts)),
              IconButton(
                onPressed: (){
                  Navigator.pushNamed(context, "/radio");
                },
                icon: Icon(Icons.stream))
            ],
          ),
        ),
      //   bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.newspaper),
      //       label: String.fromEnvironment("Pesanan"),
      //       // activeIcon: Navigator.push(context, route)
      //       // title: Text('Pesanan'),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.podcasts),
      //       label: String.fromEnvironment("mail"),
          
      //       // title: Text('Inbox'),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.stream),
      //       label: String.fromEnvironment("Person")
      //       // title: Text('Akun'),
      //     ),
      //   ],
      //   // currentIndex: _selectedNavbar,
      //   selectedItemColor: Colors.green,
      //   unselectedItemColor: Colors.grey,
      //   showUnselectedLabels: true,
      //   // onTap: _changeSelectedNavBar,
      // ),
      ),
    );
  }
}