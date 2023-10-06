import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:open_fashion/screens/menu_screen.dart';
import 'package:open_fashion/widgets/menu_button.dart';
import 'package:open_fashion/widgets/social_icon_button.dart';
import 'package:open_fashion/widgets/social_icon_button.dart';


const IconData facebookIcon = FontAwesomeIcons.facebook;
const IconData twitterIcon = FontAwesomeIcons.twitter;
const IconData instagramIcon = FontAwesomeIcons.instagram;

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: buildBody(context),
      bottomNavigationBar: buildBottomNavigationBar(context),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      titleSpacing: 0,
      leading: IconButton(
        icon: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        onPressed: () {
          context.go("/menu");
        },
      ),
      title: Center(
        child: 
        Image.asset(
                'logo.png',
        ),
      ),
      actions: [
        Row(
          children: [
            IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.shopping_bag,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }

  Widget buildBody(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "PAGE NOT FOUND",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            "We can't find the page you're looking for. It will return to the",
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              // Implemente a navegação para a página inicial aqui
              context.go("/home");
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.black,
            ),
            child: const Text("HOME PAGE"),
          ),
          const SizedBox(height: 16),
          buildSocialIconsRow(),
          const Text(
            "support@openui.design\n+60 825 876\n08:00 - 22:00 - Everyday",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSocialIconsRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialIconButton(
          icon: twitterIcon,
          onPressed: () {
            // Implemente a ação do ícone do Twitter aqui
          },
        ),
        SocialIconButton(
          icon: instagramIcon,
          onPressed: () {
            // Implemente a ação do ícone do Instagram aqui
          },
        ),
        SocialIconButton(
          icon: facebookIcon,
          onPressed: () {
            // Implemente a ação do ícone do Facebook aqui
          },
        ),
      ],
    );
  }

  BottomAppBar buildBottomNavigationBar(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          MenuButton(
            label: "About",
            onPressed: () {
              // Implemente a navegação para a página "About" aqui
              context.go("/blog");
            },
          ),
          MenuButton(
            label: "Contact",
            onPressed: () {
              // Implemente a navegação para a página "Contact" aqui
            },
          ),
          MenuButton(
            label: "Blog",
            onPressed: () {
              // Implemente a navegação para a página "Blog" aqui
              context.go("/blog");
            },
          ),
        ],
      ),
    );
  }
}
