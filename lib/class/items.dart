import 'package:flutter_cep/class/listacai.dart';
import 'package:flutter_cep/class/listcombos.dart';
import 'package:flutter_cep/class/listmarmita.dart';

import 'listburg.dart';
import 'listdrinks.dart';
import 'listhot.dart';
import 'listpizza.dart';

List listcategories(int pos) {
  //organiza os produtos por categorias e acessa usando a posicao
  if (pos == 0) {
    return [
      baconburger(),
      chickenburger(),
      cheeseburger(),
      veggibuger(),
      whopperburger(),
      bigking(),
      megastacker(),
      whopperplantas()
    ];
  } else if (pos == 1) {
    return [
      coca2l(),
      kuat2l(),
      guarana2l(),
      fanta2l(),
      cocalata(),
      pepsilata(),
      guaranalata(),
      fantalata(),
      monsterlata(),
      redbulllata(),
      aguacoco(),
      water()
    ];
  } else if (pos == 2) {
    return [
      pizzaitaliana(),
      pizzacalabresa(),
      pizzamarguerita(),
      pizzawing(),
      cheesepizza(),
      pizzaqueijotomate(),
      peperonipizza(),
      pimentapizza()
    ];
  } else if (pos == 3) {
    return [
      hotdogtrad(),
      hotdogsuper(),
      hotdogbacon(),
      hotdogcatu(),
    ];
  } else if (pos == 4) {
    return [
      acai(),
      acaiamendoim(),
      acaimorango(),
      acaikiwi(),
    ];
  } else if (pos == 5) {
    return [
      marmitacarneassada(),
      marmitabisteca(),
      marmitalasanha(),
      marmitafrango()
    ];
  } else if (pos == 6) {
    return [
      comboburgerfritacoca(),
      combonuggetsfritas(),
      batatahotdog(),
      porcaobatatabaconcheddar()
    ];
  } else {
    return [];
  }
}
