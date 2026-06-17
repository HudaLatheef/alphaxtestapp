import 'package:flutter/material.dart';

class ProfileSummary extends StatelessWidget {
  const ProfileSummary({super.key});

  final Map<String, dynamic> user = const {
    "firstName": "Emily",
    "lastName": "Johnson",
    "age": 29,
    "email": "emily.johnson@x.dummyjson.com",
    "phone": "+81 965-431-3024",
    "image": "https://dummyjson.com/icon/emilys/128",
    "bloodGroup": "O-",
    "height": 193.24,
    "weight": 63.16,
    "eyeColor": "Green",
    "university": "University of Wisconsin--Madison",
    "company": {
      "name": "Dooley, Kozey and Cronin",
      "title": "Sales Manager",
      "department": "Engineering"
    }
  };

  @override
  Widget build(BuildContext context) {
    final fullName = "${user['firstName']} ${user['lastName']}";

    return Scaffold(
      backgroundColor: const Color(0xFFF6F7FB),
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _header(fullName),
            const SizedBox(height: 20),
            _infoCard(),
            const SizedBox(height: 16),
            _contactCard(),
            const SizedBox(height: 16),
            _companyCard(),
          ],
        ),
      ),
    );
  }

  Widget _header(String name) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF6A5AE0), Color(0xFF8F7CFF)],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundImage: NetworkImage(user['image']),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  "Age: ${user['age']} • ${user['bloodGroup']}",
                  style: const TextStyle(color: Colors.white70),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _infoCard() {
    return _card(
      title: "Personal Info",
      children: [
        _row("Height", "${user['height']} cm"),
        _row("Weight", "${user['weight']} kg"),
        _row("Eye Color", user['eyeColor']),
        _row("University", user['university']),
      ],
    );
  }

  Widget _contactCard() {
    return _card(
      title: "Contact",
      children: [
        _row("Email", user['email']),
        _row("Phone", user['phone']),
      ],
    );
  }

  Widget _companyCard() {
    final company = user['company'];
    return _card(
      title: "Company",
      children: [
        _row("Name", company['name']),
        _row("Role", company['title']),
        _row("Department", company['department']),
      ],
    );
  }

  Widget _card({required String title, required List<Widget> children}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 5),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          ...children,
        ],
      ),
    );
  }

  Widget _row(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 110,
            child: Text(
              label,
              style: TextStyle(
                color: Colors.grey.shade600,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}