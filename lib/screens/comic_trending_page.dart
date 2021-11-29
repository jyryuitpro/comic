import 'package:flutter/material.dart';

class ComicTrendingPage extends StatefulWidget {
  const ComicTrendingPage({Key? key}) : super(key: key);

  @override
  _ComicTrendingPageState createState() => _ComicTrendingPageState();
}

class _ComicTrendingPageState extends State<ComicTrendingPage> {
  List<String> dropItems = [
    'All Comic',
    'Action',
    'School',
    'Medical',
    'Sports'
  ];

  String selectedItem = 'All Comic';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
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
                              onTap: () {},
                              child: Container(
                                height: 52,
                                width: 52,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  border:
                                      Border.all(color: Colors.white, width: 2),
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
                              radius: 10,
                              backgroundColor: Colors.teal,
                              foregroundColor: Colors.white,
                              child: Text('2'),
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(36)),
                  child: DropdownButton<String>(
                    value: selectedItem,
                    onChanged: (value) {
                      setState(() {
                        selectedItem = value!;
                      });
                    },
                    isExpanded: true,
                    underline: Container(),
                    items: dropItems
                        .map(
                          (e) => DropdownMenuItem<String>(
                            child: Text('$e'),
                            value: e,
                            onTap: () {},
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
            ),
            // SizedBox(
            //   height: 8,
            // ),
            Expanded(
              flex: 15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, top: 4),
                      child: ListView.builder(
                        itemCount: 8,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding:
                                const EdgeInsets.only(right: 16, bottom: 16),
                            child: SizedBox(
                              height: 160,
                              child: Card(
                                elevation: 8,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 3,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            color: Colors.brown,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 10,
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 16),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text('Volcanic age', style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.grey,
                                                      ),),
                                                      SizedBox(height: 8,),
                                                      Text('By TurtleMe', style: TextStyle(
                                                        fontSize: 13,
                                                      ),),
                                                    ],
                                                  ),
                                                  Spacer(),
                                                  CircleAvatar(
                                                    backgroundColor: Colors.grey[400],
                                                    foregroundColor: Colors.black,
                                                    child: Icon(Icons.cloud_download),
                                                  ),
                                                ],
                                              ),
                                              Spacer(),
                                              Row(
                                                children: [
                                                  Text('Next Chapter 87'),
                                                  Spacer(),
                                                  Text('45k View'),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
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
    );
  }
}
