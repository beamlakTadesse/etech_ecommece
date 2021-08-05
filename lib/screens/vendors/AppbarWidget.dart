import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        "Gebeya",
      ),
      actions: [
        InkWell(
          borderRadius: BorderRadius.circular(50),
          onTap: (){
          },
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Icon(
              Icons.search
            ),
          ),
        )
      ],
    );
  }
}

