import 'package:flutter/material.dart';


/// 首页
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // debugPrint('HomePage initState');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('HomePage');
    return Scaffold(
      appBar: AppBar(title: Text('首页'),),
      body: Center(child: Text('首页')),
    );
  }
}