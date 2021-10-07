import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/sliderwidget.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:web3dart/web3dart.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(title: 'BRAVECOIN'),
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
  late Client httpClient;
  late Web3Client ethClient;
  bool data = false;
  int? myAmount = 0;
  final myAddress = "0x0ea5128DbFA405b7CEE240ffc4A8149C2CE2e054";
  var myData;

  @override
  void initState() {
    super.initState();
    var url = "https://rinkeby.infura.io/v3/06d88770b5c54c8fa26f26a03e96b647";
    httpClient = Client();
    ethClient = Web3Client(url, httpClient);
    //getBalance(myAddress
  }

  Future<DeployedContract> loadContract() async {
    String abi = await rootBundle.loadString("assets/abi.json");
    String contractAdress = "0xd9145CCE52D386f254917e481eB44e9943F39138";

    final contract = DeployedContract(ContractAbi.fromJson(abi, "BraveCoin"),
        EthereumAddress.fromHex(contractAdress));
    return contract;
  }

  /*Future<List<dynamic>> query(String functionName, List<dynamic> args) async {
    final contract = await loadContract();
    final ethFunction = contract.function(functionName);
    final result = await ethClient.call(
        contract: contract, function: ethFunction, params: args);

    return result;
  }
*/
/*
  Future<void> getBalance(String targetAddress) async {
    //EthereumAddress address = EthereumAddress.fromHex(targetAddress);
    List<dynamic> result = await query("getBalance", []);
    myData = result[0];
    data = true;
    setState(() {});
  }
*/
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Vx.gray800,
      body: ZStack([
        VxBox()
            .purple300
            .size(context.screenWidth, context.percentHeight * 30)
            .make(),
        VStack([
          (context.percentHeight * 10).heightBox,
          "\$BRAVECOIN".text.xl4.white.bold.center.makeCentered().py16(),
          (context.percentHeight * 5).heightBox,
          VxBox(
                  child: VStack([
            "Balance".text.white.xl2.makeCentered(),
            10.heightBox,
            data
                ? "\$1".text.bold.xl6.makeCentered()
                : CircularProgressIndicator().centered()
          ]))
              .p16
              .gray700
              .size(context.screenWidth, context.percentHeight * 18)
              .rounded
              .shadowXl
              .make()
              .p16(),
          5.heightBox,
          SliderWidget(
              min: 0,
              max: 100,
              finalVal: (value) {
                myAmount = (value * 100).round();
              }).centered(),
          HStack(
            [
              MaterialButton(
                color: Colors.grey.shade700,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Icon(Icons.refresh,
                          color: Colors.deepPurple.shade100, size: 40),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        "Refresh",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 7,
                            fontStyle: FontStyle.normal),
                      ),
                    ),
                  ],
                ),
                shape: CircleBorder(
                    side: BorderSide(
                        color: Colors.grey.shade500,
                        width: 1.0,
                        style: BorderStyle.solid)),
                splashColor: Colors.grey.shade700,
                onPressed: () {},
              ),
              MaterialButton(
                color: Colors.grey.shade700,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Icon(Icons.call_made_outlined,
                          color: Colors.deepPurple.shade100, size: 40),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        "Deposit",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 7,
                            fontStyle: FontStyle.normal),
                      ),
                    ),
                  ],
                ),
                shape: CircleBorder(
                    side: BorderSide(
                        color: Colors.grey.shade500,
                        width: 1.0,
                        style: BorderStyle.solid)),
                splashColor: Colors.grey.shade700,
                onPressed: () {},
              ),
              MaterialButton(
                color: Colors.grey.shade700,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Icon(Icons.call_received_outlined,
                          color: Colors.deepPurple.shade100, size: 40),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        "Withdraw",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 7,
                            fontStyle: FontStyle.normal),
                      ),
                    ),
                  ],
                ),
                shape: CircleBorder(
                    side: BorderSide(
                        color: Colors.grey.shade500,
                        width: 1.0,
                        style: BorderStyle.solid)),
                splashColor: Colors.grey.shade700,
                onPressed: () {},
              ),

              /*
              TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.refresh,
                  color: Colors.white,
                ),
                label: "Refresh".text.white.make(),
                style: TextButton.styleFrom(
                  primary: Colors.purple.shade200,
                  backgroundColor: Colors.purple.shade200,
                  textStyle:
                      TextStyle(fontSize: 10, fontStyle: FontStyle.normal),
                ),
              ).h(40),
              TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.call_made_outlined,
                  color: Colors.white,
                ),
                label: "Deposit".text.white.make(),
                style: TextButton.styleFrom(
                  primary: Colors.purple.shade200,
                  backgroundColor: Colors.purple.shade200,
                  textStyle:
                      TextStyle(fontSize: 10, fontStyle: FontStyle.normal),
                ),
              ).h(40),
*/
              /*TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.call_received_outlined,
                  color: Colors.white,
                ),
        
                label: "Withdraw".text.white.make(),
                style: TextButton.styleFrom(
                  primary: Colors.purple.shade200,
                  backgroundColor: Colors.purple.shade200,
                  textStyle:
                      TextStyle(fontSize: 10, fontStyle: FontStyle.normal),
                ),
              ).h(40),

*/
/*
              MaterialButton(
                onPressed: () {},
                color: Colors.deepPurple,
                
                textColor: Colors.white,
                child: Icon(
                  Icons.refresh,
                  size: 24,
                ),
                padding: EdgeInsets.all(16),
                shape: CircleBorder(),
              ),
              MaterialButton(
                onPressed: () {},
                color: Colors.deepPurple,
                textColor: Colors.white,
                child: Icon(
                  Icons.call_made_outlined,
                  size: 24,
                ),
                padding: EdgeInsets.all(16),
                shape: CircleBorder(),
              ),
              MaterialButton(
                onPressed: () {},
                color: Colors.deepPurple,
                textColor: Colors.white,
                child: Icon(
                  Icons.call_received_outlined,
                  size: 24,
                ),
                padding: EdgeInsets.all(16),
                shape: CircleBorder(),
              )
              */
            ],
            alignment: MainAxisAlignment.spaceAround,
            axisSize: MainAxisSize.max,
          ).p16()
        ])
      ]),
    );
  }
}

class Client {}

class Web3Client {
  Web3Client(String url, Client httpClient);

  call(
      {required DeployedContract contract,
      required ContractFunction function,
      required List params}) {}
}
