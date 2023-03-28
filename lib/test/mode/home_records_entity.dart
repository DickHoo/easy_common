import 'package:easy_common/generated/json/base/json_field.dart';
import 'package:easy_common/generated/json/home_records_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class HomeRecordsEntity {
	List<HomeRecordsRecords>? records;
	int? total;
	int? size;
	int? current;
	List<dynamic>? orders;
	bool? optimizeCountSql;
	bool? searchCount;
	dynamic countId;
	dynamic maxLimit;
	int? pages;

	HomeRecordsEntity();

	factory HomeRecordsEntity.fromJson(Map<String, dynamic> json) => $HomeRecordsEntityFromJson(json);

	Map<String, dynamic> toJson() => $HomeRecordsEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeRecordsRecords {
	String? subjectId;
	String? subjectName;
	int? level;
	String? parentId;
	String? explain;
	int? status;
	String? subPicUrl;
	int? type;
	int? serial;
	String? createTime;
	String? createBy;
	String? createName;
	String? updateName;
	String? updateTime;
	String? updateBy;
	int? delFlag;
	int? siftFlag;
	int? isService;
	int? isSearch;
	String? siftPicUrl;
	String? web;
	dynamic commentOrder;
	dynamic thumbOrder;
	int? recommend;
	int? subjectRank;
	int? jxJudge;

	HomeRecordsRecords();

	factory HomeRecordsRecords.fromJson(Map<String, dynamic> json) => $HomeRecordsRecordsFromJson(json);

	Map<String, dynamic> toJson() => $HomeRecordsRecordsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}