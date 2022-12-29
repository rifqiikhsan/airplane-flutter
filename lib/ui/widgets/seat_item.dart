import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class SeatItem extends StatelessWidget {
  //NOTE: 0.Avaliable, 1.Selected, 2. Unavaliable
  final int status;

  const SeatItem({
    Key? key,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    backgroundColor() {
      switch (status) {
        case 0:
          return kAvaliableColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kUnavailable;
        default:
          return kUnavailable;
      }
    }

    borderColor() {
      switch (status) {
        case 0:
          return kPrimaryColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kUnavailable;
        default:
          return kUnavailable;
      }
    }

    child() {
      switch (status) {
        case 0:
          return SizedBox();
        case 1:
          return Center(
            child: Text(
              'YOU',
              style: whiteTextStyle.copyWith(
                fontWeight: semiBold,
              ),
            ),
          );
        case 2:
          return SizedBox();
        default:
          return SizedBox();
      }
    }

    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: backgroundColor(),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          width: 2,
          color: borderColor(),
        ),
      ),
      child: child(),
    );
  }
}
