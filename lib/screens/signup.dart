import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4E5DE),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Center(
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 100, 0, 60),
              child: Text(
                "إنشاء حساب جديد",
                style: GoogleFonts.inter(fontSize: 23.5),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          getTile(
            icon: Icons.person,
            "الاسم الثلاثي",
          ),
          getTile(
            icon: Icons.co_present_outlined,
            "رقم الهوية",
          ),
          getTile(
            icon: Icons.calendar_month_rounded,
            "تاريخ الميلاد",
          ),
          getTile(icon: Icons.phone, "رقم الجوال", onlyNumbers: true),
          getTile(
            icon: Icons.mail,
            "البريد الالكتروني",
          ),
          getTile(
            icon: Icons.lock_open,
            "كلمة المرور",
          ),
          getTile(
            icon: Icons.person,
            "إعادة كتابة كلمة المرور",
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 8,
                minimumSize: const Size(140, 50),
                backgroundColor: const Color(0xFFCA1E49)),
            child: Text(
              'تسجيل',
              style:
                  GoogleFonts.inter(fontSize: 24, fontWeight: FontWeight.w900),
            ),
          ),
        ]),
      ),
    );
  }

  Container getTile(
    String hintText, {
    bool onlyNumbers = false,
    IconData? leading = null,
    IconData? icon = null,
    String leadingtext = '',
  }) {
    // dont use leading
    return Container(
      margin: EdgeInsets.fromLTRB(30, 0, 30, 12),
      child: ListTile(
        trailing: Icon(
          icon,
          color: Colors.black,
        ),
        leading: (leading != null)
            ? Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  child: Row(
                    children: [
                      Icon(
                        leading,
                        color: Colors.black,
                      ),
                      Text(
                        leadingtext,
                        style: GoogleFonts.inter(),
                      )
                    ],
                  ),
                ),
              )
            : null,
        tileColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: TextField(
            textAlign: TextAlign.right,
            textDirection: TextDirection.rtl,
            keyboardType: onlyNumbers ? TextInputType.number : null,
            inputFormatters:
                onlyNumbers ? [FilteringTextInputFormatter.digitsOnly] : null,
            decoration:
                InputDecoration(border: InputBorder.none, hintText: hintText)),
      ),
    );
  }
}

// ListTile(
//   leading: Icon(Icons.person), // Replace with your desired leading icon
//   title: Row(
//     children: [
//       Text('Text next to the icon'),
//       Spacer(),
//       Expanded(
//         child: Align(
//           alignment: Alignment.centerRight,
//           child: TextFormField(
//             decoration: InputDecoration(
//               hintText: 'Hint text',
//             ),
//           ),
//         ),
//       ),
//     ],
//   ),
// ),
