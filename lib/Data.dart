class Data {
  String id;
  String rank;
  String symbol;
  String name;
  //String supply;
  //String maxSupply;
  // String marketCapUsd;
  // String volumeUsd24Hr;
  // String priceUsd;
  // String changePercent24Hr;
  // String vwap24Hr;
  //String explorer;

  Data.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        rank = json['rank'],
        symbol = json['symbol'],
        name = json['name'];
  // supply = json['supply'];
  // maxSupply = json['maxSupply'];
  // marketCapUsd = json['marketCapUsd'];
  // volumeUsd24Hr = json['volumeUsd24Hr'];
  // priceUsd = json['priceUsd'];
  // changePercent24Hr = json['changePercent24Hr'];
  // vwap24Hr = json['vwap24Hr'];
  //explorer = json['explorer'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'rank': rank,
        'symbol': symbol,
        'name': name,
        // data['supply'] = this.supply;
        // data['maxSupply'] = this.maxSupply;
        // data['marketCapUsd'] = this.marketCapUsd;
        // data['volumeUsd24Hr'] = this.volumeUsd24Hr;
        // data['priceUsd'] = this.priceUsd;
        // data['changePercent24Hr'] = this.changePercent24Hr;
        // data['vwap24Hr'] = this.vwap24Hr;
        //'explorer': explorer,
      };
}
