//Modelo de usuario
class AppUser {
  final String? uid;
  final String email;
  final String userName;
  final String profileUrl;
  final String? bio;

  const AppUser({
    this.uid,
    required this.email,
    required this.userName,
    required this.profileUrl,
    this.bio,
  });
}
