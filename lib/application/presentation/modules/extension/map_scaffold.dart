import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension MapScaffoldGenerate on Widget{
   get toScaffold => Scaffold(
      body: this,) ;
}