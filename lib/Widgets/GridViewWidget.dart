import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test_yes/colors.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({
    Key? key,
    required this.products,
  }) : super(key: key);
  final List products;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, crossAxisSpacing: 3, mainAxisSpacing: 3),
      //padding: EdgeInsets.all(5),
      shrinkWrap: true,
      itemCount: products.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 2.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.topLeft,
                //alignment: AlignmentDirectional.topStart,
                children: [
                  Container(
                    width: 130.w,
                    height: 101.h,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(0, 0),
                          blurRadius: 2,
                          color: Colors.black,
                        ),
                      ],
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(products[index].image),
                          fit: BoxFit.cover),
                    ),
                  ),
                  /*products[index].distance.isUndefinedOrNull
                      ? Container()
                      :*/
                  Positioned(
                    top: 10,
                    child: Container(
                      alignment: Alignment.center,
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          color: color1,
                          shape: BoxShape.circle,
                          border: Border.all(color: color1)),
                      child: Text(
                        products[index].price,
                        style: TextStyle(
                            fontSize: 10, color: color5, fontFamily: 'Bold'),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              Container(
                  width: 30,
                  height: 5,
                  decoration: BoxDecoration(
                      color: color6,
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
              /* Container(
                width: 180.w,
                height: 30.h,
                alignment: Alignment.topCenter,
                child: Text(
                products[index].name,
                  style: TextStyle(
                      fontSize: 16, color: color5, fontFamily: 'Bold'),
                ),
              )*/
              Text(
                products[index].name,
                style: const TextStyle(
                    fontSize: 16,
                    color: color5,
                    fontFamily: "SourceSansPro-Bold",
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        );
      },
    );
  }
}
