import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());    // 앱 실행
}

class MyApp extends StatelessWidget {
  // 상태 변경이 없는 위젯. 한번 UI가 그려지면 그대로 있음.
  int counter = 0;
  void increaseCounter() {
    counter++;
  }

  @override
  Widget build(BuildContext context) {
    // UI를 만드는 부분.
    return MaterialApp(
      // 구글 기본 디자인인 Material Design 을 써서 앱을 만든다.
      title: 'My Practice Flutter App',
      home: Scaffold(
          appBar: AppBar(
            title: Text("title"),
          ), // 앱의 상단 타이틀
          body: Container(
            // 컨테이너에 넣어서 마진이나 패딩을 준다.
            child: Column(
              //세로로 위젯들을 배열
              children: <Widget>[
                Text("$counter"),
                RaisedButton( // 버튼 위젯
                  child: Text(
                    "Add $counter",
                    style: TextStyle(color: Colors.white),  // 텍스트의 색은 하얀색
                  ),
                  color: Colors.red,
                  onPressed: (){
                    increaseCounter();
                  },
                ),
                ],
            ),
          ),
      ),
    );
  }
}
