import 'package:flutter/material.dart';

class FrontState extends StatefulWidget {

final String _name;
FrontState([this._name]);

@override
  _FrontState createState() => _FrontState(this._name);
}

class _FrontState extends State<FrontState> {
  String _name;
  
  _FrontState([this._name]);
  Widget build(BuildContext context) {  
    
    return Stack(
          children:<Widget>[ 
          AspectRatio(
            aspectRatio: 8.5 / 5.4,
             child: Container(
              decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(109, 33, 119, 1),
            ),
          ),
        ),
        Positioned(
                bottom: 60,
                left: 100,
                child: Text(
                  this._name,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 20,
                  ),
                ),
              ),
              Positioned(
                top: 80,
                left: 10,
                child: Image.asset('assets/chip.png',scale: 15,),
              ),
              Positioned(
                top: 20,
                right: 20,
                child: Image.asset('assets/mastercard.png',scale:1.7),
              ),
              Positioned(
                top: 90,
                left: 80,
                child: Image.asset('assets/nfc.png',scale: 130,
                color: Colors.white
                ),
              ),
              Positioned(
                top: 130,
                left: 7,
                child: Image.asset('assets/nu_logo.png',scale: 6.5,
                color: Colors.white
                ),
              ),
            ]);
    }
   }
