import 'package:login/Models/Expenses.dart';

class Account {
  final int technicianId;
  final String fname;
  final String lname;
  final String email;
  final String pass;
  final String mobileNumber;
  final List<Expenses> expenses;
  final Map<String, dynamic> galleryLable;

  Account({this.technicianId, this.fname, this.lname, this.email, this.pass, this.mobileNumber, this.galleryLable, this.expenses});

  factory Account.fromJson(Map<String, dynamic> json) {
    return Account(
      technicianId: int.parse(json['technician_id']),
      fname:        json['fname'],
      lname:        json['lname'],
      email:        json['email'],
      pass:         json['pass'],
      mobileNumber: json['mobile_number'],
      galleryLable: json['gallery_lable'],
      expenses:     json['expenses']
    );
  }

}