class HotelsScreenModel {

  String? link;
  String? image;
  String? price;
  String? title;
  double? rating;
  double? reviews;
  List<dynamic>? features;


HotelsScreenModel({
     this.link,
     this.image,
     this.price,
     this.title,
     this.rating,
     this.reviews,
     this.features
  });
  

  HotelsScreenModel.fromJson(Map<String,dynamic> jsonDecoded)
  : link = jsonDecoded['link'],
    image = jsonDecoded['image'],
    price = jsonDecoded['price'],
    title = jsonDecoded['title'],
    rating = jsonDecoded['rating'],
    reviews = double.parse('${jsonDecoded['reviews']}'),
    features = jsonDecoded['features'];


    Map<String,dynamic> toJson(){
      final Map<String,dynamic> data =  <String,dynamic>{};
      data['link'] = link;
      data['image'] = image;
      data['price'] = price;
      data['title'] = title;
      data['rating'] = rating;
      data['reviews'] = reviews;
      data['features'] = features;
      return data;
    }

   HotelsScreenModel copyWith({
    String? link,
    String? image,
    String? price,
    String? title,
    double? rating,
    double? reviews,
    List<String>? features
  }){
    return HotelsScreenModel(
      link: link ?? this.link,
      image : image ?? this.image,
      price : price ?? this.price,
      title: title ?? this.title,
      rating: rating ?? this.rating,
      reviews : reviews ?? this.reviews,
      features : features ?? this.features,
    );
  }

    @override
  int get hashCode => Object.hash(
    link, 
    image,
    price,
    title,
    rating, 
    reviews,
    features);

  @override
    bool operator ==(Object other)=> 
    other is HotelsScreenModel && 
    link == other.link && 
    image == other.image && 
    price == other.price &&
    title == other.title && 
    rating == other.rating && 
    reviews == other.reviews && 
    features == other.features;  
}