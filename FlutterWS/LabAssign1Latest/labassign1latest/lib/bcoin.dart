// ignore_for_file: prefer_typing_uninitialized_variables, duplicate_ignore

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class BCOIN extends StatelessWidget {
  const BCOIN({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BitCoin cryptocurrency ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyBitcoin(),
    );
  }
}

class MyBitcoin extends StatefulWidget {
  const MyBitcoin({Key? key}) : super(key: key);

  @override
  State<MyBitcoin> createState() => _MyBitcoin();
}

class _MyBitcoin extends State<MyBitcoin> {
  TextEditingController valueEditingController = TextEditingController();
  String selectBit = "Bitcoin", nu = "Value", nu2 = "Exchange", nu3 = "-";

  var everything, one, two, three, bitcoin, result;

  List<String> bitList = [
    "Bitcoin",
    "Ether",
    "Litecoin",
    "Bitcoin Cash",
    "Binance Coin",
    "EOS",
    "XRP",
    "Lumens",
    "Chainlink",
    "Polkadot",
    "Yearn.finance",
    "US Dollar",
    "United Arab Emirates Dirham",
    "Argentine Peso",
    "Australian Dollar",
    "Bangladeshi Taka",
    "Bahraini Dinar",
    "Bermudian Dollar",
    "Brazil Real",
    "Canadian Dollar",
    "Swiss Franc",
    "Chilean Peso",
    "Chinese Yuan",
    "Czech Koruna",
    "Danish Krone",
    "Euro",
    "British Pound Sterling",
    "Hong Kong Dollar",
    "Hungarian Forint",
    "Indonesian Rupiah",
    "Israeli New Shekel",
    "Indian Rupee",
    "Japanese Yen",
    "South Korean Won",
    "Kuwaiti Dinar",
    "Sri Lankan Rupee",
    "Burmese Kyat",
    "Mexican Peso",
    "Malaysian Ringgit",
    "Nigerian Naira",
    "Norwegian Krone",
    "New Zealand Dollar",
    "Philippine Peso",
    "Pakistani Rupee",
    "Polish Zloty",
    "Russian Ruble",
    "Saudi Riyal",
    "Swedish Krona",
    "Singapore Dollar",
    "Thai Baht",
    "Turkish Lira",
    "New Taiwan Dollar",
    "Ukrainian hryvnia",
    "Venezuelan bolívar fuerte",
    "Vietnamese đồng",
    "South African Rand",
    "IMF Special Drawing Rights",
    "Silver - Troy Ounce",
    "Gold - Troy Ounce",
    "Bits",
    "Satoshi"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("BitCoin cryptocurrency ")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "BitCoin cryptocurrency",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                      controller: valueEditingController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: 'Bitcoin Value',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)))),
                ),
                DropdownButton(
                  itemHeight: 60,
                  value: selectBit,
                  onChanged: (newValue) {
                    setState(() {
                      selectBit = newValue.toString();
                    });
                  },
                  items: bitList.map((selectLoc) {
                    return DropdownMenuItem(
                      child: Text(
                        selectLoc,
                      ),
                      value: selectLoc,
                    );
                  }).toList(),
                ),
                ElevatedButton(
                    onPressed: _loadbitcoin, child: const Text("Load Value")),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FittedBox(
                        child: Text(
                          nu,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                      ),
                      FittedBox(
                        child: Text(
                          nu2,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                      ),
                      FittedBox(
                        child: Text(
                          nu3,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }

  Future<void> _loadbitcoin() async {
    var url = Uri.parse('https://api.coingecko.com/api/v3/exchange_rates');
    var response = await http.get(url);

    switch (selectBit) {
      case "Bitcoin":
        everything = "btc";
        break;
      case "Ether":
        everything = "eth";
        break;
      case "Litecoin":
        everything = "ltc";
        break;
      case "Bitcoin Cash":
        everything = "bch";
        break;
      case "Binance Coin":
        everything = "bnb";
        break;
      case "EOS":
        everything = "eos";
        break;
      case "XRP":
        everything = "xrp";
        break;
      case "Lumens":
        everything = "xlm";
        break;
      case "Chainlink":
        everything = "link";
        break;
      case "Polkadot":
        everything = "dot";
        break;
      case "Yearn.finance":
        everything = "yfi";
        break;
      case "US Dollar":
        everything = "usd";
        break;
      case "United Arab Emirates Dirham":
        everything = "aed";
        break;
      case "Argentine Peso":
        everything = "ars";
        break;
      case "Australian Dollar":
        everything = "aud";
        break;
      case "Bangladeshi Taka":
        everything = "bdt";
        break;
      case "Bahraini Dinar":
        everything = "bhd";
        break;
      case "Bermudian Dollar":
        everything = "bmd";
        break;
      case "Brazil Real":
        everything = "brl";
        break;
      case "Canadian Dollar":
        everything = "cad";
        break;
      case "Swiss Franc":
        everything = "chf";
        break;
      case "Chilean Peso":
        everything = "clp";
        break;
      case "Chinese Yuan":
        everything = "cny";
        break;
      case "Czech Koruna":
        everything = "czk";
        break;
      case "Danish Krone":
        everything = "dkk";
        break;
      case "Euro":
        everything = "eur";
        break;
      case "British Pound Sterling":
        everything = "gbp";
        break;
      case "Hong Kong Dollar":
        everything = "hkd";
        break;
      case "Hungarian Forint":
        everything = "huf";
        break;
      case "Indonesian Rupiah":
        everything = "idr";
        break;
      case "Israeli New Shekel":
        everything = "ils";
        break;
      case "Indian Rupee":
        everything = "inr";
        break;
      case "Japanese Yen":
        everything = "jpy";
        break;
      case "South Korean Won":
        everything = "krw";
        break;
      case "Kuwaiti Dinar":
        everything = "kwd";
        break;
      case "Sri Lankan Rupee":
        everything = "lkr";
        break;
      case "Burmese Kyat":
        everything = "mmk";
        break;
      case "Mexican Peso":
        everything = "mxn";
        break;
      case "Malaysian Ringgit":
        everything = "myr";
        break;
      case "Nigerian Naira":
        everything = "ngn";
        break;
      case "Norwegian Krone":
        everything = "nok";
        break;
      case "New Zealand Dollar":
        everything = "nzd";
        break;
      case "Philippine Peso":
        everything = "php";
        break;
      case "Pakistani Rupee":
        everything = "pkr";
        break;
      case "Polish Zloty":
        everything = "pln";
        break;
      case "Russian Ruble":
        everything = "rub";
        break;
      case "Saudi Riyal":
        everything = "sar";
        break;
      case "Swedish Krona":
        everything = "sek";
        break;
      case "Singapore Dollar":
        everything = "sgd";
        break;
      case "Thai Baht":
        everything = "thb";
        break;
      case "Turkish Lira":
        everything = "try";
        break;
      case "New Taiwan Dollar":
        everything = "twd";
        break;
      case "Ukrainian hryvnia":
        everything = "uah";
        break;
      case "Venezuelan bolívar fuerte":
        everything = "vef";
        break;
      case "Vietnamese đồng":
        everything = "vnd";
        break;
      case "South African Rand":
        everything = "zar";
        break;
      case "IMF Special Drawing Rights":
        everything = "xdr";
        break;
      case "Silver - Troy Ounce":
        everything = "xag";
        break;
      case "Gold - Troy Ounce":
        everything = "xau";
        break;
      case "Bits":
        everything = "bits";
        break;
      case "Satoshi":
        everything = "sats";
        break;
    }

    if (response.statusCode == 200) {
      var jsonData = response.body;
      var parsedData = json.decode(jsonData);
      one = parsedData['rates']['$everything']['value'];
      two = parsedData['rates']['$everything']['unit'];
      three = parsedData['rates']['$everything']['type'];
      bitcoin = double.parse(valueEditingController.text);
      result = bitcoin * one;
      setState(() {
        nu = "The value of Bitcoin $bitcoin convert to $selectBit is $result.";
        nu2 = "It's unit is $two.";
        nu3 = "It is $three.";
      });
    }
  }
}
