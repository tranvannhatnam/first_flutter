import 'package:flutter/material.dart';

// void main(){
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var str = ['str1', 'str2', 'str3'];
    var ans= ['ans1', 'ans2', 'ans3'];
    var ansIndex=0;
    void answer(){
      ansIndex+=1;
      print (ansIndex);
    }
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Hello Nam')),
        body: Column(
          children: [
            Text(ans[ansIndex]),
            RaisedButton(
              child: Text(str.elementAt(0)),
              onPressed: answer,
            ),
            RaisedButton(
              child: Text(str.elementAt(1)),
              onPressed: answer,
            ),
            RaisedButton(
              child: Text(str.elementAt(2)),
              onPressed: answer,
            ),
          ],
        ),
      ),
    );
  }
}
