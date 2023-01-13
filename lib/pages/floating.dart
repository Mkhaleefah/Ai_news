import 'package:flutter/material.dart';

import '../model/app_color.dart';

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  Map<String, bool> newssources = {
    'News Source 1': false,
    'News Source 2': false,
    'News Source 3': false,
    'News Source 4': false,
    'News Source 5': false,
    'News Source 6': false,
  };
  var holder_1 = [];
  getItems() {
    newssources.forEach((key, value) {
      if (value == true) {
        holder_1.add(key);
      }
    });

    holder_1.clear();
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
              color: Colors.grey.shade200,
              alignment: Alignment.center,
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 5,
                    width: 50,
                    color: Colors.grey,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 190),
                  child: Text(
                    "Filter by the sources",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 1,
                    color: Colors.grey,
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: newssources.keys.map((String key) {
                      // ignore: unnecessary_new
                      return new CheckboxListTile(
                        title: new Text(key),
                        value: newssources[key],
                        activeColor: Colors.blue,
                        checkColor: Colors.white,
                        onChanged: (value) {
                          setState(() {
                            newssources[key] = value!;
                          });
                        },
                      );
                    }).toList(),
                  ),
                ),
                ElevatedButton(
                  child: const Text("Apply Filter"),
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.white,
                    //  primary: Colors.blue,
                    backgroundColor: AppColors.primaryBlue,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ]),
            );
          },
        );
      },
      // backgroundColor: Colors.blue,
      backgroundColor: AppColors.primaryBlue,
      child: const Icon(Icons.filter_alt),
    );
  }
}
