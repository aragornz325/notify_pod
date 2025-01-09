import 'package:notify_pod_server/src/endpoints/email/email.endpoint.dart';
import 'package:serverpod/serverpod.dart';

class NotifyEmails {
  /// Send a mail to specific user.
  /// the mail will be sent to the user.
  /// [session] the session of the user sending the mail.
  /// [email] is a list of emails to send the mail to.
  /// [subject] the subject of the mail.
  /// [body] the body of the mail.
  Future<bool> sendEmail({
    required Session session,
    required List<String> email,
    required String subject,
    required String body,
    required String logoUuid,
    
  }) async {
    try {
      return await EmailpodEndpoint().sendEmail(
        session,
        email,
        subject,
        body,
        logoUuid,
      );
    } catch (e) {
      throw Exception(
        'Error in endpoint sendPushNotification: $e',
      );
    }
  }

  }

