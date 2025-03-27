import '../controllers/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingView extends GetView<OnboardingController> {
  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      'https://s3-alpha-sig.figma.com/img/a663/c60e/1e316d9dcb2a7d8f7f2aa151341bd07d?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=sdu8QpmccnK02rV63LpRVEv1BWxXHUUHevIj6cqRCcGeh~LcMZRTvFIKXaJwH~zYRicjO76PQ-Q33ATa6o4saVRPKBElDXW-DGrvcqmFE~3k9xBsrK33AyZ0H3LfwNZmxroXc6YiTUI44gudR-ljnx6l~~9m2irXU3r7FqtruuqfL16MjQsXVMJGJSpErrlwFly4Zh~5TAdMaFHLZQ~-yvJyMJ0H8IHbK3z~irPFefMFiZfluCD7S-8fJclwM3ugClMe7dAvUefAPpR5mJ8-9w-qrC-4zAkG6C5rnGMinJqw-sM5L9tyseXUyPQ~HEmtM73~CPR8rIu~Zg-1iVrwPw__',
      'https://s3-alpha-sig.figma.com/img/d383/7574/d41a48fe51f01b47a48a56c965c9e2f8?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=o-Rk3gHlgP8zGFYNW6WYoJbZtt6B7jMUBU9~CIjthgOkiFkNeIqBSpxOX9tmenF5bz8S6Vp6RfzGfALHSOlFwGzkBzk4tZmEAAGYd9u-6LlnbW-INiqM5TvGIkLJkWRDlBeEgeIybHZDPDV8gHQqXwtZgPrNIgmw8~qQ14uh6BqlJgw3~gemy~~FOXY-EE50neKJbCkHvxeCnYiA01SZIaAz8622F658KtUA4oUHfQCWnvAC-HvR~G9OVOFbo5~GkYV2iGHDuMxyxHi0T1yDyNpfjhIB5iqBQu6JSoBrOvq4oIfNDZnpvOc5gSGkTask4cWqc3AJGP-kipUftVyVuw__',
      'https://s3-alpha-sig.figma.com/img/ff86/8bac/bbd8468c6d7998ebea2ef91c0ffad510?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=XdgF22VtAvugGW2n1C7kt-4-~AZyyGkq~GeloCqchqzmTxYWYuNsRk9uNNpR1wMg936YuQaNCis4EYy7diRlOJNAVRsmD9X0epG4YZqBlASgXRFyXDfLaj~F6P0gY8WPgFvHEyHzZ~9K2OodjtcjdYAw8TRqCG7-sIHzw8YhiClnRhmcETGsLHSNoFBDwau8oDDEMqlIoVTyk6Yl3ifPR7bM9-1JGkBw4E4v-af2m8DNCRctElt3fsFBOwI87CC5RujEoXkhBHfDlt-uonz5AuDSNh5yHmP89sKEB178hJ-WgQoY2wC-Vj2ewqSpsxaIcazl82AotOzx4UQ3hfEcRA__',
    ];

    final List<String> titles = [
      'Save and Convenient Shopping',
      'Find Everything You Need',
      'Easy and Secure Online Shopping',
    ];

    final List<String> subtitles = [
      'Get Interesting Promos Every Day',
      'Get the Best Online Shopping Experience',
      'Enjoy the Best Online Shopping with Us',
    ];

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: controller.pageController,
              onPageChanged:
                  (index) =>
                      controller.currentPage.value = index % images.length,
              itemBuilder: (context, index) {
                final currentIndex = index % images.length;
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(150),
                          bottomRight: Radius.circular(150),
                        ),
                        child: Image.network(
                          images[currentIndex],
                          height: 570,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Icon(Icons.image_not_supported, size: 100);
                          },
                        ),
                      ),

                      SizedBox(height: 20),
                      Text(
                        titles[currentIndex],
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10),
                      Text(
                        subtitles[currentIndex],
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20),
                      Obx(
                        () => Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(images.length, (dotIndex) {
                            return AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              margin: EdgeInsets.symmetric(horizontal: 4),
                              width:
                                  controller.currentPage.value == dotIndex
                                      ? 12
                                      : 8,
                              height: 8,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:
                                    controller.currentPage.value == dotIndex
                                        ? Colors.red
                                        : Colors.grey,
                              ),
                            );
                          }),
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: controller.goToLogin,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFB90F0F),
                          padding: EdgeInsets.symmetric(
                            horizontal: 150,
                            vertical: 12,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          'Next',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
