class Venues {
  late String country;
  late String city;
  late String stadium;
  late String image;

  Venues(
      {required this.country,
      required this.city,
      required this.image,
      required this.stadium});

  factory Venues.fromJSON(Map<String, dynamic> map) {
    return Venues(
      country: map['country'],
      city: map['city'],
      image: map['image'],
      stadium: map['stadium'],
    );
  }
}
