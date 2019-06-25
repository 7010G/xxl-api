/*
Navicat PGSQL Data Transfer

Source Server         : 10.0.118.84
Source Server Version : 90604
Source Host           : 10.0.118.84:5432
Source Database       : xxl-api
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90604
File Encoding         : 65001

Date: 2019-06-25 10:13:36
*/


-- ----------------------------
-- Table structure for xxl_api_biz
-- ----------------------------
DROP TABLE IF EXISTS "public"."xxl_api_biz";
CREATE TABLE "public"."xxl_api_biz" (
"id" varchar(50) COLLATE "default" NOT NULL,
"biz_name" varchar(50) COLLATE "default" NOT NULL,
"order" int2 DEFAULT 0 NOT NULL
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "public"."xxl_api_biz"."biz_name" IS '业务线名称';
COMMENT ON COLUMN "public"."xxl_api_biz"."order" IS '排序';

-- ----------------------------
-- Records of xxl_api_biz
-- ----------------------------
INSERT INTO "public"."xxl_api_biz" VALUES ('44aa50f3-88d2-4ef2-95d3-4c7b796eefd3', 'CRM业务', '1');
INSERT INTO "public"."xxl_api_biz" VALUES ('99fe79a6-6cd7-4fe0-9a02-4ec5676cada1', '信贷业务', '1');
INSERT INTO "public"."xxl_api_biz" VALUES ('ab6cf60a-9a94-4c3e-a85c-d71c76ab4d52', '默认业务线', '1');

-- ----------------------------
-- Table structure for xxl_api_datatype
-- ----------------------------
DROP TABLE IF EXISTS "public"."xxl_api_datatype";
CREATE TABLE "public"."xxl_api_datatype" (
"id" varchar(50) COLLATE "default" NOT NULL,
"name" varchar(100) COLLATE "default" NOT NULL,
"about" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"biz_id" varchar(50) COLLATE "default" NOT NULL,
"owner" varchar(100) COLLATE "default" DEFAULT NULL::character varying
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "public"."xxl_api_datatype"."name" IS '数据类型名称';
COMMENT ON COLUMN "public"."xxl_api_datatype"."about" IS '数据类型描述';
COMMENT ON COLUMN "public"."xxl_api_datatype"."biz_id" IS '业务线ID，为0表示公共';
COMMENT ON COLUMN "public"."xxl_api_datatype"."owner" IS '负责人';

-- ----------------------------
-- Records of xxl_api_datatype
-- ----------------------------
INSERT INTO "public"."xxl_api_datatype" VALUES ('143dd129-c856-4f11-9b1a-c572a7fdd1f1', 'Boolean', '布尔类型', 'ab6cf60a-9a94-4c3e-a85c-d71c76ab4d52', null);
INSERT INTO "public"."xxl_api_datatype" VALUES ('691ab45f-8a03-4703-917d-d8ef488280f9', 'DateTime', '日期类型，格式“yyyy-MM-mm HH:mm:ss”', 'ab6cf60a-9a94-4c3e-a85c-d71c76ab4d52', null);
INSERT INTO "public"."xxl_api_datatype" VALUES ('79535b5c-d7b7-4068-ba24-cf1deb532bd2', 'String', '字符串类型', 'ab6cf60a-9a94-4c3e-a85c-d71c76ab4d52', null);
INSERT INTO "public"."xxl_api_datatype" VALUES ('7bda5160-c17b-4ad9-9b19-af4a40a6c399', 'Double', '双精度浮点数', 'ab6cf60a-9a94-4c3e-a85c-d71c76ab4d52', null);
INSERT INTO "public"."xxl_api_datatype" VALUES ('804f6d4a-ccf0-4093-89a6-570d8ef3817f', 'Integer', '数字整型', 'ab6cf60a-9a94-4c3e-a85c-d71c76ab4d52', null);
INSERT INTO "public"."xxl_api_datatype" VALUES ('9f5f2376-25f3-487a-a5ac-ff0981885df4', 'Float', '单精度浮点数', 'ab6cf60a-9a94-4c3e-a85c-d71c76ab4d52', null);
INSERT INTO "public"."xxl_api_datatype" VALUES ('dff40b17-b48b-4b8a-a89c-1bf05e9f762d', 'Json', 'json', 'ab6cf60a-9a94-4c3e-a85c-d71c76ab4d52', null);
INSERT INTO "public"."xxl_api_datatype" VALUES ('e837987f-3452-4fba-a0cc-510a65774bf7', 'Date', '日期类型，格式“yyyy-MM-mm”', 'ab6cf60a-9a94-4c3e-a85c-d71c76ab4d52', null);
INSERT INTO "public"."xxl_api_datatype" VALUES ('f9f5303e-5ae6-4434-90bb-d15b1cb670c4', 'Short', '短整型', 'ab6cf60a-9a94-4c3e-a85c-d71c76ab4d52', null);
INSERT INTO "public"."xxl_api_datatype" VALUES ('fc00464d-a57e-4ecc-b22d-201aeaffdfca', 'Long', '长整型', 'ab6cf60a-9a94-4c3e-a85c-d71c76ab4d52', null);

-- ----------------------------
-- Table structure for xxl_api_datatype_fileds
-- ----------------------------
DROP TABLE IF EXISTS "public"."xxl_api_datatype_fileds";
CREATE TABLE "public"."xxl_api_datatype_fileds" (
"id" varchar(50) COLLATE "default" NOT NULL,
"parent_datatype_id" varchar(50) COLLATE "default" NOT NULL,
"field_name" varchar(100) COLLATE "default" NOT NULL,
"field_about" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"field_datatype_id" varchar(50) COLLATE "default" NOT NULL,
"field_type" varchar(50) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "public"."xxl_api_datatype_fileds"."parent_datatype_id" IS '所属，数据类型ID';
COMMENT ON COLUMN "public"."xxl_api_datatype_fileds"."field_name" IS '字段名称';
COMMENT ON COLUMN "public"."xxl_api_datatype_fileds"."field_about" IS '字段描述';
COMMENT ON COLUMN "public"."xxl_api_datatype_fileds"."field_datatype_id" IS '字段数据类型ID';
COMMENT ON COLUMN "public"."xxl_api_datatype_fileds"."field_type" IS '字段形式：0=默认、1=数组';

-- ----------------------------
-- Records of xxl_api_datatype_fileds
-- ----------------------------

-- ----------------------------
-- Table structure for xxl_api_document
-- ----------------------------
DROP TABLE IF EXISTS "public"."xxl_api_document";
CREATE TABLE "public"."xxl_api_document" (
"id" varchar(50) COLLATE "default" NOT NULL,
"project_id" varchar(500) COLLATE "default" NOT NULL,
"group_id" varchar(50) COLLATE "default" NOT NULL,
"name" varchar(50) COLLATE "default" NOT NULL,
"status" int2 DEFAULT '0'::smallint NOT NULL,
"star_level" int2 NOT NULL,
"request_url" varchar(100) COLLATE "default" NOT NULL,
"request_method" varchar(20) COLLATE "default" NOT NULL,
"request_headers" text COLLATE "default",
"query_params" text COLLATE "default",
"response_params" text COLLATE "default",
"response_datatype_id" varchar(50) COLLATE "default" DEFAULT '0'::character varying NOT NULL,
"success_resp_type" varchar(50) COLLATE "default" NOT NULL,
"success_resp_example" text COLLATE "default",
"fail_resp_type" varchar(255) COLLATE "default" NOT NULL,
"fail_resp_example" text COLLATE "default",
"remark" text COLLATE "default",
"add_time" date NOT NULL,
"update_time" date NOT NULL
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "public"."xxl_api_document"."project_id" IS '项目ID';
COMMENT ON COLUMN "public"."xxl_api_document"."group_id" IS '分组ID';
COMMENT ON COLUMN "public"."xxl_api_document"."name" IS '接口名称';
COMMENT ON COLUMN "public"."xxl_api_document"."status" IS '状态：0-启用、1-维护、2-废弃';
COMMENT ON COLUMN "public"."xxl_api_document"."star_level" IS '星标等级：0-普通接口、1-一星接口';
COMMENT ON COLUMN "public"."xxl_api_document"."request_url" IS 'Request URL：相对地址';
COMMENT ON COLUMN "public"."xxl_api_document"."request_method" IS 'Request Method：如POST、GET';
COMMENT ON COLUMN "public"."xxl_api_document"."request_headers" IS 'Request Headers：Map-JSON格式字符串';
COMMENT ON COLUMN "public"."xxl_api_document"."query_params" IS 'Query String Parameters：VO-JSON格式字符串';
COMMENT ON COLUMN "public"."xxl_api_document"."response_params" IS 'Response Parameters：VO-JSON格式字符串';
COMMENT ON COLUMN "public"."xxl_api_document"."response_datatype_id" IS '响应数据类型ID';
COMMENT ON COLUMN "public"."xxl_api_document"."success_resp_type" IS 'Response Content-type：成功接口，如JSON、XML、HTML、TEXT、JSONP';
COMMENT ON COLUMN "public"."xxl_api_document"."success_resp_example" IS 'Response Content：成功接口';
COMMENT ON COLUMN "public"."xxl_api_document"."fail_resp_type" IS 'Response Content-type：失败接口';
COMMENT ON COLUMN "public"."xxl_api_document"."fail_resp_example" IS 'Response Content：失败接口';
COMMENT ON COLUMN "public"."xxl_api_document"."remark" IS '备注';
COMMENT ON COLUMN "public"."xxl_api_document"."add_time" IS '创建时间';
COMMENT ON COLUMN "public"."xxl_api_document"."update_time" IS '更新时间';

-- ----------------------------
-- Records of xxl_api_document
-- ----------------------------
INSERT INTO "public"."xxl_api_document" VALUES ('06b8ab74-656b-4ea8-b533-5cdd1d562d8e', 'ddb76c5d-2c51-4921-8cab-6d1e7b9d213b', '86fcfbeb-1b1e-4e09-98a8-cd7894b1a5b3', 'tradedetail_lossandreport(挂失补发换卡明细表)', '0', '0', '/publicQuiry', 'POST', '[]', '[]', '[]', 'dff40b17-b48b-4b8a-a89c-1bf05e9f762d', 'JSON', '', 'JSON', '', '智慧柜台系统	0003	76f12737-9cf7-4d5d-b26b-109e8e023e3f	信贷环境	已上线
', '2019-05-29', '2019-06-19');
INSERT INTO "public"."xxl_api_document" VALUES ('0f4ec1c5-b9bd-4741-886c-9c09de4c1fec', 'd4e94c79-7c77-4de7-9ef1-746a1762fcb0', '94a20906-4f4d-44cf-91b8-294ab1754224', 'four_cus_mongodb(四扫客户表)', '0', '0', '/publicQuiry', 'POST', '[]', '[]', '[]', 'dff40b17-b48b-4b8a-a89c-1bf05e9f762d', 'JSON', '', 'JSON', '', '四扫系统	0005	422836d2-d64f-4804-a063-e2530b992574	CRM环境	已上线
', '2019-05-29', '2019-06-19');
INSERT INTO "public"."xxl_api_document" VALUES ('17230d0c-a51c-48fc-9222-ae20fd3e4bb0', 'ddb76c5d-2c51-4921-8cab-6d1e7b9d213b', '34cc0deb-8a63-445d-9e8c-afc986755afa', 'rpt_85_zfjymxcx(交易明细)', '0', '0', '/publicQuiry', 'POST', '[]', '[]', '[]', 'dff40b17-b48b-4b8a-a89c-1bf05e9f762d', 'JSON', '', 'JSON', '', '风险交易系统（新中间业务）	0009	f8b69ba3-62a2-4512-9a5c-625bb58b6a6f	信贷环境	已上线

未设置每天数据自动加载,数据已加载2018年1月——2019年5月', '2019-05-23', '2019-06-25');
INSERT INTO "public"."xxl_api_document" VALUES ('1c6cf3f4-07da-4cb3-a5eb-37f1aa15e40f', 'd4e94c79-7c77-4de7-9ef1-746a1762fcb0', '616499a0-4287-4112-ac13-bd3c231b91c4', 'ci_public_custinfo(客户公共信息表)', '1', '0', '/publicQuiry', 'POST', '[]', '[]', '[]', 'dff40b17-b48b-4b8a-a89c-1bf05e9f762d', 'JSON', '', 'JSON', '', '柜面	0001	d9d700cd-ea14-4320-a324-d0e3735bde82	CRM环境	已上线

增加了一个字段fr_card_expire未上线', '2019-05-23', '2019-06-19');
INSERT INTO "public"."xxl_api_document" VALUES ('20ef2686-dbd2-4b99-83b2-3dc8b3d30e80', 'ddb76c5d-2c51-4921-8cab-6d1e7b9d213b', '86fcfbeb-1b1e-4e09-98a8-cd7894b1a5b3', 'busi_cert_search(主流水证件信息关联表)', '0', '0', '/publicQuiry', 'POST', '[]', '[]', '[]', 'dff40b17-b48b-4b8a-a89c-1bf05e9f762d', 'JSON', '', 'JSON', '', '智慧柜台系统	0003	76f12737-9cf7-4d5d-b26b-109e8e023e3f	信贷环境	已上线
', '2019-05-23', '2019-06-19');
INSERT INTO "public"."xxl_api_document" VALUES ('36b653ea-bcf2-41cd-b16c-6f819993882a', 'ddb76c5d-2c51-4921-8cab-6d1e7b9d213b', '73d02293-6137-4556-a2d9-55c8644c8792', 'ods_in_trad(内部帐明细)', '0', '0', '/publicQuiry', 'POST', '[]', '[]', '[]', 'dff40b17-b48b-4b8a-a89c-1bf05e9f762d', 'JSON', '', 'JSON', '', '电子档案	0002	6357d46f-d969-4b4a-8960-9fa9a07c22c3	信贷环境	已上线
', '2019-05-23', '2019-06-19');
INSERT INTO "public"."xxl_api_document" VALUES ('3758d323-b3b0-4d31-8b7d-aa3c71bb65dd', 'd4e94c79-7c77-4de7-9ef1-746a1762fcb0', '59b5094a-ee34-438d-8769-1b45a602980f', '微服务查询接口', '0', '0', '/publicQuiry', 'POST', '[]', '[]', '[]', 'dff40b17-b48b-4b8a-a89c-1bf05e9f762d', 'JSON', '', 'JSON', '', '国结系统	0007	20b47333-55bb-43ae-b4bb-21e56aef1805	CRM环境	已上线
', '2019-05-23', '2019-06-19');
INSERT INTO "public"."xxl_api_document" VALUES ('3a773ce6-94f0-46c7-afa8-8b49b80f2886', 'd4e94c79-7c77-4de7-9ef1-746a1762fcb0', '8a2035a4-3dbe-4829-b290-e5c02cc2ea61', '微服务查询接口', '0', '0', '/publicQuiry', 'POST', '[]', '[]', '[]', 'dff40b17-b48b-4b8a-a89c-1bf05e9f762d', 'JSON', '', 'JSON', '', '移动营销	0001	6d237e92-4be9-4f18-800d-c8e8b99e059e	CRM环境	已上线
', '2019-05-23', '2019-06-19');
INSERT INTO "public"."xxl_api_document" VALUES ('3af96831-716d-4f8e-9965-f5dd1ef1974e', 'ddb76c5d-2c51-4921-8cab-6d1e7b9d213b', '86fcfbeb-1b1e-4e09-98a8-cd7894b1a5b3', 'tradedetail_lifepay(生活缴费类交易明细表)', '0', '0', '/publicQuiry', 'POST', '[]', '[]', '[]', 'dff40b17-b48b-4b8a-a89c-1bf05e9f762d', 'JSON', '', 'JSON', '', '智慧柜台系统	0003	76f12737-9cf7-4d5d-b26b-109e8e023e3f	信贷环境	已上线
', '2019-05-29', '2019-06-19');
INSERT INTO "public"."xxl_api_document" VALUES ('3dc60da2-a6fc-4696-a276-7a7324613b35', 'ddb76c5d-2c51-4921-8cab-6d1e7b9d213b', '86fcfbeb-1b1e-4e09-98a8-cd7894b1a5b3', 'tradedetail_transfer(转账交易明细)', '0', '0', '/publicQuiry', 'POST', '[]', '[]', '[]', 'dff40b17-b48b-4b8a-a89c-1bf05e9f762d', 'JSON', '', 'JSON', '', '智慧柜台系统	0003	76f12737-9cf7-4d5d-b26b-109e8e023e3f	信贷环境	已上线
', '2019-05-29', '2019-06-19');
INSERT INTO "public"."xxl_api_document" VALUES ('3eac4c93-f355-4219-aa98-7c10f11c0d72', 'd4e94c79-7c77-4de7-9ef1-746a1762fcb0', '94a20906-4f4d-44cf-91b8-294ab1754224', 'four_manage_details(经营明细表)', '0', '0', '/publicQuiry', 'POST', '[]', '[]', '[]', 'dff40b17-b48b-4b8a-a89c-1bf05e9f762d', 'JSON', '', 'JSON', '', '四扫系统	0005	422836d2-d64f-4804-a063-e2530b992574	CRM环境	已上线
', '2019-05-29', '2019-06-19');
INSERT INTO "public"."xxl_api_document" VALUES ('4da8781a-a36c-4635-8c34-928bec61d872', 'd4e94c79-7c77-4de7-9ef1-746a1762fcb0', 'c123399c-5eb1-4ff8-a26b-6f4984427c1d', 'ci_public_custinfo(客户公共信息表)', '1', '0', '/publicQuiry', 'POST', '[]', '[]', '[]', 'dff40b17-b48b-4b8a-a89c-1bf05e9f762d', 'JSON', '', 'JSON', '', '票据系统	0010	28bb99a1-bfb6-4458-88bf-3cabb0fd05a2	CRM环境	测试中（下周上线）
', '2019-05-23', '2019-06-25');
INSERT INTO "public"."xxl_api_document" VALUES ('4efa091c-4b63-4903-b46e-72bcb87cdcf3', 'ddb76c5d-2c51-4921-8cab-6d1e7b9d213b', '73d02293-6137-4556-a2d9-55c8644c8792', 'ods_cus_trad(客户帐明细)', '0', '0', '/publicQuiry', 'POST', '[]', '[]', '[]', 'dff40b17-b48b-4b8a-a89c-1bf05e9f762d', 'JSON', '', 'JSON', '', '电子档案	0002	6357d46f-d969-4b4a-8960-9fa9a07c22c3	信贷环境	已上线
', '2019-05-29', '2019-06-19');
INSERT INTO "public"."xxl_api_document" VALUES ('640d7713-0885-4d6f-bfac-5f73108c3713', 'd4e94c79-7c77-4de7-9ef1-746a1762fcb0', '94a20906-4f4d-44cf-91b8-294ab1754224', 'four_family_details（家庭成员明细表）', '0', '0', '/publicQuiry', 'POST', '[]', '[]', '[]', 'dff40b17-b48b-4b8a-a89c-1bf05e9f762d', 'JSON', '', 'JSON', '', '四扫系统	0005	422836d2-d64f-4804-a063-e2530b992574	CRM环境	已上线
', '2019-05-29', '2019-06-19');
INSERT INTO "public"."xxl_api_document" VALUES ('6ec67bf6-50db-4ad6-adac-418df0386f7f', 'd4e94c79-7c77-4de7-9ef1-746a1762fcb0', '4c6d6df6-8c1f-4af7-b2c1-926df84fcac2', 'ci_basic_custinfo(客户基础指标表)', '1', '0', '/publicQuiry', 'POST', '[]', '[]', '[]', 'dff40b17-b48b-4b8a-a89c-1bf05e9f762d', 'JSON', '', 'JSON', '', '修改了字段未上线', '2019-06-25', '2019-06-25');
INSERT INTO "public"."xxl_api_document" VALUES ('70777a00-46a5-4ef6-a234-5513486983d4', 'ddb76c5d-2c51-4921-8cab-6d1e7b9d213b', '86fcfbeb-1b1e-4e09-98a8-cd7894b1a5b3', 'tradedetail_sign(签约交易明细数据)', '0', '0', '/publicQuiry', 'POST', '[]', '[]', '[]', 'dff40b17-b48b-4b8a-a89c-1bf05e9f762d', 'JSON', '', 'JSON', '', '智慧柜台系统	0003	76f12737-9cf7-4d5d-b26b-109e8e023e3f	信贷环境	已上线
', '2019-05-29', '2019-06-19');
INSERT INTO "public"."xxl_api_document" VALUES ('7884814f-8a00-4557-8220-8ac10f57df0f', 'd4e94c79-7c77-4de7-9ef1-746a1762fcb0', 'cf72db78-0a95-415d-9eff-66c6c0ae785e', 'ci_public_custinfo(客户公共信息表)', '1', '0', '/publicQuiry', 'POST', '[]', '[]', '[]', 'dff40b17-b48b-4b8a-a89c-1bf05e9f762d', 'JSON', '', 'JSON', '', '卡系统	0008	f0ecea3c-1480-43e4-966d-37f3bfbb2d65	CRM环境	测试中
', '2019-05-23', '2019-06-19');
INSERT INTO "public"."xxl_api_document" VALUES ('7eb46db1-09b4-47f5-acea-e9645a775d91', 'd4e94c79-7c77-4de7-9ef1-746a1762fcb0', '4c6d6df6-8c1f-4af7-b2c1-926df84fcac2', 'ci_warning_custinfo(客户提醒信息表)', '0', '0', '/publicQuiry', 'POST', '[]', '[]', null, 'dff40b17-b48b-4b8a-a89c-1bf05e9f762d', 'JSON', '', 'JSON', '', '', '2019-06-25', '2019-06-25');
INSERT INTO "public"."xxl_api_document" VALUES ('86b3a02f-968f-474c-b6a5-de55d68e1fea', 'ddb76c5d-2c51-4921-8cab-6d1e7b9d213b', '29f6a417-fff0-48ba-95e1-d0e460e3e005', '微服务查询接口', '1', '0', '/publicQuiry', 'POST', '[]', '[]', '[]', 'dff40b17-b48b-4b8a-a89c-1bf05e9f762d', 'JSON', '', 'JSON', '', '', '2019-05-23', '2019-05-23');
INSERT INTO "public"."xxl_api_document" VALUES ('a27c79c8-2b46-4d86-9813-a40f26780cd6', 'd4e94c79-7c77-4de7-9ef1-746a1762fcb0', '4c6d6df6-8c1f-4af7-b2c1-926df84fcac2', 'cl_public_list(字典描述表)', '0', '0', '/publicQuiry', 'POST', '[]', '[]', null, 'dff40b17-b48b-4b8a-a89c-1bf05e9f762d', 'JSON', '', 'JSON', '', '', '2019-06-25', '2019-06-25');
INSERT INTO "public"."xxl_api_document" VALUES ('a9377980-b948-41a7-bee8-77f73cd63e5e', 'd4e94c79-7c77-4de7-9ef1-746a1762fcb0', '0e9e5bde-a99d-4b8a-8c61-76b4e5bfe4ef', '微服务查询接口', '0', '0', '/publicQuiry', 'POST', '[]', '[]', '[]', 'dff40b17-b48b-4b8a-a89c-1bf05e9f762d', 'JSON', '', 'JSON', '', '客服	0001	5a59c565-d10d-4ca1-8936-82edd2a9abe1	CRM环境	已上线
', '2019-05-23', '2019-06-19');
INSERT INTO "public"."xxl_api_document" VALUES ('bbb97751-8dc1-42bb-9fdf-4ae514b4ec46', 'ddb76c5d-2c51-4921-8cab-6d1e7b9d213b', '86fcfbeb-1b1e-4e09-98a8-cd7894b1a5b3', 'tradedetail_financial(定活互转交易记录表)', '0', '0', '/publicQuiry', 'POST', '[]', '[]', '[]', 'dff40b17-b48b-4b8a-a89c-1bf05e9f762d', 'JSON', '', 'JSON', '', '智慧柜台系统	0003	76f12737-9cf7-4d5d-b26b-109e8e023e3f	信贷环境	已上线
', '2019-05-29', '2019-06-19');
INSERT INTO "public"."xxl_api_document" VALUES ('c58d5810-671e-4a84-a7ad-2f8f0ecda7d2', 'd4e94c79-7c77-4de7-9ef1-746a1762fcb0', '4c6d6df6-8c1f-4af7-b2c1-926df84fcac2', 'bifm02', '0', '0', '/publicQuiry', 'POST', '[]', '[]', null, 'dff40b17-b48b-4b8a-a89c-1bf05e9f762d', 'JSON', '', 'JSON', '', '', '2019-06-25', '2019-06-25');
INSERT INTO "public"."xxl_api_document" VALUES ('ca429b26-1cb0-4554-b1d0-d3be134c367c', 'ddb76c5d-2c51-4921-8cab-6d1e7b9d213b', '86fcfbeb-1b1e-4e09-98a8-cd7894b1a5b3', 'cash_busiinfo(现金交易信息表)', '0', '0', '/publicQuiry', 'POST', '[]', '[]', '[]', 'dff40b17-b48b-4b8a-a89c-1bf05e9f762d', 'JSON', '', 'JSON', '', '智慧柜台系统	0003	76f12737-9cf7-4d5d-b26b-109e8e023e3f	信贷环境	已上线
', '2019-05-29', '2019-06-19');
INSERT INTO "public"."xxl_api_document" VALUES ('d33ddab9-e7c0-4216-bc49-7683c47abb41', 'd4e94c79-7c77-4de7-9ef1-746a1762fcb0', '616499a0-4287-4112-ac13-bd3c231b91c4', 'ci_basic_custinfo（客户基础指标表）', '1', '0', '/publicQuiry', 'POST', '[]', '[]', '[]', 'dff40b17-b48b-4b8a-a89c-1bf05e9f762d', 'JSON', '', 'JSON', '', '柜面	0001	d9d700cd-ea14-4320-a324-d0e3735bde82	CRM环境	已上线

修改了字段未上线', '2019-06-18', '2019-06-19');
INSERT INTO "public"."xxl_api_document" VALUES ('dc894454-860f-49d2-bfbd-e8670fd292da', 'd4e94c79-7c77-4de7-9ef1-746a1762fcb0', '90763ba4-ac77-469d-8255-abcc84124597', 'rpt_b_rb_207(金融资产日均信息)', '0', '0', '/publicQuiry', 'POST', '[]', '[]', '[]', 'dff40b17-b48b-4b8a-a89c-1bf05e9f762d', 'JSON', '', 'JSON', '', '秒贷系统	sys_code_xindai	xindai_4ETRSCSPNCJDIBCISUYGF	CRM环境	已上线
', '2019-05-23', '2019-06-19');
INSERT INTO "public"."xxl_api_document" VALUES ('e3027385-7d51-4efc-9e80-e9f99027a79b', 'ddb76c5d-2c51-4921-8cab-6d1e7b9d213b', '73d02293-6137-4556-a2d9-55c8644c8792', 'bifm60(交易流水)', '0', '0', '/publicQuiry', 'POST', '[]', '[]', '[]', 'dff40b17-b48b-4b8a-a89c-1bf05e9f762d', 'JSON', '', 'JSON', '', '电子档案	0002	6357d46f-d969-4b4a-8960-9fa9a07c22c3	信贷环境	已上线
', '2019-05-29', '2019-06-19');
INSERT INTO "public"."xxl_api_document" VALUES ('ef3f4ef9-e258-4074-b9b5-af871eaf6df7', 'd4e94c79-7c77-4de7-9ef1-746a1762fcb0', '94a20906-4f4d-44cf-91b8-294ab1754224', 'four_assets_details(资产及负债明细表)', '0', '0', '/publicQuiry', 'POST', '[]', '[]', '[]', 'dff40b17-b48b-4b8a-a89c-1bf05e9f762d', 'JSON', '', 'JSON', '', '四扫系统	0005	422836d2-d64f-4804-a063-e2530b992574	CRM环境	已上线
', '2019-05-23', '2019-06-19');
INSERT INTO "public"."xxl_api_document" VALUES ('fae92d64-6cb1-47a8-94ae-575fd95c49a4', 'ddb76c5d-2c51-4921-8cab-6d1e7b9d213b', '73d02293-6137-4556-a2d9-55c8644c8792', 'crfh10(会计凭证)', '0', '0', '/publicQuiry', 'POST', '[]', '[]', '[]', 'dff40b17-b48b-4b8a-a89c-1bf05e9f762d', 'JSON', '', 'JSON', '', '电子档案	0002	6357d46f-d969-4b4a-8960-9fa9a07c22c3	信贷环境	已上线
', '2019-05-29', '2019-06-19');
INSERT INTO "public"."xxl_api_document" VALUES ('fbc715eb-8481-41f7-aa80-cb8c20025a7e', 'd4e94c79-7c77-4de7-9ef1-746a1762fcb0', '4c6d6df6-8c1f-4af7-b2c1-926df84fcac2', 'ci_public_custinfo(客户公共信息表)', '1', '0', '/publicQuiry', 'POST', '[]', '[]', '[]', 'dff40b17-b48b-4b8a-a89c-1bf05e9f762d', 'JSON', '', 'JSON', '', '增加了一个字段fr_card_expire未上线', '2019-06-25', '2019-06-25');

-- ----------------------------
-- Table structure for xxl_api_group
-- ----------------------------
DROP TABLE IF EXISTS "public"."xxl_api_group";
CREATE TABLE "public"."xxl_api_group" (
"id" varchar(50) COLLATE "default" NOT NULL,
"project_id" varchar(50) COLLATE "default" NOT NULL,
"name" varchar(255) COLLATE "default" NOT NULL,
"order" int2 NOT NULL
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "public"."xxl_api_group"."project_id" IS '项目ID';
COMMENT ON COLUMN "public"."xxl_api_group"."name" IS '分组名称';
COMMENT ON COLUMN "public"."xxl_api_group"."order" IS '分组排序';

-- ----------------------------
-- Records of xxl_api_group
-- ----------------------------
INSERT INTO "public"."xxl_api_group" VALUES ('0e9e5bde-a99d-4b8a-8c61-76b4e5bfe4ef', 'd4e94c79-7c77-4de7-9ef1-746a1762fcb0', '客服系统', '1');
INSERT INTO "public"."xxl_api_group" VALUES ('29f6a417-fff0-48ba-95e1-d0e460e3e005', 'ddb76c5d-2c51-4921-8cab-6d1e7b9d213b', '下钻查询', '3');
INSERT INTO "public"."xxl_api_group" VALUES ('34cc0deb-8a63-445d-9e8c-afc986755afa', 'ddb76c5d-2c51-4921-8cab-6d1e7b9d213b', '风险交易系统（新中间业）', '1');
INSERT INTO "public"."xxl_api_group" VALUES ('4c6d6df6-8c1f-4af7-b2c1-926df84fcac2', 'd4e94c79-7c77-4de7-9ef1-746a1762fcb0', 'CRM', '1');
INSERT INTO "public"."xxl_api_group" VALUES ('59b5094a-ee34-438d-8769-1b45a602980f', 'd4e94c79-7c77-4de7-9ef1-746a1762fcb0', '国结系统', '1');
INSERT INTO "public"."xxl_api_group" VALUES ('616499a0-4287-4112-ac13-bd3c231b91c4', 'd4e94c79-7c77-4de7-9ef1-746a1762fcb0', '柜面', '2');
INSERT INTO "public"."xxl_api_group" VALUES ('73d02293-6137-4556-a2d9-55c8644c8792', 'ddb76c5d-2c51-4921-8cab-6d1e7b9d213b', '电子档案', '1');
INSERT INTO "public"."xxl_api_group" VALUES ('86fcfbeb-1b1e-4e09-98a8-cd7894b1a5b3', 'ddb76c5d-2c51-4921-8cab-6d1e7b9d213b', '智慧柜台系统', '2');
INSERT INTO "public"."xxl_api_group" VALUES ('8a2035a4-3dbe-4829-b290-e5c02cc2ea61', 'd4e94c79-7c77-4de7-9ef1-746a1762fcb0', '移动营销', '1');
INSERT INTO "public"."xxl_api_group" VALUES ('90763ba4-ac77-469d-8255-abcc84124597', 'd4e94c79-7c77-4de7-9ef1-746a1762fcb0', '秒贷系统', '2');
INSERT INTO "public"."xxl_api_group" VALUES ('94a20906-4f4d-44cf-91b8-294ab1754224', 'd4e94c79-7c77-4de7-9ef1-746a1762fcb0', '四扫系统', '3');
INSERT INTO "public"."xxl_api_group" VALUES ('c123399c-5eb1-4ff8-a26b-6f4984427c1d', 'd4e94c79-7c77-4de7-9ef1-746a1762fcb0', '票据系统', '1');
INSERT INTO "public"."xxl_api_group" VALUES ('cf72db78-0a95-415d-9eff-66c6c0ae785e', 'd4e94c79-7c77-4de7-9ef1-746a1762fcb0', '卡系统', '2');

-- ----------------------------
-- Table structure for xxl_api_mock
-- ----------------------------
DROP TABLE IF EXISTS "public"."xxl_api_mock";
CREATE TABLE "public"."xxl_api_mock" (
"id" varchar(50) COLLATE "default" NOT NULL,
"document_id" varchar(50) COLLATE "default" NOT NULL,
"uuid" varchar(50) COLLATE "default" NOT NULL,
"resp_type" varchar(50) COLLATE "default" NOT NULL,
"resp_example" text COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "public"."xxl_api_mock"."document_id" IS '接口ID';
COMMENT ON COLUMN "public"."xxl_api_mock"."uuid" IS 'UUID';
COMMENT ON COLUMN "public"."xxl_api_mock"."resp_type" IS 'Response Content-type：如JSON、XML、HTML、TEXT、JSONP';
COMMENT ON COLUMN "public"."xxl_api_mock"."resp_example" IS 'Response Content';

-- ----------------------------
-- Records of xxl_api_mock
-- ----------------------------

-- ----------------------------
-- Table structure for xxl_api_project
-- ----------------------------
DROP TABLE IF EXISTS "public"."xxl_api_project";
CREATE TABLE "public"."xxl_api_project" (
"id" varchar(50) COLLATE "default" NOT NULL,
"name" varchar(50) COLLATE "default" NOT NULL,
"desc" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"base_url_product" varchar(200) COLLATE "default" NOT NULL,
"base_url_ppe" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"base_url_qa" varchar(200) COLLATE "default" DEFAULT NULL::character varying,
"biz_id" varchar(50) COLLATE "default" DEFAULT '0'::character varying NOT NULL
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "public"."xxl_api_project"."name" IS '项目名称';
COMMENT ON COLUMN "public"."xxl_api_project"."desc" IS '项目描述';
COMMENT ON COLUMN "public"."xxl_api_project"."base_url_product" IS '根地址：线上环境';
COMMENT ON COLUMN "public"."xxl_api_project"."base_url_ppe" IS '根地址：预发布环境';
COMMENT ON COLUMN "public"."xxl_api_project"."base_url_qa" IS '根地址：测试环境';
COMMENT ON COLUMN "public"."xxl_api_project"."biz_id" IS '业务线ID';

-- ----------------------------
-- Records of xxl_api_project
-- ----------------------------
INSERT INTO "public"."xxl_api_project" VALUES ('d4e94c79-7c77-4de7-9ef1-746a1762fcb0', 'CRM环境微服务查询接口', '提供数据查询服务', 'http://10.0.155.164:9927', '', 'http://10.0.123.80:9927', '44aa50f3-88d2-4ef2-95d3-4c7b796eefd3');
INSERT INTO "public"."xxl_api_project" VALUES ('ddb76c5d-2c51-4921-8cab-6d1e7b9d213b', '信贷环境微服务查询接口', '提供数据查询服务', 'http://10.0.156.139:9927', '', 'http://10.0.123.80:9927', '99fe79a6-6cd7-4fe0-9a02-4ec5676cada1');

-- ----------------------------
-- Table structure for xxl_api_test_history
-- ----------------------------
DROP TABLE IF EXISTS "public"."xxl_api_test_history";
CREATE TABLE "public"."xxl_api_test_history" (
"id" varchar(50) COLLATE "default" NOT NULL,
"document_id" varchar(50) COLLATE "default" NOT NULL,
"add_time" varchar(50) COLLATE "default",
"update_time" varchar(50) COLLATE "default",
"request_url" varchar(200) COLLATE "default" NOT NULL,
"request_method" varchar(20) COLLATE "default" NOT NULL,
"request_headers" text COLLATE "default",
"query_params" text COLLATE "default",
"resp_type" varchar(50) COLLATE "default" DEFAULT NULL::character varying
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of xxl_api_test_history
-- ----------------------------
INSERT INTO "public"."xxl_api_test_history" VALUES ('0609be6f-8775-4a3c-a3d4-d26f27c083ca', '4da8781a-a36c-4635-8c34-928bec61d872', '2019-06-18 10:10:39.986325+08', '2019-06-18 10:10:39.986325+08', 'http://10.0.155.164:9927/publicQuiry', 'POST', '[]', '[{"key":"json","value":"{\n\t\"sys_code\": \"sys_code_test\",\n\t\"sys_token\": \"0fc5440a-abda-48ca-99aa-9ebd1116fc73\",\n\t\"query_time\": \"2017-11-20 15:16:17.156\",\n\t\"table\": \"ci_public_custinfo\",\n\t\"skip\": 0,\n\t\"limit\": 10,\n\t\"if_count\": true,\n\t\"fields\": [\n\t\t{\n\t\t\t\"name\": \"customer_id\"\n\t\t},\n\t\t{\n\t\t\t\"name\": \"cust_name\"\n\t\t},{\n\t\t\t\"name\": \"cust_cardnumber\"\n\t\t}\n\t],\n\t\"conditions\": [\n\t{ \"and\":[\n\t\t{\n\t\t\t\"field1\": \"customer_id\",\n\t\t\t\"cond\": \"=\",\n\t\t\t\"value1\": \"0061613385\"\n\t\t}]\n\t}\n\t]\n}"}]', 'JSON');
INSERT INTO "public"."xxl_api_test_history" VALUES ('0626a170-52c9-40cf-8f92-0ace22c7d217', 'fae92d64-6cb1-47a8-94ae-575fd95c49a4', '2019-06-12 09:11:19.984806+08', '2019-06-12 11:08:29.99882+08', 'http://10.0.156.139:9927/publicQuiry', 'POST', '[]', '[{"key":"json","value":"{\n\t\"sys_code\": \"sys_code_test\",\n\t\"sys_token\": \"0fc5440a-abda-48ca-99aa-9ebd1116fc73\",\n\t\"query_time\": \"2017-11-20 15:16:17.156\",\n\t\"table\": \"crfh10\",\n\t\"limit\": 10,\n\t\"if_count\": true,\n\t\"fields\": [\n\t\t{\n\t\t\t\"name\": \"data_date\"\n\t\t},\n\t\t{\n\t\t\t\"name\": \"batch_no\"\n\t\t},\n\t\t{\n\t\t\t\"name\": \"rm10trcd\"\n\t\t},\n\t\t{\n\t\t\t\"name\": \"rm10crnm\"\n\t\t}\n\t],\n\t\"conditions\": [\n\t\t{\n\t\t\t\"field1\": \"rm10trtxsq\",\n\t\t\t\"cond\": \"=\",\n\t\t\t\"value1\": 2638230\n\t\t}\n\t]\n}\n"}]', 'JSON');
INSERT INTO "public"."xxl_api_test_history" VALUES ('0b24ce66-a124-455f-a21e-741f0d0b8f90', '0f4ec1c5-b9bd-4741-886c-9c09de4c1fec', '2019-06-18 10:00:37.374364+08', '2019-06-18 10:00:37.374364+08', 'http://10.0.155.164:9927/publicQuiry', 'POST', '[]', '[{"key":"json","value":"{\n\t\"sys_code\": \"sys_code_test\",\n\t\"sys_token\": \"0fc5440a-abda-48ca-99aa-9ebd1116fc73\",\n\t\"query_time\": \"2017-11-20 15:16:17.156\",\n\t\"table\": \"four_cus_mongodb\",\n\t\"skip\": 0,\n\t\"limit\": 10,\n\t\"if_count\": true,\n\t\"fields\": [\n\t\t{\n\t\t\t\"name\": \"data_date\"\n\t\t},\n\t\t{\n\t\t\t\"name\": \"custno\"\n\t\t},{\n\t\t\t\"name\": \"activity_id\"\n\t\t}\n\t],\n\t\"conditions\": [\n\t{ \"and\":[\n\t\t{\n\t\t\t\"field1\": \"activity_id\",\n\t\t\t\"cond\": \"=\",\n\t\t\t\"value1\": \"C8766AC595900001AA815CCC16C01535\"\n\t\t}]\n\t}\n\t]\n}"}]', 'JSON');
INSERT INTO "public"."xxl_api_test_history" VALUES ('1f51e22f-30f7-430a-8f24-5b4d1b308ad5', '70777a00-46a5-4ef6-a234-5513486983d4', '2019-06-18 09:47:22.064714+08', '2019-06-18 09:47:22.064714+08', 'http://10.0.156.139:9927/publicQuiry', 'POST', '[]', '[{"key":"json","value":"{\n\t\"sys_code\": \"sys_code_test\",\n\t\"sys_token\": \"0fc5440a-abda-48ca-99aa-9ebd1116fc73\",\n\t\"query_time\": \"2017-11-20 15:16:17.156\",\n\t\"table\": \"tradedetail_sign\",\n\t\"limit\": 10,\n\t\"if_count\": true,\n\t\"fields\": [\n\t\t{\n\t\t\t\"name\": \"data_date\"\n\t\t},\n\t\t{\n\t\t\t\"name\": \"yearlimit\"\n\t\t},\n\t\t{\n\t\t\t\"name\": \"acceptid\"\n\t\t},\n\t\t{\n\t\t\t\"name\": \"daycount\"\n\t\t}\n\t],\n\t\"conditions\": [\n\t\t{\n\t\t\t\"field1\": \"acceptid\",\n\t\t\t\"cond\": \"=\",\n\t\t\t\"value1\": \"ZNGT20180110A0000000001834\"\n\t\t}\n\t]\n}\n"}]', 'JSON');
INSERT INTO "public"."xxl_api_test_history" VALUES ('2999e449-5db1-4b44-8702-8ded1053abb9', '20ef2686-dbd2-4b99-83b2-3dc8b3d30e80', '2019-06-18 09:54:43.852304+08', '2019-06-18 09:54:43.852304+08', 'http://10.0.156.139:9927/publicQuiry', 'POST', '[]', '[{"key":"json","value":"{\n\t\"sys_code\": \"sys_code_test\",\n\t\"sys_token\": \"0fc5440a-abda-48ca-99aa-9ebd1116fc73\",\n\t\"query_time\": \"2017-11-20 15:16:17.156\",\n\t\"table\": \"busi_cert_search\",\n\t\"limit\": 10,\n\t\"if_count\": true,\n\t\"fields\": [\n\t\t{\n\t\t\t\"name\": \"data_date\"\n\t\t},\n\t\t{\n\t\t\t\"name\": \"extend6\"\n\t\t},\n\t\t{\n\t\t\t\"name\": \"certname\"\n\t\t},\n\t\t{\n\t\t\t\"name\": \"cusbusiid\"\n\t\t}\n\t],\n\t\"conditions\": [\n\t\t{\n\t\t\t\"field1\": \"acceptid\",\n\t\t\t\"cond\": \"=\",\n\t\t\t\"value1\": \"ZNGT20190215A0000000080219\"\n\t\t}\n\t]\n}\n"}]', 'JSON');
INSERT INTO "public"."xxl_api_test_history" VALUES ('4ca2cda3-e95f-4f22-9472-db5e42fe3b81', '17230d0c-a51c-48fc-9222-ae20fd3e4bb0', '2019-06-12 11:19:55.948734+08', '2019-06-12 11:19:55.948734+08', 'http://10.0.123.80:9927/publicQuiry', 'POST', '[]', '[{"key":"json","value":"{\n\t\"sys_code\": \"sys_code_test\",\n\t\"sys_token\": \"0fc5440a-abda-48ca-99aa-9ebd1116fc73\",\n\t\"query_time\": \"2017-11-20 15:16:17.156\",\n\t\"table\": \"rpt_85_zfjymxcx\",\n\t\"limit\": 10,\n\t\"if_count\": true,\n\t\"fields\": [\n\t\t{\n\t\t\t\"name\": \"data_date\"\n\t\t},\n\t\t{\n\t\t\t\"name\": \"open_ou_nm\"\n\t\t},\n\t\t{\n\t\t\t\"name\": \"main_acct\"\n\t\t},\n\t\t{\n\t\t\t\"name\": \"end_ou_nm\"\n\t\t}\n\t],\n\t\"conditions\": [\n\t\t{\n\t\t\t\"field1\": \"main_acct\",\n\t\t\t\"cond\": \"=\",\n\t\t\t\"value1\": \"168200121003779848\"\n\t\t}\n\t]\n}\n"}]', 'JSON');
INSERT INTO "public"."xxl_api_test_history" VALUES ('5bc59ff3-54f7-4f53-b786-ad089b959f33', 'd33ddab9-e7c0-4216-bc49-7683c47abb41', '2019-06-18 10:17:40.324125+08', '2019-06-18 10:17:40.324125+08', 'http://10.0.155.164:9927/publicQuiry', 'POST', '[]', '[{"key":"json","value":"{\n\t\"sys_code\": \"sys_code_test\",\n\t\"sys_token\": \"0fc5440a-abda-48ca-99aa-9ebd1116fc73\",\n\t\"query_time\": \"2017-11-20 15:16:17.156\",\n\t\"table\": \"ci_basic_custinfo\",\n\t\"skip\": 0,\n\t\"limit\": 10,\n\t\"if_count\": true,\n\t\"fields\": [\n\t\t{\n\t\t\t\"name\": \"data_date\"\n\t\t},\n\t\t{\n\t\t\t\"name\": \"customer_id\"\n\t\t},{\n\t\t\t\"name\": \"total_balance\"\n\t\t}\n\t],\n\t\"conditions\": [\n\t{ \"and\":[\n\t\t{\n\t\t\t\"field1\": \"customer_id\",\n\t\t\t\"cond\": \"=\",\n\t\t\t\"value1\": \"0029002957\"\n\t\t}]\n\t}\n\t]\n}"}]', 'JSON');
INSERT INTO "public"."xxl_api_test_history" VALUES ('646e0f5b-3747-43f4-8efe-212ad36de24b', 'ef3f4ef9-e258-4074-b9b5-af871eaf6df7', '2019-06-18 10:04:53.287646+08', '2019-06-18 10:04:53.287646+08', 'http://10.0.155.164:9927/publicQuiry', 'POST', '[]', '[{"key":"json","value":"{\n\t\"sys_code\": \"sys_code_test\",\n\t\"sys_token\": \"0fc5440a-abda-48ca-99aa-9ebd1116fc73\",\n\t\"query_time\": \"2017-11-20 15:16:17.156\",\n\t\"table\": \"four_assets_details\",\n\t\"skip\": 0,\n\t\"limit\": 10,\n\t\"if_count\": true,\n\t\"fields\": [\n\t\t{\n\t\t\t\"name\": \"pid\"\n\t\t},\n\t\t{\n\t\t\t\"name\": \"assets_content\"\n\t\t},{\n\t\t\t\"name\": \"market_val\"\n\t\t}\n\t],\n\t\"conditions\": [\n\t{ \"and\":[\n\t\t{\n\t\t\t\"field1\": \"pid\",\n\t\t\t\"cond\": \"=\",\n\t\t\t\"value1\": \"6df8dfdc8b6d4a9fa341421cde3e6706\"\n\t\t}]\n\t}\n\t]\n}"}]', 'JSON');
INSERT INTO "public"."xxl_api_test_history" VALUES ('65609ad4-90b1-47f4-ac3a-9fc19023d7f2', '4efa091c-4b63-4903-b46e-72bcb87cdcf3', '2019-06-12 11:24:22.79578+08', '2019-06-12 11:24:22.79578+08', 'http://10.0.156.139:9927/publicQuiry', 'POST', '[]', '[{"key":"json","value":"{\n\t\"sys_code\": \"sys_code_test\",\n\t\"sys_token\": \"0fc5440a-abda-48ca-99aa-9ebd1116fc73\",\n\t\"query_time\": \"2017-11-20 15:16:17.156\",\n\t\"table\": \"ods_cus_trad\",\n\t\"limit\": 10,\n\t\"if_count\": true,\n\t\"fields\": [\n\t\t{\n\t\t\t\"name\": \"txdt\"\n\t\t},\n\t\t{\n\t\t\t\"name\": \"tradorgnm\"\n\t\t},\n\t\t{\n\t\t\t\"name\": \"acct\"\n\t\t},\n\t\t{\n\t\t\t\"name\": \"itemna\"\n\t\t}\n\t],\n\t\"conditions\": [\n\t\t{\n\t\t\t\"field1\": \"acct\",\n\t\t\t\"cond\": \"=\",\n\t\t\t\"value1\": \"10145000020058235\"\n\t\t}\n\t]\n}"}]', 'JSON');
INSERT INTO "public"."xxl_api_test_history" VALUES ('6e56b94e-b9b9-4b2b-9e2f-190a11572316', 'dc894454-860f-49d2-bfbd-e8670fd292da', '2019-06-12 11:15:26.389711+08', '2019-06-12 11:15:26.389711+08', 'http://10.0.155.164:9927/publicQuiry', 'POST', '[]', '[{"key":"json","value":"{\n\t\"sys_code\": \"sys_code_test\",\n\t\"sys_token\": \"0fc5440a-abda-48ca-99aa-9ebd1116fc73\",\n\t\"query_time\": \"2017-11-20 15:16:17.156\",\n\t\"table\": \"rpt_b_rb_207\",\n\t\"skip\": 0,\n\t\"limit\": 10,\n\t\"if_count\": true,\n\t\"fields\": [\n\t\t{\n\t\t\t\"name\": \"data_date\"\n\t\t},\n\t\t{\n\t\t\t\"name\": \"cst_id\"\n\t\t},{\n\t\t\t\"name\": \"dem_avg_m_12\"\n\t\t}\n\t],\n\t\"conditions\": [\n\t{ \"and\":[\n\t\t{\n\t\t\t\"field1\": \"cst_id\",\n\t\t\t\"cond\": \"=\",\n\t\t\t\"value1\": \"0006772657\"\n\t\t}]\n\t}\n\t]\n}"}]', 'JSON');
INSERT INTO "public"."xxl_api_test_history" VALUES ('8025ad39-5a7c-4c81-824e-8a9e9f443508', '3af96831-716d-4f8e-9965-f5dd1ef1974e', '2019-06-18 09:49:07.217921+08', '2019-06-18 09:49:07.217921+08', 'http://10.0.156.139:9927/publicQuiry', 'POST', '[]', '[{"key":"json","value":"{\n\t\"sys_code\": \"sys_code_test\",\n\t\"sys_token\": \"0fc5440a-abda-48ca-99aa-9ebd1116fc73\",\n\t\"query_time\": \"2017-11-20 15:16:17.156\",\n\t\"table\": \"tradedetail_lifepay\",\n\t\"limit\": 10,\n\t\"if_count\": true,\n\t\"fields\": [\n\t\t{\n\t\t\t\"name\": \"data_date\"\n\t\t},\n\t\t{\n\t\t\t\"name\": \"acceptid\"\n\t\t},\n\t\t{\n\t\t\t\"name\": \"accno\"\n\t\t},\n\t\t{\n\t\t\t\"name\": \"username\"\n\t\t}\n\t],\n\t\"conditions\": [\n\t\t{\n\t\t\t\"field1\": \"acceptid\",\n\t\t\t\"cond\": \"=\",\n\t\t\t\"value1\": \"ZNGT20181228A0000000086405\"\n\t\t}\n\t]\n}\n"}]', 'JSON');
INSERT INTO "public"."xxl_api_test_history" VALUES ('8b87cbdc-a10d-4123-9ed7-845ee54ceb4b', '36b653ea-bcf2-41cd-b16c-6f819993882a', '2019-06-12 11:44:02.333534+08', '2019-06-13 09:54:07.857897+08', 'http://10.0.156.139:9927/publicQuiry', 'POST', '[]', '[{"key":"json","value":"{\n\t\"sys_code\": \"sys_code_test\",\n\t\"sys_token\": \"0fc5440a-abda-48ca-99aa-9ebd1116fc73\",\n\t\"query_time\": \"2017-11-20 15:16:17.156\",\n\t\"table\": \"ods_in_trad\",\n\t\"limit\": 10,\n\t\"if_count\": false,\n\t\"fields\": [\n\t\t{\n\t\t\t\"name\": \"acct\"\n\t\t},\n\t\t{\n\t\t\t\"name\": \"itemna\"\n\t\t},\n\t\t{\n\t\t\t\"name\": \"txdt\"\n\t\t},\n\t\t{\n\t\t\t\"name\": \"opndna\"\n\t\t}\n\t],\n\t\"conditions\": [\n\t\t{\n\t\t\t\"field1\": \"acct\",\n\t\t\t\"cond\": \"=\",\n\t\t\t\"value1\": \"1020301462902000000001\"\n\t\t}\n\t]\n}"}]', 'JSON');
INSERT INTO "public"."xxl_api_test_history" VALUES ('9a34b603-7c87-4b24-b95c-61a4be86c939', '7884814f-8a00-4557-8220-8ac10f57df0f', '2019-06-12 11:11:58.442585+08', '2019-06-12 11:11:58.442585+08', 'http://10.0.155.164:9927/publicQuiry', 'POST', '[]', '[{"key":"json","value":"{\n\t\"limit\": 10,\n\t\"conditions\": [\n\t\t{\n\t\t\t\"fun1\": null,\n\t\t\t\"field1\": \"customer_id\",\n\t\t\t\"cond\": \"=\",\n\t\t\t\"value1\": \"0003554426\"\n\t\t}\n\t],\n\t\"sys_token\": \"0fc5440a-abda-48ca-99aa-9ebd1116fc73\",\n\t\"query_time\": \"2019-06-11160031469\",\n\t\"having\": null,\n\t\"orders\": null,\n\t\"table\": \"ci_public_custinfo\",\n\t\"skip\": null,\n\t\"if_count\": true,\n\t\"groups\": null,\n\t\"sys_code\": \"sys_code_test\",\n\t\"fields\": [\n\t\t{\n\t\t\t\"alias\": null,\n\t\t\t\"param\": null,\n\t\t\t\"name\": \"customer_id\",\n\t\t\t\"title_name\": null,\n\t\t\t\"function\": null\n\t\t},\n\t\t{\n\t\t\t\"alias\": null,\n\t\t\t\"param\": null,\n\t\t\t\"name\": \"cust_risk_level\",\n\t\t\t\"title_name\": null,\n\t\t\t\"function\": null\n\t\t},\n\t\t{\n\t\t\t\"alias\": null,\n\t\t\t\"param\": null,\n\t\t\t\"name\": \"anti_money_level\",\n\t\t\t\"title_name\": null,\n\t\t\t\"function\": null\n\t\t}\n\t]\n}\n"}]', 'JSON');
INSERT INTO "public"."xxl_api_test_history" VALUES ('9f0d0e13-52cb-4b91-ad85-5e8512f07890', '3eac4c93-f355-4219-aa98-7c10f11c0d72', '2019-06-18 10:03:27.017723+08', '2019-06-18 10:03:27.017723+08', 'http://10.0.155.164:9927/publicQuiry', 'POST', '[]', '[{"key":"json","value":"{\n\t\"sys_code\": \"sys_code_test\",\n\t\"sys_token\": \"0fc5440a-abda-48ca-99aa-9ebd1116fc73\",\n\t\"query_time\": \"2017-11-20 15:16:17.156\",\n\t\"table\": \"four_manage_details\",\n\t\"skip\": 0,\n\t\"limit\": 10,\n\t\"if_count\": true,\n\t\"fields\": [\n\t\t{\n\t\t\t\"name\": \"data_date\"\n\t\t},\n\t\t{\n\t\t\t\"name\": \"pid\"\n\t\t},{\n\t\t\t\"name\": \"jbxx108\"\n\t\t}\n\t],\n\t\"conditions\": [\n\t{ \"and\":[\n\t\t{\n\t\t\t\"field1\": \"pid\",\n\t\t\t\"cond\": \"=\",\n\t\t\t\"value1\": \"2504072df66f4ea6960b6d39d3281da6\"\n\t\t}]\n\t}\n\t]\n}"}]', 'JSON');
INSERT INTO "public"."xxl_api_test_history" VALUES ('a540393d-f8e3-4f8e-8833-058d22700dba', 'ca429b26-1cb0-4554-b1d0-d3be134c367c', '2019-06-18 09:53:26.734593+08', '2019-06-18 09:53:26.734593+08', 'http://10.0.156.139:9927/publicQuiry', 'POST', '[]', '[{"key":"json","value":"{\n\t\"sys_code\": \"sys_code_test\",\n\t\"sys_token\": \"0fc5440a-abda-48ca-99aa-9ebd1116fc73\",\n\t\"query_time\": \"2017-11-20 15:16:17.156\",\n\t\"table\": \"cash_busiinfo\",\n\t\"limit\": 10,\n\t\"if_count\": true,\n\t\"fields\": [\n\t\t{\n\t\t\t\"name\": \"data_date\"\n\t\t},\n\t\t{\n\t\t\t\"name\": \"acceptid\"\n\t\t},\n\t\t{\n\t\t\t\"name\": \"statusdesc\"\n\t\t},\n\t\t{\n\t\t\t\"name\": \"accname\"\n\t\t}\n\t],\n\t\"conditions\": [\n\t\t{\n\t\t\t\"field1\": \"acceptid\",\n\t\t\t\"cond\": \"=\",\n\t\t\t\"value1\": \"ZNGT20180326A0000000025529\"\n\t\t}\n\t]\n}\n"}]', 'JSON');
INSERT INTO "public"."xxl_api_test_history" VALUES ('baf422f6-918f-40a0-ae62-425878ea97bc', 'bbb97751-8dc1-42bb-9fdf-4ae514b4ec46', '2019-06-18 09:45:50.746164+08', '2019-06-18 09:45:50.746164+08', 'http://10.0.156.139:9927/publicQuiry', 'POST', '[]', '[{"key":"json","value":"{\n\t\"sys_code\": \"sys_code_test\",\n\t\"sys_token\": \"0fc5440a-abda-48ca-99aa-9ebd1116fc73\",\n\t\"query_time\": \"2017-11-20 15:16:17.156\",\n\t\"table\": \"tradedetail_financial\",\n\t\"limit\": 10,\n\t\"if_count\": true,\n\t\"fields\": [\n\t\t{\n\t\t\t\"name\": \"data_date\"\n\t\t},\n\t\t{\n\t\t\t\"name\": \"cusname\"\n\t\t},\n\t\t{\n\t\t\t\"name\": \"term\"\n\t\t},\n\t\t{\n\t\t\t\"name\": \"rate\"\n\t\t}\n\t],\n\t\"conditions\": [\n\t\t{\n\t\t\t\"field1\": \"acceptid\",\n\t\t\t\"cond\": \"=\",\n\t\t\t\"value1\": \"ZNGT20180504A0000000023265\"\n\t\t}\n\t]\n}\n"}]', 'JSON');
INSERT INTO "public"."xxl_api_test_history" VALUES ('bb6ee414-ba53-4a41-bbf2-833a2bc7a202', '640d7713-0885-4d6f-bfac-5f73108c3713', '2019-06-18 10:02:09.44111+08', '2019-06-18 10:02:09.44111+08', 'http://10.0.155.164:9927/publicQuiry', 'POST', '[]', '[{"key":"json","value":"{\n\t\"sys_code\": \"sys_code_test\",\n\t\"sys_token\": \"0fc5440a-abda-48ca-99aa-9ebd1116fc73\",\n\t\"query_time\": \"2017-11-20 15:16:17.156\",\n\t\"table\": \"four_family_details\",\n\t\"skip\": 0,\n\t\"limit\": 10,\n\t\"if_count\": true,\n\t\"fields\": [\n\t\t{\n\t\t\t\"name\": \"data_date\"\n\t\t},\n\t\t{\n\t\t\t\"name\": \"pid\"\n\t\t},{\n\t\t\t\"name\": \"jbxx108\"\n\t\t}\n\t],\n\t\"conditions\": [\n\t{ \"and\":[\n\t\t{\n\t\t\t\"field1\": \"jbxx108\",\n\t\t\t\"cond\": \"=\",\n\t\t\t\"value1\": \"36021219710920311X\"\n\t\t}]\n\t}\n\t]\n}"}]', 'JSON');
INSERT INTO "public"."xxl_api_test_history" VALUES ('d9f7300b-6082-4d1f-848b-08c732c4862c', '3dc60da2-a6fc-4696-a276-7a7324613b35', '2019-06-18 09:52:01.43477+08', '2019-06-18 09:52:01.43477+08', 'http://10.0.156.139:9927/publicQuiry', 'POST', '[]', '[{"key":"json","value":"{\n\t\"sys_code\": \"sys_code_test\",\n\t\"sys_token\": \"0fc5440a-abda-48ca-99aa-9ebd1116fc73\",\n\t\"query_time\": \"2017-11-20 15:16:17.156\",\n\t\"table\": \"tradedetail_transfer\",\n\t\"limit\": 10,\n\t\"if_count\": true,\n\t\"fields\": [\n\t\t{\n\t\t\t\"name\": \"data_date\"\n\t\t},\n\t\t{\n\t\t\t\"name\": \"acceptid\"\n\t\t},\n\t\t{\n\t\t\t\"name\": \"payername\"\n\t\t},\n\t\t{\n\t\t\t\"name\": \"batch_no\"\n\t\t}\n\t],\n\t\"conditions\": [\n\t\t{\n\t\t\t\"field1\": \"acceptid\",\n\t\t\t\"cond\": \"=\",\n\t\t\t\"value1\": \"ZNGT20180103A0000000005095\"\n\t\t}\n\t]\n}\n"}]', 'JSON');
INSERT INTO "public"."xxl_api_test_history" VALUES ('dcbaebbf-bc5a-4288-86ba-fa7f4cf1a9d3', '06b8ab74-656b-4ea8-b533-5cdd1d562d8e', '2019-06-18 09:50:38.995848+08', '2019-06-18 09:50:38.995848+08', 'http://10.0.156.139:9927/publicQuiry', 'POST', '[]', '[{"key":"json","value":"{\n\t\"sys_code\": \"sys_code_test\",\n\t\"sys_token\": \"0fc5440a-abda-48ca-99aa-9ebd1116fc73\",\n\t\"query_time\": \"2017-11-20 15:16:17.156\",\n\t\"table\": \"tradedetail_lossandreport\",\n\t\"limit\": 10,\n\t\"if_count\": true,\n\t\"fields\": [\n\t\t{\n\t\t\t\"name\": \"data_date\"\n\t\t},\n\t\t{\n\t\t\t\"name\": \"accname\"\n\t\t},\n\t\t{\n\t\t\t\"name\": \"chargingaccno\"\n\t\t},\n\t\t{\n\t\t\t\"name\": \"acceptid\"\n\t\t}\n\t],\n\t\"conditions\": [\n\t\t{\n\t\t\t\"field1\": \"acceptid\",\n\t\t\t\"cond\": \"=\",\n\t\t\t\"value1\": \"ZNGT20181101A0000000066811\"\n\t\t}\n\t]\n}\n"}]', 'JSON');
INSERT INTO "public"."xxl_api_test_history" VALUES ('e6c98b24-2a44-4e4c-9ead-8024582214b0', 'e3027385-7d51-4efc-9e80-e9f99027a79b', '2019-06-12 15:22:22.395164+08', '2019-06-13 09:53:53.094032+08', 'http://10.0.156.139:9927/publicQuiry', 'POST', '[]', '[{"key":"json","value":"{\n\t\"sys_code\": \"sys_code_test\",\n\t\"sys_token\": \"0fc5440a-abda-48ca-99aa-9ebd1116fc73\",\n\t\"query_time\": \"2019-11-20 15:16:17.156\",\n\t\"table\": \"bifm60\",\n\t\"limit\": 10,\n\t\"if_count\": false,\n\t\"fields\": [\n\t\t{\n\t\t\t\"name\": \"bm60txdt\"\n\t\t},\n\t\t{\n\t\t\t\"name\": \"bm60acct\"\n\t\t},\n\t\t{\n\t\t\t\"name\": \"bm60rmks\"\n\t\t},\n\t\t{\n\t\t\t\"name\": \"bm60tacde\"\n\t\t}\n\t],\n\t\"conditions\": [\n\t\t{\n\t\t\t\"field1\": \"bm60acct\",\n\t\t\t\"cond\": \"=\",\n\t\t\t\"value1\": \"0110101232301000010001\"\n\t\t}\n\t]\n}"}]', 'JSON');
INSERT INTO "public"."xxl_api_test_history" VALUES ('ffd7d1b7-38f7-4904-be5f-6644494c7124', '1c6cf3f4-07da-4cb3-a5eb-37f1aa15e40f', '2019-06-18 10:06:16.835487+08', '2019-06-18 10:06:16.835487+08', 'http://10.0.155.164:9927/publicQuiry', 'POST', '[]', '[{"key":"json","value":"{\n\t\"sys_code\": \"sys_code_test\",\n\t\"sys_token\": \"0fc5440a-abda-48ca-99aa-9ebd1116fc73\",\n\t\"query_time\": \"2017-11-20 15:16:17.156\",\n\t\"table\": \"ci_public_custinfo\",\n\t\"skip\": 0,\n\t\"limit\": 10,\n\t\"if_count\": true,\n\t\"fields\": [\n\t\t{\n\t\t\t\"name\": \"customer_id\"\n\t\t},\n\t\t{\n\t\t\t\"name\": \"cust_name\"\n\t\t},{\n\t\t\t\"name\": \"cust_cardnumber\"\n\t\t}\n\t],\n\t\"conditions\": [\n\t{ \"and\":[\n\t\t{\n\t\t\t\"field1\": \"customer_id\",\n\t\t\t\"cond\": \"=\",\n\t\t\t\"value1\": \"0061613385\"\n\t\t}]\n\t}\n\t]\n}"}]', 'JSON');

-- ----------------------------
-- Table structure for xxl_api_user
-- ----------------------------
DROP TABLE IF EXISTS "public"."xxl_api_user";
CREATE TABLE "public"."xxl_api_user" (
"id" varchar(50) COLLATE "default" NOT NULL,
"username" varchar(50) COLLATE "default" NOT NULL,
"password" varchar(50) COLLATE "default" NOT NULL,
"type" int2 DEFAULT '0'::smallint NOT NULL,
"permission_biz" varchar(200) COLLATE "default" DEFAULT NULL::character varying
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "public"."xxl_api_user"."username" IS '账号';
COMMENT ON COLUMN "public"."xxl_api_user"."password" IS '密码';
COMMENT ON COLUMN "public"."xxl_api_user"."type" IS '用户类型：0-普通用户、1-超级管理员';
COMMENT ON COLUMN "public"."xxl_api_user"."permission_biz" IS '业务线权限，多个逗号分隔';

-- ----------------------------
-- Records of xxl_api_user
-- ----------------------------
INSERT INTO "public"."xxl_api_user" VALUES ('f40d0f75-3822-48f1-9d4e-ad25b9e5067f', 'user', 'ee11cbb19052e40b07aac0ca060c23ee', '0', 'ab6cf60a-9a94-4c3e-a85c-d71c76ab4d52');
INSERT INTO "public"."xxl_api_user" VALUES ('fa2c0b8a-3ce1-454e-9d6f-a44a13ba3766', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1', '');

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table xxl_api_biz
-- ----------------------------
ALTER TABLE "public"."xxl_api_biz" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table xxl_api_datatype
-- ----------------------------
ALTER TABLE "public"."xxl_api_datatype" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table xxl_api_datatype_fileds
-- ----------------------------
ALTER TABLE "public"."xxl_api_datatype_fileds" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table xxl_api_document
-- ----------------------------
ALTER TABLE "public"."xxl_api_document" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table xxl_api_group
-- ----------------------------
ALTER TABLE "public"."xxl_api_group" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table xxl_api_mock
-- ----------------------------
ALTER TABLE "public"."xxl_api_mock" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table xxl_api_project
-- ----------------------------
ALTER TABLE "public"."xxl_api_project" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table xxl_api_user
-- ----------------------------
ALTER TABLE "public"."xxl_api_user" ADD PRIMARY KEY ("id");
