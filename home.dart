import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Widget image = new Container(
      height: 220.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/cargills.jpg'),
          AssetImage('assets/keells.jpg'),
          AssetImage('assets/arpico.png'),
          AssetImage('assets/sampath.png'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 750),
        indicatorBgPadding: 1,
      ),
    );
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          centerTitle: true,
          title: Text("SMART PROMO"),
        ),
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountName: Text('Ranul Sathsara'),
                accountEmail: Text('ranul.97@gmail.com'),
                currentAccountPicture: GestureDetector(
                  child: new CircleAvatar(
                    backgroundColor: Colors.black54,
                    child: Icon(Icons.person, color: Colors.white,),
                  ),
                ),
                decoration: new BoxDecoration(
                    color: Colors.redAccent
                ),
              ),
              ListTile(
                //onTap: () {
                  //Navigator.pushReplacement(
                   //   context,
                   //   new MaterialPageRoute(
                   //       builder: (context) => CargillsPage()));
               // },
                title: Text('Cargills Food City'),
                leading: Icon(Icons.shopping_cart),

              ),
              ListTile(
                //onTap: () {
                // Navigator.pushReplacement(
                //    context,
                //   new MaterialPageRoute(
                //     builder: (context) => QuickPage()));
                // },
                title: Text('Keells Super'),
                leading: Icon(Icons.shopping_cart),
              ),
              ListTile(
                //onTap: () {
                // Navigator.pushReplacement(
                //   context,
                //   new MaterialPageRoute(
                //    builder: (context) => QuickPage()));
                // },
                title: Text('Arpico Super center'),
                leading: Icon(Icons.shopping_cart),
              ),
              ListTile(
                //onTap: () {
                //Navigator.pushReplacement(
                //  context,
                //  new MaterialPageRoute(
                //    builder: (context) => CAuickPage()));
                //},
                title: Text('Sampath Food City'),
                leading: Icon(Icons.shopping_cart),
              ),

              ListTile(
                title: Text('Recommendations'),
                leading: Icon(Icons.dashboard),
              ),

              ListTile(
                //onTap: () {
                 // Navigator.pushReplacement(
                  //    context,
                  //    new MaterialPageRoute(
                      //    builder: (context) => NotificationPage()));
                //},
                title: Text('Notifications'),
                leading: Icon(Icons.notifications),
              ),

              ListTile(
                //onTap: () {
                  //Navigator.pushReplacement(
                      //context,
                      //new MaterialPageRoute(
                        //  builder: (context) => supermarkets()));
                //},
                title: Text('Locate Supermarkets'),
                leading: Icon(Icons.pin_drop),
              ),
              Divider(),

              ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
              ),


              ListTile(
                //onTap: () {
                 // Navigator.pushReplacement(
                   //   context,
                     // new MaterialPageRoute(
                       //   builder: (context) => SignUpView()));
               // },
                title: Text('Logout'),
                leading: Icon(Icons.person),
              )
            ],
          ),
        ),
        body: new ListView(
            children: <Widget>[
              image,
              SizedBox(height: 30),
              GestureDetector(
                //onTap: () {
                 // Navigator.of(context).push(new MaterialPageRoute(
                  //    builder: (context) => CargillsregularPage()));
               // },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 16, left: 16),
                      child: Text(
                        "HOT DEALS",
                        style: TextStyle(color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0,),
              Container(
                margin:EdgeInsets.all(8.0),
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  child: InkWell(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,  // add this
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(7.0),
                            topRight: Radius.circular(7.0),
                            bottomLeft: Radius.circular(7.0),
                            bottomRight: Radius.circular(7.0),
                          ),
                          child: Image.asset(
                              'assets/hotdeals.jpg',
                              // width: 300,
                              height: 200,
                              fit:BoxFit.fill
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ]
        )
    );
  }
}







