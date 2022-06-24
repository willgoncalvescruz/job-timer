// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ButtonWithLoader<B extends StateStreamable<S>, S>
    extends StatelessWidget {
  final BlocWidgetSelector<S, bool> selector;
  final B bloc;
  final VoidCallback onPressed;
  final String label;

  const ButtonWithLoader({
    Key? key,
    required this.selector,
    required this.bloc,
    required this.onPressed,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocSelector<B, S, bool>(
      bloc: bloc,
      selector: selector,
      builder: (context, showLoading) {
        return ElevatedButton(
          onPressed: showLoading ? null : onPressed,
          style: !showLoading
              ? ElevatedButton.styleFrom()
              : ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  onSurface: Color.fromARGB(255, 86, 149, 144)),
          child: Visibility(
              visible: showLoading,
              replacement: Text(label),
              child: Center(
                child: CircularProgressIndicator(
                  backgroundColor: Colors.transparent,
                  color: Color.fromARGB(255, 86, 149, 144),
                  strokeWidth: 6,
                ),
              )),
        );
      },
    );
  }
}
