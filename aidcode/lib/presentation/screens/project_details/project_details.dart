import 'package:aidcode/core/theme/colors.dart';
import 'package:aidcode/presentation/bloc/non_profit_bloc/non_profit_bloc.dart';
import 'package:aidcode/presentation/screens/project_details/widgets/project_description.dart';
import 'package:aidcode/presentation/screens/project_details/widgets/project_social_info.dart';
import 'package:aidcode/presentation/screens/projects/widgets/multiple_user.dart';
import 'package:aidcode/presentation/widgets/generic_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../resources/resources.dart';
import '../../widgets/sliver_app_bar.dart';
import 'widgets/project_image.dart';

class ProjectDetails extends StatelessWidget {
  final String id;

  const ProjectDetails({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(body: BlocBuilder<NonProfitBloc, NonProfitState>(
      builder: (context, state) {
        final project =
            state.projects.firstWhere((element) => element.id == id);

        return Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: CustomScrollView(
            slivers: [
              sliverAppBar(
                context,
                training: const SizedBox.shrink(),
                leading: Container(
                  height: double.maxFinite,
                  padding: const EdgeInsets.all(2),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColor.primary, width: 4),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.asset(
                    project.nonProfitId == '3yxz1XgeNc6yRmeGaukC'
                        ? AppAssets.americanCancerSociety
                        : AppAssets.habitatHumanity,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 20.0)),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                sliver: SliverFillRemaining(
                  child: Card(
                    color: Colors.white,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Center(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 50),
                                  child: ProjectDetailImage(project: project),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: IconButton(
                                    onPressed: () => context.pop(),
                                    icon: const Icon(
                                      Icons.close,
                                      size: 30,
                                      color: AppColor.secondary,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          ProjectDescription(
                            description: project.description,
                          ),
                          const ProjectSocialInfo(),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 30),
                            child: GenericButton(
                              width: size.width * 0.6,
                              widget: const Center(
                                child: Text(
                                  "Contribute",
                                  style: TextStyle(
                                      color: AppColor.primary,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  useRootNavigator: true,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: const Text('Contribute'),
                                      content: const Text(
                                        'You have been added to the Opensource Git repo. Check your email for an invitation',
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            context.pop();
                                            context.pop();
                                          },
                                          child: const Text('OK'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(20),
                            child: MultipleUser(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    ));
  }
}
