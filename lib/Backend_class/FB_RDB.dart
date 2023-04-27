import 'package:firebase_core/firebase_core.dart' as firebase_core;
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';

class FB_RBD {
  bool loading = false;
  Future<bool> Update_Data(String path, Map<String, Object> value) async {
    bool verif = true;
    this.loading = true;
    DatabaseReference ref = FirebaseDatabase.instance.ref(path);
    try {
      await ref.update(value);
      this.loading = false;
    } on firebase_core.FirebaseException catch (e) {
      print(e);
      verif = false;
    }
    return verif;
  }

  Future<String> get_key(String path, String val) async {
    String res = '';
    await FirebaseDatabase.instance.ref(path).get().then((snapshot) {
      if (snapshot.exists) {
        Map<dynamic, dynamic> values = snapshot.value as Map;
        values.forEach((key, value) {
          if (value == val) {
            res = key;
          }
        });
      } else {}
    });
    return res;
  }

  void Push_Data(String path, Object value) async {
    this.loading = true;
    DatabaseReference ref = FirebaseDatabase.instance.ref(path);
    try {
      await ref.push().set(value);
      this.loading = false;
    } on firebase_core.FirebaseException catch (e) {
      print(e);
    }
  }

  Object Get_Data(String path) async {
    this.loading = true;
    final ref = FirebaseDatabase.instance.ref();
    final snapshot = await ref.child(path).get();
    this.loading = false;
    return snapshot.value;
  }

  Object Get_Data_Ref(Query ref) async {
    this.loading = true;
    final snapshot = await ref.get();
    this.loading = false;
    return snapshot.value;
  }

  Future<bool> Set_Data(String path, Object value, String child) async {
    this.loading = true;
    bool verif = true;
    DatabaseReference ref = FirebaseDatabase.instance.ref(path);
    try {
      await ref.child(child).set(value);
      this.loading = false;
    } on firebase_core.FirebaseException catch (e) {
      verif = false;
      print(e);
    }
    return verif;
  }

  Future<bool> Delete_Data(String path) async {
    this.loading = true;
    DatabaseReference ref = FirebaseDatabase.instance.ref(path);
    try {
      await ref.remove();
      this.loading = false;
    } on firebase_core.FirebaseException catch (e) {
      print(e);
    }
    return true ;
  }


  Future<void> Run_Transaction(String path, int incValue) async {
    DatabaseReference postRef = FirebaseDatabase.instance.ref(path);
    TransactionResult result = await postRef.runTransaction((Object? post) {
      // Ensure a post at the ref exists.
      if (post == null) {
        return Transaction.abort();
      }
      int newVal = int.parse(post.toString()) + incValue;
      //Do Something with Post
      return Transaction.success(newVal);
    });
  }

  Future<bool> verif_path(String path) async {
    final ref = FirebaseDatabase.instance.ref();
    final snapshot = await ref.child(path).get();
    if (snapshot.value == null) {
      return true;
    } else {
      return false;
    }
  }
}
