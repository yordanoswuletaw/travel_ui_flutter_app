class Hotel {
  String imgUrl, name, address;
  int price;
  Hotel({
    required this.imgUrl,
    required this.name,
    required this.address,
    required this.price,
  });
}

List<Hotel> hotels = [
  Hotel(
    imgUrl: 'assets/images/hotel0.jpg',
    name: 'Hotel 0',
    address: '404 Great St',
    price: 175,
  ),
  Hotel(
    imgUrl: 'assets/images/hotel0.jpg',
    name: 'Hotel 1',
    address: '404 Great St',
    price: 300,
  ),
  Hotel(
    imgUrl: 'assets/images/hotel0.jpg',
    name: 'Hotel 2',
    address: '404 Great St',
    price: 240,
  ),
];
