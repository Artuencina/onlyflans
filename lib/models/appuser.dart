//Modelo de usuario
class User {
  final String? uid;
  final String email;
  final String userName;
  final String profileUrl;
  final String? bio;

  const User({
    this.uid,
    required this.email,
    required this.userName,
    required this.profileUrl,
    this.bio,
  });
}
