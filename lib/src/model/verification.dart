import 'package:twilio_verify_phone/src/helpers.dart';

enum VerificationStatus { pending, approved, cancelled }

class Verification {
  String? to;
  String? channel;
  VerificationStatus? status;
  String? dateCreated;
  String? dateUpdated;

  Verification(
      {this.to, this.channel, this.status, this.dateCreated, this.dateUpdated});

  Verification.fromMap(Map<String, dynamic> data)
      : to = data['to'],
        channel = data['channel'],
        status = statusFromString(data['status']),
        dateUpdated = data['date_updated'],
        dateCreated = data['date_created'];
}
