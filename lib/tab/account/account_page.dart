import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          '프로필',
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.exit_to_app_outlined))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      width: 80,
                      height: 80,
                      child: CircleAvatar(
                        backgroundColor: Colors.lightGreen,
                        child: Image.asset('assets/youth2.png'),
                      ),
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      alignment: Alignment.bottomRight,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          SizedBox(
                              height: 28,
                              width: 28,
                              child: FloatingActionButton(
                                onPressed: () {},
                                backgroundColor: Colors.white,
                              )),
                          SizedBox(
                              height: 25,
                              width: 25,
                              child: FloatingActionButton(
                                onPressed: () {},
                                backgroundColor: Colors.green,
                                child: Icon(Icons.add),
                              )),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '신주봉',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                children: [Text('3', style: TextStyle(fontSize: 18),), Text('게시물')],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                children: [Text('0', style: TextStyle(fontSize: 18)), Text('팔로워')],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                children: [Text('0', style: TextStyle(fontSize: 18)), Text('팔로잉')],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
