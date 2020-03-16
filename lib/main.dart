import 'package:flutter/material.dart';
import 'package:fluttershoppingcart/models/item.dart';
import 'package:fluttershoppingcart/screens/checkout_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Item> items = [
    Item(title: 'laptop ', price: 500.0),
    Item(title: 'iphone x ', price: 400.0),
    Item(title: 'keyboard ', price: 40.0),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping cart'),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CheckoutPage()));
                  },
                ),
                Text('3')
              ],
            ),
          )
        ],
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index].title),
            trailing: Icon(Icons.add),
            onTap: () {},
          );
        },
      ),
    );
  }
}
