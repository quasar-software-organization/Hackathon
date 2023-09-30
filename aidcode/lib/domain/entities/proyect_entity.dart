import 'package:aidcode/resources/resources.dart';

class ProyectEntity {
  final String name;
  final String type;
  final String need;
  final String date;
  final String logo;

  ProyectEntity({
    required this.name,
    required this.type,
    required this.need,
    required this.date,
    required this.logo,
  });
}

final mockProjects = [
  ProyectEntity(
    name: 'AmericanCancer Socierty',
    type: 'health',
    need: 'community_outreach',
    logo: AppAssets.americanCancer,
    date: '10/8/2023',
  ),
  ProyectEntity(
    name: 'Habitat for Humanity',
    type: 'health',
    need: 'webapp',
    logo: AppAssets.habitatHumanity,
    date: '7/21/2023',
  ),
  ProyectEntity(
    name: 'WWF',
    type: 'health',
    need: 'webapp',
    logo: AppAssets.wwfLogo,
    date: '03/01/2023',
  ),
];
