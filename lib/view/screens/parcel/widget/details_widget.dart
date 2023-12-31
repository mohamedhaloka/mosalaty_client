import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart/data/model/response/address_model.dart';
import 'package:sixam_mart/util/dimensions.dart';
import 'package:sixam_mart/util/styles.dart';

class DetailsWidget extends StatelessWidget {
  final String title;
  final AddressModel address;
  const DetailsWidget({Key key, @required this.title, @required this.address})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(title, style: robotoMedium),
      SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_SMALL),
      Text(
        address.contactPersonName ?? '',
        style: robotoRegular.copyWith(
            fontSize: Dimensions.fontSizeSmall,
            color: Theme.of(context).primaryColor),
      ),
      Text(
        address.address ?? '',
        style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeSmall),
      ),
      Wrap(children: [
        (address.streetNumber != null && address.streetNumber.isNotEmpty)
            ? Text(
                'street_number'.tr + ': ' + address.streetNumber + ', ',
                style: robotoRegular.copyWith(
                    fontSize: Dimensions.fontSizeSmall,
                    color: Theme.of(context).hintColor),
              )
            : SizedBox(),
        (address.house != null && address.house.isNotEmpty)
            ? Text(
                'house'.tr + ': ' + address.house + ', ',
                style: robotoRegular.copyWith(
                    fontSize: Dimensions.fontSizeSmall,
                    color: Theme.of(context).hintColor),
              )
            : SizedBox(),
        (address.floor != null && address.floor.isNotEmpty)
            ? Text(
                'floor'.tr + ': ' + address.floor,
                style: robotoRegular.copyWith(
                    fontSize: Dimensions.fontSizeSmall,
                    color: Theme.of(context).hintColor),
              )
            : SizedBox(),
      ]),
      Text(
        address.contactPersonNumber ?? '',
        style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeSmall),
      ),
    ]);
  }
}
