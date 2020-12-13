import 'package:cloud_firestore/cloud_firestore.dart';

Future sendData() async {
  final db = FirebaseFirestore.instance.collection("BMI Info").add({
    'BMI' : '22.7', // will be generated next version
  });
}