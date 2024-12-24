import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const _PageAwal(),
    );
  }
}

class _PageAwal extends StatefulWidget {
  const _PageAwal({super.key});

  @override
  State<_PageAwal> createState() => __PageAwalState();
}

class __PageAwalState extends State<_PageAwal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            child: Image.asset("images/Gambar_awal.jpeg", fit: BoxFit.fill),
          ),
          // Positioned.fill(
          //     top: 800.0,
          //     bottom: 50.0,
          //     child: Container(
          //         decoration: BoxDecoration(),
          //         padding: EdgeInsetsDirectional.symmetric(horizontal: 150.0),
          //         child: TextButton(
          //           onPressed: () {
          //             Navigator.push(
          //               context,
          //               MaterialPageRoute(
          //                 builder: (context) => const _PageAwal(),
          //               ),
          //             );
          //           },
          //           child: Text(
          //             "Lanjut",
          //             style: TextStyle(
          //                 fontWeight: FontWeight.bold,
          //                 color: Colors.white,
          //                 fontSize: 30.0),
          //           ),
          //         ))),
        ],
      ),
    );
  }
}
