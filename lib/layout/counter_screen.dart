// ignore_for_file: prefer_const_constructors, prefer_final_fields, must_be_immutable, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'cubit/cubit.dart';
import 'cubit/states.dart';

class Counter extends StatelessWidget {
  const Counter({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
        listener: (context, state) {
          if (state is CounterPlusState) {
            print('CounterPlusState');
            print(state.counter);
          }
          if (state is CounterMinusState) {
            print('CounterMinusState');
            print(state.counter);
          }
        },
        builder: (context, state) => Scaffold(
          appBar: AppBar(
            title: Center(
                child: Text(
              'CubIt',
            )),
          ),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40.0,
                  color: Colors.blue,
                  child: MaterialButton(
                    onPressed: () {
                      CounterCubit.get(context).minus();
                    },
                    child: Text(
                      'Minus',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  width: 25.0,
                ),
                Text(
                  '${CounterCubit.get(context).counter}',
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 50.0),
                ),
                SizedBox(
                  width: 25.0,
                ),
                Container(
                  height: 40.0,
                  color: Colors.blue,
                  child: MaterialButton(
                    onPressed: () {
                      CounterCubit.get(context).plus();

                    },
                    child: Text(
                      'Plus',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
