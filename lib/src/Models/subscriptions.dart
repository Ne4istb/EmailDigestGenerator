library email_digest_generator.subscriptions;

import 'package:mongo_dart/mongo_dart.dart';
import 'dart:async';
import 'package:email_digest_generator/src/Models/database.dart';

class Subscriptions extends Database {

  DbCollection _collection;

  Subscriptions(dbUser, dbPassword) : super(dbUser, dbPassword) {
    _collection = db.collection('subscribers');
  }

  addSubscriber(String email) async {
    await openConnection();
    var data = { "email": email};
    await _collection.insert(data);
    await closeConnection();
  }

  removeSubscriber(String email) async {
    await openConnection();
    await _collection.remove(where.eq('email', email));
    await closeConnection();
  }

  Future<List<String>> getSubscribers() async {
    await openConnection();
    var result = await _collection.find().map((item) => item.email).toList();
    await closeConnection();
    return result;
  }
}