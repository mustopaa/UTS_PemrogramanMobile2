import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Keranjang extends StatefulWidget {
  const Keranjang({super.key});

  @override
  State<Keranjang> createState() => _KeranjangState();
}

class _KeranjangState extends State<Keranjang> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Ini Merupakan Halaman Keranjang"),
    );
  }
}