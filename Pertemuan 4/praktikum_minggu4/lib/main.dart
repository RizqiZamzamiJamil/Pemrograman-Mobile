import 'package:flutter/material.dart';
import 'package:praktikum_minggu4/result.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _inputUser = 0;
  double _kelvin = 0;
  double _reamur = 0;
  final inputController = TextEditingController();
  String _newValue = "Kelvin";
  double _result = 0;

  var listItem = ["Kelvin", "Reamur"];

  void perhitunganSuhu() {
    setState(() {
      _inputUser = double.parse(inputController.text);
      if (_newValue == "Kelvin")
        _result = _inputUser + 273;
      else
        _result = (4 / 5) * _inputUser;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Konverter Suhu'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              controller: inputController,
              onChanged: (String value) {
                setState(() {
                  _inputUser = double.parse(value);
                });
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Masukkan suhu',
              ),
            ),

            //
            Container(
                child: Column(
              children: [
                DropdownButton<String>(
                  items: listItem.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  value: _newValue,
                  onChanged: (changeValue) {
                    setState(() {
                      _newValue = changeValue!;
                    });
                  },
                ),
                Result(result: _result),
              ],
            )),

            //
            SizedBox(
              child: Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: perhitunganSuhu,
                  child: Text(
                    'Konversi Suhu',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),

            //
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                'Riwayat Konversi',
                style: TextStyle(fontSize: 20),
              ),
            ),

            //
            Expanded(child: ListView())
          ],
        ),
      ),
    );
  }
}
