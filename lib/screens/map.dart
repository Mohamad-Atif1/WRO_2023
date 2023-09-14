import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latlong2/latlong.dart';

class DemoMapPage extends StatefulWidget {
  const DemoMapPage({super.key});

  @override
  State<DemoMapPage> createState() => _DemoMapPageState();
}

class _DemoMapPageState extends State<DemoMapPage> {
  @override
  bool showUserInfo = false;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              center: LatLng(21.329909516856016, 39.95214163033667),
              zoom: 12,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.app',
              ),
              CircleLayer(
                circles: [
                  CircleMarker(
                    point: LatLng(21.329909516856016, 39.95214163033667),
                    radius: 5000,
                    useRadiusInMeter: true,
                    color: Colors.blue[400]!.withOpacity(0.3),
                    borderColor: Colors.blue[400]!.withOpacity(0.7),
                    borderStrokeWidth: 2,
                  )
                ],
              ),
              Visibility(
                visible: showUserInfo,
                child: Positioned(
                  top: 527.0,
                  left: 45.0,
                  child: Container(
                      width: 160.0,
                      height: 200.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: getUserInfo(
                          'احمد محسن',
                          '#123456',
                          'أواني زجاجية للطبخ',
                          'قابل للكسر',
                          '0.4x5x20',
                          'DHL شركة',
                          'SAR 65')),
                ),
              ),
              MarkerLayer(
                markers: [
                  Marker(
                      width: 60.0,
                      height: 60.0,
                      point: LatLng(21.296208945450864, 39.941058716393556),
                      builder: (context) => Container(
                            child: IconButton(
                              color: Colors.red,
                              iconSize: 60,
                              icon: Icon(Icons.location_on),
                              onPressed: () {
                                setState(() {
                                  showUserInfo = !showUserInfo;
                                });
                              },
                            ),
                          ))
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Column getUserInfo(String name, String orderId, String shipment, String type,
      String size, String company, String price) {
    double WIDTH_MAR = 3;
    double FONT_SIZE = 10.5;
    double l = 3, t = 0, r = 4.5, b = 2;
    return Column(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(8, 8, 0, 0),
          child: Row(
            children: [
              Text(
                orderId,
                style: GoogleFonts.inter(fontSize: FONT_SIZE),
              ),
              SizedBox(
                width: WIDTH_MAR,
              ),
              Text(
                ":رقم الطلب",
                style: GoogleFonts.inter(
                    fontSize: FONT_SIZE,
                    fontWeight: FontWeight.w900,
                    color: Colors.red),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(l, t, r, b),
              child: Row(
                children: [
                  Text(
                    name,
                    style: GoogleFonts.inter(fontSize: FONT_SIZE),
                  ),
                  SizedBox(
                    width: WIDTH_MAR,
                  ),
                  Text(
                    ":اسم العميل",
                    style: GoogleFonts.inter(
                        fontSize: FONT_SIZE, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(l, t, r, b),
              child: Row(
                children: [
                  Text(
                    shipment,
                    style: GoogleFonts.inter(fontSize: FONT_SIZE),
                  ),
                  SizedBox(
                    width: WIDTH_MAR,
                  ),
                  Text(
                    ":محتوى الشحنة",
                    style: GoogleFonts.inter(
                        fontSize: FONT_SIZE, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(l, t, r, b),
              child: Row(
                children: [
                  Text(
                    type,
                    style: GoogleFonts.inter(fontSize: FONT_SIZE),
                  ),
                  SizedBox(
                    width: WIDTH_MAR,
                  ),
                  Text(
                    ":نوع الشحنة",
                    style: GoogleFonts.inter(
                        fontSize: FONT_SIZE, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(l, t, r, b),
              child: Row(
                children: [
                  Text(
                    size,
                    style: GoogleFonts.inter(fontSize: FONT_SIZE),
                  ),
                  SizedBox(
                    width: WIDTH_MAR,
                  ),
                  Text(
                    ":حجم الشحنة",
                    style: GoogleFonts.inter(
                        fontSize: FONT_SIZE, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(l, t, r, b),
              child: Row(
                children: [
                  Text(
                    company,
                    style: GoogleFonts.inter(fontSize: FONT_SIZE),
                  ),
                  SizedBox(
                    width: WIDTH_MAR,
                  ),
                  Text(
                    ":موقع التوصيل",
                    style: GoogleFonts.inter(
                        fontSize: FONT_SIZE, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(l, 4, 17, 0),
              child: Row(
                children: [
                  Text(
                    price,
                    style: GoogleFonts.inter(
                        fontSize: 13,
                        color: Colors.red,
                        fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    width: WIDTH_MAR,
                  ),
                  Text(
                    ":سعر التوصيل",
                    style: GoogleFonts.inter(
                        fontSize: 13, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(l, t, 10, 0),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 4,
                        minimumSize: const Size(10, 10),
                        backgroundColor: const Color(0xFF24C948)),
                    child: Text(
                      'قبول',
                      style: GoogleFonts.inter(
                          fontSize: 15, fontWeight: FontWeight.w900),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 4,
                        minimumSize: const Size(10, 10),
                        backgroundColor: const Color(0xFFCA1E49)),
                    child: Text(
                      'رفض',
                      style: GoogleFonts.inter(
                          fontSize: 15, fontWeight: FontWeight.w900),
                    ),
                  ),

                  // Text(
                  //   ":رقم الطلب",
                  //   style: GoogleFonts.inter(
                  //       fontSize: FONT_SIZE, fontWeight: FontWeight.w900),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
