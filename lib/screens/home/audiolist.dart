import 'package:audica/models/theaudio.dart';
import 'package:audica/screens/home/mainwindow/mainwindow.dart';
import 'package:audica/services/audioretriver.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:audica/shared/loading.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:path_provider/path_provider.dart';
class AudioList extends StatefulWidget {
  String keylist;
  AudioList({this.keylist});
  @override
  _AudioListState createState() => _AudioListState();
}

class _AudioListState extends State<AudioList>
    with  AutomaticKeepAliveClientMixin<AudioList>{
  var  audiolist;
  @override
  void initState() {
    super.initState();


    WidgetsFlutterBinding.ensureInitialized();
    FlutterDownloader.initialize(
        debug: true // optional: set false to disable printing logs to console

    );

  }
  @override
  Widget build(BuildContext context) {
    // final onlineaudiolist = Provider.of<List<AudioModel>>(context);
    super.build(context);

    retrivelist() async {
      if(widget.keylist=="onlinelist")
          audiolist =  Provider.of<List<AudioModel>>(context);
      else if(widget.keylist=="offlinelist")
        audiolist = [
          AudioModel(name: "offline talwar",
              tags: "rajiv",
              composer: "rajiv talwar",
              uid: "Aeppe9504d"),
          AudioModel(name: "offline talwar",
              tags: "rajiv",
              composer: "rajiv talwar",
              uid: "Aeppe9504d"),
          AudioModel(name: "offline talwar",
              tags: "rajiv",
              composer: "rajiv talwar",
              uid: "Aeppe9504d"),
          AudioModel(name: "offline talwar",
              tags: "rajiv",
              composer: "rajiv talwar",
              uid: "Aeppe9504d"),
          AudioModel(name: "offline talwar",
              tags: "rajiv",
              composer: "rajiv talwar",
              uid: "Aeppe9504d"),
          AudioModel(name: "offline talwar",
              tags: "rajiv",
              composer: "rajiv talwar",
              uid: "Aeppe9504d"),
          AudioModel(name: "offline talwar",
              tags: "rajiv",
              composer: "rajiv talwar",
              uid: "Aeppe9504d"),
          AudioModel(name: "offline talwar",
              tags: "rajiv",
              composer: "rajiv talwar",
              uid: "Aeppe9504d"),
          AudioModel(name: "offline talwar",
              tags: "rajiv",
              composer: "rajiv talwar",
              uid: "Aeppe9504d"),
          AudioModel(name: "offline talwar",
              tags: "rajiv",
              composer: "rajiv talwar",
              uid: "Aeppe9504d"),
          AudioModel(name: "offline talwar",
              tags: "rajiv",
              composer: "rajiv talwar",
              uid: "Aeppe9504d"),
          AudioModel(name: "offline123 talwar",
              tags: "rajiv",
              composer: "rajiv talwar",
              uid: "Aeppe9504d"),
          AudioModel(name: "offline talwar",
              tags: "rajiv",
              composer: "rajiv talwar",
              uid: "Aeppe9504d"),
          AudioModel(name: "offline talwar",
              tags: "rajiv",
              composer: "rajiv talwar",
              uid: "Aeppe9504d"),
          AudioModel(name: "offline talwar",
              tags: "rajiv",
              composer: "rajiv talwar",
              uid: "Aeppe9504d"),
          AudioModel(name: "offline talwar",
              tags: "rajiv",
              composer: "rajiv talwar",
              uid: "Aeppe9504d"),
          AudioModel(name: "offline talwar",
              tags: "rajiv",
              composer: "rajiv talwar",
              uid: "Aeppe9504d"),
          AudioModel(name: "offline talwar",
              tags: "rajiv",
              composer: "rajiv talwar",
              uid: "Aeppe9504d"),
          AudioModel(name: "offline talwar",
              tags: "rajiv",
              composer: "rajiv talwar",
              uid: "Aeppe9504d"),
          AudioModel(name: "offline talwar",
              tags: "rajiv",
              composer: "rajiv talwar",
              uid: "Aeppe9504d"),
          AudioModel(name: "offline talwar",
              tags: "rajiv",
              composer: "rajiv talwar",
              uid: "Aeppe9504d"),
          AudioModel(name: "offline talwar",
              tags: "rajiv",
              composer: "rajiv talwar",
              uid: "Aeppe9504d"),
          AudioModel(name: "offline talwar",
              tags: "rajiv",
              composer: "rajiv talwar",
              uid: "Aeppe9504d"),
          AudioModel(name: "offline talwar",
              tags: "rajiv",
              composer: "rajiv talwar",
              uid: "Aeppe9504d"),
          AudioModel(name: "offline talwar",
              tags: "rajiv",
              composer: "rajiv talwar",
              uid: "Aeppe9504d"),
          AudioModel(name: "offline talwar",
              tags: "rajiv",
              composer: "rajiv talwar",
              uid: "Aeppe9504d"),
          AudioModel(name: "offline talwar",
              tags: "rajiv",
              composer: "rajiv talwar",
              uid: "Aeppe9504d"),
          AudioModel(name: "offline talwar",
              tags: "rajiv",
              composer: "rajiv talwar",
              uid: "Aeppe9504d"),
          AudioModel(name: "23offline talwar",
              tags: "rajiv",
              composer: "rajiv talwar",
              uid: "Aeppe9504d"),
          AudioModel(name: "offline talwar",
              tags: "rajiv",
              composer: "rajiv talwar",
              uid: "Aeppe9504d"),
          AudioModel(name: "offline talwar",
              tags: "rajiv",
              composer: "rajiv talwar",
              uid: "Aeppe9504d"),
          AudioModel(name: "offline talwar",
              tags: "rajiv",
              composer: "rajiv talwar",
              uid: "Aeppe9504d"),
          AudioModel(name: "offline talwar",
              tags: "rajiv",
              composer: "rajiv talwar",
              uid: "Aeppe9504d"),
          AudioModel(name: "offline talwar",
              tags: "rajiv",
              composer: "rajiv talwar",
              uid: "Aeppe9504d"),
          AudioModel(name: "offline talwar",
              tags: "rajiv",
              composer: "rajiv talwar",
              uid: "Aeppe9504d"),
          AudioModel(name: "offline talwar",
              tags: "rajiv",
              composer: "rajiv talwar",
              uid: "Aeppe9504d"),
          AudioModel(name: "offline talwar",
              tags: "rajiv",
              composer: "rajiv talwar",
              uid: "Aeppe9504d"),
          AudioModel(name: "offline talwar",
              tags: "rajiv",
              composer: "rajiv talwar",
              uid: "Aeppe9504d"),
          AudioModel(name: "offline talwar",
              tags: "rajiv",
              composer: "rajiv talwar",
              uid: "Aeppe9504d"),
          AudioModel(name: "offline talwar",
              tags: "rajiv",
              composer: "rajiv talwar",
              uid: "Aeppe9504d"),
          AudioModel(name: "offline talwar",
              tags: "rajiv",
              composer: "rajiv talwar",
              uid: "Aeppe9504d"),
          AudioModel(name: "offline talwar",
              tags: "rajiv",
              composer: "rajiv talwar",
              uid: "Aeppe9504d"),
        ];
        return audiolist ;


    }
    //Future<bool> check_permission ()

    WidgetsFlutterBinding.ensureInitialized();
    FlutterDownloader.initialize(
        debug: true // optional: set false to disable printing logs to console

    );

    return FutureBuilder(
        builder: (ctx, snapshot) {
          // Checking if future is resolved or not
          if (snapshot.connectionState == ConnectionState.done) {
            // If we got an error
            if((snapshot.data as List).length==0)
              {return Text("Nothing to Show");}

            else if(snapshot.hasError) {
              print("'${snapshot.error} occured'");
              return Center(
                child: Text(
                  '${snapshot.error} occured',
                  style: TextStyle(fontSize: 18),
                ),
              );

              // if we got our data
            } else if (snapshot.hasData) {
              audiolist = snapshot.data as List;
              return Container(
                color: Colors.grey[200],
                height: 594.0,

                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: audiolist.length,
                  itemBuilder: (BuildContext context, int index) {

                    AudioRetriver audioRetriver= new AudioRetriver("1000");
                    return Container(
                     // color: Colors.grey[200],
                      margin: EdgeInsets.fromLTRB(6, 3, 6, 1),
                      child: ListTile(

                        leading: ButtonTheme(
                            minWidth: 5,
                            child: RaisedButton.icon(onPressed: () {
                              audioRetriver.play();
                              for(int i =0;i<
                                  0;i++)
                                {
                                  print(audioRetriver.isPlaying);
                                }

                            }, icon: Icon(Icons.play_arrow), label: Text(""))),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text("${audiolist[index].name}",
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),),

                          ],
                        ),
                        subtitle: Text("${audiolist[index].composer}",
                          style: TextStyle(
                            fontSize: 14,),),
                        trailing: FlatButton.icon(onPressed: ()  async{
                    var status = await Permission.storage.status;
                    print("${status.isDenied} iiiiii");
                    if(status==PermissionStatus.granted){
                      print("aep22 ${status}");
                      audioRetriver.download1();
                      print("aeppe23 ${status}");
                    }
                    else {
                      var status = await Permission.storage.request;
                      if (status == PermissionStatus.granted) {
                        print("down");
                        print("aeppe  yes ${status}");
                        audioRetriver.download();

                      }

                      else {
                        //status = await Permission.storage.status;
                        print("aeppe = status -  $status");

                        print(" aeppe = downloaded");
                        //return false;
                      }
                    }



                        }, icon: Icon(Icons.file_download), label: Text("")),

                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,

                      ),
                    );
                  },
                ),
              );
            }
          }

          // Displaying LoadingSpinner to indicate waiting state
          return Center(
            child:Loading().spinkitlistloading,// CircularProgressIndicator(),
          );
        },

        // Future that needs to be resolved
        // inorder to display something on the Canvas
        future: retrivelist(),

    );

   }

  @override
  bool get wantKeepAlive => true;

}
//Loading().spinkitlistloading;