import 'package:easy_common/generated/json/base/json_convert_content.dart';
import 'package:easy_common/test/mode/home_records_entity.dart';

HomeRecordsEntity $HomeRecordsEntityFromJson(Map<String, dynamic> json) {
	final HomeRecordsEntity homeRecordsEntity = HomeRecordsEntity();
	final List<HomeRecordsRecords>? records = jsonConvert.convertListNotNull<HomeRecordsRecords>(json['records']);
	if (records != null) {
		homeRecordsEntity.records = records;
	}
	final int? total = jsonConvert.convert<int>(json['total']);
	if (total != null) {
		homeRecordsEntity.total = total;
	}
	final int? size = jsonConvert.convert<int>(json['size']);
	if (size != null) {
		homeRecordsEntity.size = size;
	}
	final int? current = jsonConvert.convert<int>(json['current']);
	if (current != null) {
		homeRecordsEntity.current = current;
	}
	final List<dynamic>? orders = jsonConvert.convertListNotNull<dynamic>(json['orders']);
	if (orders != null) {
		homeRecordsEntity.orders = orders;
	}
	final bool? optimizeCountSql = jsonConvert.convert<bool>(json['optimizeCountSql']);
	if (optimizeCountSql != null) {
		homeRecordsEntity.optimizeCountSql = optimizeCountSql;
	}
	final bool? searchCount = jsonConvert.convert<bool>(json['searchCount']);
	if (searchCount != null) {
		homeRecordsEntity.searchCount = searchCount;
	}
	final dynamic countId = jsonConvert.convert<dynamic>(json['countId']);
	if (countId != null) {
		homeRecordsEntity.countId = countId;
	}
	final dynamic maxLimit = jsonConvert.convert<dynamic>(json['maxLimit']);
	if (maxLimit != null) {
		homeRecordsEntity.maxLimit = maxLimit;
	}
	final int? pages = jsonConvert.convert<int>(json['pages']);
	if (pages != null) {
		homeRecordsEntity.pages = pages;
	}
	return homeRecordsEntity;
}

Map<String, dynamic> $HomeRecordsEntityToJson(HomeRecordsEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['records'] =  entity.records?.map((v) => v.toJson()).toList();
	data['total'] = entity.total;
	data['size'] = entity.size;
	data['current'] = entity.current;
	data['orders'] =  entity.orders;
	data['optimizeCountSql'] = entity.optimizeCountSql;
	data['searchCount'] = entity.searchCount;
	data['countId'] = entity.countId;
	data['maxLimit'] = entity.maxLimit;
	data['pages'] = entity.pages;
	return data;
}

