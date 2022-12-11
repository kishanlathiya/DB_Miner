import 'package:flutter/material.dart';
import 'animal_modal.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        leading: const IconButton(
            onPressed: null,
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            )),
        centerTitle: true,
        title: const Text("Animal Biography"),
        backgroundColor: Colors.black.withOpacity(0.6),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(20),
        children: AnimalsType.animalType
            .map((e) => Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed("animal_page", arguments: "$e");
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 220,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://source.unsplash.com/random/?$e"),
                              fit: BoxFit.cover),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54,
                              offset: Offset(3, 6),
                              blurRadius: 6,
                              spreadRadius: 5,
                            )
                          ],
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          color: Colors.black.withOpacity(0.4),
                          child: Text(
                            "$e",
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 35),
                  ],
                ))
            .toList(),
      ),
    );
  }
}
