import 'dart:async';



import 'package:kodikoss/domain/models.dart';



class OnBoardingViewModel  {
  // stream controller
  StreamController _streamController = StreamController<SliderViewObject>();

  late final List<SliderObject> _list;
  int _currentPage = 0;
  @override
  void dispose() {
    _streamController.close();
  }

  @override
  void start() {
    //call api
    //post data
    _list = _getSliderData();
    _postDataToView();
  }

  @override
  int goNext() {
    int nextindex = _currentPage + 1;
    if (nextindex == _list.length - 1) {
      nextindex = 0;
    }
    return nextindex;
  }

  @override
  int goPrevious() {
    int previousindex = _currentPage - 1;
    if (previousindex == -1) {
      previousindex = _list.length - 1;
    }
    return previousindex;
  }

  @override
  void OnPageChanged(int index) {
    _currentPage = index;
    _postDataToView();
  }

  @override
  // TODO: implement inputSliderObject
  Sink get inputSliderObject => _streamController.sink;

  // onboarding function

  void _postDataToView() {
    inputSliderObject
        .add(SliderViewObject(_list[_currentPage], _list.length, _currentPage));
  }

  List<SliderObject> _getSliderData() {
    return [
      SliderObject('''streamline and enhance the
       overall pharmacy experience.
       With a focus on convenience
        and accessibilit''', "assets/images/s1.png"),
      SliderObject('''Find the closest pharmacies and
       access their information at your 
       fingertips ''', "assets/images/s2.png"),
      SliderObject('''Welcome to a new era of 
      pharmacy management. Enjoy 
      the convenience and let CURELINK simplify your 
      healthcare journey!''', "assets/images/s3.png"),
      
    ];
  }

  @override
  // TODO: implement outputSliderObjectView
  Stream<SliderViewObject> get outputSliderObjectView =>
      _streamController.stream.map((sliderViewObject) => sliderViewObject);
}

// order li tji l view model mn view
abstract class onBoardingModelViewInputs {
  //stttream controller  input
  Sink get inputSliderObject;
}

abstract class onBoardingModelViewOutputs {
  Stream<SliderViewObject> get outputSliderObjectView;
}
