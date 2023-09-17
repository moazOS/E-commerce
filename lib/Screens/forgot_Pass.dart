import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(16, 50, 16, 57),
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 24,
              width: 24,
              child: IconButton(
                padding: const EdgeInsets.all(0.0),
                onPressed: () {},
                icon: const Icon(Icons.arrow_back_ios_new),
                alignment: Alignment.center,
              ),
            ),
            const SizedBox(
              height: 34,
            ),
            const Text(
              "Forgot password",
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 100,
            ),
            const Text(
              "Please, enter your email address. You will receive a link to create a new password via email.",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              alignment: Alignment.topCenter,
              child: Column(children: [
                Container(
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(color: Colors.black12, blurRadius: 15)
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  padding: const EdgeInsets.fromLTRB(20, 14, 20, 15),
                  child: TextFormField(
                    style: const TextStyle(color: Colors.black, fontSize: 20),
                    decoration: const InputDecoration(
                        label: Text("Email"),
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(width: 0, color: Colors.white)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(width: 0, color: Colors.white))),
                  ),
                ),
                const SizedBox(
                  height: 55,
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        backgroundColor: Colors.red,
                        minimumSize: const Size.fromHeight(48)),
                    child: const Text("SEND")),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
