
import 'package:flutter/material.dart';
import 'package:login/Models/JobItem.dart';
import 'package:login/UI/Home/JobList.dart';


class DashBoard extends StatefulWidget {
  static const String id = 'dashborad';

  @override
  _DashBoardState createState() =>_DashBoardState();
}
    
class _DashBoardState extends State<DashBoard> 
{
  @override
  Widget build(BuildContext context) 
  {
    final JobItemList jobObject = ModalRoute.of(context).settings.arguments;
    print(jobObject.jobItem[0].description);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AppBar(
              title: Text('Stinga'),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: jobObject.jobItem.length,
              itemBuilder: (BuildContext context, int idx) {
                return JobListView(jobObject.jobItem[idx]);
              },
              //separatorBuilder: (BuildContext context, int index) => Divider(height:0, thickness: 0,),
            )
          ],
        ),
      )
    );
  }
}
//for(var obj in jobObject) JobListView(obj),
//...jobObject.map((obj) => JobListView(obj)).toList(),