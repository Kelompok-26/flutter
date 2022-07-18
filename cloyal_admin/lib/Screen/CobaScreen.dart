import 'package:flutter/material.dart';

class CobaScreen extends StatefulWidget {
  CobaScreen({Key? key}) : super(key: key);

  @override
  State<CobaScreen> createState() => _CobaScreenState();
}

class _CobaScreenState extends State<CobaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            child: Stack(
              children: [
                Positioned(
                  child: Material(
                    child: Container(
                      height: 100,
                      width: 10,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: Card(
                    elevation: 1,
                    shadowColor: Colors.grey.withOpacity(0.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      height: 200,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/user.png'),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
