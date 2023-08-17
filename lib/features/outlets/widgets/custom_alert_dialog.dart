import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nettapp/core/app_colors/app_colors.dart';
import 'package:nettapp/core/widgets/text_widget.dart';
import 'package:nettapp/features/outlets/widgets/alert_action.dart';

class CustomAlertDialog extends StatelessWidget {
  final String title;
  final String message;
  final List<Widget> actions;

  const CustomAlertDialog(
      {super.key,
      required this.title,
      required this.message,
      required this.actions});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      content: Container(
          height: 250,
          width: 600,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                width: 100,
                child: Lottie.asset(
                  'assets/lottie/lottie.json',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextWidget(
                text: "Outlet Captured",
                fontWeight: FontWeight.w500,
                fontSize: 19,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    AlertAction(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      backgroundColor: AppColors.blue,
                      label: "New Outlet",
                      labelColor: Colors.white,
                    ),
                    AlertAction(
                      onTap: () {},
                      backgroundColor: Colors.white,
                      label: "Trade Visit",
                      labelColor: Colors.black,
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}