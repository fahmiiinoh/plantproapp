import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/homepage/components/body.dart';
import 'package:flutter_auth/components/navigationmenu.dart';
import 'package:flutter_auth/main.dart';
import 'package:flutter_auth/constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        backgroundColor: kPrimaryColor,
      ),
      body: Body(),
    );
  }
}
