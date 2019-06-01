import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseProvider {
  
  final Firestore db = Firestore.instance;

  static addInvoice(String invoice) {
    var invocieMap = new Map<String, dynamic>();
    invocieMap['invoiceDetail'] = invoice;
    Firestore.instance.collection('Invoices').add(invocieMap);
  }

  // static removePlayer(String id) {
  //   Firestore.instance.runTransaction((Transaction transaction) async {
  //     await reference.document(id).delete().catchError((error) {
  //       print(error);
  //     });
  //   });
  // }

  // static updatePlayer(String id, String newName) {
  //   Firestore.instance.runTransaction((Transaction transaction) async {
  //     await reference.document(id).updateData({
  //       "name": newName,
  //     }).catchError((error) {
  //       print(error);
  //     });
  //   });
  // }
}
