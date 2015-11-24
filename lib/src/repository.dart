library email_digest_generator.repository;
import 'package:mongo_dart/mongo_dart.dart';
import 'dart:async';

import 'package:email_digest_generator/src/link.dart';

class Repository {

  Db _db;
  DbCollection _collection;

  Repository(dbUser, dbPassword){
    _db = new Db("mongodb://$dbUser:$dbPassword@ds033734.mongolab.com:33734/digests");
    _collection = _db.collection('issues');
  }

  openConnection()async{
    await _db.open();
  }

  closeConnection()async{
    await _db.close();
  }

  saveDigest(int id, Map<String, List<Link>> links) async {
    var data = { "_id": id, "data": _convertLinksToBsonCompatibleMap(links) };
    await _collection.insert(data);
  }

  Map<String, List<Map>> _convertLinksToBsonCompatibleMap(Map<String, List<Link>> links) {
    var result = {};
    links.forEach((key, value) => result[key] = value.map((link) => link.toMap).toList());
    return result;
  }

  Future<Map<String, List<Link>>> getDigest(id) {
    return _collection
      .findOne(where.eq('_id', id))
      .then(_convertToGroups);
  }

  Future<List<Map<String, List<Link>>>> getAllDigests() async{
    return _collection
      .find(where.sortBy('_id'))
      .map((item) => _convertToGroups(item))
      .toList();
  }

  deleteDigest(id) async{
    _collection.remove(where.eq('_id', id));
  }


  Future<List<int>> getIssueNumbers() async{
    return _collection
      .find(where.sortBy('_id'))
      .map((item) => item['_id'])
      .toList();
  }

//  Future<int> getLatestId() async{
//    var allItems = await getAllDigests();
//    allItems.map((item => item.)
//  }

  Map<String, List<Link>> _convertToGroups(Map body) {

    if (body == null) return null;

    Map data = {};

    body['data'].forEach((key, List value) {
      data[key] = value.map((item) => new Link.fromMap(item));
    });

    return { body['_id']: data};
  }
}