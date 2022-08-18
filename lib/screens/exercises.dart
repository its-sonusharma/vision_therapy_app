import 'package:flutter/material.dart';
import 'package:i_orbit/components/constants.dart';
class Exercise extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 150,
          backgroundColor:Color(0xFF317C84),
          title:Column(
            children: [
              Text("Treatments",style: TextStyle(
                  color: Colors.black38,fontWeight: FontWeight.bold,fontSize: 30
              ),),
              Text("Imp Exercise & yoga")
            ],
          ),
          centerTitle: true,
          elevation: 10, shadowColor:Color(0xFF317C84) ,
        ),
        backgroundColor: Colors.teal[50],
        body:SafeArea(
          child:SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    child: Column(
                      children: [
                        Text("At-home eye exercises may be prescribed as homework by an ophthalmologist, optometrist, or orthoptist as part of a vision therapy treatment plan. Most exercises are beneficial for strabismus, amblyopia, and other eye conditions, such as convergence insufficiency",
                          style: ParaStyle,softWrap: true,textScaleFactor: 1.025,
                        ),
                        SizedBox(height: 15,),
                        Container(
                          height: size.height*.3,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image:AssetImage('assets/pencil.jpg'),fit: BoxFit.cover,
                              )
                          ),
                        ),
                        SizedBox(height: 15,),
                        Text("Pencil pushups treatment",style: TextStyle(
                            color: Color(0xFF317C84),fontWeight: FontWeight.bold,fontSize: 28
                        ),),
                        SizedBox(height: 15,),
                        Text("For this exercise, you can use a pencil or any object that’s pencil shaped. It’s most effective if the pencil or object contains a visual element, such as alphabet letters. If your child doesn’t know their alphabet yet, look for a pencil that has a recognizable shape or symbol on it, such as a cartoon character they like. This may help them stay focused.",
                          style: ParaStyle,softWrap: true,textScaleFactor: 1.025,),
                        SizedBox(height: 15,),

                        Container(
                          height: size.height*.3,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image:AssetImage('assets/coloringbook.jpg'),fit: BoxFit.cover,
                              )
                          ),
                        ),
                        SizedBox(height: 15,),
                        Text("Coloring within the lines",style: TextStyle(
                            color: Color(0xFF317C84),fontWeight: FontWeight.bold,fontSize: 28
                        ),),
                        SizedBox(height: 15,),
                        Text("Many children love to color. Encouraging your child to color in a coloring book is an excellent way to sneak in an eye exercise. The goal here is to have your child color within the lines, not just on the page. Before starting this exercise, make your child has sharpened coloring pencils or crayons without dull points. To do this exercise:",
                          style: ParaStyle,softWrap: true,textScaleFactor: 1.025,),
                        SizedBox(height: 15,),

                        Container(
                          height: size.height*.3,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image:AssetImage('assets/dotcard.png'),fit: BoxFit.cover,
                              )
                          ),
                        ),
                        SizedBox(height: 15,),
                        Text("Dot card",style: TextStyle(
                            color: Color(0xFF317C84),fontWeight: FontWeight.bold,fontSize: 28
                        ),),
                        SizedBox(height: 15,),
                        Text("For this exercise, you’ll work to maintain a single image of a dot on a card with both eyes. To use a dot card:",style: ParaStyle,softWrap: true,textScaleFactor: 1.025,),
                        SizedBox(height: 15,),




                        Text("Regular practice of yoga eye exercises helps to relax eyesight and facilitate normal functioning of our eyes. Before starting these exercises, it is always recommended to splash your eyes with cold water a few times. Remember to keep the head and spine straight throughout the exercises.", style: ParaStyle,softWrap: true,textScaleFactor: 1.025,),
                        Container(
                          height: size.height*.3,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image:AssetImage('assets/ex.jpg'),fit: BoxFit.cover,
                              )
                          ),
                        ),
                        SizedBox(height: 15,),
                        Text("Yoga for Eyes",style: TextStyle(
                            color: Color(0xFF317C84),fontWeight: FontWeight.bold,fontSize: 28
                        ),),
                        SizedBox(height: 15,),


                        Container(
                          height: size.height*.3,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image:AssetImage('assets/yoga1.jpg'),fit: BoxFit.cover,
                              )
                          ),
                        ),
                        SizedBox(height: 15,),
                        Text("Palming ",style: TextStyle(
                            color: Color(0xFF317C84),fontWeight: FontWeight.bold,fontSize: 28
                        ),),
                        SizedBox(height: 15,),
                        Text("•	Rub the palms of your hands vigorously until they become warm and place them gently over your eyelids, Feel the warmth of the palms being transferred onto the eyes and the eye muscles. You will feel instant relaxation, Keeping the eyes closed, lower your hands and feel the dryness fade away gradually.",style: ParaStyle,softWrap: true,textScaleFactor: 1.025,),
                        SizedBox(height: 15,),

                        Container(
                          height: size.height*.3,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image:AssetImage('assets/yoga2.jpg'),fit: BoxFit.cover,
                              )
                          ),
                        ),
                        SizedBox(height: 15,),
                        Text("Blinking",style: TextStyle(
                            color: Color(0xFF317C84),fontWeight: FontWeight.bold,fontSize: 28
                        ),),
                        SizedBox(height: 15,),
                        Text("•	Sit comfortably with your eyes open Blink around 10 times very quickly,Close your eyes and relax for 20 seconds while taking your attention to your breath, Repeat this exercise about five times.",style: ParaStyle,softWrap: true,textScaleFactor: 1.025,),
                        SizedBox(height: 15,),

                        Container(
                          height: size.height*.3,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image:AssetImage('assets/yoga3.jpg'),fit: BoxFit.cover,
                              )
                          ),
                        ),
                        SizedBox(height: 15,),
                        Text("Side-ways viewing",style: TextStyle(
                            color: Color(0xFF317C84),fontWeight: FontWeight.bold,fontSize: 28
                        ),),
                        SizedBox(height: 15,),
                        Text("Sit with legs straight in front of the body, Now lift the arms, with fists closed and your thumbs pointing upward, Look at a point straight in front of you in level with your eyes, Keep the head in this fixed position, focus on the following one after the other, by shifting your vision to the Space between the eyebrows, Left thumb, Space between the eyebrows,Right thumb, Space between the eyebrows Repeat this exercise 10 to 20 times",style: ParaStyle,softWrap: true,textScaleFactor: 1.025,),
                        SizedBox(height: 15,),
                      ],
                    ),
                  ),
                )

              ],
            ),
          ),
        )
    );
  }
}
