part of 'task_bloc.dart';

@immutable
sealed class TaskEvent {}

class TaskLoad extends TaskEvent {}
