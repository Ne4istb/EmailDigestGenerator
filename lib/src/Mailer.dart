library email_digest_generator.mailer;

import 'package:mailer/mailer.dart';

class Mailer {

  send(title, body, recipients) async{
    var options = new GmailSmtpOptions()
      ..username = 'anechytailov@gmail.com'
      ..password = '<my_password>';

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
