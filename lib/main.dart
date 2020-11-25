import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());    // 앱 실행
}

class MyApp extends StatefulWidget {
  // 상태 변경이 되는 위젯. 스테이트를 다루는 부분은 따로.
  @override
  _MyAppState createState() => _MyAppState();
  }

class _MyAppState extends State<MyApp>{
  // 스테이트를 관리하고, UI를 그리는 부분.

  int counter = 0;
  // Text UI에 표시될 값

  void increaseCounter(){
    // 버튼을 누르면 counter 값 증가
    setState((){
      counter++;
    });
  }

  void decreaseCounter(){
    setState((){
      counter--;
    });
  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "My Stateful App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Stateful Widget"),
        ),
        body: Container(
          padding: const EdgeInsets.all(66.0),
          child: Column(
            //세로로 위젯 배치
            children: <Widget>[
              Text(
                "$counter",
                style: TextStyle(fontSize: 160.0),
              ),
              Row( // 가로로 위젯을 배치, 안에 버튼 2개가 들어가 있음.
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // 위젯끼리 같은 공간 만큼 띄움
                children: <Widget>[
                  RaisedButton(
                    child: Text(
                      "Add",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.red,
                    onPressed: (){
                      increaseCounter();
                    },
                  ),
                  RaisedButton(
                    child: Text(
                      "Subtract",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.blue,
                    onPressed: (){  // 버튼 누르면 안에 있는 함수 실행
                      decreaseCounter();
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}