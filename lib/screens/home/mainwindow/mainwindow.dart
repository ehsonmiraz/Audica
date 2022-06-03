import 'package:audica/models/theaudio.dart';
import 'package:audica/screens/home/audiolist.dart';
import 'package:audica/services/database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:permission_handler/permission_handler.dart';

class MainWindow extends StatefulWidget {

  @override
  _MainWindowState createState() => _MainWindowState();
}

class _MainWindowState extends State<MainWindow> with AutomaticKeepAliveClientMixin {

  int _selectedindex=0;
  @override


  void updateKeepAlive() {
    // TODO: implement updateKeepAlive
    super.updateKeepAlive();
  }
  @override
  Widget build(BuildContext context) {
    PageController _pageController=PageController(initialPage: 0,keepPage: true,viewportFraction: 0.99999999,);

    var audiolists= [AudioList(keylist:"onlinelist"),AudioList(keylist:"offlinelist"),AudioList(keylist:"onlinelist")];
    void onItemTap(int selectedIndex){
_pageController.jumpToPage(selectedIndex);

    }
    void _onPageChanged(int index){
      setState(() {
        _selectedindex=index;
      });
    }

    return StreamProvider<List<AudioModel>>.value(
      value: Database().audio,
      child:Scaffold(
        // appBar:AppBar(title: Text("Audime"),),
          body:PageView(
            controller:_pageController ,
            children: audiolists ,
            onPageChanged:_onPageChanged ,
            physics:AlwaysScrollableScrollPhysics(),),
         bottomNavigationBar: BottomNavigationBar(items: [
           BottomNavigationBarItem(icon: Icon(Icons.fiber_new_rounded) ,label: "New" ),
           BottomNavigationBarItem(icon: Icon(Icons.arrow_circle_down_outlined) ,label:"My Audimes"),
           BottomNavigationBarItem(icon: Icon(Icons.favorite) ,label: "Fav" ),
         ],
        currentIndex: _selectedindex,
        onTap: onItemTap,


      ),
      ),
    );


  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true ;//throw UnimplementedError();
}