import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(16, 50, 16, 57),
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
              "Sign up",
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 73,
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
                        label: Text("Name"),
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(width: 0, color: Colors.white)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(width: 0, color: Colors.white))),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
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
                  height: 8,
                ),
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
                        label: Text("Password"),
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(width: 0, color: Colors.white)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(width: 0, color: Colors.white))),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: const Text("Already have an account?"),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const Icon(
                      Icons.arrow_forward,
                      color: Colors.red,
                    )
                  ],
                ),
                const SizedBox(
                  height: 28,
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        backgroundColor: Colors.red,
                        minimumSize: const Size.fromHeight(48)),
                    child: const Text("SIGN UP")),
                const SizedBox(
                  height: 126,
                ),
                const Text(
                  "Or sign up with social account",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 255, 17, 0),
                            fixedSize: const Size(92, 64),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25))),
                        onPressed: () {},
                        child: const FaIcon(FontAwesomeIcons.google)),
                    const SizedBox(
                      width: 16,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            fixedSize: const Size(92, 64),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25))),
                        onPressed: () {},
                        child: const FaIcon(FontAwesomeIcons.facebook))
                  ],
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
