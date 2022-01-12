import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color textColor = Colors.white;
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SafeArea(
          child: Column(children: [
            Container(
              padding: const EdgeInsets.all(12.0),
              height: MediaQuery.of(context).size.height / 3,
              color: Colors.blue.shade800,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    dense: true,
                    title: Text("Hello \$miracle,",
                        style: TextStyle(color: textColor, fontSize: 24)),
                    trailing: Icon(
                      CupertinoIcons.barcode_viewfinder,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        "What will you like to do today?",
                        style: TextStyle(color: textColor, fontSize: 18),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Container(
                          height: 50,
                          width: 120,
                          child: Center(
                            child: Text(
                              "Fund Wallet",
                              style: TextStyle(color: textColor, fontSize: 18),
                            ),
                          ),
                        ),
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            backgroundColor: Colors.blue.shade900),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Container(
                          height: 50,
                          width: 120,
                          child: Center(
                            child: Text(
                              "Withdraw",
                              style: TextStyle(color: textColor, fontSize: 18),
                            ),
                          ),
                        ),
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            backgroundColor: Colors.blue.shade900),
                      )
                    ],
                  )
                ],
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CountryWalletWidget(),
            ))
          ]),
        ),
      ),
    );
  }
}

class CountryWalletWidget extends StatelessWidget {
  const CountryWalletWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: wallets
            .map((e) => Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: SvgPicture.asset(e.image!),
                    ),
                    title: Text(e.countryName!),
                    trailing: Text("${e.amount} ${e.currency}",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ))
            .toList());
  }
}

class Wallet {
  String? image;
  String? countryName;
  double? amount;
  String? currency;
  Wallet({this.amount, this.countryName, this.image, this.currency});
}

List<Wallet> wallets = [
  Wallet(
      countryName: "Us Dollar",
      image: "images/us.svg",
      amount: 123,
      currency: "USD"),
  Wallet(
      countryName: "Nigerian Naira",
      image: "images/ng.svg",
      amount: 432.3,
      currency: "NGN"),
  Wallet(
      countryName: "Ghanian Cedi",
      image: "images/gh.svg",
      amount: 32,
      currency: "GES"),
  Wallet(
      countryName: "South African Rand",
      image: "images/za.svg",
      amount: 123,
      currency: "ZAR"),
  Wallet(
      countryName: "Kenyan Shilling",
      image: "images/ke.svg",
      amount: 123,
      currency: "KES"),
  Wallet(
      countryName: "Jamaica dollar",
      image: "images/jm.svg",
      amount: 123,
      currency: "JMD"),
];
