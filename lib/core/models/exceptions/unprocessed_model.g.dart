// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unprocessed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UnprocessedModel _$$_UnprocessedModelFromJson(Map<String, dynamic> json) =>
    _$_UnprocessedModel(
      message: json['message'] as String? ?? '',
      errors: json['errors'] == null
          ? null
          : Errors.fromJson(json['errors'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UnprocessedModelToJson(_$_UnprocessedModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'errors': instance.errors,
    };

_$_Errors _$$_ErrorsFromJson(Map<String, dynamic> json) => _$_Errors(
      name:
          (json['name'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      email:
          (json['email'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      password: (json['password'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      phone:
          (json['phone'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
    );

Map<String, dynamic> _$$_ErrorsToJson(_$_Errors instance) => <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'phone': instance.phone,
    };
