import 'package:flutter/material.dart';
import 'package:pokedex_pokeapi/pages/home_page/widgets/search_bar.dart';

import 'poke_item.dart';
import 'poke_item.dart';

class AppBarHome extends StatelessWidget {
  Widget _buildCategories(BuildContext context) {
    PokeItem();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 13, right: 5),
                  child: IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Pokedex',
                  style: TextStyle(
                      fontFamily: 'Google',
                      fontWeight: FontWeight.bold,
                      fontSize: 28),
                ),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 28),
                child: Text(
                  'What Pokemon\nare you looking for?',
                  style: TextStyle(
                    fontSize: 30,
                    height: 10,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              SearchBar(),
              _buildCategories(context),
            ],
          ),
        ],
      ),
      height: 120,
    );
  }
}
