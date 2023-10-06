import 'package:flutter/material.dart';
import 'package:open_fashion/router.dart';
import 'package:open_fashion/screens/blog_post.dart';
import 'package:open_fashion/screens/numbers_page.dart';


void main() {
  runApp(const MyApp());
}

//estudar: go_router e tema da aplicação
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Minha Loja de Roupas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerConfig: router,
    );
  }
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blog Post',
      home:BlogPost(),
    );
  }
}

Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: const Text(
    '2021 STYLE GUIDE: THE BIGGEST FALL TRENDS',
    style:TextStyle(
      fontWeight:FontWeight.w400,
      fontSize: 14,
    ),
    softWrap: true,
  ),
);

Widget textSection = Container(
  padding: const EdgeInsets.all(32),
  child: const Text(
    'You guys know how much I love mixing high and low-end – it’s the best way to get the most bang for your buck while still elevating your wardrobe.' 
    'The same goes for handbags! And honestly they are probably the best pieces to mix and match.' 
    'I truly think the key to completing a look is with a great bag and I found so many this year that I wanted to share a round-up of my most worn handbags.',
    style:TextStyle(
      fontWeight:FontWeight.w400,
      fontSize: 14,
    ),
    softWrap: true,
  ),
);

Widget textSection2 = Container(
  padding: const EdgeInsets.all(32),
  child: const Text(
    'I found this Saint Laurent canvas handbag this summer and immediately fell in love.' 
    'The neutral fabrics are so beautiful and I like how this handbag can also carry into fall.'
    'The mini Fendi bucket bag with the sheer fabric is so fun and such a statement bag.' 
    'Also this DeMellier off white bag is so cute to carry to a dinner with you or going out, it’s small but not too small to fit your phone and keys still.',
    style:TextStyle(
      fontWeight:FontWeight.w400,
      fontSize: 14,
    ),
    softWrap: true,
  ),
);

Widget postInfo = Container(
  padding: const EdgeInsets.all(32),
  child: const Text(
    'Posted by OpenFashion | 3 Days ago',
    style:TextStyle(
      fontWeight:FontWeight.w400,
      fontSize: 14,
    ),
    softWrap: true,
  ),
);

Widget postButtons = Container(
  padding: const EdgeInsets.all(32),
  child: const Text(
    '#Fashion     #Tips',
    style:TextStyle(
      fontWeight:FontWeight.w400,
      fontSize: 14,
    ),
    softWrap: true,
  ),
);

Widget headerSection = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Image.asset(
      'assets/menu_icon.png',
       //width: 24,
       //height: 25,
       //fit: BoxFit.none,
    ),
    SizedBox(width: 85),
    Image.asset(
      'assets/logo.png',
       //width: 79,
       //height: 32,
       //fit: BoxFit.none,
    ),
    SizedBox(width: 55),
    Image.asset(
      'assets/search_icon.png',
       //width: 24,
       //height: 24,
       //fit: BoxFit.none,
    ),
    SizedBox(width: 15),
    Image.asset(
      'assets/shopping_bag_icon.png',
       //width: 24,
       //height: 24,
       //fit: BoxFit.none,
    ),
  ],
);

class View extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            //title: const Text("Open Fashion",textAlign: TextAlign.center,),
            backgroundColor: Colors.transparent,
            elevation: 0,
            titleSpacing: 0,
            leading: IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {
                //context.go("/menu");
              },
            ),
            title: Center(
              child: Image.asset(
                'logo.png',
                width:78,
                height:32,
              ),
              //child: Text(
              //  "Open Fashion",
              //  style: TextStyle(
              //    color: Colors.black,
              //    fontWeight: FontWeight.bold,
              //  ),
              //),
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
          ),
          //body: const TabBarView(
          //  children: [
          //    //HeroListPage(),
          //    NumbersPage()
          //  ],
          //),
        ),
      ),
    );
  }
}