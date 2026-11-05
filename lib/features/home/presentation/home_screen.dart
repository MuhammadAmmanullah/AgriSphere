import 'package:agrisphere/app/theme/app_theme.dart';
import 'package:agrisphere/features/home/presentation/widgets/overview_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.eco_outlined, color: AppColors.green),
            SizedBox(width: 8),
            Text('AgriSphere'),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 32),
          children: [
            Text(
              'Your farm, at a glance',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            Text(
              'Keep your fields and crops organized in one place.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 24),
            const Row(
              children: [
                Expanded(
                  child: OverviewCard(
                    label: 'Fields',
                    value: '0',
                    icon: Icons.landscape_outlined,
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: OverviewCard(
                    label: 'Crops',
                    value: '0',
                    icon: Icons.grass_outlined,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 28),
            Text('Get started', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 12),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: AppColors.green.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: const Icon(
                        Icons.add_location_alt_outlined,
                        color: AppColors.green,
                      ),
                    ),
                    const SizedBox(width: 16),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Set up your farm',
                            style: TextStyle(
                              color: AppColors.text,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            'Add your fields and crops here as you build your farm workspace.',
                            style: TextStyle(
                              color: AppColors.mutedText,
                              height: 1.4,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
