import 'package:calala_market/services/models/product.dart';

import 'models/category.dart';

class DummyDataGenerator {
  static List<dynamic> responseSample = [
    {
      "title": "الفواكه",
      "thumbnail_url":
          "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png",
      "id": 1,
      "products": [
        {
          "id": 1,
          "title_ar": "تفاح",
          "title": "Apple",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 2,
          "title_ar": "بندورة",
          "title": "Tomato",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 3,
          "title_ar": "برتقال",
          "title": "Orange",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 4,
          "title_ar": "جزر",
          "title": "Carrot",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 5,
          "title_ar": "موز",
          "title": "Banana",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 6,
          "title_ar": "خيار",
          "title": "Cucumber",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 7,
          "title_ar": "ليمون",
          "title": "Lemon",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 8,
          "title_ar": "فراولة",
          "title": "Strawberry",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 9,
          "title_ar": "بطاطس",
          "title": "Potato",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 10,
          "title_ar": "خوخ",
          "title": "Peach",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 11,
          "title_ar": "باذنجان",
          "title": "Eggplant",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 12,
          "title_ar": "كرز",
          "title": "Cherry",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 13,
          "title_ar": "بصل",
          "title": "Onion",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 14,
          "title_ar": "عنب",
          "title": "Grape",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 15,
          "title_ar": "فلفل أحمر",
          "title": "Red Pepper",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 16,
          "title_ar": "ملفوف",
          "title": "Cabbage",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 17,
          "title_ar": "تين",
          "title": "Fig",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 18,
          "title_ar": "بطيخ",
          "title": "Watermelon",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 19,
          "title_ar": "كيوي",
          "title": "Kiwi",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 20,
          "title_ar": "بازلاء",
          "title": "Peas",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        }
      ]
    },
    {
      "title": "منتجات الألبان والبيض",
      "thumbnail_url":
          "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png",
      "id": 2,
      "products": [
        {
          "id": 1,
          "title": "حليب",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 2,
          "title": "زبدة",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 3,
          "title": "جبنة شيدر",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 4,
          "title": "بيض",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 5,
          "title": "زبادي",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 6,
          "title": "جبنة موزاريلا",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 7,
          "title": "كريمة",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 8,
          "title": "لبنة",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 9,
          "title": "جبنة فيتا",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 10,
          "title": "حليب بودرة",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 11,
          "title": "زبادي طبيعي",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 12,
          "title": "جبنة كريم",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 13,
          "title": "حليب قليل الدسم",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 14,
          "title": "زبدة الفول السوداني",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 15,
          "title": "حليب مكثف محلى",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 16,
          "title": "جبنة كرافت",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 17,
          "title": "سمنة",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 18,
          "title": "بيض عضوي",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 19,
          "title": "حليب صويا",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 20,
          "title": "جبنة بارميزان",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        }
      ]
    },
    {
      "title": "اللحوم والدواجن",
      "thumbnail_url":
          "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png",
      "id": 3,
      "products": [
        {
          "id": 1,
          "title": "حليب",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 2,
          "title": "زبدة",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 3,
          "title": "جبنة شيدر",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 4,
          "title": "بيض",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 5,
          "title": "زبادي",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 6,
          "title": "جبنة موزاريلا",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 7,
          "title": "كريمة",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 8,
          "title": "لبنة",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 9,
          "title": "جبنة فيتا",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 10,
          "title": "حليب بودرة",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 11,
          "title": "زبادي طبيعي",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 12,
          "title": "جبنة كريم",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 13,
          "title": "حليب قليل الدسم",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 14,
          "title": "زبدة الفول السوداني",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 15,
          "title": "حليب مكثف محلى",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 16,
          "title": "جبنة كرافت",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 17,
          "title": "سمنة",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 18,
          "title": "بيض عضوي",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 19,
          "title": "حليب صويا",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 20,
          "title": "جبنة بارميزان",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        }
      ]
    },
    {
      "title": "المخبوزات والخبز",
      "thumbnail_url":
          "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png",
      "id": 4,
      "products": [
        {
          "id": 1,
          "title": "كعكة الشوكولاتة",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 2,
          "title": "خبز الفرنسي",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 3,
          "title": "فطيرة التفاح",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 4,
          "title": "كيك الفانيليا",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 5,
          "title": "الكرواسون",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 6,
          "title": "خبز البانيتوني",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 7,
          "title": "بسكويت الشوفان",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 8,
          "title": "معجنات السبانخ",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 9,
          "title": "تورتيلا",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 10,
          "title": "كعك القرفة",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 11,
          "title": "خبز الساندويتش",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 12,
          "title": "بيتزا",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 13,
          "title": "كيك الجزر",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 14,
          "title": "بريوش",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 15,
          "title": "فطائر اللحم",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        }
      ]
    },
    {
      "title": "مثلجات",
      "thumbnail_url":
          "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png",
      "id": 5,
      "products": [
        {
          "id": 1,
          "title": "مربى الفراولة",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 2,
          "title": "صلصة الطماطم",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 3,
          "title": "زيت الزيتون",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 4,
          "title": "مخلل الخيار",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 5,
          "title": "تونة معلبة",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 6,
          "title": "حمص معلب",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 7,
          "title": "معجون الطماطم",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 8,
          "title": "توت مشكل معلب",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 9,
          "title": "زبدة الفول السوداني",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 10,
          "title": "حلوى الفواكه المعلبة",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 11,
          "title": "عسل النحل",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 12,
          "title": "مربى المشمش",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 13,
          "title": "سمك التونة المعلب",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 14,
          "title": "سلطة الذرة المحفوظة",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        },
        {
          "id": 15,
          "title": "زبدة الكاجو",
          "image_url":
              "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png"
        }
      ]
    }
  ];

  static Future<List<ProductCategory>?> getCategories() async {
    await Future.delayed(const Duration(milliseconds: 500));
    var lst = responseSample
        .map(
          (obj) => ProductCategory(
            id: obj["id"],
            title: obj["title"],
            relatedProducts: (obj["products"] as List)
                .map((pObj) => Product(
                      pObj["id"],
                      pObj["title"],
                      pObj["image_url"],
                    ))
                .toList(),
          ),
        )
        .toList();

    return lst;
  }
}
