import 'package:flutter/material.dart';

// void main(){
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}
class MyAppState extends State<MyApp> {
  var ansIndex=0;
  @override
  Widget build(BuildContext context) {
    var str = ['str1', 'str2', 'str3'];
    var ans= ['ans1', 'ans2', 'ans3'];

    void answer(){
      setState(() {
        ansIndex+=1;
        ansIndex%=3;
      });
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
