import 'package:first_app/drawer/menu_widget.dart';
import 'package:first_app/screens/about_us.dart';
import 'package:first_app/screens/employees.dart';
import 'package:first_app/screens/home_page/image_details.dart';
import 'package:first_app/screens/photo_gallery.dart';
import 'package:first_app/screens/quiz.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';

final List<String> imgList = [
  "assets/image/ict1.jpg",
  "assets/image/ict2.jpg",
  "assets/image/ict3.jpg",
  "assets/image/ict4.jpg",
  "assets/image/ict5.jpg",
  "assets/image/ict6.jpg",
  "assets/image/ict7.jpg",
  "assets/image/ict8.jpg"
  ];
final List<String> imageDetailList=[
  "২০০২ সালে বিজ্ঞান ও প্রযুক্তি মন্ত্রণালয়ের নাম ",
      "পরিবর্তন করে বিজ্ঞান এবং তথ্য ও যোগাযোগ প্রযুক্তি",
      " মন্ত্রণালয় নাম ধারণ করে। তথ্য প্রযুক্তি উন্নয়নের গতি",
      " আরও বেগবান ও সমন্বিত করার লক্ষ্যে সরকার ",
      "১০ ফেব্রুয়ারি ২০১৪ খ্রি. তারিখে তথ্য ও যোগাযোগ ",
      "প্রযুক্তি মন্ত্রণালয় এবং ডাক ও টেলিযোগাযোগ মন্ত্রণালয়কে",
      " একীভূত করে ডাক, টেলিযোগাযোগ ও তথ্যপ্রযুক্তি ",
      "মন্ত্রণালয় সৃষ্টি করা হয়"
];
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
GlobalKey<SliderMenuContainerState> _key =
new GlobalKey<SliderMenuContainerState>();
String title= "Home";

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double height= MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;

    return Scaffold(
      body:
      SliderMenuContainer(
          appBarColor: Colors.teal,
          key: _key,
          sliderMenuCloseSize: 0,
          title: Text("HOME",style: TextStyle(color: Colors.white,
              fontSize: width*0.055,fontWeight: FontWeight.w800),),
          shadowColor: Colors.transparent,
          drawerIconColor: Colors.white,
          drawerIconSize: width*0.08,
          //slideDirection: Slider.RIGHT_TO_LEFT,
          //appBarPadding: const EdgeInsets.only(top: 10),
          sliderMenuOpenSize: 300,
          appBarHeight: 100,
          appBarPadding: EdgeInsets.fromLTRB(0, 40, 0, 0),
          sliderMenu:
          MenuWidget(
            //  onProfilePictureClick: () {},
            onItemClick: (title) {
              _key.currentState!.closeDrawer();
              setState(() {
                title = title;
                if(title=="HOME")
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder:
                        (context) => MyHomePage()),
                  );
                }
                else if(title=="PHOTO GALLERY")
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder:
                        (context) => PhotoGallery()),
                  );
                }
                else if(title=="EMPLOYEES")

                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder:
                        (context) => Employees()),
                  );
                }
                else if(title=="QUIZ")
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder:
                        (context) => Quiz()),
                  );
                }
                else if(title=="ABOUT US")
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder:
                        (context) => AboutUs()),
                  );
                }
              });
            },
          ),
          sliderMain:
          Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                ),
                items: imgList
                    .map((item) => Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: InkWell(
                    onTap: (){
                      for(int i=0;i<imgList.length;i++){
                        if(item==imgList[i]){
                          Navigator.push(context,
                              MaterialPageRoute(builder:
                                  (context)=>ImageDetails
                                (detailText:
                                  imageDetailList[i])));
                        }
                      }

                    },
                    child: Container(
                      height: height/4.5,
                      width: width/1.2,
                      child: Image.asset(item,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ))
                    .toList(),
              )
            ],
          )
      ),
      // Column(
      //   children: [
      //     CarouselSlider(
      //       options: CarouselOptions(
      //         autoPlay: true,
      //       ),
      //       items: imgList
      //           .map((item) => Container(
      //         child: Center(
      //             child:
      //             Image.network(item, fit: BoxFit.cover, width: 1000)),
      //       ))
      //           .toList(),
      //     )
      //   ],
      // ),
    );
  }
}
