library email_digest_generator.log;

import 'package:mongo_dart/mongo_dart.dart';
import 'package:email_digest_generator/src/Models/database.dart';

class Log extends Database {

  DbCollection _collection;

  Log(dbUser, dbPassword) : super(dbUser, dbPassword) {
    _collection = db.collection('log');
  }

  addRecord(String event) async {
    var data = { 'event': event, 'time': new DateTime.now()};
    await openConnection();
    await _collection.insert(data);
    await closeConnection();
  }
}