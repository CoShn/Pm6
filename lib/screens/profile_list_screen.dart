import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/user_info_card.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  final List<Map<String, String>> _alumniList = [
    {
  'name': 'Ricardo',
  'email': 'rico.siahaan19@student.esaunggul.ac.id',
  'phone': '+6289676823959',
  'education': 'S1 Teknik Informatika',
  'experience': '5 Tahun sebagai Software Engineer di PT.TEKNO INDO',
  'careerInterests': 'Pengembangan aplikasi Mobile dan AI',
      'profileImageUrl' : '',
    },
    {
    'name': 'Andi Samsu',
    'email': 'andisamsu09@example.com',
    'phone': '+6282145567889',
    'education': 'S1 Teknik Informatika',
    'experience': '3 Tahun Sebagai Data Analyst di PT. DATA INSIGHT',
    'careerInterests': 'Data Analyst',
    'profileImageUrl' : '',
    },
    {
      'name': 'Muhammad Ruby',
      'email': 'mhmmdrubyy@example.com',
      'phone': '+6282377884456',
      'education': 'S1 Teknik Informatika',
      'experience': '2 Tahun sebagai Cyber Security di PT. SECURITY TCH',
      'careerInterests': 'Cyber Security',
      'profileImageUrl' : '',
    },
    {
      'name': 'Ardiansyah',
      'email': 'ardynsyh11@example.com',
      'phone': '+628995651478',
      'education': 'S1 Teknik Informatika',
      'experience': '4 Software Engineer di PT. Tech',
      'careerInterests': 'Pengembangan Aplikasi Mobile dan Web',
      'profileImageUrl' : '',
    }
  ];

  List<Map<String, String>> get _filteredAlumniList {
    if (_searchQuery.isEmpty) {
      return _alumniList;
    } else {
      return _alumniList
          .where((alumni) => alumni['name']?.toLowerCase().contains(_searchQuery.toLowerCase()) ?? false)
          .toList();
    }
  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('PROFIL ALUMNI'),
      backgroundColor: Colors.lightBlue[200],
    ),
    drawer: CustomDrawer(),
    body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextField(
            controller: _searchController,
            decoration: InputDecoration(
              labelText: 'Cari Alumni',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(),
            ),
            onChanged: (value) {
              setState(() {
                _searchQuery = value;
              });
            },
          ),
          Expanded(
            child: ListView.builder(
                itemCount: _filteredAlumniList.length,
                itemBuilder: (contex, index) {
                  final alumni = _filteredAlumniList[index];
                  return UserInfoCard(
                      name: alumni['name']?? 'N/A',
                      email: alumni['email']?? 'N/A',
                      phone: alumni['phone']?? 'N/A',
                      education: alumni['education']?? 'N/A',
                      experience: alumni['experience']?? 'N/A',
                      careerInterests: alumni['careerInterests']?? 'N/A',
                      profileImageUrl: alumni['profileImageUrl']?? 'N/A',
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}