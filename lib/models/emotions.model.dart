class Emotions {
  int id;
  int date;
  String feelings;
  List<String> yourfeelings;
  String whathappen;
  String doingit;
  String youdid;

  Emotions(
      {this.id,
      this.date,
      this.feelings,
      this.yourfeelings,
      this.whathappen,
      this.doingit,
      this.youdid});

  Emotions.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    date = json['date'];
    feelings = json['feelings'];
    yourfeelings = json['yourfeelings'].cast<String>();
    whathappen = json['whathappen'];
    doingit = json['doingit'];
    youdid = json['youdid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['date'] = this.date;
    data['feelings'] = this.feelings;
    data['yourfeelings'] = this.yourfeelings;
    data['whathappen'] = this.whathappen;
    data['doingit'] = this.doingit;
    data['youdid'] = this.youdid;
    return data;
  }
}
