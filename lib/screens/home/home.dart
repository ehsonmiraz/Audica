
import 'package:audica/models/theaudio.dart';
import 'package:audica/screens/home/audiolist.dart';
import 'package:audica/screens/home/biodata.dart';
import 'package:audica/screens/home/mainwindow/mainwindow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:audica/services/database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

 // Database.fetch_data();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          appBar: AppBar(
            title: Text("Audica;",),
            backgroundColor: Colors.amber,
            actions: <Widget>[

            ],
          ),
          body: MainWindow(),

        );


  }
}
