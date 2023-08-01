import 'package:flutter/cupertino.dart';

extension GenerateItems on List<Widget>{
  Widget get toItem => Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: this,
  );
}