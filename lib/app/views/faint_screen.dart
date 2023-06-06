import 'package:flutter/material.dart';
import 'package:sa3edney/app/config/context_helpers.dart';

import '../../generated/assets.dart';

class FaintScreen extends StatelessWidget {
  const FaintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            // Positioned.directional(
            //   textDirection: TextDirection.rtl,
            //   top: context.height * 0.185,
            //   end: context.width * 0.2,
            //   start: context.width * 0.2,
            //   child: Image.asset(
            //     AppAssetsManager.mainTitle,
            //   ),
            // ),
            // Positioned.directional(
            //   textDirection: TextDirection.rtl,
            //   top: 24,
            //   end: 16,
            //   child: Image.asset(
            //     AppAssetsManager.logo,
            //     width: 85,
            //     height: 85,
            //   ),
            // ),
            // Positioned.directional(
            //   textDirection: TextDirection.rtl,
            //   top: 0,
            //   start: 0,
            //   child: Image.asset(
            //     AppAssetsManager.topCorner,
            //     width: context.width,
            //   ),
            // ),
            Positioned.directional(
              textDirection: TextDirection.rtl,
              start: 4,
              top: context.height * 0.2,
              child: Image.asset(
                Asset.eghmaaTitle,
                width: context.width * 0.7,
              ),
            ),
            Align(
              alignment: AlignmentDirectional.center,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  Asset.eghmaaImg,
                  width: context.width,
                ),
              ),
            ),
            Positioned.directional(
              textDirection: TextDirection.rtl,
              start: 16,
              bottom: 24,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset(
                  Asset.backEghmaa,
                  width: context.width * 0.25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
