import 'package:flutter/material.dart';


class UserInfoCard extends StatelessWidget {
  final String name;
  final String email;
  final String phone;
  final String education;
  final String experience;
  final String careerInterests;
  final String profileImageUrl;

  UserInfoCard({
    required this.name,
    required this.email,
    required this.phone,
    required this.education,
    required this.experience,
    required this.careerInterests,
    required this.profileImageUrl,
});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
    children: [
      CircleAvatar(
        radius: 40,
        backgroundImage: NetworkImage(profileImageUrl),
        onBackgroundImageError: (_, __) => Icon(Icons.person),
        ),
        SizedBox(width: 20.0),
        Expanded(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  email,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey[600],
                  ),
                ),
                Text(
                  phone,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Education: $education',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                Text(
                  'Experience: $experience',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                Text(
                  'Career Interests: $careerInterests',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ],
          ),
        ),
    ],
        ),
      ),
    );
  }
}