
import 'package:flutter/material.dart';
import 'package:flutter_app/photo.dart';


class MyApp4 extends StatelessWidget {
  const MyApp4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListViewAdvanced(),
    );
  }
}

class ListViewAdvanced extends StatefulWidget {
  const ListViewAdvanced({Key? key}) : super(key: key);

  @override
  _ListViewAdvancedState createState() => _ListViewAdvancedState();
}

class _ListViewAdvancedState extends State<ListViewAdvanced> {
  @override
  void initState() {
    // TODO: implement initState
    lsPhoto = Photo.fetchData();
    super.initState();
  }

  late Future<List<Photo>> lsPhoto;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List view nâng cao")),
      body: FutureBuilder(
        future: lsPhoto,
        builder: (BuildContext context, AsyncSnapshot<List<Photo>> snapshot) {
          if (snapshot.hasData) {
            var data = snapshot.data;
            return ListView.builder(
              itemCount: data!.length,
              itemBuilder: (BuildContext context, int index) {
                Photo p = data[index];
                return ListTile(
                  leading: Image.network(p.thumbnailUrl),
                  title: Text(p.title),
                );
              },
            );
          } else {
            return Center(
                child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}