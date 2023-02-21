class WebtoonModel {
  final String title, thumb, id;

  WebtoonModel.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        thumb = json['thumb'],
        id = json['id'];
}


// 위와 동일한 의미이지만 잘 쓰이지 않는 패턴이다. 
// class WebtoonModel {
//   late final String title, thumb, id;

//   WebtoonModel(Map<String, dynamic> json) {
//     title = json['title'];
//     thumb = json['thumb'];
//     id = json['id'];
//   }
// }
