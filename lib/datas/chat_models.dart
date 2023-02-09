class Chat {
  final String name;
  final String avatar;
  final String lastmessage;
  final String time;
  final int count;
  final String current;

  Chat(
      {required this.name,
      required this.avatar,
      required this.lastmessage,
      required this.time,
      var this.count = 0,
      required this.current});
}

List<Chat> Chatlists = [
  Chat(
      name: "Bill Gates",
      avatar:
          'assets/images/bill-gates-microsoft-portrait-uhd-4k-wallpaper.jpg',
      lastmessage: "Microsoft is mine",
      time: "1:39 AM",
      count: 3,
      current: 'last seen today at 7:56 PM'),
  Chat(
      name: "Elon Musk",
      avatar: 'assets/images/elon musk.jpg',
      lastmessage: "Let's have some fun...???",
      time: "10:30 PM",
      count: 2,
      current: 'Online'),
  Chat(
      name: "Pinarayi Vijayan",
      avatar: 'assets/images/pinarayi.jpg',
      lastmessage: "Lal Salam Comrade....",
      time: "10:49 PM",
      count: 2,
      current: 'last seen today at 9:56 PM'),
  Chat(
      name: "Naredra Modi",
      avatar: 'assets/images/Narendra Modi.jpg',
      lastmessage: "Iam the prime minister of india",
      time: "11:30 AM",
      count: 2,
      current: 'last seen today at 5:50 PM'),
  Chat(
      name: "Ambani",
      avatar: 'assets/images/Mukesh Ambani.jpg',
      lastmessage: "Iam one of the richest person in the world",
      time: "10:30 AM",
      count: 1,
      current: 'last seen today at 6:15 PM'),
  Chat(
      name: "Adani",
      avatar: 'assets/images/adani.jpg',
      lastmessage: "Iam the third richest person in india",
      time: "1:30 PM",
      count: 2,
      current: 'last seen today at 7:00 PM'),
  Chat(
      name: "Yusuf Ali",
      avatar: 'assets/images/yusufali.jpg',
      lastmessage: "All malayalies are my brothers",
      time: "10:30 AM",
      count: 2,
      current: 'last seen today at 4:36 AM'),
  Chat(
      name: "Flutter",
      avatar: 'assets/images/flutter.jpg',
      lastmessage: "Lern flutter make your life better",
      time: "10:00 AM",
      count: 2,
      current: 'last seen today at 3:13 AM'),
  Chat(
      name: "Coding",
      avatar: 'assets/images/coding.jpg',
      lastmessage: "Coding is realy intresting and easy to learn",
      time: "8:00 AM",
      count: 4,
      current: 'Online'),
  Chat(
      name: "Hacker",
      avatar: 'assets/images/4k Wallpaper Follow Me.jpg',
      lastmessage: "I hack you..!!",
      time: "11:30 PM",
      count: 2,
      current: 'last seen today at 10:00 PM'),
  Chat(
      name: "Swiggy",
      avatar: 'assets/images/swiggy.jpg',
      lastmessage: "Are you hungry order on swigggy",
      time: "9:30 PM",
      count: 2,
      current: 'Online')
];
