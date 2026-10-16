import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const Color mainColor = Color.fromARGB(255, 164, 103, 124);
  static const Color lightPink = Color.fromARGB(255, 243, 219, 229);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nusaiba's Homepage"),
        backgroundColor: mainColor,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
            tooltip: "Notifications",
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person),
            tooltip: "Profile",
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text("Nusaiba"),
              accountEmail: const Text("nusaiba@example.com"),
              currentAccountPicture: const CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person, size: 40, color: mainColor),
              ),
              decoration: const BoxDecoration(color: mainColor),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              hoverColor: lightPink,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("My Profile"),
              hoverColor: lightPink,
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text("Favorites"),
              hoverColor: lightPink,
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
              hoverColor: lightPink,
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.notifications_active),
              title: const Text("Notifications & Updates"),
              hoverColor: lightPink,
              onTap: () {},
            ),
            const Spacer(),
            ListTile(
              leading: const Icon(Icons.help),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              title: const Text("Help Centre"),
              hoverColor: lightPink,
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Logout"),
              hoverColor: lightPink,
              onTap: () {},
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: mainColor,
        foregroundColor: Colors.white,
        tooltip: "Add",
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            const Icon(Icons.waving_hand, size: 55, color: mainColor),
            const SizedBox(height: 20),
            Text(
              "Welcome to my homepage!",
              textAlign: TextAlign.center,
              style: GoogleFonts.lobster(fontSize: 30, color: mainColor),
            ),
            const SizedBox(height: 15),
            const Text(
              "Hello! I'm Nusaiba. Explore my homepage "
              "and discover more.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            const SizedBox(height: 40),
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 12,
              runSpacing: 12,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.create),
                  label: const Text("Create"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: lightPink,
                    foregroundColor: mainColor,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 14,
                    ),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.upload),
                  label: const Text("Upload"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: mainColor,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 14,
                    ),
                  ),
                ),
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.share),
                  label: const Text("Share"),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: mainColor,
                    side: const BorderSide(color: mainColor, width: 1.5),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 14,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
