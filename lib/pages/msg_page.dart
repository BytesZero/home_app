import 'package:flutter/material.dart';


/// 消息
class MsgPage extends StatefulWidget {
  @override
  _MsgPageState createState() => _MsgPageState();
}

class _MsgPageState extends State<MsgPage> {

  @override
  void initState() {
    // debugPrint('MsgPage initState');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('MsgPage');
    return Scaffold(
      appBar: AppBar(title: Text('消息'),),
      body: Center(child: Text('消息')),
    );
  }
}