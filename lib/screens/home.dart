import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

// backgroundColor: Color(0xFFF4E5DE),

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    const String topText = """مندوب 
  يوصل لك طلباتك من مكانك لكل
   !العالم
    """;

    double toLogPix(double distance) {
      return distance / MediaQuery.of(context).devicePixelRatio;
    }

    return Scaffold(
      backgroundColor: const Color(0xFFF4E5DE),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 182.0),
            child: Text(
              topText,
              style: GoogleFonts.inter(fontSize: 22),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: toLogPix(140),
          ),
          const Text(
            'تسجيل الدخول كـ؟',
            style: TextStyle(fontSize: 26),
          ),
          SizedBox(
            height: toLogPix(91),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    elevation: 8,
                    minimumSize: const Size(130, 45),
                    backgroundColor: const Color(0xFFCA1E49)),
                child: Text(
                  'مندوب',
                  style: GoogleFonts.inter(
                      fontSize: 24, fontWeight: FontWeight.w900),
                ),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    elevation: 8,
                    minimumSize: const Size(130, 45),
                    backgroundColor: const Color(0xFFCA1E49)),
                child: Text(
                  'عميل',
                  style: GoogleFonts.inter(
                      fontSize: 24, fontWeight: FontWeight.w900),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/signup');
            },
            child: Text.rich(
              TextSpan(
                text: 'ليس لديك حساب؟ ',
                style: GoogleFonts.inter(
                  fontSize: 17,
                ),
                children: [
                  TextSpan(
                      text: 'إنشاء حساب جديد',
                      style: GoogleFonts.inter(
                        fontSize: 17,
                        decoration: TextDecoration.underline,
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
