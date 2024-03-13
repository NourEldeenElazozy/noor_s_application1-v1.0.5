import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noor_s_application1/controllers/ProductsController.dart';
import 'package:noor_s_application1/core/app_export.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:noor_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:noor_s_application1/widgets/custom_elevated_button.dart';
import 'package:noor_s_application1/widgets/custom_icon_button.dart';
import 'package:noor_s_application1/presentation/main_page_display_a_product_how_many_picses_dialog/main_page_display_a_product_how_many_picses_dialog.dart';

class MainPageDisplayAProductScreen extends StatelessWidget {
  final String ?productId;

  MainPageDisplayAProductScreen({Key? key, this.productId}) : super(key: key);
  final ProductsController productController = Get.put(ProductsController());

  @override
  Widget build(BuildContext context) {
    print("productId:$productId");

    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: FutureBuilder(
                        future: productController.getoneProduct(int.parse(productId.toString())),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState == ConnectionState.waiting) {
                            return Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Center(child: Container(
                                  height: 150.v,
                                  width: 150.h,
                                  child: CircularProgressIndicator())),
                            );
                          }else{
                            return SizedBox(
                                height: 927.v,
                                width: double.maxFinite,
                                child:
                                Stack(alignment: Alignment.bottomCenter, children: [
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: SizedBox(
                                          height: 628.v,
                                          width: double.maxFinite,
                                          child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                InkWell(
                                                  onTap: () {
                                                    showDialog(
                                                      context: context,
                                                      builder: (BuildContext context) {
                                                        return ImageViewDialog(imagePath: "https://zadstorely.ly/public/assets/images/products/${productController.OneProduct.first.images.first.img}");
                                                      },
                                                    );
                                                  },
                                                  child: CustomImageView(
                                                  imagePath:
                                                  "https://zadstorely.ly/public/assets/images/products/${productController.OneProduct.first.images.first.img}",
                                                      height: 628.v,
                                                      width: 428.h,
                                                      alignment: Alignment.center),
                                                ),
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Padding(
                                                        padding: EdgeInsets.symmetric(
                                                            horizontal: 21.h),
                                                        child: Column(
                                                            mainAxisSize:
                                                            MainAxisSize.min,
                                                            crossAxisAlignment:
                                                            CrossAxisAlignment.end,
                                                            children: [
                                                              _buildAppBar(context,int.parse(productController.OneProduct.first.id),productController.OneProduct.first.name,double.parse(productController.OneProduct.first.price),"https://zadstorely.ly/public/assets/images/products/${productController.OneProduct.first.images.first.img}"),
                                                              SizedBox(height: 16.v),

                                                              SizedBox(height: 355.v),
                                                              CustomElevatedButton(
                                                                  height: 41.v,
                                                                  width: 102.h,
                                                                  text: "${productController.OneProduct.first.price} د.ل",
                                                                  buttonStyle:
                                                                  CustomButtonStyles
                                                                      .fillWhiteA,
                                                                  buttonTextStyle:
                                                                  CustomTextStyles
                                                                      .titleLargePrimary)
                                                            ])))
                                              ]))),
                                  _buildLineNine(context)
                                ]));
                          }
                        }


                        )
                        )
                        )
                        )
    );
  }


  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context,id,name,price,image) {
    return CustomAppBar(
        height: 45.v,
        leadingWidth: 67.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 22.h),
            onTap: () {
              onTapArrowLeft(context);
            }),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgFavoriteFill0,
              margin: EdgeInsets.symmetric(horizontal: 21.h),
              onTap: () {


                productController.addfavProduct(id:id,name: name,image: image,price:price  );
                GetSnackBar(title: "done",message: "تم الإضافة الي المفضلة بنجاح",);
              })
        ]);
  }

  /// Section Widget
  Widget _buildLineNine(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            padding: EdgeInsets.all(14.h),
            decoration: AppDecoration.fillWhiteA
                .copyWith(borderRadius: BorderRadiusStyle.customBorderTL20),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              SizedBox(
                  width: 50.h,
                  child: Divider(
                      color: theme.colorScheme.errorContainer.withOpacity(1))),
              SizedBox(height: 26.v),
            Padding(
              padding: EdgeInsets.only(top: 3.v, bottom: 5.v),
              child: Container(
                width: 200.h,
                height: 60.v,
                child: ListView.builder(

                  scrollDirection: Axis.horizontal,
                  itemCount: productController.OneProduct.first.colors.length,
                  itemBuilder: (context, index) {
                    final color = productController.OneProduct.first.colors[index].color;
                    return Obx(
                          () => InkWell(
                        onTap: () {
                          productController.setSelectedColor(color);
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(int.parse(color.replaceAll("#", "0xFF"))),
                          ),
                          child: productController.selectedColor.value == color
                              ? Icon(
                            Icons.check,
                            color: Colors.white,
                          )
                              : null,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 3.v, bottom: 5.v),
              child: Container(
                width: 200.h,
                height: 60.v,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: productController.OneProduct.first.sizes.length,

                  itemBuilder: (context, index) {
                    final size = productController.OneProduct.first.sizes[index].size;
                    print("sizesizesizesize ${productController.OneProduct.first.sizes.length}");
                    return Obx(() => InkWell(
                      onTap: () {
                        productController.setSelectedSize(size);
                      },
                      child: Container(

                        width: 50,
                        height: 50,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: productController.selectedSize.value == size ? Colors.deepOrange : Colors.grey,
                        ),
                        child:Center(child: Text( productController.OneProduct.first.sizes[index].size,
                        style: TextStyle(color: Colors.black),))

                      ),
                    ));
                  },
                ),
              ),
            ),
              SizedBox(height: 32.v),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            width: 115.h,
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.h, vertical: 10.v),
                            decoration: AppDecoration.fillDeepOrange.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5),
                            child: Text(
                                "الفئة : ${productController.OneProduct.first.sex == 0 ? 'رجال' : 'نساء'}",
                                style: theme.textTheme.titleMedium)),
                        Container(
                            width: 115.h,
                            padding: EdgeInsets.symmetric(
                                horizontal: 14.h, vertical: 9.v),
                            decoration: AppDecoration.fillDeepOrange.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5),
                            child: Text("الماركة : ${productController.OneProduct.first.mark}",
                                style: theme.textTheme.titleMedium)),
                       /*
                        Container(
                            width: 115.h,
                            padding: EdgeInsets.symmetric(
                                horizontal: 17.h, vertical: 9.v),
                            decoration: AppDecoration.fillDeepOrange.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5),
                            child: Text("المقاس : 40",
                                style: theme.textTheme.titleMedium))
                        */
                      ])),

              Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                      padding: EdgeInsets.only(right: 16.h),
                      child: Text("الوصف :",
                          style: CustomTextStyles.titleSmallBold_2))),
              SizedBox(height: 5.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      width: 384.h,
                      margin: EdgeInsets.only(right: 16.h),
                      child: Text(
                          "${productController.OneProduct.first.desc}",
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.right,
                          style: CustomTextStyles.bodyMedium13_1
                              .copyWith(height: 1.38)))),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  IconButton(
                    icon: Icon(Icons.remove),
                    color: Colors.orange,
                    onPressed: productController.decrementNumber,
                  ),
                  SizedBox(width: 10),
                  Obx(() => Text(
                    productController.number.value.toString(),
                    style: TextStyle(fontSize: 20),
                  )),
                  SizedBox(width: 10),
                  IconButton(
                    icon: Icon(Icons.add),
                    color: Colors.orange,
                    onPressed: productController.incrementNumber,
                  ),
                ],
              ),
              SizedBox(height: 14.v),
              GestureDetector(
                  onTap: () {
                    print('//////////////2');
                    print(int.parse(productController.OneProduct.first.count));
                    print(int.parse(productController.number.value.toString()));
                    print('//////////////2');
                    if(int.parse(productController.OneProduct.first.count)<int.parse(productController.number.value.toString())){
                      final snackBar = SnackBar(
                        backgroundColor: Colors.red,
                        content: Text('عذراً الكمية المطلوبة اكبر من الكمية المتاحة'),
                      );
                    }else{
                      productController.createProduct(id: int.parse(productController.OneProduct.first.id),name:productController.OneProduct.first.name,image:"https://zadstorely.ly/public/assets/images/products/${productController.OneProduct.first.images.first.img}", quantity: productController.number.value, price: double.parse(productController.OneProduct.first.price));
                      final snackBar = SnackBar(
                        backgroundColor: Colors.green,
                        content: Text('تمت الإضافة إلى السلة بنجاح'),
                      );
                    }

                    //onTapAddProductTo(context);
                  },
                  child: InkWell(
                    onTap: () {

                      print('//////////////3');
                      print(int.parse(productController.OneProduct.first.count));
                      print(int.parse(productController.number.value.toString()));
                      print('//////////////3');
                      if(int.parse(productController.OneProduct.first.count)<int.parse(productController.number.value.toString())){
                        final snackBar = SnackBar(
                          backgroundColor: Colors.red,
                          content: Text('عذراً الكمية المطلوبة اكبر من الكمية المتاحة'),

                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }else{
                        productController.createProduct(id: int.parse(productController.OneProduct.first.id),name:productController.OneProduct.first.name,image:"https://zadstorely.ly/public/assets/images/products/${productController.OneProduct.first.images.first.img}", quantity: productController.number.value, price: double.parse(productController.OneProduct.first.price));
                        final snackBar = SnackBar(
                          backgroundColor: Colors.green,
                          content: Text('تمت الإضافة إلى السلة بنجاح'),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }

                    },
                    child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 21.h),
                        padding: EdgeInsets.symmetric(
                            horizontal: 87.h, vertical: 11.v),
                        decoration: AppDecoration.fillPrimary.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder5),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgVectorWhiteA700,
                                  height: 17.v,
                                  width: 14.h,
                                  margin: EdgeInsets.symmetric(vertical: 2.v)),
                              InkWell(
                                onTap: () {

                                  print('//////////////');
                                  print(int.parse(productController.OneProduct.first.count));
                                  print(int.parse(productController.number.value.toString()));
                                  print('//////////////');
                                  if(int.parse(productController.OneProduct.first.count)<int.parse(productController.number.value.toString())){
                                    final snackBar = SnackBar(
                                      backgroundColor: Colors.red,
                                      content: Text('عذراً الكمية المطلوبة اكبر من الكمية المتاحة'),
                                    );
                                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                  }else{
                                    productController.createProduct(id: int.parse(productController.OneProduct.first.id),name:productController.OneProduct.first.name,image:"https://zadstorely.ly/public/assets/images/products/${productController.OneProduct.first.images.first.img}", quantity: productController.number.value, price: double.parse(productController.OneProduct.first.price));
                                    final snackBar = SnackBar(
                                      backgroundColor: Colors.green,
                                      content: Text('تمت الإضافة إلى السلة بنجاح'),
                                    );
                                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                  }

                                },
                                child: Padding(
                                    padding: EdgeInsets.only(top: 2.v, right: 19.h),
                                    child: Text("إضافة إلى السلة",
                                        style: CustomTextStyles
                                            .titleMediumWhiteA70017)),
                              )
                            ])),
                  )),
              SizedBox(height: 8.v)
            ])));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the mainPageDisplayAProductActiveScreen when the action is triggered.
  onTapFavoriteFILLZero(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainPageDisplayAProductActiveScreen);
  }

  /// Displays a dialog with the [MainPageDisplayAProductHowManyPicsesDialog] content.
  onTapAddProductTo(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: MainPageDisplayAProductHowManyPicsesDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: const EdgeInsets.only(left: 0),
            ));
  }
}
  class ImageViewDialog extends StatefulWidget {
  final String imagePath;

  ImageViewDialog({required this.imagePath});

  @override
  _ImageViewDialogState createState() => _ImageViewDialogState();
  }
  class _ImageViewDialogState extends State<ImageViewDialog> {
  double imageSize = 1.0;

  @override
  Widget build(BuildContext context) {
  return Dialog(
  child: GestureDetector(
  onTap: () {
  setState(() {
  imageSize = imageSize == 1.0 ? 2.0 : 1.0;
  });
  },
  child: SizedBox(
  width: MediaQuery.of(context).size.width,
  height: MediaQuery.of(context).size.height,
  child: Center(
  child: InteractiveViewer(
  minScale: 1.0,
  maxScale: 4.0,
  child: Image.network(
  widget.imagePath,
  fit: BoxFit.contain,
  scale: imageSize,
  ),
  ),
  ),
  ),
  ),
  );
  }
  }