import 'package:notify_pod_server/src/endpoints/controller.dart';
import 'package:notify_pod_server/src/services/mail/mails_service.dart';
import 'package:serverpod/serverpod.dart';

class EmailpodEndpoint extends Endpoint with Controller<EmailPodServices> {
  
  /// send email to the user with the given email
  Future<bool> sendEmail(
    Session session,
    List<String> email,
    String subject,
    String body,
    String logoUuid,
  ) async {
    return await performControllerOperation<bool>(
      session: session,
      endpointName: 'EmailpodEndpoint',
      operation: () async {
        return await service.sendEmail(
          session,
          email: email,
          subject: subject,
          body: body,
          logoUuid: logoUuid,
        );
      },
    );
  }
}
