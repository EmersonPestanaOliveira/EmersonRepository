import 'package:flutter/material.dart';

class SumScreen extends StatefulWidget {
  const SumScreen({Key? key}) : super(key: key);

  @override
  State<SumScreen> createState() => _SumScreenState();
}

class _SumScreenState extends State<SumScreen> {
  TextEditingController firstValueEditingController = TextEditingController();
  TextEditingController secondValueEditingController = TextEditingController();
  int resultSum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sum App"),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.blue[200],
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
                child: TextField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                     fillColor: Colors.white,
                     labelText: 'First Value',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                  controller: firstValueEditingController,
                  
                  onChanged: (String texto) {
                    print("Valor digitado:" + texto);
                  },
                ),
              ),
              Text(
                "+",
                style: TextStyle(fontSize: 30, color: Colors.deepPurple),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
                child: TextField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                     labelText: 'Second Value',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                  controller: secondValueEditingController,
                  onChanged: (String texto) {
                    print("Valor digitado:" + texto);
                  },
                ),
              ),
              Text(
                "=",
                style: TextStyle(fontSize: 30, color: Colors.deepPurple),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  child: Text(resultSum.toString()),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    resultSum = int.parse(firstValueEditingController.text) + int.parse(secondValueEditingController.text);
                  });
                },
                child: Text(
                  "Sum",
                  style: TextStyle(fontSize: 30),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
