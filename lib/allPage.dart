import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllPage extends StatefulWidget {
  const AllPage({super.key});

  @override
  State<AllPage> createState() => _AllPageState();
}

class _AllPageState extends State<AllPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _PageAwal(),
    );
  }
}

//Widget Awal
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
            child:
                Image.asset("assets/images/Gambar_awal.jpeg", fit: BoxFit.fill),
          ),
          Positioned.fill(
              top: 600.0,
              bottom: 50.0,
              child: Container(
                  decoration: BoxDecoration(),
                  padding: EdgeInsetsDirectional.symmetric(horizontal: 150.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PageLogin(),
                        ),
                      );
                    },
                    child: Text(
                      "Lanjut",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 12.0),
                    ),
                  ))),
        ],
      ),
    );
  }
}

//Widget Wahana
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
            top: -440.0,
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                // color: Colors.cyan[900],
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25.0),
                  topLeft: Radius.circular(25.0),
                ),
              ),
              child: Image.asset("assets/images/Gambar2.jpg",
                  fit: BoxFit.fitWidth),
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
            top: 700.0,
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
  }
}

//Widget Tiket
class PageTiket extends StatefulWidget {
  const PageTiket({super.key});

  @override
  State<PageTiket> createState() => _PageTiketState();
}

class _PageTiketState extends State<PageTiket> {
  bool tombol1 = false, tombol2 = false, tombol3 = false;
  final List<String> jenisTiket = ["Tiket reguler", "TIket Terusan"];
  final List<String> tipeHari = ["Weekday", "Weekend"];
  final List<String> hargaTiket = [
    "25.000",
    "50.000",
    "60.000",
    "100.000",
    "120.000"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            top: -440.0,
            child: Container(
              //gambar background
              decoration: BoxDecoration(
                color: Colors.white,
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
            itemCount: 7,
            padding: EdgeInsets.only(top: 300.0),
            itemBuilder: (context, index) {
              return index == 0
                  ? Container(
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadiusDirectional.vertical(
                            top: Radius.circular(25.0)),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.only(left: 25.0, top: 10.0, right: 25.0),
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
                                  backgroundColor:
                                      tombol1 ? Colors.grey : Colors.white,
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
                                  backgroundColor:
                                      tombol2 ? Colors.grey : Colors.white,
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
                                  backgroundColor:
                                      tombol3 ? Colors.grey : Colors.white,
                                ),
                                child: const Text("Tiket"),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  : Container(
                      height: 130.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      padding:
                          EdgeInsets.only(top: 15.0, left: 25.0, right: 25.0),
                      child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: index <= 5
                              ? Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(25.0),
                                    border: Border.all(
                                        color: Colors.grey[300]!, width: 3.0),
                                  ),
                                  // padding: EdgeInsets.all(10.0),
                                  //Konten listVIew tiket
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        //Logo tiket
                                        width: 64.0,
                                        decoration: BoxDecoration(),
                                        padding: EdgeInsets.only(
                                            left: 10.0,
                                            bottom: 10.0,
                                            top: 10.0),
                                        child: Image.asset(
                                            "assets/images/ticket.jpg"),
                                      ),
                                      Container(
                                        width: 120.0,
                                        decoration: BoxDecoration(),
                                        child: Text(
                                            index <= 2
                                                ? jenisTiket[0]
                                                : jenisTiket[1],
                                            style: TextStyle(fontSize: 18.0)),
                                      ),
                                      Container(
                                        //Tombol beli
                                        width: 120.0,
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            index <= 2
                                                ? Text(tipeHari[index - 1])
                                                : Text(""),
                                            Text(
                                                "Rp ${hargaTiket[index - 1]}/orang"),
                                            ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        CheckOutTiket(
                                                            tipeHari:
                                                                index <= 2
                                                                    ? tipeHari[
                                                                        index -
                                                                            1]
                                                                    : "",
                                                            jenisTiket: index <=
                                                                    2
                                                                ? jenisTiket[0]
                                                                : jenisTiket[1],
                                                            hargaTiket:
                                                                hargaTiket[
                                                                    index - 1]),
                                                  ),
                                                );
                                              },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Colors.cyan[300],
                                                foregroundColor: Colors.white,
                                              ),
                                              child: Text("Beli"),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              : Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                )),
                    );
            },
          )),
          Positioned.fill(
            top: 700.0,
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
                          context,
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
                          context,
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
                      Navigator.pop(context);
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

//Page
class PageFasilitas extends StatefulWidget {
  const PageFasilitas({super.key});

  @override
  State<PageFasilitas> createState() => _PageFasilitasState();
}

class _PageFasilitasState extends State<PageFasilitas> {
  final List<String> UrlGambar = [
        "assets/images/Gambar2.jpg",
        "assets/images/CampingGround.jpeg",
        "assets/images/CafeKobut.jpeg",
        "assets/images/musholla.jpeg",
      ],
      subJudul = [
        "Glamping",
        "Glamping Ground",
        "Cafe Kopi Kabut",
        "Musholla",
      ],
      deskripsiWahana = [
        "konsep berkemah yang menawarkan kenyamanan dan fasilitas layaknya hotel, seperti tempat tidur empuk, listrik, dan kamar mandi pribadi di tengah alam",
        "Camping ground merupakan area khusus untuk berkemah di alam terbuka, biasanya dilengkapi dengan fasilitas dasar seperti toilet, sumber air, dan area api unggun",
        "Cafe kopi kabut, kafe dengan suasana sejuk dan pemandangan pegunungan, menyajikan kopi lokal dan makanan ringan ditengah kabut",
        "Sevillage menyediakan mushola untuk memudahkan pengunjung dalam beribadah selama menikmati glamping dan fasilitas lainnya"
      ];
  bool tombol1 = false, tombol2 = false, tombol3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            top: -440.0,
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25.0),
                    topLeft: Radius.circular(25.0),
                  ),
                ),
                child: Image.asset("assets/images/Gambar3.jpg",
                    fit: BoxFit.contain)),
          ),
          Positioned.fill(
              child: ListView.builder(
            itemCount: 6,
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
                                backgroundColor: Colors.grey[100]),
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
                                backgroundColor: Colors.grey[100]),
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
                                backgroundColor: Colors.grey[100]),
                            child: const Text("Tiket"),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              } else if (index < 5) {
                return Container(
                  height: 450.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(
                        start: 30.0, end: 30.0, top: 30.0),
                    child: Column(
                      children: [
                        //Untuk gambar
                        Container(
                          height: 230.0,
                          width: 450.0,
                          decoration: BoxDecoration(
                            color: Colors.yellow[400],
                            borderRadius:
                                BorderRadius.all(Radius.circular(25.0)),
                          ),
                          child: Image.asset(UrlGambar[index - 1],
                              fit: BoxFit.fill),
                        ),
                        SizedBox(height: 10.0),
                        Container(
                          //sub judul dan deskripsi fasilitas
                          height: 148,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Flexible(
                                child: Container(
                                  //untuk sub judul
                                  height: 30.0,
                                  width: 400.0,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(25.0),
                                  ),
                                  child: index < 5
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
                              SizedBox(height: 10.0),
                              Flexible(
                                flex: 3,
                                child: Container(
                                  //Untuk deskripsi
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(25.0),
                                  ),
                                  child: index < 5
                                      ? Text(deskripsiWahana[index - 1])
                                      : Text(""),
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
                  height: 100.0,
                  decoration: BoxDecoration(color: Colors.white),
                );
              }
            },
          )),
          Positioned.fill(
            top: 700.0,
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
                          context,
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
                          context,
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
                      // Navigator.of(context).popUntil((route) => route.isFirst);
                      // Navigator.of(context, rootNavigator: true).pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PageWahana(),
                        ),
                      );
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

//Page Map
class PageMap extends StatefulWidget {
  const PageMap({super.key});

  @override
  State<PageMap> createState() => _PageMapState();
}

class _PageMapState extends State<PageMap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(
                top: 30.0, start: 20.0, end: 20.0, bottom: 450.0),
            child: Container(
              //Gambar peta
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Image.asset(
                "assets/images/map.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned.fill(
              top: 400.0,
              bottom: 250.0,
              left: 20.0,
              child: Padding(
                padding: EdgeInsetsDirectional.only(end: 20.0),
                child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white54),
                    padding: EdgeInsetsDirectional.only(top: 4.0, bottom: 4.0),
                    child: Column(
                      children: [
                        Text(
                          "Taman Wisata Alam Sevillage",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                        Column(
                          children: [
                            Text(
                              "Jln Raya Cibodas, Kec Cipanas",
                              style: TextStyle(
                                fontSize: 10.0,
                                color: Colors.cyan,
                              ),
                            ),
                            Text(
                              "Kabupaten Cianjur, Jawa Barat 43253",
                              style:
                                  TextStyle(fontSize: 10.0, color: Colors.cyan),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Jam Buka Weekday 07.00 - 22.00",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                  ),
                                ),
                                Text(
                                  "Jam Buka Weekeend 07.00 - 23.00",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    )),
              )),
          Positioned.fill(
              top: 690.0,
              bottom: 180.0,
              child: Padding(
                padding: EdgeInsetsDirectional.only(start: 20.0, end: 180.0),
                child: Container(
                  decoration: BoxDecoration(),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Open With Google -->"),
                    style: ElevatedButton.styleFrom(),
                  ),
                ),
              )),
          Positioned.fill(
            top: 700.0,
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
                          context,
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
                          context,
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
                      Navigator.pop(context);
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

//Page Help
bool tombol1 = false, tombol2 = false, tombol3 = false;
@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Stack(
      children: [
        Center(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 300.0, horizontal: 5.0),
            child: Container(
              width: 300.0,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 15.0,
                  ),
                  Text("Send us your feedback"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star_border,
                        size: 40.0,
                      ),
                      Icon(
                        Icons.star_border,
                        size: 40.0,
                      ),
                      Icon(
                        Icons.star_border,
                        size: 40.0,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(start: 15.0),
                    child: Row(
                      children: [
                        Text("Berikan komentar anda?"),
                        Text("(Opsional)")
                      ],
                    ),
                  ),
                  Container(
                    height: 100.0,
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: CupertinoTextField(
                      maxLength: 40,
                    ),
                  ),
                  Padding(
                      padding: EdgeInsetsDirectional.only(end: 0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                              onPressed: () {},
                              child: Text("Send FeedBack"),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  foregroundColor: Colors.white)),
                          SizedBox(
                            width: 10.0,
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              child: Text("Cancel"),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.black))
                        ],
                      )),
                  Padding(
                    padding: EdgeInsetsDirectional.only(start: 15.0),
                    child: Row(
                      children: [
                        Text("Privacy Policy",
                            style: TextStyle(fontSize: 10.0)),
                        SizedBox(
                          width: 15.0,
                        ),
                        Text("Help Center", style: TextStyle(fontSize: 10.0))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned.fill(
          top: 700.0,
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
                        context,
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
                        context,
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
                    Navigator.pop(context);
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
}

class PageInfo extends StatefulWidget {
  const PageInfo({super.key});

  @override
  State<PageInfo> createState() => _PageInfoState();
}

class _PageInfoState extends State<PageInfo> {
  bool tombol1 = false, tombol2 = false, tombol3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 200.0, horizontal: 5.0),
              child: Container(
                width: 300.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 15.0,
                    ),
                    Text("Send us your feedback"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star_border,
                          size: 40.0,
                        ),
                        Icon(
                          Icons.star_border,
                          size: 40.0,
                        ),
                        Icon(
                          Icons.star_border,
                          size: 40.0,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(start: 15.0),
                      child: Row(
                        children: [
                          Text("Berikan komentar anda?"),
                          Text("(Opsional)")
                        ],
                      ),
                    ),
                    Container(
                      height: 100.0,
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: CupertinoTextField(
                        maxLength: 40,
                      ),
                    ),
                    Padding(
                        padding: EdgeInsetsDirectional.only(end: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton(
                                onPressed: () {},
                                child: Text("Send FeedBack"),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                    foregroundColor: Colors.white)),
                            SizedBox(
                              width: 10.0,
                            ),
                            ElevatedButton(
                                onPressed: () {},
                                child: Text("Cancel"),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    foregroundColor: Colors.black))
                          ],
                        )),
                    Padding(
                      padding: EdgeInsetsDirectional.only(start: 15.0),
                      child: Row(
                        children: [
                          Text("Privacy Policy",
                              style: TextStyle(fontSize: 10.0)),
                          SizedBox(
                            width: 15.0,
                          ),
                          Text("Help Center", style: TextStyle(fontSize: 10.0))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned.fill(
            top: 700.0,
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
                        context,
                        MaterialPageRoute(
                          builder: (context) => PageMap(),
                        ),
                      );
                    },
                    icon: Icon(Icons.map),
                    tooltip: "Map",
                    iconSize: 30.0,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PageProfile(),
                        ),
                      );
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
                      Navigator.pop(context);
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
  }
}

//Page ChekOut Tiket
class CheckOutTiket extends StatefulWidget {
  final String tipeHari, jenisTiket, hargaTiket;
  CheckOutTiket(
      {required this.tipeHari,
      required this.jenisTiket,
      required this.hargaTiket});
  @override
  State<CheckOutTiket> createState() {
    return _CheckOutTiketState(
        tipeHari: this.tipeHari,
        jenisTiket: this.jenisTiket,
        hargaTiket: this.hargaTiket);
  }
}

class _CheckOutTiketState extends State<CheckOutTiket> {
  final String tipeHari, jenisTiket, hargaTiket;
  _CheckOutTiketState(
      {required this.tipeHari,
      required this.jenisTiket,
      required this.hargaTiket});
  final List<double> paddingListView = [90, 90, 5, 190];
  int selectedOption = 0;
  final List<double> heightContainer = [110, 90, 40, 50];

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          //Layer 1
          Positioned.fill(
            top: -600.0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Image.asset("assets/images/Sevillage.png",
                  fit: BoxFit.contain),
            ),
          ),
          Positioned.fill(
            //Layer 2
            top: 210.0,
            bottom: -88,
            child: Padding(
              padding: EdgeInsetsDirectional.only(
                  start: 50.0, end: 50.0, top: 120.0, bottom: 220.0),
              child: Container(
                padding: EdgeInsetsDirectional.only(
                    top: 100.0, start: 14.0, end: 0.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey, width: 3.0),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                //Gambar Logo pembayaran
                                width: 50.0,
                                decoration: BoxDecoration(),
                                padding: EdgeInsetsDirectional.only(
                                    end: 15.0, bottom: 10.0),
                                child: Image.asset("assets/images/qrcode.jpg")),
                            Container(
                              //Deskripsi
                              width: 140.0,
                              decoration: BoxDecoration(),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "QRIS",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Pembayaran QRIS",
                                  )
                                ],
                              ),
                            ),
                            Container(
                              //Radio button
                              width: 50.0,
                              decoration: BoxDecoration(),
                              child: Radio<int>(
                                  value: 1,
                                  groupValue: selectedOption,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedOption = value!;
                                    });
                                  }),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 70.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                //Gambar Logo pembayaran
                                width: 50.0,
                                decoration: BoxDecoration(),
                                padding: EdgeInsetsDirectional.only(
                                    end: 15.0, bottom: 10.0),
                                child:
                                    Image.asset("assets/images/payment.jpg")),
                            Container(
                              //Deskripsi
                              width: 140.0,
                              decoration: BoxDecoration(),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "BANK",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text("Pembayaran Transaksi Transfer Bank",
                                      style: TextStyle(fontSize: 12.50)),
                                ],
                              ),
                            ),
                            Container(
                                //Radio button
                                width: 50.0,
                                decoration: BoxDecoration(),
                                child: Radio<int>(
                                    value: 1,
                                    groupValue: selectedOption,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedOption = value!;
                                      });
                                    })),
                          ],
                        ),
                      ),
                      Container(
                        height: 70.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              //Gambar Logo pembayaran
                              width: 50.0,
                              decoration: BoxDecoration(),
                              padding: EdgeInsetsDirectional.only(
                                  end: 15.0, bottom: 10.0),
                              child: Image.asset(
                                  "assets/images/digital_payment.jpg"),
                            ),
                            Container(
                              //Deskripsi
                              width: 140.0,
                              decoration: BoxDecoration(),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "E-WALLET",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text("Pembayaran E-WALLET",
                                      style: TextStyle(fontSize: 12.50)),
                                ],
                              ),
                            ),
                            Container(
                              //Radio button
                              width: 50.0,
                              decoration: BoxDecoration(),
                              child: Radio<int>(
                                  value: 1,
                                  groupValue: selectedOption,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedOption = value!;
                                    });
                                  }),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.only(top: 250.0),
                  child: Container(
                    //Deskripsi tiket konfirmasi
                    width: 350.0,
                    height: 120.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25.0),
                      border: Border.all(color: Colors.black),
                    ),
                    padding: EdgeInsetsDirectional.only(top: 30.0, end: 20.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox.square(
                              dimension: 62,
                              child: Container(
                                decoration: BoxDecoration(),
                                child: Image.asset("assets/images/ticket.jpg"),
                              ),
                            ),
                            //Text untuk deskripsi tiket
                            Text(jenisTiket,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0)),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              tipeHari != "" ? "(${tipeHari})" : "",
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: tipeHari != ""
                                  ? EdgeInsetsDirectional.only(
                                      start: 99.9, bottom: 5.0)
                                  : EdgeInsetsDirectional.only(
                                      start: 115.9, bottom: 5.0),
                              child: Text("Jumlah : "),
                            )
                            //Menambahkan pengukuran
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(top: 10.0),
                  child: Container(
                    height: 30.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50.0),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Center(
                      child: Text("Pilih Metode Pembayaran",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
                Padding(
                    //button bayar
                    padding: EdgeInsetsDirectional.only(top: 220.0),
                    child: Container(
                      height: 80.0,
                      width: 350.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(width: 10.0),
                            Text("Total : Rp.${hargaTiket}",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("Bayar"),
                            ),
                          ],
                        ),
                      ),
                    ))
              ],
            ),
          ),
          Positioned.fill(
            top: 700.0,
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
                        context,
                        MaterialPageRoute(
                          builder: (context) => PageMap(),
                        ),
                      );
                    },
                    icon: Icon(Icons.map),
                    tooltip: "Map",
                    iconSize: 30.0,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PageProfile(),
                        ),
                      );
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
                      Navigator.pop(context);
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
  }
}

