import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:crypto_font_icons/crypto_font_icons.dart';

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
        color: Colors.orange.shade800,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            backgroundColor: Colors.green.shade800,
            /*title: Text(
              'CarrotWallet',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 15,
              ),
            ),*/
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(kToolbarHeight),
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
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.4),
                                  spreadRadius: 1,
                                  blurRadius: 70,
                                  offset: Offset(0, 1),
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
                                    blurRadius: 10,
                                    offset: Offset(0, 1),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          _customContainer(
                            color: Colors.orange.shade800,
                            width: 10,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.4),
                                  spreadRadius: 1,
                                  blurRadius: 70,
                                  offset: Offset(0, 1),
                                ),
                              ],
                            ),
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
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.4),
                                  spreadRadius: 1,
                                  blurRadius: 70,
                                  offset: Offset(0, 1),
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
                                    blurRadius: 10,
                                    offset: Offset(0, 1),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          _customContainer(
                            color: Colors.orange.shade800,
                            width: 30,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.4),
                                  spreadRadius: 1,
                                  blurRadius: 70,
                                  offset: Offset(0, 1),
                                ),
                              ],
                            ),
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
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.4),
                                  spreadRadius: 1,
                                  blurRadius: 70,
                                  offset: Offset(0, 1),
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
                                    blurRadius: 10,
                                    offset: Offset(0, 1),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          _customContainer(
                            color: Colors.orange.shade800,
                            width: 70,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.4),
                                  spreadRadius: 1,
                                  blurRadius: 70,
                                  offset: Offset(0, 1),
                                ),
                              ],
                            ),
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
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.4),
                                  spreadRadius: 1,
                                  blurRadius: 70,
                                  offset: Offset(0, 1),
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
                                    color: Colors.black.withOpacity(0.4),
                                    spreadRadius: 1,
                                    blurRadius: 10,
                                    offset: Offset(0, 1),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          _customContainer(
                            color: Colors.orange.shade800,
                            width: 125,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.4),
                                  spreadRadius: 1,
                                  blurRadius: 70,
                                  offset: Offset(0, 1),
                                ),
                              ],
                            ),
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
                            color: Colors.orange.shade900,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.05),
                                  spreadRadius: 0.1,
                                  blurRadius: 10,
                                  offset: Offset(1, 1),
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
                                    color: Colors.black.withOpacity(1),
                                    spreadRadius: 1,
                                    blurRadius: 42,
                                    offset: Offset(0.5, 0.5),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          _customContainer(
                            width: 175,
                            color: Colors.orange.shade900,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0),
                                  spreadRadius: 1,
                                  blurRadius: 0.5,
                                  offset: Offset(0, 0.5),
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
                    ? "\$12542.32".text.bold.xl6.white.makeCentered()
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
                          Colors.black.withOpacity(0.4), BlendMode.dstIn),
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
                          Divider(
                            height: 5,
                          ),
                          ListView.separated(
                            physics: BouncingScrollPhysics(),
                            separatorBuilder: (context, index) => Divider(),
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemBuilder: (context, index) => ListTile(
                              leading: Container(
                                child: Icon(CryptoFontIcons.BTC,
                                    color: Colors.white),
                              ),
                              title: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Bitcoin',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          )),
                                      Text(
                                        '\$56000',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('0.005 BTC',
                                          style:
                                              TextStyle(color: Colors.white)),
                                      Padding(padding: EdgeInsets.only(top: 6)),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('100%',
                                              style: TextStyle(
                                                  color: Colors.white)),
                                          Icon(
                                            LineIcons.angleUp,
                                            color: Colors.white,
                                            size: 17,
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            itemCount: 1,
                          ),
                          Divider(
                            height: 5,
                          ),
                          ListView.separated(
                            physics: BouncingScrollPhysics(),
                            separatorBuilder: (context, index) => Divider(),
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemBuilder: (context, index) => ListTile(
                              leading: Container(
                                child: Icon(CryptoFontIcons.ETH,
                                    color: Colors.white),
                              ),
                              title: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Ethereum',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          )),
                                      Text(
                                        '\$3000',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('3 ETH',
                                          style:
                                              TextStyle(color: Colors.white)),
                                      Padding(padding: EdgeInsets.only(top: 6)),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('43%',
                                              style: TextStyle(
                                                  color: Colors.white)),
                                          Icon(
                                            LineIcons.angleUp,
                                            color: Colors.white,
                                            size: 17,
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            itemCount: 1,
                          ),
                          Divider(
                            height: 5,
                          ),
                          ListView.separated(
                            physics: BouncingScrollPhysics(),
                            separatorBuilder: (context, index) => Divider(),
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemBuilder: (context, index) => ListTile(
                              leading: Container(
                                child: Icon(CryptoFontIcons.DOGE,
                                    color: Colors.white),
                              ),
                              title: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Doge',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          )),
                                      Text(
                                        '\$0.2335',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('10 DOGE',
                                          style:
                                              TextStyle(color: Colors.white)),
                                      Padding(padding: EdgeInsets.only(top: 6)),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('4.12%',
                                              style: TextStyle(
                                                  color: Colors.white)),
                                          Icon(
                                            LineIcons.angleDown,
                                            color: Colors.white,
                                            size: 17,
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            itemCount: 1,
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
