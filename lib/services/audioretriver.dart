import 'dart:io';
import 'package:dio/dio.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:firebase_storage/firebase_storage.dart' ;
import 'package:flutter/cupertino.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:typed_data';
//import 'package:audiofileplayer/audiofileplayer.dart';
//import 'package:just_audio/just_audio.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:path_provider/path_provider.dart';
class AudioRetriver {

  void main() async{
    WidgetsFlutterBinding.ensureInitialized();
    await FlutterDownloader.initialize(
        debug: true // optional: set false to disable printing logs to console
    );

  }
  //firebase_storage.FirebaseStorage storage =
    //  firebase_storage.FirebaseStorage.instance;
    bool isDownloading=false;
    var progressString="";
    var downloadURL;
    ByteData audiobytes;
    String id;
    bool isPlaying=false;

    AudioRetriver(this.id){
     this.id=this.id+".mp3";
     setDownloadURL(this.id);
     main();
   }


    void priwarn(var text) {
      print('\x1B[33m$text\x1B[0m');
    }

  void setDownloadURL(String id) async {
    final StorageReference storageRef = FirebaseStorage.instance.ref().child(
        "audios");
    downloadURL = await storageRef.child(id).getDownloadURL();

  }
  void download1()async{
       final externaldir = await getExternalStorageDirectory();
       try {
         final id = await FlutterDownloader.enqueue(
           url:downloadURL,
           savedDir: externaldir.path,
           //audica/my audimes/",
           fileName: "downehson.mp4",
           //this.id,
           showNotification: true,
           openFileFromNotification: true,
         );

         print("aeppe = file downloaded id  =$id");
       }
       catch (e){
         print(e);
       }
  }

Future download()async{
      priwarn("oppppp");
      final tempdir =await getTemporaryDirectory();
      final path = "${tempdir.path}/ehson/1000.mp3";
      Dio dio;
       await dio.download(downloadURL,path);
       priwarn("aep downloaded");
}
  Future<void> download2() async {
      print("download called");
    Directory appDocDir = await getApplicationDocumentsDirectory();
    File downloadToFile = File('${appDocDir.path}/audio.mp3');
    final StorageReference firebase_storage = FirebaseStorage.instance.ref().child(
        "audios/1000.mp3");
    try {
      await firebase_storage
          .writeToFile(downloadToFile);
    }
      catch(e){priwarn("not dowloaded");}
      // e.g, e.code == 'canceled'

  }
  void play()async{
    AudioPlayer audioPlayer=new AudioPlayer();
   //await audioPlayer.setUrl(downloadURL);
    print("aeppe $downloadURL");
   int result = await audioPlayer.play(downloadURL);
     if(result==1) {
       isPlaying = true;
     }

     // audio = await Audio.load(downloadURL);
      //audio.play();
      print("playing------------------------------------------------------------------------------------------");
  }

   // Future<ByteData> loadAsset() async {
     // return await rootBundle.load(downloadURL);
    //}

 /*   Future<Uint8List> _readFileByte(String filePath) async {
      Uri myUri = Uri.parse(filePath);
      File audioFile = new File.fromUri(myUri);
      Uint8List bytes;
      await audioFile.readAsBytes().then((value) {
        bytes = Uint8List.fromList(value);
        print('reading of bytes is completed');
      }).catchError((onError) {
        print('Exception Error while reading audio from path:' +
            onError.toString());
      });
      return bytes;
    }*/
}