import 'package:flutter/material.dart';
import 'package:onboarding_screens/src/models/onboarding_data.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final data = OnBoardingData.fetchData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Skills'),
        centerTitle: true,
      ),
      body: Container(
          child: ListView.separated(
              itemBuilder: (context, index) {
                OnBoardingData newData = data[index];
                return Card(
                  child: Row(children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: CircleAvatar(
                        child: Image.asset(newData.imagePath),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Row(
                        children: <Widget>[
                          Text(newData.title),
                          Text(newData.description),
                        ],
                      ),
                    ),
                  ]),
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
                  height: 10,
                );
              },
              itemCount: data.length)),
    );
  }
}
