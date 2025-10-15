import 'package:clean_code/Domain/Entities/user.dart';

class UserDTO {
  final String id;
  final String name;
  final String userName;
  final String email;
  final Map<String, dynamic> address;
  final String phone;
  final String website;
  final Map<String, dynamic> company;

  UserDTO({
    required this.id,
    required this.name,
    required this.userName,
    required this.email,
    required this.address,
    required this.phone,
    required this.website,
    required this.company,
  });

  factory UserDTO.fromJson(Map<String, dynamic> json) {
    return UserDTO(
      id: json['id'],
      name: json['name'],
      userName: json['userName'],
      email: json['email'],
      address: json['address'],
      phone: json['phone'],
      website: json['website'],
      company: json['company'],
    );
  }

  User toEntity() {
    return User(
      id: id,
      name: name,
      userName: userName,
      email: email,
      address: address,
      phone: phone,
      website: website,
      company: company,
    );
  }
}
