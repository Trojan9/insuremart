

class CardModel {
  
  final String id;
  final String cardHolderName;
  final String cardNumber;
  final String exp;
  final String cvv;

  CardModel({this.id, this.cardHolderName, this.cardNumber, this.exp, this.cvv, });



  Map toJson() => {
    'id': id,
    'cardHolderName': cardHolderName,
    'cardNumber': cardNumber,
    'cvv': cvv,
    'exp': exp,
  };

  CardModel.fromJson(Map json) :
  id = json['id'],
  cardHolderName = json['cardHolderName'],
  cardNumber = json['cardNumber'],
  cvv = json['cvv'],
  exp = json['exp'];


}
