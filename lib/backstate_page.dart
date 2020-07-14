import 'package:flutter/material.dart';

class BackState extends StatefulWidget {

final String _number;
BackState([this._number]);

@override
  _BackState createState() => _BackState(this._number);
}

class _BackState extends State<BackState> {
  String _number;
  
  _BackState([this._number]);
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
                   top:20,
                   child: Container(
                   width:500,
                   height: 30,
                   decoration: BoxDecoration(
                   color: Colors.black
                         ),
                       ),
                 ),
        Positioned(
                top: 60,
                right: 20,
                child: Image.asset('assets/cirrus.png',scale:8),
              ),
        Positioned(
                bottom: 40,
                left: 40,
                child: Text(
                  this._number,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 20,
                  ),
                ),
              ),
             ]);
            }
           }

