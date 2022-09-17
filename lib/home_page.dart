import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recycile_bin_app/datas.dart';
import 'package:image_slider/image_slider.dart';
import 'package:search_page/search_page.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:group_button/group_button.dart';
import 'variables.dart';

import 'controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tabController;
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double widthModifier = MediaQuery.of(context).size.width / 1080;
    double hightModifier = MediaQuery.of(context).size.height / 1920;
    Data data = Data([
      ItemCategory("Headng", [
        Items(
            "name",
            "description",
            12,
            Image.asset(
              "assets/undraw_documents_re_isxv 1.png",
              width: 95 * widthModifier,
              height: 72 * hightModifier,
            ))
      ])
    ], context, Data.imageFill(context).slideShowImages,
        Data.buttonUse(context).buttons);

    List<int> itsCount = [];

    return GetBuilder<Controller>(
      init: controller,
      builder: (_) => Scaffold(
        appBar: AppBar(
          leading: IconButton(
            color: Colors.black,
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: [
            CircleAvatar(
              radius: 38 * hightModifier,
              backgroundImage: AssetImage(
                "assets/user 1.png",
              ),
            ),
            SizedBox(width: 38 * widthModifier),
          ],
          elevation: 0,
          backgroundColor: Colors.white,
          title: searchButton(context, data),
        ),
        backgroundColor: Colors.white,
        body: ListView(
          controller: _scrollController,
          children: [
            ImageSlideshow(
              height: 500 * hightModifier,
              initialPage: 1,
              autoPlayInterval: 1000,
              isLoop: true,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [data.slideShowImages[0]],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [data.slideShowImages[1]],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [data.slideShowImages[2]],
                ),
              ],
            ),
            Center(
              child: Container(
                  height: 107 * hightModifier,
                  width: 976 * widthModifier,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius:
                        BorderRadius.all(Radius.circular(50 * widthModifier)),
                  ),
                  child: Center(
                    child: GroupButton(
                      controller: GroupButtonController(selectedIndex: 0),
                      isRadio: true,
                      buttons: [
                        "Menu",
                        "Menu",
                        "Menu",
                        "Menu",
                      ],
                      maxSelected: 1,
                      options: GroupButtonOptions(
                          spacing: 12 * widthModifier,
                          selectedTextStyle:
                              GoogleFonts.poppins(color: Colors.black),
                          unselectedTextStyle:
                              GoogleFonts.poppins(color: Colors.white),
                          selectedColor: Colors.white,
                          unselectedColor: Colors.black,
                          buttonHeight: 84 * hightModifier,
                          buttonWidth: 229 * widthModifier,
                          borderRadius: BorderRadius.all(
                            Radius.circular(50 * widthModifier),
                          )),
                    ),
                  )),
            ),
            for (var i = 0; i < data.items.length; i++)
              for (var j = 0; j < data.items[i].category.length; j++)
                ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        data.items[i].categoryName,
                        style: GoogleFonts.poppins(fontSize: 10),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward_ios_rounded),
                      )
                    ],
                  ),
                  subtitle: Wrap(
                      spacing: 40 * widthModifier,
                      runSpacing: 45 * hightModifier,
                      children: [
                        for (var k in data.items[i].category)
                          TextButton(
                            onPressed: () {
                              controller.select(k);
                            },
                            child: SizedBox(
                              width: 296 * widthModifier,
                              child: Card(
                                color: Colors.greenAccent,
                                elevation: 0,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 21 * widthModifier),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            k.name,
                                            style: GoogleFonts.poppins(
                                              fontSize: 36 * hightModifier,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          k.image,
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 21 * widthModifier),
                                      child: Text(
                                        k.description,
                                        style: GoogleFonts.poppins(
                                            fontSize: 14 * hightModifier,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 8 * widthModifier,
                                        right: 8 * widthModifier,
                                        top: 6 * hightModifier,
                                        bottom: 8 * hightModifier,
                                      ),
                                      child: SizedBox(
                                        width: 280 * widthModifier,
                                        height: 80 * hightModifier,
                                        child: Material(
                                          color: const Color(0xff28d930),
                                          borderRadius: BorderRadius.circular(
                                              15 * widthModifier),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                width: 12 * widthModifier,
                                              ),
                                              Container(
                                                padding:
                                                    const EdgeInsets.all(2),
                                                decoration: const BoxDecoration(
                                                  color: Colors.white,
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Icon(
                                                  Icons.currency_rupee_rounded,
                                                  size: 30 * widthModifier,
                                                  color:
                                                      const Color(0xff28d930),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 12 * widthModifier,
                                              ),
                                              SizedBox(
                                                width: 140 * widthModifier,
                                                height: 40 * hightModifier,
                                                child: Text(
                                                  "${k.price}/Kg",
                                                  style: GoogleFonts.poppins(
                                                    fontSize:
                                                        24 * hightModifier,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                              if (controller.itemSelected)
                                                Icon(Icons.task_alt_rounded,
                                                    size: 32 * widthModifier,
                                                    color: Colors.black),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                      ]),
                ),
          ],
        ),
        floatingActionButton: (controller.itemSelected)
            ? FloatingActionButton.extended(
                onPressed: () {
                  print(controller.itemInBasket.toString() +
                      "  number of items in basket ");
                  print(controller.selectedItems.toString() +
                      "  number of items selected ");

                  int itemsInTheBasket = controller.itemInBasket.length;
                  for (var element in controller.selectedItems) {
                    print(element.toString() + "the element");
                    if (itemsInTheBasket > 0) {
                      for (int a = 0; a < itemsInTheBasket; a++) {
                        print(
                            "can i print ${a < controller.itemInBasket.length}");
                        if (controller.itemInBasket[a].name != element.name) {
                          print("inside");
                          controller.itemInBasket.add(element);
                          itsCount.add(1);
                          print("inside " + controller.itemInBasket.toString());
                        }
                        if (controller.itemInBasket[a].name == element.name) {
                          itsCount[a]++;
                        }
                        print("outside");
                      }
                    }
                    if (controller.itemInBasket.isEmpty) {
                      controller.itemInBasket.add(element);
                      itsCount.add(1);
                    }
                  }

                  print("here");
                  initializeControllers(itsCount);
                  print(itsCount.length.toString());
                  print(controller.itemInBasket.toString());
                  controller.deselect();
                },
                backgroundColor: Colors.green[800],
                extendedPadding: EdgeInsetsDirectional.only(
                    start: 163 * widthModifier, end: 163 * widthModifier),
                label: Text(
                  "Add to Basket",
                  style: GoogleFonts.poppins(
                      fontSize:
                          (40 * (MediaQuery.of(context).size.height / 1920))),
                ),
                icon: Icon(
                  Icons.add_circle_outline_outlined,
                  size: 35 * (MediaQuery.of(context).size.width / 1080),
                ),
              )
            : null,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  OutlinedButton searchButton(BuildContext context, Data data) {
    List<Items> listData = [];
    for (var element in data.items) {
      for (var e in element.category) {
        listData.add(Items(e.name, e.description, e.price, e.image));
      }
    }
    return OutlinedButton(
      onPressed: () => showSearch(
          context: context,
          delegate: SearchPage<Items>(
            barTheme: ThemeData(
                appBarTheme: const AppBarTheme(
                    backgroundColor: Colors.white, elevation: 0)),
            items: listData,
            searchLabel: 'Search items',
            suggestion: const Center(
              child: Text('Filter items by name or price'),
            ),
            failure: const Center(
              child: Text('No item found :('),
            ),
            filter: (person) => [
              person.name,
              person.price.toString(),
            ],
            builder: (item) => ListTile(
              title: Text(item.name, style: GoogleFonts.poppins()),
              subtitle: Text(item.description, style: GoogleFonts.poppins()),
              trailing: Text(
                '${item.price}/Kg',
                style: GoogleFonts.poppins(),
              ),
            ),
          )),
      style: OutlinedButton.styleFrom(shape: const StadiumBorder()),
      child: Row(
        children: [
          const Icon(
            Icons.search,
            color: Colors.black87,
          ),
          Text(
            "Search...",
            style: GoogleFonts.poppins(
                fontSize: 30 * (MediaQuery.of(context).size.height / 1920),
                color: Colors.black26),
          ),
        ],
      ),
    );
  }
}
