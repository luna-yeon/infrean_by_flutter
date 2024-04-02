import 'package:flutter/material.dart';

class HellpFlutter extends StatelessWidget {
  const HellpFlutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //화면에 보여지는 영역
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Hello Flutter",
            style: TextStyle(fontSize: 28),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(32),
                  child: Image.network(
                    "https://i.ibb.co/CwzHq4z/trans-logo-512.png",
                    width: 81, //이미지 너비 조절
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "이메일",
                  ),
                ),
                TextField(
                  obscureText: true, //비밀번호 숨기기
                  decoration: InputDecoration(
                    labelText: "비밀번호",
                  ),
                ),
                Container(
                  width: double.infinity, //너비 조절
                  margin: EdgeInsets.only(top: 24),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("로그인"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
