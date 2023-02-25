class EmailChannelConfiguration {
  String? from;
  String? fromName;
  String? templateId;
  String? usernameSubstitution;

  EmailChannelConfiguration(
      {this.from, this.fromName, this.templateId, this.usernameSubstitution});

  Map<String, dynamic> toMap() {
    return {
      'from': from,
      'from_name': fromName,
      'template_id': templateId,
      'substitutions': {
        if (usernameSubstitution != null) "username": usernameSubstitution
      }
    };
  }
}
