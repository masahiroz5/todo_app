import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/main_model.dart';
import 'package:todo_app/next_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MainModel>(
      create: (_) => MainModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("まさひろ"),
        ),
        body: Consumer<MainModel>(builder: (context, model, child) {
          return Center(
            child: Column(
              children: [
                Text(
                  model.kboyText,
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                ElevatedButton(
                  child: Text('ボタン'),
                  onPressed: () {
                    //ここでなにかする
                    model.changeKboyText();
                  },
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
