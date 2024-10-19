import 'package:flutter/material.dart';

class SocialMediaPost extends StatefulWidget {
  const SocialMediaPost({super.key});

  @override
  State<SocialMediaPost> createState() => _SocialMediaPostState();
}

class _SocialMediaPostState extends State<SocialMediaPost> {
  bool liked = false;
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white60,
      body: SafeArea(
        child: SizedBox(
          height: 300,
          child: Card(
            color: Colors.white,
            elevation: 0,
            clipBehavior: Clip.antiAlias,
            child: Stack(
              clipBehavior: Clip.antiAlias,
              fit: StackFit.passthrough,
              children: [
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Card(
                      child: Image.asset(
                    "assets/world_tour.jpeg",
                    fit: BoxFit.fill,
                  )),
                ),
                Positioned(
                    top: 3,
                    left: 3,
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20))),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20),
                        child: Text(
                          'Music',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    )),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: IconButton(
                                onPressed: () {
                                  liked = !liked;
                                  setState(() {});
                                },
                                icon: liked
                                    ? const Icon(
                                        Icons.favorite,
                                        color: Colors.red,
                                      )
                                    : const Icon(
                                        Icons.favorite_outline,
                                      ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(0))),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Justin Bieber Tour',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18),
                                    ),
                                    Text('World tour events',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 13))
                                  ],
                                ),
                                Expanded(child: SizedBox()),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      '19 : 00',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18),
                                    ),
                                    Text('Wed, Jul 12',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 13))
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
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
