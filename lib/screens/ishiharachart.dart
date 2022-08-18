import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
class Ishihra extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    List<String> litems = ["assets/plates/IshiharaTestPlates_page-0001.jpg","assets/plates/IshiharaTestPlates_page-0002.jpg",
      "assets/plates/IshiharaTestPlates_page-0003.jpg","assets/plates/IshiharaTestPlates_page-0004.jpg","assets/plates/IshiharaTestPlates_page-0006.jpg",
      "assets/plates/IshiharaTestPlates_page-0005.jpg","assets/plates/IshiharaTestPlates_page-0007.jpg","assets/plates/IshiharaTestPlates_page-0008.jpg",
      "assets/plates/IshiharaTestPlates_page-0009.jpg","assets/plates/IshiharaTestPlates_page-0010.jpg"
    ];
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 150,
          backgroundColor:Color(0xFF317C84) ,
          title:Column(
            children: [
              Text("Ishihara Plates",style: TextStyle(
                  color: Colors.black38,fontWeight: FontWeight.bold,fontSize: 30
              ),),
              Text("Color blindness Test")
            ],
          ),
          centerTitle: true,
          elevation: 10, shadowColor:Color(0xFF317C84) ,
        ),
        backgroundColor: Colors.teal[50],
        body:LayoutBuilder(
          builder: (context,constraints) => Container(
            child: Swiper(
              itemBuilder: (BuildContext context, int index) {
                return Container(decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image:AssetImage(litems[index]),fit: BoxFit.fitWidth
                    )
                ));
              },
              itemCount: 10,
              viewportFraction:0.90,
              scale: 0.8,
              autoplay: true,
              pagination:SwiperPagination(),
            ),
          ),
        ),
      /*SafeArea(
          child:



          *//*SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: size.height*.6,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image:AssetImage("assets/plates/IshiharaTestPlates_page-0001.jpg"),fit: BoxFit.fitWidth,
                              )
                          ),
                        ),
                        Container(
                          height: size.height*.6,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image:AssetImage("assets/plates/IshiharaTestPlates_page-0002.jpg"),fit: BoxFit.fitWidth,
                              )
                          ),
                        ),
                        Container(
                          height: size.height*.6,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image:AssetImage("assets/plates/IshiharaTestPlates_page-0003.jpg"),fit: BoxFit.fitWidth,
                              )
                          ),
                        ),
                        Container(
                          height: size.height*.6,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image:AssetImage("assets/plates/IshiharaTestPlates_page-0004.jpg"),fit: BoxFit.fitWidth,
                              )
                          ),
                        ),
                        Container(
                          height: size.height*.6,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image:AssetImage("assets/plates/IshiharaTestPlates_page-0005.jpg"),fit: BoxFit.fitWidth,
                              )
                          ),
                        ),
                        Container(
                          height: size.height*.6,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image:AssetImage("assets/plates/IshiharaTestPlates_page-0006.jpg"),fit: BoxFit.fitWidth,
                              )
                          ),
                        ),
                        Container(
                          height: size.height*.6,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image:AssetImage("assets/plates/IshiharaTestPlates_page-0007.jpg"),fit: BoxFit.fitWidth,
                              )
                          ),
                        ),
                        Container(
                          height: size.height*.6,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image:AssetImage("assets/plates/IshiharaTestPlates_page-0008.jpg"),fit: BoxFit.fitWidth,
                              )
                          ),
                        ),
                        Container(
                          height: size.height*.6,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image:AssetImage("assets/plates/IshiharaTestPlates_page-0009.jpg"),fit: BoxFit.fitWidth,
                              )
                          ),
                        ),
                        Container(
                          height: size.height*.6,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image:AssetImage("assets/plates/IshiharaTestPlates_page-0010.jpg"),fit: BoxFit.fitWidth,
                              )
                          ),
                        ),
                        Container(
                          height: size.height*.6,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image:AssetImage("assets/plates/IshiharaTestPlates_page-0011.jpg"),fit: BoxFit.fitWidth,
                              )
                          ),
                        ),
                        Container(
                          height: size.height*.6,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image:AssetImage("assets/plates/IshiharaTestPlates_page-0012.jpg"),fit: BoxFit.fitWidth,
                              )
                          ),
                        ),
                        Container(
                          height: size.height*.6,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image:AssetImage("assets/plates/IshiharaTestPlates_page-0013.jpg"),fit: BoxFit.fitWidth,
                              )
                          ),
                        ),
                        Container(
                          height: size.height*.6,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image:AssetImage("assets/plates/IshiharaTestPlates_page-0014.jpg"),fit: BoxFit.fitWidth,
                              )
                          ),
                        ),
                        Container(
                          height: size.height*.6,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image:AssetImage("assets/plates/IshiharaTestPlates_page-0015.jpg"),fit: BoxFit.fitWidth,
                              )
                          ),
                        ),
                        Container(
                          height: size.height*.6,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image:AssetImage("assets/plates/IshiharaTestPlates_page-0016.jpg"),fit: BoxFit.fitWidth,
                              )
                          ),
                        ),
                        Container(
                          height: size.height*.6,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image:AssetImage("assets/plates/IshiharaTestPlates_page-0017.jpg"),fit: BoxFit.fitWidth,
                              )
                          ),
                        ),
                        Container(
                          height: size.height*.6,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image:AssetImage("assets/plates/IshiharaTestPlates_page-0018.jpg"),fit: BoxFit.fitWidth,
                              )
                          ),
                        ),
                        Container(
                          height: size.height*.6,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image:AssetImage("assets/plates/IshiharaTestPlates_page-0019.jpg"),fit: BoxFit.fitWidth,
                              )
                          ),
                        ),
                        Container(
                          height: size.height*.6,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image:AssetImage("assets/plates/IshiharaTestPlates_page-0020.jpg"),fit: BoxFit.fitWidth,
                              )
                          ),
                        ),
                        Container(
                          height: size.height*.6,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image:AssetImage("assets/plates/IshiharaTestPlates_page-0021.jpg"),fit: BoxFit.fitWidth,
                              )
                          ),
                        ),
                        Container(
                          height: size.height*.6,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image:AssetImage("assets/plates/IshiharaTestPlates_page-0022.jpg"),fit: BoxFit.fitWidth,
                              )
                          ),
                        ),
                        Container(
                          height: size.height*.6,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image:AssetImage("assets/plates/IshiharaTestPlates_page-0023.jpg"),fit: BoxFit.fitWidth,
                              )
                          ),
                        ),
                        Container(
                          height: size.height*.6,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image:AssetImage("assets/plates/IshiharaTestPlates_page-0024.jpg"),fit: BoxFit.fitWidth,
                              )
                          ),
                        ),
                        Container(
                          height: size.height*.6,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image:AssetImage("assets/plates/IshiharaTestPlates_page-0001.jpg"),fit: BoxFit.fitWidth,
                              )
                          ),
                        ),
                      ],
                    ),
                  ),
                )

              ],
            ),
          ),*//*
        )*/
    );
  }
}