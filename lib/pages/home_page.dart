import 'package:flutter/material.dart';
import 'package:perplexity_clone/widgets/search_section.dart';

import '../theme/colors.dart';
import '../widgets/side_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideBar(),
          Column(
            children: [
              Expanded(
                child: SearchSection(),
              ),
              // search section
              Container(
                height: 20,
              ),
              // footer
            ],
          )
        ],
      ),
    );
  }
}












