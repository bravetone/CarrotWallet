import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Data.dart';
import 'package:line_icons/line_icons.dart';
import 'package:velocity_x/velocity_x.dart';
import 'appbar.dart';

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
  late ScrollController _scrollController;
  late ScrollController scrollController;

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
    _scrollController = ScrollController();
    // Timer.periodic(Duration(seconds: 3), (timer) {
    getCryptoPrice();
    // });
  }

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

  Widget BuildCoinWidget(List<Data> data) {
    return Scrollbar(
      showTrackOnHover: true,
      child: ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        controller: _scrollController,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text(
              '#${index + 1}',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            title: Text(
              '${data[index].name}',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              '${data[index].priceUsd}'.numCurrency + '\$',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromRGBO(27, 35, 54, 1),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: BaseAppBar(
            appBar: AppBar(),
          ),
          body: ZStack([
            VStack(
              [
                VxBox(
                  child: VStack(
                    [
                      "Main Wallet".text.bold.white.xl2.makeCentered(),
                      1.heightBox,
                      "789898".numCurrency.text.white.xl6.makeCentered(),
                      HStack(
                        [
                          Column(
                            children: [
                              MaterialButton(
                                color: Colors.orange.shade700,
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Icon(
                                    LineIcons.arrowCircleUp,
                                    color: Colors.blueGrey.shade900,
                                    size: 50,
                                  ),
                                ),
                                shape: CircleBorder(),
                                splashColor: Colors.white,
                                onPressed: () {},
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  "SEND",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.bold,
                                      height: 1),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              MaterialButton(
                                color: Colors.orange.shade700,
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Icon(
                                    LineIcons.arrowCircleDown,
                                    color: Colors.blueGrey.shade900,
                                    size: 50,
                                  ),
                                ),
                                shape: CircleBorder(),
                                splashColor: Colors.white,
                                onPressed: () {},
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  "RECEIVE",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.bold,
                                      height: 1),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              MaterialButton(
                                color: Colors.orange.shade700,
                                //color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Icon(
                                    LineIcons.gift,
                                    color: Colors.blueGrey.shade900,
                                    size: 50,
                                  ),
                                ),
                                shape: CircleBorder(),
                                splashColor: Colors.white,
                                onPressed: () {},
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  "BUY",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.bold,
                                    height: 1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                        alignment: MainAxisAlignment.spaceAround,
                        axisSize: MainAxisSize.max,
                      ).py24()
                    ],
                  ),
                )
                    .p16
                    .blueGray900
                    .size(context.screenWidth, context.percentHeight * 30)
                    .alignCenter
                    .roundedLg
                    .shadowXl
                    .make()
                    .p16(),
                5.heightBox,
              ],
            ),
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
                    color: Color.fromRGBO(17, 35, 54, 0.5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  height: MediaQuery.of(context).size.height / 1.9,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SingleChildScrollView(
                      controller: _scrollController,
                      physics: BouncingScrollPhysics(),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            // İki row elemanını yatay olarak aynı seviyeye getirdim.
                            children: [
                              Text(
                                "TOKENS",
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
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

                              //Burada Column kullanmana gerek yok tek bir widget var.
                              // Column(
                              //   mainAxisSize: MainAxisSize.min,
                              //   mainAxisAlignment: MainAxisAlignment.center,
                              //   children: [
                              //     DecoratedBox(
                              //       decoration: ShapeDecoration(
                              //           color: Colors.grey,
                              //           shape: CircleBorder()),
                              //     ),
                              //     Ink(
                              //       child: IconButton(
                              //         icon: Icon(LineIcons.syncIcon),
                              //         color: Colors.white,
                              //         iconSize: 40,
                              //         splashRadius: 40,
                              //         disabledColor: Colors.grey,
                              //         onPressed: () {},
                              //         tooltip: "Play",
                              //       ),
                              //     ),
                              //   ],
                              // ),
                            ],
                          ),
                          Divider(color: Colors.white),
                          FutureBuilder<List<Data>>(
                              future: getCryptoPrice(),
                              builder: (context, snapdata) {
                                switch (snapdata.connectionState) {
                                  case ConnectionState.waiting:
                                    return Center(
                                      child: CircularProgressIndicator(),
                                    );
                                  default:
                                    if (snapdata.hasError) {
                                      return Center(
                                          child: Text('Please wait....'));
                                    } else {
                                      return BuildCoinWidget(snapdata.data!);
                                    }
                                }
                              }),
                          // ListView.separated(
                          //   physics: BouncingScrollPhysics(),
                          //   separatorBuilder: (context, index) => Divider(),
                          //   scrollDirection: Axis.vertical,
                          //   shrinkWrap: true,
                          //   itemBuilder: (context, index) => ListTile(
                          //     title: Column(
                          //       children: [
                          //         Row(
                          //           mainAxisAlignment:
                          //               MainAxisAlignment.spaceBetween,
                          //           children: [],
                          //         ),
                          //       ],
                          //     ),
                          //   ),
                          //   itemCount: 1,
                          // ),
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
