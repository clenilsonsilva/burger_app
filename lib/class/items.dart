Map chickenburger() {
  return {'nome': 'Chicken Burger', 
  'desc': 'Hamburger Chicken burger sandwich Fast food, hamburger, burger, burger sandwich, food, recipe, cheeseburger',
  'time': 30,
  'valor': 20,
  'rating': 4.0,
  'images': 'images/chicken.png',
  'row': 1,
  'width': 170.0,
  'height': 170.0,
  };
}

Map baconburger() {
  return {'nome': 'Bacon Burger', 
  'desc': 'Hamburguer Bacon with ham and cheese, Hamburger Sushi Pizza Cheeseburger, burger king, food, recipe, cheese ',
  'time': 30,
  'valor': 15,
  'rating': 5.0,
  'images': 'images/bacon.png',
  'row': 1,
  'width': 170.0,
  'height': 170.0,};
}

Map cheeseburger() {
  return {'nome': 'Cheese Burger', 
  'desc': 'Hamburger Cheese burger Fast food Cheeseburger Buffalo burger, Burger, food, cheese, nutrition',
  'time': 30,
  'valor': 15,
  'rating': 4.0,
  'images': 'images/cheese.png',
  'row': 1,
  'width': 170.0,
  'height': 170.0,};
}

Map veggibuger() {
  return {'nome': 'Veggie Burger', 
  'desc': 'Hamburger Veggie burger Take-out Fast food Kebab, Delicious beef burger, burger with lettuce, tomato, and cheese, food, beef, recipe',
  'time': 30,
  'valor': 20,
  'rating': 5.0,
  'images': 'images/veggie.png',
  'row': 1,
  'width': 150.0,
  'height': 160.0,};
}



List categories(int pos) {
  if (pos==0) {
  return [baconburger(),chickenburger(),cheeseburger(),veggibuger()];
  }else if(pos==1) {
    return [veggibuger(),cheeseburger(),chickenburger(),baconburger()];
  }
  else if(pos==2) {
    return [chickenburger(),veggibuger(),baconburger(),cheeseburger()];
  }
  else if(pos==3) {
    return [cheeseburger(),baconburger(),veggibuger(),chickenburger()];
  }
  else{
    return[];
  }
}