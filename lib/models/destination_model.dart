import 'package:travel_ui/models/models.dart';

class Destination {
  String imgUrl, city, country, description;
  List<Activity> activities;

  Destination({
    required this.imgUrl,
    required this.city,
    required this.country,
    required this.description,
    required this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imgUrl: './assets/images/stmarksbasilica.jpg',
    name: 'St. Mark\'s Basilica',
    type: 'Sightseeing Tour',
    rating: 5,
    price: 30,
    startTimes: ['7:00 am', '11:00 am'],
  ),
  Activity(
    imgUrl: './assets/images/santorini.jpg',
    name: 'The Santorini Wonder Place Tour',
    type: 'Sightseeing Tour',
    rating: 4,
    price: 130,
    startTimes: ['4:00 pm', '9:00 am'],
  ),
  Activity(
    imgUrl: './assets/images/gondola.jpg',
    name: 'Walking Tour and Gonadola Ride',
    type: 'Sightseeing Tour',
    rating: 4,
    price: 210,
    startTimes: ['4:00 pm', '9:00 am'],
  ),
  Activity(
    imgUrl: './assets/images/murano.jpg',
    name: 'Murano and Burano Tour',
    type: 'Sightseeing Tour',
    rating: 3,
    price: 125,
    startTimes: ['12:30 pm', '2:00 pm'],
  ),
];

List<Destination> destinations = [
  Destination(
    imgUrl: 'assets/images/santorini.jpg',
    city: 'Santorini',
    country: 'Greece',
    description: 'Visit Santorini for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imgUrl: 'assets/images/paris.jpg',
    city: 'Paris',
    country: 'France',
    description: 'Visit Paris for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imgUrl: 'assets/images/saopaulo.jpg',
    city: 'Sao Paulo',
    country: 'Brazil',
    description: 'Visit Sao Paulo for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imgUrl: 'assets/images/venice.jpg',
    city: 'Venice',
    country: 'Italy',
    description: 'Visit Venice for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imgUrl: 'assets/images/newdelhi.jpg',
    city: 'New Delhi',
    country: 'India',
    description: 'Visit Venice for an amazing and unforgettable adventure.',
    activities: activities,
  ),
];
