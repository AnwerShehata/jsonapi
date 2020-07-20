import 'package:flutter/material.dart';
import './ModelCompany.dart';
import './DataHealder.dart';

class HomeApp extends StatefulWidget {
  @override
  _HomeAppState createState() => _HomeAppState();
}



class _HomeAppState extends State<HomeApp> {

  @override
  void initState() {
    super.initState();
    DataHealber().getDataCompany();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        elevation: 0,
        title: Text("$dataN."),
      ),



      body: Center(
        child: Text("Body"),
      ),


    );
  }
}
