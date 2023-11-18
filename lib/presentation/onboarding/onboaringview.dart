import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kodikoss/domain/models.dart';
import 'package:kodikoss/presentation/login/sign_in.dart';

import 'package:kodikoss/presentation/Clients/main_view.dart';
import 'package:kodikoss/presentation/onboarding/onbiardingView_model.dart';
import 'package:kodikoss/presentation/resources/assets_manager.dart';
import 'package:kodikoss/presentation/resources/color_manager.dart';
import 'package:kodikoss/presentation/resources/style_manager.dart';
import 'package:kodikoss/presentation/resources/value_manager.dart';

class onBoardingView extends StatefulWidget {
  const onBoardingView({super.key});

  @override
  State<onBoardingView> createState() => _onBoardingViewState();
}

class _onBoardingViewState extends State<onBoardingView> {
  final PageController _pageController = PageController();
  OnBoardingViewModel _viewModel = OnBoardingViewModel();
  _bind() {
    _viewModel.start();
  }

  @override
  void initState() {
    _bind();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<SliderViewObject>(
        stream: _viewModel.outputSliderObjectView,
        builder: (context, snapshot) {
          return _getContentWidget(snapshot.data);
        });
  }

  Widget _getContentWidget(SliderViewObject? data) {
    if (data == null) {
      return Scaffold(body: Container());
    } else {
      return Scaffold(
        backgroundColor: Color(0xff5FAAB6),
        appBar: AppBar(
            title: Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => signinView()),
                  ),
                  child: Text(
                    "skip",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                )),
            backgroundColor: Color(0xff5FAAB6),
            elevation: 0,
            systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.white,
              statusBarIconBrightness: Brightness.dark,
            )),
        body: PageView.builder(
            controller: _pageController,
            itemCount: data.numberSlides,
            onPageChanged: (index) {
              _viewModel.OnPageChanged(index);
            },
            itemBuilder: (context, index) {
              return onBoardingPage(data.sliderObject);
            }),
        bottomSheet: Container(
          color: Color(0xff5FAAB6),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            _getbotom(data),
          ]),
        ),
      );
    }
  }

  Widget _getbotom(SliderViewObject data) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xff5FAAB6),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          )),
      height: AppSize.s50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.all(AppPading.p14),
            child: GestureDetector(
              child: SizedBox(
                height: AppSize.s20,
                width: AppSize.s20,
                child: Image(image: AssetImage("assets/images/back.png")),
              ),
              onTap: () {
                _pageController.animateToPage(_viewModel.goPrevious(),
                    duration: Duration(milliseconds: 300),
                    curve: Curves.bounceInOut);
              },
            ),
          ),
////////////
          Row(
            children: [
              for (int i = 0; i < data.numberSlides; i++)
                Padding(
                  padding: EdgeInsets.all(AppPading.p8),
                  child: getcircle(i, data.currentIndex),
                )
            ],
          ),

////////
          Padding(
              padding: EdgeInsets.all(AppPading.p14),
              child: GestureDetector(
                child: SizedBox(
                  height: AppSize.s20,
                  width: AppSize.s20,
                  child: Image(
                    image: AssetImage("assets/images/next.png"),
                  ),
                ),
                onTap: () {
                  _pageController.animateToPage(_viewModel.goNext(),
                      duration: Duration(milliseconds: 300),
                      curve: Curves.bounceInOut);
                },
              ))
        ],
      ),
    );
  }

  Widget getcircle(int index, int _currentPage) {
    if (index == _currentPage)
      return Image(image: AssetImage("assets/images/circle2.png"));
    else
      return Image(image: AssetImage("assets/images/circle1.png"));
  }

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }
}

class onBoardingPage extends StatelessWidget {
  late SliderObject _liste;
  onBoardingPage(this._liste, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 115.0, right: 30, left: 30),
          child: Image(image: AssetImage(_liste.image)),
        ),
        Padding(
          padding: const EdgeInsets.all(AppPading.p8),
          child: Text(
            _liste.subTitle,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }
}
