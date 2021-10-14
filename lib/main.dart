import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Data.dart';
import 'package:line_icons/line_icons.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:crypto_font_icons/crypto_font_icons.dart';

import 'package:flutter_svg/flutter_svg.dart';

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
  StreamController<List<Data>> _streamController = StreamController();

  int myAmount = 0;

  @override
  void dispose() {
    super.dispose();
    _streamController
        .close(); //wheneever the app is closed by the user, stream will be closed
  }

  @override
  void initState() {
    super.initState();

    Timer.periodic(Duration(seconds: 3), (timer) {
      getCryptoPrice();
    });
  }
//Calling API

  // Future<void> getCryptoPrice() async {
  //   var url = 'https://api.coincap.io/v2/assets';
  //   Dio dio = Dio();
  //   var response = await dio.get(url);

  //   List<Data> _data = (response.data['data'] as List)
  //       .map((e) => Data.fromJson(e as Map<String, dynamic>))
  //       .toList();
  //   _streamController.sink.add(_data);
  //   //whenever data is fecthed from our link to the data,
  //   // it will be stored in _streamController
  // }

  Future<List<Data>> getCryptoPrice() async {
    var url = 'https://api.coincap.io/v2/assets';
    Dio dio = Dio();
    var response = await dio.get(url);

    List<Data> _data = (response.data['data'] as List)
        .map((e) => Data.fromJson(e as Map<String, dynamic>))
        .toList();
    _streamController.sink.add(_data);
    //whenever data is fecthed from our link to the data,
    // it will be stored in _streamController
    return _data;
  }

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

  Widget BuildCoinWidget(List<Data> data) {
    return ListView.builder(
      itemCount: data.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Center(
          child: Text(
            '${data[index].id}',
            style: TextStyle(fontSize: 25),
          ),
          //     child: Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Text(
          //       '${data[index].id}',
          //       style: TextStyle(fontSize: 25),
          //     ),
          //     SvgPicture.network(
          //       '${data[index].symbol}',
          //       width: 150,
          //       height: 150,
          //     ),
          //     SizedBox(
          //       height: 20,
          //     ),
          //     Text(
          //       '${data[index].rank}',
          //       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          //     )
          //   ],
          // ),
        );
      },
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
            VStack([
              VxBox(
                      child: VStack([
                "Main Wallet".text.white.makeCentered(),
                2.heightBox,
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
                                fontSize: 7,
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
                                fontSize: 7,
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
                                fontSize: 7,
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
                  .orange500
                  .size(context.screenWidth, context.percentHeight * 30)
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
                    color: Colors.orange.shade800,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  height: MediaQuery.of(context).size.height / 2.3,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "MY COINS",
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      DecoratedBox(
                                        decoration: ShapeDecoration(
                                            color: Colors.grey,
                                            shape: CircleBorder()),
                                      ),
                                      Ink(
                                        child: IconButton(
                                          icon: Icon(LineIcons.syncIcon),
                                          color: Colors.white,
                                          iconSize: 40,
                                          splashRadius: 40,
                                          disabledColor: Colors.grey,
                                          onPressed: () {},
                                          tooltip: "Play",
                                        ),
                                      ),
                                    ]),
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
                                      // StreamBuilder<List<Data>>(
                                      //     stream: _streamController.stream,
                                      //     builder: (context, snapdata) {
                                      //       switch (snapdata.connectionState) {
                                      //         case ConnectionState.waiting:
                                      //           return Center(
                                      //             child:
                                      //                 CircularProgressIndicator(),
                                      //           );
                                      //         default:
                                      //           if (snapdata.hasError) {
                                      //             return Text(
                                      //                 'Please wait....');
                                      //           } else {
                                      //             return BuildCoinWidget(
                                      //                 snapdata.data!);
                                      //           }
                                      //       }
                                      //     }),
                                      FutureBuilder<List<Data>>(
                                          future: getCryptoPrice(),
                                          builder: (context, snapdata) {
                                            switch (snapdata.connectionState) {
                                              case ConnectionState.waiting:
                                                return Center(
                                                  child:
                                                      CircularProgressIndicator(),
                                                );
                                              default:
                                                if (snapdata.hasError) {
                                                  return Text(
                                                      'Please wait....');
                                                } else {
                                                  return BuildCoinWidget(
                                                      snapdata.data!);
                                                }
                                            }
                                          }),
                                    ],
                                  ),
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
