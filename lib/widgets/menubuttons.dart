//Botones que aparecen en la parte inferior de la pantalla

import 'package:flutter/material.dart';

class MenuButtons extends StatefulWidget {
  const MenuButtons({super.key});

  @override
  State<MenuButtons> createState() => _MenuButtonsState();
}

class _MenuButtonsState extends State<MenuButtons> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //Informacion del post
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 40,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Titulo",
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Colors.white,
                    ),
              ),
              Text(
                "Descripcion del post",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Colors.white,
                    ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 25,
            horizontal: 5,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {},
                icon: Column(
                  children: [
                    const Icon(Icons.favorite_border),
                    Text(
                      "1k",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: Colors.amber,
                          ),
                    ),
                  ],
                ),
                color: Colors.amber,
              ),
              IconButton(
                onPressed: () {},
                icon: Column(
                  children: [
                    const Icon(Icons.comment_outlined),
                    Text(
                      "1k",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: Colors.amber,
                          ),
                    ),
                  ],
                ),
                color: Colors.amber,
              ),
              IconButton(
                onPressed: () {},
                icon: Column(
                  children: [
                    const Icon(Icons.share_outlined),
                    Text(
                      "1k",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: Colors.amber,
                          ),
                    ),
                  ],
                ),
                color: Colors.amber,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                      "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg"),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
