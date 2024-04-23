import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: Home(),debugShowCheckedModeBanner: false,));
}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String price = '';
  double gst = 0;
  double GST_price = 0;
  double Rate = 0;
  double i =0;

  List c1 = [
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("PRICE", style: TextStyle(fontSize: 20)),
                      Align(alignment: Alignment.centerRight,child: Text("$price Rs.", style: TextStyle(fontSize: 20))),
                    ],
                  ),
                ),
              ),
              Center(
                  child: Container(
                    height: 75,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Good And Services Tax", style: TextStyle(fontSize: 25)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    c1[0] = Colors.grey;
                                    c1[1] = Colors.white;
                                    c1[2] = Colors.white;
                                    c1[3] = Colors.white;
                                    c1[4] = Colors.white;
                                    gst = double.parse(price);
                                    GST_price = (3 * gst) / 100;
                                    Rate = GST_price;
                                    GST_price = GST_price + gst;
                                  });
                                },
                                child: Box("3", c1[0])),
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    c1[1] = Colors.grey;
                                    c1[0] = Colors.white;
                                    c1[2] = Colors.white;
                                    c1[3] = Colors.white;
                                    c1[4] = Colors.white;
                                    gst = double.parse(price);
                                    GST_price = (5 * gst) / 100;
                                    Rate = GST_price;
                                    GST_price = GST_price + gst;
                                  });
                                },
                                child: Box("5", c1[1])),
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    c1[2] = Colors.grey;
                                    c1[1] = Colors.white;
                                    c1[0] = Colors.white;
                                    c1[3] = Colors.white;
                                    c1[4] = Colors.white;
                                    gst = double.parse(price);
                                    GST_price = (12 * gst) / 100;
                                    Rate = GST_price;
                                    GST_price = GST_price + gst;
                                  });
                                },
                                child: Box("12", c1[2])),
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    c1[3] = Colors.grey;
                                    c1[1] = Colors.white;
                                    c1[2] = Colors.white;
                                    c1[0] = Colors.white;
                                    c1[4] = Colors.white;
                                    gst = double.parse(price);
                                    GST_price = (18 * gst) / 100;
                                    Rate = GST_price;
                                    GST_price = GST_price + gst;
                                  });
                                },
                                child: Box("18", c1[3])),
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    c1[4] = Colors.grey;
                                    c1[1] = Color(0xffEEEEEE);
                                    c1[2] = Color(0xffEEEEEE);
                                    c1[3] = Color(0xffEEEEEE);
                                    c1[0] = Color(0xffEEEEEE);
                                    gst = double.parse(price);
                                    GST_price = (28 * gst) / 100;
                                    Rate = GST_price;
                                    GST_price = GST_price + gst;
                                  });
                                },
                                child: Box("28", c1[4])),
                          ],
                        )
                      ],
                    ),
                  )),
              Container(
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("GST PRICE", style: TextStyle(fontSize: 18)),

                      Align(alignment: Alignment.centerRight,child: Text("$GST_price Rs.", style: TextStyle(fontSize: 18,overflow: TextOverflow.clip))),
                    ],
                  ),
                ),
              ),
              Container(
                width: 250,
                height: 75,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("CGST/SGST", style: TextStyle(fontSize: 20)),
                    Text("${Rate / 2}", style: TextStyle(fontSize: 20)),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          InkWell(
                              onTap: () {
                                setState(() {
                                  price = price + '7';
                                });
                              },
                              child: Box2("7")),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  price = price + '8';
                                });
                              },
                              child: Box2("8")),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  price = price + '9';
                                });
                              },
                              child: Box2("9")),
                        ],
                      ),
                      Row(
                        children: [
                          InkWell(
                              onTap: () {
                                setState(() {
                                  price = price + '4';
                                });
                              },
                              child: Box2("4")),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  price = price + '5';
                                });
                              },
                              child: Box2("5")),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  price = price + '6';
                                });
                              },
                              child: Box2("6")),
                        ],
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        price = '';
                      });
                    },
                    child: Container(
                      width: 65,
                      height: 175,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(border: Border.all(width: 2,color: Colors.red),
                          color: Colors.green.shade800,
                          borderRadius: BorderRadius.circular(50)),
                      child: Text("C",
                          style: TextStyle(fontSize: 30, color: Colors.white)),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          InkWell(
                              onTap: () {
                                setState(() {
                                  price = price + '1';
                                });
                              },
                              child: Box2("1")),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  price = price + '2';
                                });
                              },
                              child: Box2("2")),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  price = price + '3';
                                });
                              },
                              child: Box2("3")),
                        ],
                      ),
                      Row(
                        children: [
                          InkWell(
                              onTap: () {
                                setState(() {
                                  price = price + '00';
                                });
                              },
                              child: Box2("00")),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  price = price + '0';
                                });
                              },
                              child: Box2("0")),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  price = price + '.';
                                });
                              },
                              child: Box2(".")),
                        ],
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        price=price.substring(0,price.length-1);
                      });
                    },
                    child: Container(
                      width: 65,
                      height: 175,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2,color: Colors.red),
                          color: Colors.green.shade800,
                          borderRadius: BorderRadius.circular(50)),
                      child: Icon(Icons.backspace_outlined,
                          color: Colors.white, size: 25),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget Box(String data, Color color) {
    return Container(
      height: 30,
      width: 50,
      decoration:
      BoxDecoration(color: color, borderRadius: BorderRadius.circular(8)),
      alignment: Alignment.center,
      child: Text("$data%", style: TextStyle(fontSize: 18)),
    );
  }

  Widget Box2(String data) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        height: 75,
        width: 75,
        alignment: Alignment.center,
        child: Text("$data", style: TextStyle(fontSize: 25)),
      ),
    );
  }
}