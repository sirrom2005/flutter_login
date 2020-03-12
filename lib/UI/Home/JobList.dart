import 'package:flutter/material.dart';
import 'package:login/Models/JobItem.dart';

class JobListView extends StatelessWidget {
  final JobItem jobObject;
  
  JobListView(this.jobObject);

  @override
  Widget build(BuildContext context) 
  {
    double _width = MediaQuery.of(context).size.width;
 
    return Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
            child: Stack(
              children: <Widget>[
                Material(
                  type: MaterialType.card,
                  elevation:8, 
                  color: jobObject.complete == 1 ? Colors.red : Colors.green,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: _width,
                    margin: EdgeInsets.fromLTRB(10, 15, 10, 10),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 1, 
                        color:Colors.white
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                jobObject.jobId,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white
                                )
                              ),
                              Spacer(flex: 1),
                              Text(
                                jobObject.startDate,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white
                                )
                          ),
                            ],
                          ),
                          Text(
                            jobObject.title,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white
                            ) 
                          ),
                          Text(
                            jobObject.customer,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white
                            ),
                          ),
                        ],
                      ),
                    )
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(25, 5, 0, 0),
                  padding: EdgeInsets.fromLTRB(15, 3, 15, 3),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white
                  ),
                  child: Text(
                    jobObject.jobType,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    )
                  ),
                ),            
              ],
            ),
          );

  }
}