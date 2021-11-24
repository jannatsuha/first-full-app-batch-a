import 'package:first_app/helper/custom_appbar.dart';
import 'package:first_app/model/employee_model.dart';
import 'package:flutter/material.dart';
class Employees extends StatefulWidget {
  const Employees({Key? key}) : super(key: key);

  @override
  _EmployeesState createState() => _EmployeesState();
}
EmployeeModel employeeModel1= EmployeeModel
  ("জনাব জুনাইদ আহ্‌মেদ পলক",
    "মাননীয় প্রতিমন্ত্রী ",
    "assets/image/p2.jpg",
    "+৮৮-০২-৪১০২৪০৩৮",
    "palak@ictd.gov.bd",
    "তথ্য ও যোগাযোগ প্রযুক্তি বিভাগ ");
EmployeeModel employeeModel2= EmployeeModel
  ("মোঃ সাইফুল ইসলাম",
    "মাননীয় প্রতিমন্ত্রীর একান্ত সচিব ",
    "assets/image/p2.jpg",
    "+৮৮-০২-৪১০২৪০৩৯",
    "saifkhokon@ictd.gov.bd",
    "তথ্য ও যোগাযোগ প্রযুক্তি বিভাগ ");
EmployeeModel employeeModel3= EmployeeModel
  ("শহিদুল আলম মজুমদার",
    "তথ্য ও জনসংযোগ কর্মকর্তা",
    "assets/image/p2.jpg",
    "+৮৮-০২-৫৫০০৬৯০৪",
    "sa.majumder65@gmail.com",
    "তথ্য ও যোগাযোগ প্রযুক্তি বিভাগ ");
EmployeeModel employeeModel4= EmployeeModel
  ("রনজিত কুমার",
    "মাননীয় প্রতিমন্ত্রীর সহকারী একান্ত সচিব",
    "assets/image/p2.jpg",
    "+৮৮-০১৭৩৭-২৪১১৪১",
    "ronjitaps.ictm@gmail.com",
    "তথ্য ও যোগাযোগ প্রযুক্তি বিভাগ ");
EmployeeModel employeeModel5= EmployeeModel
  ("একরামুল হক",
    "মাননীয় প্রতিমন্ত্রীর ব্যক্তিগত কর্মকর্তা",
    "assets/image/p5.jpg",
    "+৮৮-০১৯১৫৬৬০৩০৬",
    "ekramul.haque@ictd.gov.bd",
    "তথ্য ও যোগাযোগ প্রযুক্তি বিভাগ ");
EmployeeModel employeeModel6= EmployeeModel
  ("মোঃ রাকিবুল ইসলাম",
    "মাননীয় প্রতিমন্ত্রীর ব্যক্তিগত কর্মকর্তা",
    "assets/image/p6.jpg",
    "+৮৮-০১৭৫১১৫৫৬৭৮",
    "rakib.vision2021@gmail.com",
    "তথ্য ও যোগাযোগ প্রযুক্তি বিভাগ ");
EmployeeModel employeeModel7= EmployeeModel
  ("ছানোয়ার হোসেন",
    "মাননীয় প্রতিমন্ত্রীর ব্যক্তিগত কর্মকর্তা",
    "assets/image/p7.jpg",
    "+৮৮-০১৭১৯৭৮৭৩৬৬",
    "sanowar.hossen@ictd.gov.bd",
    "তথ্য ও যোগাযোগ প্রযুক্তি বিভাগ ");
EmployeeModel employeeModel8= EmployeeModel
  ("আনোয়ার হোসেন",
    "মাননীয় প্রতিমন্ত্রীর ব্যক্তিগত সহকারী",
    "assets/image/p8.jpg",
    "+৮৮-০১৭১৯৯৬০৩৪৪",
    "anwar.hossain@ictd.gov.bd",
    "তথ্য ও যোগাযোগ প্রযুক্তি বিভাগ ");
EmployeeModel employeeModel9= EmployeeModel
  ("মোঃ চাঁন মিয়া",
    "ডাটা এন্ট্রি/কন্ট্রোল অপারেটর",
    "assets/image/p9.jpg",
    "+৮৮-০১৭৪০০৪৪৮১১",
    "mdchanmia019@gmail.com",
    "তথ্য ও যোগাযোগ প্রযুক্তি বিভাগ ");
EmployeeModel employeeModel10= EmployeeModel
  ("এন এম জিয়াউল আলম পিএএ",
    "সিনিয়র সচিব",
    "assets/image/p10.jpg",
    "+৮৮-০২-৪১০২৪০৩১",
    "secretary@ictd.gov.bd",
    "তথ্য ও যোগাযোগ প্রযুক্তি বিভাগ ");
EmployeeModel employeeModel11= EmployeeModel
  ("মো: জিল্লুর রহমান",
    "সিনিয়র সচিবের একান্ত সচিব (উপসচিব)",
    "assets/image/p11.jpg",
    "+৮৮-০২-৪১০২৪০১৩",
    "ptosecretary@ictd.gov.bd",
    "তথ্য ও যোগাযোগ প্রযুক্তি বিভাগ ");
EmployeeModel employeeModel12= EmployeeModel
  ("মোঃ খায়রুল আমীন",
    "অতিরিক্ত সচিব (আইন ও পলিসি অনুবিভাগ এবং মহাপরিচালক, ডিজিটাল নিরাপত্তা এজেন্সি)",
    "assets/image/p12.jpg",
    "+৮৮-০২-৪১০২৪০৬০",
    "khairul.amin@ictd.gov.bd",
    "তথ্য ও যোগাযোগ প্রযুক্তি বিভাগ ");
