library email_digest_generator.mailer;

import 'package:mailer/mailer.dart';

class Mailer {

  String _userName;
  String _password;

  Mailer(this._userName, this._password);

  send(title, body, recipients) async{
    var options = new GmailSmtpOptions()
      ..username = _userName
      ..password = _password;

    var transport = new SmtpTransport(options);

    var envelope = new Envelope()
      ..from = 'anechytailov@gmail.com'
      ..fromName = 'Ne4istb'
      ..recipients = recipients
      ..subject = title
      ..html = body;

    await transport.send(envelope)
    .then((_) => print('email sent!'))
    .catchError((e) => print('Error: $e'));
  }
}
