class Park {
  late String img;
  late String label;

  Park({required this.img, required this.label});
}

List<Park> parks = [
  Park(
      img:
          'https://images.pexels.com/photos/3411132/pexels-photo-3411132.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      label: 'Diesny Land'),
  Park(
      img:
          'https://images.pexels.com/photos/136412/pexels-photo-136412.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      label: 'Pacific Park'),
  Park(
      img:
          'https://images.pexels.com/photos/261429/pexels-photo-261429.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      label: 'Water Park'),
  Park(
      img:
          'https://images.pexels.com/photos/705771/pexels-photo-705771.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      label: 'Carnaval'),
];
