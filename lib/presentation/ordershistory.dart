import 'package:flutter/material.dart';
import 'package:intl/intl.dart'as intl;
import 'package:noor_s_application1/controllers/OrderController.dart';
import 'package:noor_s_application1/core/app_export.dart';
import 'package:noor_s_application1/core/utils/size_utils.dart';
import 'package:noor_s_application1/utils.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:noor_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:noor_s_application1/widgets/custom_bottom_bar.dart';
import 'package:get/get.dart';

class OrdersHistory extends StatefulWidget {
  OrdersHistory({Key? key}) : super(key: key);
  @override
  State<OrdersHistory> createState() => _OrdersHistoryState();
}

class _OrdersHistoryState extends State<OrdersHistory> {

  final OrderController orderController = Get.put(OrderController());
  @override
  Widget build(BuildContext context) {
    orderController.fetchOrders();
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Obx(
            () => orderController.orders.isEmpty
                ? Center(child: CircularProgressIndicator())
                : ListView.builder(
                    itemCount: orderController.orders.length,
                    itemBuilder: (context, index) {
                      final order = orderController.orders[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: Container(
                            width: 10,
                            height: 150,
                            decoration: BoxDecoration(
                              color: Colors.deepOrange,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                                Text(
                                  'اسم المنتج: ${order.products[0].name}',
                                  style: TextStyle(fontSize: 18,color: Colors.white70),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'الكمية: ${order.products[0].ordered.quantity}',
                                  style: TextStyle(fontSize: 18,color: Colors.white70),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'السعر: ${order.products[0].ordered.price}',
                                  style: TextStyle(fontSize: 18,color: Colors.white70),
                                ),
                                SizedBox(height: 10),
                                Text(

                                    'تاريخ الطلب: ${intl.DateFormat('dd/MM/yyyy').format(DateTime.parse(order.createdAt))}',


                                  style: TextStyle(fontSize: 18,color: Colors.white70),
                                ),
                                SizedBox(height: 10),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
          ),
        ),
      ),
    );
  }
}

PreferredSizeWidget _buildAppBar(BuildContext context) {
  return CustomAppBar(

      height: 62.v,
      leadingWidth: 50.h,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),

      title: AppbarTitleImage(
          imagePath: ImageConstant.imgVector,
          margin: EdgeInsets.only(left: 37.h),
          onTap: () {
            onTapVector(context);
          }),
      actions: [
        AppbarSubtitleFive(
            text: empName.toString(),
            margin: EdgeInsets.fromLTRB(23.h, 29.v, 15.h, 3.v)),
        AppbarTrailingCircleimage(
            imagePath: ImageConstant.imgEllipse2,
            margin: EdgeInsets.only(left: 13.h, top: 19.v, right: 38.h))
      ],
      styleType: Style.bgShadow);
}

onTapShoppingBagFI(BuildContext context) {
  Navigator.pushNamed(context, AppRoutes.shoppingBagScreen);
}

/// Navigates to the notificationsScreen when the action is triggered.
onTapVector(BuildContext context) {
  Navigator.pushNamed(context, AppRoutes.notificationsScreen);
}

class OrderInfoWidget extends StatelessWidget {
  final String orderDate;
  final String productName;
  final int quantity;
  final double price;

  OrderInfoWidget({
    required this.orderDate,
    required this.productName,
    required this.quantity,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.h,
      height: 200.v,
      decoration: BoxDecoration(
        color: Colors.deepOrange,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Order Date: $orderDate', style: TextStyle(fontSize: 18)),
          SizedBox(height: 10),
          Text('Product Name: $productName', style: TextStyle(fontSize: 18)),
          SizedBox(height: 10),
          Text('Quantity: $quantity', style: TextStyle(fontSize: 18)),
          SizedBox(height: 10),
          Text('Price: $price', style: TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}
