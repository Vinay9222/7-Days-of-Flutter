import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../core/store.dart';
import '../../model/cart.dart';
import '../../model/catalog.dart';

class AddToCart extends StatelessWidget {
  final Item catalog;
  AddToCart({
    required Key key,
    required this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // // VxState.listen(context, to: [AddMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;
    bool isInCart = _cart.items.contains(catalog) ?? false;
    // if (!isInCart) {
    //   AddMutation; // No need to pass catalog explicitly
    // }

    return ElevatedButton(
      onPressed: () {
        if (!isInCart) {
          AddMutation(catalog);
        }
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(context.theme.buttonColor),
          shape: MaterialStateProperty.all(
            StadiumBorder(),
          )),
      child: isInCart ? Icon(Icons.done) : Icon(CupertinoIcons.cart_badge_plus),
    );
  }
}