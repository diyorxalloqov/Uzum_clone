import 'package:flutter/material.dart';

class BoshAppBar extends StatelessWidget {
  const BoshAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.white,
      actions: [
        Expanded(
          child: Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 18),
              height: 35,
              width: 370,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey.shade100,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 320,
                    height: 60,
                    child: TextFormField(
                      // onTap: () {
                        // 
                      // },
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                           icon: Icon(Icons.search,color: Colors.grey),
                          hintText: 'Mahsulot va toifalarni qidirish',
                          hintStyle: TextStyle(color: Colors.grey)),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
