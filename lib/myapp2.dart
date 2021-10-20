
import 'package:flutter/material.dart';

class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello world",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  String greeting = "Good morning";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Trang Chủ",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        leading: Icon(Icons.home, size: 30),
        actions: [
          IconButton(onPressed: (){
            setState(() {
              greeting = "See you again !!!";
            });
          }, icon: Icon(Icons.add_alert),)
        ],
      ),
      body: Center(
        child: Text("$greeting", style: TextStyle(fontSize: 30)),
      ),
      bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          color: Colors.blue,
          child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.play_arrow,
                      size: 30,
                      color: Colors.amber,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.access_time,
                      size: 30,
                      color: Colors.white,
                    )),
              ],
            ),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });

        },
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}