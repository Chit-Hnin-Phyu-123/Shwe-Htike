import 'package:flutter/material.dart';
import 'package:shwe_htike/Theme/Theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List list = ["ပေါ်ဆန်းမွှေး", "ဧရာမင်း", "ပေါ်ဆန်းမွှေး", "ဧရာမင်း"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: ListView(
          children: [
            for (var i = 0; i < list.length; i++)
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
                child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(list[i]),
                        ),
                        Text("အသေးစိတ်ကြည့်ရှုရန်", style: FontStyle().greyFont)
                      ],
                    ),
                  ),
                ),
              )
          ],
        ));
  }
}
