import 'package:audica/models/profile.dart';
import 'package:audica/services/database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  dynamic name=";";
  @override 
  Widget build(BuildContext context) {
    final profile=Provider.of<List<ProfileModel>>(context);
    profile.forEach((element) {name=element.name;});
    return Container(
      child: Text("Welcome $name",style: TextStyle(fontSize: 24),),
    );
  }
}


