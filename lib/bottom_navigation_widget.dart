
import 'package:flutter/material.dart';
import 'pages/email_screen.dart';
import 'pages/home_screen.dart';
import 'pages/setting_screen.dart';
import 'pages/pages_screen.dart';
// StatefulWidget 为居右可变状态(state)的窗口组件(Widget)  分为两部分：
//第一部分是继承于StatefullWidget

class BottomNavigationWidget extends StatefulWidget {
  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}
// 第二部分是集成于State，其实State部分才是我们的重点，主要部分代码都是在State当中
class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {

  final _BottomNavigationColor = Colors.blue; // 按钮颜色
  int _currentIndex = 0; // 所在页数
  List<Widget> list = List();
  
  // 重写初始化状态
  @override
  void initState(){
    list
      ..add(HomeScreen())
      ..add(EmailScreen())
      ..add(PagesScreen())
      ..add(SettingScreen());
    super.initState();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color:_BottomNavigationColor,
            ),
            title: Text(
              '首页',
              style:TextStyle(color: _BottomNavigationColor)
            )
          ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.email,
              color:_BottomNavigationColor,
            ),
            title: Text(
              'Email',
              style:TextStyle(color: _BottomNavigationColor)
            )
          ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.pages,
              color:_BottomNavigationColor,
            ),
            title: Text(
              'Pages',
              style:TextStyle(color: _BottomNavigationColor)
            )
          ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color:_BottomNavigationColor,
            ),
            title: Text(
              'Setting',
              style:TextStyle(color: _BottomNavigationColor)
            )
          )
        ],
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}


// Scaffold 共16种属性
// AppBar 顶部标题栏 ，不设置不显示