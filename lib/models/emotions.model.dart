class Emotions {
  int id;
  int date;
  String feelings;
  List<String> yourfeelings;
  String whathappend;
  String doingit;
  String youdid;

  Emotions(
      {this.id,
      this.date,
      this.feelings,
      this.yourfeelings,
      this.whathappend,
      this.doingit,
      this.youdid});

  Emotions.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    date = json['date'];
    feelings = json['feelings'];
    yourfeelings = json['yourfeelings'].cast<String>();
    whathappend = json['whathappend'];
    doingit = json['doingit'];
    youdid = json['youdid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['date'] = this.date;
    data['feelings'] = this.feelings;
    data['yourfeelings'] = this.yourfeelings;
    data['whathappend'] = this.whathappend;
    data['doingit'] = this.doingit;
    data['youdid'] = this.youdid;
    return data;
  }
}
