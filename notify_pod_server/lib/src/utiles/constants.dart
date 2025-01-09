import 'package:mailer/smtp_server.dart';

/// Instancia de servidor SMTP para mailer.
final SmtpServer smtpServer = returnSmtp();

/// Nombre que aparecerá en los correos electrónicos enviados mediante el mailer.
const demoEmailName = 'Notify Pod Demo';

const subjectDemoMail = 'this is example mail';

SmtpServer returnSmtp({
  gmailDirection = 'notifypod.demo@gmail.com',
  gmailPassword = 'hoco keot idyc eoda',
}) {
  return gmail(
    gmailDirection,
    gmailPassword,
  );
}
