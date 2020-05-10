import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const cardWidth = 360.0;
const cardTransponderHeight = 100.0;
const paddingCardTop = 20.0;
const paddingCardItemList = 20.0;
const optionsCardHeight = 170.0;
const helpCardHeight = 110.0;

bool switchDeductSubscription = true;
bool switchAutoScroll = true;

class AbonementBuySelectedFragment extends StatefulWidget {
  AbonementBuySelectedFragment({Key key}) : super(key: key);

  @override
  _AbonementBuySelectedFragment createState() => new _AbonementBuySelectedFragment();
}

class _AbonementBuySelectedFragment extends State<AbonementBuySelectedFragment>  {

  @override
  void initState() {
//    _dropDownMenuItems = getDropDownMenuItems();
//    _currentRoute = _dropDownMenuItems[0].value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _horizontalListView( context));
  }
}

Widget _horizontalListView(BuildContext context) {
  return Column(
      children: <Widget>[
//        selectTransponder(),
        SizedBox(
          width: cardWidth,
          height: cardTransponderHeight,
          child:ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, __) => itemList(color: Colors.orange),
          ),
        ),
        optionsAbonement(),
        costSubscription(),
        helpBox()
      ]);
}

Widget itemList({Color color}) {
  return Container(
      width: cardWidth,
      child:Padding(padding: const EdgeInsets.only( left: paddingCardItemList, right: paddingCardItemList, top: paddingCardTop),
          child: Card(
            elevation: 15,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            shadowColor: Colors.green,
            color: Colors.deepPurple,
            child: Row(
                children: <Widget>[
                  Padding(padding: const EdgeInsets.only(left:20),child:Icon(Icons.folder_shared,size: 50,  )),
                  Padding(padding: const EdgeInsets.only(top:15, left: 20),child:Column(children: <Widget>[
                    Text("Транспондер_1", style: TextStyle(fontSize: 18.0, color: Colors.white, fontFamily: 'bold'),),
                      Padding(padding: const EdgeInsets.only(top:5),child:Text("НЕТ АБОНЕМЕНТА",style: TextStyle(fontSize: 12.0, color: Colors.white)),)
                  ],)
                  ),
                ]
            ),
          )
      ));
}

Widget optionsAbonement() {
  return Container(
      width: cardWidth,
      height: optionsCardHeight,
      margin: EdgeInsets.only(top: 50),
      child:Padding(padding: const EdgeInsets.only( left: paddingCardItemList, right: paddingCardItemList, top: paddingCardTop),
      child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
              children: <Widget>[
                Container(
                  width: cardWidth,
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 10),
                        width: 150,
                        child: Text("Списывать с баланса, если дешевле",style: TextStyle(fontSize: 14)),
                      ),
                      Container(
                          child: Icon(
                            Icons.help_outline,
                            size: 25,
                          )),
                      Container(
                        child: Switch(
                          value: switchAutoScroll,
                          activeColor: Colors.green,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: cardWidth,
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 10),
                        width: 150,
                        child: Text(
                          "Автопрокрутка абонемента",
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      Container(
                          child: Icon(
                            Icons.help_outline,
                            size: 25,
                          )),
                      Container(
                        child: Switch(
                          value: switchDeductSubscription,
                          activeColor: Colors.green,
                        ),
                      )
                    ],
                  ),
                ),
              ]))));
}

Widget costSubscription() {
  return Container(
      width: cardWidth,
      margin: EdgeInsets.only(top: 20),
      child:Padding(padding: const EdgeInsets.only(left:20),
          child: Row(
            children: <Widget>[
              Text("1000",style: TextStyle(fontSize: 52, fontFamily: 'bold')),
              Padding( padding: const EdgeInsets.only(left:10),child:Icon(Icons.euro_symbol, size: 25)),
              Container(
                width: 150,
                  padding: const EdgeInsets.only(left:15),
                  child:Column(
                    children: <Widget>[
                    Text("Стоимость одной поездки:"),
                      Container(
                          child:Row(
                            children: <Widget>[
                              Text("100", style: TextStyle(fontSize: 12, fontFamily: 'bold')),
                              Icon(Icons.euro_symbol, size: 15)
                            ],)
                      )
                    ],
                  )
              )
            ],
          )));
}

Widget helpBox() {
  return Container(
      width: cardWidth,
      height: helpCardHeight,
      child:Padding(
        padding: const EdgeInsets.only(right: paddingCardItemList, left: paddingCardItemList, top: paddingCardTop, bottom: 10),
        child: Card(
          elevation: 15,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          color: const Color(0xfff9dddd),
          child: Row(
            children: <Widget>[
              Padding(child:Icon(Icons.sentiment_very_dissatisfied),padding: EdgeInsets.only(left: 10)),
              Row(
                  children: <Widget>[
                    Container(width:150,child:Text("Для покупки на вашем счёте не хватает 900", style: TextStyle(fontSize: 12))),
                    Padding(padding: EdgeInsets.only(top: 20), child:Icon(Icons.euro_symbol, size: 15,))
                  ]),
              Padding(padding: EdgeInsets.only(left: 50),child:Icon(Icons.warning, size: 15,))
            ],
          ),
        ),
      ));
}

Widget selectTransponder({Color color}) {
  return Column(
  );
}

void setState(Null Function() param0) {

}