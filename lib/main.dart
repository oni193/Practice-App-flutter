import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());    // 앱 실행
}

class MyApp extends StatelessWidget {
  // 상태 변경이 없는 위젯. 한번 UI가 그려지면 그대로 있음.
  @override
  Widget build(BuildContext context) {
    // UI를 만드는 부분.
    return new MaterialApp(
      // 구글 기본 디자인인 Material Design 을 써서 앱을 만든다.
        title: 'My Practice Flutter App',
        debugShowCheckedModeBanner: false,
        //debug 표시를 보지 않는다.
        home: Scaffold(
        appBar: AppBar(title: Text("title")),
    // 앱의 상단 타이틀
    // body: Text("플러터 앱 화면에 표시되는 텍스트!")
    // // 앱 화면에 표시되는 텍스트
    body: Icon (Icons.send, color:Colors.blueAccent)
    // 원하는 아이콘을 지정, 색도 바꿀 수 있다.
        ),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
