import 'package:flutter/material.dart';

class AnimalsType {
  static List animalType = [
    "Lion",
    "Dog",
    "Cat",
    "Turtle",
    "Deer",
  ];
}

class Animal {
  int? id;
  String name;
  String description;
  String image;
  String type;

  Animal({
    this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.type,
  });

  factory Animal.fromMap(Map<String, dynamic> data) {
    return Animal(
        id: data['id'],
        name: data['name'],
        description: data['description'],
        image: data['image'],
        type: data['type']);
  }
}

List<Animal> allAnimals = <Animal>[
  Animal(
    name: "Asiatic Lion",
    description:
        "Asiatic Lion (the rarest lion in the world now makes their home at Chester Zoo)Abyssinian Lion.",
    image:
        "https://www.ourendangeredworld.com/wp-content/uploads/2020/12/Asiatic-Lion.jpg.webp",
    type: "Lion",
  ),
  Animal(
    name: "African Lion",
    description:
        "These lions have a lot going against them to live healthy and joyous lives in their wild habitat.",
    image:
        "https://www.ourendangeredworld.com/wp-content/uploads/2020/12/African-Lion.jpg.webp",
    type: "Lion",
  ),
  Animal(
    name: "Katanga Lion",
    description:
        "These types of lions are designated as truly the Kings of the Jungle. This lion makes its home in family units or prides.",
    image:
        "https://www.ourendangeredworld.com/wp-content/uploads/2020/12/Katanga-Lion.jpg.webp",
    type: "Lion",
  ),
  Animal(
    name: "White Lion",
    description:
        "Anyone with a heart for wildlife, especially the lion community would feel heartbreaking for the White Lion and what they must endure. ",
    image:
        "https://www.ourendangeredworld.com/wp-content/uploads/2020/12/White-Lion.jpg.webp",
    type: "Lion",
  ),
  Animal(
    name: "Afghan Hound",
    description:
        "Among the most eye-catching of all dog breeds, the Afghan Hound is an aloof and dignified aristocrat of sublime beauty. ",
    image:
        "https://www.akc.org/wp-content/uploads/2017/11/Afghan-Hound-puppy-playing-with-a-ball-in-the-backyard.jpg",
    type: "Dog",
  ),
  Animal(
    name: "Akita",
    description:
        "Akitas are Japan’s entry in the ancient canine clan of spitz-type dogs bred around the world on the globe’s northern latitudes.",
    image:
        "https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/06155050/Akita-puppy-standing-in-the-grass.jpg",
    type: "Dog",
  ),
  Animal(
    name: "Polydactyl",
    description:
        "he extra toes sometimes make them look like their paws have thumbs. ",
    image:
        "https://cdn.britannica.com/91/181391-050-1DA18304/cat-toes-paw-number-paws-tiger-tabby.jpg?w=600&q=60",
    type: "Cat",
  ),
  Animal(
    name: "Calico",
    description:
        "It is impossible to clone a calico cat with the same markings, because of the random activation of genes.",
    image:
        "https://cdn.britannica.com/93/181393-050-9FC2E61A/cat-Alison-Eldridge-orange-Calico.jpg?w=600&q=60",
    type: "Cat",
  ),
  Animal(
    name: "British Shorthair",
    description:
        "The British Shorthair is known for both its looks and its typically easygoing and fun-loving personality.",
    image:
        "https://cdn.britannica.com/92/181392-050-08187DB5/cat-British-Shorthair-grey.jpg?w=600&q=60",
    type: "Cat",
  ),
  Animal(
    name: "Red-Eared Slider",
    description:
        "Red-eared sliders are one of the most popular of all aquatic turtle species.",
    image:
        "https://www.thesprucepets.com/thmb/9LtUvXIgC4pBFboPjteDPTSgGio=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/GettyImages-979443084-0adb9494f2dc49e08ce04f28af117be2.jpg",
    type: "Turtle",
  ),
  Animal(
    name: "African Sideneck Turtle",
    description:
        "These unique little aquatic turtles have distinctive long necks that can't be retracted fully into their shell.",
    image:
        "https://www.thesprucepets.com/thmb/XCLcNrCF88J-lpE0JAWu_VxfGe4=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/GettyImages-1094092102-7cd8c6ad71fd4c81ab05d74768f09a37.jpg",
    type: "Turtle",
  ),
  Animal(
    name: "Chital",
    description:
        "The chital also known as spotted deer is the most common deer species found in Indian forests and commonly inhabits wooded regions of Indian Subcontinent.",
    image:
        "https://cdn.walkthroughindia.com/wp-content/uploads/2013/01/Spotted-Deer-600x400.jpg",
    type: "Deer",
  ),
  Animal(
    name: "Barasingha",
    description:
        "The barasingha is twelve-tined swamp deer species distributed in the Indian subcontinent.",
    image:
        "https://cdn2.walkthroughindia.com/wp-content/uploads/2013/01/Barasingha-600x400.jpg",
    type: "Deer",
  ),
  Animal(
    name: "Sambar",
    description:
        "The sambar deer is largest deer species native to the Indian Subcontinent, live in woodland,dense cover,shrubs and grasses.",
    image:
        "https://cdn2.walkthroughindia.com/wp-content/uploads/2013/01/Sambar-Deer-600x400.jpg",
    type: "Deer",
  ),
  Animal(
    name: "Sangai",
    description:
        "The state animal of Manipur, Sangai is rare and endangered brow-antlered deer found only in Manipur.",
    image:
        "https://cdn2.walkthroughindia.com/wp-content/uploads/2015/06/Sangai_deer.jpg",
    type: "Deer",
  ),
];
