import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/cart_view_controller.dart';

class CartViewView extends GetView<CartViewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow[800],
          title: Text('Cart View'),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: 6,
            itemBuilder: (context, index) {
              return Card(
                margin: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
                child: Container(
                  height: Get.height * 0.15,
                  child: Row(
                    children: [
                      Container(
                        height: Get.height * 0.08,
                        width: Get.height * 0.08,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.r),
                            color: Colors.red,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://www.foxyfolksy.com/wp-content/uploads/2021/09/chicken-shawarma.jpg'),
                            )),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('Zinger Burger'),
                            Text('2'),
                            Text('220'),
                            Icon(Icons.delete)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }));
  }
}
