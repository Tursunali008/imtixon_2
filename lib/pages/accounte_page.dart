import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 70),
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("assets/images/person.jpg"),
            ),
            const SizedBox(height: 10),
            const Text(
              "Domenic Winget",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text(
              "jennydemgmail.com",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: 120,
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey),
                borderRadius: const BorderRadius.all(Radius.circular(4)),
                color: Colors.white,
              ),
              child: const InkWell(
                child: Center(
                  child: Text(
                    "Edit",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  ListTile(
                    leading: Image.asset(
                      "assets/images/world.jpg",
                      width: 20,
                    ),
                    title: const Text("Language"),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Handle Language tap
                    },
                  ),
                  ListTile(
                    leading:
                        const Icon(Icons.lock_outline, color: Colors.black),
                    title: const Text("Change Password"),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Handle Change Password tap
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.dark_mode, color: Colors.black),
                    title: const Text("Dark Mode"),
                    trailing: Switch(
                      value: false, // Add your dark mode state here
                      onChanged: (bool value) {
                        // Handle Dark Mode switch
                      },
                    ),
                  ),
                  ListTile(
                    leading:
                        const Icon(Icons.help_outline, color: Colors.black),
                    title: const Text("Help"),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Handle Help tap
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.logout, color: Colors.black),
                    title: const Text("Logout"),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Handle Logout tap
                    },
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
