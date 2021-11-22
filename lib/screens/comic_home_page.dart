import 'package:comic/screens/comic_top_author_page.dart';
import 'package:comic/screens/comin_profile_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ComicHomePage extends StatefulWidget {
  const ComicHomePage({Key? key}) : super(key: key);

  @override
  _ComicHomePageState createState() => _ComicHomePageState();
}

class _ComicHomePageState extends State<ComicHomePage> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: buildBottomWidget(),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 34,
            child: Container(
              height: 440,
              decoration: BoxDecoration(
                  // color: Colors.pink,
                  ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 52,
                            width: 52,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  top: 0,
                                  bottom: 0,
                                  child: InkWell(
                                    onTap: () {
                                      Get.to(ComicProfilePage());
                                    },
                                    child: Container(
                                      height: 52,
                                      width: 52,
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        border: Border.all(
                                            color: Colors.white, width: 2),
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                          image: NetworkImage(
                                              'https://i.pravatar.cc/300'),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 0,
                                  top: 0,
                                  child: CircleAvatar(
                                    radius: 8,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(12, 8, 0, 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Good Afternoon',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  'Mira Suxi',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 54,
                            width: 54,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              icon: Icon(
                                Icons.apps,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // SizedBox(height: 8,),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 10),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(36)),
                        child: TextField(
                            controller: _textEditingController,
                            decoration: InputDecoration(
                              icon: Icon(Icons.search),
                              border: InputBorder.none,
                              hintText: 'Search Comic',
                              suffixIcon: Icon(Icons.tune),
                            )),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Trending Comic'),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.more_horiz),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16, top: 4),
                            child: ListView.builder(
                              itemCount: 8,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(right: 16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          width: 120,
                                          decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                  'https://cdn.pixabay.com/photo/2018/08/31/08/35/toys-3644073_960_720.png'),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 4),
                                        child: Text(
                                          'Solo Leveling',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'by Chugong',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey[600],
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildBottomWidget() {
    return PhysicalModel(
      elevation: 2,
      color: Colors.black.withOpacity(0.5),
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(24),
        topLeft: Radius.circular(24),
      ),
      child: Container(
        height: 340,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(24),
            topLeft: Radius.circular(24),
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Container(
                  height: 4,
                  width: 24,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
              flex: 1,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Top Author',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Get.to(ComicTopAuthorPage());
                          },
                          icon: Icon(Icons.more_horiz),
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 2),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                PhysicalModel(
                                  color: Colors.black.withOpacity(0.6),
                                  borderRadius: BorderRadius.circular(48),
                                  shape: BoxShape.circle,
                                  elevation: 7,
                                  child: Container(
                                    height: 64,
                                    width: 64,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Colors.white, width: 3),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            'https://i.pravatar.cc/300'),
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  'Codepretation',
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.grey),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              flex: 5,
            ),
            SizedBox(
              height: 2,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(24),
                    topLeft: Radius.circular(24),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.orangeAccent,
                      Colors.orange,
                      Colors.redAccent,
                      Colors.red,
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 8,
                    ),
                    Expanded(
                      child: Center(
                        child: Container(
                          height: 4,
                          width: 24,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),
                      flex: 1,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Continue Reading',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),
                            IconButton(
                              onPressed: () {
                                Get.to(ComicTopAuthorPage());
                              },
                              icon: Icon(Icons.more_horiz),
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                      flex: 2,
                    ),
                    Expanded(
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: StadiumBorder(),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 1),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  NetworkImage('https://i.pravatar.cc/300'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('Martial Peak'),
                                  Text('Chapter 201'),
                                ],
                              ),
                            ),
                            Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.keyboard_arrow_right_outlined),
                            ),
                          ],
                        ),
                      ),
                      flex: 6,
                    ),
                    SizedBox(
                      height: 9,
                    ),
                  ],
                ),
              ),
              flex: 4,
            ),
          ],
        ),
      ),
    );
  }
}
