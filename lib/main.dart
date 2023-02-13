import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() {
    return _MyHomeState();
  }
}

class _MyHomeState extends State<MyHomePage> {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ListView"),
        ),
        body: ListView.separated(
            padding: const EdgeInsets.all(10),
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 50,
                color: Colors.amber[colorCodes[index]],
                child: Center(
                  child: Text("Enteries ${entries[index]}"),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
            itemCount: entries.length)

        // body: ListView(
        //   padding: const EdgeInsets.all(8),
        //   children: <Widget>[
        //     Container(
        //       height: 50,
        //       color: Colors.amber[600],
        //       child: const Center(child: Text('Entry A')),
        //     ),
        //     Container(
        //       height: 50,
        //       color: Colors.amber[500],
        //       child: const Center(child: Text('Entry B')),
        //     ),
        //     Container(
        //       height: 50,
        //       color: Colors.amber[100],
        //       child: const Center(child: Text('Entry C')),
        //     ),
        //   ],
        // ),
        );
  }
}
