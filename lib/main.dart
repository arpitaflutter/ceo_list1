import 'package:flutter/material.dart';

import 'Homepage.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => Homepage(),
      },
    ),
  );
}