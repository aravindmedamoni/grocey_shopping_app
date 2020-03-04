import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{

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
                IconButton(icon: Icon(Icons.menu,color: Colors.grey[850],size: 25.0,), onPressed: (){}),
                Spacer(),
                IconButton(icon: Icon(Icons.add_shopping_cart,color: Colors.grey[850],size: 25.0,), onPressed: (){})
              ],
            ),
            SizedBox(
              height:16.0 ,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0,vertical: 6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26.0),
                border: Border.all(color: Colors.grey,width: 1.5,style: BorderStyle.solid)
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search Here',
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  IconButton(icon: Icon(Icons.search,color: Colors.grey, size: 30.0,), onPressed: (){})
                ],
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
                child: Text('Fruits',style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w700,
                ),),
              ),
              Tab(
                child: Text('Vegtables',style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w700,
                ),),
              ),
              Tab(
                child: Text('Nuts',style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w700,
                ),),
              ),
              Tab(
                child: Text('Dairy',style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w700,
                ),),
              ),
            ],),
            Flexible(
              fit: FlexFit.loose,
              child: Container(
                child: TabBarView(
                  controller: tabController,
                    children: <Widget>[
                  Fruits (),
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

class Fruits extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
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


