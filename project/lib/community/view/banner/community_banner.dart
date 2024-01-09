import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BannerController extends GetxController
    with SingleGetTickerProviderMixin {
  final Map<String, Image> imageslot = {};
  final Map<String, Widget> slotIcon = {};
  final Map<String, bool> slotactive = {};
  int nowPage = 0;
  final PageController pageControl = PageController(initialPage: 0);

  @override
  void onInit() {
    super.onInit();
    imageSlot();
    pageTimer();
    slotActive();
  }

  void imageSlot() {
    for (int i = 1; i < 7; i++) {
      imageslot['image_$i'] = Image.asset(
        'assets/images/community/noticeboard/banner_$i.png',
        fit: BoxFit.fill,
      );
      slotactive['image_$i'] = false;
    }
    slotactive['image_1'] = true;
  }

  void slotActive() {
    for (int i = 1; i < 7; i++) {
      slotIcon['slot_$i'] = Container(
        width: 4,
        height: 4,
        margin: EdgeInsets.only(right: i != 6 ? 4 : 0),
        child: CircleAvatar(
          backgroundColor:
              Color(slotactive['image_$i'] ?? false ? 0xFFFFFFFF : 0xFF808080),
        ),
      );
    }
  }

  void pageTimer() {
    Timer.periodic(
      Duration(seconds: 5),
      (Timer timer) {
        if (nowPage < imageslot.length - 1) {
          nowPage++;
        } else {
          nowPage = 0;
        }
        pageControl.animateToPage(
          nowPage,
          duration: Duration(milliseconds: 350),
          curve: Curves.easeIn,
        );
        slotActive();
        update();
      },
    );
  }

  static BannerController get to => Get.find<BannerController>();

  @override
  void onClose() {
    pageControl.dispose();
    super.onClose();
  }
}

class Custom_Banner extends StatelessWidget {
  final BannerController controller = Get.put(BannerController());

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 360,
      height: 200,
      child: Stack(
        children: [
          PageView.builder(
            controller: page_control,
            itemCount: image_slot.length,
            onPageChanged: (index) {
              if (index == image_slot.length) {
                page_control.jumpToPage(0);
              }
              setState(() {
                slot_active.forEach((key, value) {
                  slot_active[key] = false;
                });
                slot_active['image_${index + 1}'] = true;
              });
              Slot_Active();
              now_page = index;
            },
            itemBuilder: (BuildContext context, int index) {
              String key =
                  image_slot.keys.elementAt(index % image_slot.length);
              Widget value = image_slot[key]!;
              return Column(
                children: [value],
              );
            },

    return GetBuilder<BannerController>(
      builder: (controller) {
        return Container(
          width: 360,
          height: 200,
          child: Stack(
            children: [
              PageView.builder(
                controller: BannerController.to.pageControl,
                itemCount: BannerController.to.imageslot.length,
                onPageChanged: (index) {
                  if (index == controller.imageslot.length) {
                    controller.pageControl.jumpToPage(0);
                  }
                  controller.nowPage = index;
                  controller.slotactive.forEach((key, value) {
                    controller.slotactive[key] = false;
                  });
                  controller.slotactive['image_${index + 1}'] = true;
                  controller.slotActive();
                },
                itemBuilder: (BuildContext context, int index) {
                  String key = controller.imageslot.keys
                      .elementAt(index % controller.imageslot.length);
                  Widget value = controller.imageslot[key]!;
                  return Column(
                    children: [value],
                  );
                },
              ),
              Container(
                width: 360,
                margin: EdgeInsets.only(bottom: 4),
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: BannerController.to.slotIcon.values.toList(),
                ),
              ),
            ],

          ),
        );
      },
    );
  }
}
