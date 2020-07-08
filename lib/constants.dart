import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';



final kHintTextStyle = TextStyle(
  color: Colors.white,
  fontFamily: 'Open',
);

final kLabelStyle = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.bold,
  fontFamily: 'Open',
);

final spinkit = SpinKitFadingCircle(
  itemBuilder: (BuildContext context, int index) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: index.isEven ? Colors.red : Colors.green,
      ),
    );
  },
);






final kBoxDecorationStyle = BoxDecoration(
  color: Colors.cyan[600],
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);