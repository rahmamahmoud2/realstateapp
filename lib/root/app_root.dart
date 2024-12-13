import 'package:flutter/material.dart';
import 'package:real_state_app/core/mainlayout.dart';
import 'package:real_state_app/views/Question/question.dart';
import 'package:real_state_app/views/artificialApartment/artificial.dart';
import 'package:real_state_app/views/audioCall/audio_call.dart';
import 'package:real_state_app/views/buildersList/builders_list.dart';
import 'package:real_state_app/views/buildersProfile/builders.dart';
import 'package:real_state_app/views/cardPayment/card_payment.dart';
import 'package:real_state_app/views/chat/chat.dart';
import 'package:real_state_app/views/conactUs/contactus.dart';
import 'package:real_state_app/views/estimatedCost/estimated_cost.dart';
import 'package:real_state_app/views/filterProperty/filter_property.dart';
import 'package:real_state_app/views/getSchedule/get_schedule.dart';
import 'package:real_state_app/views/history/history.dart';
import 'package:real_state_app/views/home/home.dart';
import 'package:real_state_app/views/savedProperty/saves_property.dart';
import 'package:real_state_app/views/indindividual%20chat/individual_chat.dart';
import 'package:real_state_app/views/login/login.dart';
import 'package:real_state_app/views/matchedProperty/matched_property.dart';
import 'package:real_state_app/views/notification/notifications_details.dart';
import 'package:real_state_app/views/onBording/on_bording.dart';

import 'package:real_state_app/views/propertyOwner/property_owner.dart';
import 'package:real_state_app/views/register/register.dart';
import 'package:real_state_app/views/savedCard/saved_card.dart';
import 'package:real_state_app/views/searchPlot/seach_plot.dart';
import 'package:real_state_app/views/settings/settings.dart';
import 'package:real_state_app/views/splash/splash.dart';
import 'package:real_state_app/views/termsCondition/terms_condition.dart';
import 'package:real_state_app/views/totalEstimated/total_estimated.dart';
import 'package:real_state_app/views/transactionDetails/transaction_details.dart';
import 'package:real_state_app/views/videoCall/video_call.dart';

import '../views/orBording/or_bording.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/matchedProperty': (context) => const MatchedProperty(),
        'splash': (context) => const Splash(),
        'onbording': (context) => const OnBording(),
        'orbording': (context) => const OrBording(),
        'login': (context) => const Login(),
        '/register': (context) => const Register(),
        'question': (context) => const Question(),
        'home': (context) => const Home(),
        'savedproperty': (context) => SavesProperty(),
        'filter': (context) => const FilterProperty(),
        'mainlayout': (context) => const Mainlayout(),
        'chat': (context) => const Chat(),
        'contactus': (context) => const ContactUs(),
        'schedule': (context) => const GetSchedule(),
        'individualchat': (context) => const IndividualChat(),
        'termscondition': (context) => const TermsCondition(),
        'notification': (context) => NotificationsDetails(),
        'builders': (context) => Builders(),
        'ownerprofile': (context) => const PropertyOwner(),
        'audiocall': (context) => const AudioCall(),
        'videocall': (context) => const VideoCall(),
        'searchplot': (context) => const SeachPlot(),
        'estimatedcost': (context) => EstimatedCost(),
        'totalestimated': (context) => const TotalEstimated(),
        'artificial': (context) => const Artificial(),
        'savedcard': (context) => SavedCard(),
        'settings': (context) => const Settings(),
        'history': (context) => const History(),
        'transactiondetails': (context) => const TransactionDetails(),
        'builderslist': (context) => BuildersList(),
        'cardpayment': (context) => CardPayment(),
      },
      initialRoute: 'splash',
    );
  }
}
