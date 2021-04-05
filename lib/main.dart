import 'package:flutter/material.dart';
import 'package:meu_app/Models/Iten.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Felix App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  var itens = <Iten>[];
  HomePage() {
    itens = [];
    itens.add(Iten(title: "Alexandre", done: false));
    itens.add(Iten(title: "Felix", done: true));
    itens.add(Iten(title: "Menezes", done: false));
  }

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Felix List Registros"),
      ),
      body: ListView.builder(
        itemCount: widget.itens.length,
        itemBuilder: (context, index) {
          final iten = widget.itens[index];
          return CheckboxListTile(
            title: Text(iten.title),
            key: Key(iten.title),
            value: iten.done,
            onChanged: (value) {},
          );
        },
      ),
    );
  }
}
