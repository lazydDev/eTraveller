import 'package:travel_1/models/activity_model.dart';

class Destination {

  String imageUrl;
  String city;
  String district;
  String description;
  List<Activity> activities;

  Destination({
    this.imageUrl,
    this.city,
    this.district,
    this.description,
    this.activities,
  });
  
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/am.jpg',
    name:  "Camel's Back Road, Mussoorie",
    type: "Sightseeing Tour",
    startTimes: ['8:00 am', '5:00 pm'],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl: 'assets/images/dbt.jpg',
    name:  "Dayara Bugyal Trek, Uttarkashi ",
    type: "Adventure Tour",
    startTimes: ['7:00 am', '8:00 pm'],
    rating: 4,
    price: 210,
  ),
  Activity(
    imageUrl: 'assets/images/aa.jpg',
    name:  "Auli, Chamoli",
    type: "Sightseeing Tour",
    startTimes: ['8:00 am', '6:00 pm'],
    rating: 5,
    price: 369,
  ),
  Activity(
    imageUrl: 'assets/images/nta.jpg',
    name:  "Nag Tibba Trek, Dehradun",
    type: "Adcenture Tour",
    startTimes: ['8:00 am', '6:00 pm'],
    rating: 5,
    price: 45,
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/badrinath.jpg',
    city: 'Badrinath',
    district: 'Chamoli',
    description: 'Badrinath is a holy town and a nagar panchayat in Chamoli district.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/urgam.jpg',
    city: 'Urgam Valley',
    district: 'Chamoli',
    description: 'Urgam Valley is a collection of villages, small valleys, all tucked away.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/hkd.jpg',
    city: 'Har ki Dun',
    district: 'Uttarkashi',
    description: 'Har ki Dun, which means Valley of Gods, in North-Western Uttarkashi.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/vof.jpg',
    city: 'Valley of Flowers',
    district: 'Chamoli',
    description: 'The Valley of Flowers is a high-altitude Himalayan valley. ',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/mussoorie.jpg',
    city: 'Mussoorie',
    district: 'Dehradun',
    description: 'Mussoorie is a hill station and a municipal board in the Dehradun.',
    activities: activities,
  ),
];