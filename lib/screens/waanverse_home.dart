import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController valueContorller = TextEditingController();

  double amount = 0;

  final border = OutlineInputBorder(
      borderSide: const BorderSide(
          width: 2.0,
          color: Colors.white60,
          strokeAlign: BorderSide.strokeAlignOutside),
      borderRadius: BorderRadius.circular(10.0));


  @override
  void dispose() {
    valueContorller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 24, 49, 47),
        appBar: AppBar(
          title: const Text("Currency Convertor"),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'UGX $amount',
                  style: const TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 252, 252),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                margin: const EdgeInsets.only(top: 20, bottom: 20),
                child: TextField(
                  controller: valueContorller,
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  style: const TextStyle(
                    color: Colors.black54,
                  ),
                  decoration: InputDecoration(
                      hintText: "Please enter amount",
                      prefixIcon: const Icon(
                        Icons.monetization_on_outlined,
                        color: Colors.black54,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      focusedBorder: border,
                      hintStyle: const TextStyle(
                        color: Colors.black54,
                      ),
                      enabledBorder: border),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  onPressed: () {
                    double val = double.parse(valueContorller.text) * 3800;
                    setState(() {
                      amount = val;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.black54,
                      minimumSize: const Size(double.infinity, 50),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)))),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.arrow_forward_rounded),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Convert",
                          style: TextStyle(fontSize: 20),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
