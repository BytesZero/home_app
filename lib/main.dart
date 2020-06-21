import 'package:flutter/material.dart';

import 'pages/find_page.dart';
import 'pages/home_page.dart';
import 'pages/msg_page.dart';
import 'pages/user_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  /// 当前索引
  int _currentIndex = 0;
  List pageList;

  @override
  void initState() {
    ///初始化 4 个 Page
    pageList = <Widget>[
      HomePage(), //首页
      FindPage(), //发现
      MsgPage(), //消息
      UserPage(), //我的
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('MainPage');

    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: pageList,
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          currentIndex: _currentIndex,
          onTap: (newIndex) {
            if (_currentIndex != newIndex) {
              setState(() {
                _currentIndex = newIndex;
              });
            }
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('首页'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              title: Text('发现'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.email),
              title: Text('消息'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              title: Text('我的'),
            )
          ]),
    );
  }
}
