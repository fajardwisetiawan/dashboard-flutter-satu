import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Tugas Tampilan",
    home: Tampilan(),
  ));
}

class Tampilan extends StatefulWidget {
  @override
  _TampilanState createState() => _TampilanState();
}

class _TampilanState extends State<Tampilan> with SingleTickerProviderStateMixin {
  bool clickedCentreFAB = false;
  int selectedIndex = 0;
  String text;

  void updateTabSelection(int index, String buttonText) {
    setState(() {
      selectedIndex = index;
      text = buttonText;
    });
  }

  TabController controller;

@override
  void initState() {
    controller = new TabController(vsync: this, length: 3);
    controller.addListener(_handleTabSelection);
    super.initState();
  }

  void _handleTabSelection() {
        setState(() {
         });
     }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.cyanAccent[50],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  ClipPath(
                    clipper: CustomShapeClipper(),
                    child: Container(
                      height: 330.0,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                        Colors.indigoAccent[400],
                        Colors.purpleAccent[400]
                      ])),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: const Color(0xFF0E3311).withOpacity(0.0)),
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: 20.0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(Icons.menu),
                                  color: Colors.white,
                                  iconSize: 30.0,
                                  onPressed: () {},
                                ),
                                IconButton(
                                  icon: Icon(Icons.notifications),
                                  color: Colors.white,
                                  iconSize: 30.0,
                                  onPressed: () {},
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(3.0),
                            ),
                            CircleAvatar(
                              backgroundColor: Color(0xFFFFFFFF),
                              child: CircleAvatar(
                                backgroundImage: AssetImage("img/celsi.jpg"),
                                radius: 30.0,
                              ),
                              radius: 32.0,
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Chelsea Island",
                                  style: new TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "@chelseaislan",
                                  style: new TextStyle(
                                    color: Colors.white54,
                                    fontSize: 15.0,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 170.0, right: 25.0, left: 25.0),
                    child: Container(
                      margin: const EdgeInsets.only(top: 40.0),
                      width: double.infinity,
                      height: 210.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(11.0)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                offset: Offset(3.0, 3.0),
                                blurRadius: 50.0)
                          ]),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "My Balance",
                                  style: new TextStyle(
                                      fontSize: 18.0, color: Colors.black),
                                ),
                                Text(
                                  "Rp. 1.000.000",
                                  style: new TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                )
                              ],
                            ),
                          ),
                          Divider(
                            color: Colors.black38,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Material(
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                      color: Colors.deepPurple[50],
                                      child: IconButton(
                                        padding: EdgeInsets.all(15.0),
                                        icon: Icon(Icons.send),
                                        color: Colors.purple,
                                        iconSize: 30.0,
                                        onPressed: () {},
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: Text(
                                        'Send',
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Material(
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                      color: Colors.deepPurple[50],
                                      child: IconButton(
                                        padding: EdgeInsets.all(15.0),
                                        icon: Icon(Icons.payment),
                                        color: Colors.purple,
                                        iconSize: 30.0,
                                        onPressed: () {},
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: Text(
                                        'Pay',
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Material(
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                      color: Colors.deepPurple[50],
                                      child: IconButton(
                                        padding: EdgeInsets.all(15.0),
                                        icon: Icon(Icons.vertical_align_top),
                                        color: Colors.purple,
                                        iconSize: 30.0,
                                        onPressed: () {},
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: Text(
                                        'Top Up',
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Material(
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                      color: Colors.deepPurple[50],
                                      child: IconButton(
                                        padding: EdgeInsets.all(15.0),
                                        icon: Icon(Icons.receipt),
                                        color: Colors.purple,
                                        iconSize: 30.0,
                                        onPressed: () {},
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: Text(
                                        'Request',
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Row(
                              children: <Widget>[
                                CircleAvatar(
                                  backgroundColor: Color(0xFFEDE7F6),
                                  radius: 20.0,
                                  child: Container(
                                    child: Icon(
                                      Icons.shopping_basket,
                                      color: Colors.purpleAccent[400],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text("E-Shopping")
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Row(
                              children: <Widget>[
                                CircleAvatar(
                                  backgroundColor: Color(0xFFEDE7F6),
                                  radius: 20.0,
                                  child: Container(
                                    child: Icon(
                                      Icons.description,
                                      color: Colors.purple[400],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text("Bill Payment")
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 5,
                            child: Row(
                              children: <Widget>[
                                CircleAvatar(
                                  backgroundColor: Color(0xFFEDE7F6),
                                  radius: 20.0,
                                  child: Container(
                                    child: Icon(
                                      Icons.favorite,
                                      color: Colors.red[300],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text("Charity")
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Row(
                              children: <Widget>[
                                CircleAvatar(
                                  backgroundColor: Color(0xFFEDE7F6),
                                  radius: 20.0,
                                  child: Container(
                                    child: Icon(
                                      Icons.card_giftcard,
                                      color: Colors.deepOrange,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text("Send Gift")
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 5,
                            child: Row(
                              children: <Widget>[
                                CircleAvatar(
                                  backgroundColor: Color(0xFFEDE7F6),
                                  radius: 20.0,
                                  child: Container(
                                    child: Icon(
                                      Icons.insert_drive_file,
                                      color: Colors.blue[300],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text("Split Bills")
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Row(
                              children: <Widget>[
                                CircleAvatar(
                                  backgroundColor: Color(0xFFEDE7F6),
                                  radius: 20.0,
                                  child: Container(
                                    child: Icon(
                                      Icons.monetization_on,
                                      color: Colors.green,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text("data")
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10.0,
                        bottom: 20.0,
                        right: 5.0,
                        left: 5.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Promo",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15.0,
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 100.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          UpcomingCard(
                            title: 'Saving Account',
                            subtitle: 'Get up to 10% monthly interest!',
                            gambar: Icons.account_balance_wallet,
                            color1: Colors.purpleAccent[400],
                            color2: Colors.indigoAccent[400],
                          ),
                          UpcomingCard(
                            title: 'Saving Account',
                            subtitle: 'Get up to 10% monthly interest!',
                            gambar: Icons.account_balance_wallet,
                            color1: Colors.purpleAccent[400],
                            color2: Colors.indigoAccent[400],
                          ),
                          UpcomingCard(
                            title: 'Saving Account',
                            subtitle: 'Get up to 10% monthly interest!',
                            gambar: Icons.account_balance_wallet,
                            color1: Colors.purpleAccent[400],
                            color2: Colors.indigoAccent[400],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: new Material(
        color: Colors.white,
        child: new TabBar(
          controller: controller,
          indicatorColor: Colors.purple,
          labelColor: Colors.indigoAccent[400],
          unselectedLabelColor: Colors.purple,
          tabs: <Widget>[
            new Tab(
              text: "My Wallet",
              icon: new Icon(Icons.account_balance_wallet, 
              color: controller.index == 0
                ? Colors.indigoAccent[400]
                : Colors.purple),
            ),
            new Tab(
              text: "Insight",
              icon: new Icon(Icons.favorite,
              color: controller.index == 1
                ? Colors.indigoAccent[400]
                : Colors.purple),
            ),
            new Tab(
              text: "Tool",
              icon: new Icon(Icons.subtitles,
              color: controller.index == 2
                ? Colors.indigoAccent[400]
                : Colors.purple),
            ),
          ],
        ),
      ),

      // floatingActionButton: Padding(
      //   padding: EdgeInsets.only(top: 20),
      //   child: SizedBox(
      //     height: 70,
      //     width: 70,
      //     child: FloatingActionButton(
      //       backgroundColor: Colors.transparent,
      //       elevation: 0,
      //       onPressed: () {},
      //       child: Container(
      //         height: 75,
      //         width: 75,
      //         decoration: BoxDecoration(
      //             border: Border.all(color: Colors.white, width: 4),
      //             shape: BoxShape.circle,
      //             color: Colors.red),
      //         child: Icon(Icons.add, size: 40),
      //       ),
      //     ),
      //   ),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // bottomNavigationBar: new Container(
      //   height: 80.0,
      //   color: Colors.white,
      //   padding: new EdgeInsets.only(top: 20.0),
      //   child: new Theme(
      //     data: Theme.of(context).copyWith(
      //         // sets the background color of the `BottomNavigationBar`
      //         canvasColor: Colors.white,
      //         // sets the active color of the `BottomNavigationBar` if `Brightness` is light
      //         primaryColor: Colors.red,
      //         bottomAppBarColor: Colors.green,
      //         textTheme: Theme.of(context).textTheme.copyWith(
      //             caption: new TextStyle(
      //                 color: Colors
      //                     .grey))), // sets the inactive color of the `BottomNavigationBar`
      //     child: new BottomNavigationBar(
      //         type: BottomNavigationBarType.fixed,
      //         currentIndex: 0,
      //         items: [
      //           BottomNavigationBarItem(
      //               icon: new Icon(Icons.home),
      //               title: new Text('Home'),
      //               backgroundColor: Colors.black),
      //           BottomNavigationBarItem(
      //             icon: new Icon(Icons.search),
      //             title: new Text('Search'),
      //           ),
      //           BottomNavigationBarItem(
      //               icon: Icon(
      //                 Icons.bookmark_border,
      //                 color: Colors.transparent,
      //               ),
      //               title: Text('Center')),
      //           BottomNavigationBarItem(
      //               icon: Icon(Icons.perm_identity), title: Text('Person')),
      //           BottomNavigationBarItem(
      //               icon: Icon(Icons.more_horiz), title: Text('More')),
      //         ]),
      //   ),
      // ),

      // bottomNavigationBar: BottomAppBar(
      //   child: Container(
      //     margin: EdgeInsets.only(left: 12.0,right: 12.0),
      //     child: Padding(
      //       padding: const EdgeInsets.only(left: 50.0,right: 50.0),
      //       child: Row(
      //         mainAxisSize: MainAxisSize.max,
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: <Widget>[
      //           IconButton(
      //             onPressed: (){},
      //             iconSize: 27.0,
      //             icon: Icon(
      //               Icons.account_balance_wallet,
      //               color: selectedIndex == 0
      //               ? Colors.purple
      //               : Colors.grey.shade400,
      //             ),
      //           ),
      //           IconButton(
      //             onPressed: (){},
      //             iconSize: 27.0,
      //             icon: Icon(
      //               Icons.favorite,
      //               color: selectedIndex == 1
      //               ? Colors.purple
      //               : Colors.grey.shade400,
      //             ),
      //           ),
      //           IconButton(
      //             onPressed: (){},
      //             iconSize: 27.0,
      //             icon: Icon(
      //               Icons.call_to_action,
      //               color: selectedIndex == 2
      //               ? Colors.purple
      //               : Colors.grey.shade400,
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}

class CustomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0.0, 450.0 - 200);
    path.quadraticBezierTo(size.width / 2, 330, size.width, 450.0 - 200);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

class UpcomingCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData gambar;
  final Color color1;
  final Color color2;

  UpcomingCard({this.title, this.subtitle, this.gambar, this.color1, this.color2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15.0),
      child: Container(
        width: 300.0,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [color1, color2]), 
            borderRadius: BorderRadius.all(Radius.circular(8.0))),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(
                gambar,   
                color: Colors.yellow[900],
                size: 40.0,         
              ),
              SizedBox(
                width: 15.0,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,                
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(fontSize: 25.0, color: Colors.white),
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(fontSize: 15.0, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
