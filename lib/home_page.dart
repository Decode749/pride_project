import 'package:flutter/material.dart';
import 'package:pride_project/app_style.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<String> catagories = [
      'All Items',
      'AirForceOne',
      'Adidas',
      'Converse',
      'Nike high'
    ];
    int current = 0;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 218, 100, 239),
        title: Text(
          'Happy Pride Month',
          style: kInterMedium.copyWith(
            color: kBlack,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 135,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: kGrey,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                style: kInterRegular.copyWith(color: kBlack),
                controller: TextEditingController(),
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search_outlined),
                  hintText: 'Search your shoes',
                  border: kInputBorder,
                  enabledBorder: kInputBorder,
                  disabledBorder: kInputBorder,
                  focusedBorder: kInputBorder,
                  errorBorder: kInputBorder,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                'Get Best Design,Always!',
                style:
                    kInterSemibold.copyWith(fontSize: 12, color: Colors.green),
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(
              height: kPadding20,
            ),
            SizedBox(
              width: double.infinity,
              height: 36,
              child: ListView.builder(
                  itemCount: catagories.length,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          current == index;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                          left: index == 0 ? kPaddingHorizontal : 8,
                          right: index == catagories.length - 1
                              ? kPaddingHorizontal
                              : 0,
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        height: 36,
                        decoration: BoxDecoration(
                          color: current == index ? kBlack : kWhite,
                          borderRadius: BorderRadius.circular(8),
                          border: current == index
                              ? null
                              : Border.all(color: kGrey, width: 1),
                        ),
                        child: Center(
                          child: Text(
                            catagories[index],
                            style: kInterMedium.copyWith(
                              color: current == index ? kWhite : kBlack,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            const Divider(
              indent: 8,
              endIndent: 8,
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                'Popular Design',
                style: kInterBold.copyWith(color: kBlack, fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
