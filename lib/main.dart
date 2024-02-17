import 'package:flutter/material.dart';
import 'package:tab_bar/Fragment/AlarmFragment.dart';
import 'package:tab_bar/Fragment/BalanceFragment.dart';
import 'package:tab_bar/Fragment/ContactFragment.dart';
import 'package:tab_bar/Fragment/EmailFragment.dart';
import 'package:tab_bar/Fragment/HomeFragment.dart';
import 'package:tab_bar/Fragment/PersonFragment.dart';
import 'package:tab_bar/Fragment/SearchFragment.dart';
import 'package:tab_bar/Fragment/SettingsFragment.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 8,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.cyan,
            title: Text('My App'),
            centerTitle: true,
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                Tab(icon: Icon(Icons.home),text: 'Home'),
                Tab(icon: Icon(Icons.search),text: 'Search'),
                Tab(icon: Icon(Icons.settings),text: 'Settings'),
                Tab(icon: Icon(Icons.email),text: 'Email'),
                Tab(icon: Icon(Icons.contact_mail),text: 'Contact'),
                Tab(icon: Icon(Icons.person),text: 'Person'),
                Tab(icon: Icon(Icons.access_alarm),text: 'Alarm'),
                Tab(icon: Icon(Icons.account_balance),text: 'Balance')
              ],

            ),
          ),
          body: TabBarView(
            children: [
              HomeFragment(),
              SearchFragment(),
              SettingsFragment(),
              EmailFragment(),
              ContactFragment(),
              PersonFragment(),
              AlarmFragment(),
              BalanceFragment(),





            ],
          ),
        )
    );



  }
}
