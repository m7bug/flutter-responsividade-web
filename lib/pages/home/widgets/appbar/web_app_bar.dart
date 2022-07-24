import 'package:flutter/material.dart';

import 'package:web_responsive/pages/home/widgets/appbar/web_app_bar_responsive_content.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 72,
      title: Row(
        children: [
          const Text("Flutter"),
          const SizedBox(width: 4),
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
          const WebAppBarResponsiveContent(),
          const SizedBox(width: 24),
          SizedBox(
            height: 38,
            child: OutlinedButton(
              onPressed: () {},
              style: ButtonStyle(side: MaterialStateProperty.all(const BorderSide(color: Colors.white, width: 2))),
              child: const Text("Fazer Login", style: TextStyle(color: Colors.white)),
            ),
          ),
          const SizedBox(width: 8),
          SizedBox(
            height: 40,
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
              child: const Text("Cadastre-se", style: TextStyle(color: Colors.black)),
            ),
          )
        ],
      ),
    );
  }
}
