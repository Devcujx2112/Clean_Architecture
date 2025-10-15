class User {
  final String id;
  final String name;
  final String userName;
  final String email;
  final Map<String, dynamic> address;
  final String phone;
  final String website;
  final Map<String, dynamic> company;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.userName,
    required this.address,
    required this.phone,
    required this.website,
    required this.company,
  });
}
