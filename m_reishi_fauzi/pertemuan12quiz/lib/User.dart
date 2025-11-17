import 'package:flutter/material.dart';

class User {
  final int id;
  final String name;
  final String email;
  final DateTime createdAt;

  // konstruktor
  User({
    required this.id,
    required this.name,
    required this.email,
    required this.createdAt,
  });

  // Konversi dari JSON ke Object Dart, Factory constructor untuk membuat instance User dari Map<String, dynamic> (JSON)
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      createdAt: DateTime.parse(json['created_at']),
    );
  }

  // Konversi dari Object Dart ke JSON (Method instance untuk konversi)
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'created_at': createdAt.toIso8601String(),
    };
  }
}