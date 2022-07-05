import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'image_and_icons.dart';
import 'title_and_price.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(size: size),
          const TitleAndPrice(
            title: 'Angelica',
            country: 'Russia',
            price: 440,
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84.0,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Buy Now',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: kPrimaryColor,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: ElevatedButton(
                child: const Text('Description',style: TextStyle(color: Colors.black),),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  elevation: 0.0
                ),
              ),),
            ],
          ),
          const SizedBox(
            height: kDefaultPadding * 2,
          ),
        ],
      ),
    );
  }
}
