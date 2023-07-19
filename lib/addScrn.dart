import 'package:flutter/material.dart';

class Addscreen extends StatelessWidget {
  const Addscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AddPage(),
    );
  }
}

class AddPage extends StatefulWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          width: size.width,
          height: size.height,
          color: Colors.orange.shade200,
          child: Center(
            child: Text('This is Add Screen',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color: Colors.white
            ),),
          ),
        ),
      )
    );
  }
}
