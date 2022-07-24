import 'package:flutter/material.dart';

import 'package:web_responsive/pages/home/widgets/custom_search_field.dart';

class TopSection extends StatelessWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;

        if (maxWidth >= 1200) {
          return AspectRatio(
            aspectRatio: 3.2,
            child: Stack(
              children: [
                AspectRatio(
                  aspectRatio: 3.4,
                  child: Image.network(
                    "https://images.pexels.com/photos/887751/pexels-photo-887751.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 50,
                  child: Card(
                    color: Colors.black,
                    elevation: 8,
                    child: Container(
                      padding: const EdgeInsets.all(22),
                      width: 450,
                      child: Column(
                        children: const [
                          Text(
                            "Aprenda Flutter com este curso",
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Bora Aprender Flutter com o professor Matheus Monteiro! Cursos por apenas R\$ 22,90 Qualidade Garantida.",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 8),
                          CustomSearchField(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }

        return Container();
      },
    );
  }
}