HomeRecordsRecords $HomeRecordsRecordsFromJson(Map<String, dynamic> json) {
	final HomeRecordsRecords homeRecordsRecords = HomeRecordsRecords();
	final String? subjectId = jsonConvert.convert<String>(json['subjectId']);
	if (subjectId != null) {
		homeRecordsRecords.subjectId = subjectId;
	}
	final String? subjectName = jsonConvert.convert<String>(json['subjectName']);
	if (subjectName != null) {
		homeRecordsRecords.subjectName = subjectName;
	}
	final int? level = jsonConvert.convert<int>(json['level']);
	if (level != null) {
		homeRecordsRecords.level = level;
	}
	final String? parentId = jsonConvert.convert<String>(json['parentId']);
	if (parentId != null) {
		homeRecordsRecords.parentId = parentId;
	}
	final String? explain = jsonConvert.convert<String>(json['explain']);
	if (explain != null) {
		homeRecordsRecords.explain = explain;
	}
	final int? status = jsonConvert.convert<int>(json['status']);
	if (status != null) {
		homeRecordsRecords.status = status;
	}
	final String? subPicUrl = jsonConvert.convert<String>(json['subPicUrl']);
	if (subPicUrl != null) {
		homeRecordsRecords.subPicUrl = subPicUrl;
	}
	final int? type = jsonConvert.convert<int>(json['type']);
	if (type != null) {
		homeRecordsRecords.type = type;
	}
	final int? serial = jsonConvert.convert<int>(json['serial']);
	if (serial != null) {
		homeRecordsRecords.serial = serial;
	}
	final String? createTime = jsonConvert.convert<String>(json['createTime']);
	if (createTime != null) {
		homeRecordsRecords.createTime = createTime;
	}
	final String? createBy = jsonConvert.convert<String>(json['createBy']);
	if (createBy != null) {
		homeRecordsRecords.createBy = createBy;
	}
	final String? createName = jsonConvert.convert<String>(json['createName']);
	if (createName != null) {
		homeRecordsRecords.createName = createName;
	}
	final String? updateName = jsonConvert.convert<String>(json['updateName']);
	if (updateName != null) {
		homeRecordsRecords.updateName = updateName;
	}
	final String? updateTime = jsonConvert.convert<String>(json['updateTime']);
	if (updateTime != null) {
		homeRecordsRecords.updateTime = updateTime;
	}
	final String? updateBy = jsonConvert.convert<String>(json['updateBy']);
	if (updateBy != null) {
		homeRecordsRecords.updateBy = updateBy;
	}
	final int? delFlag = jsonConvert.convert<int>(json['delFlag']);
	if (delFlag != null) {
		homeRecordsRecords.delFlag = delFlag;
	}
	final int? siftFlag = jsonConvert.convert<int>(json['siftFlag']);
	if (siftFlag != null) {
		homeRecordsRecords.siftFlag = siftFlag;
	}
	final int? isService = jsonConvert.convert<int>(json['isService']);
	if (isService != null) {
		homeRecordsRecords.isService = isService;
	}
	final int? isSearch = jsonConvert.convert<int>(json['isSearch']);
	if (isSearch != null) {
		homeRecordsRecords.isSearch = isSearch;
	}
	final String? siftPicUrl = jsonConvert.convert<String>(json['siftPicUrl']);
	if (siftPicUrl != null) {
		homeRecordsRecords.siftPicUrl = siftPicUrl;
	}
	final String? web = jsonConvert.convert<String>(json['web']);
	if (web != null) {
		homeRecordsRecords.web = web;
	}
	final dynamic commentOrder = jsonConvert.convert<dynamic>(json['commentOrder']);
	if (commentOrder != null) {
		homeRecordsRecords.commentOrder = commentOrder;
	}
	final dynamic thumbOrder = jsonConvert.convert<dynamic>(json['thumbOrder']);
	if (thumbOrder != null) {
		homeRecordsRecords.thumbOrder = thumbOrder;
	}
	final int? recommend = jsonConvert.convert<int>(json['recommend']);
	if (recommend != null) {
		homeRecordsRecords.recommend = recommend;
	}
	final int? subjectRank = jsonConvert.convert<int>(json['subjectRank']);
	if (subjectRank != null) {
		homeRecordsRecords.subjectRank = subjectRank;
	}
	final int? jxJudge = jsonConvert.convert<int>(json['jxJudge']);
	if (jxJudge != null) {
		homeRecordsRecords.jxJudge = jxJudge;
	}
	return homeRecordsRecords;
}

Map<String, dynamic> $HomeRecordsRecordsToJson(HomeRecordsRecords entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['subjectId'] = entity.subjectId;
	data['subjectName'] = entity.subjectName;
	data['level'] = entity.level;
	data['parentId'] = entity.parentId;
	data['explain'] = entity.explain;
	data['status'] = entity.status;
	data['subPicUrl'] = entity.subPicUrl;
	data['type'] = entity.type;
	data['serial'] = entity.serial;
	data['createTime'] = entity.createTime;
	data['createBy'] = entity.createBy;
	data['createName'] = entity.createName;
	data['updateName'] = entity.updateName;
	data['updateTime'] = entity.updateTime;
	data['updateBy'] = entity.updateBy;
	data['delFlag'] = entity.delFlag;
	data['siftFlag'] = entity.siftFlag;
	data['isService'] = entity.isService;
	data['isSearch'] = entity.isSearch;
	data['siftPicUrl'] = entity.siftPicUrl;
	data['web'] = entity.web;
	data['commentOrder'] = entity.commentOrder;
	data['thumbOrder'] = entity.thumbOrder;
	data['recommend'] = entity.recommend;
	data['subjectRank'] = entity.subjectRank;
	data['jxJudge'] = entity.jxJudge;
	return data;
}