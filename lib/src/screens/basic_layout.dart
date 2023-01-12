import 'package:flutter/material.dart';

class BasicLayoutScreen extends StatelessWidget {
  const BasicLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // main image
          const Image(image: AssetImage('assets/landscape.jpeg')),

          // title section
          const TitleSection(),

          // Button Section
          const ButtonSection(),

          // Description
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: const Text(
              'Quis occaecat do duis ipsum pariatur adipisicing in minim. Nulla nulla cillum aliqua exercitation exercitation eu esse tempor nulla. Elit elit in cupidatat velit veniam consequat ullamco commodo esse ea pariatur deserunt sint nostrud. Proident ea eu sunt labore commodo ipsum. Ullamco ut ex cupidatat ea veniam aliquip id reprehenderit do.',
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Oescinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),
          Expanded(child: Container()),
          const Icon(Icons.star, color: Colors.red),
          const Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CustomButton(icon: Icons.phone, text: 'Call'),
          CustomButton(icon: Icons.navigation_rounded, text: 'Route'),
          CustomButton(icon: Icons.share, text: 'Share'),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final IconData icon;

  const CustomButton({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
        ),
        const SizedBox(height: 5),
        Text(
          text.toUpperCase(),
          style: const TextStyle(color: Colors.blue),
        )
      ],
    );
  }
}
