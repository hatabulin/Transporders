import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const paddingCardTop = 20.0;
const paddingCardItemList = 20.0;
const paddingItemLeftRight = 5.0;
const abonementCardHeight = 110.0;
const helpCardHeight = 110.0;
const cardWidth = 360.0;
const verticalSizedBoxHeight = 350.0;
const textMargin = 20.0;

bool checkBoxValue = false;
List _routes = ["Шереметьево 1/2 Солнечногорск", "Вязники 1/2 Мстёра"];

List<DropdownMenuItem<String>> _dropDownMenuItems;
String _currentRoute;

class AbonementBuyFragment extends StatefulWidget {
  AbonementBuyFragment({Key key}) : super(key: key);

  @override
  _AbonementBuyFragment createState() => new _AbonementBuyFragment();
}

class _AbonementBuyFragment extends State<AbonementBuyFragment>  {

  @override
  void initState() {
    _dropDownMenuItems = getDropDownMenuItems();
    _currentRoute = _dropDownMenuItems[0].value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _verticallListView(context, cardWidth));
  }
}

List<DropdownMenuItem<String>> getDropDownMenuItems() {
  List<DropdownMenuItem<String>> items = new List();
  for (String city in _routes) {
    items.add(new DropdownMenuItem(
        value: city,
        child: new Text(city)
    ));
  }
  return items;
}

Widget _verticallListView(BuildContext context, double cardWidth) {
  return Column(
      children: <Widget>[
        helpBox(),
        selectRoute(),
        SizedBox(
          height: verticalSizedBoxHeight,
          child:ListView.builder(
            scrollDirection: Axis.vertical,
            itemBuilder: (_, __) => itemList(color: Colors.orange),
          ),
        ),
      ]);
}

Widget itemList({Color color}) {
  return Column(
    children: <Widget>[
      Container(
        width: cardWidth,
        height: abonementCardHeight,

        child:Padding(padding: const EdgeInsets.only(right: paddingCardItemList, left: paddingCardItemList, top: paddingCardTop),
          child: Card(
            elevation: 15,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            shadowColor: Colors.green,
            color: Colors.deepPurple,
            child: Column(
                children: <Widget>[
                  Padding(child:Text("Шереметьево 1/2 Солнечногорск", style:TextStyle(fontSize: 16, color: Colors.white)),padding: const EdgeInsets.only(top:10)),
                  Padding(child:Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("10 поездок", style:TextStyle(fontSize: 18, color: Colors.white)),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("1000", style:TextStyle(fontSize: 22, color: Colors.white, fontFamily: 'bold')),
                                Padding(child:Align(child: Icon(Icons.euro_symbol),alignment: Alignment.center ), padding: const EdgeInsets.only(left:10),)
                              ],),)],)),
                      padding: const EdgeInsets.only(top:10, left: 10, right: 10)
                  )]),
          ),
        ),)
    ],
  );
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
              Padding(child:Icon(Icons.directions_car),padding: EdgeInsets.only(left: 10, right: 5)),
              Padding(child:Icon(Icons.motorcycle),padding: EdgeInsets.only(right: 5)),
              Container(child:Text("Абонемент распространяется на транспортные средства группы 1", style: TextStyle(fontSize: 12),),width:210,padding: EdgeInsets.only(left: 10, right: 5) ,),
              Icon(Icons.warning),
            ],
          ),
        ),
      ));
}

Widget selectRoute() {
  return Container(
    width: cardWidth,
    child:Column(
      children: <Widget>[
        Text("Выберите маршрут", textAlign: TextAlign.left, style: TextStyle(fontFamily: "bold"),),
        Container(
          padding: new EdgeInsets.only(bottom: 5),
        ),
        new DropdownButton(
          value: _currentRoute,
          items: _dropDownMenuItems,
          onChanged: changedDropDownItem,
        )
      ],
    ),
  );
}

void changedDropDownItem(String selectedRoute) {
  setState(() {
    _currentRoute = selectedRoute;
  });
}

void setState(Null Function() param0) {

}