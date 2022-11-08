import 'package:flutter/material.dart';

class BarItemPage extends StatefulWidget {
  const BarItemPage({super.key});

  @override
  State<BarItemPage> createState() => _BarItemPageState();
}

class _BarItemPageState extends State<BarItemPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(child: Text('Bar Item')),
    );
  }
}
