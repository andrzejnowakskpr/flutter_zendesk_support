import 'package:flutter/material.dart';

import 'package:flutter_zendesk_support/flutter_zendesk_support.dart';

import 'params.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Zendesk Support",
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  void initState() {
    super.initState();
    FlutterZendeskSupport.init(zendeskSupportSettings);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Zendesk Support'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.headset_mic),
        onPressed: () async => await FlutterZendeskSupport.openTickets(),
        //onPressed: () async => await FlutterZendeskSupport.openHelpCenter(),
      ),
    );
  }
}
