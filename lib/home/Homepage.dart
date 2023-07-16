import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Image.asset("as/child think.jpg")),
            ListTile(
            title: Text("Kids activites "), trailing: Icon(Icons.wb_incandescent_outlined), onTap: (){}),
            ListTile(
              title: Text("Memories "), trailing: Icon(Icons.wb_incandescent_outlined), onTap: (){})
          ]),
      ),
      appBar: AppBar(
        title: const Text("Kids Land"),
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.blueGrey[200],

      ),
    );
  }
}
