import 'dart:io';

import'package:firebase_storage/firebase_storage.dart'as firebase_storage ;
import 'package:firebase_core/firebase_core.dart'as firebase_core ;

class FB_Storage {
  final firebase_storage.FirebaseStorage storage = firebase_storage.FirebaseStorage.instance ;

   Upload_File( String filePath, String fileName) async {
     bool verif = true ;
    File file = File(filePath);
    try {
      await storage.ref("/image/$fileName").putFile(file) ;
    }on firebase_core.FirebaseException catch(e){
      print(e) ;
      verif = false  ;
    }
    return verif   ;

}
static bool verif_file = true  ;
Future<String> Get_file(String fileName) async {
  try {
    String url = await storage.ref("/image/$fileName").getDownloadURL();
    return url;
  }on firebase_core.FirebaseException catch(e){
    verif_file = false ;
    throw Exception(e) ;
  }
}
  Future<String> Get_match_image(String fileName) async {
    try {
      String url = await storage.ref("/image/$fileName").getDownloadURL();
      return url;
    }on firebase_core.FirebaseException catch(e){
      verif_file = false ;
      throw Exception(e) ;
    }
  }
}