EmployeeModel employeeModel13= EmployeeModel
  ("ড. খন্দকার আজিজুল ইসলাম",
    "অতিরিক্ত সচিব (অর্গানাইজেশনাল সাপোর্ট অনুবিভাগ)",
    "assets/image/p13.jpg",
    "+৮৮-০২-৪১০২৪০৪১",
    "khandokerazizul@ictd.gov.bd",
    "তথ্য ও যোগাযোগ প্রযুক্তি বিভাগ ");
EmployeeModel employeeModel14= EmployeeModel
  ("সানজিদা সোবহান, এনডিসি",
    "অতিরিক্ত সচিব (পরিকল্পনা ও উন্নয়ন অনুবিভাগ)",
    "assets/image/p14.jpg",
    "+৮৮-০২-৪১০২৪০২৩",
    "sanjida.sobhan@ictd.gov.bd",
    "তথ্য ও যোগাযোগ প্রযুক্তি বিভাগ ");
EmployeeModel employeeModel15= EmployeeModel
  ("মোঃ আবদুস সাত্তার সরকার",
    "যুগ্মসচিব (ডিজিটাল গভর্নেন্স ও সিকিউরিটি অনুবিভাগ)",
    "assets/image/p15.jpg",
    "+৮৮-০২-৪১০২৪০৪২",
    "ssarker@ictd.gov.bd",
    "তথ্য ও যোগাযোগ প্রযুক্তি বিভাগ ");
EmployeeModel employeeModel16= EmployeeModel
  ("মোঃ আখতারুজ্জামান",
    "যুগ্মসচিব (প্রশাসন অনুবিভাগ)",
    "assets/image/p16.jpg",
    "+৮৮-০২-৪১০২৪০২২",
    "akhtaruzzaman@ictd.gov.bd",
    "তথ্য ও যোগাযোগ প্রযুক্তি বিভাগ ");
EmployeeModel employeeModel17= EmployeeModel
  ("ড. মুহম্মদ মেহেদী হাসান ",
    "যুগ্মসচিব (বাজেট ও নিরীক্ষা অনুবিভাগ)",
    "assets/image/p17.jpg",
    "+৮৮-০২-৫৫০০৬৮৭৩",
    "mehedi@ictd.gov.bd",
    "তথ্য ও যোগাযোগ প্রযুক্তি বিভাগ ");
EmployeeModel employeeModel18= EmployeeModel
  ("নাহিদ সুলতানা মল্লিক",
    "যুগ্মসচিব (হিউম্যান রিসোর্স ডেভেলপমেন্ট অধিশাখা)",
    "assets/image/p18.jpg",
    "+৮৮-০২-৪১০২৪০৫১",
    "nahidshami@ictd.gov.bd",
    "তথ্য ও যোগাযোগ প্রযুক্তি বিভাগ ");
EmployeeModel employeeModel19= EmployeeModel
  ("সালমা সিদ্দিকা মাহতাব",
    "যুগ্মসচিব (লজিস্টিক সেবা অধিশাখা)",
    "assets/image/p19.jpg",
    "+৮৮-০১৭১৪৪৪৮৩৬৯",
    "salma.siddiqa@ictd.gov.bd",
    "তথ্য ও যোগাযোগ প্রযুক্তি বিভাগ ");
EmployeeModel employeeModel20= EmployeeModel
  ("মোঃ আমিনুল হক",
    "উপসচিব (আইন অধিশাখা)",
    "assets/image/p20.jpg",
    "০২-৪১০২৪০৫২",
    "aminul.hoque@ictd.gov.bd",
    "তথ্য ও যোগাযোগ প্রযুক্তি বিভাগ ");
EmployeeModel employeeModel21= EmployeeModel
  ("মোঃ মাইনুল হক ভূঁইয়া",
    "উপসচিব (অর্গানাইজেশনাল সাপোর্ট অধিশাখা)",
    "assets/image/p21.jpg",
    "+৮৮-০২-৪১০২৪০৪৯",
    "moynul@ictd.gov.bd",
    "তথ্য ও যোগাযোগ প্রযুক্তি বিভাগ ");
List<EmployeeModel> employeeModelList=[
  employeeModel1,
  employeeModel2,
  employeeModel3,
  employeeModel4,
  employeeModel5,
  employeeModel6,
  employeeModel7,
  employeeModel8,
  employeeModel9,
];
class _EmployeesState extends State<Employees> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: CustomAppBar(
              title: "Employees")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: employeeModelList.length,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Container(
                          height:120,
                          width: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(

                                image: AssetImage(employeeModelList[index]
                                .image),
                              fit: BoxFit.cover
                            ),
                            borderRadius: BorderRadius.circular(180)
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("নাম: ",style:
                              TextStyle(
                                fontSize: 20,fontWeight: FontWeight.bold
                              ),),
                            Text(employeeModelList[index].name,
                              style:
                              TextStyle(
                                  fontSize: 20,fontWeight: FontWeight.bold
                              ),),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Degi: ",style:
                            TextStyle(
                                fontSize: 17,fontWeight: FontWeight.bold
                            ),),
                            Text(employeeModelList[index].designation,
                              style:
                              TextStyle(
                                  fontSize: 17,fontWeight: FontWeight.bold
                              ),),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Phone: ",style:
                            TextStyle(
                                fontSize: 17,fontWeight: FontWeight.bold
                            ),),
                            Text(employeeModelList[index].phone,
                              style:
                              TextStyle(
                                  fontSize: 17,fontWeight: FontWeight.bold
                              ),),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Email: ",style:
                            TextStyle(
                                fontSize: 17,fontWeight: FontWeight.bold
                            ),),
                            Text(employeeModelList[index].email,
                              style:
                              TextStyle(
                                  fontSize: 17,fontWeight: FontWeight.bold
                              ),),
                          ],
                        ),
                      ],
                    ),
                  );
                }
            ),
          )
        ],
      ),
    );
  }
}
