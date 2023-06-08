import 'package:flutter/material.dart';
import 'package:uzum_clone/model/uzumModel.dart';
import 'package:uzum_clone/service/uzumService.dart';
import 'package:uzum_clone/ui/category/MashhurPage.dart';
import 'package:uzum_clone/ui/category/YangiPage.dart';
import 'package:uzum_clone/ui/category/YozgiPage.dart';

class BoshSahifa extends StatefulWidget {
  const BoshSahifa({super.key});

  @override
  State<BoshSahifa> createState() => _BoshSahifaState();
}

class _BoshSahifaState extends State<BoshSahifa> with TickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double m_h = MediaQuery.of(context).size.height;
    double m_w = MediaQuery.of(context).size.width;

    return FutureBuilder(
      future: UzumService().getUzum(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        } else if (snapshot.data is String) {
          return Center(
            child: Text(snapshot.data.toString()),
          );
        } else {
          var data = snapshot.data as UzumModel;
          return Column(
            children: [
              SizedBox(
                height: m_h*0.3,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(
                        left: 10,
                      ),
                      width: m_w * 1,
                      height: m_h * 0.3,
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12)),
                          color: Colors.blueAccent,
                          image: DecorationImage(
                              image: NetworkImage(
                                  data.list1[index].img.toString()),
                              fit: BoxFit.fill)),
                    );
                  },
                  itemCount: data.list1.length,
                ),
              ),
              Expanded(
                  flex: 0,
                  child: TabBar(
                    controller: _tabController,
                    labelPadding: const EdgeInsets.only(top: 0),
                    labelColor: Colors.black,
                    indicatorColor: Colors.purple.shade500,
                    indicatorPadding: const EdgeInsets.only(bottom: 7),
                    indicatorSize: TabBarIndicatorSize.label,
                    tabs: const [
                      Tab(
                        text: "Yozgi savdo",
                      ),
                      Tab(
                        text: "Mahshur",
                      ),
                      Tab(
                        text: "Yangi",
                      ),
                    ],
                  )),
              Expanded(
                  // flex: 1,
                  child: TabBarView(
                      controller: _tabController, children: _category)),
            ],
          );
        }
      },
    );
  }

  final List<Widget> _category = const [
    YozgiSavdoPage(),
    MashhurPage(),
    YangiPage()
  ];
}
