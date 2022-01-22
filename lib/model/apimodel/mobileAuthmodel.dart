 // To parse this JSON data, do
// //
// //     final welcome = welcomeFromJson(jsonString);

// import 'dart:convert';

// // Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

// // String welcomeToJson(Welcome data) => json.encode(data.toJson());

// class Welcome {
//     Welcome({
//         this.otpSend,
//         this.phoneNumber,
//         this.updatedAt,
//         this.message,
//     });

//     bool? otpSend;
//     String? phoneNumber;
//     DateTime? updatedAt;
//     String? message;

//     factory Welcome.fromJson(Map<String,dynamic> json) => Welcome(
//         otpSend: json["otpSend"]as bool,
//         phoneNumber: json["phoneNumber"].toString(),
//         updatedAt: DateTime.parse(json["updatedAt"].toString()),
//         message: json["message"].toString(),
//     );

//     Map<String, dynamic> toJson() => {
//         "otpSend": otpSend,
//         "phoneNumber": phoneNumber,
//         "updatedAt": updatedAt!.toIso8601String(),
//         "message": message,
//     };

// }