//Page Login

class PageLogin extends StatefulWidget {
  const PageLogin({super.key});

  @override
  State<PageLogin> createState() => _PageLoginState();
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

//Page Profile

class PageProfile extends StatefulWidget {
  const PageProfile({super.key});

  @override
  State<PageProfile> createState() => _PageProfileState();
}

class _PageProfileState extends State<PageProfile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WidgetProfile(),
    );
  }
}

class WidgetProfile extends StatefulWidget {
  const WidgetProfile({super.key});

  @override
  State<WidgetProfile> createState() => _WidgetProfileState();
}

class _WidgetProfileState extends State<WidgetProfile> {
  @override
  Widget build(BuildContext konteks) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: [
        Positioned.fill(
          bottom: 680.0,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue[900],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(180.0),
                bottomRight: Radius.circular(180.0),
              ),
            ),
          ),
        ),
        Positioned.fill(
          //icon user
          top: -500,
          child: Center(
            child: Container(
              height: 180.0,
              width: 180.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: Colors.white),
              padding: EdgeInsets.all(30.0),
              child: Image.asset("assets/images/user2.png"),
            ),
          ),
        ),
        Positioned.fill(
            top: 350.0,
            bottom: 90.0,
            child: Container(
                height: 400.0,
                decoration: BoxDecoration(),
                child: Column(
                  children: [
                    Container(
                      height: 100.0,
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(color: Colors.black, width: 3.0))),
                      padding: EdgeInsetsDirectional.only(start: 20.0),
                      child: Row(
                        children: [
                          //gambar
                          Container(
                            height: 60.0,
                            width: 60.0,
                            decoration: BoxDecoration(),
                            child: Image.asset("assets/images/user.png",
                                fit: BoxFit.fill),
                          ),
                          //Text
                          Container(
                              width: 270.0,
                              height: 60.0,
                              decoration: BoxDecoration(),
                              child: Center(
                                child: Text("Saeful",
                                    style: TextStyle(fontSize: 30.0)),
                              ))
                        ],
                      ),
                    ),
                    Container(
                      height: 70.0,
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(color: Colors.black, width: 3.0))),
                      padding: EdgeInsetsDirectional.only(start: 10.0),
                      child: Row(
                        children: [
                          //gambar
                          Container(
                            height: 70.0,
                            width: 70.0,
                            decoration: BoxDecoration(),
                            child: Image.asset("assets/images/handphone.png"),
                          ),
                          //Text
                          Container(
                              width: 270.0,
                              height: 60.0,
                              decoration: BoxDecoration(),
                              child: Center(
                                  child: Text("0885345324",
                                      style: TextStyle(fontSize: 20.0))))
                        ],
                      ),
                    ),
                    Container(
                      height: 50.0,
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(color: Colors.black, width: 3.0))),
                      padding: EdgeInsetsDirectional.only(start: 15.0),
                      child: Row(
                        children: [
                          //gambar
                          Container(
                            height: 70.0,
                            width: 70.0,
                            decoration: BoxDecoration(),
                            // padding: EdgeInsetsDirectional.only(end: 10),
                            child: Image.asset("assets/images/email.png"),
                          ),

                          //Text
                          Container(
                              width: 270.0,
                              height: 58.0,
                              decoration: BoxDecoration(),
                              child: Center(
                                  child: Text(
                                "saefullgame@gmail.com",
                                style: TextStyle(fontSize: 30.0),
                              ))),
                        ],
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PageInfo()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue[900],
                              foregroundColor: Colors.white,
                              fixedSize: Size(150.0, 50.0),
                            ),
                            child: Center(
                                child: Text("Rating",
                                    style: TextStyle(fontSize: 20)))),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PageLogin(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue[900],
                              foregroundColor: Colors.white,
                              fixedSize: Size(150.0, 50.0),
                            ),
                            child: Center(
                                child: Text("Logout",
                                    style: TextStyle(fontSize: 20)))),
                      ],
                    )
                  ],
                ))),
        Positioned.fill(
          top: 700.0,
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
                      context,
                      MaterialPageRoute(
                        builder: (context) => PageMap(),
                      ),
                    );
                  },
                  icon: Icon(Icons.map),
                  tooltip: "Map",
                  iconSize: 30.0,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PageProfile(),
                      ),
                    );
                  },
                  icon: Image.asset(
                    "assets/images/user.png",
                    width: 25.0,
                    height: 25.0,
                  ),
                  tooltip: "Profil",
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
    ));
  }
}
