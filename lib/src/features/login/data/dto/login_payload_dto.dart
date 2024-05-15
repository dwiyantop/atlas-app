class LoginPayloadDTO {
  final String email;
  final String password;

  LoginPayloadDTO(this.email, this.password);

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
    };
  }
}
