import 'package:app/component/graphql_query_container.dart';
import 'package:app/screen/detail/detail_screen_query.graphql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class DetailScreen extends HookWidget {
  const DetailScreen({required this.id, required this.name, super.key});

  final String? id;
  final String? name;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width - 16;
    final query = useQuery$detail(
      Options$Query$detail(
          variables: Variables$Query$detail(id: id, name: name)),
    );
    return Scaffold(
      appBar: AppBar(title: GestureDetector(child: Text(name ?? ''))),
      body: GraphQLQueryContainer(
        query: query,
        fakeData: Query$detail(
          pokemon: Query$detail$pokemon(
            id: 'id',
            name: name,
            image: 'https://via.placeholder.com/$width',
            height: Query$detail$pokemon$height(minimum: '600', maximum: '600'),
            weight: Query$detail$pokemon$weight(minimum: '600', maximum: '600'),
            types: [''],
            classification: '',
            attacks: Query$detail$pokemon$attacks(
              fast: [
                Query$detail$pokemon$attacks$fast(
                  name: '',
                  type: '',
                  damage: 0,
                ),
              ],
              special: [
                Query$detail$pokemon$attacks$special(
                  name: '',
                  type: '',
                  damage: 0,
                ),
              ],
            ),
          ),
        ),
        child: (data) {
          final pokemon = data.pokemon;
          if (pokemon == null) return const SizedBox.shrink();
          return ListView(
            children: [
              SizedBox(
                width: width,
                height: width,
                child: Image.network(data.pokemon?.image ?? '', width: width),
              ),
              ListTile(
                title: Text('Name'),
                subtitle: Text(pokemon.name ?? ''),
              ),
              ListTile(
                title: Text('Height'),
                subtitle: Text(pokemon.height?.minimum ??
                    '' + ' - ' + (pokemon.height?.maximum ?? '')),
              ),
              ListTile(
                title: Text('Weight'),
                subtitle: Text(pokemon.weight?.minimum ??
                    '' + ' - ' + (pokemon.weight?.maximum ?? '')),
              ),
              ListTile(
                title: Text('Types'),
                subtitle: Text(pokemon.types?.join(', ') ?? ''),
              ),
              ListTile(
                title: Text('Classification'),
                subtitle: Text(pokemon.classification ?? ''),
              ),
              ListTile(
                title: Text('Attacks'),
                subtitle: Text(pokemon.attacks?.fast?.first?.name ?? ''),
              ),
            ],
          );
        },
      ),
    );
  }
}
