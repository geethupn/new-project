import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class SettingsPage extends StatelessWidget {
  SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        leading: IconButton(
          onPressed: () {
           
          },
          icon: const Icon(Icons.arrow_circle_left_outlined),
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/default_profile_image.png'),
            ),
            title: Text(
              "Welcome",
              style: GoogleFonts.inder(color: Colors.grey),
            ),
            subtitle: Text(
              "User Name", // Placeholder for user name
              style: GoogleFonts.inder(fontSize: 18),
            ),
            trailing: IconButton(
              onPressed: ()  {
               
              },
              icon: const Icon(Icons.logout_sharp),
            ),
          ),
          const Divider(height: 30,),
          ListTile(
            leading: const Icon(
              Icons.account_circle_outlined,
              color: Colors.grey,
              size: 30,
            ),
            title: Text(
              "User Profile",
              style: GoogleFonts.inder(color: Colors.black),
            ),
            trailing: IconButton(
              onPressed: () {
              
              },
              icon: const Icon(Icons.arrow_forward_ios),
            ),
          ),
          const Divider(height: 30,),
          ListTile(
            leading: const Icon(
              Icons.lock,
              color: Colors.grey,
              size: 30,
            ),
            title: Text(
              "Change Password",
              style: GoogleFonts.inder(color: Colors.black),
            ),
            trailing: IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    title: const Text("Change Password"),
                    actions: [
                      TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(17),
                          ),
                          //fillColor: bgColor,
                          filled: true,
                          hintText: "New Password",
                          hintStyle: GoogleFonts.inder(color: Colors.grey),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(17),
                          ),
                          //fillColor: bgColor,
                          filled: true,
                          hintText: "Confirm Password",
                          hintStyle: GoogleFonts.inder(color: Colors.grey),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          //backgroundColor: kPrimaryColor,
                          fixedSize: const Size(100, 30),
                        ),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Password Changed"),
                              showCloseIcon: true,
                              backgroundColor: Color(0xff436850),
                              duration: Duration(seconds: 2),
                              behavior: SnackBarBehavior.floating,
                              margin: EdgeInsets.only(bottom: 50, left: 50, right: 50),
                            ),
                          );
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          "Save",
                          style: GoogleFonts.inder(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                );
              },
              icon: const Icon(Icons.arrow_forward_ios_rounded),
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
