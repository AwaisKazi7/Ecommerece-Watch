import 'package:flutter/material.dart';


class Homescreen extends StatelessWidget {
  const Homescreen({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Discover Premium Watches'),
      ),
      body: const SearchBar(
      ),
    );
  }
}