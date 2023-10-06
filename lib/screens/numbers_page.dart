import 'package:flutter/material.dart';
import 'package:number_paginator/number_paginator.dart';
import 'package:open_fashion/screens/menu_screen.dart';
import 'package:open_fashion/widgets/menu_button.dart';
import 'package:open_fashion/widgets/social_icon_button.dart';
import 'package:go_router/go_router.dart';
  
class NumbersPage extends StatefulWidget {
  const NumbersPage({Key? key}) : super(key: key);

  @override
  _NumbersPageState createState() => _NumbersPageState();
}

class _NumbersPageState extends State<NumbersPage> {
  final int _numPages = 5;
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    var pages = List.generate(
      _numPages,
      (index) => TabBarView(
        children: [
              Scaffold(
                    body: Center(
                      child: Container(
                        constraints: const BoxConstraints(maxWidth: 400),
                        child: ListView.builder(
                          itemCount: _images.length,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => SecondPage(heroTag: index)));
                              },
                              child: Row(
                                children: [
                                  Container(
                                    width: 200,
                                    child:
                                      Column(
                                        //crossAxisAlignment: CrossAxisAlignment.start, //adicionado agora, testando
                                        children: [ //adicionado agora
                                          Container(
                                            height: 250,
                                            child:
                                              Row(
                                              children: [
                                                Hero(
                                                  tag: index,
                                                  child: ClipRRect(
                                                    borderRadius: BorderRadius.circular(2),
                                                    child: Image.asset( //.network
                                                      _images[index],
                                                      width: 190,
                                                      fit:BoxFit.fill,//,
                                                      //width: 200,
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(width: 10),
                                              ],
                                              ),
                                          ),
                                          Row(
                                            children: [
                                              Text( 
                                                _nomes[index],
                                                textAlign: TextAlign.left,
                                                style: const TextStyle(
                                                  fontFamily: 'TenorSans',
                                                  color: Color(0xFF000000),
                                                  fontSize: 12
                                                ), 
                                              )
                                            ]
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                _description[index],
                                                textAlign: TextAlign.left,
                                                style: const TextStyle(
                                                  fontFamily: 'TenorSans',
                                                  color: Color(0xFF555555),
                                                  fontSize: 12
                                                ), 
                                              )
                                            ],
                                          ),
                                          Container(
                                            height: 35,
                                            child:
                                              const Row(
                                                children: [
                                                  Text(
                                                    '\$120',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                      fontFamily: 'TenorSans',
                                                      color: Color(0xFFDD8560),
                                                      fontSize: 18
                                                    ),
                                                  ),
                                                ],
                                              ),
                                          ),
                                        ],
                                      ),
                                  ),
                                  Container(
                                    width: 200,
                                    child:
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start, //adicionado agora, testando
                                        children: [ //adicionado agora
                                          Container(
                                            height: 250,
                                            child:
                                              Row(
                                              children: [
                                                Hero(
                                                  tag: index,
                                                  child: ClipRRect(
                                                    borderRadius: BorderRadius.circular(2),
                                                    child: Image.asset( //.network
                                                      _images2[index],
                                                      width:190,
                                                      fit: BoxFit.fill//,
                                                      //width: 200,
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(width: 10),
                                              ],
                                              ),
                                          ),
                                          Row(
                                            children: [
                                              Text( 
                                                _nomes2[index],
                                                textAlign: TextAlign.left,
                                                style: const TextStyle(
                                                  fontFamily: 'TenorSans',
                                                  color: Color(0xFF000000),
                                                  fontSize: 12
                                                ), 
                                              )
                                            ]
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                _description[index],
                                                textAlign: TextAlign.left,
                                                style: const TextStyle(
                                                  fontFamily: 'TenorSans',
                                                  color: Color(0xFF555555),
                                                  fontSize: 12
                                                ), //Theme.of(context).textTheme.headline6,
                                              )
                                            ],
                                          ),
                                          Container(
                                            height: 35,
                                            child:
                                              const Row(
                                                children: [
                                                  Text(
                                                    '\$120',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                      fontFamily: 'TenorSans',
                                                      color: Color(0xFFDD8560),
                                                      fontSize: 18
                                                    ),
                                                  ),
                                                ],
                                              ),
                                          ),
                                        ],
                                      ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  )
        ]
      ),
    );

    return Scaffold(
      body: pages[_currentPage],
      // card for elevation
      bottomNavigationBar: Card(
        margin: EdgeInsets.zero,
        elevation: 3,
        child: NumberPaginator(
          // by default, the paginator shows numbers as center content
          numberPages: _numPages,
          onPageChange: (int index) {
            setState(() {
              _currentPage = index;
            });
          },
          config: NumberPaginatorUIConfig(
            buttonShape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(1),
            ),
            buttonSelectedForegroundColor: Colors.white,
            buttonUnselectedForegroundColor: Color(0xFF555555),
            buttonUnselectedBackgroundColor: Color(0xFFeeeeee),
            buttonSelectedBackgroundColor: Color(0xFF333333),
          ),
          showPrevButton: false,
        ),
      ),
    );
  }
}
final List<String> _images2 = [
  //Image.asset(
  //'assets/pic1.png',
  'assets/pic2.png',
  //'assets/pic3.png',
  'assets/pic4.png',
  //'assets/pic5.png',
  'assets/pic6.png',
  //'assets/pic7.png',
  'assets/pic3.png',

  //'https://images.ctfassets.net/5de70he6op10/4jUSQWAeVqsFzyWxWuvVBc/847a7c253cfe3b5b94400798663e8a5d/527950255-backyardwedding_topper2.jpg',
  //'https://images.ctfassets.net/5de70he6op10/4jUSQWAeVqsFzyWxWuvVBc/847a7c253cfe3b5b94400798663e8a5d/527950255-backyardwedding_topper2.jpg',
  //'https://images.ctfassets.net/5de70he6op10/4jUSQWAeVqsFzyWxWuvVBc/847a7c253cfe3b5b94400798663e8a5d/527950255-backyardwedding_topper2.jpg',
  //'https://images.ctfassets.net/5de70he6op10/4jUSQWAeVqsFzyWxWuvVBc/847a7c253cfe3b5b94400798663e8a5d/527950255-backyardwedding_topper2.jpg',
  //'https://images.pexels.com/photos/462024/pexels-photo-462024.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
  //'https://images.pexels.com/photos/325185/pexels-photo-325185.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'
];
final List<String> _nomes = [
  '21WN',
  '21WN',
  '21WN',
  '21WN',
];
final List<String> _nomes2 = [
  'lamerei',
  'lamerei',
  'lamerei',
  'lamerei'
];
final List<String> _description = [
    //final List<String> _images = [
  


  'reversible angora cardigan',
  'reversible angora cardigan',
  'reversible angora cardigan',
  'reversible angora cardigan',
  'reversible angora cardigan',
  'reversible angora cardigan',
  'reversible angora cardigan',
  'reversible angora cardigan'
];
final List<String> _images = [
  //Image.asset(
  'assets/pic1.png',
  //'assets/pic2.png',
  'assets/pic3.png',
  //'assets/pic4.png',
  'assets/pic5.png',
  //'assets/pic6.png',
  'assets/pic7.png',
  //'assets/pic3.png',

  //'https://images.ctfassets.net/5de70he6op10/4jUSQWAeVqsFzyWxWuvVBc/847a7c253cfe3b5b94400798663e8a5d/527950255-backyardwedding_topper2.jpg',
  //'https://images.ctfassets.net/5de70he6op10/4jUSQWAeVqsFzyWxWuvVBc/847a7c253cfe3b5b94400798663e8a5d/527950255-backyardwedding_topper2.jpg',
  //'https://images.ctfassets.net/5de70he6op10/4jUSQWAeVqsFzyWxWuvVBc/847a7c253cfe3b5b94400798663e8a5d/527950255-backyardwedding_topper2.jpg',
  //'https://images.ctfassets.net/5de70he6op10/4jUSQWAeVqsFzyWxWuvVBc/847a7c253cfe3b5b94400798663e8a5d/527950255-backyardwedding_topper2.jpg',
  //'https://images.pexels.com/photos/462024/pexels-photo-462024.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
  //'https://images.pexels.com/photos/325185/pexels-photo-325185.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'
];
class SecondPage extends StatelessWidget {
  final int heroTag;

  const SecondPage({Key? key, required this.heroTag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hero ListView Page 2")),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Hero(
                tag: heroTag,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(_images[heroTag]),
                  )
                ),
              ),
            ),
          Expanded(
            child: Text(
              "Aqui inseriria descrição do vestido e etc.",
              style: Theme.of(context).textTheme.headline5,
            ),
          )
        ],
      ),
    );
  }
}

