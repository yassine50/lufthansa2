

class Account {
  Account._internal() {}
  String accountID = "";
  String fullName = "";
  String email = "";
  String password = "";
  String profile_pic = "";
  String phoneNumber = "";
  String? participated_champ = ''; // i think league not league id
  Map participated_matchs = {}; // i think league not league id
  int points = 0;
  String type = '';
  String user_name = '';
  bool complet_sign_in= true ;
  bool forgin =false;
  String status = "" ;

  static final Account _singleton = Account._internal();

  factory Account() {
    return _singleton;
  }
}

// or
// static  Account _singleton = new Account();
// static Account getter() {
//  if( _singleton == null){
//     Account _singleton = new Account();
//  }
//  return _singleton;
// }





