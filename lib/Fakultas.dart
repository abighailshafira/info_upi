import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'RincianFakultas.dart';

class Fakultas extends StatelessWidget {
  const Fakultas({Key? key}) : super(key: key);
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
                        "FPMIPA",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Fakultas Pendidikan Matematika dan Ilmu Pengetahuan Alam",
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
            //gunakan navigator untuk panggil RincianFakultas
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return RincianFakultas();
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
                    Text("FPIPS",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(
                      "Fakultas Pendidikan Ilmu Pengetahuan Sosial",
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
