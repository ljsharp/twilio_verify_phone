import 'package:twilio_verify_phone/src/model/email_channel_configuration.dart';
import 'package:twilio_verify_phone/src/model/twilio_reponse.dart';

abstract class TwilioRepository {
  Future<TwilioResponse> sendSmsCode(String phone);
  Future<TwilioResponse> verifySmsCode(String phone, String code);
  Future<TwilioResponse> sendEmailCode(String email,
      {EmailChannelConfiguration? channelConfiguration});
  Future<TwilioResponse> verifyEmailCode(String email, String code);
}
