import 'package:flutter/material.dart';
import 'package:flutter_widget_learn/1_must_know/3_others/3_more_widgets/2_text_field_decoration.dart';
// import 'package:flutter_widget_learn/1_must_know/3_others/3_more_widgets/1_text_field.dart';
// import 'package:flutter_widget_learn/1_must_know/3_others/2_responsive_desain/2_mediaquery.dart';
// import 'package:flutter_widget_learn/1_must_know/3_others/2_responsive_desain/1_flexible.dart';
// import 'package:get/get.dart';
// import 'package:flutter_widget_learn/1_must_know/3_others/1_navigation/3_getX_part2/2_main_page_part2.dart';
// import 'package:flutter_widget_learn/1_must_know/3_others/1_navigation/3_getX_part2/3_second_page_part2.dart';
// import 'package:flutter_widget_learn/1_must_know/3_others/1_navigation/3_getX_part2/1_login_page_part2.dart';
// import 'package:flutter_widget_learn/1_must_know/3_others/1_navigation/2_getX_part1/1_login_page.dart';
// import 'package:flutter_widget_learn/1_must_know/3_others/1_navigation/1_multi_page/login_page.dart';
// import 'package:flutter_widget_learn/1_must_know/2_layout/12_draggable_and_dragtarget.dart';
// import 'package:flutter_widget_learn/1_must_know/2_layout/11_spacer_widget.dart';
// import 'package:flutter_widget_learn/1_must_know/2_layout/10_image_widget.dart';
// import 'package:flutter_widget_learn/1_must_know/2_layout/9_stack_and_align_widget.dart';
// import 'package:flutter_widget_learn/1_must_know/2_layout/8_animated_container_dan_gesture_detector.dart';
// import 'package:flutter_widget_learn/1_must_know/2_layout/7_list_and_listview.dart';
// import 'package:flutter_widget_learn/1_must_know/2_layout/6_text_style.dart';
// import 'package:flutter_widget_learn/1_must_know/2_layout/5_anonymous_method.dart';
// import 'package:flutter_widget_learn/1_must_know/2_layout/4_stateful_widget.dart';
// import 'package:flutter_widget_learn/1_must_know/2_layout/3_container.dart';
// import '1_must_know/1_basic_knowledge/1_life_cycle_state.dart';
// import 'package:flutter_widget_learn/1_must_know/1_basic_knowledge/2_splash_screen.dart';
// import 'package:flutter_widget_learn/1_must_know/2_layout/1_text.dart';
// import 'package:flutter_widget_learn/1_must_know/2_layout/2_row_column.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // return GetMaterialApp(
      // getPages: [
      //   GetPage(name: '/', page: () => LoginPagePart2()),
      //   GetPage(name: '/main', page: () => MainPagePart2()),
      //   GetPage(
      //       name: '/second',
      //       page: () => SecondPagePart2(),
      //       transition: Transition.zoom),
      // ],
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
          // AppLifeCycleState(),
          // SplashScreen(),
          // WidgetText(),
          // WidgetRowColumn(),
          // WidgetContainer(),
          // WidgetStateFul(),
          // AnonymousMethod(),
          // WidgetTextStyle(),
          // ListListView(),
          // WidgetAnimatedContainer(),
          // WidgetStackAlign(),
          // WidgetImage(),
          // WidgetSpacer(),
          // DragAbleWidget(),
          // LoginPage()
          // LoginPage(),
          // LoginPagePart2(),
          // WidgetFlexible(),
          // WidgetMediaQuery(),
          // WidgetTextField(),
          TextFieldDecoration(),
    );
  }
}
