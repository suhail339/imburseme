import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseProvider {
  
  final Firestore db = Firestore.instance;

  static addInvoice(String invoice) {
    var invocieMap = new Map<String, dynamic>();
    invocieMap['invoiceDetail'] = invoice;
    Firestore.instance.collection('Invoices').add(invocieMap);
  }
}
