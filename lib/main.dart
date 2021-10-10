import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lime,
      ),
      home: MyHomePage(title: 'CarrotWallet'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //late Client httpClient;
  //late Web3Client ethClient;
  bool data = true;
  int? myAmount = 0;
  //final myAddress = "0x0ea5128DbFA405b7CEE240ffc4A8149C2CE2e054";
  var myData;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomLeft,
                colors: [Colors.deepOrange.shade600, Colors.orange])),
        child: Scaffold(
          // By defaut, Scaffold background is white
          // Set its value to transparent
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.green.shade600,
            title: Text(
              'CarrotWallet',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 15,
                fontStyle: FontStyle.normal,

                //height: 2
              ),
            ).centered(),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(kToolbarHeight),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 20,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            color: Colors.orange,
                            width: 10,
                          ),
                          Container(
                              decoration: BoxDecoration(
                                color: Colors.green.shade800,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 7,
                                    offset: Offset(0, 1),
                                  ),
                                ],
                              ),
                              width: MediaQuery.of(context).size.width - 100),
                          Container(
                              width: 10,
                              decoration: BoxDecoration(
                                color: Colors.orange.shade800,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 7,
                                    offset: Offset(0, 1),
                                  ),
                                ],
                              )),
                        ]),
                  ),
                  Container(
                    height: 20,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              width: 30,
                              decoration: BoxDecoration(
                                color: Colors.orange.shade800,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 7,
                                    offset: Offset(0, 10),
                                  ),
                                ],
                              )),
                          Container(
                              width: MediaQuery.of(context).size.width - 100),
                          Container(
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.orange.shade800,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 7,
                                  offset: Offset(0, 10),
                                ),
                              ],
                            ),
                          ),
                        ]),
                  ),
                  Container(
                    height: 20,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              width: 70,
                              decoration: BoxDecoration(
                                color: Colors.orange.shade800,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 7,
                                    offset: Offset(0, 10),
                                  ),
                                ],
                              )),
                          Container(
                              width: MediaQuery.of(context).size.width - 200),
                          Container(
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.orange.shade800,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 7,
                                  offset: Offset(0, 10),
                                ),
                              ],
                            ),
                          ),
                        ]),
                  ),
                  Container(
                    height: 20,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              width: 125,
                              decoration: BoxDecoration(
                                color: Colors.orange.shade800,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 7,
                                    offset: Offset(0, 10),
                                  ),
                                ],
                              )),
                          Container(
                              width: MediaQuery.of(context).size.width - 300),
                          Container(
                            width: 125,
                            decoration: BoxDecoration(
                              color: Colors.orange.shade800,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 7,
                                  offset: Offset(0, 10),
                                ),
                              ],
                            ),
                          ),
                        ]),
                  ),
                  Container(
                    height: 20,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              width: 175,
                              decoration: BoxDecoration(
                                color: Colors.orange.shade800,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 7,
                                    offset: Offset(0, 10),
                                  ),
                                ],
                              )),
                          Container(
                              width: MediaQuery.of(context).size.width - 350),
                          Container(
                            width: 175,
                            decoration: BoxDecoration(
                              color: Colors.orange.shade800,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 7,
                                  offset: Offset(0, 10),
                                ),
                              ],
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
            ),
          ),

          body: ZStack([
            /*VxBox()
                .green600
                .size(context.screenWidth, context.percentHeight * 5)
                .make(), */
            VStack([
              /*(context.percentHeight * 0.1).heightBox,
              "Main Wallet".text.xl2.white.bold.center.makeCentered().py4(),
              (context.percentHeight * 0.1).heightBox,*/
              VxBox(
                      child: VStack([
                //"Balance".text.white.xl2.makeCentered(),
                "Main Wallet".text.white.makeCentered(),
                2.heightBox,
                data
                    ? "\$0".text.bold.xl6.white.makeCentered()
                    : CircularProgressIndicator().centered(),
                HStack(
                  [
                    Column(
                      children: [
                        MaterialButton(
                          color: Colors.orange.shade600,
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Icon(LineIcons.arrowCircleUp,
                                color: Colors.white, size: 50),
                          ),
                          shape: CircleBorder(),
                          splashColor: Colors.white,
                          onPressed: () {},
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                            "Send",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontStyle: FontStyle.normal,
                                height: 1),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        MaterialButton(
                          color: Colors.orange.shade600,
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Icon(LineIcons.arrowCircleDown,
                                color: Colors.white, size: 50),
                          ),
                          shape: CircleBorder(),
                          splashColor: Colors.white,
                          onPressed: () {},
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                            "Receive",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontStyle: FontStyle.normal,
                                height: 1),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        MaterialButton(
                          color: Colors.orange.shade600,
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Icon(LineIcons.gift,
                                color: Colors.white, size: 50),
                          ),
                          shape: CircleBorder(),
                          splashColor: Colors.white,
                          onPressed: () {},
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                            "Buy",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontStyle: FontStyle.normal,
                                height: 1),
                          ),
                        ),
                      ],
                    ),
                  ],
                  alignment: MainAxisAlignment.spaceAround,
                  axisSize: MainAxisSize.max,
                ).p16()
              ]))
                  .p16
                  .orange600
                  .size(context.screenWidth, context.percentHeight * 33)
                  .alignCenter
                  .roundedLg
                  .shadowXl
                  .make()
                  .p16(),
              5.heightBox,
            ]),
            Stack(children: [
              Container(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40.0)),
                    image: DecorationImage(
                      image: AssetImage("assets/clipart2103643.png"),
                      colorFilter: new ColorFilter.mode(
                          Colors.black.withOpacity(1), BlendMode.dstIn),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.orange.shade600,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  height: MediaQuery.of(context).size.height / 2.6,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "MY COINS",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            LineIcons.plusCircle,
                            color: Colors.white,
                          ),
                          ListView.separated(
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              //physics: ScrollPhysics(),
                              itemBuilder: (context, index) => ListTile(
                                    title: Text('YIGIT'),
                                  ),
                              separatorBuilder: (context, index) => Divider(),
                              itemCount: 3),
                        ],
                      ),
                    ),
                  ),

                  // child: Padding(
                  //   padding:
                  //       const EdgeInsets.symmetric(horizontal: 20, vertical: 8),

                  //   // child: ListView.builder(
                  //   //     physics: BouncingScrollPhysics(),
                  //   //     shrinkWrap: true,
                  //   //     itemCount: 10,
                  //   //     itemBuilder: (context, index) {
                  //   //       return Text(
                  //   //         'BTC',
                  //   //         style: TextStyle(
                  //   //             fontSize: 20, color: Colors.white, height: 2),
                  //   //       ).p4();
                  //   //     }),
                  // ),
                ),
              ).p24(),
            ])
          ]),
        ));
  }
}
