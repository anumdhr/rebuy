class MessageModel {
  String image;
  String productName;
  String user;
  String message;
  String date;

  MessageModel({
    required this.image,
    required this.productName,
    required this.user,
    required this.message,
    required this.date,
  });
}
List<MessageModel> messageModel=[
  MessageModel(image: "assets/paul.png", productName: "DJI Mavic Mini 2", user: " | Paul Molive", message: "You: Does it come with an\n additional battery?", date: "9:03 AM"),
  MessageModel(image: "assets/petey.png", productName: "DIJ Mavic Mini 2", user: " | Petey Cruiser", message: "Pete: Sorry, I'm unlisting it", date: "Yesterday 4:12 PM"),
  MessageModel(image: "assets/anna.png", productName: "DIJ Mavic Air 2", user: " | Anna Sthesia", message: "Anna: I think you should go with \nMavic Mini", date: "15 Feb 21,9:30 PM"),
  MessageModel(image: "assets/bob.png", productName: "Apple Airpods Pro", user: " | Bob Frapples", message: "Bob: You'r welcome", date: "25 Jan 21, 10:30 AM"),
  MessageModel(image: "assets/greta.png", productName: "JBL Charge 2 Spea...", user: " | Greta Life", message: "Greta: Alright", date: "20 Dec 20, 9:23 AM"),
  MessageModel(image: "assets/ira.png", productName: "PlayStation Contro...", user: " | Ira Membrit", message: "You: 👍", date: "10 Nov 20, 11:03 AM"),
  MessageModel(image: "assets/anna.png", productName: "DJI Mavic Mini 2", user: " | Petey Cruiser", message: "Bob: You'r welcome", date: "25 Jan 21, 10:30 AM"),
  MessageModel(image: "assets/paul.png", productName: "DIJ Mavic Air 2", user: " | Petey Cruiser", message: "Bob: You'r welcome", date: "25 Jan 21, 10:30 AM"),
  MessageModel(image: "assets/bob.png", productName: "PlayStation Contro...", user: " | Petey Cruiser", message: "Bob: You'r welcome", date: "25 Jan 21, 10:30 AM"),
  MessageModel(image: "assets/petey.png", productName: "Apple Airpods Pro", user: " | Petey Cruiser", message: "Bob: You'r welcome", date: "25 Jan 21, 10:30 AM"),
];
