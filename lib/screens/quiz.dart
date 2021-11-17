import 'package:first_app/helper/custom_appbar.dart';
import 'package:first_app/model/question_model.dart';
import 'package:first_app/screens/score.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

QuestionModel questionModel1= QuestionModel
  ("What is the Capital of Bangladesh?",
    ["Khulna","Barisal","Chittagonj","Dhaka"],
    [0,0,0,1]);
QuestionModel questionModel2= QuestionModel
  ("What is the National Bird of Bangladesh?",
    ["Pegion","Crow","Magpie","Parrot"],
    [0,0,1,0]);
QuestionModel questionModel3= QuestionModel
  ("What is the National Flower of Bangladesh?",
    ["Water Lily","Rose","Tulip","Cosmos"],
    [1,0,0,0]);
List<QuestionModel> questionList=[
  questionModel1,
  questionModel2,
  questionModel3
];
int questionNbr=0;
bool ansVisibility=false;
int scoreCount=0;
List<Color> optionColor= [
  Color(0xff0e1215),
  Color(0xff0e1215),
  Color(0xff0e1215),
  Color(0xff0e1215)
];
class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  void initState() {
    optionColor= [
      Color(0xff0e1215),
      Color(0xff0e1215),
      Color(0xff0e1215),
      Color(0xff0e1215)
    ];
    ansVisibility=false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: CustomAppBar(
              title: "Quiz")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              Row(
                children: [
                  Text("Question ${questionNbr+1} out of "
                      "${questionList.length}"),
                  Spacer(),
                  Text("Score: ${scoreCount}"),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Text(questionList[questionNbr].question,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24),),
              SizedBox(
                height: 50,
              ),
              Expanded(
                flex: 3,
                child: ListView.builder(
                  itemCount: questionList[questionNbr].optionsList.length,
                    itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: (){
                            setState(() {
                              ansVisibility=true;
                              if(questionList[questionNbr].
                              optionValueList[index]==1)
                                {
                                  scoreCount=scoreCount+5;
                                  optionColor[index]=Color(0xff56d528);
                                }
                              else{
                                optionColor[index]=Color(0xffea0619);
                              }
                            });
                          },
                          child: Container(
                            color: optionColor[index],
                            height: 50,
                            width: 150,
                            child: Center(
                              child: Text(questionList[questionNbr]
                                  .optionsList[index],
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 20,
                                color:Colors.white,
                              fontWeight: FontWeight.bold),),
                            ),
                          ),
                        ),
                      );
                    }
                ),
              ),
              for(int i=0;i<4;i++)
                if(questionList[questionNbr].optionValueList[i]==1)
              Visibility(
                visible: ansVisibility,
                child: Text("Correct Answer:    "
                    " ${questionList[questionNbr].optionsList[i]}",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 98.0,right: 98),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.teal
                  ),
                    onPressed: (){
                      setState(() {
                        if(questionNbr<2)
                          questionNbr++;
                        else
                          {
                            questionNbr=0;
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context)=>
                                        Score(scoreValue: scoreCount,)));

                          }
                          });
                      initState();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Next",style: TextStyle(
                          fontSize: 18,fontWeight: FontWeight.bold
                        ),),
                        Icon(Icons.arrow_forward),
                      ],
                    )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
