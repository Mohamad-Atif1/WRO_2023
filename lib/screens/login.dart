import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xFFF4E5DE),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 182.0),
              child: Center(
                child: Text(
                  "تسجيل الدخول",
                  style: GoogleFonts.inter(fontSize: 22),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            const SizedBox(
              height: (80),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                Text('البريد الالكتروني', style: TextStyle(fontSize: 18.5)),
                SizedBox(
                  height: (10),
                ),
                ListTile(
                  trailing: Icon(
                    Icons.mail,
                    color: Colors.black,
                  ),
                  tileColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  title: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(12))),
                ),
                SizedBox(
                  height: (16),
                ),
                Text('كلمة المرور', style: TextStyle(fontSize: 18.5)),
                SizedBox(
                  height: (10),
                ),
                ListTile(
                  trailing: Icon(
                    Icons.lock_open,
                    color: Colors.black,
                  ),
                  tileColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  title: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(12))),
                  leading: Icon(Icons.visibility_off, color: Colors.black),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.pushNamed(context, '/reset password');
                  },
                  child: Text.rich(
                    TextSpan(
                      text: 'نسيت كلمة المرور؟ ',
                      style: GoogleFonts.inter(
                        fontSize: 17,
                      ),
                      children: [
                        TextSpan(
                            text: 'إعادة تعيين',
                            style: GoogleFonts.inter(
                              fontSize: 17,
                              decoration: TextDecoration.underline,
                            )),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 120,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/map');
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 8,
                        minimumSize: const Size(170, 60),
                        backgroundColor: const Color(0xFFCA1E49)),
                    child: Text(
                      'تسجيل الدخول',
                      style: GoogleFonts.inter(
                          fontSize: 24, fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
