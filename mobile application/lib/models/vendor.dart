class Vendor {
  int? id;
  final String imgUrl;
  String? country;
  String? city;
  String? name;
  String? lAT;
  String? lONG;
  String? address;
  String? openTime;
  String? closeTime;
  int? user;

  Vendor({
    this.id,
    this.country,
    this.city,
    this.name,
    this.lAT,
    this.lONG,
    this.address,
    this.openTime,
    this.closeTime,
    this.user,
    required this.imgUrl,
  });

  factory Vendor.fromJson(Map<String, dynamic> json) {
    return Vendor(
      id: json['id'],
      country: json['country'],
      city: json['city'],
      name: json['name'],
      lAT: json['LAT'],
      lONG: json['LONG'],
      address: json['address'],
      openTime: json['open_time'],
      closeTime: json['close_time'],
      user: json['user'],
      imgUrl: 'http://3.72.118.166${json['image']}',
    );
  }
}
