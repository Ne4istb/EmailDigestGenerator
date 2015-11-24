library email_digest_generator.mailer;

import 'package:mailer/mailer.dart';
import 'dart:io';

class Mailer {

  String _userName;
  String _password;

  Mailer(this._userName, this._password);

  send(title, body, recipients, {List<File> attachments}) async{

    var options = new MailgunSmtpOptions()
      ..username = _userName
      ..password = _password;

    var transport = new SmtpTransport(options);

    var envelope = new Envelope()
      ..from = 'anechytailov@sdl.com'
      ..fromName = 'Andrii Nechytailov'
      ..recipients = recipients
      ..subject = title
      ..html = body
      ..attachments = attachments != null ? attachments.map((file) => new Attachment(file: file)).toList() : [];

    await transport.send(envelope)
    .then((_) => print('email sent!'))
    .catchError((e) => print('Error: $e'));
  }
}
