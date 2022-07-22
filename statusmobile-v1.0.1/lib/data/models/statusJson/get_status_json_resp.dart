class GetStatusJsonResp {
  Page? page;
  Status? status;

  GetStatusJsonResp({this.page, this.status});

  GetStatusJsonResp.fromJson(Map<String, dynamic> json) {
    page = json['page'] != null ? Page.fromJson(json['page']) : null;
    status = json['status'] != null ? Status.fromJson(json['status']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.page != null) {
      data['page'] = this.page?.toJson();
    }
    if (this.status != null) {
      data['status'] = this.status?.toJson();
    }
    return data;
  }
}

class Page {
  String? id;
  String? name;
  String? url;
  String? timeZone;
  String? updatedAt;

  Page({this.id, this.name, this.url, this.timeZone, this.updatedAt});

  Page.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    url = json['url'];
    timeZone = json['time_zone'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.url != null) {
      data['url'] = this.url;
    }
    if (this.timeZone != null) {
      data['time_zone'] = this.timeZone;
    }
    if (this.updatedAt != null) {
      data['updated_at'] = this.updatedAt;
    }
    return data;
  }
}

class Status {
  String? indicator;
  String? description;

  Status({this.indicator, this.description});

  Status.fromJson(Map<String, dynamic> json) {
    indicator = json['indicator'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.indicator != null) {
      data['indicator'] = this.indicator;
    }
    if (this.description != null) {
      data['description'] = this.description;
    }
    return data;
  }
}
