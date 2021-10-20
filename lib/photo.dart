
import 'dart:convert';

class Photo{


  // {
  // "albumId": 1,
  // "id": 1,
  // "title": "accusamus beatae ad facilis cum similique qui sunt",
  // "url": "https://via.placeholder.com/600/92c952",
  // "thumbnailUrl": "https://via.placeholder.com/150/92c952"
  // }
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;
  Photo(this.albumId, this.id, this.title, this.url, this.thumbnailUrl);

  static get http => null;///
  static Future<List<Photo>> fetchData() async{
    String url = "https://jsonplaceholder.typicode.com/photos";
    var client = http.Client();
    var response = await client.get(Uri.parse(url));
    if(response.statusCode  ==200){
      print('Tai thanh cong');
      var result = response.body;
      ///print(result);
      var jsonData = jsonDecode(result);

      List<Photo> ls = [];
      for(var item in jsonData){
        var albumId = item['albumId'];
        var id = item['id'];
        var title = item['title'];
        var url = item['url'];
        var thumbnailUrl = item['thumbnailUrl'];
        Photo p = Photo(albumId,id,title,url,thumbnailUrl);
        ls.add(p);
      }
      return ls;
    }
    else{
      print("Tai that bai");
      throw Exception("Loi lay du lieu. Chi tiet: ${response.statusCode}");
    }
  }
}