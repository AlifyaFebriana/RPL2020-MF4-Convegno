import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var data = [
      Grafik("Paham", 20, Colors.green),
      Grafik("Kurang Paham", 13, Colors.orange),
      Grafik("Tidak Paham", 3, Colors.red),
    ];

    var series = [
      charts.Series(
          domainFn: (Grafik grafik, _) => grafik.nilai,
          measureFn: (Grafik grafik, _) => grafik.angka,
          colorFn: (Grafik grafik, _) => grafik.color,
          id: 'Summary',
          data: data,
          labelAccessorFn: (Grafik grafik, _) =>
              '${grafik.nilai} : ${grafik.angka.toString()}')
    ];

    var chart = charts.BarChart(
      series,
      vertical: false,
      barRendererDecorator: charts.BarLabelDecorator<String>(),
      domainAxis: charts.OrdinalAxisSpec(renderSpec: charts.NoneRenderSpec()),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("CONVEGNO"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            Text(
              "Grafik Pemahaman Siswa",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 400, child: chart),
          ],
        ),
      ),
    );
  }
}

class Grafik {
  final String nilai;
  final int angka;
  final charts.Color color;

  Grafik(this.nilai, this.angka, Color color)
      : this.color = charts.Color(
            r: color.red, g: color.green, b: color.blue, a: color.alpha);
}
