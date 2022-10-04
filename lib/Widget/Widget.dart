import 'package:flutter/material.dart';

class Widget {
  Widget loginTextfield = Padding(
                    padding: const EdgeInsets.all(40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Phone Number", style: FontStyle().whiteFont,),
                        const SizedBox(height: 10),
                        const TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            fillColor: Colors.white,
                            filled: true,
                            hintText: 'ဖုန်းနံပါတ်ထည့်သွင်းပါ',
                            hintStyle: TextStyle(color: Colors.grey, fontSize: 14) // pls help me in this line (I want to replace with FontStyle().greyFont)
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
}