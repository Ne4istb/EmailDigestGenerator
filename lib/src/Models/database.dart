library email_digest_generator.database;
import 'package:mongo_dart/mongo_dart.dart';

abstract class Database {

  Db db;

  Database(dbUser, dbPassword){
    db = new Db("mongodb://$dbUser:$dbPassword@ds019648.mlab.com:19648/test_digests");
  }

  openConnection()async{
    await db.open();
  }

  closeConnection()async{
    await db.close();
  }
}