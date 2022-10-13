import 'package:flutter/material.dart';

TextStyle s = const TextStyle(
    color: Colors.white,
    fontSize: 35,
  );
  TextStyle s2 = const TextStyle(
    color: Colors.black,
    fontSize: 35,
  );

class MyText extends StatelessWidget {
  final String _text;
  final TextStyle _textStyle;

  const MyText(this._text, this._textStyle, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: _textStyle,
    );
  }
}
