import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  final String _userName;

  HomeScreen({Key key, @required String userName})
      : assert(userName != null),
        _userName = userName,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Text(_userName),
    );
  }
}