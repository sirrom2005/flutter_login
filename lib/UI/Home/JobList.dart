import 'package:flutter/material.dart';

class JobListView extends StatelessWidget {
  final Map<String, Object> jobObject;
  
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
                  color: jobObject['active'] ? Colors.red : Colors.green,
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
                                jobObject['job_id'],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white
                                )
                              ),
                              Spacer(flex: 1),
                              Text(
                                jobObject['date'],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white
                                )
                          ),
                            ],
                          ),
                          Text(
                            jobObject['title'],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white
                            ) 
                          ),
                          Text(
                            jobObject['address'],
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
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white
                  ),
                  child: Text(
                    'HERE..',
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