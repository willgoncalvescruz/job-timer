// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:job_timer/app/view_models/project_task_model.dart';

import '../entities/project.dart';
import '../entities/project_status.dart';

class ProjectModel {
  final int? id;
  final String name;
  final int estimate;
  final ProjectStatus status;
  final List<ProjectTaskModel> tasks;

  ProjectModel({
    this.id,
    required this.name,
    required this.estimate,
    required this.status,
    required this.tasks,
  });

  factory ProjectModel.fromEntity(Project project) {
    project.tasks.loadSync();

    return ProjectModel(
      id: project.id,
      name: project.name,
      estimate: project.estimate,
      status: project.status,
      tasks: project.tasks.map(ProjectTaskModel.fromEntity).toList(),
    );
  }

  @override
  String toString() {
    return 'ProjectModel(id: $id, name: $name, estimate: $estimate, status: $status, tasks: $tasks)';
  }
}
