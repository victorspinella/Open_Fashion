import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              onPressed: () => {context.go("/")},
              color: Colors.black,
              icon: const Icon(FontAwesomeIcons.times),
            ),
            bottom: const TabBar(
              labelColor: Colors.black,
              tabs: [
                Tab(
                  text: "WOMEN",
                ),
                Tab(
                  text: "MAN",
                ),
                Tab(
                  text: "KIDS",
                ),
              ],
            ),
            title: const Text('Tabs Demo'),
          ),
          body: const TabBarView(
            children: [
              CategoryListView(category: "New"),
              CategoryListView(category: "New"),
              CategoryListView(category: "New"),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryListView extends StatefulWidget {
  final String category;

  const CategoryListView({required this.category, Key? key}) : super(key: key);

  @override
  _CategoryListViewState createState() => _CategoryListViewState();
}

class _CategoryListViewState extends State<CategoryListView> {
  bool _isExpanded = false;
  bool _isSecondMenuExpanded = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text(widget.category),
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
        ),
        if (_isExpanded)
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Ação do botão Item 1
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // Cor de fundo branca
                    onPrimary: Colors.black, // Cor do texto preto
                    elevation: 0, // Sem sombreamento
                  ),
                  child: Text('Item 1'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Ação do botão Item 2
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // Cor de fundo branca
                    onPrimary: Colors.black, // Cor do texto preto
                    elevation: 0, // Sem sombreamento
                  ),
                  child: Text('Item 2'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Ação do botão Item 3
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // Cor de fundo branca
                    onPrimary: Colors.black, // Cor do texto preto
                    elevation: 0, // Sem sombreamento
                  ),
                  child: Text('Item 3'),
                ),
                // Adicione mais botões aqui conforme necessário.
              ],
            ),
          ),
        Divider(), // Divisor entre o primeiro e o segundo menus expansíveis
        ListTile(
          title: Text('Apparel'),
          onTap: () {
            setState(() {
              _isSecondMenuExpanded = !_isSecondMenuExpanded;
            });
          },
        ),
        if (_isSecondMenuExpanded)
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Ação do botão Segundo Menu Item 1
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // Cor de fundo branca
                    onPrimary: Colors.black, // Cor do texto preto
                    elevation: 0, // Sem sombreamento
                  ),
                  child: Text('Outer'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Ação do botão Segundo Menu Item 2
                    context.go("/page");
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // Cor de fundo branca
                    onPrimary: Colors.black, // Cor do texto preto
                    elevation: 0, // Sem sombreamento
                  ),
                  child: Text('Dress'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Ação do botão Segundo Menu Item 2
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // Cor de fundo branca
                    onPrimary: Colors.black, // Cor do texto preto
                    elevation: 0, // Sem sombreamento
                  ),
                  child: Text('Blouse/Shirt'),  
                ),
                ElevatedButton(
                  onPressed: () {
                    // Ação do botão Segundo Menu Item 2
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // Cor de fundo branca
                    onPrimary: Colors.black, // Cor do texto preto
                    elevation: 0, // Sem sombreamento
                  ),
                  child: Text('T-Shirt'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Ação do botão Segundo Menu Item 2
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // Cor de fundo branca
                    onPrimary: Colors.black, // Cor do texto preto
                    elevation: 0, // Sem sombreamento
                  ),
                  child: Text('Knitwear'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Ação do botão Segundo Menu Item 2
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // Cor de fundo branca
                    onPrimary: Colors.black, // Cor do texto preto
                    elevation: 0, // Sem sombreamento
                  ),
                  child: Text('Skirt'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Ação do botão Segundo Menu Item 2
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // Cor de fundo branca
                    onPrimary: Colors.black, // Cor do texto preto
                    elevation: 0, // Sem sombreamento
                  ),
                  child: Text('Pants'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Ação do botão Segundo Menu Item 2
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // Cor de fundo branca
                    onPrimary: Colors.black, // Cor do texto preto
                    elevation: 0, // Sem sombreamento
                  ),
                  child: Text('Denim'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Ação do botão Segundo Menu Item 2
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // Cor de fundo branca
                    onPrimary: Colors.black, // Cor do texto preto
                    elevation: 0, // Sem sombreamento
                  ),
                  child: Text('Kids'),
                ),  
              ],
            ),
          ),
      ],
    );
  }
}
