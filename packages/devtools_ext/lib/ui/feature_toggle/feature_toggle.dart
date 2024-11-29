import 'package:devtools_ext/api/app_connection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';

enum _Features {
  dioLogger,
  onLoading,
  ;
}

class FeatureToggle extends StatelessWidget {
  const FeatureToggle({super.key});

  @override
  Widget build(BuildContext context) {
    final features = _Features.values
        .map(
          (feature) => switch (feature) {
            _Features.dioLogger => (
                title: 'Enable Dio Logger',
                initialValue: false,
                fetch: AppConnection.fetchDioLogger,
                onChanged: (bool value) async =>
                    AppConnection.updateDioLogger(enabled: value),
              ),
            _Features.onLoading => (
                title: 'Show Loading UI',
                initialValue: false,
                fetch: AppConnection.fetchLoadingState,
                onChanged: (bool value) async =>
                    AppConnection.updateLoadingState(isLoading: value),
              ),
          },
        )
        .toList();

    return ListView.separated(
      itemBuilder: (_, index) {
        final feature = features[index];
        return HookBuilder(
          builder: (_) {
            final enabled = useState(feature.initialValue);
            final fetchedValue = useFuture(useMemoized(feature.fetch));

            useEffect(
              () {
                if (fetchedValue.hasData) {
                  enabled.value = fetchedValue.data!;
                }
                return null;
              },
              [fetchedValue],
            );

            return SwitchListTile(
              title: Text(feature.title),
              value: enabled.value,
              onChanged: (value) async {
                await feature.onChanged(value);
                enabled.value = await feature.fetch();
              },
            );
          },
        );
      },
      separatorBuilder: (_, __) => const Gap(20),
      itemCount: features.length,
    );
  }
}
