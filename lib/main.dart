import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//internal imports
import 'package:pwc_furniture/components/horizontal_listview.dart';
import 'package:pwc_furniture/components/products.dart';
import 'package:pwc_furniture/pages/cart_shp.dart';
import 'package:pwc_furniture/pages/unityPage.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 170.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/bedroom.png'),
          AssetImage('images/deluxe_sofa.png'),
          AssetImage('images/drawing_room.png'),
          AssetImage('images/hip.png'),
          AssetImage('images/kitchen_1.png'),
          AssetImage('images/sofa_set.png'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 6.0,
      ),
    );

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.5,
        backgroundColor: Colors.redAccent,
        title: Text('FurnitureApp'),
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
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
              }),
          new IconButton(
              icon: Icon(
                Icons.camera_alt,
                color: Colors.white,
              ),

              //calling vr unity part

              onPressed: ()

               async {
                 Navigator.of(context).push((MaterialPageRoute(builder: (BuildContext context) => UnityTestingWrapper() )));

              },)
        ],
      ),
      drawer: new Drawer(
        child: ListView(
          children: [
            //header
            new UserAccountsDrawerHeader(
              accountName: Text('Tirtharup Mukherjee̥'),
              accountEmail: Text('tirtharup.mukherjee@pwc.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white,),
                ),
              ),
              decoration: new BoxDecoration(
                  color: Colors.blueAccent
              ),
            ),

            //body
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home, color: Colors.red),

              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard, color: Colors.red),

              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person, color: Colors.red),

              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket, color: Colors.red),
              ),
            ),

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
              },
              child: ListTile(
                title: Text('Shopping Cart'),
                leading: Icon(Icons.shopping_cart, color: Colors.red),
              ),
            ),

            Divider(),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings, color: Colors.green,),

              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help, color: Colors.blue,),

              ),
            ),
          ],
        ),
      ),

      body: new ListView(
        children: [
          image_carousel,
          //padding widget
          new Padding(padding: const EdgeInsets.all(8.0),
            child: new Text('Categories', style: new TextStyle(fontSize: 20.0,),),),

          //Horizontal List View begins
          HorizontalList(),

          //padding widget
          new Padding(padding: const EdgeInsets.all(20.0),
            child: new Text('Hot Products', style: new TextStyle(fontSize: 20.0,),),),

          //grid view
          Container(
            height: 320.0,
            child: Products(),
          )




        ],
      ),
    );
  }
}
