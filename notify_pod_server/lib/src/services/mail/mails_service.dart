import 'package:mailer/mailer.dart';
import 'package:notify_pod_server/src/services/service.dart';
import 'package:notify_pod_server/src/generated/protocol.dart';
import 'package:notify_pod_server/src/utiles/constants.dart';
import 'package:serverpod/serverpod.dart';

class EmailPodServices extends Service {
  Future<bool> sendEmail(
    Session session, {
    required List<String> email,
    required String subject,
    required String body,
    required String logoUuid,
  }) async {
    final now = DateTime.now().toUtc();

    // Create the message
    final message = Message()
      ..from = Address(
        'notifypod.demo@gmail.com',
        'Notify Pod Demo',
      )
      ..subject = subject
      ..html = body;

    bool allEmailsSent = true;

    // Send the email to each recipient
    for (String emailAddress in email) {
      // Create the mail record
      final mailRecord = EmailPod(
        email: emailAddress.trim(),
        subject: subject,
        body: body,
        emailStatus: NotificationStatus.PENDING,
        createdAt: now,
        logoUuid: logoUuid,
      );

      int? emailRecordId;

      try {
        final emailRegister = await EmailPod.db.insert(
          session,
          [mailRecord],
        );
        logger.info(
          '''Email record created for ${emailAddress.trim()} 
          with id: ${emailRegister.first.id}''',
        );
        // Save the id for later use
        emailRecordId = emailRegister.first.id;

        // Send the email
        message.recipients.clear();
        message.recipients.add(
          emailAddress.trim(),
        );
        await send(
          message,
          smtpServer,
        );

        // Update the mail record
        emailRegister.first.emailStatus = NotificationStatus.SENT;
        emailRegister.first.sentAt = DateTime.now().toUtc();
        await EmailPod.db.update(
          session,
          [emailRegister.first],
        );
      } catch (e) {
        // Handle error and update status to FAILED
        if (emailRecordId != null) {
          final emailRecord = await EmailPod.db.findById(
            session,
            emailRecordId,
          );

          await EmailPod.db.updateRow(
            session,
            emailRecord!.copyWith(
              emailStatus: NotificationStatus.FAILED,
              sentAt: DateTime.now().toUtc(),
            ),
          );
        }

        // Log del error
        logger.info(
          'Fail to send email to $emailAddress: ${e.toString()}',
        );

        // Set the flag to false
        allEmailsSent = false;
      }
    }

    // Return the result
    return allEmailsSent;
  }
}
