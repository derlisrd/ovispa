class LoginResponse {
  final bool success;
  final String message;
  final LoginResult results;

  LoginResponse({
    required this.success,
    required this.message,
    required this.results,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      success: json['success'],
      message: json['message'],
      results: LoginResult.fromJson(json['results']),
    );
  }
}

class LoginResult {
  final String username;
  final String email;
  final String token;
  final int id;

  LoginResult({
    required this.username,
    required this.email,
    required this.token,
    required this.id,
  });

  factory LoginResult.fromJson(Map<String, dynamic> json) {
    return LoginResult(
      username: json['username'],
      email: json['email'],
      token: json['token'],
      id: json['id'],
    );
  }
}
