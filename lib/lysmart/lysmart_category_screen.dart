part of '../main.dart';

class _LysmartCategoryScreen extends StatelessWidget {
  const _LysmartCategoryScreen({required this.category});

  final _LysmartCategory category;

  @override
  Widget build(BuildContext context) {
    return _HubDetailScaffold(
      title: category.title,
      subtitle: category.subtitle,
      icon: category.icon,
      accent: category.accent,
      child: _HubCardGrid(
        items: category.items
            .map(
              (item) => _HubCardData(
                title: item.title,
                subtitle: item.subtitle,
                icon: item.icon,
                accent: category.accent,
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => _LysmartDetailScreen(
                        category: category,
                        item: item,
                      ),
                    ),
                  );
                },
              ),
            )
            .toList(),
      ),
    );
  }
}
