import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class HomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {

  final pages = [
    home(),
    feed(),
    pesan(),
    notifikasi(),
    saya(),
  ];
  int selectedIndex = 0;

  void ontap(int index){
    setState(() {
      selectedIndex = index;
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.filter_none),
              title: Text('Feed')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline),
              title: Text('Pesan')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              title: Text('Notifikasi')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('saya')
          ),
        ],
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.lightBlueAccent,
        onTap:((int index){
          setState(() {
            selectedIndex = index ;
          });
        }),
      ),
      body: pages.elementAt(selectedIndex),


    );
  }
}
class home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                    height:300,
                    width: double.infinity,
                    color: Colors.deepOrange[200]
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    AppBar(
                      automaticallyImplyLeading: false,
                      elevation: 0,
                      backgroundColor: Colors.transparent,
                      title: Container(

                        child: Card(
                          child: Container(
                            child: TextField(
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                                  hintText: "Search products",
                                  border: InputBorder.none,
                                  suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.search))
                              ),
                            ),
                          ),
                        ),
                      ),
                      actions: <Widget>[
                        Icon(Icons.shopping_cart),
                        Icon(Icons.chat_bubble_outline),
                      ],
                    ),
                    //   SizedBox(height: 20,),



                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(top: 0),
                      child:  CarouselSlider(
                        //  aspectRatio: 16/9,
                        viewportFraction: 0.8,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 2),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        // autoPlayCurve: Curve.fastOutSlowIn,
                        pauseAutoPlayOnTouch: Duration(seconds: 5),
                        enlargeCenterPage: true,
                        //  onPageChanged: callbackFunction,
                        scrollDirection: Axis.horizontal,

                        //  height: 150.0,

                        items: [
                          'assets/images/promo.jpg',
                          'assets/images/toko.png',
                          'assets/images/lazada.jpg'


                        ].map((i) {

                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                //  height: 70,
                                  width: double.infinity,
                                  //width: MediaQuery.of(context).size.width,

                                  margin: EdgeInsets.symmetric(horizontal: 20 ,vertical: 5) ,
                                  // padding: EdgeInsets.only(right: 20,left: 20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),

                                    //  color: Colors.deepOrange,
                                  ),
                                  child: Image.asset((i))


                              );

                            },

                          );
                        }).toList(),

                      ),
                    ),

                    //  SizedBox(height: 20),

                    Container(
                      margin:EdgeInsets.all(10),
                      child: new GridView.count(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        crossAxisCount: 4,

                        children: <Widget>[

                          Card(
                            elevation: 0,
                            color: Colors.transparent,

                            child: Container(
                              // color: Colors.redAccent,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,

                                children: <Widget>[
                                  GestureDetector(
                                      onTap: (){},
                                      child: Image.asset(
                                        'assets/images/mall.png',
                                        height: 40,
                                        width: 55,
                                      )),
                                  SizedBox(height: 10,),
                                  Flexible(
                                      child: Text(
                                        'Mall',
                                        style: TextStyle(
                                          fontSize: 14,
                                          // fontWeight: FontWeight.w700,
                                        ),
                                      ))
                                ],
                              ),
                            ),
                          ),


                          Card(
                            elevation: 0,
                            color: Colors.transparent,
                            child: Container(
                              // color: Colors.amberAccent,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  GestureDetector(
                                      onTap: (){},
                                      child: Image.asset(
                                        'assets/images/game.png',
                                        height: 50,
                                        width: 55,
                                      )),
                                  Flexible(
                                      child: Text(
                                        'Game',
                                        style: TextStyle(
                                          fontSize: 14,
                                          //  fontWeight: FontWeight.w700,
                                        ),
                                      ))
                                ],
                              ),
                            ),
                          ),

                          Card(
                            elevation: 0,
                            color: Colors.transparent,
                            child: Container(

                              //color: Colors.purpleAccent,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    GestureDetector(
                                        onTap: (){},
                                        child: Padding(
                                          padding: const EdgeInsets.only(right: 5),
                                          child: Image.asset(
                                            'assets/images/tagihan.png',
                                            //  height: 50,
                                            height: 50,
                                            width: 55,
                                          ),
                                        )),

                                    Flexible(

                                        child: Text(
                                          'Tagihan',
                                          style: TextStyle(
                                            fontSize: 14,
                                            //  fontWeight: FontWeight.w700,
                                          ),
                                        ))
                                  ],
                                ),
                              ),
                            ),
                          ),

                          Card(
                            elevation: 0,
                            color: Colors.transparent,
                            child: Container(
                              // color: Colors.deepOrange,

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  GestureDetector(
                                      onTap: (){},
                                      child: Padding(
                                        padding: const EdgeInsets.only(),
                                        child: Image.asset(
                                          'assets/images/belanja.jpg',
                                          height: 40,
                                          width: 55,
                                        ),
                                      )),
                                  Flexible(
                                      child: Text(
                                        'Voucher',
                                        style: TextStyle(
                                          fontSize: 14,
                                          // fontWeight: FontWeight.w700,
                                        ),
                                      ))
                                ],
                              ),

                            ),
                          ),

                          Card(
                            elevation: 0,
                            color: Colors.transparent,
                            child: Container(
                              // color: Colors.deepPurple,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    GestureDetector(
                                        onTap: (){},
                                        child: Padding(
                                          padding: const EdgeInsets.only(),
                                          child: Image.asset(
                                            'assets/images/global.png',
                                            height: 40,
                                            width: 55,
                                          ),
                                        )),
                                    Flexible(
                                        child: Text(
                                          'Collection',
                                          style: TextStyle(
                                            fontSize: 14,
                                            // fontWeight: FontWeight.w700,
                                          ),
                                        ))
                                  ],
                                ),
                              ),
                            ),
                          ),

                          Card(
                            elevation: 0,
                            color: Colors.transparent,
                            child: Container(
                              // color: Colors.green,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    GestureDetector(
                                        onTap: (){},
                                        child: Image.asset(
                                          'assets/images/hemat.png',
                                          height: 40,
                                          width: 55,
                                        )),
                                    Flexible(
                                        child: Text(
                                          'P.hemat',
                                          style: TextStyle(
                                            fontSize: 14,
                                            // fontWeight: FontWeight.w700,
                                          ),
                                        ))
                                  ],
                                ),
                              ),
                            ),
                          ),

                          Card(
                            elevation: 0,
                            color: Colors.transparent,
                            child: Container(
                              // color: Colors.pinkAccent,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  GestureDetector(
                                      onTap: (){},
                                      child: Image.asset(
                                        'assets/images/credit.jpg',
                                        height: 40,
                                        width: 55,
                                      )),
                                  Flexible(
                                      child: Text(
                                        'Credit',
                                        style: TextStyle(
                                          fontSize: 14,
                                          // fontWeight: FontWeight.w700,
                                        ),
                                      ))
                                ],
                              ),
                            ),
                          ),

                          Card(
                            elevation: 0,
                            color: Colors.transparent,
                            child: Center(
                              child: Container(
                                // color: Colors.yellow,

                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    GestureDetector(
                                        onTap: (){},
                                        child: Image.asset(
                                          'assets/images/kategori.png',
                                          height: 40,
                                          width: 55,
                                        )),
                                    Flexible(
                                        child: Text(
                                          'Kategori',
                                          style: TextStyle(
                                            fontSize: 14,
                                            //    fontWeight: FontWeight.w700,
                                          ),
                                        ))
                                  ],
                                ),
                              ),
                            ),
                          ),


                        ],
                      ),
                    ),

                    Padding(padding: EdgeInsets.only(top: 5)),
                    new Container(
                      margin: EdgeInsets.only(left: 10,right: 10,),
                      height: 70,
                      width: double.infinity,
                      color: Colors.red,

                      child: GestureDetector(
                        onTap: (){},
                        child: Image.asset('assets/images/diskon.jpg',
                            fit: BoxFit.cover),
                      ),

                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Flash Sale",

                            style: TextStyle(
                                fontSize: 20,
                                //  fontWeight: FontWeight.w,
                                color: Colors.deepOrange
                            ),
                          ),
                          FlatButton(
                            child: Text(
                              "view more",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: new GridView.count(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        crossAxisCount: 3,
                        children: <Widget>[


                          Container(

                            child: Column(
                              children: <Widget>[
                                GestureDetector(
                                    onTap: (){},
                                    child: Image.asset(
                                        'assets/images/laptop.jpg',
                                        height: 100,
                                        width: double.infinity
                                    )),
                                Flexible(
                                    child: Text(
                                      'Rp18.899.000',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.deepOrange
                                      ),
                                    ))
                              ],
                            ),

                          ),

                          Container(
                            height: 200,
                            width: double.infinity,

                            child: Column(
                              children: <Widget>[
                                GestureDetector(
                                    onTap: (){},
                                    child: Image.asset(
                                        'assets/images/tas.jpg',
                                        height: 100,
                                        width: double.infinity
                                    )),
                                Flexible(
                                    child: Text(
                                      'Rp398.000.',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.deepOrange
                                      ),
                                    ))
                              ],
                            ),

                          ),

                          Container(
                            height: 200,
                            width: double.infinity,

                            child: Column(
                              children: <Widget>[
                                GestureDetector(
                                    onTap: (){},
                                    child: Image.asset(
                                        'assets/images/apple.jpg',
                                        height: 100,
                                        width: double.infinity
                                    )),
                                Flexible(
                                    child: Text(
                                      'Rp 24.499.000',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.deepOrange
                                      ),
                                    ))
                              ],
                            ),

                          ),

                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Paling Populer",

                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                            ),
                          ),
                          FlatButton(
                            child: Text(
                              "bulan Oktober",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),


                  ],

                ),
              ],
            ),
            itemCard('FinnNavian', 'assets/images/sepatu.jpg', false),
            itemCard('FinnNavian', 'assets/images/cdi.jpg', true),
            itemCard('FinnNavian', 'assets/images/baju.jpg', true),

            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Koleksi Terbaik",

                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.black
                    ),
                  ),
                  FlatButton(
                    child: Text(
                      "lanjut belanja >",
                      style: TextStyle(
                        color: Colors.deepOrange,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            new Container(
              margin: EdgeInsets.only(left: 10,right: 10,),
              height: 70,
              width: double.infinity,
              color: Colors.red,

              child: GestureDetector(
                onTap: (){},
                child: Image.asset('assets/images/pesta.jpg',
                    fit: BoxFit.cover),
              ),

            ),

            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              height: 200.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Card(
                    child: Container(
                      width: 160.0,
                      // color: Colors.red,
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            GestureDetector(
                                onTap: (){},
                                child: Image.asset(
                                    'assets/images/apple.jpg',
                                    height: 160,
                                    width: double.infinity
                                )),
                            Flexible(
                                child: Text(
                                  'Disc.up to 20%',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.deepOrange
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      width: 160.0,
                      // color: Colors.red,
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            GestureDetector(
                                onTap: (){},
                                child: Image.asset(
                                    'assets/images/case.jpg',
                                    height: 160,
                                    width: double.infinity
                                )),
                            Flexible(
                                child: Text(
                                  'Disc.up to 35%',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.deepOrange
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      width: 160.0,
                      // color: Colors.red,
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            GestureDetector(
                                onTap: (){},
                                child: Image.asset(
                                    'assets/images/silikonhp.jpg',
                                    height: 160,
                                    width: double.infinity
                                )),
                            Flexible(
                                child: Text(
                                  'Disc.up to 50%',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.deepOrange
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      width: 160.0,
                      // color: Colors.red,
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            GestureDetector(
                                onTap: (){},
                                child: Image.asset(
                                    'assets/images/botol.jpg',
                                    height: 160,
                                    width: double.infinity
                                )),
                            Flexible(
                                child: Text(
                                  'Disc.up to 10%',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.deepOrange
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      width: 160.0,
                      // color: Colors.red,
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            GestureDetector(
                                onTap: (){},
                                child: Image.asset(
                                    'assets/images/selepang.jpg',
                                    height: 160,
                                    width: double.infinity
                                )),
                            Flexible(
                                child: Text(
                                  'Disc.up to 50%',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.deepOrange
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}
Widget itemCard(String title, String imgPath, bool isFavorite) {
  return Padding(
    padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
    child: Column(
      children: <Widget>[
        Container(
          height: 150.0,
          width: double.infinity,
          color: Colors.yellow,
          child: Column(
            children: <Widget>[

              Row(
                children: <Widget>[
                  Container(
                    width: 140.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(imgPath), fit: BoxFit.cover)),
                  ),
                  SizedBox(width: 4.0),
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            title,
                            style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 45.0),
                          Material(
                            elevation: isFavorite ? 0.0 : 2.0,
                            borderRadius: BorderRadius.circular(20.0),
                            child: Container(
                              height: 40.0,
                              width: 40.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: isFavorite
                                      ? Colors.grey.withOpacity(0.2)
                                      : Colors.yellow),
                              child: Center(
                                child: isFavorite
                                    ? Icon(Icons.favorite_border)
                                    : Icon(Icons.favorite, color: Colors.red),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 5.0),
                      Container(
                        width: 175.0,
                        child: Text(
                          'buy the items you like.',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              color: Colors.grey,
                              fontSize: 12.0),
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 35.0),
                          Container(
                            height: 40.0,
                            width: 50.0,
                            color: Colors.orangeAccent,
                            child: Center(
                              child: Text(
                                '\$248',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Quicksand',
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                            height: 40.0,
                            width: 100.0,
                            color: Colors.orangeAccent,
                            child: Center(
                              child: Text(
                                'Add to cart',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Quicksand',
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        ],
                      ),

                    ],
                  )
                ],
              ),


            ],
          ),
        ),

      ],
    ),
  );
}

class feed extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('product'),
      ),

    );
  }
}

class pesan extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('contact'),
      ),

    );
  }
}
class notifikasi extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('notifikasi'),
      ),

    );
  }
}

class saya extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('saya'),
      ),

    );
  }
}




