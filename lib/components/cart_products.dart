//import 'dart:html';

import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_cart = [
    {
      "name": "Retro Chair",
      "picture": "images/products/chair1.jpg",
      "price": 1500,
      "size": "L",
      "color": "Sepia",
      "quantity": 1,
    },
    {
      "name": "Single Bed",
      "picture": "images/products/bed2.png",
      "price": 24760,
      "size": "S",
      "color": "Black",
      "quantity": 1,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: Products_on_cart.length,
        // ignore: missing_return
        itemBuilder: (context, index) {
          return Single_cart_product(
            cart_product_name: Products_on_cart[index]["name"],
            cart_prod_color: Products_on_cart[index]["color"],
            cart_prod_qty: Products_on_cart[index]["quantity"],
            cart_product_size: Products_on_cart[index]["size"],
            cart_prod_final_price: Products_on_cart[index]["price"],
            cart_prod_picture: Products_on_cart[index]["picture"],
          );
        });
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_product_name;
  final cart_prod_picture;
  final cart_prod_final_price;
  final cart_product_size;
  final cart_prod_color;
  final cart_prod_qty;

  Single_cart_product(
      {this.cart_product_name,
      this.cart_prod_color,
      this.cart_prod_final_price,
      this.cart_prod_picture,
      this.cart_prod_qty,
      this.cart_product_size});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: new Image.asset(
          cart_prod_picture,
          width: 80.0,
          height: 80.0,
        ),
        title: new Text(cart_product_name),
        subtitle: new Column(
          children: [
            new Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Text("Size:"),
                ),

                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(
                    cart_product_size,
                    style: TextStyle(color: Colors.red),
                  ),
                ),

                new Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: new Text("Color:"),
                ),

                // for product color

                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(
                    cart_prod_color,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),

            //for price

            new Container(
              alignment: Alignment.topLeft,
              child: new Text(
                "\Rs ${cart_prod_final_price}",
                style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent),
              ),
            )
          ],
        ),

      ),
    );
  }
}
