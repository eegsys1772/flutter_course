
import 'package:flutter_app/sanpham.dart';
import 'package:flutter/material.dart';

class MyApp7 extends StatelessWidget {
  const MyApp7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyCart(),
    );
  }
}

class MyCart extends StatefulWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  _MyCartState createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {

  late Future<List<Product>> lsProduct;

  @override
  void initState() {

    super.initState();
    lsProduct = Product.fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: const Text("Products")),
      body: FutureBuilder(
        future: lsProduct,
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot){
          if (snapshot.hasData)
          {
            var data = snapshot.data as List<Product>;
            return GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 100,
                  childAspectRatio: 1,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 15,
                  mainAxisExtent: 300,
                ),
                itemCount: data.length,
                itemBuilder: (BuildContext context, int index)
                {
                  Product p = data[index];
                  return Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.network(p.image, height: 150, width: 100,),
                        Text(p.title),
                        Text("Giá: "+p.price.toString()),
                        //Text("Description: "+p.description),
                        Text("Category: "+p.category),
                        ElevatedButton(
                            onPressed: (){},
                            child: Icon(Icons.add_shopping_cart_sharp)
                        ),
                      ],
                    ),
                  );
                }
            );
          }
          else
          {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

