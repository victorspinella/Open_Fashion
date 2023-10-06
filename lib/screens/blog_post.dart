import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:open_fashion/main.dart';
import 'package:open_fashion/widgets/social_icon_button.dart';

const IconData facebookIcon = FontAwesomeIcons.facebook;
const IconData twitterIcon = FontAwesomeIcons.twitter;
const IconData instagramIcon = FontAwesomeIcons.instagram;

class BlogPost extends StatelessWidget {
  const BlogPost({Key? key});

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      // Resto do código...
      body: ListView(
        children: [
          Image.asset(
            'assets/banner_blog.png',
            width: 375,
            height: 223,
            fit: BoxFit.none,
          ),
          titleSection,
          textSection,
          Image.asset(
            'assets/model.png',
            width: 343,
            height: 451,
            fit: BoxFit.none,
          ),
          textSection2,
          postInfo,
          postButtons,
        ],
      )
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
}
