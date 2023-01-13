import 'package:flutter/material.dart';


class SearchBar extends StatelessWidget {
  const SearchBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: 
      const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search for the news,topics...',
           border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
           ),
          suffixIcon: Icon(
            Icons.search,
            color: Colors.black,
          ),
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    ),
    );
  }
}