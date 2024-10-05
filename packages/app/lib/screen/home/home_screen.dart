import 'package:app/component/graphql_query_container.dart';
import 'package:app/screen/detail/detail_screen.dart';
import 'package:app/screen/home/home_screen_query.graphql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class GraphQLScreen extends HookWidget {
  const GraphQLScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final query = useQuery$pokemons();
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(child: const Text('Pokemon')),
      ),
      body: GraphQLQueryContainer(
        query: query,
        fakeData: Query$pokemons(
          pokemons: List.generate(
            10,
            (index) => Query$pokemons$pokemons(
              id: index.toString(),
              name: 'AAAAAAAAAAAAAAAAAAA',
              image: 'https://via.placeholder.com/150',
            ),
          ),
        ),
        child: (data) {
          debugPrint('data: $data');
          return ListView.separated(
            itemCount: (data.pokemons?.length ?? 0),
            separatorBuilder: (context, index) => const Divider(),
            itemBuilder: (context, index) {
              final pokemon = data.pokemons?[index];
              if (pokemon == null) {
                return const ListTile(
                  title: Text('Loading...'),
                );
              }
              return ListTile(
                title: Text(pokemon.name ?? ''),
                leading: SizedBox(
                  width: 80,
                  height: 80,
                  child: Image.network(pokemon.image ?? ''),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DetailScreen(id: pokemon.id, name: pokemon.name),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
