import 'package:flutter/material.dart';
import 'package:uzum_clone/model/uzumModel.dart';
import 'package:uzum_clone/service/uzumService.dart';

class MashhurPage extends StatefulWidget {
  const MashhurPage({super.key});

  @override
  State<MashhurPage> createState() => _YangiPageState();
}

class _YangiPageState extends State<MashhurPage> {
  @override
  Widget build(BuildContext context) {
    double m_h = MediaQuery.of(context).size.height;
    double m_w = MediaQuery.of(context).size.width;
    return FutureBuilder(
        future: UzumService().getUzum(),
        builder: (context, AsyncSnapshot snapshot) {
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
            return RefreshIndicator.adaptive(
              onRefresh: () {
                return Future.delayed(Duration.zero)
                    .then((value) => UzumService().getUzum());
              },
              child: Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.6, crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: m_w * 0.02,
                              bottom: m_h * 0.02,
                              right: m_w * 0.02),
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, "mashhur",arguments: data.top[index]);
                            },
                            child: Container(
                              width: m_w * 0.5,
                              height: m_h * 0.25,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(12)),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          data.top[index].img.toString()),
                                      fit: BoxFit.fill)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 121, 255, 159),
                                        borderRadius: BorderRadius.horizontal(
                                            left: Radius.circular(5),
                                            right: Radius.circular(5))),
                                    child: const Text(
                                      "Katta sotuvlar",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                data.top[index].title.toString(),
                                style: const TextStyle(
                                    overflow: TextOverflow.ellipsis),
                              ),
                              SizedBox(
                                height: m_h * 0.012,
                              ),
                              Text(
                                data.top[index].oyiga.toString(),
                                style: TextStyle(
                                    backgroundColor: Colors.yellow.shade200),
                              ),
                              SizedBox(
                                height: m_h * 0.012,
                              ),
                              Text(
                                data.top[index].chegirma.toString(),
                                style: TextStyle(
                                    fontSize: 11,
                                    decoration: TextDecoration.lineThrough,
                                    color: Colors.blueGrey.shade400),
                              ),
                              Row(
                                children: [
                                  Text(data.top[index].narx.toString(),
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: m_w * 0.1,
                                      ),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                            Icons.shopping_bag_outlined),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                  itemCount: data.top.length,
                ),
              ),
            );
          }
        });
  }
}
