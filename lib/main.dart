import 'package:flutter/material.dart';
import 'bottom_navigation_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){ // 组件构造方法
    print('build');
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      color: Colors.red,
      home: BottomNavigationWidget()
    );
  }
}


















// class MyApp extends StatelessWidget {

//   // 重构
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       title: 'Wecome To Flutter',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Wecome To Flutter"),
//           ),
//           body: Center(
//             child: Container( // 相当于div标签 不设置宽高就是默认全屏大小
//               child: new Text('Hello Flutter'),
//             ),
            
//             // child: Text("Hello Flutter",
//             // textAlign: TextAlign.left, // 文字靠左
//             // style: TextStyle(
//             //   fontSize: 25,
//             //   color: Color.fromARGB(255, 255, 144, 125),
//             //   decoration: TextDecoration.underline,
//             // ),
//             // ),
//             ),
//       ),
//     );
//   }
// }