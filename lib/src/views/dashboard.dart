import 'package:flutter/material.dart';
import 'package:onboarding_screens/src/models/dashboard.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final data = DashboardData.fetchData();

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
            DashboardData newData = data[index];
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
