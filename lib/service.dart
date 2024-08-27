
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseService{
FirebaseAuth a=FirebaseAuth.instance;
Future<User?>signupwithemailandpass(String email,String password)async{
  try{
    UserCredential credential=await a.createUserWithEmailAndPassword(email: email, password: password);
    return credential.user;
  }
  on FirebaseAuthException catch(e){
    if(e.code =='email-already-in-use'){
      print('the email already in use');
    }
    else{
      print('an error occured:${e.code}');
    }
  }
  return null;
  
}

Future<User?>signInpwithemailandpass(String email,String password)async{
  try{
    UserCredential credential=await a.signInWithEmailAndPassword(email: email, password: password);
    return credential.user;
  }
  on FirebaseAuthException catch(e){
    if(e.code =='user-not-found' || e.code=='wrong-password'){
      print('invalid email or password');
    }
    else{
      print('an error occured:${e.code}');
    }
  }
  return null;
  
}
}
   