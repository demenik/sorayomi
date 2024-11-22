// Copyright (c) 2022 Contributors to the Suwayomi project
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.

import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
class Category with _$Category {
  factory Category({
    int? id,
    @JsonKey(name: "name") String? unparsedName,
    int? order,
    @JsonKey(name: "default") bool? defaultCategory,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

extension LockedExtension on Category {
  String? get name {
    return unparsedName?.replaceAll("🔒 ", "");
  }

  bool? get locked {
    return unparsedName?.startsWith("🔒 ");
  }
}
