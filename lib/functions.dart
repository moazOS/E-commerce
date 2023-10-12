import 'package:flutter/material.dart';

void goTo({required BuildContext context, required var NewScreen}) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => NewScreen));
}
