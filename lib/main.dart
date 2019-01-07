import 'package:flutter/material.dart';
import 'package:bottomnavigatiobar_widget/pages/first.dart';
import 'package:bottomnavigatiobar_widget/pages/second.dart';
import 'package:bottomnavigatiobar_widget/pages/third.dart';

void main(){
  runApp(new MaterialApp(
    home: MyNavigator(),
  ));
}

class MyNavigator extends StatefulWidget{
  @override
  _MyNavigatorState createState() => _MyNavigatorState();
}

class _MyNavigatorState extends State<MyNavigator> with SingleTickerProviderStateMixin{
  TabController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new TabController(length: 3, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Demi Bottom Navigation Bar"),
      ),
      bottomNavigationBar: new Material(
        color: Colors.blueGrey,
        child: new TabBar(
          tabs: <Tab>[
            new Tab(
              icon: new Icon(Icons.alarm),
            ),
            new Tab(
              icon: new Icon(Icons.watch_later),
            ),
            new Tab(
              icon: new Icon(Icons.airplanemode_active),
            ),
          ],
          controller: controller,
        ),
      ),
      body: new TabBarView(
              children: <Widget>[
                new FirstTab(), new SecondTab(), new ThirdTab()
              ],
            controller: controller,
          ),
    );
  }
}
