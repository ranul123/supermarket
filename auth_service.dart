import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Stream<String> get onAuthStateChanged => _firebaseAuth.onAuthStateChanged.map(
        (FirebaseUser user) => user?.uid,
  );
//email and password signup
  Future<String> createUserWithEmailAndPassword(
      String email, String password, String name) async {
    final auth_Result = await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    //update the username
    await updateUserName(name, auth_Result.user);
    return auth_Result.user.uid;
  }
  Future updateUserName(String name, FirebaseUser currentUser) async {
    var userUpdateInfo = UserUpdateInfo();
    userUpdateInfo.displayName = name;
    await currentUser.updateProfile(userUpdateInfo);
    await currentUser.reload();
  }
//email & password sign in
  Future<String> signInWithEmailAndPassword(
      String email, String password) async {
    return (await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password))
        .user.uid;
  }
}