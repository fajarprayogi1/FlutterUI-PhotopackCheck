import 'package:test_world/models/activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination({
    this.imageUrl,
    this.city,
    this.country,
    this.description,
    this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'images/minatwicelight.jpg',
    name: 'St. Mark\'s Basilica',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl: 'images/minatwicelight.jpg',
    name: 'Walking Tour and Gonadola Ride',
    type: 'Sightseeing Tour',
    startTimes: ['11:00 pm', '1:00 pm'],
    rating: 4,
    price: 210,
  ),
  Activity(
    imageUrl: 'images/minatwicelight.jpg',
    name: 'Murano and Burano Tour',
    type: 'Sightseeing Tour',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 3,
    price: 125,
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl: 'images/minakbs.jpg',
    city: 'Seoul',
    country: 'Korea',
    description: 'Photopack twice in KBS',
    activities: activities,
  ),
  Destination(
    imageUrl: 'images/mina.jpg',
    city: 'Seoul',
    country: 'Korea',
    description: 'Photopack twice in lotte family',
    activities: activities,
  ),
  Destination(
    imageUrl: 'images/minamusiccore.jpg',
    city: 'Seoul',
    country: 'Korea',
    description: 'Photopack twice in Music Core',
    activities: activities,
  ),
  Destination(
    imageUrl: 'images/minasbs.jpg',
    city: 'Seoul',
    country: 'Korea',
    description: 'Photopack twice in SBS',
    activities: activities,
  ),
  Destination(
    imageUrl: 'images/minatwicelight.jpg',
    city: 'Jakarta',
    country: 'Indonesia',
    description: 'Photopack Twice in twice light Jakarta',
    activities: activities,
  ),
];
