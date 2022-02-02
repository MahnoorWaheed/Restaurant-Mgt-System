import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rest_mgt_systm/app/modules/constants/constant.dart';

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
                            showDialog<void>(
                              context: context,
                              barrierDismissible:
                                  false, // user must tap button!
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Center(child: Text('Add New Portion')),
                                  content: Container(
                                    height: Get.height * 0.2,
                                    width: Get.width - 50.w,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        TextField(
                                          decoration: InputDecoration(
                                            hintText: 'Enter portion name',
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey,
                                                  width: 1.0),
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            controller.queryPortion();
                                            Get.back();
                                          },
                                          child: Container(
                                            height: Get.height * 0.07,
                                            decoration: BoxDecoration(
                                                color: Colors.green,
                                                borderRadius:
                                                    BorderRadius.circular(10.r),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Colors.green
                                                          .withOpacity(0.5),
                                                      spreadRadius: 3,
                                                      blurRadius: 7,
                                                      offset: Offset(0, 2)),
                                                ]),
                                            child: Center(
                                                child: Text(
                                              'ADD',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20.sp,
                                                  color: Colors.white),
                                            )),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                            break;
                          case 2:
                            showDialog<void>(
                              context: context,
                              barrierDismissible:
                                  false, // user must tap button!
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Center(child: Text('Layout Change')),
                                  content: Container(
                                    height: Get.height * 0.25,
                                    width: Get.width - 50.w,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            ColumnCountButton(
                                              title: '1',
                                              onTap: () {
                                                controller
                                                    .changeCrossAxisCount(1);
                                              },
                                            ),
                                            ColumnCountButton(
                                              title: '2',
                                              onTap: () {
                                                controller
                                                    .changeCrossAxisCount(2);
                                              },
                                            ),
                                            ColumnCountButton(
                                              title: '3',
                                              onTap: () {
                                                controller
                                                    .changeCrossAxisCount(3);
                                              },
                                            ),
                                            ColumnCountButton(
                                              title: '4',
                                              onTap: () {
                                                controller
                                                    .changeCrossAxisCount(4);
                                              },
                                            ),
                                            ColumnCountButton(
                                              title: '5',
                                              onTap: () {
                                                controller
                                                    .changeCrossAxisCount(5);
                                              },
                                            ),
                                          ],
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Back Color',
                                              style: TextStyle(fontSize: 10.sp),
                                            ),
                                            Expanded(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  ColorCategory(
                                                    // controller: controller,
                                                    color: '0xffe0f7fa',
                                                    // categoty: '',
                                                    onTap: () {
                                                      controller
                                                          .changeBackColor(
                                                              0xffe0f7fa);
                                                    },
                                                  ),
                                                  ColorCategory(
                                                    // controller: controller,
                                                    color: '0xffFFFFFF',
                                                    // categoty: '',
                                                    onTap: () {
                                                      controller
                                                          .changeBackColor(
                                                              0xffFFFFFF);
                                                    },
                                                  ),
                                                  ColorCategory(
                                                    // controller: controller,
                                                    color: '0xfffff9c4',
                                                    // categoty: '',
                                                    onTap: () {
                                                      controller
                                                          .changeBackColor(
                                                              0xfffff9c4);
                                                    },
                                                  ),
                                                  ColorCategory(
                                                    // controller: controller,
                                                    color: '0xff90caf9',
                                                    // categoty: '',
                                                    onTap: () {
                                                      controller
                                                          .changeBackColor(
                                                              0xff90caf9);
                                                    },
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Back Table Color',
                                              style: TextStyle(fontSize: 10.sp),
                                            ),
                                            Expanded(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  ColorCategory(
                                                    // controller: controller,
                                                    color: '0xffe8f5e9',
                                                    // categoty: '',
                                                    onTap: () {
                                                      controller
                                                          .changeBackTableColor(
                                                              0xffe8f5e9);
                                                    },
                                                  ),
                                                  ColorCategory(
                                                    // controller: controller,
                                                    color: '0xffbdbdbd',
                                                    // categoty: '',
                                                    onTap: () {
                                                      controller
                                                          .changeBackTableColor(
                                                              0xffbdbdbd);
                                                    },
                                                  ),
                                                  ColorCategory(
                                                    // controller: controller,
                                                    color: '0xffffe082',
                                                    // categoty: '',
                                                    onTap: () {
                                                      controller
                                                          .changeBackTableColor(
                                                              0xffffe082);
                                                    },
                                                  ),
                                                  ColorCategory(
                                                    // controller: controller,
                                                    color: '0xff9fa8da',
                                                    // categoty: '',
                                                    onTap: () {
                                                      controller
                                                          .changeBackTableColor(
                                                              0xff9fa8da);
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Empty Table Color',
                                              style: TextStyle(fontSize: 10.sp),
                                            ),
                                            Expanded(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  ColorCategory(
                                                    // controller: controller,
                                                    color: '0xffb2ebf2',
                                                    // categoty: '',
                                                    onTap: () {
                                                      controller
                                                          .changeEmptyTableColor(
                                                              0xffb2ebf2);
                                                    },
                                                  ),
                                                  ColorCategory(
                                                    // controller: controller,
                                                    color: '0xffeceff1',
                                                    // categoty: '',
                                                    onTap: () {
                                                      controller
                                                          .changeEmptyTableColor(
                                                              0xffeceff1);
                                                    },
                                                  ),
                                                  ColorCategory(
                                                    // controller: controller,
                                                    color: '0xfffff59d',
                                                    // categoty: '',
                                                    onTap: () {
                                                      controller
                                                          .changeEmptyTableColor(
                                                              0xfffff59d);
                                                    },
                                                  ),
                                                  ColorCategory(
                                                    // controller: controller,
                                                    color: '0xffc5cae9',
                                                    //categoty: '',
                                                    onTap: () {
                                                      controller
                                                          .changeEmptyTableColor(
                                                              0xffc5cae9);
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Amount Color',
                                              style: TextStyle(fontSize: 10.sp),
                                            ),
                                            Expanded(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  ColorCategory(
                                                    // controller: controller,
                                                    color: '0xffe0e0e0',
                                                    // categoty: '',
                                                    onTap: () {
                                                      controller
                                                          .changeAmountColor(
                                                              0xffe0e0e0);
                                                    },
                                                  ),
                                                  ColorCategory(
                                                    // controller: controller,
                                                    color: '0xff000000',
                                                    // categoty: '',
                                                    onTap: () {
                                                      controller
                                                          .changeAmountColor(
                                                              0xff000000);
                                                    },
                                                  ),
                                                  ColorCategory(
                                                    // controller: controller,
                                                    color: '0xffef6c00',
                                                    // categoty: '',
                                                    onTap: () {
                                                      controller
                                                          .changeAmountColor(
                                                              0xffef6c00);
                                                    },
                                                  ),
                                                  ColorCategory(
                                                    // controller: controller,
                                                    color: '0xff3f51b5',
                                                    // categoty: '',
                                                    onTap: () {
                                                      controller
                                                          .changeAmountColor(
                                                              0xff3f51b5);
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  actions: <Widget>[
                                    TextButton(
                                      child: const Text('Go Back'),
                                      onPressed: () {
                                        Get.back();
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
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
                ElevatedButton(
                  onPressed: () {
                    controller.queryPortion();
                  },
                  child: Text('hello'),
                )
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
                  onTap: () {},
                ),
                GridViewTable(
                  nameController: nameController,
                  priceController: priceController,
                  homeController: controller,
                  onTap: () {},
                ),
                GridViewTable(
                  nameController: nameController,
                  priceController: priceController,
                  homeController: controller,
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

class ColumnCountButton extends StatelessWidget {
  const ColumnCountButton({
    required this.onTap,
    required this.title,
  });
  final VoidCallback onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: Get.height * 0.04,
        width: Get.height * 0.04,
        decoration: BoxDecoration(
          color: Colors.indigo,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Text(title,
              style: AppTextStyle.kTitle.copyWith(
                fontSize: 10.sp,
                color: Colors.white,
              )),
        ),
      ),
    );
  }
}

class ColorCategory extends StatelessWidget {
  const ColorCategory({
    required this.color,
    required this.onTap,
  });

  final String color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: Get.height * 0.04,
        width: Get.width * 0.08,
        decoration: BoxDecoration(
          color: Color(int.parse(color)),
          border: Border.all(color: Colors.black),
        ),
      ),
    );
  }
}

class GridViewTable extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController priceController;
  final HomeController homeController;
  final VoidCallback onTap;
  GridViewTable({
    required this.nameController,
    required this.priceController,
    required this.homeController,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        margin: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
        padding: EdgeInsets.symmetric(vertical: 10.h),
        color: homeController.backColor.value,
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
                      PopupMenuItem(
                          child: Text("Add Item of burger"), value: 1),
                      PopupMenuItem(
                          child: Text("Edit Item Group Name"), value: 2),
                      PopupMenuItem(child: Text("Delete Item Group"), value: 3)
                    ],
                  )
                ],
              ),
            ),
            Obx(
              () => GridView.count(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: homeController.crossAxisCount.value,
                childAspectRatio: 1.0,
                padding: EdgeInsets.all(4.0),
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 4.0,
                children: List.generate(
                  homeController.datalist.length,
                  (index) {
                    return GestureDetector(
                      child: Obx(
                        () => Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 8.h, vertical: 8.h),
                          padding: EdgeInsets.only(top: 5.h),
                          decoration: BoxDecoration(
                              color: homeController.backTableColor.value,
                              borderRadius: BorderRadius.circular(10.r)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(homeController.datalist[index]['dataName'],
                                  // 'Name $index',
                                  style: AppTextStyle.kItemName
                                      .copyWith(fontSize: 11.sp)),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 3.w, vertical: 4.h),
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(10.r),
                                      bottomLeft: Radius.circular(10.r),
                                    )),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      homeController.datalist[index]
                                          ['dataPrice'],
                                      style: TextStyle(
                                          color:
                                              homeController.amountColor.value),
                                    ),
                                    Text(
                                      homeController.datalist[index]['dataQty'],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
