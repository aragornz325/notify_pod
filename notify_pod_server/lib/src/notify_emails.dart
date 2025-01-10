import 'package:notify_pod_server/src/endpoints/email/email.endpoint.dart';
import 'package:serverpod/serverpod.dart';

class NotifyEmails {
  /// Send a mail to specific user.
  /// the mail will be sent to the user.
  /// [session] the session of the user sending the mail.
  /// [email] is a list of emails to send the mail to.
  /// [subject] the subject of the mail.
  /// [body] the body of the mail.
  /// [logoUuid] the uuid of the logo to be used in the mail.
  /// [secretKey] The secret key used to sign the JWT for email tracking.
  Future<bool> sendEmail({
    required Session session,
    required List<String> email,
    required String subject,
    required String body,
    required String logoUuid,
    required String secretKey,
  }) async {
    try {
      return await EmailpodEndpoint()
          .sendEmail(session, email, subject, body, logoUuid, secretKey);
    } catch (e) {
      throw Exception(
        'Error in endpoint sendMailNotification: $e',
      );
    }
  }

  /// Confirm the email has been read.
  /// [session] the session of the user sending the mail.
  /// [slugToken] the token to confirm the email has been read.
  /// [secretKey] The secret key used to sign the JWT for email tracking.
  ///
  Future<bool> confirmEmailRead({
    required Session session,
    required String slugToken,
    required String secretKey,
  }) async {
    try {
      return await EmailpodEndpoint()
          .confirmEmailRead(session, slugToken, secretKey);
    } catch (e) {
      throw Exception(
        'Error in endpoint confirmEmailRead: $e',
      );
    }
  }
}
