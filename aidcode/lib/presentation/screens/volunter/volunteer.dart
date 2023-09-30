import 'package:intl/intl.dart';

import 'package:aidcode/data/model/volunteer.dart';
import 'package:aidcode/presentation/screens/projects/widgets/project_item.dart';
import 'package:aidcode/presentation/screens/volunter/widgets/profile_avatar.dart';
import 'package:aidcode/presentation/screens/volunter/widgets/profile_description.dart';

import 'package:aidcode/presentation/screens/volunter/widgets/profile_info.dart';
import 'package:aidcode/presentation/screens/volunter/widgets/profile_job.dart';
import 'package:aidcode/presentation/screens/volunter/widgets/profile_option_bottom.dart';
import 'package:aidcode/presentation/widgets/sliver_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../core/theme/colors.dart';
import '../../bloc/volunteer_bloc/volunteer_bloc.dart';

class VolunteerScreen extends StatelessWidget {
  const VolunteerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: BlocBuilder<VolunteerBloc, VolunteerState>(
        builder: (context, state) {
          if (state.status == VolunteerStatus.loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          final volunteer = state.volunteer ??
              Volunteer(
                name: 'Imandra',
                age: 25,
                availability: 100,
                skills: 'Flutter/Dart',
                experience: '2 años',
                availabilityDuration: 'Long-term',
                phoneNumber: '52441919',
                email: 'user@email.com',
              );
          final projects = state.volunteerProjects;

          return CustomScrollView(
            slivers: [
              sliverAppBar(
                context,
                onBack: () {
                  context.pop();
                },
                onPressInfo: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Contact Information'),
                        contentPadding: EdgeInsets.zero,
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(
                              onTap: () {},
                              leading: Icon(Icons.alternate_email_rounded),
                              title: Text('Email'),
                              subtitle: Text(
                                volunteer.email,
                                style: TextStyle(color: AppColor.secondary),
                              ),
                            ),
                            ListTile(
                              onTap: () {},
                              leading: Icon(Icons.call),
                              title: Text('Phone'),
                              subtitle: Text(volunteer.phoneNumber),
                              trailing: Icon(Icons.call_made_rounded),
                            ),
                          ],
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              context.pop();
                            },
                            child: Text('OK'),
                          )
                        ],
                      );
                    },
                  );
                },
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Column(
                    children: [
                      ProfileAvatar(
                          size: Size(size.width * 0.8, size.width * 0.8)),
                      ProfileInfo(
                        name: volunteer.name,
                        skills: volunteer.skills,
                        age: volunteer.age.toString(),
                      ),
                      ProfileJob(
                        availability: volunteer.availabilityDuration,
                      ),
                      const ProfileDescription(),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            ProfileOptionBottom(
                              title: "158",
                              subtitle: "Collected credits",
                            ),
                            ProfileOptionBottom(
                              title: "${projects.length}",
                              subtitle: "Finished projects",
                            ),
                          ],
                        ),
                      ),
                      ...projects
                          .map((e) => ProjectCard(
                                projectId: e.id!,
                                name: e.name,
                                type: e.name,
                                status: e.status,
                                date: DateFormat.yMd().format(e.startDate!),
                              ))
                          .toList()
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
