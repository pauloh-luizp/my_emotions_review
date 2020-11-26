class Emotions {
  int id;
  String date;
  String feelings;
  List<String> yourfeelings;
  String whathappened;
  String doingit;
  String whatdid;

  Emotions(
      {this.id,
      this.date,
      this.feelings,
      this.yourfeelings,
      this.whathappened,
      this.doingit,
      this.whatdid});

  Emotions.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    date = json['date'];
    feelings = json['feelings'];
    yourfeelings = json['yourfeelings'].cast<String>();
    whathappened = json['whathappened'];
    doingit = json['doingit'];
    whatdid = json['whatdid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['date'] = this.date;
    data['feelings'] = this.feelings;
    data['yourfeelings'] = this.yourfeelings;
    data['whathappened'] = this.whathappened;
    data['doingit'] = this.doingit;
    data['whatdid'] = this.whatdid;
    return data;
  }
}
