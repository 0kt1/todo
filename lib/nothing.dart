import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          Positioned(
            top: -75,
            right: 35,
            child: Transform.rotate(
              angle: -0.8,
              child: Container(
                width: 142,
                height: 49,
                decoration: BoxDecoration(
                    color: Color(0xFF1E1F2A),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5, // Spread radius
                      blurRadius: 7, // Blur radius
                      offset: Offset(0, 3), // Offset
                    )
                  ]
                ),
              ),
            ),
          ),
          Positioned(
            top: 17,
            right: -22,
            child: Transform.rotate(
              angle: -0.8,
              child: Container(
                width: 142,
                height: 56.7,
                decoration: BoxDecoration(
                    color: Color(0xFF1E1F2A),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5, // Spread radius
                        blurRadius: 7, // Blur radius
                        offset: Offset(0, 3), // Offset
                      )
                    ]
                ),
              ),
            ),
          ),
          Positioned(
            top: 45,
            right: -70,
            child: Transform.rotate(
              angle: -0.8,
              child: Container(
                width: 142,
                height: 9.2,
                decoration: BoxDecoration(
                    color: Color(0xFFE37B71),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5, // Spread radius
                        blurRadius: 7, // Blur radius
                        offset: Offset(0, 3), // Offset
                      )
                    ]
                ),
              ),
            ),
          ),
          Positioned(
            top: 35,
            right: -110,
            child: Transform.rotate(
              angle: -0.8,
              child: Container(
                width: 142,
                height: 49,
                decoration: BoxDecoration(
                    color: Color(0xFF1E1F2A),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5, // Spread radius
                        blurRadius: 7, // Blur radius
                        offset: Offset(0, 3), // Offset
                      )
                    ]
                ),
              ),
            ),
          ),
          Positioned(
            top: -21,
            right: 10,
            child: Transform.rotate(
              angle: -0.8,
              child: Container(
                width: 142,
                height: 40.74,
                decoration: BoxDecoration(
                    color: Color(0xFFE37B71),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3, // Spread radius
                        blurRadius: 5, // Blur radius
                        offset: Offset(0, 3), // Offset
                      )
                    ]
                ),
              ),
            ),
          ),
          Positioned(
            top: 90,
            right: 80,
            child: Container(
              height: 230,
              width: 230,
              child: Image.asset("assets/ShaastraLogoBlack.png"),


            ),
          ),
        ],
      ),
    );
  }
}
