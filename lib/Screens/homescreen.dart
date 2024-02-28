import 'package:flutter/material.dart';
import 'package:ecommerce/Constants/appstyle.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late final TabController _tabController=TabController(length: 3, vsync: this);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/top_picture.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
              child:Container(
              width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: EdgeInsets.only(left:16,top:16),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    Text(
                      'Athletic Shoes',
                      style: appstyle(24, Colors.white, FontWeight.bold),
                    ),
                    Text(
                      'Collection',
                      style: appstyle(24, Colors.white, FontWeight.bold),
                    ),
                    SizedBox(height:10),
                    TabBar(
                     indicator: BoxDecoration(),
                     controller: _tabController,
                     isScrollable: true,
                     labelColor: Colors.white,
                     labelStyle: appstyle(18, Colors.white, FontWeight.bold),
                     unselectedLabelColor: Colors.grey.withOpacity(0.3),
                     labelPadding: EdgeInsets.symmetric(horizontal: 16.0),
                     tabs: [
                      Tab(text: 'Mens Shoes'),
                      Tab(text: 'Womens Shoes'),
                      Tab(text: 'Kids Shoes'),
                          ],
                    ) 
                   ],
                  ),
                ),
            ),
            ),
            Padding(
              padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.2),
              child: TabBarView(
                  controller: _tabController,
                  children: [
                    Column(
                      children: [
                        Container(
                          height:MediaQuery.of(context).size.height*0.405,
                          color: Colors.grey,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Latest Shoes',style:appstyletext(24, Colors.black, FontWeight.bold)),
                            Row(
                              children: [
                                Text('Show all',style:appstyletext(24, Colors.black, FontWeight.bold)),
                                Icon(Icons.arrow_forward,size: 20)])
                          ],
                        )
                      ],

                    ),
                    Column(
                      children: [
                        Container(
                          height:MediaQuery.of(context).size.height*0.405,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height:MediaQuery.of(context).size.height*0.405,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ]),
            )
          ],

        ),

      ),
    );
  }
}