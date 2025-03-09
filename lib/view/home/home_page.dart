import 'package:cloud_project/model/data.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset("assets/app_images/logo.png", height: 80),
        centerTitle: true,
        actions: const [
          badges.Badge(
            badgeStyle: badges.BadgeStyle(badgeColor: Colors.blue),
            badgeContent: Text(
              '3',
              style: TextStyle(color: Colors.white),
            ),
            child: Icon(Icons.shopping_cart_outlined, size: 35),
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      drawer: const Drawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 35),
                child: Image.asset("assets/app_images/Theme.png"),
              ),
              const Text(
                "Maximum Note 8i",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 28),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Powered by a 10nm octa-core Qualcomm Snapdragon 712 AIE processor this phone can seamlessly execute any task. You can game more and multitask without experience any any lag. Experience a boost in performance and efficiency with this phone",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 35,
              ),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: AppsData.featuresList.length,
                shrinkWrap: true,
                separatorBuilder: (context, index) => const Padding(
                    padding: EdgeInsets.symmetric(
                  vertical: 20,
                )),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Image.asset(
                          AppsData.featuresList[index].image!,
                          fit: BoxFit.contain,
                          height: 50,
                          width: 70,
                          color: const Color.fromARGB(255, 202, 91, 0),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppsData.featuresList[index].title!,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18),
                            ),
                            Text(
                              AppsData.featuresList[index].subTitle!,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                decoration: const BoxDecoration(color: Colors.blue),
                child: const Text(
                  "Shop Now",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w800),
                ),
              ),
              const SizedBox(height: 50),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: AppsData.additionalFeaturesList.length,
                shrinkWrap: true,
                separatorBuilder: (context, index) =>
                    const Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Image.asset(
                          AppsData.additionalFeaturesList[index].image!,
                          fit: BoxFit.contain,
                          height: 40,
                          width: 40,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppsData.additionalFeaturesList[index].title!,
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 17),
                          ),
                          Text(
                            AppsData.additionalFeaturesList[index].subTitle!,
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 15),
                          ),
                        ],
                      )
                    ],
                  );
                },
              ),
              const SizedBox(
                height: 50,
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: AppsData.productList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      height: 370,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: .5)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 170,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 6,
                                  child: Image.asset(
                                    AppsData.productList[index].image![0],
                                    height: 170,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: Image.asset(
                                          AppsData.productList[index].image![1],
                                          fit: BoxFit.fill,
                                          width: double.infinity,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Expanded(
                                        child: Image.asset(
                                          AppsData.productList[index].image![2],
                                          fit: BoxFit.fill,
                                          width: double.infinity,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Text(
                            AppsData.productList[index].title!,
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w800,
                                fontSize: 20),
                          ),
                          const SizedBox(
                            height: 13,
                          ),
                          Text(
                            "Staring From \$ ${AppsData.productList[index].price!}",
                            style: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 17),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                border:
                                    Border.all(color: Colors.blue, width: 1)),
                            child: const Text(
                              "View Products",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 300,
                width: double.infinity,
                child: Stack(
                  children: [
                    Image.asset("assets/app_images/Theme.png"),
                    Positioned(
                      top: 50,
                      width: 80,
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: const BoxDecoration(
                            color: Colors.green, shape: BoxShape.circle),
                        child: Center(
                            child: Text(
                          "New",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "On  the Ear",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              Text(
                "Bluetooth Headset",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 28),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                  "The price of Havit H202d Headphone & Microphone starts from 500 . The price may vary due to your customization and product availability. You can buy Havit H202d Headphone & Microphone from our website or visit our showrooms nearby."),
              SizedBox(
                height: 15,
              ),
              Text("✔ 24*7 Customer Support"),
              Text("✔ Cash On Delivery"),
              Text("✔ 30 days replacement"),
              Text("✔ Fast Delivery"),
              Text("✔ 12K+ happy Customers"),
              Text("✔ 100% secure payment"),
              Text("✔ Quality Products"),
              Text("✔ Easy Returns"),
              SizedBox(
                height: 15,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                decoration: const BoxDecoration(color: Colors.blue),
                child: const Text(
                  "Shop Now",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w800),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Icon(Icons.person),
              RichText(
                  text: TextSpan(
                      text: "Our Creative",
                      style: TextStyle(color: Colors.black),
                      children: [
                    TextSpan(text: "Team", style: TextStyle(color: Colors.blue))
                  ])),
              Text(
                  "The price of Havit H202d Headphone & Microphone starts from 500 . The price may vary due to your customization and product availability. You can buy Havit H202d Headphone & Microphone from our website or visit our showrooms nearby."),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: TabBar(
                    labelPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    dividerColor: Colors.transparent,
                    isScrollable: true,
                    indicatorSize: TabBarIndicatorSize.tab,
                    unselectedLabelStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                    labelStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: Colors.white),
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.blue,
                    ),
                    controller: tabController,
                    tabs: [Text("Desks"), Text("Lamps"), Text("Services")]),
              ),
              SizedBox(
                height: 330,
                child: TabBarView(controller: tabController, children: [
                  Card(
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          AppsData.productList[1].image![0],
                          height: 200,
                          width: double.infinity,
                          fit: BoxFit.fill,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Lamps",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Desk Lamp",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 20),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text(
                                "\$ 1.00",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Text("Bangla"),
                  Text("Bangla"),
                ]),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 250,
                padding: EdgeInsets.symmetric(horizontal: 30),
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.grey.shade100),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Hurry up!",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 21,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Huge SALES",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.w900),
                        ),
                        Text("Up to 20% off on all products",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 21,
                                fontWeight: FontWeight.w600))
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 8),
                      decoration: const BoxDecoration(color: Colors.blue),
                      child: const Text(
                        "Shop Now",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.blue),
                child: Column(
                  children: [
                    Text("Subscribe to our weekly newsletter"),
                    Row(
                      children: [
                        Expanded(
                          flex: 8,
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Your Email",
                                fillColor: Colors.white,
                                filled: true),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.red,
                          ),
                        )
                      ],
                    ),
                    Icon(
                      Icons.abc,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 60,
                      width: double.infinity,
                      child: ListView.builder(
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                          );
                        },
                      ),
                    ),
                    Text(
                      "Category",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "Category",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "Category",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "Category",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "Category",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "Category",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
