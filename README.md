# Twilio_Verify_Phone

A Package used for verifying phone numbers and email addresses using Twilio. This package forked from twilio_phone_verify package (https://pub.dev/packages/twilio_phone_verify).

## Usage

To use this package :

- add the dependency to your pubspec.yaml file.

```yaml
dependencies:
  flutter:
    sdk: flutter
  twilio_verify_phone:
```

### How to use


#### Create a new instance
```dart
final TwilioVerifyPhone _twilioVerifyPhone = TwilioVerifyPhone(
        accountSid: '*************************', // replace with Account SID
        authToken: 'xxxxxxxxxxxxxxxxxx',  // replace with Auth Token
        serviceSid: 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx' // replace with Service SID
 		);
```

### Phone number verification

##### Send Code to Phone
```dart
 void sendOtpCode(String phone) async {
    var twilioResponse = await _twilioVerifyPhone.sendSmsCode(phone);
    if (twilioResponse.successful!) {
      debugPrint("Twilio:: ${twilioResponse.verification?.status}");
      debugPrint("Twilio:: ${twilioResponse.statusCode}");
    } else {
      debugPrint("Twilio:: ${twilioResponse.statusCode}");
      debugPrint("Twilio:: ${twilioResponse.errorMessage}");
    }
  }
```

##### Verify Code
```dart
    void verifyCode(String code, String phone) async {
    var twilioResponse = await _twilioVerifyPhone.verifySmsCode(phone: phone, code: code);

    if (twilioResponse.successful!) {
      if (twilioResponse.verification!.status == VerificationStatus.approved) {
        debugPrint('Phone number is approved');
      } else {
        debugPrint('Invalid code');
      }
    } else {
      debugPrint(twilioResponse.errorMessage);
    }
  }
```

### Email Verification
Twilio Verify email channel requires additional Service configuration. Please refer to the [email channel setup documentation for detailed instructions](https://www.twilio.com/docs/verify/email "email channel setup documentation for detailed instructions").

##### Send Code to Email
```dart
 var twilioResponse =
        await _twilioVerifyPhone.sendEmailCode('email');

    if (twilioResponse.successful)  {
      //code sent
    } else {
      //print(twilioResponse.errorMessage);
    }
```

##### Verify Email Code
```dart
    void sendEmailCode(String email) async {
    var twilioResponse = await _twilioPhoneVerify.sendEmailCode(email);
    if (twilioResponse.successful!) {
      debugPrint("Twilio:: ${twilioResponse.verification?.status}");
      debugPrint("Twilio:: ${twilioResponse.statusCode}");
    } else {
      debugPrint("Twilio:: ${twilioResponse.statusCode}");
      debugPrint("Twilio:: ${twilioResponse.errorMessage}");
    }
  }
```

##### Override Email configurations
```dart
 void verifyEmailCode(String code, String email) async {
    var twilioResponse =
        await _twilioPhoneVerify.verifyEmailCode(email: email, code: code);

    if (twilioResponse.successful!) {
      if (twilioResponse.verification!.status == VerificationStatus.approved) {
        debugPrint('Phone number is approved');
      } else {
        debugPrint('Invalid code');
      }
    } else {
      debugPrint(twilioResponse.errorMessage);
    }
  }
```

# Features

- [x] Phone verification
- [x] Email verification.

# Credits

Thanks to Duke Chiaha for making the package!

## Getting Started

For help getting started with Flutter, view our online [documentation](https://flutter.io/).

For help on editing package code, view the [documentation](https://flutter.io/developing-packages/).
