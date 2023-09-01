import 'package:elvissalabarria_portfolio/presentation/core/data/skill.dart';
import 'package:elvissalabarria_portfolio/presentation/mobile/widgets/card_project_widget_mobile.dart';

final pages = [
  const CardProjectWidgetMobile(
    imageUrl: 'assets/images/allinbikin.jpeg',
    title: 'AllInBiking',
    url:
        'https://play.google.com/store/apps/details?id=com.allinbiking.mobile.prod&hl=es',
  ),
  const CardProjectWidgetMobile(
    imageUrl: 'assets/images/eventosrd.jpeg',
    title: 'Eventos Rd',
    url: 'https://play.google.com/store/apps/details?id=com.bike.eventrd',
  ),
  const CardProjectWidgetMobile(
    imageUrl: 'assets/images/tkc.jpeg',
    title: 'TKC App',
    url: 'https://play.google.com/store/apps/details?id=com.tkc.app.pro',
  ),
  const CardProjectWidgetMobile(
    imageUrl: 'assets/images/pp1.jpeg',
    title: 'Picker&Packer',
    url: 'https://play.google.com/store/apps/details?id=com.pickpack.app.pro',
  ),
];
final skills = [
  Skill(
    image: 'assets/logos/flutter.png',
    name: 'Flutter',
    porcent: '100%',
  ),
  Skill(
    name: 'Dart',
    image: 'assets/logos/dart.png',
    porcent: '100%',
  ),
  Skill(
    name: 'Android',
    image: 'assets/logos/android.png',
    porcent: '95%',
  ),
  Skill(
    name: 'Kotlin',
    image: 'assets/logos/kotlin.png',
    porcent: '95%',
  ),
  Skill(
    name: 'Flutter Bloc',
    image: 'assets/logos/bloc.png',
    porcent: '95%',
  ),
  Skill(
      name: 'Domain Driven\nDesign Architecture',
      image: 'assets/logos/ddd.png',
      porcent: '95%'),
  Skill(
      name: 'Clean Architecture',
      image: 'assets/logos/clean.png',
      porcent: '85%')
];
