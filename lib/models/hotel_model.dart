class Hotel {

  String imageUrl;
  String name;
  String address;
  int price;

  Hotel({
    this.imageUrl,
    this.name,
    this.address,
    this.price,
  });

}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/images/hsp.jpg',
    name: 'H. Sarovar Portico',
    address: 'Badrinath - Mana Highway',
    price: 500,
  ),
  Hotel(
    imageUrl: 'assets/images/hmo.jpg',
    name: 'H. Royal Orchid',
    address: 'Mussoorie, Balowganj',
    price: 300,
  ),
  Hotel(
    imageUrl: 'assets/images/hbp.jpg',
    name: 'H. Bala Paradise',
    address: 'Munsiyari',
    price: 275,
  ),
];