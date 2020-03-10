
import 'package:flutter/material.dart';
import 'package:login/UI/Home/JobList.dart';

class DashBoard extends StatefulWidget {
  static const String id = 'dashborad';
  final String obj;

  DashBoard({this.obj});

  @override
  _DashBoardState createState() =>_DashBoardState(obj);
}
    
class _DashBoardState extends State<DashBoard> 
{
  final String obj;

  _DashBoardState(this.obj);

  List<Map<String, Object>> jobObject = 
                            [
                              {
                                'job_id'  : 'WORK ITEM #:GFG6262',
                                'date'    : 'Jan 12, 2020',
                                'title'   : 'Fix power line',
                                'address' : '100 Park Lane\nKingston 10\nJamaica',
                                'active'  : true
                              },
                              {
                                'job_id'  : 'WORK ITEM #:AMM18822',
                                'date'    : 'Jan 12, 2020',
                                'title'   : 'Fix power line',
                                'address' : '12 Park Lane\nKingston 10\nJamaica',
                                'active'  : false
                              },
                              {
                                'job_id'  : 'WORK ITEM #:GH89900',
                                'date'    : 'Jan 12, 2020',
                                'title'   : 'Fix power line',
                                'address' : '200 Park Lane\nKingston 10\nJamaica',
                                'active'  : true
                              },
                              {
                                'job_id'  : 'WORK ITEM #:GFG6262',
                                'date'    : 'Jan 12, 2020',
                                'title'   : 'Fix power line',
                                'address' : '100 Park Lane\nKingston 10\nJamaica',
                                'active'  : false
                              }
                            ];

  @override
  Widget build(BuildContext context) 
  {
    print(">>>");
    print(obj);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AppBar(
              title: Text('Stinga'),
            ),
            ListView.separated(
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (BuildContext context, int idx) {
                return JobListView(jobObject[idx%4]);
              },
              separatorBuilder: (BuildContext context, int index) => Divider(height:0, thickness: 0,),
            )
          ],
        ),
      )
    );
  }
}
//for(var obj in jobObject) JobListView(obj),
//...jobObject.map((obj) => JobListView(obj)).toList(),
