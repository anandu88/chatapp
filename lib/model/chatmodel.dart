class User {
  final int id;
  final String name;
  final String imageUrl;

  User({
    required this.id,
    required this.name,
    required this.imageUrl,
  });
}
class Message {
  final User sender;
  final String
      time; 
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.isLiked,
    required this.unread,
  });
}

// YOU - current user
final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageUrl: "https://images.unsplash.com/photo-1594007759138-855170ec8dc0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80",

);

// USERS
final User greg = User(
  id: 1,
  name: 'Greg',
  imageUrl: "https://i.ytimg.com/vi/fBsEwGRXxF4/maxresdefault.jpg",
);
final User james = User(
  id: 2,
  name: 'James',
  imageUrl: 'https://c4.wallpaperflare.com/wallpaper/907/147/739/denji-chainsaw-man-power-chainsaw-man-chainsaw-man-devil-devil-girl-hd-wallpaper-preview.jpg',

);
final User john = User(
  id: 3,
  name: 'John',
  imageUrl: 'https://beebom.com/wp-content/uploads/2023/01/what-is-will-of-D-in-one-piece-meaning-of-D-in-luffys-name.jpg',

);
final User olivia = User(
  id: 4,
  name: 'Olivia',
  imageUrl: 'https://c4.wallpaperflare.com/wallpaper/662/509/66/chainsaw-man-anime-power-character-hd-wallpaper-preview.jpg',

);
final User sam = User(
  id: 5,
  name: 'Sam',
  imageUrl: 'https://staticg.sportskeeda.com/editor/2022/09/adc87-16620248461964.png',
);
final User sophia = User(
  id: 6,
  name: 'Sophia',
  imageUrl: 'https://wallpaperaccess.com/full/1330900.jpg',
);
final User steven = User(
  id: 7,
  name: 'Steven',
  imageUrl: 'https://sportshub.cbsistatic.com/i/2021/09/07/08310122-c8ed-445d-b701-cb9850c40548/one-piece-zoro-1278854.jpg',

);
List<User> favorites = [sam, steven, olivia, john, greg];



// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: james,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: olivia,
    time: '4:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: john,
    time: '3:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: sophia,
    time: '2:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: steven,
    time: '1:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: sam,
    time: '12:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: greg,
    time: '11:30 AM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: james,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'Just walked my doge. She was super duper cute. The best pupper!!',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '3:45 PM',
    text: 'How\'s the doggo?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '3:15 PM',
    text: 'All the food',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Nice! What kind of food did you eat?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '2:00 PM',
    text: 'I ate so much food today.',
    isLiked: false,
    unread: true,
  ),
];