import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class MyApp3 extends StatelessWidget {
  const MyApp3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListViewBasic(),
    );
  }
}

class ListViewBasic extends StatefulWidget {
  const ListViewBasic({Key? key}) : super(key: key);

  @override
  _ListViewBasicState createState() => _ListViewBasicState();
}

class _ListViewBasicState extends State<ListViewBasic> {
  var data = generateWordPairs().take(10);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List view basic - Lecture 3"),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index){
          // return Text(data[index], style: TextStyle(fontSize: 50, color: Colors.red),);
                var wp = data.elementAt(index);
              return Card(
                elevation: 10,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: ListTile(

                    // leading: Icon(Icons.messenger, color: Colors.orange,),
                    leading: CircleAvatar(
                      backgroundColor: Colors.green,
                      child: Text("${index+1}", style: TextStyle(color:  Colors.red),)),

                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.favorite_border)),
                      ],
                    ),
                    title: Text(wp.asPascalCase, style: TextStyle(color: Colors.blue, fontSize: 20),),
                  ),
                ),
              );
        })
      ),
    );
  }
}
