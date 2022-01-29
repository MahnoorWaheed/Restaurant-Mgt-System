import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rest_mgt_systm/app/modules/constants/constant.dart';
import 'package:rest_mgt_systm/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  TextEditingController nameController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Container(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: Get.height * 0.25,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      colorFilter: ColorFilter.linearToSrgbGamma(),
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://static.toiimg.com/thumb/56933159.cms?imgsize=686279&width=800&height=800"),
                    ),
                  ),
                ),
                Text(
                  'Restaurant',
                  style: AppTextStyle.kTitle.copyWith(fontSize: 30.sp),
                ),
                Positioned(
                    right: 0.w,
                    top: 0.h,
                    child: PopupMenuButton(
                      onSelected: (value) {
                        switch (value) {
                          case 1:
                            Get.toNamed(Routes.CART_VIEW);
                            break;
                          case 2:
                            break;
                        }
                      },
                      iconSize: 40.h,
                      itemBuilder: (context) => [
                        PopupMenuItem(child: Text("Add New Portion"), value: 1),
                        PopupMenuItem(
                            child: Text("Change Layout Setting"), value: 2)
                      ],
                    )),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              children: [
                GridViewTable(
                  nameController: nameController,
                  priceController: priceController,
                  homeController: controller,
                ),
                GridViewTable(
                  nameController: nameController,
                  priceController: priceController,
                  homeController: controller,
                ),
                GridViewTable(
                  nameController: nameController,
                  priceController: priceController,
                  homeController: controller,
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

class GridViewTable extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController priceController;
  final HomeController homeController;
  GridViewTable({
    required this.nameController,
    required this.priceController,
    required this.homeController,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.h),
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Portion Name',
                  style: AppTextStyle.kPortionName.copyWith(fontSize: 15.sp),
                ),
                PopupMenuButton(
                  onSelected: (value) {
                    // Get.toNamed(Routes.CART_VIEW);
                    switch (value) {
                      case 1:
                        // do something
                        showDialog<void>(
                          context: context,
                          barrierDismissible: false, // user must tap button!
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Add Item to this portion'),
                              content: Container(
                                height: Get.height * 0.15,
                                padding: EdgeInsets.symmetric(
                                    vertical: 10.w, horizontal: 10.w),
                                child: Column(
                                  children: [
                                    TextField(
                                      controller: nameController,
                                      decoration: InputDecoration(
                                        hintText: 'Enter Item Name',
                                      ),
                                    ),
                                    TextField(
                                      controller: priceController,
                                      decoration: InputDecoration(
                                        hintText: 'Enter Price',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text('Approve'),
                                  onPressed: () {
                                    homeController.insertPortion(
                                        nameController.text,
                                        int.parse(priceController.text));
                                    Get.back();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                        break;
                      case 2:
                        // do something else
                        break;
                      case 3:
                        // do something else
                        break;
                    }
                  },
                  iconSize: 25.h,
                  itemBuilder: (context) => [
                    PopupMenuItem(child: Text("Add Item of burger"), value: 1),
                    PopupMenuItem(
                        child: Text("Edit Item Group Name"), value: 2),
                    PopupMenuItem(child: Text("Delete Item Group"), value: 3)
                  ],
                )
              ],
            ),
          ),
          GridView.count(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: 5,
            childAspectRatio: 1.0,
            padding: EdgeInsets.all(4.0),
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
            children: List.generate(7, (index) {
              return GestureDetector(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 8.h, vertical: 8.h),
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10.r)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Name $index'),
                      Text('Rs. 20$index'),
                      Text('Qty. ${index + 1}'),
                    ],
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
