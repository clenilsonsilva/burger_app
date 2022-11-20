import 'listburg.dart';
import 'listdrinks.dart';
import 'listhot.dart';
import 'listpizza.dart';






List listcategories(int pos) {
  if (pos==0) {
  return [baconburger(),chickenburger(),cheeseburger(),veggibuger()];
  }else if(pos==1) {
    return [coca2l(),kuat2l(),guarana2l(),fanta2l()];
  }
  else if(pos==2) {
    return [pizzaitaliana(),pizzacalabresa(),pizzamarguerita(),pizzawing()];
  }
  else if(pos==3) {
    return [hotdogtrad(), hotdogsuper(), hotdogbacon(), hotdogcatu()];
  }
  else{
    return[];
  }
}