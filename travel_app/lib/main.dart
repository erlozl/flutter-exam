import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Friday, February 21",
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                ),
                SizedBox(
                  height: 5,
                ), // align은 크기가 전체를 가짐
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Go to the vacation",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search anything..",
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Container(
                        width: 50,
                        height: 50,
                        color: Colors.amber,
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: AspectRatio(
                    aspectRatio: 1.5 / 1,
                    // width / height
                    child: Image.asset(
                      "assets/banner.jpeg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Categorys",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    // ListView는 기본적으로 높이 설정을 해줘야 함
                    children: [
                      buildCategory("assets/camping.jpg", "Camping"),
                      SizedBox(
                        width: 20,
                      ),
                      buildCategory("assets/vacation.jpg", "Vacation"),
                      SizedBox(
                        width: 20,
                      ),
                      buildCategory("assets/camping.jpg", "Camping"),
                      SizedBox(
                        width: 20,
                      ),
                      buildCategory("assets/vacation.jpg", "Vacation"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.near_me),
            label: (""),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: (""),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: (""),
          )
        ],
      ),
    );
  }

  Widget buildCategory(String imageUrl, String title) {
    return Container(
      width: 150,
      // color: Colors.redAccent, 컨테이너에 색깔이 있으면 오류
      decoration: BoxDecoration(
        border: Border.all(width: 1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AspectRatio(
              aspectRatio: 1 / 0.7,
              child: FittedBox(
                child: Image.asset(imageUrl),
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(title),
          ],
        ),
      ),
    );
  }
}
