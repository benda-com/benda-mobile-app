import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class UserEvent extends Equatable {}

class UserLoadEvent extends UserEvent {
  final int? id;
  UserLoadEvent(this.id);
  @override
  List<Object?> get props => [];
}
