import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transporderapp/styles/appStyles.dart';

const paddingCardTop = 20.0;
const paddingCardLeft = 20.0;
const paddingItemLeftRight = 5.0;
const infoCardHeight = 280.0;
const transponderInfoCardHeight = 80.0;
const textMargin = 20.0;
bool checkBoxValue = false;
const cardWidth = 330.0;

class abonementsListFragment extends StatelessWidget {
//  final List<Datum> _data;
  abonementsListFragment();

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _horizontalListView(context, cardWidth));
  }
}

Widget _horizontalListView(BuildContext context, double cardWidth) {
  return SizedBox(
      height: infoCardHeight + transponderInfoCardHeight + paddingCardTop + 140,
      child: Padding(
        padding: const EdgeInsets.only(
            left: paddingCardLeft, top: paddingCardTop, bottom: 10),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, __) => itemList(color: Colors.orange),
        ),
      ));
}

Widget itemList({Color color}) {
  return Column(
    children: <Widget>[
      Container(
        width: cardWidth,
        height: transponderInfoCardHeight,
        child: Card(
          elevation: 15,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Colors.deepPurple,
          child: const ListTile(
              leading: Icon(
                Icons.album,
                size: 30,
              ),
              title: Text('Volkswagen',
                  style: TextStyle(fontSize: 20.0, color: Colors.white, fontFamily: 'bold'),
                  textAlign: TextAlign.left),
              subtitle: Text("PAN 680566546049")),
        ),
      ),
      Container(
          width: cardWidth,
          height: infoCardHeight,
          margin: EdgeInsets.only(top: 50),
          child: Card(
            elevation: 10,
            color: cardTransponderInfo,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top:10),
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Луцк 1/2 Ровно",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: textMargin),
                  child: Text(
                    "10 поездок",
                    style: TextStyle(fontSize: 18),
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
                        margin: EdgeInsets.only(left: textMargin),
                        width: 150,
                        child: Text(
                          "Списывать с баланса, если дешевле",
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
                          value: checkBoxValue,
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
                        margin: EdgeInsets.only(left: textMargin),
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
                          value: checkBoxValue,
                          activeColor: Colors.green,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                    height: 40,
                    width: cardWidth,
                    margin: EdgeInsets.only(top: 30,left: 20, right: 20),
                    decoration: BoxDecoration(
                      color: const Color(0xfff9dddd),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: textMargin),
                          child: Text(
                            "Активировать до 12.12.20",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(right: 20),
                            child: Icon(
                              Icons.beenhere,
                              size: 25,
                            )),
                      ],
                    )),
              ],
            ),
          )),
    ],
  );
}
