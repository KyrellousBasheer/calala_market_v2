import 'package:calala_market/services/models/product.dart';

import 'models/category.dart';

class DummyDataGenerator {
  static List<dynamic> responseSample = [
    {
      "title": "الفواكه",
      "thumbnail_url": "https://example.com/fruits_thumbnail.jpg",
      "id": 1,
      "products": [
        {
          "id": 1,
          "title": "تفاح",
          "image_url": "https://example.com/apple.jpg"
        },
        {
          "id": 2,
          "title": "بندورة",
          "image_url": "https://example.com/tomato.jpg"
        },
        {
          "id": 3,
          "title": "برتقال",
          "image_url": "https://example.com/orange.jpg"
        },
        {
          "id": 4,
          "title": "جزر",
          "image_url": "https://example.com/carrot.jpg"
        },
        {
          "id": 5,
          "title": "موز",
          "image_url": "https://example.com/banana.jpg"
        },
        {
          "id": 6,
          "title": "خيار",
          "image_url": "https://example.com/cucumber.jpg"
        },
        {
          "id": 7,
          "title": "ليمون",
          "image_url": "https://example.com/lemon.jpg"
        },
        {
          "id": 8,
          "title": "فراولة",
          "image_url": "https://example.com/strawberry.jpg"
        },
        {
          "id": 9,
          "title": "بطاطس",
          "image_url": "https://example.com/potato.jpg"
        },
        {
          "id": 10,
          "title": "خوخ",
          "image_url": "https://example.com/peach.jpg"
        },
        {
          "id": 11,
          "title": "باذنجان",
          "image_url": "https://example.com/eggplant.jpg"
        },
        {
          "id": 12,
          "title": "كرز",
          "image_url": "https://example.com/cherry.jpg"
        },
        {
          "id": 13,
          "title": "بصل",
          "image_url": "https://example.com/onion.jpg"
        },
        {
          "id": 14,
          "title": "عنب",
          "image_url": "https://example.com/grape.jpg"
        },
        {
          "id": 15,
          "title": "فلفل أحمر",
          "image_url": "https://example.com/red_pepper.jpg"
        },
        {
          "id": 16,
          "title": "ملفوف",
          "image_url": "https://example.com/cabbage.jpg"
        },
        {"id": 17, "title": "تين", "image_url": "https://example.com/fig.jpg"},
        {
          "id": 18,
          "title": "بطيخ",
          "image_url": "https://example.com/watermelon.jpg"
        },
        {
          "id": 19,
          "title": "كيوي",
          "image_url": "https://example.com/kiwi.jpg"
        },
        {
          "id": 20,
          "title": "بازلاء",
          "image_url": "https://example.com/peas.jpg"
        }
      ]
    },
    {
      "title": "منتجات الألبان والبيض",
      "thumbnail_url": "https://example.com/dairy_thumbnail.jpg",
      "id": 2,
      "products": [
        {"id": 1, "title": "حليب", "image_url": "https://example.com/milk.jpg"},
        {
          "id": 2,
          "title": "زبدة",
          "image_url": "https://example.com/butter.jpg"
        },
        {
          "id": 3,
          "title": "جبنة شيدر",
          "image_url": "https://example.com/cheddar_cheese.jpg"
        },
        {"id": 4, "title": "بيض", "image_url": "https://example.com/eggs.jpg"},
        {
          "id": 5,
          "title": "زبادي",
          "image_url": "https://example.com/yogurt.jpg"
        },
        {
          "id": 6,
          "title": "جبنة موزاريلا",
          "image_url": "https://example.com/mozzarella_cheese.jpg"
        },
        {
          "id": 7,
          "title": "كريمة",
          "image_url": "https://example.com/cream.jpg"
        },
        {
          "id": 8,
          "title": "لبنة",
          "image_url": "https://example.com/labneh.jpg"
        },
        {
          "id": 9,
          "title": "جبنة فيتا",
          "image_url": "https://example.com/feta_cheese.jpg"
        },
        {
          "id": 10,
          "title": "حليب بودرة",
          "image_url": "https://example.com/powdered_milk.jpg"
        },
        {
          "id": 11,
          "title": "زبادي طبيعي",
          "image_url": "https://example.com/plain_yogurt.jpg"
        },
        {
          "id": 12,
          "title": "جبنة كريم",
          "image_url": "https://example.com/cream_cheese.jpg"
        },
        {
          "id": 13,
          "title": "حليب قليل الدسم",
          "image_url": "https://example.com/low_fat_milk.jpg"
        },
        {
          "id": 14,
          "title": "زبدة الفول السوداني",
          "image_url": "https://example.com/peanut_butter.jpg"
        },
        {
          "id": 15,
          "title": "حليب مكثف محلى",
          "image_url": "https://example.com/condensed_milk.jpg"
        },
        {
          "id": 16,
          "title": "جبنة كرافت",
          "image_url": "https://example.com/kraft_cheese.jpg"
        },
        {
          "id": 17,
          "title": "سمنة",
          "image_url": "https://example.com/samneh.jpg"
        },
        {
          "id": 18,
          "title": "بيض عضوي",
          "image_url": "https://example.com/organic_eggs.jpg"
        },
        {
          "id": 19,
          "title": "حليب صويا",
          "image_url": "https://example.com/soy_milk.jpg"
        },
        {
          "id": 20,
          "title": "جبنة بارميزان",
          "image_url": "https://example.com/parmesan_cheese.jpg"
        }
      ]
    },
    {
      "title": "اللحوم والدواجن",
      "thumbnail_url": "https://example.com/meat_thumbnail.jpg",
      "id": 3,
      "products": [
        {"id": 1, "title": "حليب", "image_url": "https://example.com/milk.jpg"},
        {
          "id": 2,
          "title": "زبدة",
          "image_url": "https://example.com/butter.jpg"
        },
        {
          "id": 3,
          "title": "جبنة شيدر",
          "image_url": "https://example.com/cheddar_cheese.jpg"
        },
        {"id": 4, "title": "بيض", "image_url": "https://example.com/eggs.jpg"},
        {
          "id": 5,
          "title": "زبادي",
          "image_url": "https://example.com/yogurt.jpg"
        },
        {
          "id": 6,
          "title": "جبنة موزاريلا",
          "image_url": "https://example.com/mozzarella_cheese.jpg"
        },
        {
          "id": 7,
          "title": "كريمة",
          "image_url": "https://example.com/cream.jpg"
        },
        {
          "id": 8,
          "title": "لبنة",
          "image_url": "https://example.com/labneh.jpg"
        },
        {
          "id": 9,
          "title": "جبنة فيتا",
          "image_url": "https://example.com/feta_cheese.jpg"
        },
        {
          "id": 10,
          "title": "حليب بودرة",
          "image_url": "https://example.com/powdered_milk.jpg"
        },
        {
          "id": 11,
          "title": "زبادي طبيعي",
          "image_url": "https://example.com/plain_yogurt.jpg"
        },
        {
          "id": 12,
          "title": "جبنة كريم",
          "image_url": "https://example.com/cream_cheese.jpg"
        },
        {
          "id": 13,
          "title": "حليب قليل الدسم",
          "image_url": "https://example.com/low_fat_milk.jpg"
        },
        {
          "id": 14,
          "title": "زبدة الفول السوداني",
          "image_url": "https://example.com/peanut_butter.jpg"
        },
        {
          "id": 15,
          "title": "حليب مكثف محلى",
          "image_url": "https://example.com/condensed_milk.jpg"
        },
        {
          "id": 16,
          "title": "جبنة كرافت",
          "image_url": "https://example.com/kraft_cheese.jpg"
        },
        {
          "id": 17,
          "title": "سمنة",
          "image_url": "https://example.com/samneh.jpg"
        },
        {
          "id": 18,
          "title": "بيض عضوي",
          "image_url": "https://example.com/organic_eggs.jpg"
        },
        {
          "id": 19,
          "title": "حليب صويا",
          "image_url": "https://example.com/soy_milk.jpg"
        },
        {
          "id": 20,
          "title": "جبنة بارميزان",
          "image_url": "https://example.com/parmesan_cheese.jpg"
        }
      ]
    },
    {
      "title": "المخبوزات والخبز",
      "thumbnail_url": "https://example.com/bakery_thumbnail.jpg",
      "id": 4,
      "products": [
        {
          "id": 1,
          "title": "كعكة الشوكولاتة",
          "image_url": "https://example.com/chocolate_cake.jpg"
        },
        {
          "id": 2,
          "title": "خبز الفرنسي",
          "image_url": "https://example.com/french_bread.jpg"
        },
        {
          "id": 3,
          "title": "فطيرة التفاح",
          "image_url": "https://example.com/apple_pie.jpg"
        },
        {
          "id": 4,
          "title": "كيك الفانيليا",
          "image_url": "https://example.com/vanilla_cake.jpg"
        },
        {
          "id": 5,
          "title": "الكرواسون",
          "image_url": "https://example.com/croissant.jpg"
        },
        {
          "id": 6,
          "title": "خبز البانيتوني",
          "image_url": "https://example.com/baguette.jpg"
        },
        {
          "id": 7,
          "title": "بسكويت الشوفان",
          "image_url": "https://example.com/oatmeal_cookies.jpg"
        },
        {
          "id": 8,
          "title": "معجنات السبانخ",
          "image_url": "https://example.com/spinach_puff_pastry.jpg"
        },
        {
          "id": 9,
          "title": "تورتيلا",
          "image_url": "https://example.com/tortilla.jpg"
        },
        {
          "id": 10,
          "title": "كعك القرفة",
          "image_url": "https://example.com/cinnamon_cake.jpg"
        },
        {
          "id": 11,
          "title": "خبز الساندويتش",
          "image_url": "https://example.com/sandwich_bread.jpg"
        },
        {
          "id": 12,
          "title": "بيتزا",
          "image_url": "https://example.com/pizza.jpg"
        },
        {
          "id": 13,
          "title": "كيك الجزر",
          "image_url": "https://example.com/carrot_cake.jpg"
        },
        {
          "id": 14,
          "title": "بريوش",
          "image_url": "https://example.com/brioche.jpg"
        },
        {
          "id": 15,
          "title": "فطائر اللحم",
          "image_url": "https://example.com/meat_pie.jpg"
        }
      ]
    },
    {
      "title": "مثلجات",
      "thumbnail_url": "https://example.com/canned_thumbnail.jpg",
      "id": 5,
      "products": [
        {
          "id": 1,
          "title": "مربى الفراولة",
          "image_url": "https://example.com/strawberry_jam.jpg"
        },
        {
          "id": 2,
          "title": "صلصة الطماطم",
          "image_url": "https://example.com/tomato_sauce.jpg"
        },
        {
          "id": 3,
          "title": "زيت الزيتون",
          "image_url": "https://example.com/olive_oil.jpg"
        },
        {
          "id": 4,
          "title": "مخلل الخيار",
          "image_url": "https://example.com/pickles.jpg"
        },
        {
          "id": 5,
          "title": "تونة معلبة",
          "image_url": "https://example.com/canned_tuna.jpg"
        },
        {
          "id": 6,
          "title": "حمص معلب",
          "image_url": "https://example.com/canned_hummus.jpg"
        },
        {
          "id": 7,
          "title": "معجون الطماطم",
          "image_url": "https://example.com/tomato_paste.jpg"
        },
        {
          "id": 8,
          "title": "توت مشكل معلب",
          "image_url": "https://example.com/mixed_berry_jam.jpg"
        },
        {
          "id": 9,
          "title": "زبدة الفول السوداني",
          "image_url": "https://example.com/peanut_butter.jpg"
        },
        {
          "id": 10,
          "title": "حلوى الفواكه المعلبة",
          "image_url": "https://example.com/canned_fruit_cocktail.jpg"
        },
        {
          "id": 11,
          "title": "عسل النحل",
          "image_url": "https://example.com/honey.jpg"
        },
        {
          "id": 12,
          "title": "مربى المشمش",
          "image_url": "https://example.com/apricot_jam.jpg"
        },
        {
          "id": 13,
          "title": "سمك التونة المعلب",
          "image_url": "https://example.com/canned_tuna_fish.jpg"
        },
        {
          "id": 14,
          "title": "سلطة الذرة المحفوظة",
          "image_url": "https://example.com/corn_salad.jpg"
        },
        {
          "id": 15,
          "title": "زبدة الكاجو",
          "image_url": "https://example.com/cashew_butter.jpg"
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
