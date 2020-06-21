import 'package:flutter/material.dart';


/// 发现
class FindPage extends StatefulWidget {
  @override
  _FindPageState createState() => _FindPageState();
}

class _FindPageState extends State<FindPage> {


  @override
  void initState() {
    // debugPrint('FindPage initState');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('FindPage');
    return Scaffold(
      appBar: AppBar(title: Text('发现'),),
      body: Center(child: Text('发现')),
    );
  }
}