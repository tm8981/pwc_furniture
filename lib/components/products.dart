import 'package:flutter/material.dart';
import 'package:pwc_furniture/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Retro Chair",
      "picture": "images/products/chair1.jpg",
      "old_price": 2000,
      "price": 1500,
    },
    {
      "name": "Work Chair",
      "picture": "images/products/chair2.jpg",
      "old_price": 6780,
      "price": 5500,
    },
    {
      "name": "Deluxe Bed",
      "picture": "images/products/bed1.png",
      "old_price": 40000,
      "price": 35000,
    },
    {
      "name": "Dining Set",
      "picture": "images/products/dt1.png",
      "old_price": 15000,
      "price": 10000,
    },
    {
      "name": "Wirechair",
      "picture": "images/products/wirechair.png",
      "old_price": 2500,
      "price": 1500,
    },
    {
      "name": "Dining Set Small",
      "picture": "images/products/dt2.png",
      "old_price": 9000,
      "price": 7500,
    },
    {
      "name": "Single Bed",
      "picture": "images/products/bed2.png",
      "old_price": 17000,
      "price": 15000,
    },
    {
      "name": "Sofa Bed",
      "picture": "images/products/bed3.png",
      "old_price": 20000,
      "price": 15000,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            product_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_final_price: product_list[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final product_name;
  final prod_picture;
  final prod_old_price;
  final prod_final_price;

  Single_prod({
    this.product_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_final_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: product_name,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(

                //passing values of selected product to ProductDetails page

                  builder: (context) => new ProductDetails(
                        prooduct_detail_name: product_name,
                        prooduct_detail_picture: prod_picture,
                        prooduct_detail_new_price: prod_final_price,
                        prooduct_detail_old_price: prod_old_price,
                      ))),
              child: GridTile(
                  footer: Container(
                    color: Colors.white,
                    child: new Row(children: [
                      Expanded(
                        child: Text(product_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                      ),
                      new Text("\Rs $prod_final_price", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 16.0),)
                    ],)
                  ),
                  child: Image.asset(
                    prod_picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
