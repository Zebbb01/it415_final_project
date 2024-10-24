// third party

import 'package:babysitterapp/views/settings/settings.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';

// core
import 'package:babysitterapp/core/widgets/home/toprated_babysitter.dart';
import 'package:babysitterapp/core/widgets/home/scroll_horizontal.dart';
import 'package:babysitterapp/core/widgets/home/toprate_card.dart';
import 'package:babysitterapp/core/widgets/home/nearby.dart';
import 'package:babysitterapp/core/helper/goto_page.dart';
import 'package:babysitterapp/core/constants/assets.dart';

// flutter
import 'package:flutter/material.dart';

// views
import 'package:babysitterapp/views/home/notification.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        leading: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: CircleAvatar(
            backgroundImage: AssetImage(avatar2),
          ),
        ),
        centerTitle: false,
        title: const Text(
          'Hello Arvin Sison!',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontFamily: 'Nexa-Heavy'),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              goToPage(
                  context, const NotificationView(), 'rightToLeftWithFade');
            },
            icon: const Icon(
              FluentIcons.alert_12_regular,
              color: Colors.black,
              size: 31,
            ),
          ),

          IconButton(
            onPressed: () {
              goToPage(
                  context, const SettingsView(), 'rightToLeftWithFade');
            },
            icon: const Icon(
              FluentIcons.settings_16_filled,
              color: Colors.black,
              size: 31,
            ),
          )

        ],
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: Column(
                children: <Widget>[
                  titleBabySitterNearby(),
                  scrollHorizontal(),
                  titleTopRatedBabySitter(),
                  topRatedBabySitterCard(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
