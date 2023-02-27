import 'package:flutter/material.dart';
import './news.dart';

void main() {
  runApp(Aplikasiradio());
}

class Aplikasiradio extends StatelessWidget {
  const Aplikasiradio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.blue.shade900,
      home: Scaffold(
        body: Container(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                    color: Colors.black,),
                  Text(
                    "Now playing",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                      color: Colors.black
                    ),
                  ),
                  Icon(
                    Icons.more_vert,
                    size: 20,
                    color: Colors.black,)
                ],
              ),
              ),
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                  image: AssetImage('pram.jpg'),
                  fit: BoxFit.cover),)
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "PRAMBOS",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),
            ),
            SizedBox(
              height: 50
            ),
            Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.play_arrow,
                  size: 49,
                  color: Colors.black),
                Icon(
                  Icons.pause,
                  size: 40,
                  color: Colors.black),
                Icon(
                  Icons.stop,
                  size: 40,
                  color: Colors.black)
              ],
            )

          ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center, 
            children: [
              IconButton(
                onPressed: (){
                  Navigator.pushNamed(context, "/news");
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
      ),
    );
  }
}