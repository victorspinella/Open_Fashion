import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:open_fashion/screens/menu_screen.dart';
import 'package:open_fashion/widgets/menu_button.dart';
import 'package:open_fashion/widgets/social_icon_button.dart';
import 'package:open_fashion/main.dart';


const IconData facebookIcon = FontAwesomeIcons.facebook;
const IconData twitterIcon = FontAwesomeIcons.twitter;
const IconData instagramIcon = FontAwesomeIcons.instagram;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Open Fashion',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Open Fashion'),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              'assets/picture1.png'),
            Text(
              'LUXURY FASHION & ACCESSORIES',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'EXPLORE COLLECTION',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  _buildProductCard(
                    title: 'ZIWN reversible angora',
                    imageUrl: 'assets/images/product-1.png',
                    price: '120',
                  ),
                  _buildProductCard(
                    title: '2 reversible angora',
                    imageUrl: 'assets/images/product-2.png',
                    price: '120',
                  ),
                  _buildProductCard(
                    title: '2WN reversible angora',
                    imageUrl: 'assets/images/product-3.png',
                    price: '120',
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Explore More'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProductCard(
      {required String title, required String imageUrl, required String price}) {
    return Card(
      child: Column(
        children: [
          Image.asset(imageUrl),
          Text(title),
          Text(price),
        ],
      ),
    );
  }
}