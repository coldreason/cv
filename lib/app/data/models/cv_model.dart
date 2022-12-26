class Cv {
  String? award;
  String? contact;
  String? email;
  String? experience;
  String? extracurricular;
  String? github;
  String? name;
  String? position;
  String? project;
  String? skills;

  Cv(
      {this.award,
      this.contact,
      this.email,
      this.experience,
      this.extracurricular,
      this.github,
      this.name,
      this.position,
      this.project,
      this.skills});

  Cv.fromJson(Map<String, dynamic> json) {
    award = json['award'];
    contact = json['contact'];
    email = json['email'];
    experience = json['experience'];
    extracurricular = json['extracurricular'];
    github = json['github'];
    name = json['name'];
    position = json['position'];
    project = json['project'];
    skills = json['skills'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['award'] = award;
    data['contact'] = contact;
    data['email'] = email;
    data['experience'] = experience;
    data['extracurricular'] = extracurricular;
    data['github'] = github;
    data['name'] = name;
    data['position'] = position;
    data['project'] = project;
    data['skills'] = skills;
    return data;
  }
}
