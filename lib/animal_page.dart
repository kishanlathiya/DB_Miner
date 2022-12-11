import 'package:flutter/material.dart';
import 'animal_modal.dart';
import 'database_helper.dart';

class AnimalPage extends StatefulWidget {
  const AnimalPage({Key? key}) : super(key: key);

  @override
  State<AnimalPage> createState() => _AnimalPageState();
}

class _AnimalPageState extends State<AnimalPage> {
  @override
  Widget build(BuildContext context) {
    dynamic res = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(context, "/", (route) => false);
          },
        ),
        backgroundColor: Colors.black.withOpacity(0.6),
        centerTitle: true,
        title: Text("$res"),
      ),
      body: FutureBuilder(
        future: DBHelper.dbHelper.fetchData(type: '$res'),
        builder: (BuildContext context, AsyncSnapshot<List<Animal>> snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text("ERROR : ${snapshot.error}"),
            );
          } else if (snapshot.hasData) {
            List<Animal>? allAnimalsList = snapshot.data;
            return Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://source.unsplash.com/random/?$res"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                    ),
                  ),
                ),
                ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    const SizedBox(
                      height: 120,
                    ),
                    SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: allAnimalsList!
                            .map((e) => Container(
                                  margin: const EdgeInsets.only(
                                      bottom: 30, right: 25, top: 10),
                                  height: 333,
                                  width: 310,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    // border: Border.all(color: Colors.black54, width: 1),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black54,
                                        offset: Offset(2, 6),
                                        blurRadius: 4,
                                        spreadRadius: 8,
                                      )
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 200,
                                        width: 310,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          image: DecorationImage(
                                              image: NetworkImage(e.image),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Column(
                                          children: [
                                            Text(
                                              e.name,
                                              style: const TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              e.description,
                                              style: const TextStyle(
                                                fontSize: 16,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ))
                            .toList(),
                      ),
                    ),
                  ],
                )
              ],
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
