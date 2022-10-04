import 'package:flutter/material.dart';
import 'package:shwe_htike/HomePage.dart';
import './Theme/Theme.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    // Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(
            height: 50,
          ),
          const CircleAvatar(
            // radius: MediaQuery.of(context).size.width * 0.3,
            radius: 70,
            backgroundImage: NetworkImage('https://picsum.photos/250?image=9'),
            backgroundColor: Colors.transparent,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Center(
              child: Text("အဆင့်မြင့် ဆန်ရောင်းဝယ်ရေး",
                  style: FontStyle().lableHeaderStyle),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              color: ColorTheme().secandaryColor,
              child: Padding(
                padding: const EdgeInsets.all(40),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Phone Number",
                            style: FontStyle().whiteFont,
                          ),
                          const SizedBox(height: 10),
                          TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide.none,
                                ),
                                fillColor: Colors.white,
                                filled: true,
                                hintText: 'ဖုန်းနံပါတ်ထည့်သွင်းပါ',
                                hintStyle: const TextStyle(
                                    color: Colors.grey,
                                    fontSize:
                                        14) // pls help me in this line (I want to replace with FontStyle().greyFont)
                                ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Password",
                            style: FontStyle().whiteFont,
                          ),
                          const SizedBox(height: 10),
                          TextField(
                            obscureText: showPassword ? false : true,
                            cursorColor: Colors.grey,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide.none),
                                fillColor: Colors.white,
                                filled: true,
                                suffixIconColor: Colors.grey,
                                suffixIcon: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        showPassword = !showPassword;
                                      });
                                    },
                                    child: Icon(
                                      showPassword
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: Colors.grey,
                                    )),
                                hintText: 'စကားဝှက်ထည့်သွင်းပါ',
                                hintStyle: const TextStyle(
                                    color: Colors.grey,
                                    fontSize:
                                        14) // pls help me in this line (I want to replace with FontStyle().greyFont)
                                ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()),
                          );
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                color: ColorTheme().primaryColor,
                                borderRadius: BorderRadius.circular(5)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: Center(
                                child: Text(
                                  "လေ့ာဂ်အင်ဝင်မယ်",
                                  style: FontStyle().whiteFont,
                                ),
                              ),
                            )),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
