import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../app_cubit/app_cubit.dart';
import '../shared/shared.dart';

class SpaceBox extends StatelessWidget {
  SpaceBox(this.x,this.y,{Key? key}) : super(key: key);

  late int x,y;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black45,
                width: 0.5.px,
              )
            ),
              width: (100/8).w,
              height: (100/8).w,
              child: intTable[x][y] > -1?
              intTable[x][y] == 0? SizedBox():
              intTable[x][y] == 1?Image(image: AssetImage("assets/1000125298-removebg-preview.png"),):
              Image(image: AssetImage("assets/1000125299-removebg-preview.png"),):
              intTable[x][y] != -1? Image(image: AssetImage("assets/Picsart_23-05-01_11-53-08-723.png"),):
              Image(image: AssetImage("assets/1000125297-removebg-preview.png"),)
          );
        },
      ),
    );
  }
}
