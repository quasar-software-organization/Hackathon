import 'package:aidcode/data/model/non_profit.dart';
import 'package:aidcode/data/model/project.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../core/theme/colors.dart';
import '../../bloc/project_bloc/project_bloc.dart';
import '../../widgets/generic_button.dart';
import '../../widgets/sliver_app_bar.dart';

class ProjectFormScreen extends StatefulWidget {
  const ProjectFormScreen({super.key, required this.nonProfit});

  final NonProfit nonProfit;

  @override
  State<ProjectFormScreen> createState() => _ProjectFormScreenState();
}

class _ProjectFormScreenState extends State<ProjectFormScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController descController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: appBar(
        context,
        leading: const SizedBox(),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30.0),
            child: IconButton(
              icon: const Icon(
                Icons.close,
                color: AppColor.secondary,
                size: 30,
              ),
              onPressed: () {
                context.pop();
              },
            ),
          ),
        ],
      ),
      body: BlocListener<ProjectBloc, ProjectState>(
        listener: (context, state) {
          if (state.status == ProjectStatus.loading) {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (BuildContext context) {
                return Dialog(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CircularProgressIndicator(),
                        SizedBox(width: 16),
                        Text(
                          'Loading...',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          } else if (state.status == ProjectStatus.loaded) {
            if (context.mounted) {
              context.pop();
              context.pop();
            }
          }
        },
        child: Form(
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(right: 16, left: 16, top: 20),
            child: Column(
              children: [
                const Center(
                  child: Text(
                    'Create Project',
                    style: TextStyle(
                        color: AppColor.secondary,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox.square(dimension: 20),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    border: Border.all(
                      color: AppColor.primary,
                      width: 2,
                    ),
                  ),
                  child: TextFormField(
                    controller: nameController,
                    textCapitalization: TextCapitalization.sentences,
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(
                      hintText: 'Name',
                    ),
                  ),
                ),
                const SizedBox.square(dimension: 12),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    border: Border.all(
                      color: AppColor.primary,
                      width: 2,
                    ),
                  ),
                  child: TextFormField(
                    maxLines: 5,
                    controller: descController,
                    textCapitalization: TextCapitalization.sentences,
                    decoration: const InputDecoration(
                      hintText: 'Description',
                    ),
                  ),
                ),
                const SizedBox.square(dimension: 50),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.25),
                  height: 60,
                  child: GenericButton(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColor.secondary,
                    ),
                    onPressed: () {
                      final project = Project(
                        name: nameController.text,
                        description: descController.text,
                        status: 'Active',
                        nonProfitId: widget.nonProfit.id!,
                      );

                      context.read<ProjectBloc>().add(
                            ProjectEvent.putProject(
                              project: project,
                              nonProfitName: widget.nonProfit.name,
                            ),
                          );
                    },
                    widget: const Center(
                      child: Text(
                        'Save',
                        style: TextStyle(
                          color: AppColor.primary,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
