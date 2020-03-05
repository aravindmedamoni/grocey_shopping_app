import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:groceyshoppingapp/second_screen.dart';
import 'package:groceyshoppingapp/size_config.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              children: <Widget>[
                IconButton(
                    icon: Icon(
                      Icons.menu,
                      color: Colors.grey[850],
                      size: 25.0,
                    ),
                    onPressed: () {}),
                Spacer(),
                IconButton(
                    icon: Icon(
                      Icons.add_shopping_cart,
                      color: Colors.grey[850],
                      size: 25.0,
                    ),
                    onPressed: () {})
              ],
            ),
            SizedBox(
              height: 16.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search Here',
                  suffixIcon: IconButton(icon: Icon(Icons.search,size: 30.0, color: Colors.grey[500],), onPressed: (){}),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      style: BorderStyle.solid,
                      width: 2.0
                    ),
                  )
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            TabBar(
              indicatorColor: Colors.green,
              indicatorWeight: 3.0,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              isScrollable: true,
              controller: tabController,
              tabs: <Widget>[
                Tab(
                  child: Text(
                    'Fruits',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Vegtables',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Nuts',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Dairy',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            Flexible(
              fit: FlexFit.loose,
              child: Container(
                child: TabBarView(controller: tabController, children: <Widget>[
                  Fruits(),
                  Vegetables(),
                  Nuts(),
                  Dairy(),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Vegetables extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Nuts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Dairy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Fruits extends StatefulWidget {
  Fruits({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _FruitsState createState() => _FruitsState();
}

class _FruitsState extends State<Fruits> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 20.0, top: 20.0),
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        CustomCardWidget(
                          title: 'Kiwi',
                          price: '₹90',
                          asset: 'images/kiwi.png',
                          containerColor: Color(0xffF7DFB9),
                          topButtonColor: Color(0XffFAF0DA),
                          onPressed: (){},
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        CustomCardWidget(
                          title: 'Avocado',
                          price: '₹120',
                          asset: 'images/avocado.png',
                          containerColor: Color(0xffC4D4A3),
                          topButtonColor: Color(0XffE0E8CF),
                          onPressed: (){},
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        CustomCardWidget(
                          title: 'Mango',
                          price: '₹100',
                          asset: 'images/mango.png',
                          containerColor: Color(0xffF6E475),
                          topButtonColor: Color(0XffF9EFB0),
                          onPressed: (){},
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 6.0,
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Color(0xffECEDF1)
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
                              child: Column(
                                children: <Widget>[
                                  Text("A Spring surprise", style: TextStyle(
                                      fontFamily: 'OpenSans-Bold',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize:22.0
                                  ),),
                                  SizedBox(height: 10.0,),
                                  Text("40% OFF", style: TextStyle(
                                      fontFamily: 'OpenSans-Bold',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 22.0
                                  ),),
                                  SizedBox(height: 10.0,),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(5.0),
                                        border: Border.all(color: Colors.green)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text("FOODLY SURPRISE", style: TextStyle(
                                          color: Colors.green,
                                          fontFamily: 'OpenSans',
                                          fontSize: 26.0,
                                          fontWeight: FontWeight.bold
                                      ),),
                                    ),
                                  ),
                                  SizedBox(height: 10.0,),
                                  Text("Use the code above for Spring collection purchases",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'OpenSans-Bold',
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  SizedBox(height: 30.0,),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0,),
                        CustomCardWidget(
                          title: 'Mango',
                          price: '₹100',
                          asset: 'images/strawberry.png',
                          containerColor: Color(0xffF6E475),
                          topButtonColor: Color(0XffF9EFB0),
                          onPressed: (){},
                        ),
                        SizedBox(height: 10.0,),
                        CustomCardWidget(
                          title: 'Mango',
                          price: '₹100',
                          asset: 'images/papaya.png',
                          containerColor: Color(0xffF6E475),
                          topButtonColor: Color(0XffF9EFB0),
                          onPressed: (){},
                        ),
                        SizedBox(height: 10.0,),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomCardWidget extends StatelessWidget {
  final String title;
  final String asset;
  final Function onPressed;
  final String price;
  final Color containerColor, topButtonColor;

  CustomCardWidget(
      {this.title,
      this.price,
      this.asset,
      this.containerColor,
      this.topButtonColor,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 200.0,
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.topRight,
              child: Container(
                decoration: BoxDecoration(
                    color: topButtonColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.add,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            Image.asset(
              asset,
              fit: BoxFit.contain,
              height: 160.0,
              width: 160.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "$title",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    "Gurugan Mandi Haryana",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: <Widget>[
                            Text(
                              "$price",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 6.0,
                            ),
                            Text(
                              "Per Kilo",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                        ),
                      ),
                      SizedBox(
                        width: 6.0,
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          "View Prices",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold),
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
      onTap: onPressed,
    );
  }
}
