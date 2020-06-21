import 'package:flutter/material.dart';


///我的
class UserPage extends StatefulWidget {
  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {

  @override
  void initState() {
    // debugPrint('UserPage initState');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('UserPage');
    return Scaffold(
      appBar: AppBar(title: Text('我的'),),
      body: Center(child: Text('我的')),
    );
  }
}