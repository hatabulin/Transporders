import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transporderapp/styles/appStyles.dart';
import 'file:///D:/work/development/AndroidStudio/Projects/transporder_app/lib/ui/abonements/abonementsListFragment.dart';
import 'package:transporderapp/ui/abonements/abonementBuyFragment.dart';
import 'package:transporderapp/ui/abonements/abonementBuySelectedFragment.dart';

class TransponderScreen extends StatelessWidget {
  Function backPressed;

//  String appBarTitle = "Абонементы";
  String appBarTitle = "Купить абонементы";

  TransponderScreen();
//  AbonementBuyFragment();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: appBarBackgroundColor,
        title: Container(
          padding: EdgeInsets.only(left: 16.0),
          child: Row(
            children: [
              Text(appBarTitle, style: TextStyle(color: appNormalTextColor))
            ],
          ),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.arrow_back, color: appBarBackgroundBack),
              onPressed: () {
                backPressed();
              },
            );
          },
        ),
      ),
//      body: abonementsListFragment(),
//      body: AbonementBuyFragment(),
      body: AbonementBuySelectedFragment(),
    );
  }
}
