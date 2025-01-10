import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:mailer/mailer.dart';
import 'package:notify_pod_server/src/services/service.dart';
import 'package:notify_pod_server/src/generated/protocol.dart';
import 'package:notify_pod_server/src/utiles/constants.dart';
import 'package:notify_pod_server/src/utiles/templates/made_with_love.dart';
import 'package:serverpod/serverpod.dart';

class EmailPodServices extends Service {
  Future<bool> sendEmail(
    Session session, {
    required List<String> email,
    required String subject,
    required String body,
    required String logoUuid,
    required String secretKey,
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

      final emailRegister = await EmailPod.db.insert(
        session,
        [
          mailRecord.copyWith(
            body: body,
          ),
        ],
      );
      logger.info(
        '''Email record created for ${emailAddress.trim()} 
          with id: ${emailRegister.first.id}''',
      );
      if (emailRegister.isEmpty || emailRegister.first.id == null) {
        logger.info(
          'Fail to create email record for ${emailAddress.trim()}',
        );
        allEmailsSent = false;
        continue;
      }
      final int emailRecordId = emailRegister.first.id!;
      try {
        final slug = JWT(
          {
            'email': emailAddress.trim(),
            'emailRecordId': emailRecordId,
            'logoUuid': logoUuid,
          },
          issuer: 'notify_pod_server',
        ).sign(
          SecretKey(
            secretKey,
          ),
        );

        final templateHtml = madeWithLove(
          imageUrl: "http://localhost:8082/returnimage?slug=$slug",
          token: slug,
        );

        // Send the email
        message.recipients.clear();
        message.recipients.add(
          emailAddress.trim(),
        );
        message.html = templateHtml;
        await send(
          message,
          smtpServer,
        );

        // Update the mail record
        emailRegister.first.emailStatus = NotificationStatus.SENT;
        emailRegister.first.sentAt = DateTime.now().toUtc();
        await EmailPod.db.update(
          session,
          [
            emailRegister.first.copyWith(
              body: templateHtml,
            ),
          ],
        );
      } catch (e) {
        // Handle error and update status to FAILED
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

  Future<void> confirmEmailRead({
    required Session session,
    required String slugToken,
    required String secretKey,
  }) async {
    final sign = SecretKey(secretKey);
    final jwt = JWT.verify(
      slugToken,
      sign,
    );

    logger.info('JWT payload: ${jwt.payload}');
    final email = jwt.payload['email'];
    final emailRecordId = jwt.payload['emailRecordId'];

    if (email == null || emailRecordId == null) {
      throw Exception('Invalid token');
    }

    final EmailPod? emailRecord = await performOperation(
      operationName: 'get email record',
      operation: () async {
        return await EmailPod.db.findById(
          session,
          emailRecordId,
        );
      },
    );

    if (emailRecord == null) {
      throw Exception('Email record not found');
    }

    await performOperation(
      operationName: 'update email status',
      operation: () async {
        await EmailPod.db.updateRow(
          session,
          emailRecord.copyWith(
            emailStatus: NotificationStatus.READ,
            readOn: DateTime.now().toUtc(),
          ),
        );
      },
    );
  }
}
