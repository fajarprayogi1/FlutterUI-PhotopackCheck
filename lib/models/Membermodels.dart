class Hotel {
  String imageUrl;
  String deskription;
  String country;
  String city;
  int price;

  Hotel({
    this.imageUrl,
    this.deskription,
    this.country,
    this.city,
    this.price,
  });
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'images/jihyokbs.jpg',
    deskription: 'Jihyo on KBS',
    country: 'Korea',
    city: 'Seoul',
    price: 175,
  ),
  Hotel(
    imageUrl: 'images/momkbs.jpg',
    deskription: 'Momo on KBS',
    country: 'Korea',
    city: 'Seoul',
    price: 300,
  ),
  Hotel(
    imageUrl: 'images/tzuyukbs.jpg',
    deskription: 'Tzuyu on KBS',
    country: 'Korea',
    city: 'Seoul',
    price: 240,
  ),
];
