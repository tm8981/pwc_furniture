import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//my imports
import 'package:pwc_furniture/components/cart_products.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.5,
        backgroundColor: Colors.red,
        title: Text('Shopping Cart'),
        actions: [
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),

      body: new Cart_products(),


      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: [
            Expanded(child: ListTile(
              title: new Text("Total Amount"),
              subtitle: new Text("\$2690"),
            )),

            Expanded(
              child: new MaterialButton(onPressed: (){},
              child: new Text("Check out", style: TextStyle(color:  Colors.white),),
              color: Colors.red,),

            )
          ],
        ),
      ),
    );
  }
}
