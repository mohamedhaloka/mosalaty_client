class ItemModel {
  int totalSize;
  String limit;
  int offset;
  List<Item> items;

  ItemModel({this.totalSize, this.limit, this.offset, this.items});

  ItemModel.fromJson(Map<String, dynamic> json) {
    totalSize = json['total_size'];
    limit = json['limit'].toString();
    offset =
        (json['offset'] != null && json['offset'].toString().trim().isNotEmpty)
            ? int.parse(json['offset'].toString())
            : null;
    if (json['products'] != null) {
      items = [];
      json['products'].forEach((v) {
        items.add(new Item.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total_size'] = this.totalSize;
    data['limit'] = this.limit;
    data['offset'] = this.offset;
    if (this.items != null) {
      data['products'] = this.items.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Item {
  int id;
  String name;
  String description;
  String image;
  List<String> images;
  int categoryId;
  List<CategoryIds> categoryIds;
  List<Variation> variations;
  List<AddOns> addOns;
  List<ChoiceOptions> choiceOptions;
  List<ColorModel> colors = [];
  List<SizeModel> sizes = [];
  double price;
  double tax;
  double discount;
  String discountType;
  String availableTimeStarts;
  String availableTimeEnds;
  int storeId;
  String storeName;
  double storeDiscount;
  bool scheduleOrder;
  double avgRating;
  int ratingCount;
  int veg;
  int moduleId;
  String unitType;
  int stock;
  String availableDateStarts;

  Item({
    this.id,
    this.name,
    this.description,
    this.image,
    this.images,
    this.categoryId,
    this.categoryIds,
    this.variations,
    this.addOns,
    this.choiceOptions,
    this.price,
    this.tax,
    this.discount,
    this.discountType,
    this.availableTimeStarts,
    this.availableTimeEnds,
    this.storeId,
    this.storeName,
    this.storeDiscount,
    this.scheduleOrder,
    this.avgRating,
    this.ratingCount,
    this.veg,
    this.moduleId,
    this.unitType,
    this.stock,
  });

  Item.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    image = json['image'];
    images = json['images'] != null ? json['images'].cast<String>() : [];
    categoryId = json['category_id'];
    categoryIds = [];
    if (json['category_ids'] != null) {
      json['category_ids'].forEach((v) {
        categoryIds.add(CategoryIds.fromJson(v));
      });
    }
    variations = [];
    if (json['variations'] != null) {
      json['variations'].forEach((v) {
        variations.add(Variation.fromJson(v));
      });
    }
    addOns = [];
    if (json['add_ons'] != null) {
      json['add_ons'].forEach((v) {
        addOns.add(AddOns.fromJson(v));
      });
    }
    choiceOptions = [];
    if (json['choice_options'] != null) {
      json['choice_options'].forEach((v) {
        choiceOptions.add(ChoiceOptions.fromJson(v));
      });
    }
    colors = [];
    if (json['colors'] != null) {
      json['colors'].forEach((v) {
        colors.add(ColorModel.fromJson(v));
      });
    }
    sizes = [];
    if (json['sizes'] != null) {
      json['sizes'].forEach((v) {
        sizes.add(SizeModel.fromJson(v));
      });
    }
    price = json['price'].toDouble();
    tax = json['tax'] != null ? json['tax'].toDouble() : null;
    discount = json['discount'].toDouble();
    discountType = json['discount_type'];
    availableTimeStarts = json['available_time_starts'];
    availableTimeEnds = json['available_time_ends'];
    storeId = json['store_id'];
    storeName = json['store_name'];
    storeDiscount = json['store_discount'].toDouble();
    scheduleOrder = json['schedule_order'];
    avgRating = json['avg_rating'].toDouble();
    ratingCount = json['rating_count'];
    moduleId = json['module_id'];
    veg = json['veg'] != null ? int.parse(json['veg'].toString()) : 0;
    stock = json['stock'];
    unitType = json['unit_type'];
    availableDateStarts = json['available_date_starts'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['image'] = this.image;
    data['images'] = this.images;
    data['category_id'] = this.categoryId;
    if (this.categoryIds != null) {
      data['category_ids'] = this.categoryIds.map((v) => v.toJson()).toList();
    }
    if (this.variations != null) {
      data['variations'] = this.variations.map((v) => v.toJson()).toList();
    }
    if (this.addOns != null) {
      data['add_ons'] = this.addOns.map((v) => v.toJson()).toList();
    }
    if (this.choiceOptions != null) {
      data['choice_options'] =
          this.choiceOptions.map((v) => v.toJson()).toList();
    }
    data['price'] = this.price;
    data['tax'] = this.tax;
    data['discount'] = this.discount;
    data['discount_type'] = this.discountType;
    data['available_time_starts'] = this.availableTimeStarts;
    data['available_time_ends'] = this.availableTimeEnds;
    data['store_id'] = this.storeId;
    data['store_name'] = this.storeName;
    data['store_discount'] = this.storeDiscount;
    data['schedule_order'] = this.scheduleOrder;
    data['avg_rating'] = this.avgRating;
    data['rating_count'] = this.ratingCount;
    data['veg'] = this.veg;
    data['module_id'] = this.moduleId;
    data['stock'] = this.stock;
    data['unit_type'] = this.unitType;
    data['available_date_starts'] = this.availableDateStarts;
    return data;
  }
}

class CategoryIds {
  String id;

  CategoryIds({this.id});

  CategoryIds.fromJson(Map<String, dynamic> json) {
    id = json['id'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    return data;
  }
}

class ColorModel {
  String id;
  String name;
  String color;

  ColorModel({this.id, this.name, this.color});

  ColorModel.fromJson(Map<String, dynamic> json) {
    id = json['id'].toString();
    name = json['name'].toString();
    color = json['color'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['color'] = this.color;
    return data;
  }
}

class SizeModel {
  String id;
  String itemId;
  String name;

  SizeModel({this.id, this.name, this.itemId});

  SizeModel.fromJson(Map<String, dynamic> json) {
    id = json['id'].toString();
    itemId = json['item_id'].toString();
    name = json['name'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['item_id'] = this.itemId;
    data['name'] = this.name;
    return data;
  }
}

class Variation {
  String type;
  double price;
  int stock;

  Variation({this.type, this.price, this.stock});

  Variation.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    price = json['price'].toDouble();
    stock = int.parse(json['stock'].toString());
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['price'] = this.price;
    data['stock'] = this.stock;
    return data;
  }
}

class AddOns {
  int id;
  String name;
  double price;

  AddOns({this.id, this.name, this.price});

  AddOns.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'].toDouble();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['price'] = this.price;
    return data;
  }
}

class ChoiceOptions {
  String name;
  String title;
  List<String> options;

  ChoiceOptions({this.name, this.title, this.options});

  ChoiceOptions.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    title = json['title'];
    options = json['options'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['title'] = this.title;
    data['options'] = this.options;
    return data;
  }
}
