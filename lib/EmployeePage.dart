import 'package:flutter/material.dart';

class EmployeePage extends StatefulWidget {
  const EmployeePage({Key? key}) : super(key: key);

  @override
  State<EmployeePage> createState() => _EmployeePageState();
}

class _EmployeePageState extends State<EmployeePage> {
  List list = [
    {
      "id": "01",
      "name": "မောင်မောင်",
      "position": "စာရေး",
      "address": "09-123456789"
    },
    {
      "id": "02",
      "name": "မြမြ",
      "position": "စာရင်းကိုင်",
      "address": "09-123456789"
    },
    {
      "id": "03",
      "name": "ဦးဘ",
      "position": "ဒရိုက်ဘာ",
      "address": "09-123456789"
    }
  ];
  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Container(
              color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        color: Colors.grey[200],
                        width: screensize.width * 0.1,
                        child: const Text("စဥ်")),
                    ),
                    Container(
                      color: Colors.grey[200],
                      width: screensize.width * 0.25,
                      child: const Text("အမည်")),
                    Container(
                      color: Colors.grey[200],
                      width: screensize.width * 0.25,
                      child: const Text("ရာထူး")),
                    Container(
                      color: Colors.grey[200],
                      width: screensize.width * 0.25,
                      child: Row(
                        children: const [
                          Icon(Icons.phone),
                          SizedBox(width: 10),
                          Text("လိပ်စာ"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            for(var i = 0; i < list.length; i++)
            Column(
              children: [
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            color: Colors.white,
                            width: screensize.width * 0.1,
                            child: Text(list[i]["id"])),
                        ),
                        Container(
                          color: Colors.white,
                          width: screensize.width * 0.25,
                          child: Text(list[i]["name"])),
                        Container(
                          color: Colors.white,
                          width: screensize.width * 0.25,
                          child: Text(list[i]["position"])),
                        Container(
                          color: Colors.white,
                          width: screensize.width * 0.25,
                          child: Text(list[i]["address"]),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.grey[200],
                  height: 1,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
