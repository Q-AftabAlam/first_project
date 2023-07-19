import 'package:flutter/material.dart';

class Discoveredscreen extends StatelessWidget {
  const Discoveredscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DiscoverdPage(),
    );
  }
}

class DiscoverdPage extends StatefulWidget {
  const DiscoverdPage({Key? key}) : super(key: key);

  @override
  State<DiscoverdPage> createState() => _DiscoverdPageState();
}

class _DiscoverdPageState extends State<DiscoverdPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          width: size.width,
          height: size.height,
          color: Colors.purple.shade200,
          child: Center(
            child: Text('This is Dicovered Screen',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color: Colors.white
            ),),
          ),
        ),
      )
    );
  }
}
