class Quote{

  String text;
  String author;

  // Quote(String text, String author){
  //   this.text = text;
  //   this.author = author;
  // }

  // Quote({String text, String author}){
  //   this.text = text;
  //   this.author = author;
  // }
//  alternative way of creating constructor
  Quote({this.text, this.author});
}

// Quote(String text, String author){
//   this.text = text;
//   this.author = author;
// }
// Quote q = Quote('this is the quote','oscar wilde');

// Quote({String text, String author}){
//   this.text = text;
//   this.author = author;
// }
// Quote q = Quote( author: 'oscar wilde', text: 'this is the quote');

// Quote({this.text, this.author});
// Quote q = Quote( author: 'oscar wilde', text: 'this is the quote');