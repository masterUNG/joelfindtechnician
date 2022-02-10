// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class AppointmentModel {
  final String approve;
  final String avatarSocial;
  final String customerName;
  final String docIdPostcustomer;
  final String emailAddress;
  final String nameSocial;
  final String phoneNumber;
  final Timestamp timeAppointment;
  final Timestamp timeContact;
  final String tokenSocial;
  final String uidSocial;
  AppointmentModel({
    required this.approve,
    required this.avatarSocial,
    required this.customerName,
    required this.docIdPostcustomer,
    required this.emailAddress,
    required this.nameSocial,
    required this.phoneNumber,
    required this.timeAppointment,
    required this.timeContact,
    required this.tokenSocial,
    required this.uidSocial,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approve': approve,
      'avatarSocial': avatarSocial,
      'customerName': customerName,
      'docIdPostcustomer': docIdPostcustomer,
      'emailAddress': emailAddress,
      'nameSocial': nameSocial,
      'phoneNumber': phoneNumber,
      'timeAppointment': timeAppointment,
      'timeContact': timeContact,
      'tokenSocial': tokenSocial,
      'uidSocial': uidSocial,
    };
  }

  factory AppointmentModel.fromMap(Map<String, dynamic> map) {
    return AppointmentModel(
      approve: (map['approve'] ?? '') as String,
      avatarSocial: (map['avatarSocial'] ?? '') as String,
      customerName: (map['customerName'] ?? '') as String,
      docIdPostcustomer: (map['docIdPostcustomer'] ?? '') as String,
      emailAddress: (map['emailAddress'] ?? '') as String,
      nameSocial: (map['nameSocial'] ?? '') as String,
      phoneNumber: (map['phoneNumber'] ?? '') as String,
      timeAppointment: (map['timeAppointment']),
      timeContact: (map['timeContact']),
      tokenSocial: (map['tokenSocial'] ?? '') as String,
      uidSocial: (map['uidSocial'] ?? '') as String,
    );
  }

  factory AppointmentModel.fromJson(String source) =>
      AppointmentModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
