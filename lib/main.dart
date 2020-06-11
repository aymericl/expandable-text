import 'package:expandabletext/expandable_text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String text =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed arcu mi. Aenean varius, est vel pulvinar blandit, quam turpis elementum felis, nec congue urna risus vitae ex. Etiam mattis iaculis neque, vel fringilla est venenatis a. Praesent gravida ipsum et mollis imperdiet. Duis vehicula augue in urna pellentesque blandit. Nunc fermentum metus sit amet mi finibus rhoncus. Sed eget felis lacinia, dapibus dui quis, fringilla risus.';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expandable Text Demo',
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
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(text: this.text),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String text;

  MyHomePage({Key key, this.text}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("Demo Expandable Text"),
          backgroundColor: Colors.black,
        ),
        body: Column(children: <Widget>[
          Container(
              child: ExpandableText(
                  text: new Text(widget.text,
                      softWrap: true,
                      overflow: TextOverflow.fade,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Colors.white)),
                  maxHeight: 100.0,
                  durationMS: 500))
        ]));
  }
}
