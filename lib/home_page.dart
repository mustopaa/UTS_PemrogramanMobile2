import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project_uts/menu_TabBar/about.dart';
import 'package:project_uts/menu_TabBar/keranjang.dart';
import 'package:project_uts/menu_TabBar/search.dart';
import 'package:project_uts/menu_TabBar/home.dart';
import 'package:project_uts/menu_TabBar/shop.dart';

void main() => runApp(const HomePage());

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const String _title = 'Agriculture Tech';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// [AnimationController]s can be created with `vsync: this` because of
/// [TickerProviderStateMixin].
class _MyStatefulWidgetState extends State<MyStatefulWidget>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Utama Aplikasi Agriculture Tech'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const <Widget>[
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.shop),
            ),
            Tab(
              icon: Icon(Icons.search),
            ),
             Tab(
              icon: Icon(Icons.shopping_cart),
            ),
             Tab(
              icon: Icon(Icons.help),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          Home(),
          Shop(),
          Search(),
          Keranjang(),
          About(),
        ],
      ),
    );
  }
}