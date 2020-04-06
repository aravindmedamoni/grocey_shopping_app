import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceyshoppingapp/size_config.dart';

class FruitDetailsScreen extends StatelessWidget {
  final String image;
  final String fruitName;
  final String price;

  FruitDetailsScreen(
      {@required this.image, @required this.fruitName, @required this.price});

  @override
  Widget build(BuildContext context) {
    var countValue = 2;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffc4d4a3),
        elevation: 0.0,
        title: Text('Fruit details'),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
                size: 30.0,
              ),
              onPressed: null),
          IconButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 30.0,
              ),
              onPressed: null)
        ],
      ),
      body: Column(
        children: <Widget>[
          Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.5,
                color: Color(0xffc4d4a3),
              ),
              Positioned(
                  top: 10.0,
                  left: MediaQuery.of(context).size.width / 5,
                  right: MediaQuery.of(context).size.width / 5,
                  child: Image.asset(
                    image,
                    height: 200,
                    width: 200,
                  )),
              Positioned(
                top: MediaQuery.of(context).size.height / 3.1,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(35.0),
                        topLeft: Radius.circular(35.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 14.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            fruitName,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            '1 Pc (500G - 900G)',
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Text(
                            '$fruitName trees are partially self-pollinating and are'
                            ' often propogated through grafting to maintain a'
                            'predictable quality of the fruit',
                            style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 25.0,
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                flex: 3,
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                        border: Border.all(
                                            color: Colors.grey[600],
                                            width: 2.0,
                                            style: BorderStyle.solid),
                                      ),
                                      child: Icon(
                                        Icons.remove,
                                        size: 30.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Text(
                                      '$countValue',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                        border: Border.all(
                                            color: Colors.grey[600],
                                            width: 2.0,
                                            style: BorderStyle.solid),
                                      ),
                                      child: Icon(
                                        Icons.add,
                                        size: 30.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                  child: Text(
                                price,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 27.0,
                                    fontWeight: FontWeight.bold),
                              )),
                            ],
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(Icons.airport_shuttle),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    "Standard: Friday Evening",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 0.2,
                                        fontSize: 14.0,
                                        fontFamily: 'OpenSans'),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Text(
                                "You save : 20%",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.0,
                                    fontFamily: 'OpenSans-Bold'),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey[600],
                                      width: 1.5,
                                      style: BorderStyle.solid,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Padding(
                                  padding: const EdgeInsets.all(14.0),
                                  child: Icon(Icons.favorite_border),
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Expanded(
                                flex: 2,
                                child: CupertinoButton(
                                  color: Colors.green,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(
                                          Icons.shopping_cart,
                                          color: Colors.white,
                                          size: 30.0,
                                        ),
                                        SizedBox(
                                          width: 10.0,
                                        ),
                                        Text(
                                          'Bag it',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 22),
                                        )
                                      ],
                                    ),
                                    onPressed: (){}),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
