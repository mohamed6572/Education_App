import 'package:education_app/Ui/For_All/For_All.dart';
import 'package:education_app/Ui/Home/StartScrean.dart';
import 'package:education_app/shared/components/components.dart';
import 'package:education_app/shared/components/constens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BoardingModel {
  final String image;
  final String body;
  final String title;

  BoardingModel({
    required this.title,
    required this.body,
    required this.image,
  });
}

class onBoarding extends StatefulWidget {
  @override
  State<onBoarding> createState() => _onBoardingState();
}

class _onBoardingState extends State<onBoarding> {
  List<BoardingModel> boarding = [
    BoardingModel(
        title: 'نخلق فكراً مختلفاً للتعليم',
        body: '',
        image: 'assets/app_logo.jpeg'),
    BoardingModel(
        title: 'ولي الامر',
        body:
            ' تمكنك المنصه من الاطلاع المباشر والدائم علي مستوي ابنائك حيث يمكنك مشاهدة الواجبات والامتحانات والمراجعات الخاصه بابنك دون الحاجه الي سؤال من المعلم او الطالب',
        image: 'assets/onboarding/o2.png'),

    BoardingModel(
        title: 'المدرس',
        body:
            ' تمكنك المنصه من ادارة جميع الانشطة والتفاعل بشكل اليكتروني سريع بينك وبين الطلاب مثل الحجز الاليكتروني للمادة وادارة المجموعات والواجبات واضافه الامتحانات وادارة انشطة تفاعلية اخري مع الطلبه',
        image: 'assets/onboarding/o3.png'),
    BoardingModel(
        title: 'الطالب',
        body:
            ' تمكنك المنصه من التفاعل مباشرة مع المعلم وحل الواجبات ومشاهدة المراجعات وكذلك الحصول علي المحتوي العلمي الذي ينشرة المعلم للطلاب',
        image: 'assets/onboarding/o2.png'),
  ];

  bool isLast = false;

  void Submit() {
    navigateTo(context, For_All());
  }

  var pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          defultTextButton(text: 'skip', function: Submit),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: pageController,
                onPageChanged: (index) {
                  if (index == boarding.length - 1) {
                    print('last');
                    isLast = true;
                  } else {
                    print('not last');
                    isLast = false;
                  }
                },
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) =>
                    defultScreanBoard(boarding[index]),
                itemCount: boarding.length,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SmoothPageIndicator(
                  controller: pageController,
                  count: boarding.length,
                  effect: ExpandingDotsEffect(
                      dotColor: Colors.grey,
                      activeDotColor: defultColor,
                      expansionFactor: 4,
                      spacing: 5,
                      dotHeight: 10,
                      dotWidth: 10),
                ),
                Spacer(),
                FloatingActionButton(
                  onPressed: () {
                    if (isLast) {
                      Submit();
                    } else {
                      pageController.nextPage(
                          duration: Duration(milliseconds: 750),
                          curve: Curves.fastLinearToSlowEaseIn);
                    }
                  },
                  child: Icon(Icons.arrow_forward_ios),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }

  Widget defultScreanBoard(BoardingModel model) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Image(
                image: AssetImage(model.image),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              model.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 9),
              child: Text(
                model.body,
                maxLines: 6,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      );
}
