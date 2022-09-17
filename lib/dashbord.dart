import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:search_page/search_page.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Text(
            "App Name",
            style: GoogleFonts.poppins(),
          ),
          title: Sear),
    );
  }
}

OutlinedButton searchButton(BuildContext context) {
  List<String> listData = [];
  return OutlinedButton(
    onPressed: () => showSearch(
        context: context,
        delegate: SearchPage(
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
