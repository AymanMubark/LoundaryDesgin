import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(children: <Widget>[
        Container(
          height: 130,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  image: AssetImage('assets/images/appbar.png'),
                  fit: BoxFit.cover)),
        ),
        Scaffold(
          drawer: buildDrawer(context),
          backgroundColor: Colors.transparent,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(75),
            child: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              centerTitle: true,
              title: Text(widget.title),
              actions: <Widget>[Icon(FontAwesomeIcons.questionCircle)],
            ),
          ),
          body: Container(
            margin: EdgeInsets.only(top: 0),
            height: double.infinity,
            color: Colors.transparent,
            child: ListView(
              children: <Widget>[
                Container(
                  color: Colors.transparent,
                  margin: EdgeInsets.only(left: 8),
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      buildCategoryButton(
                          title: 'Man',
                          titleColor: Colors.white,
                          iconColor: Colors.white,
                          color: Colors.orange,
                          iconData: FontAwesomeIcons.male),
                      buildCategoryButton(
                          title: 'Woman',
                          color: Colors.white,
                          iconData: FontAwesomeIcons.female),
                      buildCategoryButton(
                          title: 'Woman',
                          color: Colors.white,
                          iconData: FontAwesomeIcons.female),
                      buildCategoryButton(
                          title: 'Woman',
                          color: Colors.white,
                          iconData: FontAwesomeIcons.female),
                      buildCategoryButton(
                          title: 'Woman',
                          color: Colors.white,
                          iconData: FontAwesomeIcons.female),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                  child: Container(
                    height: 40,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        buildProviderButton(haveIcon: true),
                        buildProviderButton(),
                        buildProviderButton(),
                        buildProviderButton(),
                        buildProviderButton(),
                      ],
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                        topRight: Radius.circular(25)),
                  ),
                  child: ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                    leading: new Icon(Icons.search),
                    title: new TextField(
                      // controller: controller,
                      decoration: new InputDecoration(
                          hintText: 'Search', border: InputBorder.none),
                      onChanged: (String value) {
                        // onSearchTextChanged(value);
                      },
                    ),
                    trailing: new IconButton(
                      icon: new Icon(Icons.cancel),
                      onPressed: () {
                        // controller.clear();
                        // onSearchTextChanged('');
                      },
                    ),
                  ),
                ),
                Container(
                  height: 480,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: <Widget>[
                      buildProductCard(),
                      buildProductCard(),
                      buildProductCard(),
                      buildProductCard(),
                      buildProductCard(),
                      buildProductCard(),
                      buildProductCard(),
                      buildProductCard(),
                      buildProductCard(),
                      buildProductCard(),
                      buildProductCard(),
                      buildProductCard(),
                      buildProductCard(),
                      buildProductCard(),
                      buildProductCard(),
                      buildProductCard(),
                      buildProductCard(),
                      buildProductCard(),
                      buildProductCard(),
                      buildProductCard(),
                      buildProductCard(),
                      buildProductCard(),
                      buildProductCard(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: Container(
            padding: EdgeInsets.all(2),
            color: Colors.white,
            child: FloatingActionButton(
              onPressed: () {},
              tooltip: 'Increment',
              child: Icon(Icons.shopping_cart),
            ),
          ),
        ),
      ]),
    );
  }

  Padding buildProductCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.tshirt,
                    size: 30,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Blue Code T Shert'),
                      Text(
                        '100.0 AED',
                        style: TextStyle(color: Colors.orange),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    color: Colors.blue,
                    icon: Icon(
                      FontAwesomeIcons.cartPlus,
                      size: 16,
                    ),
                    onPressed: () {},
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text("12",
                          style: TextStyle(
                            color: Colors.blue,
                          )),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                  IconButton(
                    color: Colors.blue,
                    icon: Icon(
                      FontAwesomeIcons.cartArrowDown,
                      size: 16,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding buildCategoryButton(
      {@required String title,
      Color titleColor = Colors.blue,
      Color color = Colors.white,
      @required IconData iconData,
      Color iconColor = Colors.blue}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: RaisedButton.icon(
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(3.0),
        ),
        color: color,
        icon: Icon(
          iconData,
          color: iconColor,
        ),
        label: Text(
          '$title',
          style: TextStyle(color: titleColor),
        ),
        onPressed: () {},
      ),
    );
  }

  Padding buildProviderButton(
      {Color color = Colors.white, bool haveIcon = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: haveIcon
          ? RaisedButton.icon(
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10.0),
              ),
              color: color,
              label: Text('Man', style: TextStyle(color: Colors.blue)),
              icon: Icon(
                FontAwesomeIcons.star,
                size: 12,
                color: Colors.orange,
              ),
              onPressed: () {},
            )
          : RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(15.0),
              ),
              color: color,
              child: Text('Man', style: TextStyle(color: Colors.blue)),
              onPressed: () {},
            ),
    );
  }

  Drawer buildDrawer(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            padding: EdgeInsets.all(0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 30,
                  foregroundColor: Colors.white,
                  child: Image.asset('assets/images/man.png'),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Ayman Mubarak Ahmed',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 8,
                ),
                Text('24996756562', style: TextStyle(color: Colors.white)),
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                    image: AssetImage('assets/images/appbar.png'),
                    fit: BoxFit.cover)),
          ),
          ListTile(
            leading: Icon(
              FontAwesomeIcons.home,
              color: Colors.blue,
            ),
            title: Text(
              'Home',
            ),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              FontAwesomeIcons.userCircle,
              color: Colors.blue,
            ),
            title: Text(
              'Profile',
            ),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              FontAwesomeIcons.list,
              color: Colors.blue,
            ),
            title: Text(
              'My Order',
            ),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              FontAwesomeIcons.moneyBillAlt,
              color: Colors.blue,
            ),
            title: Text(
              'Prices',
            ),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              FontAwesomeIcons.signOutAlt,
              color: Colors.blue,
            ),
            title: Text(
              'Logout',
            ),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              FontAwesomeIcons.shareAlt,
              color: Colors.blue,
            ),
            title: Text(
              'Share',
            ),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          Center(
            child: Text('Version 1.0.0'),
          )
        ],
      ),
    );
  }
}
