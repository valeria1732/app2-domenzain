import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.teal,
  Colors.blue,
  Colors.red,
  Colors.yellow,
  Colors.green,
];

class AppTheme {
  final int selectColor;
  AppTheme({
    this.selectColor = 0
    }): assert (selectColor >= 0, 'Selected Color must be greater than 0'),
        assert (selectColor < colorList.length, 'Selected Color must be less than ${ colorList.length }');

    ThemeData getTheme() => ThemeData(
      // useMaterial3: true,
      colorSchemeSeed: colorList[selectColor],
      appBarTheme: AppBarTheme(
        centerTitle: true,
      )
    );
}
