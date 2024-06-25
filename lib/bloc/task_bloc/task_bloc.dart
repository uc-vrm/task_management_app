import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'task_event.dart';
part 'task_state.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  TaskBloc() : super(TaskInitial()) {
    on<TaskEvent>((event, emit) {
      if (event is TaskInitial) {
        emit(TaskInitial());
      }
      if (event is TaskLoad) {
        emit(TaskLoaded());
      }
    });
  }
}
