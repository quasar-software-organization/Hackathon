import 'package:aidcode/data/model/volunteer.dart';
import 'package:aidcode/presentation/screens/projects/widgets/project_item.dart';
import 'package:aidcode/presentation/screens/volunter/widgets/profile_avatar.dart';
import 'package:aidcode/presentation/screens/volunter/widgets/profile_description.dart';

import 'package:aidcode/presentation/screens/volunter/widgets/profile_info.dart';
import 'package:aidcode/presentation/screens/volunter/widgets/profile_job.dart';
import 'package:aidcode/presentation/screens/volunter/widgets/profile_option_bottom.dart';
import 'package:aidcode/presentation/widgets/loading_widget.dart';
import 'package:aidcode/presentation/widgets/sliver_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

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
            return const LoadingWidget();
          }

          final volunteer = state.volunteer ??
              Volunteer(
                name: 'name',
                age: 1,
                availability: 1,
                skills: 'skills',
                experience: 'experience',
                availabilityDuration: 'availabilityDuration',
                phoneNumber: 'phoneNumber',
                email: 'email',
              );
          final projects = state.volunteerProjects;

          return CustomScrollView(
            slivers: [
              sliverAppBar(
                context,
                onBack: () {
                  context.pop();
                },
                onPressInfo: volunteer == null
                    ? null
                    : () {
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
                                    onTap: () {
                                      final Uri emailLaunchUri = Uri(
                                        scheme: 'mailto',
                                        path: volunteer.email,
                                      );

                                      launchUrl(emailLaunchUri);
                                    },
                                    leading:
                                        Icon(Icons.alternate_email_rounded),
                                    title: Text('Email'),
                                    subtitle: Text(
                                      volunteer.email,
                                      style:
                                          TextStyle(color: AppColor.secondary),
                                    ),
                                  ),
                                  ListTile(
                                    onTap: () {
                                      final Uri telLaunchUri = Uri(
                                        scheme: 'tel',
                                        path: volunteer.phoneNumber,
                                      );
                                      launchUrl(telLaunchUri);
                                    },
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
              volunteer == null
                  ? const SliverToBoxAdapter(
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Unexpected error'),
                        ),
                      ),
                    )
                  : SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ProfileAvatar(
                                picture: volunteer.picture,
                                size: Size(size.width * 0.8, size.width * 0.8)),
                            ProfileInfo(
                              name: volunteer.name,
                              skills: volunteer.skills,
                              age: volunteer.age.toString(),
                            ),
                            ProfileJob(
                              availability: volunteer.availabilityDuration,
                            ),
                            volunteer.description != null
                                ? ProfileDescription(
                                    description: volunteer.description!,
                                  )
                                : const SizedBox.shrink(),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ProfileOptionBottom(
                                    title: volunteer.credits.toString(),
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
                                .map((e) => ProjectCard(project: e))
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
