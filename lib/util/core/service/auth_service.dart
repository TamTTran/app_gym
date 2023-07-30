import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class AuthService {
  static final _auth = FirebaseAuth.instance;

  static Future<User> singUp(String email, String password, String name) async {
    UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
      email: email.trim(),
      password: password.trim(),
    );
    final User user = userCredential.user!;
    await user.updateDisplayName(name);

    return user;
  }

  
}