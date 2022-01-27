import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school_app/shared/components/components.dart';
import 'package:school_app/shared/components/constants.dart';
import 'package:school_app/shared/cubit/AppCubit/AppCubit.dart';
import 'package:school_app/shared/cubit/AppCubit/AppStates.dart';

class mainScreen extends StatelessWidget {

  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (BuildContext context, state) {},
      builder: (BuildContext context, state) {
        var cubit = AppCubit.get(context);
        dynamic h = MediaQuery.of(context).size.height;
        dynamic w = MediaQuery.of(context).size.width;

        return Directionality(
          textDirection: TextDirection.rtl,
          child:


            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.only(bottom: 30, top: 25, right: 30),
                      child: Container(
                        child: CircleAvatar(
                          radius: 45,
                          backgroundColor: mainColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Container(
                      width: 190,
                      height: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "سامي رامي",
                            style: TextStyle(
                                fontSize: 22,
                                color: mainColor,
                                fontWeight: FontWeight.bold),
                          ),
                          Text("صف سادس",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: mainColor,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: h * 0.64,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(40),
                            topLeft: Radius.circular(40),
                          ),
                        ),
                        child: GridView.count(
                          crossAxisCount: 2,
                          shrinkWrap: true,
                          mainAxisSpacing: 1,
                          crossAxisSpacing: 1,
                          children: List.generate(
                            6,
                                (index) => mainLayoutWidget(
                                widgetName: WidgetName[index],
                                imagePath: imagePath[index],
                                context: context),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),


        );
      },
    );
  }
}
