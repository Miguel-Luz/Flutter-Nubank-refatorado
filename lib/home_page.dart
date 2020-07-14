import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'frontstate_page.dart';
import 'backstate_page.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _name = '';
  String _number = '';
  bool show = false;
  @override
  Widget build(BuildContext context) {
    GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();
    return Scaffold(
      backgroundColor: Color.fromARGB(170, 255, 0, 255),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: SingleChildScrollView(
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(
                      bottom: 20.0,
                    ),
                    child: Text(
                      "Peça já o seu Nubank ...",
                      style: TextStyle(
                        fontFamily: 'Rubik',
                        color: Colors.white,
                        fontSize: 55,
                      ),
                    ),
                  ),
                  Flexible(child: buildFlipCard(cardKey, _name, _number, show)),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 20.0,
                    ),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 3,
                              style: BorderStyle.solid,
                            )),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 3,
                              style: BorderStyle.solid,
                            )),
                        labelText: 'Nome',
                        labelStyle: TextStyle(color: Colors.white),
                      ),
                      onChanged: (value) {
                        setState(() {
                          this._name = value;
                          this.show = false;
                        });
                      },
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 20.0,
                    ),
                    child: TextField(
                        style: TextStyle(color: Colors.white),
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 3,
                                style: BorderStyle.solid,
                              )),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 3,
                                style: BorderStyle.solid,
                              )),
                          labelText: 'Número',
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                        onChanged: (value) {
                          if (int.tryParse(value) == null) {
                            final snackBar = SnackBar(
                              content: Text('Aqui so pode números.. Ok?'),
                            );
                            Scaffold.of(context).showSnackBar(snackBar);
                            return;
                          }
                          setState(() {
                            this._number = value;
                            this.show = true;
                          });
                        }),
                  ),
                ]),
          ),
        ),
      ),
    );
  }

  FlipCard buildFlipCard(
      GlobalKey<FlipCardState> cardKey, String name, String value,
      [bool change]) {
    Widget front = FrontState(name);
    Widget back = BackState(value);

    if (change ?? false) {
      front = BackState(value);
      back = FrontState(name);
    }

    return FlipCard(
      key: cardKey,
      front: front,
      back: back,
    );
  }
}
