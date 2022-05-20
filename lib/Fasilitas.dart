import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'RincianFasilitas.dart';

class Fasilitas extends StatelessWidget {
  const Fasilitas({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(padding: EdgeInsets.all(20), shrinkWrap: true, children: [
        InkWell(
          child: Container(
            decoration: BoxDecoration(border: Border.all()),
            padding: EdgeInsets.all(14),
            child: Row(children: <Widget>[
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Balai Bahasa",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Pusat Pembelajaran",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Image.network(
                  "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg", //pastikan file ada di assets/images
                  height: 50,
                ),
              )
            ]),
          ),
          onTap: () {
            //gunakan navigator untuk panggil RincianFasilitas
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return RincianFasilitas();
            }));
          },
        ),
        Container(
          decoration: BoxDecoration(border: Border.all()),
          padding: EdgeInsets.all(14),
          child: Row(children: <Widget>[
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    Text("Gymnasium",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(
                      "Olahraga",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Image.network(
                "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg", //pastikan file ada di assets/images
                height: 50,
              ),
            )
          ]),
        ),
        Container(
          decoration: BoxDecoration(border: Border.all()),
          padding: EdgeInsets.all(14),
          child: Row(children: <Widget>[
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    Text("Stadion UPI",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(
                      "Olahraga",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Image.network(
                "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg", //pastikan file ada di assets/images
                height: 50,
              ),
            )
          ]),
        ),
        Container(
          decoration: BoxDecoration(border: Border.all()),
          padding: EdgeInsets.all(14),
          child: Row(children: <Widget>[
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    Text("UPInet",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(
                      "Teknologi Informasi",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Image.network(
                "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg", //pastikan file ada di assets/images
                height: 50,
              ),
            )
          ]),
        ),
      ]),
    );
  }
}
