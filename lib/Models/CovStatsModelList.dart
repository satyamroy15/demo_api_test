// class CovStatsModelList {
//   String? country;
//   String? code;
//   double? latitude;
//   double? longitude;
//   String? lastChange;
//   String? lastUpdate;
//   int? confirmed;
//   int? recovered;
//   int? critical;
//   int? deaths;
//
//   CovStatsModelList(
//       {required this.country,
//       required this.code,
//       required this.confirmed,
//       required this.recovered,
//       required this.critical,
//       required this.deaths,
//       required this.latitude,
//       required this.longitude,
//       required this.lastChange,
//       required this.lastUpdate});
//
//   CovStatsModelList.fromJson(Map<String, dynamic> json) {
//     country = json['country'];
//     code = json['code'];
//     confirmed = json['confirmed'];
//     recovered = json['recovered'];
//     critical = json['critical'];
//     deaths = json['deaths'];
//     latitude = json['latitude'];
//     longitude = json['longitude'];
//     lastChange = json['lastChange'];
//     lastUpdate = json['lastUpdate'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['country'] = this.country;
//     data['code'] = this.code;
//     data['confirmed'] = this.confirmed;
//     data['recovered'] = this.recovered;
//     data['critical'] = this.critical;
//     data['deaths'] = this.deaths;
//     data['latitude'] = this.latitude;
//     data['longitude'] = this.longitude;
//     data['lastChange'] = this.lastChange;
//     data['lastUpdate'] = this.lastUpdate;
//     return data;
//   }
// }
