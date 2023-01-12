import 'package:flutter/material.dart';

import 'package:layouts/src/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background
          const Background(),
          // Home Content
          _HomeContent(),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}

class _HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          // Titles
          PageTitle(),

          // Card Table
          CardsTable(),
        ],
      ),
    );
  }
}
