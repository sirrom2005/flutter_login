import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:login/Models/Account.dart';
import 'package:login/Models/JobItem.dart';

class Services
{
  Future<Account> login(String username, String password) async{
    final response = await http.get('http://104.248.118.6/api/public/login/$username/$password');
  
    if(response.statusCode==200){ 
      if(response.body == "null"){
        return null;
      }else{
        return new Account.fromJson(json.decode(response.body));
      }
    }else{
      throw Exception('Sever error...');
    }
  }

  Future<JobItemList> getJob(int technicianId) async{
    final response = await http.get('http://104.248.118.6/api/public/job/$technicianId');
  
    if(response.statusCode==200){ 
      if(response.body == "null"){
        return null;
      }else{
        return new JobItemList.fromJson(json.decode(response.body));
      }
    }else{
      throw Exception('Sever error...');
    }
  }
}