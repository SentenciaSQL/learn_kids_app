import 'package:flutter/material.dart';

abstract class Languages {
  static Languages of(BuildContext context) {
    final result = Localizations.of<Languages>(context, Languages);
    assert(result != null, 'No Languages found in context');
    return result!;
  }

  String get appName;
  String get labelWelcome;
  String get labelInfo;
  String get labelSelectLanguage;
  String get textInfo;

  // Begin menu options
  String get homePage;
  String get alphabetPage;
  String get animalsPage;
  String get foodsPage;
  String get numbersPage;
  String get professionsPage;
  String get signLanguagePage;
  String get optionsPage;
  // End menu options

  // Settings Page
  String get darkMode;
  String get lightMode;
  // Alert Dialog
  String get alert;
  String get languageNotFound;
  // End Alert Dialog
  // Animals Page
  String get bee;
  String get butterfly;
  String get cat;
  String get cow;
  String get dog;
  String get elephant;
  String get emu;
  String get flamingo;
  String get giraffe;
  String get horse;
  String get jellyfish;
  String get kangaroo;
  String get koala;
  String get ladybug;
  String get lion;
  String get monkey;
  String get panda;
  String get peacock;
  String get penguin;
  String get pig;
  String get pufferFish;
  String get seahorse;
  String get seal;
  String get shark;
  String get sheep;
  String get sloth;
  String get snail;
  String get sugarGlider;
  String get walrus;
  String get whale;
  // End Animal Page

  // Professions Page
  String get flightAttendant;
  String get freelance;
  String get gardener;
  String get judge;
  String get worker;
  String get lawyer;
  String get magician;
  String get maid;
  String get manager;
  String get mechanic;
  String get musician;
  String get doctor;
  String get team;
  String get painter;
  String get photographer;
  String get pilot;
  String get plumber;
  String get policeman;
  String get programmer;
  String get receptionist;
  String get reporter;
  String get sailor;
  String get salesman;
  String get scientist;
  String get secretary;
  String get securityMan;
  String get singer;
  String get soldier;
  String get student;
  String get tailor;
  String get teacher;
  String get technician;
  String get veterinarian;
  String get waiter;
  String get waitress;
  String get writer;
  // End Professions Page

  // Numbers Page
  String get numberOne;
  String get numberTwo;
  String get numberThree;
  String get numberFour;
  String get numberFive;
  String get numberSix;
  String get numberSeven;
  String get numberEight;
  String get numberNine;
  String get numberZero;
  // End Numbers Page

  // Food Page
  String get apple;
  String get asparagus;
  String get aubergine;
  String get avocado;
  String get bacon;
  String get banana;
  String get beans;
  String get blueberries;
  String get bread;
  String get broccoli;
  String get cabbage;
  String get carrot;
  String get cauliflower;
  String get cheese;
  String get cherries;
  String get chili;
  String get coconut;
  String get cookies;
  String get corn;
  String get cucumber;
  String get cupcake;
  String get eggs;
  String get fish;
  String get garlic;
  String get grapes;
  String get ham;
  String get hamburguer;
  String get lemon;
  String get olives;
  String get onion;
  String get orange;
  String get peach;
  String get pear;
  String get pineapple;
  String get pizza;
  String get potatoes;
  String get pumpkin;
  String get radish;
  String get raspberry;
  String get salad;
  String get sausage;
  String get strawberry;
  String get tomato;
  String get turkey;
  String get watermelon;
  // End Food Page

  // Sign Language
  String get wow;
  String get signLanguage;
  String get bathroom;
  String get farewell;
  String get come;
  String get whatAreYouDoing;
  String get equality;
  String get far;
  String get like;
  String get ok;
  String get good;
  String get stop;
  String get hello;
  String get signLanguage02;
  String get iLoveYou;
  String get iLoveYou02;
  String get later;
  String get lol;
  String get no;
  String get perfect;
  String get question;
  String get stare;
  // End Sing Language Page
}
