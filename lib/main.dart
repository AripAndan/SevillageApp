import 'package:flutter/material.dart';
import 'package:seviilage/allPage.dart';
import 'PageAwal.dart';

void main() {
  runApp(const AllPage());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WidgetLogin(),
    );
  }
}

class PageWahana extends StatefulWidget {
  const PageWahana({super.key});

  @override
  State<PageWahana> createState() => _PageWahanaState();
}

class _PageWahanaState extends State<PageWahana> {
  final List<String> UrlGambar = [
        "assets/images/AdrenalinSwing.jpg",
        "assets/images/SkyBike.jpeg",
        "assets/images/HelliumBalloon.jpeg",
      ],
      subJudul = ["Adrenalin Swing", "Sky Bike", "Hellium Ballon"],
      deskripsiWahana = [
        "Berani coba? Rasakan sensasi berayun dari ketinggian dengan pemandangan luar biasa dan hempasan adrenalin yang menebarkan!",
        "Siap bersepeda di ketinggian? Coba Sky bike! Nikmati sensasi unik meluncur di atas lintasan gantung sambil menikamti pemandangan indah dari ketinggian, Berani coba?",
        "Rasakan sensasi melayang bebas di udara sambil menikmati panorama yang indah dari balon helium yang stabil dan aman",
      ];
  bool tombol1 = false, tombol2 = false, tombol3 = false;
  @override
  Widget build(BuildContext konteks) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            top: -630.0,
            child: Container(
              decoration: BoxDecoration(
                // color: Colors.cyan[900],
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25.0),
                  topLeft: Radius.circular(25.0),
                ),
              ),
              child:
                  Image.asset("assets/images/Gambar2.jpg", fit: BoxFit.contain),
            ),
          ),
          Positioned.fill(
            child: ListView.builder(
                itemCount: 5,
                padding: EdgeInsets.only(top: 300.0),
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Container(
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadiusDirectional.vertical(
                            top: Radius.circular(25.0)),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
                        child: Container(
                          //untuk bagian tombol
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey[100],
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => PageWahana(),
                                    ),
                                  );
                                },
                                child: const Text("Wahana"),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => PageFasilitas(),
                                    ),
                                  );
                                },
                                child: const Text("Fasilitas"),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey[100],
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => PageTiket(),
                                    ),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey[100],
                                ),
                                child: const Text("Tiket"),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  } else if (index < 4) {
                    return Container(
                      height: 450.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Column(
                          children: [
                            //Untuk gambar
                            Container(
                              height: 230.0,
                              width: 700,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              child: Image.asset(UrlGambar[index - 1],
                                  fit: BoxFit.cover),
                            ),
                            SizedBox(height: 10.0),
                            Container(
                              //bagian sub judul dan deskripsi wahana
                              height: 148,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Flexible(
                                    child: Container(
                                      //untuk sub judul
                                      height: 30.0,
                                      width: 390.0,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                      ),
                                      child: index < 4
                                          ? Text(
                                              subJudul[index - 1],
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22.0),
                                              textAlign: TextAlign.start,
                                            )
                                          : Text(""),
                                    ),
                                  ),
                                  Flexible(
                                    flex: 3,
                                    child: Container(
                                      //Untuk deskripsi
                                      decoration: BoxDecoration(
                                        color: Colors.white30,
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                      ),
                                      child: Text(deskripsiWahana[index - 1]),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  } else {
                    return Container(
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadiusDirectional.vertical(
                            top: Radius.circular(25.0)),
                      ),
                    );
                  }
                }),
          ),
          Positioned.fill(
            top: 860.0,
            child: Container(
              height: 30.0,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {
                      // Navigator.of(context).popUntil((route) => route.isFirst);
                      // Navigator.of(context, rootNavigator: true).pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PageWahana(),
                        ),
                      );
                    },
                    icon: Icon(Icons.home_filled),
                    tooltip: "Home",
                    iconSize: 30.0,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          konteks,
                          MaterialPageRoute(
                            builder: (context) => PageMap(),
                          ));
                    },
                    icon: Icon(Icons.map),
                    tooltip: "Map",
                    iconSize: 30.0,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          konteks,
                          MaterialPageRoute(
                            builder: (context) => PageProfile(),
                          ));
                    },
                    icon: Image.asset(
                      "assets/images/user.png",
                      width: 25.0,
                      height: 25.0,
                    ),
                    tooltip: "Info",
                    iconSize: 30.0,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(konteks);
                    },
                    icon: Icon(Icons.subdirectory_arrow_left_outlined),
                    tooltip: "Kembali",
                    iconSize: 30.0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
    ;
  }
}

class _PageLoginState extends State<PageLogin> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WidgetLogin(),
    );
  }
}

class WidgetLogin extends StatefulWidget {
  const WidgetLogin({super.key});

  @override
  State<WidgetLogin> createState() => _WidgetLoginState();
}

class _WidgetLoginState extends State<WidgetLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: [
        Container(
            child: Image.asset(
          "assets/images/Gambar_login.png",
          fit: BoxFit.fill,
        )),
        Positioned.fill(
            top: 350.0,
            bottom: 70.0,
            child: Padding(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                        padding: EdgeInsetsDirectional.only(bottom: 10.0),
                        child: Text("Masuk",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white))),
                    Container(
                        height: 120,
                        child: Column(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white,
                                ),
                                child: TextField()),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white,
                                ),
                                child: TextField()),
                          ],
                        )),
                    Padding(
                      padding: EdgeInsetsDirectional.only(top: 0, bottom: 0),
                      child: Center(
                        child: Text(
                          "atau Masuk dengan ",
                          style: TextStyle(fontSize: 18.0, color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      //login google
                      padding: EdgeInsetsDirectional.only(top: 10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => new PageWahana(),
                                ));
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.symmetric(vertical: 5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/images/google.png",
                                    width: 40.0, height: 40.0),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text("Google",
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(top: 10.0),
                      child: Container(
                          child: Center(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size.fromWidth(120.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            backgroundColor: Colors.grey,
                            foregroundColor: Colors.white,
                          ),
                          onPressed: () {},
                          child: Center(
                              child: Text("Masuk",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0))),
                        ),
                      )),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text("Belum punya Akun?",
                        style: TextStyle(color: Colors.white)),
                  ],
                )))
      ],
    ));
  }
}
