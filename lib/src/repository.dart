//import 'package:mongo_dart/mongo_dart.dart';

import 'package:http/http.dart';
import 'dart:convert';
import 'dart:async';

import 'package:EmailDigestGenerator/src/link.dart';


class Repository {

  final String _issuesUrl = '<path_to_mongo_collection>';
  final String _apiKey = '<api_key>';

  Client _httpClient;

  Repository([Client httpClient = null]) {
    _httpClient = (httpClient == null) ? new Client() : httpClient;
  }


//    var string = 'mongodb://$dbUser:$dbPassword@ds033734.mongolab.com:33734/digests';
//    print(string);
//    db = new Db(string);
//  }

  saveDigest(int id, Map<String, List<Link>> links) async {
    var url = '$_issuesUrl?apiKey=$_apiKey';

    String linksJson = JSON.encode(links, toEncodable: (pattern) {
      return (pattern as Link).toJson();
    });

    var json = '{"_id": $id, "data": $linksJson}';

    await _httpClient.post(url, body: json, headers: { 'Content-Type': 'application/json'});
  }

  Future<Map<String, List<Link>>> getDigest(id) {
    var url = '$_issuesUrl/$id?apiKey=$_apiKey';
    return _httpGet(url).then((body) => _convertToGroups(body));
  }

  Future<List<Map<String, List<Link>>>> getAllDigests() {
    var url = '$_issuesUrl?apiKey=$_apiKey';
    return _httpGet(url).then((body) => body.map((item) => _convertToGroups(item)));
  }

  Future _httpGet(url) {
    return _httpClient.get(url).then((Response response) => JSON.decode(response.body));
  }

  Map<String, List<Link>> _convertToGroups(Map body) {
    Map data = {};

    body['data'].forEach((key, List value) {
      data[key] = value.map((item) => new Link.fromJson(item));
      ;
    });

    return { body['_id']: data};
  }
}