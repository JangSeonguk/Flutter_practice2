import 'package:flutter/material.dart';
import 'package:tabbar/animalItem.dart';
import 'package:tabbar/first_page.dart';
import 'package:tabbar/second_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{

  TabController? controller;
  List<Animal> animalList = new List.empty(growable: true);

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
    controller!.addListener(() {
      if(!controller!.indexIsChanging){
        print("이전 index, ${controller!.previousIndex}");
        print("현재 index, ${controller!.index}");
        print("전체 탭 길이, ${controller!.length}");
      }
    });
  animalList.add(Animal(animalName: '젖소', imagePath: 'assets/cow.png', kind: '포유류'));
  animalList.add(Animal(animalName: '벌', imagePath: 'assets/bee.png', kind: '포유류'));
  animalList.add(Animal(animalName: '젖소', imagePath: 'assets/cow.png', kind: '포유류'));
  animalList.add(Animal(animalName: '젖소', imagePath: 'assets/cow.png', kind: '포유류'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('TabBar Example'),
        ),
        body: TabBarView(
          children: <Widget>[FirstPage(list:animalList), SecondPage()],
          controller: controller,
        ),
        bottomNavigationBar: TabBar(tabs: <Tab>[
          Tab(icon: Icon(Icons.looks_one, color: Colors.blue),) ,
          Tab(icon: Icon(Icons.looks_two, color: Colors.blue),)
        ], controller: controller,
        )
    );
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }
}