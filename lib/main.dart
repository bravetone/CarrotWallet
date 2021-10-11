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

  Widget _customContainer({
    double? width,
    Color? color,
    BoxDecoration? decoration,
  }) {
    return Container(
      width: width,
      color: decoration == null ? color : null,
      decoration: decoration != null ? decoration : null,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
            colors: [
              Colors.deepOrange.shade600,
              Colors.orange,
            ],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            backgroundColor: Colors.green.shade800,
            title: Text(
              'CarrotWallet',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 22,
              ),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(kToolbarHeight * 2),
              child: Container(
                color: Colors.orange.shade800,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _customContainer(
                            color: Colors.orange.shade800,
                            width: 10,
                          ),
                          Expanded(
                            child: _customContainer(
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
                            ),
                          ),
                          _customContainer(
                            color: Colors.orange.shade800,
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _customContainer(
                            color: Colors.orange.shade800,
                            width: 30,
                          ),
                          Expanded(
                            child: _customContainer(
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
                            ),
                          ),
                          _customContainer(
                            color: Colors.orange.shade800,
                            width: 30,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _customContainer(
                            color: Colors.orange.shade800,
                            width: 70,
                          ),
                          Expanded(
                            child: _customContainer(
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
                            ),
                          ),
                          _customContainer(
                            color: Colors.orange.shade800,
                            width: 70,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _customContainer(
                            color: Colors.orange.shade800,
                            width: 125,
                          ),
                          Expanded(
                            child: _customContainer(
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
                            ),
                          ),
                          _customContainer(
                            color: Colors.orange.shade800,
                            width: 125,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _customContainer(
                            width: 175,
                            decoration: BoxDecoration(
                              color: Colors.orange.shade800,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.25),
                                  spreadRadius: 0.1,
                                  blurRadius: 7,
                                  offset: Offset(0, 5),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: _customContainer(
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
                            ),
                          ),
                          _customContainer(
                            width: 175,
                            decoration: BoxDecoration(
                              color: Colors.orange.shade800,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.25),
                                  spreadRadius: 0.1,
                                  blurRadius: 7,
                                  offset: Offset(0, 5),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
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
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "MY COINS",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Icon(
                                  LineIcons.plusCircle,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          ListView.separated(
                            physics: BouncingScrollPhysics(),
                            separatorBuilder: (context, index) => Divider(),
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemBuilder: (context, index) => ListTile(
                              title: Text('YIGIT'),
                            ),
                            itemCount: 13,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ).p24(),
            ])
          ]),
        ));
  }
}
