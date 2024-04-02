import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Food Recipe",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   onPressed: () {},
          // ),
          actions: [
            IconButton(
                onPressed: () {}, icon: Icon(Icons.person_outline_outlined))
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text('닉네임'),
                accountEmail: Text('hello@world.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage:
                      AssetImage('https://i.ibb.co/CwzHq4z/trans-logo-512.png'),
                ),
              ),
              SizedBox(
                height: 100,
                // width: 20,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      color: Colors.green,
                      child: Center(
                        child: Text(
                          'Sale Event',
                          style: TextStyle(fontSize: 50),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.pink,
                      child: Center(
                        child: Text(
                          'Sale Event',
                          style: TextStyle(fontSize: 50),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.deepPurpleAccent,
                      child: Center(
                        child: Text(
                          'Sale Event',
                          style: TextStyle(fontSize: 50),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.purple,
                      child: Center(
                        child: Text(
                          'Sale Event',
                          style: TextStyle(fontSize: 50),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Text('구매내역'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                title: Text('저장한 레시피'),
                trailing: Icon(Icons.arrow_forward_ios),
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: "상품을 검색해주세요",
                    suffixIcon: Icon(Icons.search),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
                _buildFoodContainer(
                    '수제버거', 'https://i.ibb.co/VtK43vv/burger.jpg'),
                _buildFoodContainer(
                    '건강식', 'https://i.ibb.co/VtK43vv/burger.jpg'),
                _buildFoodContainer(
                    '한식', 'https://i.ibb.co/VtK43vv/burger.jpg'),
                _buildFoodContainer(
                    '디저트', 'https://i.ibb.co/VtK43vv/burger.jpg'),
                _buildFoodContainer(
                    '피자', 'https://i.ibb.co/VtK43vv/burger.jpg'),
                _buildFoodContainer(
                    '볶음밥', 'https://i.ibb.co/VtK43vv/burger.jpg'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFoodContainer(String foodName, String foodImgUrl) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Stack(
        children: [
          Image.network(
            foodImgUrl,
            width: double.infinity, //너비 조절
            height: 100,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              foodName,
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Food {
  String? name;
  String? path;
}
