library email_digest_generator.repository;
import 'package:mongo_dart/mongo_dart.dart';
import 'dart:async';

import 'package:email_digest_generator/src/Models/link.dart';
import 'package:email_digest_generator/src/Models/database.dart';

class Repository extends Database{

  DbCollection _collection;

  Repository(dbUser, dbPassword):super(dbUser, dbPassword){
    _collection = db.collection('issues');
  }

  saveDigest(int id, Map<String, List<Link>> links) async {
    await openConnection();
    var data = { "_id": id, "data": _convertLinksToBsonCompatibleMap(links) };
    await _collection.insert(data);
    await closeConnection();
  }

  Map<String, List<Map>> _convertLinksToBsonCompatibleMap(Map<String, List<Link>> links) {
    var result = {};
    links.forEach((key, value) => result[key] = value.map((link) => link.toMap).toList());
    return result;
  }

  Future<Map<String, List<Link>>> getDigest(id) async {
    await openConnection();
    var result = await _collection
      .findOne(where.eq('_id', id))
      .then(_convertToGroups);
    await closeConnection();
    return result;
  }

  Future<List<Map<String, List<Link>>>> getAllDigests() async{
    await openConnection();
    var result = await _getAllDigests().map((item) => _convertToGroups(item)).toList();
    await closeConnection();
    return result;
  }

  Stream<Map> _getAllDigests() {
    return _collection.find(where.sortBy('_id', descending:true));
  }

  deleteDigest(id) async{
    await openConnection();
    await _collection.remove(where.eq('_id', id));
    await closeConnection();
  }


  Future<List<int>> getIssueNumbers() async{
    await openConnection();
    var result = await _getAllDigests().map((item) => item['_id']).toList();
    await closeConnection();
    return result;
  }

  Future<int> getLatestId() async{
    await openConnection();
    Map latestItem = await _getAllDigests().first;
    var result = latestItem["_id"];
    await closeConnection();
    return result;
  }

  Map<String, List<Link>> _convertToGroups(Map body) {

    if (body == null) return null;

    Map data = {};

    body['data'].forEach((key, List value) {
      data[key] = value.map((item) => new Link.fromMap(item));
    });

    return { body['_id']: data};
  }
}