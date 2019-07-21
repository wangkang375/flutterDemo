import 'package:flutter/material.dart';
import 'page/Homepage.dart';
import 'page/MessagePage.dart';
import 'page/MinePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: MyHomePage(title: 'tab demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var selectIndex = 1;
  var homepages = [HomePage(), MessagePage(), MinePage()];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: homepages[selectIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              selectIndex = index;
            });
          },
          currentIndex: selectIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance), title: Text("首页")),
            BottomNavigationBarItem(
                icon: Icon(Icons.message), title: Text("消息")),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box), title: Text("我的")),
          ]),
    );
  }
}
