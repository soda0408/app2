import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        //ztitle: _appBarTitle(),
        leading: IconButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            icon: const Icon(Icons.dehaze),
            onPressed: () => {},
          ),
        //メニュー画面のバーの部分
        actions: <Widget>[
          IconButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            icon: const Icon(Icons.calendar_today_outlined),
            onPressed: () => {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('image/kondate.jpg'),
            //牛乳、コッペパン、シチュー、グリルチキン、サラダ
            Row(
              children: <Widget>[
                Column(children: <Widget>[
                  Image.asset('image/milk.png', width: 100,),
                  const Text('牛乳')],), 
                Column(children: <Widget>[
                  Image.asset('image/koppepan.png', width: 130,),
                  const Text("コッペパン")],),
                Column(children: <Widget>[
                  Image.asset('image/sityu.png', width: 130,),
                  const Text("シチュー")],),                
                  ],),
            Row(
              children: <Widget>[
                Column(children: <Widget>[
                  Image.asset('image/chicken.png', width: 130,),
                  const Text("グリルチキン")],),
                Column(children: <Widget>[
                  Image.asset('image/salad.png', width: 120,),
                  const Text("シーザーサラダ")],),
              ],
            ),
            Image.asset('image/eiyou.jpg'),
          ],
        ),    
      ),
    );
  }
}

