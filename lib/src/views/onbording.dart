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
          itemCount: data.length,
          separatorBuilder: (context, index) {
            return Divider(
              height: 10,
            );
          },
          itemBuilder: (context, index) {
            OnBoardingData newData = data[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/pay.jpeg'),
                ),
                title: Text(newData.title),
                subtitle: Text(newData.description),
              ),
            );
          },
        ),
      ),
    );
  }
}
