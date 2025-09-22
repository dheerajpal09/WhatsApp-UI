import 'package:flutter/material.dart';
import 'package:localdb/screens/otpscreen/otpScreen.dart';
import 'package:localdb/widgets/uihelper.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  TextEditingController phoneController = TextEditingController();
  String selectedCountry = "India";
  List<String> countries = [
    "India",
    "Nepal",
    "America",
    "Italy",
    "Japan",
    "Canada",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(height: 80),
          Center(
            child: Uihelper.customText(
              text: "Enter your phone number",
              height: 20,
              color: Color(0XFF00A884),
              fontweight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 30),
          Uihelper.customText(
            text: "WhatsApp will need to verify your phone",
            height: 14,
          ),
          SizedBox(height: 5),
          Uihelper.customText(
            text: "number. Carrier charges may apply.",
            height: 14,
          ),
          SizedBox(height: 5),

          Uihelper.customText(
            text: " What's my number?",
            height: 14,
            color: Color(0XFF00A884),
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: DropdownButtonFormField(
              items: countries.map((String country) {
                return DropdownMenuItem(value: country, child: Text(country));
              }).toList(),
              onChanged: (newvalue) {
                setState(() {
                  selectedCountry = newvalue!;
                });
              },
              value: selectedCountry,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0XFF00A884)),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0XFF00A884)),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 50,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "+91",
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF00A884)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF00A884)),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF00A884)),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: phoneController,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFF00A884)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Uihelper.customButton(
        callback: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => OTPScreen()),
          );
        },
        buttonName: "Next",
      ),
    );
  }
}
