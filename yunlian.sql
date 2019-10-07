/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : yunlian

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-10-07 20:56:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `blue_admin`
-- ----------------------------
DROP TABLE IF EXISTS `blue_admin`;
CREATE TABLE `blue_admin` (
  `admin_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '管理员表',
  `username` varchar(32) NOT NULL COMMENT '管理员登陆账号',
  `password` varchar(64) NOT NULL COMMENT '密码',
  `mobile` varchar(16) DEFAULT NULL,
  `nav` varchar(255) NOT NULL COMMENT '权限',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blue_admin
-- ----------------------------
INSERT INTO `blue_admin` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', null, '1,103,7,23,41,101,50,58,89,92,93,104,94,95,96,97,98,99,100', '0');

-- ----------------------------
-- Table structure for `blue_areas`
-- ----------------------------
DROP TABLE IF EXISTS `blue_areas`;
CREATE TABLE `blue_areas` (
  `area_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT COMMENT '地区id',
  `parent_id` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '地区父id',
  `area_name` varchar(120) NOT NULL DEFAULT '' COMMENT '地区名称',
  `area_type` tinyint(1) NOT NULL DEFAULT '2' COMMENT '地区类型 0:country,1:province,2:city,3:district',
  PRIMARY KEY (`area_id`),
  KEY `parent_id` (`parent_id`),
  KEY `area_type` (`area_type`)
) ENGINE=MyISAM AUTO_INCREMENT=3437 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blue_areas
-- ----------------------------
INSERT INTO `blue_areas` VALUES ('1', '0', '中国', '0');
INSERT INTO `blue_areas` VALUES ('2', '1', '北京', '1');
INSERT INTO `blue_areas` VALUES ('3', '1', '安徽', '1');
INSERT INTO `blue_areas` VALUES ('4', '1', '福建', '1');
INSERT INTO `blue_areas` VALUES ('5', '1', '甘肃', '1');
INSERT INTO `blue_areas` VALUES ('6', '1', '广东', '1');
INSERT INTO `blue_areas` VALUES ('7', '1', '广西', '1');
INSERT INTO `blue_areas` VALUES ('8', '1', '贵州', '1');
INSERT INTO `blue_areas` VALUES ('9', '1', '海南', '1');
INSERT INTO `blue_areas` VALUES ('10', '1', '河北', '1');
INSERT INTO `blue_areas` VALUES ('11', '1', '河南', '1');
INSERT INTO `blue_areas` VALUES ('12', '1', '黑龙江', '1');
INSERT INTO `blue_areas` VALUES ('13', '1', '湖北', '1');
INSERT INTO `blue_areas` VALUES ('14', '1', '湖南', '1');
INSERT INTO `blue_areas` VALUES ('15', '1', '吉林', '1');
INSERT INTO `blue_areas` VALUES ('16', '1', '江苏', '1');
INSERT INTO `blue_areas` VALUES ('17', '1', '江西', '1');
INSERT INTO `blue_areas` VALUES ('18', '1', '辽宁', '1');
INSERT INTO `blue_areas` VALUES ('19', '1', '内蒙古', '1');
INSERT INTO `blue_areas` VALUES ('20', '1', '宁夏', '1');
INSERT INTO `blue_areas` VALUES ('21', '1', '青海', '1');
INSERT INTO `blue_areas` VALUES ('22', '1', '山东', '1');
INSERT INTO `blue_areas` VALUES ('23', '1', '山西', '1');
INSERT INTO `blue_areas` VALUES ('24', '1', '陕西', '1');
INSERT INTO `blue_areas` VALUES ('25', '1', '上海', '1');
INSERT INTO `blue_areas` VALUES ('26', '1', '四川', '1');
INSERT INTO `blue_areas` VALUES ('27', '1', '天津', '1');
INSERT INTO `blue_areas` VALUES ('28', '1', '西藏', '1');
INSERT INTO `blue_areas` VALUES ('29', '1', '新疆', '1');
INSERT INTO `blue_areas` VALUES ('30', '1', '云南', '1');
INSERT INTO `blue_areas` VALUES ('31', '1', '浙江', '1');
INSERT INTO `blue_areas` VALUES ('32', '1', '重庆', '1');
INSERT INTO `blue_areas` VALUES ('33', '1', '香港', '1');
INSERT INTO `blue_areas` VALUES ('34', '1', '澳门', '1');
INSERT INTO `blue_areas` VALUES ('35', '1', '台湾', '1');
INSERT INTO `blue_areas` VALUES ('36', '3', '安庆', '2');
INSERT INTO `blue_areas` VALUES ('37', '3', '蚌埠', '2');
INSERT INTO `blue_areas` VALUES ('38', '3', '巢湖', '2');
INSERT INTO `blue_areas` VALUES ('39', '3', '池州', '2');
INSERT INTO `blue_areas` VALUES ('40', '3', '滁州', '2');
INSERT INTO `blue_areas` VALUES ('41', '3', '阜阳', '2');
INSERT INTO `blue_areas` VALUES ('42', '3', '淮北', '2');
INSERT INTO `blue_areas` VALUES ('43', '3', '淮南', '2');
INSERT INTO `blue_areas` VALUES ('44', '3', '黄山', '2');
INSERT INTO `blue_areas` VALUES ('45', '3', '六安', '2');
INSERT INTO `blue_areas` VALUES ('46', '3', '马鞍山', '2');
INSERT INTO `blue_areas` VALUES ('47', '3', '宿州', '2');
INSERT INTO `blue_areas` VALUES ('48', '3', '铜陵', '2');
INSERT INTO `blue_areas` VALUES ('49', '3', '芜湖', '2');
INSERT INTO `blue_areas` VALUES ('50', '3', '宣城', '2');
INSERT INTO `blue_areas` VALUES ('51', '3', '亳州', '2');
INSERT INTO `blue_areas` VALUES ('52', '2', '北京', '2');
INSERT INTO `blue_areas` VALUES ('53', '4', '福州', '2');
INSERT INTO `blue_areas` VALUES ('54', '4', '龙岩', '2');
INSERT INTO `blue_areas` VALUES ('55', '4', '南平', '2');
INSERT INTO `blue_areas` VALUES ('56', '4', '宁德', '2');
INSERT INTO `blue_areas` VALUES ('57', '4', '莆田', '2');
INSERT INTO `blue_areas` VALUES ('58', '4', '泉州', '2');
INSERT INTO `blue_areas` VALUES ('59', '4', '三明', '2');
INSERT INTO `blue_areas` VALUES ('60', '4', '厦门', '2');
INSERT INTO `blue_areas` VALUES ('61', '4', '漳州', '2');
INSERT INTO `blue_areas` VALUES ('62', '5', '兰州', '2');
INSERT INTO `blue_areas` VALUES ('63', '5', '白银', '2');
INSERT INTO `blue_areas` VALUES ('64', '5', '定西', '2');
INSERT INTO `blue_areas` VALUES ('65', '5', '甘南', '2');
INSERT INTO `blue_areas` VALUES ('66', '5', '嘉峪关', '2');
INSERT INTO `blue_areas` VALUES ('67', '5', '金昌', '2');
INSERT INTO `blue_areas` VALUES ('68', '5', '酒泉', '2');
INSERT INTO `blue_areas` VALUES ('69', '5', '临夏', '2');
INSERT INTO `blue_areas` VALUES ('70', '5', '陇南', '2');
INSERT INTO `blue_areas` VALUES ('71', '5', '平凉', '2');
INSERT INTO `blue_areas` VALUES ('72', '5', '庆阳', '2');
INSERT INTO `blue_areas` VALUES ('73', '5', '天水', '2');
INSERT INTO `blue_areas` VALUES ('74', '5', '武威', '2');
INSERT INTO `blue_areas` VALUES ('75', '5', '张掖', '2');
INSERT INTO `blue_areas` VALUES ('76', '6', '广州', '2');
INSERT INTO `blue_areas` VALUES ('77', '6', '深圳', '2');
INSERT INTO `blue_areas` VALUES ('78', '6', '潮州', '2');
INSERT INTO `blue_areas` VALUES ('79', '6', '东莞', '2');
INSERT INTO `blue_areas` VALUES ('80', '6', '佛山', '2');
INSERT INTO `blue_areas` VALUES ('81', '6', '河源', '2');
INSERT INTO `blue_areas` VALUES ('82', '6', '惠州', '2');
INSERT INTO `blue_areas` VALUES ('83', '6', '江门', '2');
INSERT INTO `blue_areas` VALUES ('84', '6', '揭阳', '2');
INSERT INTO `blue_areas` VALUES ('85', '6', '茂名', '2');
INSERT INTO `blue_areas` VALUES ('86', '6', '梅州', '2');
INSERT INTO `blue_areas` VALUES ('87', '6', '清远', '2');
INSERT INTO `blue_areas` VALUES ('88', '6', '汕头', '2');
INSERT INTO `blue_areas` VALUES ('89', '6', '汕尾', '2');
INSERT INTO `blue_areas` VALUES ('90', '6', '韶关', '2');
INSERT INTO `blue_areas` VALUES ('91', '6', '阳江', '2');
INSERT INTO `blue_areas` VALUES ('92', '6', '云浮', '2');
INSERT INTO `blue_areas` VALUES ('93', '6', '湛江', '2');
INSERT INTO `blue_areas` VALUES ('94', '6', '肇庆', '2');
INSERT INTO `blue_areas` VALUES ('95', '6', '中山', '2');
INSERT INTO `blue_areas` VALUES ('96', '6', '珠海', '2');
INSERT INTO `blue_areas` VALUES ('97', '7', '南宁', '2');
INSERT INTO `blue_areas` VALUES ('98', '7', '桂林', '2');
INSERT INTO `blue_areas` VALUES ('99', '7', '百色', '2');
INSERT INTO `blue_areas` VALUES ('100', '7', '北海', '2');
INSERT INTO `blue_areas` VALUES ('101', '7', '崇左', '2');
INSERT INTO `blue_areas` VALUES ('102', '7', '防城港', '2');
INSERT INTO `blue_areas` VALUES ('103', '7', '贵港', '2');
INSERT INTO `blue_areas` VALUES ('104', '7', '河池', '2');
INSERT INTO `blue_areas` VALUES ('105', '7', '贺州', '2');
INSERT INTO `blue_areas` VALUES ('106', '7', '来宾', '2');
INSERT INTO `blue_areas` VALUES ('107', '7', '柳州', '2');
INSERT INTO `blue_areas` VALUES ('108', '7', '钦州', '2');
INSERT INTO `blue_areas` VALUES ('109', '7', '梧州', '2');
INSERT INTO `blue_areas` VALUES ('110', '7', '玉林', '2');
INSERT INTO `blue_areas` VALUES ('111', '8', '贵阳', '2');
INSERT INTO `blue_areas` VALUES ('112', '8', '安顺', '2');
INSERT INTO `blue_areas` VALUES ('113', '8', '毕节', '2');
INSERT INTO `blue_areas` VALUES ('114', '8', '六盘水', '2');
INSERT INTO `blue_areas` VALUES ('115', '8', '黔东南', '2');
INSERT INTO `blue_areas` VALUES ('116', '8', '黔南', '2');
INSERT INTO `blue_areas` VALUES ('117', '8', '黔西南', '2');
INSERT INTO `blue_areas` VALUES ('118', '8', '铜仁', '2');
INSERT INTO `blue_areas` VALUES ('119', '8', '遵义', '2');
INSERT INTO `blue_areas` VALUES ('120', '9', '海口', '2');
INSERT INTO `blue_areas` VALUES ('121', '9', '三亚', '2');
INSERT INTO `blue_areas` VALUES ('122', '9', '白沙', '2');
INSERT INTO `blue_areas` VALUES ('123', '9', '保亭', '2');
INSERT INTO `blue_areas` VALUES ('124', '9', '昌江', '2');
INSERT INTO `blue_areas` VALUES ('125', '9', '澄迈县', '2');
INSERT INTO `blue_areas` VALUES ('126', '9', '定安县', '2');
INSERT INTO `blue_areas` VALUES ('127', '9', '东方', '2');
INSERT INTO `blue_areas` VALUES ('128', '9', '乐东', '2');
INSERT INTO `blue_areas` VALUES ('129', '9', '临高县', '2');
INSERT INTO `blue_areas` VALUES ('130', '9', '陵水', '2');
INSERT INTO `blue_areas` VALUES ('131', '9', '琼海', '2');
INSERT INTO `blue_areas` VALUES ('132', '9', '琼中', '2');
INSERT INTO `blue_areas` VALUES ('133', '9', '屯昌县', '2');
INSERT INTO `blue_areas` VALUES ('134', '9', '万宁', '2');
INSERT INTO `blue_areas` VALUES ('135', '9', '文昌', '2');
INSERT INTO `blue_areas` VALUES ('136', '9', '五指山', '2');
INSERT INTO `blue_areas` VALUES ('137', '9', '儋州', '2');
INSERT INTO `blue_areas` VALUES ('138', '10', '石家庄', '2');
INSERT INTO `blue_areas` VALUES ('139', '10', '保定', '2');
INSERT INTO `blue_areas` VALUES ('140', '10', '沧州', '2');
INSERT INTO `blue_areas` VALUES ('141', '10', '承德', '2');
INSERT INTO `blue_areas` VALUES ('142', '10', '邯郸', '2');
INSERT INTO `blue_areas` VALUES ('143', '10', '衡水', '2');
INSERT INTO `blue_areas` VALUES ('144', '10', '廊坊', '2');
INSERT INTO `blue_areas` VALUES ('145', '10', '秦皇岛', '2');
INSERT INTO `blue_areas` VALUES ('146', '10', '唐山', '2');
INSERT INTO `blue_areas` VALUES ('147', '10', '邢台', '2');
INSERT INTO `blue_areas` VALUES ('148', '10', '张家口', '2');
INSERT INTO `blue_areas` VALUES ('149', '11', '郑州', '2');
INSERT INTO `blue_areas` VALUES ('150', '11', '洛阳', '2');
INSERT INTO `blue_areas` VALUES ('151', '11', '开封', '2');
INSERT INTO `blue_areas` VALUES ('152', '11', '安阳', '2');
INSERT INTO `blue_areas` VALUES ('153', '11', '鹤壁', '2');
INSERT INTO `blue_areas` VALUES ('154', '11', '济源', '2');
INSERT INTO `blue_areas` VALUES ('155', '11', '焦作', '2');
INSERT INTO `blue_areas` VALUES ('156', '11', '南阳', '2');
INSERT INTO `blue_areas` VALUES ('157', '11', '平顶山', '2');
INSERT INTO `blue_areas` VALUES ('158', '11', '三门峡', '2');
INSERT INTO `blue_areas` VALUES ('159', '11', '商丘', '2');
INSERT INTO `blue_areas` VALUES ('160', '11', '新乡', '2');
INSERT INTO `blue_areas` VALUES ('161', '11', '信阳', '2');
INSERT INTO `blue_areas` VALUES ('162', '11', '许昌', '2');
INSERT INTO `blue_areas` VALUES ('163', '11', '周口', '2');
INSERT INTO `blue_areas` VALUES ('164', '11', '驻马店', '2');
INSERT INTO `blue_areas` VALUES ('165', '11', '漯河', '2');
INSERT INTO `blue_areas` VALUES ('166', '11', '濮阳', '2');
INSERT INTO `blue_areas` VALUES ('167', '12', '哈尔滨', '2');
INSERT INTO `blue_areas` VALUES ('168', '12', '大庆', '2');
INSERT INTO `blue_areas` VALUES ('169', '12', '大兴安岭', '2');
INSERT INTO `blue_areas` VALUES ('170', '12', '鹤岗', '2');
INSERT INTO `blue_areas` VALUES ('171', '12', '黑河', '2');
INSERT INTO `blue_areas` VALUES ('172', '12', '鸡西', '2');
INSERT INTO `blue_areas` VALUES ('173', '12', '佳木斯', '2');
INSERT INTO `blue_areas` VALUES ('174', '12', '牡丹江', '2');
INSERT INTO `blue_areas` VALUES ('175', '12', '七台河', '2');
INSERT INTO `blue_areas` VALUES ('176', '12', '齐齐哈尔', '2');
INSERT INTO `blue_areas` VALUES ('177', '12', '双鸭山', '2');
INSERT INTO `blue_areas` VALUES ('178', '12', '绥化', '2');
INSERT INTO `blue_areas` VALUES ('179', '12', '伊春', '2');
INSERT INTO `blue_areas` VALUES ('180', '13', '武汉', '2');
INSERT INTO `blue_areas` VALUES ('181', '13', '仙桃', '2');
INSERT INTO `blue_areas` VALUES ('182', '13', '鄂州', '2');
INSERT INTO `blue_areas` VALUES ('183', '13', '黄冈', '2');
INSERT INTO `blue_areas` VALUES ('184', '13', '黄石', '2');
INSERT INTO `blue_areas` VALUES ('185', '13', '荆门', '2');
INSERT INTO `blue_areas` VALUES ('186', '13', '荆州', '2');
INSERT INTO `blue_areas` VALUES ('187', '13', '潜江', '2');
INSERT INTO `blue_areas` VALUES ('188', '13', '神农架林区', '2');
INSERT INTO `blue_areas` VALUES ('189', '13', '十堰', '2');
INSERT INTO `blue_areas` VALUES ('190', '13', '随州', '2');
INSERT INTO `blue_areas` VALUES ('191', '13', '天门', '2');
INSERT INTO `blue_areas` VALUES ('192', '13', '咸宁', '2');
INSERT INTO `blue_areas` VALUES ('193', '13', '襄樊', '2');
INSERT INTO `blue_areas` VALUES ('194', '13', '孝感', '2');
INSERT INTO `blue_areas` VALUES ('195', '13', '宜昌', '2');
INSERT INTO `blue_areas` VALUES ('196', '13', '恩施', '2');
INSERT INTO `blue_areas` VALUES ('197', '14', '长沙', '2');
INSERT INTO `blue_areas` VALUES ('198', '14', '张家界', '2');
INSERT INTO `blue_areas` VALUES ('199', '14', '常德', '2');
INSERT INTO `blue_areas` VALUES ('200', '14', '郴州', '2');
INSERT INTO `blue_areas` VALUES ('201', '14', '衡阳', '2');
INSERT INTO `blue_areas` VALUES ('202', '14', '怀化', '2');
INSERT INTO `blue_areas` VALUES ('203', '14', '娄底', '2');
INSERT INTO `blue_areas` VALUES ('204', '14', '邵阳', '2');
INSERT INTO `blue_areas` VALUES ('205', '14', '湘潭', '2');
INSERT INTO `blue_areas` VALUES ('206', '14', '湘西', '2');
INSERT INTO `blue_areas` VALUES ('207', '14', '益阳', '2');
INSERT INTO `blue_areas` VALUES ('208', '14', '永州', '2');
INSERT INTO `blue_areas` VALUES ('209', '14', '岳阳', '2');
INSERT INTO `blue_areas` VALUES ('210', '14', '株洲', '2');
INSERT INTO `blue_areas` VALUES ('211', '15', '长春', '2');
INSERT INTO `blue_areas` VALUES ('212', '15', '吉林', '2');
INSERT INTO `blue_areas` VALUES ('213', '15', '白城', '2');
INSERT INTO `blue_areas` VALUES ('214', '15', '白山', '2');
INSERT INTO `blue_areas` VALUES ('215', '15', '辽源', '2');
INSERT INTO `blue_areas` VALUES ('216', '15', '四平', '2');
INSERT INTO `blue_areas` VALUES ('217', '15', '松原', '2');
INSERT INTO `blue_areas` VALUES ('218', '15', '通化', '2');
INSERT INTO `blue_areas` VALUES ('219', '15', '延边', '2');
INSERT INTO `blue_areas` VALUES ('220', '16', '南京', '2');
INSERT INTO `blue_areas` VALUES ('221', '16', '苏州', '2');
INSERT INTO `blue_areas` VALUES ('222', '16', '无锡', '2');
INSERT INTO `blue_areas` VALUES ('223', '16', '常州', '2');
INSERT INTO `blue_areas` VALUES ('224', '16', '淮安', '2');
INSERT INTO `blue_areas` VALUES ('225', '16', '连云港', '2');
INSERT INTO `blue_areas` VALUES ('226', '16', '南通', '2');
INSERT INTO `blue_areas` VALUES ('227', '16', '宿迁', '2');
INSERT INTO `blue_areas` VALUES ('228', '16', '泰州', '2');
INSERT INTO `blue_areas` VALUES ('229', '16', '徐州', '2');
INSERT INTO `blue_areas` VALUES ('230', '16', '盐城', '2');
INSERT INTO `blue_areas` VALUES ('231', '16', '扬州', '2');
INSERT INTO `blue_areas` VALUES ('232', '16', '镇江', '2');
INSERT INTO `blue_areas` VALUES ('233', '17', '南昌', '2');
INSERT INTO `blue_areas` VALUES ('234', '17', '抚州', '2');
INSERT INTO `blue_areas` VALUES ('235', '17', '赣州', '2');
INSERT INTO `blue_areas` VALUES ('236', '17', '吉安', '2');
INSERT INTO `blue_areas` VALUES ('237', '17', '景德镇', '2');
INSERT INTO `blue_areas` VALUES ('238', '17', '九江', '2');
INSERT INTO `blue_areas` VALUES ('239', '17', '萍乡', '2');
INSERT INTO `blue_areas` VALUES ('240', '17', '上饶', '2');
INSERT INTO `blue_areas` VALUES ('241', '17', '新余', '2');
INSERT INTO `blue_areas` VALUES ('242', '17', '宜春', '2');
INSERT INTO `blue_areas` VALUES ('243', '17', '鹰潭', '2');
INSERT INTO `blue_areas` VALUES ('244', '18', '沈阳', '2');
INSERT INTO `blue_areas` VALUES ('245', '18', '大连', '2');
INSERT INTO `blue_areas` VALUES ('246', '18', '鞍山', '2');
INSERT INTO `blue_areas` VALUES ('247', '18', '本溪', '2');
INSERT INTO `blue_areas` VALUES ('248', '18', '朝阳', '2');
INSERT INTO `blue_areas` VALUES ('249', '18', '丹东', '2');
INSERT INTO `blue_areas` VALUES ('250', '18', '抚顺', '2');
INSERT INTO `blue_areas` VALUES ('251', '18', '阜新', '2');
INSERT INTO `blue_areas` VALUES ('252', '18', '葫芦岛', '2');
INSERT INTO `blue_areas` VALUES ('253', '18', '锦州', '2');
INSERT INTO `blue_areas` VALUES ('254', '18', '辽阳', '2');
INSERT INTO `blue_areas` VALUES ('255', '18', '盘锦', '2');
INSERT INTO `blue_areas` VALUES ('256', '18', '铁岭', '2');
INSERT INTO `blue_areas` VALUES ('257', '18', '营口', '2');
INSERT INTO `blue_areas` VALUES ('258', '19', '呼和浩特', '2');
INSERT INTO `blue_areas` VALUES ('259', '19', '阿拉善盟', '2');
INSERT INTO `blue_areas` VALUES ('260', '19', '巴彦淖尔盟', '2');
INSERT INTO `blue_areas` VALUES ('261', '19', '包头', '2');
INSERT INTO `blue_areas` VALUES ('262', '19', '赤峰', '2');
INSERT INTO `blue_areas` VALUES ('263', '19', '鄂尔多斯', '2');
INSERT INTO `blue_areas` VALUES ('264', '19', '呼伦贝尔', '2');
INSERT INTO `blue_areas` VALUES ('265', '19', '通辽', '2');
INSERT INTO `blue_areas` VALUES ('266', '19', '乌海', '2');
INSERT INTO `blue_areas` VALUES ('267', '19', '乌兰察布市', '2');
INSERT INTO `blue_areas` VALUES ('268', '19', '锡林郭勒盟', '2');
INSERT INTO `blue_areas` VALUES ('269', '19', '兴安盟', '2');
INSERT INTO `blue_areas` VALUES ('270', '20', '银川', '2');
INSERT INTO `blue_areas` VALUES ('271', '20', '固原', '2');
INSERT INTO `blue_areas` VALUES ('272', '20', '石嘴山', '2');
INSERT INTO `blue_areas` VALUES ('273', '20', '吴忠', '2');
INSERT INTO `blue_areas` VALUES ('274', '20', '中卫', '2');
INSERT INTO `blue_areas` VALUES ('275', '21', '西宁', '2');
INSERT INTO `blue_areas` VALUES ('276', '21', '果洛', '2');
INSERT INTO `blue_areas` VALUES ('277', '21', '海北', '2');
INSERT INTO `blue_areas` VALUES ('278', '21', '海东', '2');
INSERT INTO `blue_areas` VALUES ('279', '21', '海南', '2');
INSERT INTO `blue_areas` VALUES ('280', '21', '海西', '2');
INSERT INTO `blue_areas` VALUES ('281', '21', '黄南', '2');
INSERT INTO `blue_areas` VALUES ('282', '21', '玉树', '2');
INSERT INTO `blue_areas` VALUES ('283', '22', '济南', '2');
INSERT INTO `blue_areas` VALUES ('284', '22', '青岛', '2');
INSERT INTO `blue_areas` VALUES ('285', '22', '滨州', '2');
INSERT INTO `blue_areas` VALUES ('286', '22', '德州', '2');
INSERT INTO `blue_areas` VALUES ('287', '22', '东营', '2');
INSERT INTO `blue_areas` VALUES ('288', '22', '菏泽', '2');
INSERT INTO `blue_areas` VALUES ('289', '22', '济宁', '2');
INSERT INTO `blue_areas` VALUES ('290', '22', '莱芜', '2');
INSERT INTO `blue_areas` VALUES ('291', '22', '聊城', '2');
INSERT INTO `blue_areas` VALUES ('292', '22', '临沂', '2');
INSERT INTO `blue_areas` VALUES ('293', '22', '日照', '2');
INSERT INTO `blue_areas` VALUES ('294', '22', '泰安', '2');
INSERT INTO `blue_areas` VALUES ('295', '22', '威海', '2');
INSERT INTO `blue_areas` VALUES ('296', '22', '潍坊', '2');
INSERT INTO `blue_areas` VALUES ('297', '22', '烟台', '2');
INSERT INTO `blue_areas` VALUES ('298', '22', '枣庄', '2');
INSERT INTO `blue_areas` VALUES ('299', '22', '淄博', '2');
INSERT INTO `blue_areas` VALUES ('300', '23', '太原', '2');
INSERT INTO `blue_areas` VALUES ('301', '23', '长治', '2');
INSERT INTO `blue_areas` VALUES ('302', '23', '大同', '2');
INSERT INTO `blue_areas` VALUES ('303', '23', '晋城', '2');
INSERT INTO `blue_areas` VALUES ('304', '23', '晋中', '2');
INSERT INTO `blue_areas` VALUES ('305', '23', '临汾', '2');
INSERT INTO `blue_areas` VALUES ('306', '23', '吕梁', '2');
INSERT INTO `blue_areas` VALUES ('307', '23', '朔州', '2');
INSERT INTO `blue_areas` VALUES ('308', '23', '忻州', '2');
INSERT INTO `blue_areas` VALUES ('309', '23', '阳泉', '2');
INSERT INTO `blue_areas` VALUES ('310', '23', '运城', '2');
INSERT INTO `blue_areas` VALUES ('311', '24', '西安', '2');
INSERT INTO `blue_areas` VALUES ('312', '24', '安康', '2');
INSERT INTO `blue_areas` VALUES ('313', '24', '宝鸡', '2');
INSERT INTO `blue_areas` VALUES ('314', '24', '汉中', '2');
INSERT INTO `blue_areas` VALUES ('315', '24', '商洛', '2');
INSERT INTO `blue_areas` VALUES ('316', '24', '铜川', '2');
INSERT INTO `blue_areas` VALUES ('317', '24', '渭南', '2');
INSERT INTO `blue_areas` VALUES ('318', '24', '咸阳', '2');
INSERT INTO `blue_areas` VALUES ('319', '24', '延安', '2');
INSERT INTO `blue_areas` VALUES ('320', '24', '榆林', '2');
INSERT INTO `blue_areas` VALUES ('321', '25', '上海', '2');
INSERT INTO `blue_areas` VALUES ('322', '26', '成都', '2');
INSERT INTO `blue_areas` VALUES ('323', '26', '绵阳', '2');
INSERT INTO `blue_areas` VALUES ('324', '26', '阿坝', '2');
INSERT INTO `blue_areas` VALUES ('325', '26', '巴中', '2');
INSERT INTO `blue_areas` VALUES ('326', '26', '达州', '2');
INSERT INTO `blue_areas` VALUES ('327', '26', '德阳', '2');
INSERT INTO `blue_areas` VALUES ('328', '26', '甘孜', '2');
INSERT INTO `blue_areas` VALUES ('329', '26', '广安', '2');
INSERT INTO `blue_areas` VALUES ('330', '26', '广元', '2');
INSERT INTO `blue_areas` VALUES ('331', '26', '乐山', '2');
INSERT INTO `blue_areas` VALUES ('332', '26', '凉山', '2');
INSERT INTO `blue_areas` VALUES ('333', '26', '眉山', '2');
INSERT INTO `blue_areas` VALUES ('334', '26', '南充', '2');
INSERT INTO `blue_areas` VALUES ('335', '26', '内江', '2');
INSERT INTO `blue_areas` VALUES ('336', '26', '攀枝花', '2');
INSERT INTO `blue_areas` VALUES ('337', '26', '遂宁', '2');
INSERT INTO `blue_areas` VALUES ('338', '26', '雅安', '2');
INSERT INTO `blue_areas` VALUES ('339', '26', '宜宾', '2');
INSERT INTO `blue_areas` VALUES ('340', '26', '资阳', '2');
INSERT INTO `blue_areas` VALUES ('341', '26', '自贡', '2');
INSERT INTO `blue_areas` VALUES ('342', '26', '泸州', '2');
INSERT INTO `blue_areas` VALUES ('343', '27', '天津', '2');
INSERT INTO `blue_areas` VALUES ('344', '28', '拉萨', '2');
INSERT INTO `blue_areas` VALUES ('345', '28', '阿里', '2');
INSERT INTO `blue_areas` VALUES ('346', '28', '昌都', '2');
INSERT INTO `blue_areas` VALUES ('347', '28', '林芝', '2');
INSERT INTO `blue_areas` VALUES ('348', '28', '那曲', '2');
INSERT INTO `blue_areas` VALUES ('349', '28', '日喀则', '2');
INSERT INTO `blue_areas` VALUES ('350', '28', '山南', '2');
INSERT INTO `blue_areas` VALUES ('351', '29', '乌鲁木齐', '2');
INSERT INTO `blue_areas` VALUES ('352', '29', '阿克苏', '2');
INSERT INTO `blue_areas` VALUES ('353', '29', '阿拉尔', '2');
INSERT INTO `blue_areas` VALUES ('354', '29', '巴音郭楞', '2');
INSERT INTO `blue_areas` VALUES ('355', '29', '博尔塔拉', '2');
INSERT INTO `blue_areas` VALUES ('356', '29', '昌吉', '2');
INSERT INTO `blue_areas` VALUES ('357', '29', '哈密', '2');
INSERT INTO `blue_areas` VALUES ('358', '29', '和田', '2');
INSERT INTO `blue_areas` VALUES ('359', '29', '喀什', '2');
INSERT INTO `blue_areas` VALUES ('360', '29', '克拉玛依', '2');
INSERT INTO `blue_areas` VALUES ('361', '29', '克孜勒苏', '2');
INSERT INTO `blue_areas` VALUES ('362', '29', '石河子', '2');
INSERT INTO `blue_areas` VALUES ('363', '29', '图木舒克', '2');
INSERT INTO `blue_areas` VALUES ('364', '29', '吐鲁番', '2');
INSERT INTO `blue_areas` VALUES ('365', '29', '五家渠', '2');
INSERT INTO `blue_areas` VALUES ('366', '29', '伊犁', '2');
INSERT INTO `blue_areas` VALUES ('367', '30', '昆明', '2');
INSERT INTO `blue_areas` VALUES ('368', '30', '怒江', '2');
INSERT INTO `blue_areas` VALUES ('369', '30', '普洱', '2');
INSERT INTO `blue_areas` VALUES ('370', '30', '丽江', '2');
INSERT INTO `blue_areas` VALUES ('371', '30', '保山', '2');
INSERT INTO `blue_areas` VALUES ('372', '30', '楚雄', '2');
INSERT INTO `blue_areas` VALUES ('373', '30', '大理', '2');
INSERT INTO `blue_areas` VALUES ('374', '30', '德宏', '2');
INSERT INTO `blue_areas` VALUES ('375', '30', '迪庆', '2');
INSERT INTO `blue_areas` VALUES ('376', '30', '红河', '2');
INSERT INTO `blue_areas` VALUES ('377', '30', '临沧', '2');
INSERT INTO `blue_areas` VALUES ('378', '30', '曲靖', '2');
INSERT INTO `blue_areas` VALUES ('379', '30', '文山', '2');
INSERT INTO `blue_areas` VALUES ('380', '30', '西双版纳', '2');
INSERT INTO `blue_areas` VALUES ('381', '30', '玉溪', '2');
INSERT INTO `blue_areas` VALUES ('382', '30', '昭通', '2');
INSERT INTO `blue_areas` VALUES ('383', '31', '杭州', '2');
INSERT INTO `blue_areas` VALUES ('384', '31', '湖州', '2');
INSERT INTO `blue_areas` VALUES ('385', '31', '嘉兴', '2');
INSERT INTO `blue_areas` VALUES ('386', '31', '金华', '2');
INSERT INTO `blue_areas` VALUES ('387', '31', '丽水', '2');
INSERT INTO `blue_areas` VALUES ('388', '31', '宁波', '2');
INSERT INTO `blue_areas` VALUES ('389', '31', '绍兴', '2');
INSERT INTO `blue_areas` VALUES ('390', '31', '台州', '2');
INSERT INTO `blue_areas` VALUES ('391', '31', '温州', '2');
INSERT INTO `blue_areas` VALUES ('392', '31', '舟山', '2');
INSERT INTO `blue_areas` VALUES ('393', '31', '衢州', '2');
INSERT INTO `blue_areas` VALUES ('394', '32', '重庆', '2');
INSERT INTO `blue_areas` VALUES ('395', '33', '香港', '2');
INSERT INTO `blue_areas` VALUES ('396', '34', '澳门', '2');
INSERT INTO `blue_areas` VALUES ('397', '35', '台湾', '2');
INSERT INTO `blue_areas` VALUES ('398', '36', '迎江区', '3');
INSERT INTO `blue_areas` VALUES ('399', '36', '大观区', '3');
INSERT INTO `blue_areas` VALUES ('400', '36', '宜秀区', '3');
INSERT INTO `blue_areas` VALUES ('401', '36', '桐城市', '3');
INSERT INTO `blue_areas` VALUES ('402', '36', '怀宁县', '3');
INSERT INTO `blue_areas` VALUES ('403', '36', '枞阳县', '3');
INSERT INTO `blue_areas` VALUES ('404', '36', '潜山县', '3');
INSERT INTO `blue_areas` VALUES ('405', '36', '太湖县', '3');
INSERT INTO `blue_areas` VALUES ('406', '36', '宿松县', '3');
INSERT INTO `blue_areas` VALUES ('407', '36', '望江县', '3');
INSERT INTO `blue_areas` VALUES ('408', '36', '岳西县', '3');
INSERT INTO `blue_areas` VALUES ('409', '37', '中市区', '3');
INSERT INTO `blue_areas` VALUES ('410', '37', '东市区', '3');
INSERT INTO `blue_areas` VALUES ('411', '37', '西市区', '3');
INSERT INTO `blue_areas` VALUES ('412', '37', '郊区', '3');
INSERT INTO `blue_areas` VALUES ('413', '37', '怀远县', '3');
INSERT INTO `blue_areas` VALUES ('414', '37', '五河县', '3');
INSERT INTO `blue_areas` VALUES ('415', '37', '固镇县', '3');
INSERT INTO `blue_areas` VALUES ('416', '38', '居巢区', '3');
INSERT INTO `blue_areas` VALUES ('417', '38', '庐江县', '3');
INSERT INTO `blue_areas` VALUES ('418', '38', '无为县', '3');
INSERT INTO `blue_areas` VALUES ('419', '38', '含山县', '3');
INSERT INTO `blue_areas` VALUES ('420', '38', '和县', '3');
INSERT INTO `blue_areas` VALUES ('421', '39', '贵池区', '3');
INSERT INTO `blue_areas` VALUES ('422', '39', '东至县', '3');
INSERT INTO `blue_areas` VALUES ('423', '39', '石台县', '3');
INSERT INTO `blue_areas` VALUES ('424', '39', '青阳县', '3');
INSERT INTO `blue_areas` VALUES ('425', '40', '琅琊区', '3');
INSERT INTO `blue_areas` VALUES ('426', '40', '南谯区', '3');
INSERT INTO `blue_areas` VALUES ('427', '40', '天长市', '3');
INSERT INTO `blue_areas` VALUES ('428', '40', '明光市', '3');
INSERT INTO `blue_areas` VALUES ('429', '40', '来安县', '3');
INSERT INTO `blue_areas` VALUES ('430', '40', '全椒县', '3');
INSERT INTO `blue_areas` VALUES ('431', '40', '定远县', '3');
INSERT INTO `blue_areas` VALUES ('432', '40', '凤阳县', '3');
INSERT INTO `blue_areas` VALUES ('433', '41', '蚌山区', '3');
INSERT INTO `blue_areas` VALUES ('434', '41', '龙子湖区', '3');
INSERT INTO `blue_areas` VALUES ('435', '41', '禹会区', '3');
INSERT INTO `blue_areas` VALUES ('436', '41', '淮上区', '3');
INSERT INTO `blue_areas` VALUES ('437', '41', '颍州区', '3');
INSERT INTO `blue_areas` VALUES ('438', '41', '颍东区', '3');
INSERT INTO `blue_areas` VALUES ('439', '41', '颍泉区', '3');
INSERT INTO `blue_areas` VALUES ('440', '41', '界首市', '3');
INSERT INTO `blue_areas` VALUES ('441', '41', '临泉县', '3');
INSERT INTO `blue_areas` VALUES ('442', '41', '太和县', '3');
INSERT INTO `blue_areas` VALUES ('443', '41', '阜南县', '3');
INSERT INTO `blue_areas` VALUES ('444', '41', '颖上县', '3');
INSERT INTO `blue_areas` VALUES ('445', '42', '相山区', '3');
INSERT INTO `blue_areas` VALUES ('446', '42', '杜集区', '3');
INSERT INTO `blue_areas` VALUES ('447', '42', '烈山区', '3');
INSERT INTO `blue_areas` VALUES ('448', '42', '濉溪县', '3');
INSERT INTO `blue_areas` VALUES ('449', '43', '田家庵区', '3');
INSERT INTO `blue_areas` VALUES ('450', '43', '大通区', '3');
INSERT INTO `blue_areas` VALUES ('451', '43', '谢家集区', '3');
INSERT INTO `blue_areas` VALUES ('452', '43', '八公山区', '3');
INSERT INTO `blue_areas` VALUES ('453', '43', '潘集区', '3');
INSERT INTO `blue_areas` VALUES ('454', '43', '凤台县', '3');
INSERT INTO `blue_areas` VALUES ('455', '44', '屯溪区', '3');
INSERT INTO `blue_areas` VALUES ('456', '44', '黄山区', '3');
INSERT INTO `blue_areas` VALUES ('457', '44', '徽州区', '3');
INSERT INTO `blue_areas` VALUES ('458', '44', '歙县', '3');
INSERT INTO `blue_areas` VALUES ('459', '44', '休宁县', '3');
INSERT INTO `blue_areas` VALUES ('460', '44', '黟县', '3');
INSERT INTO `blue_areas` VALUES ('461', '44', '祁门县', '3');
INSERT INTO `blue_areas` VALUES ('462', '45', '金安区', '3');
INSERT INTO `blue_areas` VALUES ('463', '45', '裕安区', '3');
INSERT INTO `blue_areas` VALUES ('464', '45', '寿县', '3');
INSERT INTO `blue_areas` VALUES ('465', '45', '霍邱县', '3');
INSERT INTO `blue_areas` VALUES ('466', '45', '舒城县', '3');
INSERT INTO `blue_areas` VALUES ('467', '45', '金寨县', '3');
INSERT INTO `blue_areas` VALUES ('468', '45', '霍山县', '3');
INSERT INTO `blue_areas` VALUES ('469', '46', '雨山区', '3');
INSERT INTO `blue_areas` VALUES ('470', '46', '花山区', '3');
INSERT INTO `blue_areas` VALUES ('471', '46', '金家庄区', '3');
INSERT INTO `blue_areas` VALUES ('472', '46', '当涂县', '3');
INSERT INTO `blue_areas` VALUES ('473', '47', '埇桥区', '3');
INSERT INTO `blue_areas` VALUES ('474', '47', '砀山县', '3');
INSERT INTO `blue_areas` VALUES ('475', '47', '萧县', '3');
INSERT INTO `blue_areas` VALUES ('476', '47', '灵璧县', '3');
INSERT INTO `blue_areas` VALUES ('477', '47', '泗县', '3');
INSERT INTO `blue_areas` VALUES ('478', '48', '铜官山区', '3');
INSERT INTO `blue_areas` VALUES ('479', '48', '狮子山区', '3');
INSERT INTO `blue_areas` VALUES ('480', '48', '郊区', '3');
INSERT INTO `blue_areas` VALUES ('481', '48', '铜陵县', '3');
INSERT INTO `blue_areas` VALUES ('482', '49', '镜湖区', '3');
INSERT INTO `blue_areas` VALUES ('483', '49', '弋江区', '3');
INSERT INTO `blue_areas` VALUES ('484', '49', '鸠江区', '3');
INSERT INTO `blue_areas` VALUES ('485', '49', '三山区', '3');
INSERT INTO `blue_areas` VALUES ('486', '49', '芜湖县', '3');
INSERT INTO `blue_areas` VALUES ('487', '49', '繁昌县', '3');
INSERT INTO `blue_areas` VALUES ('488', '49', '南陵县', '3');
INSERT INTO `blue_areas` VALUES ('489', '50', '宣州区', '3');
INSERT INTO `blue_areas` VALUES ('490', '50', '宁国市', '3');
INSERT INTO `blue_areas` VALUES ('491', '50', '郎溪县', '3');
INSERT INTO `blue_areas` VALUES ('492', '50', '广德县', '3');
INSERT INTO `blue_areas` VALUES ('493', '50', '泾县', '3');
INSERT INTO `blue_areas` VALUES ('494', '50', '绩溪县', '3');
INSERT INTO `blue_areas` VALUES ('495', '50', '旌德县', '3');
INSERT INTO `blue_areas` VALUES ('496', '51', '涡阳县', '3');
INSERT INTO `blue_areas` VALUES ('497', '51', '蒙城县', '3');
INSERT INTO `blue_areas` VALUES ('498', '51', '利辛县', '3');
INSERT INTO `blue_areas` VALUES ('499', '51', '谯城区', '3');
INSERT INTO `blue_areas` VALUES ('500', '52', '东城区', '3');
INSERT INTO `blue_areas` VALUES ('501', '52', '西城区', '3');
INSERT INTO `blue_areas` VALUES ('502', '52', '海淀区', '3');
INSERT INTO `blue_areas` VALUES ('503', '52', '朝阳区', '3');
INSERT INTO `blue_areas` VALUES ('504', '52', '崇文区', '3');
INSERT INTO `blue_areas` VALUES ('505', '52', '宣武区', '3');
INSERT INTO `blue_areas` VALUES ('506', '52', '丰台区', '3');
INSERT INTO `blue_areas` VALUES ('507', '52', '石景山区', '3');
INSERT INTO `blue_areas` VALUES ('508', '52', '房山区', '3');
INSERT INTO `blue_areas` VALUES ('509', '52', '门头沟区', '3');
INSERT INTO `blue_areas` VALUES ('510', '52', '通州区', '3');
INSERT INTO `blue_areas` VALUES ('511', '52', '顺义区', '3');
INSERT INTO `blue_areas` VALUES ('512', '52', '昌平区', '3');
INSERT INTO `blue_areas` VALUES ('513', '52', '怀柔区', '3');
INSERT INTO `blue_areas` VALUES ('514', '52', '平谷区', '3');
INSERT INTO `blue_areas` VALUES ('515', '52', '大兴区', '3');
INSERT INTO `blue_areas` VALUES ('516', '52', '密云县', '3');
INSERT INTO `blue_areas` VALUES ('517', '52', '延庆县', '3');
INSERT INTO `blue_areas` VALUES ('518', '53', '鼓楼区', '3');
INSERT INTO `blue_areas` VALUES ('519', '53', '台江区', '3');
INSERT INTO `blue_areas` VALUES ('520', '53', '仓山区', '3');
INSERT INTO `blue_areas` VALUES ('521', '53', '马尾区', '3');
INSERT INTO `blue_areas` VALUES ('522', '53', '晋安区', '3');
INSERT INTO `blue_areas` VALUES ('523', '53', '福清市', '3');
INSERT INTO `blue_areas` VALUES ('524', '53', '长乐市', '3');
INSERT INTO `blue_areas` VALUES ('525', '53', '闽侯县', '3');
INSERT INTO `blue_areas` VALUES ('526', '53', '连江县', '3');
INSERT INTO `blue_areas` VALUES ('527', '53', '罗源县', '3');
INSERT INTO `blue_areas` VALUES ('528', '53', '闽清县', '3');
INSERT INTO `blue_areas` VALUES ('529', '53', '永泰县', '3');
INSERT INTO `blue_areas` VALUES ('530', '53', '平潭县', '3');
INSERT INTO `blue_areas` VALUES ('531', '54', '新罗区', '3');
INSERT INTO `blue_areas` VALUES ('532', '54', '漳平市', '3');
INSERT INTO `blue_areas` VALUES ('533', '54', '长汀县', '3');
INSERT INTO `blue_areas` VALUES ('534', '54', '永定县', '3');
INSERT INTO `blue_areas` VALUES ('535', '54', '上杭县', '3');
INSERT INTO `blue_areas` VALUES ('536', '54', '武平县', '3');
INSERT INTO `blue_areas` VALUES ('537', '54', '连城县', '3');
INSERT INTO `blue_areas` VALUES ('538', '55', '延平区', '3');
INSERT INTO `blue_areas` VALUES ('539', '55', '邵武市', '3');
INSERT INTO `blue_areas` VALUES ('540', '55', '武夷山市', '3');
INSERT INTO `blue_areas` VALUES ('541', '55', '建瓯市', '3');
INSERT INTO `blue_areas` VALUES ('542', '55', '建阳市', '3');
INSERT INTO `blue_areas` VALUES ('543', '55', '顺昌县', '3');
INSERT INTO `blue_areas` VALUES ('544', '55', '浦城县', '3');
INSERT INTO `blue_areas` VALUES ('545', '55', '光泽县', '3');
INSERT INTO `blue_areas` VALUES ('546', '55', '松溪县', '3');
INSERT INTO `blue_areas` VALUES ('547', '55', '政和县', '3');
INSERT INTO `blue_areas` VALUES ('548', '56', '蕉城区', '3');
INSERT INTO `blue_areas` VALUES ('549', '56', '福安市', '3');
INSERT INTO `blue_areas` VALUES ('550', '56', '福鼎市', '3');
INSERT INTO `blue_areas` VALUES ('551', '56', '霞浦县', '3');
INSERT INTO `blue_areas` VALUES ('552', '56', '古田县', '3');
INSERT INTO `blue_areas` VALUES ('553', '56', '屏南县', '3');
INSERT INTO `blue_areas` VALUES ('554', '56', '寿宁县', '3');
INSERT INTO `blue_areas` VALUES ('555', '56', '周宁县', '3');
INSERT INTO `blue_areas` VALUES ('556', '56', '柘荣县', '3');
INSERT INTO `blue_areas` VALUES ('557', '57', '城厢区', '3');
INSERT INTO `blue_areas` VALUES ('558', '57', '涵江区', '3');
INSERT INTO `blue_areas` VALUES ('559', '57', '荔城区', '3');
INSERT INTO `blue_areas` VALUES ('560', '57', '秀屿区', '3');
INSERT INTO `blue_areas` VALUES ('561', '57', '仙游县', '3');
INSERT INTO `blue_areas` VALUES ('562', '58', '鲤城区', '3');
INSERT INTO `blue_areas` VALUES ('563', '58', '丰泽区', '3');
INSERT INTO `blue_areas` VALUES ('564', '58', '洛江区', '3');
INSERT INTO `blue_areas` VALUES ('565', '58', '清濛开发区', '3');
INSERT INTO `blue_areas` VALUES ('566', '58', '泉港区', '3');
INSERT INTO `blue_areas` VALUES ('567', '58', '石狮市', '3');
INSERT INTO `blue_areas` VALUES ('568', '58', '晋江市', '3');
INSERT INTO `blue_areas` VALUES ('569', '58', '南安市', '3');
INSERT INTO `blue_areas` VALUES ('570', '58', '惠安县', '3');
INSERT INTO `blue_areas` VALUES ('571', '58', '安溪县', '3');
INSERT INTO `blue_areas` VALUES ('572', '58', '永春县', '3');
INSERT INTO `blue_areas` VALUES ('573', '58', '德化县', '3');
INSERT INTO `blue_areas` VALUES ('574', '58', '金门县', '3');
INSERT INTO `blue_areas` VALUES ('575', '59', '梅列区', '3');
INSERT INTO `blue_areas` VALUES ('576', '59', '三元区', '3');
INSERT INTO `blue_areas` VALUES ('577', '59', '永安市', '3');
INSERT INTO `blue_areas` VALUES ('578', '59', '明溪县', '3');
INSERT INTO `blue_areas` VALUES ('579', '59', '清流县', '3');
INSERT INTO `blue_areas` VALUES ('580', '59', '宁化县', '3');
INSERT INTO `blue_areas` VALUES ('581', '59', '大田县', '3');
INSERT INTO `blue_areas` VALUES ('582', '59', '尤溪县', '3');
INSERT INTO `blue_areas` VALUES ('583', '59', '沙县', '3');
INSERT INTO `blue_areas` VALUES ('584', '59', '将乐县', '3');
INSERT INTO `blue_areas` VALUES ('585', '59', '泰宁县', '3');
INSERT INTO `blue_areas` VALUES ('586', '59', '建宁县', '3');
INSERT INTO `blue_areas` VALUES ('587', '60', '思明区', '3');
INSERT INTO `blue_areas` VALUES ('588', '60', '海沧区', '3');
INSERT INTO `blue_areas` VALUES ('589', '60', '湖里区', '3');
INSERT INTO `blue_areas` VALUES ('590', '60', '集美区', '3');
INSERT INTO `blue_areas` VALUES ('591', '60', '同安区', '3');
INSERT INTO `blue_areas` VALUES ('592', '60', '翔安区', '3');
INSERT INTO `blue_areas` VALUES ('593', '61', '芗城区', '3');
INSERT INTO `blue_areas` VALUES ('594', '61', '龙文区', '3');
INSERT INTO `blue_areas` VALUES ('595', '61', '龙海市', '3');
INSERT INTO `blue_areas` VALUES ('596', '61', '云霄县', '3');
INSERT INTO `blue_areas` VALUES ('597', '61', '漳浦县', '3');
INSERT INTO `blue_areas` VALUES ('598', '61', '诏安县', '3');
INSERT INTO `blue_areas` VALUES ('599', '61', '长泰县', '3');
INSERT INTO `blue_areas` VALUES ('600', '61', '东山县', '3');
INSERT INTO `blue_areas` VALUES ('1021', '117', '兴仁县', '3');
INSERT INTO `blue_areas` VALUES ('1022', '117', '普安县', '3');
INSERT INTO `blue_areas` VALUES ('1023', '117', '晴隆县', '3');
INSERT INTO `blue_areas` VALUES ('1024', '117', '贞丰县', '3');
INSERT INTO `blue_areas` VALUES ('1025', '117', '望谟县', '3');
INSERT INTO `blue_areas` VALUES ('1026', '117', '册亨县', '3');
INSERT INTO `blue_areas` VALUES ('1027', '117', '安龙县', '3');
INSERT INTO `blue_areas` VALUES ('1028', '118', '铜仁市', '3');
INSERT INTO `blue_areas` VALUES ('1029', '118', '江口县', '3');
INSERT INTO `blue_areas` VALUES ('1030', '118', '石阡县', '3');
INSERT INTO `blue_areas` VALUES ('1031', '118', '思南县', '3');
INSERT INTO `blue_areas` VALUES ('1032', '118', '德江县', '3');
INSERT INTO `blue_areas` VALUES ('1033', '118', '玉屏', '3');
INSERT INTO `blue_areas` VALUES ('1034', '118', '印江', '3');
INSERT INTO `blue_areas` VALUES ('1035', '118', '沿河', '3');
INSERT INTO `blue_areas` VALUES ('1036', '118', '松桃', '3');
INSERT INTO `blue_areas` VALUES ('1037', '118', '万山特区', '3');
INSERT INTO `blue_areas` VALUES ('1038', '119', '红花岗区', '3');
INSERT INTO `blue_areas` VALUES ('1039', '119', '务川县', '3');
INSERT INTO `blue_areas` VALUES ('1040', '119', '道真县', '3');
INSERT INTO `blue_areas` VALUES ('1041', '119', '汇川区', '3');
INSERT INTO `blue_areas` VALUES ('1042', '119', '赤水市', '3');
INSERT INTO `blue_areas` VALUES ('1043', '119', '仁怀市', '3');
INSERT INTO `blue_areas` VALUES ('1044', '119', '遵义县', '3');
INSERT INTO `blue_areas` VALUES ('1045', '119', '桐梓县', '3');
INSERT INTO `blue_areas` VALUES ('1046', '119', '绥阳县', '3');
INSERT INTO `blue_areas` VALUES ('1047', '119', '正安县', '3');
INSERT INTO `blue_areas` VALUES ('1048', '119', '凤冈县', '3');
INSERT INTO `blue_areas` VALUES ('1049', '119', '湄潭县', '3');
INSERT INTO `blue_areas` VALUES ('1050', '119', '余庆县', '3');
INSERT INTO `blue_areas` VALUES ('1051', '119', '习水县', '3');
INSERT INTO `blue_areas` VALUES ('1052', '119', '道真', '3');
INSERT INTO `blue_areas` VALUES ('1053', '119', '务川', '3');
INSERT INTO `blue_areas` VALUES ('1054', '120', '秀英区', '3');
INSERT INTO `blue_areas` VALUES ('1055', '120', '龙华区', '3');
INSERT INTO `blue_areas` VALUES ('1056', '120', '琼山区', '3');
INSERT INTO `blue_areas` VALUES ('1057', '120', '美兰区', '3');
INSERT INTO `blue_areas` VALUES ('1058', '137', '市区', '3');
INSERT INTO `blue_areas` VALUES ('1059', '137', '洋浦开发区', '3');
INSERT INTO `blue_areas` VALUES ('1060', '137', '那大镇', '3');
INSERT INTO `blue_areas` VALUES ('1061', '137', '王五镇', '3');
INSERT INTO `blue_areas` VALUES ('1062', '137', '雅星镇', '3');
INSERT INTO `blue_areas` VALUES ('1063', '137', '大成镇', '3');
INSERT INTO `blue_areas` VALUES ('1064', '137', '中和镇', '3');
INSERT INTO `blue_areas` VALUES ('1065', '137', '峨蔓镇', '3');
INSERT INTO `blue_areas` VALUES ('1066', '137', '南丰镇', '3');
INSERT INTO `blue_areas` VALUES ('1067', '137', '白马井镇', '3');
INSERT INTO `blue_areas` VALUES ('1068', '137', '兰洋镇', '3');
INSERT INTO `blue_areas` VALUES ('1069', '137', '和庆镇', '3');
INSERT INTO `blue_areas` VALUES ('1070', '137', '海头镇', '3');
INSERT INTO `blue_areas` VALUES ('1071', '137', '排浦镇', '3');
INSERT INTO `blue_areas` VALUES ('1072', '137', '东成镇', '3');
INSERT INTO `blue_areas` VALUES ('1073', '137', '光村镇', '3');
INSERT INTO `blue_areas` VALUES ('1074', '137', '木棠镇', '3');
INSERT INTO `blue_areas` VALUES ('1075', '137', '新州镇', '3');
INSERT INTO `blue_areas` VALUES ('1076', '137', '三都镇', '3');
INSERT INTO `blue_areas` VALUES ('1077', '137', '其他', '3');
INSERT INTO `blue_areas` VALUES ('1078', '138', '长安区', '3');
INSERT INTO `blue_areas` VALUES ('1079', '138', '桥东区', '3');
INSERT INTO `blue_areas` VALUES ('1080', '138', '桥西区', '3');
INSERT INTO `blue_areas` VALUES ('1081', '138', '新华区', '3');
INSERT INTO `blue_areas` VALUES ('1082', '138', '裕华区', '3');
INSERT INTO `blue_areas` VALUES ('1083', '138', '井陉矿区', '3');
INSERT INTO `blue_areas` VALUES ('1084', '138', '高新区', '3');
INSERT INTO `blue_areas` VALUES ('1085', '138', '辛集市', '3');
INSERT INTO `blue_areas` VALUES ('1086', '138', '藁城市', '3');
INSERT INTO `blue_areas` VALUES ('1087', '138', '晋州市', '3');
INSERT INTO `blue_areas` VALUES ('1088', '138', '新乐市', '3');
INSERT INTO `blue_areas` VALUES ('1089', '138', '鹿泉市', '3');
INSERT INTO `blue_areas` VALUES ('1090', '138', '井陉县', '3');
INSERT INTO `blue_areas` VALUES ('1091', '138', '正定县', '3');
INSERT INTO `blue_areas` VALUES ('1092', '138', '栾城县', '3');
INSERT INTO `blue_areas` VALUES ('1093', '138', '行唐县', '3');
INSERT INTO `blue_areas` VALUES ('1094', '138', '灵寿县', '3');
INSERT INTO `blue_areas` VALUES ('1095', '138', '高邑县', '3');
INSERT INTO `blue_areas` VALUES ('1096', '138', '深泽县', '3');
INSERT INTO `blue_areas` VALUES ('1097', '138', '赞皇县', '3');
INSERT INTO `blue_areas` VALUES ('1098', '138', '无极县', '3');
INSERT INTO `blue_areas` VALUES ('1099', '138', '平山县', '3');
INSERT INTO `blue_areas` VALUES ('1100', '138', '元氏县', '3');
INSERT INTO `blue_areas` VALUES ('1101', '138', '赵县', '3');
INSERT INTO `blue_areas` VALUES ('1102', '139', '新市区', '3');
INSERT INTO `blue_areas` VALUES ('1103', '139', '南市区', '3');
INSERT INTO `blue_areas` VALUES ('1104', '139', '北市区', '3');
INSERT INTO `blue_areas` VALUES ('1105', '139', '涿州市', '3');
INSERT INTO `blue_areas` VALUES ('1106', '139', '定州市', '3');
INSERT INTO `blue_areas` VALUES ('1107', '139', '安国市', '3');
INSERT INTO `blue_areas` VALUES ('1108', '139', '高碑店市', '3');
INSERT INTO `blue_areas` VALUES ('1109', '139', '满城县', '3');
INSERT INTO `blue_areas` VALUES ('1110', '139', '清苑县', '3');
INSERT INTO `blue_areas` VALUES ('1111', '139', '涞水县', '3');
INSERT INTO `blue_areas` VALUES ('1112', '139', '阜平县', '3');
INSERT INTO `blue_areas` VALUES ('1113', '139', '徐水县', '3');
INSERT INTO `blue_areas` VALUES ('1114', '139', '定兴县', '3');
INSERT INTO `blue_areas` VALUES ('1115', '139', '唐县', '3');
INSERT INTO `blue_areas` VALUES ('1116', '139', '高阳县', '3');
INSERT INTO `blue_areas` VALUES ('1117', '139', '容城县', '3');
INSERT INTO `blue_areas` VALUES ('1118', '139', '涞源县', '3');
INSERT INTO `blue_areas` VALUES ('1119', '139', '望都县', '3');
INSERT INTO `blue_areas` VALUES ('1120', '139', '安新县', '3');
INSERT INTO `blue_areas` VALUES ('1121', '139', '易县', '3');
INSERT INTO `blue_areas` VALUES ('1122', '139', '曲阳县', '3');
INSERT INTO `blue_areas` VALUES ('1123', '139', '蠡县', '3');
INSERT INTO `blue_areas` VALUES ('1124', '139', '顺平县', '3');
INSERT INTO `blue_areas` VALUES ('1125', '139', '博野县', '3');
INSERT INTO `blue_areas` VALUES ('1126', '139', '雄县', '3');
INSERT INTO `blue_areas` VALUES ('1127', '140', '运河区', '3');
INSERT INTO `blue_areas` VALUES ('1128', '140', '新华区', '3');
INSERT INTO `blue_areas` VALUES ('1129', '140', '泊头市', '3');
INSERT INTO `blue_areas` VALUES ('1130', '140', '任丘市', '3');
INSERT INTO `blue_areas` VALUES ('1131', '140', '黄骅市', '3');
INSERT INTO `blue_areas` VALUES ('1132', '140', '河间市', '3');
INSERT INTO `blue_areas` VALUES ('1133', '140', '沧县', '3');
INSERT INTO `blue_areas` VALUES ('1134', '140', '青县', '3');
INSERT INTO `blue_areas` VALUES ('1135', '140', '东光县', '3');
INSERT INTO `blue_areas` VALUES ('1136', '140', '海兴县', '3');
INSERT INTO `blue_areas` VALUES ('1137', '140', '盐山县', '3');
INSERT INTO `blue_areas` VALUES ('1138', '140', '肃宁县', '3');
INSERT INTO `blue_areas` VALUES ('1139', '140', '南皮县', '3');
INSERT INTO `blue_areas` VALUES ('1140', '140', '吴桥县', '3');
INSERT INTO `blue_areas` VALUES ('1141', '140', '献县', '3');
INSERT INTO `blue_areas` VALUES ('1142', '140', '孟村', '3');
INSERT INTO `blue_areas` VALUES ('1143', '141', '双桥区', '3');
INSERT INTO `blue_areas` VALUES ('1144', '141', '双滦区', '3');
INSERT INTO `blue_areas` VALUES ('1145', '141', '鹰手营子矿区', '3');
INSERT INTO `blue_areas` VALUES ('1146', '141', '承德县', '3');
INSERT INTO `blue_areas` VALUES ('1147', '141', '兴隆县', '3');
INSERT INTO `blue_areas` VALUES ('1148', '141', '平泉县', '3');
INSERT INTO `blue_areas` VALUES ('1149', '141', '滦平县', '3');
INSERT INTO `blue_areas` VALUES ('1150', '141', '隆化县', '3');
INSERT INTO `blue_areas` VALUES ('1151', '141', '丰宁', '3');
INSERT INTO `blue_areas` VALUES ('1152', '141', '宽城', '3');
INSERT INTO `blue_areas` VALUES ('1153', '141', '围场', '3');
INSERT INTO `blue_areas` VALUES ('1154', '142', '从台区', '3');
INSERT INTO `blue_areas` VALUES ('1155', '142', '复兴区', '3');
INSERT INTO `blue_areas` VALUES ('1156', '142', '邯山区', '3');
INSERT INTO `blue_areas` VALUES ('1157', '142', '峰峰矿区', '3');
INSERT INTO `blue_areas` VALUES ('1158', '142', '武安市', '3');
INSERT INTO `blue_areas` VALUES ('1159', '142', '邯郸县', '3');
INSERT INTO `blue_areas` VALUES ('1160', '142', '临漳县', '3');
INSERT INTO `blue_areas` VALUES ('1161', '142', '成安县', '3');
INSERT INTO `blue_areas` VALUES ('1162', '142', '大名县', '3');
INSERT INTO `blue_areas` VALUES ('1163', '142', '涉县', '3');
INSERT INTO `blue_areas` VALUES ('1164', '142', '磁县', '3');
INSERT INTO `blue_areas` VALUES ('1165', '142', '肥乡县', '3');
INSERT INTO `blue_areas` VALUES ('1166', '142', '永年县', '3');
INSERT INTO `blue_areas` VALUES ('1167', '142', '邱县', '3');
INSERT INTO `blue_areas` VALUES ('1168', '142', '鸡泽县', '3');
INSERT INTO `blue_areas` VALUES ('1169', '142', '广平县', '3');
INSERT INTO `blue_areas` VALUES ('1170', '142', '馆陶县', '3');
INSERT INTO `blue_areas` VALUES ('1171', '142', '魏县', '3');
INSERT INTO `blue_areas` VALUES ('1172', '142', '曲周县', '3');
INSERT INTO `blue_areas` VALUES ('1173', '143', '桃城区', '3');
INSERT INTO `blue_areas` VALUES ('1174', '143', '冀州市', '3');
INSERT INTO `blue_areas` VALUES ('1175', '143', '深州市', '3');
INSERT INTO `blue_areas` VALUES ('1176', '143', '枣强县', '3');
INSERT INTO `blue_areas` VALUES ('1177', '143', '武邑县', '3');
INSERT INTO `blue_areas` VALUES ('1178', '143', '武强县', '3');
INSERT INTO `blue_areas` VALUES ('1179', '143', '饶阳县', '3');
INSERT INTO `blue_areas` VALUES ('1180', '143', '安平县', '3');
INSERT INTO `blue_areas` VALUES ('1181', '143', '故城县', '3');
INSERT INTO `blue_areas` VALUES ('1182', '143', '景县', '3');
INSERT INTO `blue_areas` VALUES ('1183', '143', '阜城县', '3');
INSERT INTO `blue_areas` VALUES ('1184', '144', '安次区', '3');
INSERT INTO `blue_areas` VALUES ('1185', '144', '广阳区', '3');
INSERT INTO `blue_areas` VALUES ('1186', '144', '霸州市', '3');
INSERT INTO `blue_areas` VALUES ('1187', '144', '三河市', '3');
INSERT INTO `blue_areas` VALUES ('1188', '144', '固安县', '3');
INSERT INTO `blue_areas` VALUES ('1189', '144', '永清县', '3');
INSERT INTO `blue_areas` VALUES ('1190', '144', '香河县', '3');
INSERT INTO `blue_areas` VALUES ('1191', '144', '大城县', '3');
INSERT INTO `blue_areas` VALUES ('1192', '144', '文安县', '3');
INSERT INTO `blue_areas` VALUES ('1193', '144', '大厂', '3');
INSERT INTO `blue_areas` VALUES ('1194', '145', '海港区', '3');
INSERT INTO `blue_areas` VALUES ('1195', '145', '山海关区', '3');
INSERT INTO `blue_areas` VALUES ('1196', '145', '北戴河区', '3');
INSERT INTO `blue_areas` VALUES ('1197', '145', '昌黎县', '3');
INSERT INTO `blue_areas` VALUES ('1198', '145', '抚宁县', '3');
INSERT INTO `blue_areas` VALUES ('1199', '145', '卢龙县', '3');
INSERT INTO `blue_areas` VALUES ('1200', '145', '青龙', '3');
INSERT INTO `blue_areas` VALUES ('1201', '146', '路北区', '3');
INSERT INTO `blue_areas` VALUES ('1202', '146', '路南区', '3');
INSERT INTO `blue_areas` VALUES ('1203', '146', '古冶区', '3');
INSERT INTO `blue_areas` VALUES ('1204', '146', '开平区', '3');
INSERT INTO `blue_areas` VALUES ('1205', '146', '丰南区', '3');
INSERT INTO `blue_areas` VALUES ('1206', '146', '丰润区', '3');
INSERT INTO `blue_areas` VALUES ('1207', '146', '遵化市', '3');
INSERT INTO `blue_areas` VALUES ('1208', '146', '迁安市', '3');
INSERT INTO `blue_areas` VALUES ('1209', '146', '滦县', '3');
INSERT INTO `blue_areas` VALUES ('1210', '146', '滦南县', '3');
INSERT INTO `blue_areas` VALUES ('1211', '146', '乐亭县', '3');
INSERT INTO `blue_areas` VALUES ('1212', '146', '迁西县', '3');
INSERT INTO `blue_areas` VALUES ('1213', '146', '玉田县', '3');
INSERT INTO `blue_areas` VALUES ('1214', '146', '唐海县', '3');
INSERT INTO `blue_areas` VALUES ('1215', '147', '桥东区', '3');
INSERT INTO `blue_areas` VALUES ('1216', '147', '桥西区', '3');
INSERT INTO `blue_areas` VALUES ('1217', '147', '南宫市', '3');
INSERT INTO `blue_areas` VALUES ('1218', '147', '沙河市', '3');
INSERT INTO `blue_areas` VALUES ('1219', '147', '邢台县', '3');
INSERT INTO `blue_areas` VALUES ('1220', '147', '临城县', '3');
INSERT INTO `blue_areas` VALUES ('1221', '147', '内丘县', '3');
INSERT INTO `blue_areas` VALUES ('1222', '147', '柏乡县', '3');
INSERT INTO `blue_areas` VALUES ('1223', '147', '隆尧县', '3');
INSERT INTO `blue_areas` VALUES ('1224', '147', '任县', '3');
INSERT INTO `blue_areas` VALUES ('1225', '147', '南和县', '3');
INSERT INTO `blue_areas` VALUES ('1226', '147', '宁晋县', '3');
INSERT INTO `blue_areas` VALUES ('1227', '147', '巨鹿县', '3');
INSERT INTO `blue_areas` VALUES ('1228', '147', '新河县', '3');
INSERT INTO `blue_areas` VALUES ('1229', '147', '广宗县', '3');
INSERT INTO `blue_areas` VALUES ('1230', '147', '平乡县', '3');
INSERT INTO `blue_areas` VALUES ('1231', '147', '威县', '3');
INSERT INTO `blue_areas` VALUES ('1232', '147', '清河县', '3');
INSERT INTO `blue_areas` VALUES ('1233', '147', '临西县', '3');
INSERT INTO `blue_areas` VALUES ('1234', '148', '桥西区', '3');
INSERT INTO `blue_areas` VALUES ('1235', '148', '桥东区', '3');
INSERT INTO `blue_areas` VALUES ('1236', '148', '宣化区', '3');
INSERT INTO `blue_areas` VALUES ('1237', '148', '下花园区', '3');
INSERT INTO `blue_areas` VALUES ('1238', '148', '宣化县', '3');
INSERT INTO `blue_areas` VALUES ('1239', '148', '张北县', '3');
INSERT INTO `blue_areas` VALUES ('1240', '148', '康保县', '3');
INSERT INTO `blue_areas` VALUES ('1241', '148', '沽源县', '3');
INSERT INTO `blue_areas` VALUES ('1242', '148', '尚义县', '3');
INSERT INTO `blue_areas` VALUES ('1243', '148', '蔚县', '3');
INSERT INTO `blue_areas` VALUES ('1244', '148', '阳原县', '3');
INSERT INTO `blue_areas` VALUES ('1245', '148', '怀安县', '3');
INSERT INTO `blue_areas` VALUES ('1246', '148', '万全县', '3');
INSERT INTO `blue_areas` VALUES ('1247', '148', '怀来县', '3');
INSERT INTO `blue_areas` VALUES ('1248', '148', '涿鹿县', '3');
INSERT INTO `blue_areas` VALUES ('1249', '148', '赤城县', '3');
INSERT INTO `blue_areas` VALUES ('1250', '148', '崇礼县', '3');
INSERT INTO `blue_areas` VALUES ('1251', '149', '金水区', '3');
INSERT INTO `blue_areas` VALUES ('1252', '149', '邙山区', '3');
INSERT INTO `blue_areas` VALUES ('1253', '149', '二七区', '3');
INSERT INTO `blue_areas` VALUES ('1254', '149', '管城区', '3');
INSERT INTO `blue_areas` VALUES ('1255', '149', '中原区', '3');
INSERT INTO `blue_areas` VALUES ('1256', '149', '上街区', '3');
INSERT INTO `blue_areas` VALUES ('1257', '149', '惠济区', '3');
INSERT INTO `blue_areas` VALUES ('1258', '149', '郑东新区', '3');
INSERT INTO `blue_areas` VALUES ('1259', '149', '经济技术开发区', '3');
INSERT INTO `blue_areas` VALUES ('1260', '149', '高新开发区', '3');
INSERT INTO `blue_areas` VALUES ('1261', '149', '出口加工区', '3');
INSERT INTO `blue_areas` VALUES ('1262', '149', '巩义市', '3');
INSERT INTO `blue_areas` VALUES ('1263', '149', '荥阳市', '3');
INSERT INTO `blue_areas` VALUES ('1264', '149', '新密市', '3');
INSERT INTO `blue_areas` VALUES ('1265', '149', '新郑市', '3');
INSERT INTO `blue_areas` VALUES ('1266', '149', '登封市', '3');
INSERT INTO `blue_areas` VALUES ('1267', '149', '中牟县', '3');
INSERT INTO `blue_areas` VALUES ('1268', '150', '西工区', '3');
INSERT INTO `blue_areas` VALUES ('1269', '150', '老城区', '3');
INSERT INTO `blue_areas` VALUES ('1270', '150', '涧西区', '3');
INSERT INTO `blue_areas` VALUES ('1271', '150', '瀍河回族区', '3');
INSERT INTO `blue_areas` VALUES ('1272', '150', '洛龙区', '3');
INSERT INTO `blue_areas` VALUES ('1273', '150', '吉利区', '3');
INSERT INTO `blue_areas` VALUES ('1274', '150', '偃师市', '3');
INSERT INTO `blue_areas` VALUES ('1275', '150', '孟津县', '3');
INSERT INTO `blue_areas` VALUES ('1276', '150', '新安县', '3');
INSERT INTO `blue_areas` VALUES ('1277', '150', '栾川县', '3');
INSERT INTO `blue_areas` VALUES ('1278', '150', '嵩县', '3');
INSERT INTO `blue_areas` VALUES ('1279', '150', '汝阳县', '3');
INSERT INTO `blue_areas` VALUES ('1280', '150', '宜阳县', '3');
INSERT INTO `blue_areas` VALUES ('1281', '150', '洛宁县', '3');
INSERT INTO `blue_areas` VALUES ('1282', '150', '伊川县', '3');
INSERT INTO `blue_areas` VALUES ('1283', '151', '鼓楼区', '3');
INSERT INTO `blue_areas` VALUES ('1284', '151', '龙亭区', '3');
INSERT INTO `blue_areas` VALUES ('1285', '151', '顺河回族区', '3');
INSERT INTO `blue_areas` VALUES ('1286', '151', '金明区', '3');
INSERT INTO `blue_areas` VALUES ('1287', '151', '禹王台区', '3');
INSERT INTO `blue_areas` VALUES ('1288', '151', '杞县', '3');
INSERT INTO `blue_areas` VALUES ('1289', '151', '通许县', '3');
INSERT INTO `blue_areas` VALUES ('1290', '151', '尉氏县', '3');
INSERT INTO `blue_areas` VALUES ('1291', '151', '开封县', '3');
INSERT INTO `blue_areas` VALUES ('1292', '151', '兰考县', '3');
INSERT INTO `blue_areas` VALUES ('1293', '152', '北关区', '3');
INSERT INTO `blue_areas` VALUES ('1294', '152', '文峰区', '3');
INSERT INTO `blue_areas` VALUES ('1295', '152', '殷都区', '3');
INSERT INTO `blue_areas` VALUES ('1296', '152', '龙安区', '3');
INSERT INTO `blue_areas` VALUES ('1297', '152', '林州市', '3');
INSERT INTO `blue_areas` VALUES ('1298', '152', '安阳县', '3');
INSERT INTO `blue_areas` VALUES ('1299', '152', '汤阴县', '3');
INSERT INTO `blue_areas` VALUES ('1300', '152', '滑县', '3');
INSERT INTO `blue_areas` VALUES ('1301', '152', '内黄县', '3');
INSERT INTO `blue_areas` VALUES ('1302', '153', '淇滨区', '3');
INSERT INTO `blue_areas` VALUES ('1303', '153', '山城区', '3');
INSERT INTO `blue_areas` VALUES ('1304', '153', '鹤山区', '3');
INSERT INTO `blue_areas` VALUES ('1305', '153', '浚县', '3');
INSERT INTO `blue_areas` VALUES ('1306', '153', '淇县', '3');
INSERT INTO `blue_areas` VALUES ('1307', '154', '济源市', '3');
INSERT INTO `blue_areas` VALUES ('1308', '155', '解放区', '3');
INSERT INTO `blue_areas` VALUES ('1309', '155', '中站区', '3');
INSERT INTO `blue_areas` VALUES ('1310', '155', '马村区', '3');
INSERT INTO `blue_areas` VALUES ('1311', '155', '山阳区', '3');
INSERT INTO `blue_areas` VALUES ('1312', '155', '沁阳市', '3');
INSERT INTO `blue_areas` VALUES ('1313', '155', '孟州市', '3');
INSERT INTO `blue_areas` VALUES ('1314', '155', '修武县', '3');
INSERT INTO `blue_areas` VALUES ('1315', '155', '博爱县', '3');
INSERT INTO `blue_areas` VALUES ('1316', '155', '武陟县', '3');
INSERT INTO `blue_areas` VALUES ('1317', '155', '温县', '3');
INSERT INTO `blue_areas` VALUES ('1318', '156', '卧龙区', '3');
INSERT INTO `blue_areas` VALUES ('1319', '156', '宛城区', '3');
INSERT INTO `blue_areas` VALUES ('1320', '156', '邓州市', '3');
INSERT INTO `blue_areas` VALUES ('1321', '156', '南召县', '3');
INSERT INTO `blue_areas` VALUES ('1322', '156', '方城县', '3');
INSERT INTO `blue_areas` VALUES ('1323', '156', '西峡县', '3');
INSERT INTO `blue_areas` VALUES ('1324', '156', '镇平县', '3');
INSERT INTO `blue_areas` VALUES ('1325', '156', '内乡县', '3');
INSERT INTO `blue_areas` VALUES ('1326', '156', '淅川县', '3');
INSERT INTO `blue_areas` VALUES ('1327', '156', '社旗县', '3');
INSERT INTO `blue_areas` VALUES ('1328', '156', '唐河县', '3');
INSERT INTO `blue_areas` VALUES ('1329', '156', '新野县', '3');
INSERT INTO `blue_areas` VALUES ('1330', '156', '桐柏县', '3');
INSERT INTO `blue_areas` VALUES ('1331', '157', '新华区', '3');
INSERT INTO `blue_areas` VALUES ('1332', '157', '卫东区', '3');
INSERT INTO `blue_areas` VALUES ('1333', '157', '湛河区', '3');
INSERT INTO `blue_areas` VALUES ('1334', '157', '石龙区', '3');
INSERT INTO `blue_areas` VALUES ('1335', '157', '舞钢市', '3');
INSERT INTO `blue_areas` VALUES ('1336', '157', '汝州市', '3');
INSERT INTO `blue_areas` VALUES ('1337', '157', '宝丰县', '3');
INSERT INTO `blue_areas` VALUES ('1338', '157', '叶县', '3');
INSERT INTO `blue_areas` VALUES ('1339', '157', '鲁山县', '3');
INSERT INTO `blue_areas` VALUES ('1340', '157', '郏县', '3');
INSERT INTO `blue_areas` VALUES ('1341', '158', '湖滨区', '3');
INSERT INTO `blue_areas` VALUES ('1342', '158', '义马市', '3');
INSERT INTO `blue_areas` VALUES ('1343', '158', '灵宝市', '3');
INSERT INTO `blue_areas` VALUES ('1344', '158', '渑池县', '3');
INSERT INTO `blue_areas` VALUES ('1345', '158', '陕县', '3');
INSERT INTO `blue_areas` VALUES ('1346', '158', '卢氏县', '3');
INSERT INTO `blue_areas` VALUES ('1347', '159', '梁园区', '3');
INSERT INTO `blue_areas` VALUES ('1348', '159', '睢阳区', '3');
INSERT INTO `blue_areas` VALUES ('1349', '159', '永城市', '3');
INSERT INTO `blue_areas` VALUES ('1350', '159', '民权县', '3');
INSERT INTO `blue_areas` VALUES ('1351', '159', '睢县', '3');
INSERT INTO `blue_areas` VALUES ('1352', '159', '宁陵县', '3');
INSERT INTO `blue_areas` VALUES ('1353', '159', '虞城县', '3');
INSERT INTO `blue_areas` VALUES ('1354', '159', '柘城县', '3');
INSERT INTO `blue_areas` VALUES ('1355', '159', '夏邑县', '3');
INSERT INTO `blue_areas` VALUES ('1356', '160', '卫滨区', '3');
INSERT INTO `blue_areas` VALUES ('1357', '160', '红旗区', '3');
INSERT INTO `blue_areas` VALUES ('1358', '160', '凤泉区', '3');
INSERT INTO `blue_areas` VALUES ('1359', '160', '牧野区', '3');
INSERT INTO `blue_areas` VALUES ('1360', '160', '卫辉市', '3');
INSERT INTO `blue_areas` VALUES ('1361', '160', '辉县市', '3');
INSERT INTO `blue_areas` VALUES ('1362', '160', '新乡县', '3');
INSERT INTO `blue_areas` VALUES ('1363', '160', '获嘉县', '3');
INSERT INTO `blue_areas` VALUES ('1364', '160', '原阳县', '3');
INSERT INTO `blue_areas` VALUES ('1365', '160', '延津县', '3');
INSERT INTO `blue_areas` VALUES ('1366', '160', '封丘县', '3');
INSERT INTO `blue_areas` VALUES ('1367', '160', '长垣县', '3');
INSERT INTO `blue_areas` VALUES ('1368', '161', '浉河区', '3');
INSERT INTO `blue_areas` VALUES ('1369', '161', '平桥区', '3');
INSERT INTO `blue_areas` VALUES ('1370', '161', '罗山县', '3');
INSERT INTO `blue_areas` VALUES ('1371', '161', '光山县', '3');
INSERT INTO `blue_areas` VALUES ('1372', '161', '新县', '3');
INSERT INTO `blue_areas` VALUES ('1373', '161', '商城县', '3');
INSERT INTO `blue_areas` VALUES ('1374', '161', '固始县', '3');
INSERT INTO `blue_areas` VALUES ('1375', '161', '潢川县', '3');
INSERT INTO `blue_areas` VALUES ('1376', '161', '淮滨县', '3');
INSERT INTO `blue_areas` VALUES ('1377', '161', '息县', '3');
INSERT INTO `blue_areas` VALUES ('1378', '162', '魏都区', '3');
INSERT INTO `blue_areas` VALUES ('1379', '162', '禹州市', '3');
INSERT INTO `blue_areas` VALUES ('1380', '162', '长葛市', '3');
INSERT INTO `blue_areas` VALUES ('1381', '162', '许昌县', '3');
INSERT INTO `blue_areas` VALUES ('1382', '162', '鄢陵县', '3');
INSERT INTO `blue_areas` VALUES ('1383', '162', '襄城县', '3');
INSERT INTO `blue_areas` VALUES ('1384', '163', '川汇区', '3');
INSERT INTO `blue_areas` VALUES ('1385', '163', '项城市', '3');
INSERT INTO `blue_areas` VALUES ('1386', '163', '扶沟县', '3');
INSERT INTO `blue_areas` VALUES ('1387', '163', '西华县', '3');
INSERT INTO `blue_areas` VALUES ('1388', '163', '商水县', '3');
INSERT INTO `blue_areas` VALUES ('1389', '163', '沈丘县', '3');
INSERT INTO `blue_areas` VALUES ('1390', '163', '郸城县', '3');
INSERT INTO `blue_areas` VALUES ('1391', '163', '淮阳县', '3');
INSERT INTO `blue_areas` VALUES ('1392', '163', '太康县', '3');
INSERT INTO `blue_areas` VALUES ('1393', '163', '鹿邑县', '3');
INSERT INTO `blue_areas` VALUES ('1394', '164', '驿城区', '3');
INSERT INTO `blue_areas` VALUES ('1395', '164', '西平县', '3');
INSERT INTO `blue_areas` VALUES ('1396', '164', '上蔡县', '3');
INSERT INTO `blue_areas` VALUES ('1397', '164', '平舆县', '3');
INSERT INTO `blue_areas` VALUES ('1398', '164', '正阳县', '3');
INSERT INTO `blue_areas` VALUES ('1399', '164', '确山县', '3');
INSERT INTO `blue_areas` VALUES ('1400', '164', '泌阳县', '3');
INSERT INTO `blue_areas` VALUES ('1401', '164', '汝南县', '3');
INSERT INTO `blue_areas` VALUES ('1402', '164', '遂平县', '3');
INSERT INTO `blue_areas` VALUES ('1403', '164', '新蔡县', '3');
INSERT INTO `blue_areas` VALUES ('1404', '165', '郾城区', '3');
INSERT INTO `blue_areas` VALUES ('1405', '165', '源汇区', '3');
INSERT INTO `blue_areas` VALUES ('1406', '165', '召陵区', '3');
INSERT INTO `blue_areas` VALUES ('1407', '165', '舞阳县', '3');
INSERT INTO `blue_areas` VALUES ('1408', '165', '临颍县', '3');
INSERT INTO `blue_areas` VALUES ('1409', '166', '华龙区', '3');
INSERT INTO `blue_areas` VALUES ('1410', '166', '清丰县', '3');
INSERT INTO `blue_areas` VALUES ('1411', '166', '南乐县', '3');
INSERT INTO `blue_areas` VALUES ('1412', '166', '范县', '3');
INSERT INTO `blue_areas` VALUES ('1413', '166', '台前县', '3');
INSERT INTO `blue_areas` VALUES ('1414', '166', '濮阳县', '3');
INSERT INTO `blue_areas` VALUES ('1415', '167', '道里区', '3');
INSERT INTO `blue_areas` VALUES ('1416', '167', '南岗区', '3');
INSERT INTO `blue_areas` VALUES ('1417', '167', '动力区', '3');
INSERT INTO `blue_areas` VALUES ('1418', '167', '平房区', '3');
INSERT INTO `blue_areas` VALUES ('1419', '167', '香坊区', '3');
INSERT INTO `blue_areas` VALUES ('1420', '167', '太平区', '3');
INSERT INTO `blue_areas` VALUES ('1421', '167', '道外区', '3');
INSERT INTO `blue_areas` VALUES ('1422', '167', '阿城区', '3');
INSERT INTO `blue_areas` VALUES ('1423', '167', '呼兰区', '3');
INSERT INTO `blue_areas` VALUES ('1424', '167', '松北区', '3');
INSERT INTO `blue_areas` VALUES ('1425', '167', '尚志市', '3');
INSERT INTO `blue_areas` VALUES ('1426', '167', '双城市', '3');
INSERT INTO `blue_areas` VALUES ('1427', '167', '五常市', '3');
INSERT INTO `blue_areas` VALUES ('1428', '167', '方正县', '3');
INSERT INTO `blue_areas` VALUES ('1429', '167', '宾县', '3');
INSERT INTO `blue_areas` VALUES ('1430', '167', '依兰县', '3');
INSERT INTO `blue_areas` VALUES ('1431', '167', '巴彦县', '3');
INSERT INTO `blue_areas` VALUES ('1432', '167', '通河县', '3');
INSERT INTO `blue_areas` VALUES ('1433', '167', '木兰县', '3');
INSERT INTO `blue_areas` VALUES ('1434', '167', '延寿县', '3');
INSERT INTO `blue_areas` VALUES ('1435', '168', '萨尔图区', '3');
INSERT INTO `blue_areas` VALUES ('1436', '168', '红岗区', '3');
INSERT INTO `blue_areas` VALUES ('1437', '168', '龙凤区', '3');
INSERT INTO `blue_areas` VALUES ('1438', '168', '让胡路区', '3');
INSERT INTO `blue_areas` VALUES ('1439', '168', '大同区', '3');
INSERT INTO `blue_areas` VALUES ('1440', '168', '肇州县', '3');
INSERT INTO `blue_areas` VALUES ('1441', '168', '肇源县', '3');
INSERT INTO `blue_areas` VALUES ('1442', '168', '林甸县', '3');
INSERT INTO `blue_areas` VALUES ('1443', '168', '杜尔伯特', '3');
INSERT INTO `blue_areas` VALUES ('1444', '169', '呼玛县', '3');
INSERT INTO `blue_areas` VALUES ('1445', '169', '漠河县', '3');
INSERT INTO `blue_areas` VALUES ('1446', '169', '塔河县', '3');
INSERT INTO `blue_areas` VALUES ('1447', '170', '兴山区', '3');
INSERT INTO `blue_areas` VALUES ('1448', '170', '工农区', '3');
INSERT INTO `blue_areas` VALUES ('1449', '170', '南山区', '3');
INSERT INTO `blue_areas` VALUES ('1450', '170', '兴安区', '3');
INSERT INTO `blue_areas` VALUES ('1451', '170', '向阳区', '3');
INSERT INTO `blue_areas` VALUES ('1452', '170', '东山区', '3');
INSERT INTO `blue_areas` VALUES ('1453', '170', '萝北县', '3');
INSERT INTO `blue_areas` VALUES ('1454', '170', '绥滨县', '3');
INSERT INTO `blue_areas` VALUES ('1455', '171', '爱辉区', '3');
INSERT INTO `blue_areas` VALUES ('1456', '171', '五大连池市', '3');
INSERT INTO `blue_areas` VALUES ('1457', '171', '北安市', '3');
INSERT INTO `blue_areas` VALUES ('1458', '171', '嫩江县', '3');
INSERT INTO `blue_areas` VALUES ('1459', '171', '逊克县', '3');
INSERT INTO `blue_areas` VALUES ('1460', '171', '孙吴县', '3');
INSERT INTO `blue_areas` VALUES ('1461', '172', '鸡冠区', '3');
INSERT INTO `blue_areas` VALUES ('1462', '172', '恒山区', '3');
INSERT INTO `blue_areas` VALUES ('1463', '172', '城子河区', '3');
INSERT INTO `blue_areas` VALUES ('1464', '172', '滴道区', '3');
INSERT INTO `blue_areas` VALUES ('1465', '172', '梨树区', '3');
INSERT INTO `blue_areas` VALUES ('1466', '172', '虎林市', '3');
INSERT INTO `blue_areas` VALUES ('1467', '172', '密山市', '3');
INSERT INTO `blue_areas` VALUES ('1468', '172', '鸡东县', '3');
INSERT INTO `blue_areas` VALUES ('1469', '173', '前进区', '3');
INSERT INTO `blue_areas` VALUES ('1470', '173', '郊区', '3');
INSERT INTO `blue_areas` VALUES ('1471', '173', '向阳区', '3');
INSERT INTO `blue_areas` VALUES ('1472', '173', '东风区', '3');
INSERT INTO `blue_areas` VALUES ('1473', '173', '同江市', '3');
INSERT INTO `blue_areas` VALUES ('1474', '173', '富锦市', '3');
INSERT INTO `blue_areas` VALUES ('1475', '173', '桦南县', '3');
INSERT INTO `blue_areas` VALUES ('1476', '173', '桦川县', '3');
INSERT INTO `blue_areas` VALUES ('1477', '173', '汤原县', '3');
INSERT INTO `blue_areas` VALUES ('1478', '173', '抚远县', '3');
INSERT INTO `blue_areas` VALUES ('1479', '174', '爱民区', '3');
INSERT INTO `blue_areas` VALUES ('1480', '174', '东安区', '3');
INSERT INTO `blue_areas` VALUES ('1481', '174', '阳明区', '3');
INSERT INTO `blue_areas` VALUES ('1482', '174', '西安区', '3');
INSERT INTO `blue_areas` VALUES ('1483', '174', '绥芬河市', '3');
INSERT INTO `blue_areas` VALUES ('1484', '174', '海林市', '3');
INSERT INTO `blue_areas` VALUES ('1485', '174', '宁安市', '3');
INSERT INTO `blue_areas` VALUES ('1486', '174', '穆棱市', '3');
INSERT INTO `blue_areas` VALUES ('1487', '174', '东宁县', '3');
INSERT INTO `blue_areas` VALUES ('1488', '174', '林口县', '3');
INSERT INTO `blue_areas` VALUES ('1489', '175', '桃山区', '3');
INSERT INTO `blue_areas` VALUES ('1490', '175', '新兴区', '3');
INSERT INTO `blue_areas` VALUES ('1491', '175', '茄子河区', '3');
INSERT INTO `blue_areas` VALUES ('1492', '175', '勃利县', '3');
INSERT INTO `blue_areas` VALUES ('1493', '176', '龙沙区', '3');
INSERT INTO `blue_areas` VALUES ('1494', '176', '昂昂溪区', '3');
INSERT INTO `blue_areas` VALUES ('1495', '176', '铁峰区', '3');
INSERT INTO `blue_areas` VALUES ('1496', '176', '建华区', '3');
INSERT INTO `blue_areas` VALUES ('1497', '176', '富拉尔基区', '3');
INSERT INTO `blue_areas` VALUES ('1498', '176', '碾子山区', '3');
INSERT INTO `blue_areas` VALUES ('1499', '176', '梅里斯达斡尔区', '3');
INSERT INTO `blue_areas` VALUES ('1500', '176', '讷河市', '3');
INSERT INTO `blue_areas` VALUES ('1501', '176', '龙江县', '3');
INSERT INTO `blue_areas` VALUES ('1502', '176', '依安县', '3');
INSERT INTO `blue_areas` VALUES ('1503', '176', '泰来县', '3');
INSERT INTO `blue_areas` VALUES ('1504', '176', '甘南县', '3');
INSERT INTO `blue_areas` VALUES ('1505', '176', '富裕县', '3');
INSERT INTO `blue_areas` VALUES ('1506', '176', '克山县', '3');
INSERT INTO `blue_areas` VALUES ('1507', '176', '克东县', '3');
INSERT INTO `blue_areas` VALUES ('1508', '176', '拜泉县', '3');
INSERT INTO `blue_areas` VALUES ('1509', '177', '尖山区', '3');
INSERT INTO `blue_areas` VALUES ('1510', '177', '岭东区', '3');
INSERT INTO `blue_areas` VALUES ('1511', '177', '四方台区', '3');
INSERT INTO `blue_areas` VALUES ('1512', '177', '宝山区', '3');
INSERT INTO `blue_areas` VALUES ('1513', '177', '集贤县', '3');
INSERT INTO `blue_areas` VALUES ('1514', '177', '友谊县', '3');
INSERT INTO `blue_areas` VALUES ('1515', '177', '宝清县', '3');
INSERT INTO `blue_areas` VALUES ('1516', '177', '饶河县', '3');
INSERT INTO `blue_areas` VALUES ('1517', '178', '北林区', '3');
INSERT INTO `blue_areas` VALUES ('1518', '178', '安达市', '3');
INSERT INTO `blue_areas` VALUES ('1519', '178', '肇东市', '3');
INSERT INTO `blue_areas` VALUES ('1520', '178', '海伦市', '3');
INSERT INTO `blue_areas` VALUES ('1521', '178', '望奎县', '3');
INSERT INTO `blue_areas` VALUES ('1522', '178', '兰西县', '3');
INSERT INTO `blue_areas` VALUES ('1523', '178', '青冈县', '3');
INSERT INTO `blue_areas` VALUES ('1524', '178', '庆安县', '3');
INSERT INTO `blue_areas` VALUES ('1525', '178', '明水县', '3');
INSERT INTO `blue_areas` VALUES ('1526', '178', '绥棱县', '3');
INSERT INTO `blue_areas` VALUES ('1527', '179', '伊春区', '3');
INSERT INTO `blue_areas` VALUES ('1528', '179', '带岭区', '3');
INSERT INTO `blue_areas` VALUES ('1529', '179', '南岔区', '3');
INSERT INTO `blue_areas` VALUES ('1530', '179', '金山屯区', '3');
INSERT INTO `blue_areas` VALUES ('1531', '179', '西林区', '3');
INSERT INTO `blue_areas` VALUES ('1532', '179', '美溪区', '3');
INSERT INTO `blue_areas` VALUES ('1533', '179', '乌马河区', '3');
INSERT INTO `blue_areas` VALUES ('1534', '179', '翠峦区', '3');
INSERT INTO `blue_areas` VALUES ('1535', '179', '友好区', '3');
INSERT INTO `blue_areas` VALUES ('1536', '179', '上甘岭区', '3');
INSERT INTO `blue_areas` VALUES ('1537', '179', '五营区', '3');
INSERT INTO `blue_areas` VALUES ('1538', '179', '红星区', '3');
INSERT INTO `blue_areas` VALUES ('1539', '179', '新青区', '3');
INSERT INTO `blue_areas` VALUES ('1540', '179', '汤旺河区', '3');
INSERT INTO `blue_areas` VALUES ('1541', '179', '乌伊岭区', '3');
INSERT INTO `blue_areas` VALUES ('1542', '179', '铁力市', '3');
INSERT INTO `blue_areas` VALUES ('1543', '179', '嘉荫县', '3');
INSERT INTO `blue_areas` VALUES ('1544', '180', '江岸区', '3');
INSERT INTO `blue_areas` VALUES ('1545', '180', '武昌区', '3');
INSERT INTO `blue_areas` VALUES ('1546', '180', '江汉区', '3');
INSERT INTO `blue_areas` VALUES ('1547', '180', '硚口区', '3');
INSERT INTO `blue_areas` VALUES ('1548', '180', '汉阳区', '3');
INSERT INTO `blue_areas` VALUES ('1549', '180', '青山区', '3');
INSERT INTO `blue_areas` VALUES ('1550', '180', '洪山区', '3');
INSERT INTO `blue_areas` VALUES ('1551', '180', '东西湖区', '3');
INSERT INTO `blue_areas` VALUES ('1552', '180', '汉南区', '3');
INSERT INTO `blue_areas` VALUES ('1553', '180', '蔡甸区', '3');
INSERT INTO `blue_areas` VALUES ('1554', '180', '江夏区', '3');
INSERT INTO `blue_areas` VALUES ('1555', '180', '黄陂区', '3');
INSERT INTO `blue_areas` VALUES ('1556', '180', '新洲区', '3');
INSERT INTO `blue_areas` VALUES ('1557', '180', '经济开发区', '3');
INSERT INTO `blue_areas` VALUES ('1558', '181', '仙桃市', '3');
INSERT INTO `blue_areas` VALUES ('1559', '182', '鄂城区', '3');
INSERT INTO `blue_areas` VALUES ('1560', '182', '华容区', '3');
INSERT INTO `blue_areas` VALUES ('1561', '182', '梁子湖区', '3');
INSERT INTO `blue_areas` VALUES ('1562', '183', '黄州区', '3');
INSERT INTO `blue_areas` VALUES ('1563', '183', '麻城市', '3');
INSERT INTO `blue_areas` VALUES ('1564', '183', '武穴市', '3');
INSERT INTO `blue_areas` VALUES ('1565', '183', '团风县', '3');
INSERT INTO `blue_areas` VALUES ('1566', '183', '红安县', '3');
INSERT INTO `blue_areas` VALUES ('1567', '183', '罗田县', '3');
INSERT INTO `blue_areas` VALUES ('1568', '183', '英山县', '3');
INSERT INTO `blue_areas` VALUES ('1569', '183', '浠水县', '3');
INSERT INTO `blue_areas` VALUES ('1570', '183', '蕲春县', '3');
INSERT INTO `blue_areas` VALUES ('1571', '183', '黄梅县', '3');
INSERT INTO `blue_areas` VALUES ('1572', '184', '黄石港区', '3');
INSERT INTO `blue_areas` VALUES ('1573', '184', '西塞山区', '3');
INSERT INTO `blue_areas` VALUES ('1574', '184', '下陆区', '3');
INSERT INTO `blue_areas` VALUES ('1575', '184', '铁山区', '3');
INSERT INTO `blue_areas` VALUES ('1576', '184', '大冶市', '3');
INSERT INTO `blue_areas` VALUES ('1577', '184', '阳新县', '3');
INSERT INTO `blue_areas` VALUES ('1578', '185', '东宝区', '3');
INSERT INTO `blue_areas` VALUES ('1579', '185', '掇刀区', '3');
INSERT INTO `blue_areas` VALUES ('1580', '185', '钟祥市', '3');
INSERT INTO `blue_areas` VALUES ('1581', '185', '京山县', '3');
INSERT INTO `blue_areas` VALUES ('1582', '185', '沙洋县', '3');
INSERT INTO `blue_areas` VALUES ('1583', '186', '沙市区', '3');
INSERT INTO `blue_areas` VALUES ('1584', '186', '荆州区', '3');
INSERT INTO `blue_areas` VALUES ('1585', '186', '石首市', '3');
INSERT INTO `blue_areas` VALUES ('1586', '186', '洪湖市', '3');
INSERT INTO `blue_areas` VALUES ('1587', '186', '松滋市', '3');
INSERT INTO `blue_areas` VALUES ('1588', '186', '公安县', '3');
INSERT INTO `blue_areas` VALUES ('1589', '186', '监利县', '3');
INSERT INTO `blue_areas` VALUES ('1590', '186', '江陵县', '3');
INSERT INTO `blue_areas` VALUES ('1591', '187', '潜江市', '3');
INSERT INTO `blue_areas` VALUES ('1592', '188', '神农架林区', '3');
INSERT INTO `blue_areas` VALUES ('1593', '189', '张湾区', '3');
INSERT INTO `blue_areas` VALUES ('1594', '189', '茅箭区', '3');
INSERT INTO `blue_areas` VALUES ('1595', '189', '丹江口市', '3');
INSERT INTO `blue_areas` VALUES ('1596', '189', '郧县', '3');
INSERT INTO `blue_areas` VALUES ('1597', '189', '郧西县', '3');
INSERT INTO `blue_areas` VALUES ('1598', '189', '竹山县', '3');
INSERT INTO `blue_areas` VALUES ('1599', '189', '竹溪县', '3');
INSERT INTO `blue_areas` VALUES ('1600', '189', '房县', '3');
INSERT INTO `blue_areas` VALUES ('1601', '190', '曾都区', '3');
INSERT INTO `blue_areas` VALUES ('1602', '190', '广水市', '3');
INSERT INTO `blue_areas` VALUES ('1603', '191', '天门市', '3');
INSERT INTO `blue_areas` VALUES ('1604', '192', '咸安区', '3');
INSERT INTO `blue_areas` VALUES ('1605', '192', '赤壁市', '3');
INSERT INTO `blue_areas` VALUES ('1606', '192', '嘉鱼县', '3');
INSERT INTO `blue_areas` VALUES ('1607', '192', '通城县', '3');
INSERT INTO `blue_areas` VALUES ('1608', '192', '崇阳县', '3');
INSERT INTO `blue_areas` VALUES ('1609', '192', '通山县', '3');
INSERT INTO `blue_areas` VALUES ('1610', '193', '襄城区', '3');
INSERT INTO `blue_areas` VALUES ('1611', '193', '樊城区', '3');
INSERT INTO `blue_areas` VALUES ('1612', '193', '襄阳区', '3');
INSERT INTO `blue_areas` VALUES ('1613', '193', '老河口市', '3');
INSERT INTO `blue_areas` VALUES ('1614', '193', '枣阳市', '3');
INSERT INTO `blue_areas` VALUES ('1615', '193', '宜城市', '3');
INSERT INTO `blue_areas` VALUES ('1616', '193', '南漳县', '3');
INSERT INTO `blue_areas` VALUES ('1617', '193', '谷城县', '3');
INSERT INTO `blue_areas` VALUES ('1618', '193', '保康县', '3');
INSERT INTO `blue_areas` VALUES ('1619', '194', '孝南区', '3');
INSERT INTO `blue_areas` VALUES ('1620', '194', '应城市', '3');
INSERT INTO `blue_areas` VALUES ('1621', '194', '安陆市', '3');
INSERT INTO `blue_areas` VALUES ('1622', '194', '汉川市', '3');
INSERT INTO `blue_areas` VALUES ('1623', '194', '孝昌县', '3');
INSERT INTO `blue_areas` VALUES ('1624', '194', '大悟县', '3');
INSERT INTO `blue_areas` VALUES ('1625', '194', '云梦县', '3');
INSERT INTO `blue_areas` VALUES ('1626', '195', '长阳', '3');
INSERT INTO `blue_areas` VALUES ('1627', '195', '五峰', '3');
INSERT INTO `blue_areas` VALUES ('1628', '195', '西陵区', '3');
INSERT INTO `blue_areas` VALUES ('1629', '195', '伍家岗区', '3');
INSERT INTO `blue_areas` VALUES ('1630', '195', '点军区', '3');
INSERT INTO `blue_areas` VALUES ('1631', '195', '猇亭区', '3');
INSERT INTO `blue_areas` VALUES ('1632', '195', '夷陵区', '3');
INSERT INTO `blue_areas` VALUES ('1633', '195', '宜都市', '3');
INSERT INTO `blue_areas` VALUES ('1634', '195', '当阳市', '3');
INSERT INTO `blue_areas` VALUES ('1635', '195', '枝江市', '3');
INSERT INTO `blue_areas` VALUES ('1636', '195', '远安县', '3');
INSERT INTO `blue_areas` VALUES ('1637', '195', '兴山县', '3');
INSERT INTO `blue_areas` VALUES ('1638', '195', '秭归县', '3');
INSERT INTO `blue_areas` VALUES ('1639', '196', '恩施市', '3');
INSERT INTO `blue_areas` VALUES ('1640', '196', '利川市', '3');
INSERT INTO `blue_areas` VALUES ('1641', '196', '建始县', '3');
INSERT INTO `blue_areas` VALUES ('1642', '196', '巴东县', '3');
INSERT INTO `blue_areas` VALUES ('1643', '196', '宣恩县', '3');
INSERT INTO `blue_areas` VALUES ('1644', '196', '咸丰县', '3');
INSERT INTO `blue_areas` VALUES ('1645', '196', '来凤县', '3');
INSERT INTO `blue_areas` VALUES ('1646', '196', '鹤峰县', '3');
INSERT INTO `blue_areas` VALUES ('1647', '197', '岳麓区', '3');
INSERT INTO `blue_areas` VALUES ('1648', '197', '芙蓉区', '3');
INSERT INTO `blue_areas` VALUES ('1649', '197', '天心区', '3');
INSERT INTO `blue_areas` VALUES ('1650', '197', '开福区', '3');
INSERT INTO `blue_areas` VALUES ('1651', '197', '雨花区', '3');
INSERT INTO `blue_areas` VALUES ('1652', '197', '开发区', '3');
INSERT INTO `blue_areas` VALUES ('1653', '197', '浏阳市', '3');
INSERT INTO `blue_areas` VALUES ('1654', '197', '长沙县', '3');
INSERT INTO `blue_areas` VALUES ('1655', '197', '望城县', '3');
INSERT INTO `blue_areas` VALUES ('1656', '197', '宁乡县', '3');
INSERT INTO `blue_areas` VALUES ('1657', '198', '永定区', '3');
INSERT INTO `blue_areas` VALUES ('1658', '198', '武陵源区', '3');
INSERT INTO `blue_areas` VALUES ('1659', '198', '慈利县', '3');
INSERT INTO `blue_areas` VALUES ('1660', '198', '桑植县', '3');
INSERT INTO `blue_areas` VALUES ('1661', '199', '武陵区', '3');
INSERT INTO `blue_areas` VALUES ('1662', '199', '鼎城区', '3');
INSERT INTO `blue_areas` VALUES ('1663', '199', '津市市', '3');
INSERT INTO `blue_areas` VALUES ('1664', '199', '安乡县', '3');
INSERT INTO `blue_areas` VALUES ('1665', '199', '汉寿县', '3');
INSERT INTO `blue_areas` VALUES ('1666', '199', '澧县', '3');
INSERT INTO `blue_areas` VALUES ('1667', '199', '临澧县', '3');
INSERT INTO `blue_areas` VALUES ('1668', '199', '桃源县', '3');
INSERT INTO `blue_areas` VALUES ('1669', '199', '石门县', '3');
INSERT INTO `blue_areas` VALUES ('1670', '200', '北湖区', '3');
INSERT INTO `blue_areas` VALUES ('1671', '200', '苏仙区', '3');
INSERT INTO `blue_areas` VALUES ('1672', '200', '资兴市', '3');
INSERT INTO `blue_areas` VALUES ('1673', '200', '桂阳县', '3');
INSERT INTO `blue_areas` VALUES ('1674', '200', '宜章县', '3');
INSERT INTO `blue_areas` VALUES ('1675', '200', '永兴县', '3');
INSERT INTO `blue_areas` VALUES ('1676', '200', '嘉禾县', '3');
INSERT INTO `blue_areas` VALUES ('1677', '200', '临武县', '3');
INSERT INTO `blue_areas` VALUES ('1678', '200', '汝城县', '3');
INSERT INTO `blue_areas` VALUES ('1679', '200', '桂东县', '3');
INSERT INTO `blue_areas` VALUES ('1680', '200', '安仁县', '3');
INSERT INTO `blue_areas` VALUES ('1681', '201', '雁峰区', '3');
INSERT INTO `blue_areas` VALUES ('1682', '201', '珠晖区', '3');
INSERT INTO `blue_areas` VALUES ('1683', '201', '石鼓区', '3');
INSERT INTO `blue_areas` VALUES ('1684', '201', '蒸湘区', '3');
INSERT INTO `blue_areas` VALUES ('1685', '201', '南岳区', '3');
INSERT INTO `blue_areas` VALUES ('1686', '201', '耒阳市', '3');
INSERT INTO `blue_areas` VALUES ('1687', '201', '常宁市', '3');
INSERT INTO `blue_areas` VALUES ('1688', '201', '衡阳县', '3');
INSERT INTO `blue_areas` VALUES ('1689', '201', '衡南县', '3');
INSERT INTO `blue_areas` VALUES ('1690', '201', '衡山县', '3');
INSERT INTO `blue_areas` VALUES ('1691', '201', '衡东县', '3');
INSERT INTO `blue_areas` VALUES ('1692', '201', '祁东县', '3');
INSERT INTO `blue_areas` VALUES ('1693', '202', '鹤城区', '3');
INSERT INTO `blue_areas` VALUES ('1694', '202', '靖州', '3');
INSERT INTO `blue_areas` VALUES ('1695', '202', '麻阳', '3');
INSERT INTO `blue_areas` VALUES ('1696', '202', '通道', '3');
INSERT INTO `blue_areas` VALUES ('1697', '202', '新晃', '3');
INSERT INTO `blue_areas` VALUES ('1698', '202', '芷江', '3');
INSERT INTO `blue_areas` VALUES ('1699', '202', '沅陵县', '3');
INSERT INTO `blue_areas` VALUES ('1700', '202', '辰溪县', '3');
INSERT INTO `blue_areas` VALUES ('1701', '202', '溆浦县', '3');
INSERT INTO `blue_areas` VALUES ('1702', '202', '中方县', '3');
INSERT INTO `blue_areas` VALUES ('1703', '202', '会同县', '3');
INSERT INTO `blue_areas` VALUES ('1704', '202', '洪江市', '3');
INSERT INTO `blue_areas` VALUES ('1705', '203', '娄星区', '3');
INSERT INTO `blue_areas` VALUES ('1706', '203', '冷水江市', '3');
INSERT INTO `blue_areas` VALUES ('1707', '203', '涟源市', '3');
INSERT INTO `blue_areas` VALUES ('1708', '203', '双峰县', '3');
INSERT INTO `blue_areas` VALUES ('1709', '203', '新化县', '3');
INSERT INTO `blue_areas` VALUES ('1710', '204', '城步', '3');
INSERT INTO `blue_areas` VALUES ('1711', '204', '双清区', '3');
INSERT INTO `blue_areas` VALUES ('1712', '204', '大祥区', '3');
INSERT INTO `blue_areas` VALUES ('1713', '204', '北塔区', '3');
INSERT INTO `blue_areas` VALUES ('1714', '204', '武冈市', '3');
INSERT INTO `blue_areas` VALUES ('1715', '204', '邵东县', '3');
INSERT INTO `blue_areas` VALUES ('1716', '204', '新邵县', '3');
INSERT INTO `blue_areas` VALUES ('1717', '204', '邵阳县', '3');
INSERT INTO `blue_areas` VALUES ('1718', '204', '隆回县', '3');
INSERT INTO `blue_areas` VALUES ('1719', '204', '洞口县', '3');
INSERT INTO `blue_areas` VALUES ('1720', '204', '绥宁县', '3');
INSERT INTO `blue_areas` VALUES ('1721', '204', '新宁县', '3');
INSERT INTO `blue_areas` VALUES ('1722', '205', '岳塘区', '3');
INSERT INTO `blue_areas` VALUES ('1723', '205', '雨湖区', '3');
INSERT INTO `blue_areas` VALUES ('1724', '205', '湘乡市', '3');
INSERT INTO `blue_areas` VALUES ('1725', '205', '韶山市', '3');
INSERT INTO `blue_areas` VALUES ('1726', '205', '湘潭县', '3');
INSERT INTO `blue_areas` VALUES ('1727', '206', '吉首市', '3');
INSERT INTO `blue_areas` VALUES ('1728', '206', '泸溪县', '3');
INSERT INTO `blue_areas` VALUES ('1729', '206', '凤凰县', '3');
INSERT INTO `blue_areas` VALUES ('1730', '206', '花垣县', '3');
INSERT INTO `blue_areas` VALUES ('1731', '206', '保靖县', '3');
INSERT INTO `blue_areas` VALUES ('1732', '206', '古丈县', '3');
INSERT INTO `blue_areas` VALUES ('1733', '206', '永顺县', '3');
INSERT INTO `blue_areas` VALUES ('1734', '206', '龙山县', '3');
INSERT INTO `blue_areas` VALUES ('1735', '207', '赫山区', '3');
INSERT INTO `blue_areas` VALUES ('1736', '207', '资阳区', '3');
INSERT INTO `blue_areas` VALUES ('1737', '207', '沅江市', '3');
INSERT INTO `blue_areas` VALUES ('1738', '207', '南县', '3');
INSERT INTO `blue_areas` VALUES ('1739', '207', '桃江县', '3');
INSERT INTO `blue_areas` VALUES ('1740', '207', '安化县', '3');
INSERT INTO `blue_areas` VALUES ('1741', '208', '江华', '3');
INSERT INTO `blue_areas` VALUES ('1742', '208', '冷水滩区', '3');
INSERT INTO `blue_areas` VALUES ('1743', '208', '零陵区', '3');
INSERT INTO `blue_areas` VALUES ('1744', '208', '祁阳县', '3');
INSERT INTO `blue_areas` VALUES ('1745', '208', '东安县', '3');
INSERT INTO `blue_areas` VALUES ('1746', '208', '双牌县', '3');
INSERT INTO `blue_areas` VALUES ('1747', '208', '道县', '3');
INSERT INTO `blue_areas` VALUES ('1748', '208', '江永县', '3');
INSERT INTO `blue_areas` VALUES ('1749', '208', '宁远县', '3');
INSERT INTO `blue_areas` VALUES ('1750', '208', '蓝山县', '3');
INSERT INTO `blue_areas` VALUES ('1751', '208', '新田县', '3');
INSERT INTO `blue_areas` VALUES ('1752', '209', '岳阳楼区', '3');
INSERT INTO `blue_areas` VALUES ('1753', '209', '君山区', '3');
INSERT INTO `blue_areas` VALUES ('1754', '209', '云溪区', '3');
INSERT INTO `blue_areas` VALUES ('1755', '209', '汨罗市', '3');
INSERT INTO `blue_areas` VALUES ('1756', '209', '临湘市', '3');
INSERT INTO `blue_areas` VALUES ('1757', '209', '岳阳县', '3');
INSERT INTO `blue_areas` VALUES ('1758', '209', '华容县', '3');
INSERT INTO `blue_areas` VALUES ('1759', '209', '湘阴县', '3');
INSERT INTO `blue_areas` VALUES ('1760', '209', '平江县', '3');
INSERT INTO `blue_areas` VALUES ('1761', '210', '天元区', '3');
INSERT INTO `blue_areas` VALUES ('1762', '210', '荷塘区', '3');
INSERT INTO `blue_areas` VALUES ('1763', '210', '芦淞区', '3');
INSERT INTO `blue_areas` VALUES ('1764', '210', '石峰区', '3');
INSERT INTO `blue_areas` VALUES ('1765', '210', '醴陵市', '3');
INSERT INTO `blue_areas` VALUES ('1766', '210', '株洲县', '3');
INSERT INTO `blue_areas` VALUES ('1767', '210', '攸县', '3');
INSERT INTO `blue_areas` VALUES ('1768', '210', '茶陵县', '3');
INSERT INTO `blue_areas` VALUES ('1769', '210', '炎陵县', '3');
INSERT INTO `blue_areas` VALUES ('1770', '211', '朝阳区', '3');
INSERT INTO `blue_areas` VALUES ('1771', '211', '宽城区', '3');
INSERT INTO `blue_areas` VALUES ('1772', '211', '二道区', '3');
INSERT INTO `blue_areas` VALUES ('1773', '211', '南关区', '3');
INSERT INTO `blue_areas` VALUES ('1774', '211', '绿园区', '3');
INSERT INTO `blue_areas` VALUES ('1775', '211', '双阳区', '3');
INSERT INTO `blue_areas` VALUES ('1776', '211', '净月潭开发区', '3');
INSERT INTO `blue_areas` VALUES ('1777', '211', '高新技术开发区', '3');
INSERT INTO `blue_areas` VALUES ('1778', '211', '经济技术开发区', '3');
INSERT INTO `blue_areas` VALUES ('1779', '211', '汽车产业开发区', '3');
INSERT INTO `blue_areas` VALUES ('1780', '211', '德惠市', '3');
INSERT INTO `blue_areas` VALUES ('1781', '211', '九台市', '3');
INSERT INTO `blue_areas` VALUES ('1782', '211', '榆树市', '3');
INSERT INTO `blue_areas` VALUES ('1783', '211', '农安县', '3');
INSERT INTO `blue_areas` VALUES ('1784', '212', '船营区', '3');
INSERT INTO `blue_areas` VALUES ('1785', '212', '昌邑区', '3');
INSERT INTO `blue_areas` VALUES ('1786', '212', '龙潭区', '3');
INSERT INTO `blue_areas` VALUES ('1787', '212', '丰满区', '3');
INSERT INTO `blue_areas` VALUES ('1788', '212', '蛟河市', '3');
INSERT INTO `blue_areas` VALUES ('1789', '212', '桦甸市', '3');
INSERT INTO `blue_areas` VALUES ('1790', '212', '舒兰市', '3');
INSERT INTO `blue_areas` VALUES ('1791', '212', '磐石市', '3');
INSERT INTO `blue_areas` VALUES ('1792', '212', '永吉县', '3');
INSERT INTO `blue_areas` VALUES ('1793', '213', '洮北区', '3');
INSERT INTO `blue_areas` VALUES ('1794', '213', '洮南市', '3');
INSERT INTO `blue_areas` VALUES ('1795', '213', '大安市', '3');
INSERT INTO `blue_areas` VALUES ('1796', '213', '镇赉县', '3');
INSERT INTO `blue_areas` VALUES ('1797', '213', '通榆县', '3');
INSERT INTO `blue_areas` VALUES ('1798', '214', '江源区', '3');
INSERT INTO `blue_areas` VALUES ('1799', '214', '八道江区', '3');
INSERT INTO `blue_areas` VALUES ('1800', '214', '长白', '3');
INSERT INTO `blue_areas` VALUES ('1801', '214', '临江市', '3');
INSERT INTO `blue_areas` VALUES ('1802', '214', '抚松县', '3');
INSERT INTO `blue_areas` VALUES ('1803', '214', '靖宇县', '3');
INSERT INTO `blue_areas` VALUES ('1804', '215', '龙山区', '3');
INSERT INTO `blue_areas` VALUES ('1805', '215', '西安区', '3');
INSERT INTO `blue_areas` VALUES ('1806', '215', '东丰县', '3');
INSERT INTO `blue_areas` VALUES ('1807', '215', '东辽县', '3');
INSERT INTO `blue_areas` VALUES ('1808', '216', '铁西区', '3');
INSERT INTO `blue_areas` VALUES ('1809', '216', '铁东区', '3');
INSERT INTO `blue_areas` VALUES ('1810', '216', '伊通', '3');
INSERT INTO `blue_areas` VALUES ('1811', '216', '公主岭市', '3');
INSERT INTO `blue_areas` VALUES ('1812', '216', '双辽市', '3');
INSERT INTO `blue_areas` VALUES ('1813', '216', '梨树县', '3');
INSERT INTO `blue_areas` VALUES ('1814', '217', '前郭尔罗斯', '3');
INSERT INTO `blue_areas` VALUES ('1815', '217', '宁江区', '3');
INSERT INTO `blue_areas` VALUES ('1816', '217', '长岭县', '3');
INSERT INTO `blue_areas` VALUES ('1817', '217', '乾安县', '3');
INSERT INTO `blue_areas` VALUES ('1818', '217', '扶余县', '3');
INSERT INTO `blue_areas` VALUES ('1819', '218', '东昌区', '3');
INSERT INTO `blue_areas` VALUES ('1820', '218', '二道江区', '3');
INSERT INTO `blue_areas` VALUES ('1821', '218', '梅河口市', '3');
INSERT INTO `blue_areas` VALUES ('1822', '218', '集安市', '3');
INSERT INTO `blue_areas` VALUES ('1823', '218', '通化县', '3');
INSERT INTO `blue_areas` VALUES ('1824', '218', '辉南县', '3');
INSERT INTO `blue_areas` VALUES ('1825', '218', '柳河县', '3');
INSERT INTO `blue_areas` VALUES ('1826', '219', '延吉市', '3');
INSERT INTO `blue_areas` VALUES ('1827', '219', '图们市', '3');
INSERT INTO `blue_areas` VALUES ('1828', '219', '敦化市', '3');
INSERT INTO `blue_areas` VALUES ('1829', '219', '珲春市', '3');
INSERT INTO `blue_areas` VALUES ('1830', '219', '龙井市', '3');
INSERT INTO `blue_areas` VALUES ('1831', '219', '和龙市', '3');
INSERT INTO `blue_areas` VALUES ('1832', '219', '安图县', '3');
INSERT INTO `blue_areas` VALUES ('1833', '219', '汪清县', '3');
INSERT INTO `blue_areas` VALUES ('1834', '220', '玄武区', '3');
INSERT INTO `blue_areas` VALUES ('1835', '220', '鼓楼区', '3');
INSERT INTO `blue_areas` VALUES ('1836', '220', '白下区', '3');
INSERT INTO `blue_areas` VALUES ('1837', '220', '建邺区', '3');
INSERT INTO `blue_areas` VALUES ('1838', '220', '秦淮区', '3');
INSERT INTO `blue_areas` VALUES ('1839', '220', '雨花台区', '3');
INSERT INTO `blue_areas` VALUES ('1840', '220', '下关区', '3');
INSERT INTO `blue_areas` VALUES ('1841', '220', '栖霞区', '3');
INSERT INTO `blue_areas` VALUES ('1842', '220', '浦口区', '3');
INSERT INTO `blue_areas` VALUES ('1843', '220', '江宁区', '3');
INSERT INTO `blue_areas` VALUES ('1844', '220', '六合区', '3');
INSERT INTO `blue_areas` VALUES ('1845', '220', '溧水县', '3');
INSERT INTO `blue_areas` VALUES ('1846', '220', '高淳县', '3');
INSERT INTO `blue_areas` VALUES ('1847', '221', '沧浪区', '3');
INSERT INTO `blue_areas` VALUES ('1848', '221', '金阊区', '3');
INSERT INTO `blue_areas` VALUES ('1849', '221', '平江区', '3');
INSERT INTO `blue_areas` VALUES ('1850', '221', '虎丘区', '3');
INSERT INTO `blue_areas` VALUES ('1851', '221', '吴中区', '3');
INSERT INTO `blue_areas` VALUES ('1852', '221', '相城区', '3');
INSERT INTO `blue_areas` VALUES ('1853', '221', '园区', '3');
INSERT INTO `blue_areas` VALUES ('1854', '221', '新区', '3');
INSERT INTO `blue_areas` VALUES ('1855', '221', '常熟市', '3');
INSERT INTO `blue_areas` VALUES ('1856', '221', '张家港市', '3');
INSERT INTO `blue_areas` VALUES ('1857', '221', '玉山镇', '3');
INSERT INTO `blue_areas` VALUES ('1858', '221', '巴城镇', '3');
INSERT INTO `blue_areas` VALUES ('1859', '221', '周市镇', '3');
INSERT INTO `blue_areas` VALUES ('1860', '221', '陆家镇', '3');
INSERT INTO `blue_areas` VALUES ('1861', '221', '花桥镇', '3');
INSERT INTO `blue_areas` VALUES ('1862', '221', '淀山湖镇', '3');
INSERT INTO `blue_areas` VALUES ('1863', '221', '张浦镇', '3');
INSERT INTO `blue_areas` VALUES ('1864', '221', '周庄镇', '3');
INSERT INTO `blue_areas` VALUES ('1865', '221', '千灯镇', '3');
INSERT INTO `blue_areas` VALUES ('1866', '221', '锦溪镇', '3');
INSERT INTO `blue_areas` VALUES ('1867', '221', '开发区', '3');
INSERT INTO `blue_areas` VALUES ('1868', '221', '吴江市', '3');
INSERT INTO `blue_areas` VALUES ('1869', '221', '太仓市', '3');
INSERT INTO `blue_areas` VALUES ('1870', '222', '崇安区', '3');
INSERT INTO `blue_areas` VALUES ('1871', '222', '北塘区', '3');
INSERT INTO `blue_areas` VALUES ('1872', '222', '南长区', '3');
INSERT INTO `blue_areas` VALUES ('1873', '222', '锡山区', '3');
INSERT INTO `blue_areas` VALUES ('1874', '222', '惠山区', '3');
INSERT INTO `blue_areas` VALUES ('1875', '222', '滨湖区', '3');
INSERT INTO `blue_areas` VALUES ('1876', '222', '新区', '3');
INSERT INTO `blue_areas` VALUES ('1877', '222', '江阴市', '3');
INSERT INTO `blue_areas` VALUES ('1878', '222', '宜兴市', '3');
INSERT INTO `blue_areas` VALUES ('1879', '223', '天宁区', '3');
INSERT INTO `blue_areas` VALUES ('1880', '223', '钟楼区', '3');
INSERT INTO `blue_areas` VALUES ('1881', '223', '戚墅堰区', '3');
INSERT INTO `blue_areas` VALUES ('1882', '223', '郊区', '3');
INSERT INTO `blue_areas` VALUES ('1883', '223', '新北区', '3');
INSERT INTO `blue_areas` VALUES ('1884', '223', '武进区', '3');
INSERT INTO `blue_areas` VALUES ('1885', '223', '溧阳市', '3');
INSERT INTO `blue_areas` VALUES ('1886', '223', '金坛市', '3');
INSERT INTO `blue_areas` VALUES ('1887', '224', '清河区', '3');
INSERT INTO `blue_areas` VALUES ('1888', '224', '清浦区', '3');
INSERT INTO `blue_areas` VALUES ('1889', '224', '楚州区', '3');
INSERT INTO `blue_areas` VALUES ('1890', '224', '淮阴区', '3');
INSERT INTO `blue_areas` VALUES ('1891', '224', '涟水县', '3');
INSERT INTO `blue_areas` VALUES ('1892', '224', '洪泽县', '3');
INSERT INTO `blue_areas` VALUES ('1893', '224', '盱眙县', '3');
INSERT INTO `blue_areas` VALUES ('1894', '224', '金湖县', '3');
INSERT INTO `blue_areas` VALUES ('1895', '225', '新浦区', '3');
INSERT INTO `blue_areas` VALUES ('1896', '225', '连云区', '3');
INSERT INTO `blue_areas` VALUES ('1897', '225', '海州区', '3');
INSERT INTO `blue_areas` VALUES ('1898', '225', '赣榆县', '3');
INSERT INTO `blue_areas` VALUES ('1899', '225', '东海县', '3');
INSERT INTO `blue_areas` VALUES ('1900', '225', '灌云县', '3');
INSERT INTO `blue_areas` VALUES ('1901', '225', '灌南县', '3');
INSERT INTO `blue_areas` VALUES ('1902', '226', '崇川区', '3');
INSERT INTO `blue_areas` VALUES ('1903', '226', '港闸区', '3');
INSERT INTO `blue_areas` VALUES ('1904', '226', '经济开发区', '3');
INSERT INTO `blue_areas` VALUES ('1905', '226', '启东市', '3');
INSERT INTO `blue_areas` VALUES ('1906', '226', '如皋市', '3');
INSERT INTO `blue_areas` VALUES ('1907', '226', '通州市', '3');
INSERT INTO `blue_areas` VALUES ('1908', '226', '海门市', '3');
INSERT INTO `blue_areas` VALUES ('1909', '226', '海安县', '3');
INSERT INTO `blue_areas` VALUES ('1910', '226', '如东县', '3');
INSERT INTO `blue_areas` VALUES ('1911', '227', '宿城区', '3');
INSERT INTO `blue_areas` VALUES ('1912', '227', '宿豫区', '3');
INSERT INTO `blue_areas` VALUES ('1913', '227', '宿豫县', '3');
INSERT INTO `blue_areas` VALUES ('1914', '227', '沭阳县', '3');
INSERT INTO `blue_areas` VALUES ('1915', '227', '泗阳县', '3');
INSERT INTO `blue_areas` VALUES ('1916', '227', '泗洪县', '3');
INSERT INTO `blue_areas` VALUES ('1917', '228', '海陵区', '3');
INSERT INTO `blue_areas` VALUES ('1918', '228', '高港区', '3');
INSERT INTO `blue_areas` VALUES ('1919', '228', '兴化市', '3');
INSERT INTO `blue_areas` VALUES ('1920', '228', '靖江市', '3');
INSERT INTO `blue_areas` VALUES ('1921', '228', '泰兴市', '3');
INSERT INTO `blue_areas` VALUES ('1922', '228', '姜堰市', '3');
INSERT INTO `blue_areas` VALUES ('1923', '229', '云龙区', '3');
INSERT INTO `blue_areas` VALUES ('1924', '229', '鼓楼区', '3');
INSERT INTO `blue_areas` VALUES ('1925', '229', '九里区', '3');
INSERT INTO `blue_areas` VALUES ('1926', '229', '贾汪区', '3');
INSERT INTO `blue_areas` VALUES ('1927', '229', '泉山区', '3');
INSERT INTO `blue_areas` VALUES ('1928', '229', '新沂市', '3');
INSERT INTO `blue_areas` VALUES ('1929', '229', '邳州市', '3');
INSERT INTO `blue_areas` VALUES ('1930', '229', '丰县', '3');
INSERT INTO `blue_areas` VALUES ('1931', '229', '沛县', '3');
INSERT INTO `blue_areas` VALUES ('1932', '229', '铜山县', '3');
INSERT INTO `blue_areas` VALUES ('1933', '229', '睢宁县', '3');
INSERT INTO `blue_areas` VALUES ('1934', '230', '城区', '3');
INSERT INTO `blue_areas` VALUES ('1935', '230', '亭湖区', '3');
INSERT INTO `blue_areas` VALUES ('1936', '230', '盐都区', '3');
INSERT INTO `blue_areas` VALUES ('1937', '230', '盐都县', '3');
INSERT INTO `blue_areas` VALUES ('1938', '230', '东台市', '3');
INSERT INTO `blue_areas` VALUES ('1939', '230', '大丰市', '3');
INSERT INTO `blue_areas` VALUES ('1940', '230', '响水县', '3');
INSERT INTO `blue_areas` VALUES ('1941', '230', '滨海县', '3');
INSERT INTO `blue_areas` VALUES ('1942', '230', '阜宁县', '3');
INSERT INTO `blue_areas` VALUES ('1943', '230', '射阳县', '3');
INSERT INTO `blue_areas` VALUES ('1944', '230', '建湖县', '3');
INSERT INTO `blue_areas` VALUES ('1945', '231', '广陵区', '3');
INSERT INTO `blue_areas` VALUES ('1946', '231', '维扬区', '3');
INSERT INTO `blue_areas` VALUES ('1947', '231', '邗江区', '3');
INSERT INTO `blue_areas` VALUES ('1948', '231', '仪征市', '3');
INSERT INTO `blue_areas` VALUES ('1949', '231', '高邮市', '3');
INSERT INTO `blue_areas` VALUES ('1950', '231', '江都市', '3');
INSERT INTO `blue_areas` VALUES ('1951', '231', '宝应县', '3');
INSERT INTO `blue_areas` VALUES ('1952', '232', '京口区', '3');
INSERT INTO `blue_areas` VALUES ('1953', '232', '润州区', '3');
INSERT INTO `blue_areas` VALUES ('1954', '232', '丹徒区', '3');
INSERT INTO `blue_areas` VALUES ('1955', '232', '丹阳市', '3');
INSERT INTO `blue_areas` VALUES ('1956', '232', '扬中市', '3');
INSERT INTO `blue_areas` VALUES ('1957', '232', '句容市', '3');
INSERT INTO `blue_areas` VALUES ('1958', '233', '东湖区', '3');
INSERT INTO `blue_areas` VALUES ('1959', '233', '西湖区', '3');
INSERT INTO `blue_areas` VALUES ('1960', '233', '青云谱区', '3');
INSERT INTO `blue_areas` VALUES ('1961', '233', '湾里区', '3');
INSERT INTO `blue_areas` VALUES ('1962', '233', '青山湖区', '3');
INSERT INTO `blue_areas` VALUES ('1963', '233', '红谷滩新区', '3');
INSERT INTO `blue_areas` VALUES ('1964', '233', '昌北区', '3');
INSERT INTO `blue_areas` VALUES ('1965', '233', '高新区', '3');
INSERT INTO `blue_areas` VALUES ('1966', '233', '南昌县', '3');
INSERT INTO `blue_areas` VALUES ('1967', '233', '新建县', '3');
INSERT INTO `blue_areas` VALUES ('1968', '233', '安义县', '3');
INSERT INTO `blue_areas` VALUES ('1969', '233', '进贤县', '3');
INSERT INTO `blue_areas` VALUES ('1970', '234', '临川区', '3');
INSERT INTO `blue_areas` VALUES ('1971', '234', '南城县', '3');
INSERT INTO `blue_areas` VALUES ('1972', '234', '黎川县', '3');
INSERT INTO `blue_areas` VALUES ('1973', '234', '南丰县', '3');
INSERT INTO `blue_areas` VALUES ('1974', '234', '崇仁县', '3');
INSERT INTO `blue_areas` VALUES ('1975', '234', '乐安县', '3');
INSERT INTO `blue_areas` VALUES ('1976', '234', '宜黄县', '3');
INSERT INTO `blue_areas` VALUES ('1977', '234', '金溪县', '3');
INSERT INTO `blue_areas` VALUES ('1978', '234', '资溪县', '3');
INSERT INTO `blue_areas` VALUES ('1979', '234', '东乡县', '3');
INSERT INTO `blue_areas` VALUES ('1980', '234', '广昌县', '3');
INSERT INTO `blue_areas` VALUES ('1981', '235', '章贡区', '3');
INSERT INTO `blue_areas` VALUES ('1982', '235', '于都县', '3');
INSERT INTO `blue_areas` VALUES ('1983', '235', '瑞金市', '3');
INSERT INTO `blue_areas` VALUES ('1984', '235', '南康市', '3');
INSERT INTO `blue_areas` VALUES ('1985', '235', '赣县', '3');
INSERT INTO `blue_areas` VALUES ('1986', '235', '信丰县', '3');
INSERT INTO `blue_areas` VALUES ('1987', '235', '大余县', '3');
INSERT INTO `blue_areas` VALUES ('1988', '235', '上犹县', '3');
INSERT INTO `blue_areas` VALUES ('1989', '235', '崇义县', '3');
INSERT INTO `blue_areas` VALUES ('1990', '235', '安远县', '3');
INSERT INTO `blue_areas` VALUES ('1991', '235', '龙南县', '3');
INSERT INTO `blue_areas` VALUES ('1992', '235', '定南县', '3');
INSERT INTO `blue_areas` VALUES ('1993', '235', '全南县', '3');
INSERT INTO `blue_areas` VALUES ('1994', '235', '宁都县', '3');
INSERT INTO `blue_areas` VALUES ('1995', '235', '兴国县', '3');
INSERT INTO `blue_areas` VALUES ('1996', '235', '会昌县', '3');
INSERT INTO `blue_areas` VALUES ('1997', '235', '寻乌县', '3');
INSERT INTO `blue_areas` VALUES ('1998', '235', '石城县', '3');
INSERT INTO `blue_areas` VALUES ('1999', '236', '安福县', '3');
INSERT INTO `blue_areas` VALUES ('2000', '236', '吉州区', '3');
INSERT INTO `blue_areas` VALUES ('2001', '236', '青原区', '3');
INSERT INTO `blue_areas` VALUES ('2002', '236', '井冈山市', '3');
INSERT INTO `blue_areas` VALUES ('2003', '236', '吉安县', '3');
INSERT INTO `blue_areas` VALUES ('2004', '236', '吉水县', '3');
INSERT INTO `blue_areas` VALUES ('2005', '236', '峡江县', '3');
INSERT INTO `blue_areas` VALUES ('2006', '236', '新干县', '3');
INSERT INTO `blue_areas` VALUES ('2007', '236', '永丰县', '3');
INSERT INTO `blue_areas` VALUES ('2008', '236', '泰和县', '3');
INSERT INTO `blue_areas` VALUES ('2009', '236', '遂川县', '3');
INSERT INTO `blue_areas` VALUES ('2010', '236', '万安县', '3');
INSERT INTO `blue_areas` VALUES ('2011', '236', '永新县', '3');
INSERT INTO `blue_areas` VALUES ('2012', '237', '珠山区', '3');
INSERT INTO `blue_areas` VALUES ('2013', '237', '昌江区', '3');
INSERT INTO `blue_areas` VALUES ('2014', '237', '乐平市', '3');
INSERT INTO `blue_areas` VALUES ('2015', '237', '浮梁县', '3');
INSERT INTO `blue_areas` VALUES ('2016', '238', '浔阳区', '3');
INSERT INTO `blue_areas` VALUES ('2017', '238', '庐山区', '3');
INSERT INTO `blue_areas` VALUES ('2018', '238', '瑞昌市', '3');
INSERT INTO `blue_areas` VALUES ('2019', '238', '九江县', '3');
INSERT INTO `blue_areas` VALUES ('2020', '238', '武宁县', '3');
INSERT INTO `blue_areas` VALUES ('2021', '238', '修水县', '3');
INSERT INTO `blue_areas` VALUES ('2022', '238', '永修县', '3');
INSERT INTO `blue_areas` VALUES ('2023', '238', '德安县', '3');
INSERT INTO `blue_areas` VALUES ('2024', '238', '星子县', '3');
INSERT INTO `blue_areas` VALUES ('2025', '238', '都昌县', '3');
INSERT INTO `blue_areas` VALUES ('2026', '238', '湖口县', '3');
INSERT INTO `blue_areas` VALUES ('2027', '238', '彭泽县', '3');
INSERT INTO `blue_areas` VALUES ('2028', '239', '安源区', '3');
INSERT INTO `blue_areas` VALUES ('2029', '239', '湘东区', '3');
INSERT INTO `blue_areas` VALUES ('2030', '239', '莲花县', '3');
INSERT INTO `blue_areas` VALUES ('2031', '239', '芦溪县', '3');
INSERT INTO `blue_areas` VALUES ('2032', '239', '上栗县', '3');
INSERT INTO `blue_areas` VALUES ('2033', '240', '信州区', '3');
INSERT INTO `blue_areas` VALUES ('2034', '240', '德兴市', '3');
INSERT INTO `blue_areas` VALUES ('2035', '240', '上饶县', '3');
INSERT INTO `blue_areas` VALUES ('2036', '240', '广丰县', '3');
INSERT INTO `blue_areas` VALUES ('2037', '240', '玉山县', '3');
INSERT INTO `blue_areas` VALUES ('2038', '240', '铅山县', '3');
INSERT INTO `blue_areas` VALUES ('2039', '240', '横峰县', '3');
INSERT INTO `blue_areas` VALUES ('2040', '240', '弋阳县', '3');
INSERT INTO `blue_areas` VALUES ('2041', '240', '余干县', '3');
INSERT INTO `blue_areas` VALUES ('2042', '240', '波阳县', '3');
INSERT INTO `blue_areas` VALUES ('2043', '240', '万年县', '3');
INSERT INTO `blue_areas` VALUES ('2044', '240', '婺源县', '3');
INSERT INTO `blue_areas` VALUES ('2045', '241', '渝水区', '3');
INSERT INTO `blue_areas` VALUES ('2046', '241', '分宜县', '3');
INSERT INTO `blue_areas` VALUES ('2047', '242', '袁州区', '3');
INSERT INTO `blue_areas` VALUES ('2048', '242', '丰城市', '3');
INSERT INTO `blue_areas` VALUES ('2049', '242', '樟树市', '3');
INSERT INTO `blue_areas` VALUES ('2050', '242', '高安市', '3');
INSERT INTO `blue_areas` VALUES ('2051', '242', '奉新县', '3');
INSERT INTO `blue_areas` VALUES ('2052', '242', '万载县', '3');
INSERT INTO `blue_areas` VALUES ('2053', '242', '上高县', '3');
INSERT INTO `blue_areas` VALUES ('2054', '242', '宜丰县', '3');
INSERT INTO `blue_areas` VALUES ('2055', '242', '靖安县', '3');
INSERT INTO `blue_areas` VALUES ('2056', '242', '铜鼓县', '3');
INSERT INTO `blue_areas` VALUES ('2057', '243', '月湖区', '3');
INSERT INTO `blue_areas` VALUES ('2058', '243', '贵溪市', '3');
INSERT INTO `blue_areas` VALUES ('2059', '243', '余江县', '3');
INSERT INTO `blue_areas` VALUES ('2060', '244', '沈河区', '3');
INSERT INTO `blue_areas` VALUES ('2061', '244', '皇姑区', '3');
INSERT INTO `blue_areas` VALUES ('2062', '244', '和平区', '3');
INSERT INTO `blue_areas` VALUES ('2063', '244', '大东区', '3');
INSERT INTO `blue_areas` VALUES ('2064', '244', '铁西区', '3');
INSERT INTO `blue_areas` VALUES ('2065', '244', '苏家屯区', '3');
INSERT INTO `blue_areas` VALUES ('2066', '244', '东陵区', '3');
INSERT INTO `blue_areas` VALUES ('2067', '244', '沈北新区', '3');
INSERT INTO `blue_areas` VALUES ('2068', '244', '于洪区', '3');
INSERT INTO `blue_areas` VALUES ('2069', '244', '浑南新区', '3');
INSERT INTO `blue_areas` VALUES ('2070', '244', '新民市', '3');
INSERT INTO `blue_areas` VALUES ('2071', '244', '辽中县', '3');
INSERT INTO `blue_areas` VALUES ('2072', '244', '康平县', '3');
INSERT INTO `blue_areas` VALUES ('2073', '244', '法库县', '3');
INSERT INTO `blue_areas` VALUES ('2074', '245', '西岗区', '3');
INSERT INTO `blue_areas` VALUES ('2075', '245', '中山区', '3');
INSERT INTO `blue_areas` VALUES ('2076', '245', '沙河口区', '3');
INSERT INTO `blue_areas` VALUES ('2077', '245', '甘井子区', '3');
INSERT INTO `blue_areas` VALUES ('2078', '245', '旅顺口区', '3');
INSERT INTO `blue_areas` VALUES ('2079', '245', '金州区', '3');
INSERT INTO `blue_areas` VALUES ('2080', '245', '开发区', '3');
INSERT INTO `blue_areas` VALUES ('2081', '245', '瓦房店市', '3');
INSERT INTO `blue_areas` VALUES ('2082', '245', '普兰店市', '3');
INSERT INTO `blue_areas` VALUES ('2083', '245', '庄河市', '3');
INSERT INTO `blue_areas` VALUES ('2084', '245', '长海县', '3');
INSERT INTO `blue_areas` VALUES ('2085', '246', '铁东区', '3');
INSERT INTO `blue_areas` VALUES ('2086', '246', '铁西区', '3');
INSERT INTO `blue_areas` VALUES ('2087', '246', '立山区', '3');
INSERT INTO `blue_areas` VALUES ('2088', '246', '千山区', '3');
INSERT INTO `blue_areas` VALUES ('2089', '246', '岫岩', '3');
INSERT INTO `blue_areas` VALUES ('2090', '246', '海城市', '3');
INSERT INTO `blue_areas` VALUES ('2091', '246', '台安县', '3');
INSERT INTO `blue_areas` VALUES ('2092', '247', '本溪', '3');
INSERT INTO `blue_areas` VALUES ('2093', '247', '平山区', '3');
INSERT INTO `blue_areas` VALUES ('2094', '247', '明山区', '3');
INSERT INTO `blue_areas` VALUES ('2095', '247', '溪湖区', '3');
INSERT INTO `blue_areas` VALUES ('2096', '247', '南芬区', '3');
INSERT INTO `blue_areas` VALUES ('2097', '247', '桓仁', '3');
INSERT INTO `blue_areas` VALUES ('2098', '248', '双塔区', '3');
INSERT INTO `blue_areas` VALUES ('2099', '248', '龙城区', '3');
INSERT INTO `blue_areas` VALUES ('2100', '248', '喀喇沁左翼蒙古族自治县', '3');
INSERT INTO `blue_areas` VALUES ('2101', '248', '北票市', '3');
INSERT INTO `blue_areas` VALUES ('2102', '248', '凌源市', '3');
INSERT INTO `blue_areas` VALUES ('2103', '248', '朝阳县', '3');
INSERT INTO `blue_areas` VALUES ('2104', '248', '建平县', '3');
INSERT INTO `blue_areas` VALUES ('2105', '249', '振兴区', '3');
INSERT INTO `blue_areas` VALUES ('2106', '249', '元宝区', '3');
INSERT INTO `blue_areas` VALUES ('2107', '249', '振安区', '3');
INSERT INTO `blue_areas` VALUES ('2108', '249', '宽甸', '3');
INSERT INTO `blue_areas` VALUES ('2109', '249', '东港市', '3');
INSERT INTO `blue_areas` VALUES ('2110', '249', '凤城市', '3');
INSERT INTO `blue_areas` VALUES ('2111', '250', '顺城区', '3');
INSERT INTO `blue_areas` VALUES ('2112', '250', '新抚区', '3');
INSERT INTO `blue_areas` VALUES ('2113', '250', '东洲区', '3');
INSERT INTO `blue_areas` VALUES ('2114', '250', '望花区', '3');
INSERT INTO `blue_areas` VALUES ('2115', '250', '清原', '3');
INSERT INTO `blue_areas` VALUES ('2116', '250', '新宾', '3');
INSERT INTO `blue_areas` VALUES ('2117', '250', '抚顺县', '3');
INSERT INTO `blue_areas` VALUES ('2118', '251', '阜新', '3');
INSERT INTO `blue_areas` VALUES ('2119', '251', '海州区', '3');
INSERT INTO `blue_areas` VALUES ('2120', '251', '新邱区', '3');
INSERT INTO `blue_areas` VALUES ('2121', '251', '太平区', '3');
INSERT INTO `blue_areas` VALUES ('2122', '251', '清河门区', '3');
INSERT INTO `blue_areas` VALUES ('2123', '251', '细河区', '3');
INSERT INTO `blue_areas` VALUES ('2124', '251', '彰武县', '3');
INSERT INTO `blue_areas` VALUES ('2125', '252', '龙港区', '3');
INSERT INTO `blue_areas` VALUES ('2126', '252', '南票区', '3');
INSERT INTO `blue_areas` VALUES ('2127', '252', '连山区', '3');
INSERT INTO `blue_areas` VALUES ('2128', '252', '兴城市', '3');
INSERT INTO `blue_areas` VALUES ('2129', '252', '绥中县', '3');
INSERT INTO `blue_areas` VALUES ('2130', '252', '建昌县', '3');
INSERT INTO `blue_areas` VALUES ('2131', '253', '太和区', '3');
INSERT INTO `blue_areas` VALUES ('2132', '253', '古塔区', '3');
INSERT INTO `blue_areas` VALUES ('2133', '253', '凌河区', '3');
INSERT INTO `blue_areas` VALUES ('2134', '253', '凌海市', '3');
INSERT INTO `blue_areas` VALUES ('2135', '253', '北镇市', '3');
INSERT INTO `blue_areas` VALUES ('2136', '253', '黑山县', '3');
INSERT INTO `blue_areas` VALUES ('2137', '253', '义县', '3');
INSERT INTO `blue_areas` VALUES ('2138', '254', '白塔区', '3');
INSERT INTO `blue_areas` VALUES ('2139', '254', '文圣区', '3');
INSERT INTO `blue_areas` VALUES ('2140', '254', '宏伟区', '3');
INSERT INTO `blue_areas` VALUES ('2141', '254', '太子河区', '3');
INSERT INTO `blue_areas` VALUES ('2142', '254', '弓长岭区', '3');
INSERT INTO `blue_areas` VALUES ('2143', '254', '灯塔市', '3');
INSERT INTO `blue_areas` VALUES ('2144', '254', '辽阳县', '3');
INSERT INTO `blue_areas` VALUES ('2145', '255', '双台子区', '3');
INSERT INTO `blue_areas` VALUES ('2146', '255', '兴隆台区', '3');
INSERT INTO `blue_areas` VALUES ('2147', '255', '大洼县', '3');
INSERT INTO `blue_areas` VALUES ('2148', '255', '盘山县', '3');
INSERT INTO `blue_areas` VALUES ('2149', '256', '银州区', '3');
INSERT INTO `blue_areas` VALUES ('2150', '256', '清河区', '3');
INSERT INTO `blue_areas` VALUES ('2151', '256', '调兵山市', '3');
INSERT INTO `blue_areas` VALUES ('2152', '256', '开原市', '3');
INSERT INTO `blue_areas` VALUES ('2153', '256', '铁岭县', '3');
INSERT INTO `blue_areas` VALUES ('2154', '256', '西丰县', '3');
INSERT INTO `blue_areas` VALUES ('2155', '256', '昌图县', '3');
INSERT INTO `blue_areas` VALUES ('2156', '257', '站前区', '3');
INSERT INTO `blue_areas` VALUES ('2157', '257', '西市区', '3');
INSERT INTO `blue_areas` VALUES ('2158', '257', '鲅鱼圈区', '3');
INSERT INTO `blue_areas` VALUES ('2159', '257', '老边区', '3');
INSERT INTO `blue_areas` VALUES ('2160', '257', '盖州市', '3');
INSERT INTO `blue_areas` VALUES ('2161', '257', '大石桥市', '3');
INSERT INTO `blue_areas` VALUES ('2162', '258', '回民区', '3');
INSERT INTO `blue_areas` VALUES ('2163', '258', '玉泉区', '3');
INSERT INTO `blue_areas` VALUES ('2164', '258', '新城区', '3');
INSERT INTO `blue_areas` VALUES ('2165', '258', '赛罕区', '3');
INSERT INTO `blue_areas` VALUES ('2166', '258', '清水河县', '3');
INSERT INTO `blue_areas` VALUES ('2167', '258', '土默特左旗', '3');
INSERT INTO `blue_areas` VALUES ('2168', '258', '托克托县', '3');
INSERT INTO `blue_areas` VALUES ('2169', '258', '和林格尔县', '3');
INSERT INTO `blue_areas` VALUES ('2170', '258', '武川县', '3');
INSERT INTO `blue_areas` VALUES ('2171', '259', '阿拉善左旗', '3');
INSERT INTO `blue_areas` VALUES ('2172', '259', '阿拉善右旗', '3');
INSERT INTO `blue_areas` VALUES ('2173', '259', '额济纳旗', '3');
INSERT INTO `blue_areas` VALUES ('2174', '260', '临河区', '3');
INSERT INTO `blue_areas` VALUES ('2175', '260', '五原县', '3');
INSERT INTO `blue_areas` VALUES ('2176', '260', '磴口县', '3');
INSERT INTO `blue_areas` VALUES ('2177', '260', '乌拉特前旗', '3');
INSERT INTO `blue_areas` VALUES ('2178', '260', '乌拉特中旗', '3');
INSERT INTO `blue_areas` VALUES ('2179', '260', '乌拉特后旗', '3');
INSERT INTO `blue_areas` VALUES ('2180', '260', '杭锦后旗', '3');
INSERT INTO `blue_areas` VALUES ('2181', '261', '昆都仑区', '3');
INSERT INTO `blue_areas` VALUES ('2182', '261', '青山区', '3');
INSERT INTO `blue_areas` VALUES ('2183', '261', '东河区', '3');
INSERT INTO `blue_areas` VALUES ('2184', '261', '九原区', '3');
INSERT INTO `blue_areas` VALUES ('2185', '261', '石拐区', '3');
INSERT INTO `blue_areas` VALUES ('2186', '261', '白云矿区', '3');
INSERT INTO `blue_areas` VALUES ('2187', '261', '土默特右旗', '3');
INSERT INTO `blue_areas` VALUES ('2188', '261', '固阳县', '3');
INSERT INTO `blue_areas` VALUES ('2189', '261', '达尔罕茂明安联合旗', '3');
INSERT INTO `blue_areas` VALUES ('2190', '262', '红山区', '3');
INSERT INTO `blue_areas` VALUES ('2191', '262', '元宝山区', '3');
INSERT INTO `blue_areas` VALUES ('2192', '262', '松山区', '3');
INSERT INTO `blue_areas` VALUES ('2193', '262', '阿鲁科尔沁旗', '3');
INSERT INTO `blue_areas` VALUES ('2194', '262', '巴林左旗', '3');
INSERT INTO `blue_areas` VALUES ('2195', '262', '巴林右旗', '3');
INSERT INTO `blue_areas` VALUES ('2196', '262', '林西县', '3');
INSERT INTO `blue_areas` VALUES ('2197', '262', '克什克腾旗', '3');
INSERT INTO `blue_areas` VALUES ('2198', '262', '翁牛特旗', '3');
INSERT INTO `blue_areas` VALUES ('2199', '262', '喀喇沁旗', '3');
INSERT INTO `blue_areas` VALUES ('2200', '262', '宁城县', '3');
INSERT INTO `blue_areas` VALUES ('2201', '262', '敖汉旗', '3');
INSERT INTO `blue_areas` VALUES ('2202', '263', '东胜区', '3');
INSERT INTO `blue_areas` VALUES ('2203', '263', '达拉特旗', '3');
INSERT INTO `blue_areas` VALUES ('2204', '263', '准格尔旗', '3');
INSERT INTO `blue_areas` VALUES ('2205', '263', '鄂托克前旗', '3');
INSERT INTO `blue_areas` VALUES ('2206', '263', '鄂托克旗', '3');
INSERT INTO `blue_areas` VALUES ('2207', '263', '杭锦旗', '3');
INSERT INTO `blue_areas` VALUES ('2208', '263', '乌审旗', '3');
INSERT INTO `blue_areas` VALUES ('2209', '263', '伊金霍洛旗', '3');
INSERT INTO `blue_areas` VALUES ('2210', '264', '海拉尔区', '3');
INSERT INTO `blue_areas` VALUES ('2211', '264', '莫力达瓦', '3');
INSERT INTO `blue_areas` VALUES ('2212', '264', '满洲里市', '3');
INSERT INTO `blue_areas` VALUES ('2213', '264', '牙克石市', '3');
INSERT INTO `blue_areas` VALUES ('2214', '264', '扎兰屯市', '3');
INSERT INTO `blue_areas` VALUES ('2215', '264', '额尔古纳市', '3');
INSERT INTO `blue_areas` VALUES ('2216', '264', '根河市', '3');
INSERT INTO `blue_areas` VALUES ('2217', '264', '阿荣旗', '3');
INSERT INTO `blue_areas` VALUES ('2218', '264', '鄂伦春自治旗', '3');
INSERT INTO `blue_areas` VALUES ('2219', '264', '鄂温克族自治旗', '3');
INSERT INTO `blue_areas` VALUES ('2220', '264', '陈巴尔虎旗', '3');
INSERT INTO `blue_areas` VALUES ('2221', '264', '新巴尔虎左旗', '3');
INSERT INTO `blue_areas` VALUES ('2222', '264', '新巴尔虎右旗', '3');
INSERT INTO `blue_areas` VALUES ('2223', '265', '科尔沁区', '3');
INSERT INTO `blue_areas` VALUES ('2224', '265', '霍林郭勒市', '3');
INSERT INTO `blue_areas` VALUES ('2225', '265', '科尔沁左翼中旗', '3');
INSERT INTO `blue_areas` VALUES ('2226', '265', '科尔沁左翼后旗', '3');
INSERT INTO `blue_areas` VALUES ('2227', '265', '开鲁县', '3');
INSERT INTO `blue_areas` VALUES ('2228', '265', '库伦旗', '3');
INSERT INTO `blue_areas` VALUES ('2229', '265', '奈曼旗', '3');
INSERT INTO `blue_areas` VALUES ('2230', '265', '扎鲁特旗', '3');
INSERT INTO `blue_areas` VALUES ('2231', '266', '海勃湾区', '3');
INSERT INTO `blue_areas` VALUES ('2232', '266', '乌达区', '3');
INSERT INTO `blue_areas` VALUES ('2233', '266', '海南区', '3');
INSERT INTO `blue_areas` VALUES ('2234', '267', '化德县', '3');
INSERT INTO `blue_areas` VALUES ('2235', '267', '集宁区', '3');
INSERT INTO `blue_areas` VALUES ('2236', '267', '丰镇市', '3');
INSERT INTO `blue_areas` VALUES ('2237', '267', '卓资县', '3');
INSERT INTO `blue_areas` VALUES ('2238', '267', '商都县', '3');
INSERT INTO `blue_areas` VALUES ('2239', '267', '兴和县', '3');
INSERT INTO `blue_areas` VALUES ('2240', '267', '凉城县', '3');
INSERT INTO `blue_areas` VALUES ('2241', '267', '察哈尔右翼前旗', '3');
INSERT INTO `blue_areas` VALUES ('2242', '267', '察哈尔右翼中旗', '3');
INSERT INTO `blue_areas` VALUES ('2243', '267', '察哈尔右翼后旗', '3');
INSERT INTO `blue_areas` VALUES ('2244', '267', '四子王旗', '3');
INSERT INTO `blue_areas` VALUES ('2245', '268', '二连浩特市', '3');
INSERT INTO `blue_areas` VALUES ('2246', '268', '锡林浩特市', '3');
INSERT INTO `blue_areas` VALUES ('2247', '268', '阿巴嘎旗', '3');
INSERT INTO `blue_areas` VALUES ('2248', '268', '苏尼特左旗', '3');
INSERT INTO `blue_areas` VALUES ('2249', '268', '苏尼特右旗', '3');
INSERT INTO `blue_areas` VALUES ('2250', '268', '东乌珠穆沁旗', '3');
INSERT INTO `blue_areas` VALUES ('2251', '268', '西乌珠穆沁旗', '3');
INSERT INTO `blue_areas` VALUES ('2252', '268', '太仆寺旗', '3');
INSERT INTO `blue_areas` VALUES ('2253', '268', '镶黄旗', '3');
INSERT INTO `blue_areas` VALUES ('2254', '268', '正镶白旗', '3');
INSERT INTO `blue_areas` VALUES ('2255', '268', '正蓝旗', '3');
INSERT INTO `blue_areas` VALUES ('2256', '268', '多伦县', '3');
INSERT INTO `blue_areas` VALUES ('2257', '269', '乌兰浩特市', '3');
INSERT INTO `blue_areas` VALUES ('2258', '269', '阿尔山市', '3');
INSERT INTO `blue_areas` VALUES ('2259', '269', '科尔沁右翼前旗', '3');
INSERT INTO `blue_areas` VALUES ('2260', '269', '科尔沁右翼中旗', '3');
INSERT INTO `blue_areas` VALUES ('2261', '269', '扎赉特旗', '3');
INSERT INTO `blue_areas` VALUES ('2262', '269', '突泉县', '3');
INSERT INTO `blue_areas` VALUES ('2263', '270', '西夏区', '3');
INSERT INTO `blue_areas` VALUES ('2264', '270', '金凤区', '3');
INSERT INTO `blue_areas` VALUES ('2265', '270', '兴庆区', '3');
INSERT INTO `blue_areas` VALUES ('2266', '270', '灵武市', '3');
INSERT INTO `blue_areas` VALUES ('2267', '270', '永宁县', '3');
INSERT INTO `blue_areas` VALUES ('2268', '270', '贺兰县', '3');
INSERT INTO `blue_areas` VALUES ('2269', '271', '原州区', '3');
INSERT INTO `blue_areas` VALUES ('2270', '271', '海原县', '3');
INSERT INTO `blue_areas` VALUES ('2271', '271', '西吉县', '3');
INSERT INTO `blue_areas` VALUES ('2272', '271', '隆德县', '3');
INSERT INTO `blue_areas` VALUES ('2273', '271', '泾源县', '3');
INSERT INTO `blue_areas` VALUES ('2274', '271', '彭阳县', '3');
INSERT INTO `blue_areas` VALUES ('2275', '272', '惠农县', '3');
INSERT INTO `blue_areas` VALUES ('2276', '272', '大武口区', '3');
INSERT INTO `blue_areas` VALUES ('2277', '272', '惠农区', '3');
INSERT INTO `blue_areas` VALUES ('2278', '272', '陶乐县', '3');
INSERT INTO `blue_areas` VALUES ('2279', '272', '平罗县', '3');
INSERT INTO `blue_areas` VALUES ('2280', '273', '利通区', '3');
INSERT INTO `blue_areas` VALUES ('2281', '273', '中卫县', '3');
INSERT INTO `blue_areas` VALUES ('2282', '273', '青铜峡市', '3');
INSERT INTO `blue_areas` VALUES ('2283', '273', '中宁县', '3');
INSERT INTO `blue_areas` VALUES ('2284', '273', '盐池县', '3');
INSERT INTO `blue_areas` VALUES ('2285', '273', '同心县', '3');
INSERT INTO `blue_areas` VALUES ('2286', '274', '沙坡头区', '3');
INSERT INTO `blue_areas` VALUES ('2287', '274', '海原县', '3');
INSERT INTO `blue_areas` VALUES ('2288', '274', '中宁县', '3');
INSERT INTO `blue_areas` VALUES ('2289', '275', '城中区', '3');
INSERT INTO `blue_areas` VALUES ('2290', '275', '城东区', '3');
INSERT INTO `blue_areas` VALUES ('2291', '275', '城西区', '3');
INSERT INTO `blue_areas` VALUES ('2292', '275', '城北区', '3');
INSERT INTO `blue_areas` VALUES ('2293', '275', '湟中县', '3');
INSERT INTO `blue_areas` VALUES ('2294', '275', '湟源县', '3');
INSERT INTO `blue_areas` VALUES ('2295', '275', '大通', '3');
INSERT INTO `blue_areas` VALUES ('2296', '276', '玛沁县', '3');
INSERT INTO `blue_areas` VALUES ('2297', '276', '班玛县', '3');
INSERT INTO `blue_areas` VALUES ('2298', '276', '甘德县', '3');
INSERT INTO `blue_areas` VALUES ('2299', '276', '达日县', '3');
INSERT INTO `blue_areas` VALUES ('2300', '276', '久治县', '3');
INSERT INTO `blue_areas` VALUES ('2301', '276', '玛多县', '3');
INSERT INTO `blue_areas` VALUES ('2302', '277', '海晏县', '3');
INSERT INTO `blue_areas` VALUES ('2303', '277', '祁连县', '3');
INSERT INTO `blue_areas` VALUES ('2304', '277', '刚察县', '3');
INSERT INTO `blue_areas` VALUES ('2305', '277', '门源', '3');
INSERT INTO `blue_areas` VALUES ('2306', '278', '平安县', '3');
INSERT INTO `blue_areas` VALUES ('2307', '278', '乐都县', '3');
INSERT INTO `blue_areas` VALUES ('2308', '278', '民和', '3');
INSERT INTO `blue_areas` VALUES ('2309', '278', '互助', '3');
INSERT INTO `blue_areas` VALUES ('2310', '278', '化隆', '3');
INSERT INTO `blue_areas` VALUES ('2311', '278', '循化', '3');
INSERT INTO `blue_areas` VALUES ('2312', '279', '共和县', '3');
INSERT INTO `blue_areas` VALUES ('2313', '279', '同德县', '3');
INSERT INTO `blue_areas` VALUES ('2314', '279', '贵德县', '3');
INSERT INTO `blue_areas` VALUES ('2315', '279', '兴海县', '3');
INSERT INTO `blue_areas` VALUES ('2316', '279', '贵南县', '3');
INSERT INTO `blue_areas` VALUES ('2317', '280', '德令哈市', '3');
INSERT INTO `blue_areas` VALUES ('2318', '280', '格尔木市', '3');
INSERT INTO `blue_areas` VALUES ('2319', '280', '乌兰县', '3');
INSERT INTO `blue_areas` VALUES ('2320', '280', '都兰县', '3');
INSERT INTO `blue_areas` VALUES ('2321', '280', '天峻县', '3');
INSERT INTO `blue_areas` VALUES ('2322', '281', '同仁县', '3');
INSERT INTO `blue_areas` VALUES ('2323', '281', '尖扎县', '3');
INSERT INTO `blue_areas` VALUES ('2324', '281', '泽库县', '3');
INSERT INTO `blue_areas` VALUES ('2325', '281', '河南蒙古族自治县', '3');
INSERT INTO `blue_areas` VALUES ('2326', '282', '玉树县', '3');
INSERT INTO `blue_areas` VALUES ('2327', '282', '杂多县', '3');
INSERT INTO `blue_areas` VALUES ('2328', '282', '称多县', '3');
INSERT INTO `blue_areas` VALUES ('2329', '282', '治多县', '3');
INSERT INTO `blue_areas` VALUES ('2330', '282', '囊谦县', '3');
INSERT INTO `blue_areas` VALUES ('2331', '282', '曲麻莱县', '3');
INSERT INTO `blue_areas` VALUES ('2332', '283', '市中区', '3');
INSERT INTO `blue_areas` VALUES ('2333', '283', '历下区', '3');
INSERT INTO `blue_areas` VALUES ('2334', '283', '天桥区', '3');
INSERT INTO `blue_areas` VALUES ('2335', '283', '槐荫区', '3');
INSERT INTO `blue_areas` VALUES ('2336', '283', '历城区', '3');
INSERT INTO `blue_areas` VALUES ('2337', '283', '长清区', '3');
INSERT INTO `blue_areas` VALUES ('2338', '283', '章丘市', '3');
INSERT INTO `blue_areas` VALUES ('2339', '283', '平阴县', '3');
INSERT INTO `blue_areas` VALUES ('2340', '283', '济阳县', '3');
INSERT INTO `blue_areas` VALUES ('2341', '283', '商河县', '3');
INSERT INTO `blue_areas` VALUES ('2342', '284', '市南区', '3');
INSERT INTO `blue_areas` VALUES ('2343', '284', '市北区', '3');
INSERT INTO `blue_areas` VALUES ('2344', '284', '城阳区', '3');
INSERT INTO `blue_areas` VALUES ('2345', '284', '四方区', '3');
INSERT INTO `blue_areas` VALUES ('2346', '284', '李沧区', '3');
INSERT INTO `blue_areas` VALUES ('2347', '284', '黄岛区', '3');
INSERT INTO `blue_areas` VALUES ('2348', '284', '崂山区', '3');
INSERT INTO `blue_areas` VALUES ('2349', '284', '胶州市', '3');
INSERT INTO `blue_areas` VALUES ('2350', '284', '即墨市', '3');
INSERT INTO `blue_areas` VALUES ('2351', '284', '平度市', '3');
INSERT INTO `blue_areas` VALUES ('2352', '284', '胶南市', '3');
INSERT INTO `blue_areas` VALUES ('2353', '284', '莱西市', '3');
INSERT INTO `blue_areas` VALUES ('2354', '285', '滨城区', '3');
INSERT INTO `blue_areas` VALUES ('2355', '285', '惠民县', '3');
INSERT INTO `blue_areas` VALUES ('2356', '285', '阳信县', '3');
INSERT INTO `blue_areas` VALUES ('2357', '285', '无棣县', '3');
INSERT INTO `blue_areas` VALUES ('2358', '285', '沾化县', '3');
INSERT INTO `blue_areas` VALUES ('2359', '285', '博兴县', '3');
INSERT INTO `blue_areas` VALUES ('2360', '285', '邹平县', '3');
INSERT INTO `blue_areas` VALUES ('2361', '286', '德城区', '3');
INSERT INTO `blue_areas` VALUES ('2362', '286', '陵县', '3');
INSERT INTO `blue_areas` VALUES ('2363', '286', '乐陵市', '3');
INSERT INTO `blue_areas` VALUES ('2364', '286', '禹城市', '3');
INSERT INTO `blue_areas` VALUES ('2365', '286', '宁津县', '3');
INSERT INTO `blue_areas` VALUES ('2366', '286', '庆云县', '3');
INSERT INTO `blue_areas` VALUES ('2367', '286', '临邑县', '3');
INSERT INTO `blue_areas` VALUES ('2368', '286', '齐河县', '3');
INSERT INTO `blue_areas` VALUES ('2369', '286', '平原县', '3');
INSERT INTO `blue_areas` VALUES ('2370', '286', '夏津县', '3');
INSERT INTO `blue_areas` VALUES ('2371', '286', '武城县', '3');
INSERT INTO `blue_areas` VALUES ('2372', '287', '东营区', '3');
INSERT INTO `blue_areas` VALUES ('2373', '287', '河口区', '3');
INSERT INTO `blue_areas` VALUES ('2374', '287', '垦利县', '3');
INSERT INTO `blue_areas` VALUES ('2375', '287', '利津县', '3');
INSERT INTO `blue_areas` VALUES ('2376', '287', '广饶县', '3');
INSERT INTO `blue_areas` VALUES ('2377', '288', '牡丹区', '3');
INSERT INTO `blue_areas` VALUES ('2378', '288', '曹县', '3');
INSERT INTO `blue_areas` VALUES ('2379', '288', '单县', '3');
INSERT INTO `blue_areas` VALUES ('2380', '288', '成武县', '3');
INSERT INTO `blue_areas` VALUES ('2381', '288', '巨野县', '3');
INSERT INTO `blue_areas` VALUES ('2382', '288', '郓城县', '3');
INSERT INTO `blue_areas` VALUES ('2383', '288', '鄄城县', '3');
INSERT INTO `blue_areas` VALUES ('2384', '288', '定陶县', '3');
INSERT INTO `blue_areas` VALUES ('2385', '288', '东明县', '3');
INSERT INTO `blue_areas` VALUES ('2386', '289', '市中区', '3');
INSERT INTO `blue_areas` VALUES ('2387', '289', '任城区', '3');
INSERT INTO `blue_areas` VALUES ('2388', '289', '曲阜市', '3');
INSERT INTO `blue_areas` VALUES ('2389', '289', '兖州市', '3');
INSERT INTO `blue_areas` VALUES ('2390', '289', '邹城市', '3');
INSERT INTO `blue_areas` VALUES ('2391', '289', '微山县', '3');
INSERT INTO `blue_areas` VALUES ('2392', '289', '鱼台县', '3');
INSERT INTO `blue_areas` VALUES ('2393', '289', '金乡县', '3');
INSERT INTO `blue_areas` VALUES ('2394', '289', '嘉祥县', '3');
INSERT INTO `blue_areas` VALUES ('2395', '289', '汶上县', '3');
INSERT INTO `blue_areas` VALUES ('2396', '289', '泗水县', '3');
INSERT INTO `blue_areas` VALUES ('2397', '289', '梁山县', '3');
INSERT INTO `blue_areas` VALUES ('2398', '290', '莱城区', '3');
INSERT INTO `blue_areas` VALUES ('2399', '290', '钢城区', '3');
INSERT INTO `blue_areas` VALUES ('2400', '291', '东昌府区', '3');
INSERT INTO `blue_areas` VALUES ('2401', '291', '临清市', '3');
INSERT INTO `blue_areas` VALUES ('2402', '291', '阳谷县', '3');
INSERT INTO `blue_areas` VALUES ('2403', '291', '莘县', '3');
INSERT INTO `blue_areas` VALUES ('2404', '291', '茌平县', '3');
INSERT INTO `blue_areas` VALUES ('2405', '291', '东阿县', '3');
INSERT INTO `blue_areas` VALUES ('2406', '291', '冠县', '3');
INSERT INTO `blue_areas` VALUES ('2407', '291', '高唐县', '3');
INSERT INTO `blue_areas` VALUES ('2408', '292', '兰山区', '3');
INSERT INTO `blue_areas` VALUES ('2409', '292', '罗庄区', '3');
INSERT INTO `blue_areas` VALUES ('2410', '292', '河东区', '3');
INSERT INTO `blue_areas` VALUES ('2411', '292', '沂南县', '3');
INSERT INTO `blue_areas` VALUES ('2412', '292', '郯城县', '3');
INSERT INTO `blue_areas` VALUES ('2413', '292', '沂水县', '3');
INSERT INTO `blue_areas` VALUES ('2414', '292', '苍山县', '3');
INSERT INTO `blue_areas` VALUES ('2415', '292', '费县', '3');
INSERT INTO `blue_areas` VALUES ('2416', '292', '平邑县', '3');
INSERT INTO `blue_areas` VALUES ('2417', '292', '莒南县', '3');
INSERT INTO `blue_areas` VALUES ('2418', '292', '蒙阴县', '3');
INSERT INTO `blue_areas` VALUES ('2419', '292', '临沭县', '3');
INSERT INTO `blue_areas` VALUES ('2420', '293', '东港区', '3');
INSERT INTO `blue_areas` VALUES ('2421', '293', '岚山区', '3');
INSERT INTO `blue_areas` VALUES ('2422', '293', '五莲县', '3');
INSERT INTO `blue_areas` VALUES ('2423', '293', '莒县', '3');
INSERT INTO `blue_areas` VALUES ('2424', '294', '泰山区', '3');
INSERT INTO `blue_areas` VALUES ('2425', '294', '岱岳区', '3');
INSERT INTO `blue_areas` VALUES ('2426', '294', '新泰市', '3');
INSERT INTO `blue_areas` VALUES ('2427', '294', '肥城市', '3');
INSERT INTO `blue_areas` VALUES ('2428', '294', '宁阳县', '3');
INSERT INTO `blue_areas` VALUES ('2429', '294', '东平县', '3');
INSERT INTO `blue_areas` VALUES ('2430', '295', '荣成市', '3');
INSERT INTO `blue_areas` VALUES ('2431', '295', '乳山市', '3');
INSERT INTO `blue_areas` VALUES ('2432', '295', '环翠区', '3');
INSERT INTO `blue_areas` VALUES ('2433', '295', '文登市', '3');
INSERT INTO `blue_areas` VALUES ('2434', '296', '潍城区', '3');
INSERT INTO `blue_areas` VALUES ('2435', '296', '寒亭区', '3');
INSERT INTO `blue_areas` VALUES ('2436', '296', '坊子区', '3');
INSERT INTO `blue_areas` VALUES ('2437', '296', '奎文区', '3');
INSERT INTO `blue_areas` VALUES ('2438', '296', '青州市', '3');
INSERT INTO `blue_areas` VALUES ('2439', '296', '诸城市', '3');
INSERT INTO `blue_areas` VALUES ('2440', '296', '寿光市', '3');
INSERT INTO `blue_areas` VALUES ('2441', '296', '安丘市', '3');
INSERT INTO `blue_areas` VALUES ('2442', '296', '高密市', '3');
INSERT INTO `blue_areas` VALUES ('2443', '296', '昌邑市', '3');
INSERT INTO `blue_areas` VALUES ('2444', '296', '临朐县', '3');
INSERT INTO `blue_areas` VALUES ('2445', '296', '昌乐县', '3');
INSERT INTO `blue_areas` VALUES ('2446', '297', '芝罘区', '3');
INSERT INTO `blue_areas` VALUES ('2447', '297', '福山区', '3');
INSERT INTO `blue_areas` VALUES ('2448', '297', '牟平区', '3');
INSERT INTO `blue_areas` VALUES ('2449', '297', '莱山区', '3');
INSERT INTO `blue_areas` VALUES ('2450', '297', '开发区', '3');
INSERT INTO `blue_areas` VALUES ('2451', '297', '龙口市', '3');
INSERT INTO `blue_areas` VALUES ('2452', '297', '莱阳市', '3');
INSERT INTO `blue_areas` VALUES ('2453', '297', '莱州市', '3');
INSERT INTO `blue_areas` VALUES ('2454', '297', '蓬莱市', '3');
INSERT INTO `blue_areas` VALUES ('2455', '297', '招远市', '3');
INSERT INTO `blue_areas` VALUES ('2456', '297', '栖霞市', '3');
INSERT INTO `blue_areas` VALUES ('2457', '297', '海阳市', '3');
INSERT INTO `blue_areas` VALUES ('2458', '297', '长岛县', '3');
INSERT INTO `blue_areas` VALUES ('2459', '298', '市中区', '3');
INSERT INTO `blue_areas` VALUES ('2460', '298', '山亭区', '3');
INSERT INTO `blue_areas` VALUES ('2461', '298', '峄城区', '3');
INSERT INTO `blue_areas` VALUES ('2462', '298', '台儿庄区', '3');
INSERT INTO `blue_areas` VALUES ('2463', '298', '薛城区', '3');
INSERT INTO `blue_areas` VALUES ('2464', '298', '滕州市', '3');
INSERT INTO `blue_areas` VALUES ('2465', '299', '张店区', '3');
INSERT INTO `blue_areas` VALUES ('2466', '299', '临淄区', '3');
INSERT INTO `blue_areas` VALUES ('2467', '299', '淄川区', '3');
INSERT INTO `blue_areas` VALUES ('2468', '299', '博山区', '3');
INSERT INTO `blue_areas` VALUES ('2469', '299', '周村区', '3');
INSERT INTO `blue_areas` VALUES ('2470', '299', '桓台县', '3');
INSERT INTO `blue_areas` VALUES ('2471', '299', '高青县', '3');
INSERT INTO `blue_areas` VALUES ('2472', '299', '沂源县', '3');
INSERT INTO `blue_areas` VALUES ('2473', '300', '杏花岭区', '3');
INSERT INTO `blue_areas` VALUES ('2474', '300', '小店区', '3');
INSERT INTO `blue_areas` VALUES ('2475', '300', '迎泽区', '3');
INSERT INTO `blue_areas` VALUES ('2476', '300', '尖草坪区', '3');
INSERT INTO `blue_areas` VALUES ('2477', '300', '万柏林区', '3');
INSERT INTO `blue_areas` VALUES ('2478', '300', '晋源区', '3');
INSERT INTO `blue_areas` VALUES ('2479', '300', '高新开发区', '3');
INSERT INTO `blue_areas` VALUES ('2480', '300', '民营经济开发区', '3');
INSERT INTO `blue_areas` VALUES ('2481', '300', '经济技术开发区', '3');
INSERT INTO `blue_areas` VALUES ('2482', '300', '清徐县', '3');
INSERT INTO `blue_areas` VALUES ('2483', '300', '阳曲县', '3');
INSERT INTO `blue_areas` VALUES ('2484', '300', '娄烦县', '3');
INSERT INTO `blue_areas` VALUES ('2485', '300', '古交市', '3');
INSERT INTO `blue_areas` VALUES ('2486', '301', '城区', '3');
INSERT INTO `blue_areas` VALUES ('2487', '301', '郊区', '3');
INSERT INTO `blue_areas` VALUES ('2488', '301', '沁县', '3');
INSERT INTO `blue_areas` VALUES ('2489', '301', '潞城市', '3');
INSERT INTO `blue_areas` VALUES ('2490', '301', '长治县', '3');
INSERT INTO `blue_areas` VALUES ('2491', '301', '襄垣县', '3');
INSERT INTO `blue_areas` VALUES ('2492', '301', '屯留县', '3');
INSERT INTO `blue_areas` VALUES ('2493', '301', '平顺县', '3');
INSERT INTO `blue_areas` VALUES ('2494', '301', '黎城县', '3');
INSERT INTO `blue_areas` VALUES ('2495', '301', '壶关县', '3');
INSERT INTO `blue_areas` VALUES ('2496', '301', '长子县', '3');
INSERT INTO `blue_areas` VALUES ('2497', '301', '武乡县', '3');
INSERT INTO `blue_areas` VALUES ('2498', '301', '沁源县', '3');
INSERT INTO `blue_areas` VALUES ('2499', '302', '城区', '3');
INSERT INTO `blue_areas` VALUES ('2500', '302', '矿区', '3');
INSERT INTO `blue_areas` VALUES ('2501', '302', '南郊区', '3');
INSERT INTO `blue_areas` VALUES ('2502', '302', '新荣区', '3');
INSERT INTO `blue_areas` VALUES ('2503', '302', '阳高县', '3');
INSERT INTO `blue_areas` VALUES ('2504', '302', '天镇县', '3');
INSERT INTO `blue_areas` VALUES ('2505', '302', '广灵县', '3');
INSERT INTO `blue_areas` VALUES ('2506', '302', '灵丘县', '3');
INSERT INTO `blue_areas` VALUES ('2507', '302', '浑源县', '3');
INSERT INTO `blue_areas` VALUES ('2508', '302', '左云县', '3');
INSERT INTO `blue_areas` VALUES ('2509', '302', '大同县', '3');
INSERT INTO `blue_areas` VALUES ('2510', '303', '城区', '3');
INSERT INTO `blue_areas` VALUES ('2511', '303', '高平市', '3');
INSERT INTO `blue_areas` VALUES ('2512', '303', '沁水县', '3');
INSERT INTO `blue_areas` VALUES ('2513', '303', '阳城县', '3');
INSERT INTO `blue_areas` VALUES ('2514', '303', '陵川县', '3');
INSERT INTO `blue_areas` VALUES ('2515', '303', '泽州县', '3');
INSERT INTO `blue_areas` VALUES ('2516', '304', '榆次区', '3');
INSERT INTO `blue_areas` VALUES ('2517', '304', '介休市', '3');
INSERT INTO `blue_areas` VALUES ('2518', '304', '榆社县', '3');
INSERT INTO `blue_areas` VALUES ('2519', '304', '左权县', '3');
INSERT INTO `blue_areas` VALUES ('2520', '304', '和顺县', '3');
INSERT INTO `blue_areas` VALUES ('2521', '304', '昔阳县', '3');
INSERT INTO `blue_areas` VALUES ('2522', '304', '寿阳县', '3');
INSERT INTO `blue_areas` VALUES ('2523', '304', '太谷县', '3');
INSERT INTO `blue_areas` VALUES ('2524', '304', '祁县', '3');
INSERT INTO `blue_areas` VALUES ('2525', '304', '平遥县', '3');
INSERT INTO `blue_areas` VALUES ('2526', '304', '灵石县', '3');
INSERT INTO `blue_areas` VALUES ('2527', '305', '尧都区', '3');
INSERT INTO `blue_areas` VALUES ('2528', '305', '侯马市', '3');
INSERT INTO `blue_areas` VALUES ('2529', '305', '霍州市', '3');
INSERT INTO `blue_areas` VALUES ('2530', '305', '曲沃县', '3');
INSERT INTO `blue_areas` VALUES ('2531', '305', '翼城县', '3');
INSERT INTO `blue_areas` VALUES ('2532', '305', '襄汾县', '3');
INSERT INTO `blue_areas` VALUES ('2533', '305', '洪洞县', '3');
INSERT INTO `blue_areas` VALUES ('2534', '305', '吉县', '3');
INSERT INTO `blue_areas` VALUES ('2535', '305', '安泽县', '3');
INSERT INTO `blue_areas` VALUES ('2536', '305', '浮山县', '3');
INSERT INTO `blue_areas` VALUES ('2537', '305', '古县', '3');
INSERT INTO `blue_areas` VALUES ('2538', '305', '乡宁县', '3');
INSERT INTO `blue_areas` VALUES ('2539', '305', '大宁县', '3');
INSERT INTO `blue_areas` VALUES ('2540', '305', '隰县', '3');
INSERT INTO `blue_areas` VALUES ('2541', '305', '永和县', '3');
INSERT INTO `blue_areas` VALUES ('2542', '305', '蒲县', '3');
INSERT INTO `blue_areas` VALUES ('2543', '305', '汾西县', '3');
INSERT INTO `blue_areas` VALUES ('2544', '306', '离石市', '3');
INSERT INTO `blue_areas` VALUES ('2545', '306', '离石区', '3');
INSERT INTO `blue_areas` VALUES ('2546', '306', '孝义市', '3');
INSERT INTO `blue_areas` VALUES ('2547', '306', '汾阳市', '3');
INSERT INTO `blue_areas` VALUES ('2548', '306', '文水县', '3');
INSERT INTO `blue_areas` VALUES ('2549', '306', '交城县', '3');
INSERT INTO `blue_areas` VALUES ('2550', '306', '兴县', '3');
INSERT INTO `blue_areas` VALUES ('2551', '306', '临县', '3');
INSERT INTO `blue_areas` VALUES ('2552', '306', '柳林县', '3');
INSERT INTO `blue_areas` VALUES ('2553', '306', '石楼县', '3');
INSERT INTO `blue_areas` VALUES ('2554', '306', '岚县', '3');
INSERT INTO `blue_areas` VALUES ('2555', '306', '方山县', '3');
INSERT INTO `blue_areas` VALUES ('2556', '306', '中阳县', '3');
INSERT INTO `blue_areas` VALUES ('2557', '306', '交口县', '3');
INSERT INTO `blue_areas` VALUES ('2558', '307', '朔城区', '3');
INSERT INTO `blue_areas` VALUES ('2559', '307', '平鲁区', '3');
INSERT INTO `blue_areas` VALUES ('2560', '307', '山阴县', '3');
INSERT INTO `blue_areas` VALUES ('2561', '307', '应县', '3');
INSERT INTO `blue_areas` VALUES ('2562', '307', '右玉县', '3');
INSERT INTO `blue_areas` VALUES ('2563', '307', '怀仁县', '3');
INSERT INTO `blue_areas` VALUES ('2564', '308', '忻府区', '3');
INSERT INTO `blue_areas` VALUES ('2565', '308', '原平市', '3');
INSERT INTO `blue_areas` VALUES ('2566', '308', '定襄县', '3');
INSERT INTO `blue_areas` VALUES ('2567', '308', '五台县', '3');
INSERT INTO `blue_areas` VALUES ('2568', '308', '代县', '3');
INSERT INTO `blue_areas` VALUES ('2569', '308', '繁峙县', '3');
INSERT INTO `blue_areas` VALUES ('2570', '308', '宁武县', '3');
INSERT INTO `blue_areas` VALUES ('2571', '308', '静乐县', '3');
INSERT INTO `blue_areas` VALUES ('2572', '308', '神池县', '3');
INSERT INTO `blue_areas` VALUES ('2573', '308', '五寨县', '3');
INSERT INTO `blue_areas` VALUES ('2574', '308', '岢岚县', '3');
INSERT INTO `blue_areas` VALUES ('2575', '308', '河曲县', '3');
INSERT INTO `blue_areas` VALUES ('2576', '308', '保德县', '3');
INSERT INTO `blue_areas` VALUES ('2577', '308', '偏关县', '3');
INSERT INTO `blue_areas` VALUES ('2578', '309', '城区', '3');
INSERT INTO `blue_areas` VALUES ('2579', '309', '矿区', '3');
INSERT INTO `blue_areas` VALUES ('2580', '309', '郊区', '3');
INSERT INTO `blue_areas` VALUES ('2581', '309', '平定县', '3');
INSERT INTO `blue_areas` VALUES ('2582', '309', '盂县', '3');
INSERT INTO `blue_areas` VALUES ('2583', '310', '盐湖区', '3');
INSERT INTO `blue_areas` VALUES ('2584', '310', '永济市', '3');
INSERT INTO `blue_areas` VALUES ('2585', '310', '河津市', '3');
INSERT INTO `blue_areas` VALUES ('2586', '310', '临猗县', '3');
INSERT INTO `blue_areas` VALUES ('2587', '310', '万荣县', '3');
INSERT INTO `blue_areas` VALUES ('2588', '310', '闻喜县', '3');
INSERT INTO `blue_areas` VALUES ('2589', '310', '稷山县', '3');
INSERT INTO `blue_areas` VALUES ('2590', '310', '新绛县', '3');
INSERT INTO `blue_areas` VALUES ('2591', '310', '绛县', '3');
INSERT INTO `blue_areas` VALUES ('2592', '310', '垣曲县', '3');
INSERT INTO `blue_areas` VALUES ('2593', '310', '夏县', '3');
INSERT INTO `blue_areas` VALUES ('2594', '310', '平陆县', '3');
INSERT INTO `blue_areas` VALUES ('2595', '310', '芮城县', '3');
INSERT INTO `blue_areas` VALUES ('2596', '311', '莲湖区', '3');
INSERT INTO `blue_areas` VALUES ('2597', '311', '新城区', '3');
INSERT INTO `blue_areas` VALUES ('2598', '311', '碑林区', '3');
INSERT INTO `blue_areas` VALUES ('2599', '311', '雁塔区', '3');
INSERT INTO `blue_areas` VALUES ('2600', '311', '灞桥区', '3');
INSERT INTO `blue_areas` VALUES ('2601', '311', '未央区', '3');
INSERT INTO `blue_areas` VALUES ('2602', '311', '阎良区', '3');
INSERT INTO `blue_areas` VALUES ('2603', '311', '临潼区', '3');
INSERT INTO `blue_areas` VALUES ('2604', '311', '长安区', '3');
INSERT INTO `blue_areas` VALUES ('2605', '311', '蓝田县', '3');
INSERT INTO `blue_areas` VALUES ('2606', '311', '周至县', '3');
INSERT INTO `blue_areas` VALUES ('2607', '311', '户县', '3');
INSERT INTO `blue_areas` VALUES ('2608', '311', '高陵县', '3');
INSERT INTO `blue_areas` VALUES ('2609', '312', '汉滨区', '3');
INSERT INTO `blue_areas` VALUES ('2610', '312', '汉阴县', '3');
INSERT INTO `blue_areas` VALUES ('2611', '312', '石泉县', '3');
INSERT INTO `blue_areas` VALUES ('2612', '312', '宁陕县', '3');
INSERT INTO `blue_areas` VALUES ('2613', '312', '紫阳县', '3');
INSERT INTO `blue_areas` VALUES ('2614', '312', '岚皋县', '3');
INSERT INTO `blue_areas` VALUES ('2615', '312', '平利县', '3');
INSERT INTO `blue_areas` VALUES ('2616', '312', '镇坪县', '3');
INSERT INTO `blue_areas` VALUES ('2617', '312', '旬阳县', '3');
INSERT INTO `blue_areas` VALUES ('2618', '312', '白河县', '3');
INSERT INTO `blue_areas` VALUES ('2619', '313', '陈仓区', '3');
INSERT INTO `blue_areas` VALUES ('2620', '313', '渭滨区', '3');
INSERT INTO `blue_areas` VALUES ('2621', '313', '金台区', '3');
INSERT INTO `blue_areas` VALUES ('2622', '313', '凤翔县', '3');
INSERT INTO `blue_areas` VALUES ('2623', '313', '岐山县', '3');
INSERT INTO `blue_areas` VALUES ('2624', '313', '扶风县', '3');
INSERT INTO `blue_areas` VALUES ('2625', '313', '眉县', '3');
INSERT INTO `blue_areas` VALUES ('2626', '313', '陇县', '3');
INSERT INTO `blue_areas` VALUES ('2627', '313', '千阳县', '3');
INSERT INTO `blue_areas` VALUES ('2628', '313', '麟游县', '3');
INSERT INTO `blue_areas` VALUES ('2629', '313', '凤县', '3');
INSERT INTO `blue_areas` VALUES ('2630', '313', '太白县', '3');
INSERT INTO `blue_areas` VALUES ('2631', '314', '汉台区', '3');
INSERT INTO `blue_areas` VALUES ('2632', '314', '南郑县', '3');
INSERT INTO `blue_areas` VALUES ('2633', '314', '城固县', '3');
INSERT INTO `blue_areas` VALUES ('2634', '314', '洋县', '3');
INSERT INTO `blue_areas` VALUES ('2635', '314', '西乡县', '3');
INSERT INTO `blue_areas` VALUES ('2636', '314', '勉县', '3');
INSERT INTO `blue_areas` VALUES ('2637', '314', '宁强县', '3');
INSERT INTO `blue_areas` VALUES ('2638', '314', '略阳县', '3');
INSERT INTO `blue_areas` VALUES ('2639', '314', '镇巴县', '3');
INSERT INTO `blue_areas` VALUES ('2640', '314', '留坝县', '3');
INSERT INTO `blue_areas` VALUES ('2641', '314', '佛坪县', '3');
INSERT INTO `blue_areas` VALUES ('2642', '315', '商州区', '3');
INSERT INTO `blue_areas` VALUES ('2643', '315', '洛南县', '3');
INSERT INTO `blue_areas` VALUES ('2644', '315', '丹凤县', '3');
INSERT INTO `blue_areas` VALUES ('2645', '315', '商南县', '3');
INSERT INTO `blue_areas` VALUES ('2646', '315', '山阳县', '3');
INSERT INTO `blue_areas` VALUES ('2647', '315', '镇安县', '3');
INSERT INTO `blue_areas` VALUES ('2648', '315', '柞水县', '3');
INSERT INTO `blue_areas` VALUES ('2649', '316', '耀州区', '3');
INSERT INTO `blue_areas` VALUES ('2650', '316', '王益区', '3');
INSERT INTO `blue_areas` VALUES ('2651', '316', '印台区', '3');
INSERT INTO `blue_areas` VALUES ('2652', '316', '宜君县', '3');
INSERT INTO `blue_areas` VALUES ('2653', '317', '临渭区', '3');
INSERT INTO `blue_areas` VALUES ('2654', '317', '韩城市', '3');
INSERT INTO `blue_areas` VALUES ('2655', '317', '华阴市', '3');
INSERT INTO `blue_areas` VALUES ('2656', '317', '华县', '3');
INSERT INTO `blue_areas` VALUES ('2657', '317', '潼关县', '3');
INSERT INTO `blue_areas` VALUES ('2658', '317', '大荔县', '3');
INSERT INTO `blue_areas` VALUES ('2659', '317', '合阳县', '3');
INSERT INTO `blue_areas` VALUES ('2660', '317', '澄城县', '3');
INSERT INTO `blue_areas` VALUES ('2661', '317', '蒲城县', '3');
INSERT INTO `blue_areas` VALUES ('2662', '317', '白水县', '3');
INSERT INTO `blue_areas` VALUES ('2663', '317', '富平县', '3');
INSERT INTO `blue_areas` VALUES ('2664', '318', '秦都区', '3');
INSERT INTO `blue_areas` VALUES ('2665', '318', '渭城区', '3');
INSERT INTO `blue_areas` VALUES ('2666', '318', '杨陵区', '3');
INSERT INTO `blue_areas` VALUES ('2667', '318', '兴平市', '3');
INSERT INTO `blue_areas` VALUES ('2668', '318', '三原县', '3');
INSERT INTO `blue_areas` VALUES ('2669', '318', '泾阳县', '3');
INSERT INTO `blue_areas` VALUES ('2670', '318', '乾县', '3');
INSERT INTO `blue_areas` VALUES ('2671', '318', '礼泉县', '3');
INSERT INTO `blue_areas` VALUES ('2672', '318', '永寿县', '3');
INSERT INTO `blue_areas` VALUES ('2673', '318', '彬县', '3');
INSERT INTO `blue_areas` VALUES ('2674', '318', '长武县', '3');
INSERT INTO `blue_areas` VALUES ('2675', '318', '旬邑县', '3');
INSERT INTO `blue_areas` VALUES ('2676', '318', '淳化县', '3');
INSERT INTO `blue_areas` VALUES ('2677', '318', '武功县', '3');
INSERT INTO `blue_areas` VALUES ('2678', '319', '吴起县', '3');
INSERT INTO `blue_areas` VALUES ('2679', '319', '宝塔区', '3');
INSERT INTO `blue_areas` VALUES ('2680', '319', '延长县', '3');
INSERT INTO `blue_areas` VALUES ('2681', '319', '延川县', '3');
INSERT INTO `blue_areas` VALUES ('2682', '319', '子长县', '3');
INSERT INTO `blue_areas` VALUES ('2683', '319', '安塞县', '3');
INSERT INTO `blue_areas` VALUES ('2684', '319', '志丹县', '3');
INSERT INTO `blue_areas` VALUES ('2685', '319', '甘泉县', '3');
INSERT INTO `blue_areas` VALUES ('2686', '319', '富县', '3');
INSERT INTO `blue_areas` VALUES ('2687', '319', '洛川县', '3');
INSERT INTO `blue_areas` VALUES ('2688', '319', '宜川县', '3');
INSERT INTO `blue_areas` VALUES ('2689', '319', '黄龙县', '3');
INSERT INTO `blue_areas` VALUES ('2690', '319', '黄陵县', '3');
INSERT INTO `blue_areas` VALUES ('2691', '320', '榆阳区', '3');
INSERT INTO `blue_areas` VALUES ('2692', '320', '神木县', '3');
INSERT INTO `blue_areas` VALUES ('2693', '320', '府谷县', '3');
INSERT INTO `blue_areas` VALUES ('2694', '320', '横山县', '3');
INSERT INTO `blue_areas` VALUES ('2695', '320', '靖边县', '3');
INSERT INTO `blue_areas` VALUES ('2696', '320', '定边县', '3');
INSERT INTO `blue_areas` VALUES ('2697', '320', '绥德县', '3');
INSERT INTO `blue_areas` VALUES ('2698', '320', '米脂县', '3');
INSERT INTO `blue_areas` VALUES ('2699', '320', '佳县', '3');
INSERT INTO `blue_areas` VALUES ('2700', '320', '吴堡县', '3');
INSERT INTO `blue_areas` VALUES ('2701', '320', '清涧县', '3');
INSERT INTO `blue_areas` VALUES ('2702', '320', '子洲县', '3');
INSERT INTO `blue_areas` VALUES ('2703', '321', '长宁区', '3');
INSERT INTO `blue_areas` VALUES ('2704', '321', '闸北区', '3');
INSERT INTO `blue_areas` VALUES ('2705', '321', '闵行区', '3');
INSERT INTO `blue_areas` VALUES ('2706', '321', '徐汇区', '3');
INSERT INTO `blue_areas` VALUES ('2707', '321', '浦东新区', '3');
INSERT INTO `blue_areas` VALUES ('2708', '321', '杨浦区', '3');
INSERT INTO `blue_areas` VALUES ('2709', '321', '普陀区', '3');
INSERT INTO `blue_areas` VALUES ('2710', '321', '静安区', '3');
INSERT INTO `blue_areas` VALUES ('2711', '321', '卢湾区', '3');
INSERT INTO `blue_areas` VALUES ('2712', '321', '虹口区', '3');
INSERT INTO `blue_areas` VALUES ('2713', '321', '黄浦区', '3');
INSERT INTO `blue_areas` VALUES ('2714', '321', '南汇区', '3');
INSERT INTO `blue_areas` VALUES ('2715', '321', '松江区', '3');
INSERT INTO `blue_areas` VALUES ('2716', '321', '嘉定区', '3');
INSERT INTO `blue_areas` VALUES ('2717', '321', '宝山区', '3');
INSERT INTO `blue_areas` VALUES ('2718', '321', '青浦区', '3');
INSERT INTO `blue_areas` VALUES ('2719', '321', '金山区', '3');
INSERT INTO `blue_areas` VALUES ('2720', '321', '奉贤区', '3');
INSERT INTO `blue_areas` VALUES ('2721', '321', '崇明县', '3');
INSERT INTO `blue_areas` VALUES ('2722', '322', '青羊区', '3');
INSERT INTO `blue_areas` VALUES ('2723', '322', '锦江区', '3');
INSERT INTO `blue_areas` VALUES ('2724', '322', '金牛区', '3');
INSERT INTO `blue_areas` VALUES ('2725', '322', '武侯区', '3');
INSERT INTO `blue_areas` VALUES ('2726', '322', '成华区', '3');
INSERT INTO `blue_areas` VALUES ('2727', '322', '龙泉驿区', '3');
INSERT INTO `blue_areas` VALUES ('2728', '322', '青白江区', '3');
INSERT INTO `blue_areas` VALUES ('2729', '322', '新都区', '3');
INSERT INTO `blue_areas` VALUES ('2730', '322', '温江区', '3');
INSERT INTO `blue_areas` VALUES ('2731', '322', '高新区', '3');
INSERT INTO `blue_areas` VALUES ('2732', '322', '高新西区', '3');
INSERT INTO `blue_areas` VALUES ('2733', '322', '都江堰市', '3');
INSERT INTO `blue_areas` VALUES ('2734', '322', '彭州市', '3');
INSERT INTO `blue_areas` VALUES ('2735', '322', '邛崃市', '3');
INSERT INTO `blue_areas` VALUES ('2736', '322', '崇州市', '3');
INSERT INTO `blue_areas` VALUES ('2737', '322', '金堂县', '3');
INSERT INTO `blue_areas` VALUES ('2738', '322', '双流县', '3');
INSERT INTO `blue_areas` VALUES ('2739', '322', '郫县', '3');
INSERT INTO `blue_areas` VALUES ('2740', '322', '大邑县', '3');
INSERT INTO `blue_areas` VALUES ('2741', '322', '蒲江县', '3');
INSERT INTO `blue_areas` VALUES ('2742', '322', '新津县', '3');
INSERT INTO `blue_areas` VALUES ('2743', '322', '都江堰市', '3');
INSERT INTO `blue_areas` VALUES ('2744', '322', '彭州市', '3');
INSERT INTO `blue_areas` VALUES ('2745', '322', '邛崃市', '3');
INSERT INTO `blue_areas` VALUES ('2746', '322', '崇州市', '3');
INSERT INTO `blue_areas` VALUES ('2747', '322', '金堂县', '3');
INSERT INTO `blue_areas` VALUES ('2748', '322', '双流县', '3');
INSERT INTO `blue_areas` VALUES ('2749', '322', '郫县', '3');
INSERT INTO `blue_areas` VALUES ('2750', '322', '大邑县', '3');
INSERT INTO `blue_areas` VALUES ('2751', '322', '蒲江县', '3');
INSERT INTO `blue_areas` VALUES ('2752', '322', '新津县', '3');
INSERT INTO `blue_areas` VALUES ('2753', '323', '涪城区', '3');
INSERT INTO `blue_areas` VALUES ('2754', '323', '游仙区', '3');
INSERT INTO `blue_areas` VALUES ('2755', '323', '江油市', '3');
INSERT INTO `blue_areas` VALUES ('2756', '323', '盐亭县', '3');
INSERT INTO `blue_areas` VALUES ('2757', '323', '三台县', '3');
INSERT INTO `blue_areas` VALUES ('2758', '323', '平武县', '3');
INSERT INTO `blue_areas` VALUES ('2759', '323', '安县', '3');
INSERT INTO `blue_areas` VALUES ('2760', '323', '梓潼县', '3');
INSERT INTO `blue_areas` VALUES ('2761', '323', '北川县', '3');
INSERT INTO `blue_areas` VALUES ('2762', '324', '马尔康县', '3');
INSERT INTO `blue_areas` VALUES ('2763', '324', '汶川县', '3');
INSERT INTO `blue_areas` VALUES ('2764', '324', '理县', '3');
INSERT INTO `blue_areas` VALUES ('2765', '324', '茂县', '3');
INSERT INTO `blue_areas` VALUES ('2766', '324', '松潘县', '3');
INSERT INTO `blue_areas` VALUES ('2767', '324', '九寨沟县', '3');
INSERT INTO `blue_areas` VALUES ('2768', '324', '金川县', '3');
INSERT INTO `blue_areas` VALUES ('2769', '324', '小金县', '3');
INSERT INTO `blue_areas` VALUES ('2770', '324', '黑水县', '3');
INSERT INTO `blue_areas` VALUES ('2771', '324', '壤塘县', '3');
INSERT INTO `blue_areas` VALUES ('2772', '324', '阿坝县', '3');
INSERT INTO `blue_areas` VALUES ('2773', '324', '若尔盖县', '3');
INSERT INTO `blue_areas` VALUES ('2774', '324', '红原县', '3');
INSERT INTO `blue_areas` VALUES ('2775', '325', '巴州区', '3');
INSERT INTO `blue_areas` VALUES ('2776', '325', '通江县', '3');
INSERT INTO `blue_areas` VALUES ('2777', '325', '南江县', '3');
INSERT INTO `blue_areas` VALUES ('2778', '325', '平昌县', '3');
INSERT INTO `blue_areas` VALUES ('2779', '326', '通川区', '3');
INSERT INTO `blue_areas` VALUES ('2780', '326', '万源市', '3');
INSERT INTO `blue_areas` VALUES ('2781', '326', '达县', '3');
INSERT INTO `blue_areas` VALUES ('2782', '326', '宣汉县', '3');
INSERT INTO `blue_areas` VALUES ('2783', '326', '开江县', '3');
INSERT INTO `blue_areas` VALUES ('2784', '326', '大竹县', '3');
INSERT INTO `blue_areas` VALUES ('2785', '326', '渠县', '3');
INSERT INTO `blue_areas` VALUES ('2786', '327', '旌阳区', '3');
INSERT INTO `blue_areas` VALUES ('2787', '327', '广汉市', '3');
INSERT INTO `blue_areas` VALUES ('2788', '327', '什邡市', '3');
INSERT INTO `blue_areas` VALUES ('2789', '327', '绵竹市', '3');
INSERT INTO `blue_areas` VALUES ('2790', '327', '罗江县', '3');
INSERT INTO `blue_areas` VALUES ('2791', '327', '中江县', '3');
INSERT INTO `blue_areas` VALUES ('2792', '328', '康定县', '3');
INSERT INTO `blue_areas` VALUES ('2793', '328', '丹巴县', '3');
INSERT INTO `blue_areas` VALUES ('2794', '328', '泸定县', '3');
INSERT INTO `blue_areas` VALUES ('2795', '328', '炉霍县', '3');
INSERT INTO `blue_areas` VALUES ('2796', '328', '九龙县', '3');
INSERT INTO `blue_areas` VALUES ('2797', '328', '甘孜县', '3');
INSERT INTO `blue_areas` VALUES ('2798', '328', '雅江县', '3');
INSERT INTO `blue_areas` VALUES ('2799', '328', '新龙县', '3');
INSERT INTO `blue_areas` VALUES ('2800', '328', '道孚县', '3');
INSERT INTO `blue_areas` VALUES ('2801', '328', '白玉县', '3');
INSERT INTO `blue_areas` VALUES ('2802', '328', '理塘县', '3');
INSERT INTO `blue_areas` VALUES ('2803', '328', '德格县', '3');
INSERT INTO `blue_areas` VALUES ('2804', '328', '乡城县', '3');
INSERT INTO `blue_areas` VALUES ('2805', '328', '石渠县', '3');
INSERT INTO `blue_areas` VALUES ('2806', '328', '稻城县', '3');
INSERT INTO `blue_areas` VALUES ('2807', '328', '色达县', '3');
INSERT INTO `blue_areas` VALUES ('2808', '328', '巴塘县', '3');
INSERT INTO `blue_areas` VALUES ('2809', '328', '得荣县', '3');
INSERT INTO `blue_areas` VALUES ('2810', '329', '广安区', '3');
INSERT INTO `blue_areas` VALUES ('2811', '329', '华蓥市', '3');
INSERT INTO `blue_areas` VALUES ('2812', '329', '岳池县', '3');
INSERT INTO `blue_areas` VALUES ('2813', '329', '武胜县', '3');
INSERT INTO `blue_areas` VALUES ('2814', '329', '邻水县', '3');
INSERT INTO `blue_areas` VALUES ('2815', '330', '利州区', '3');
INSERT INTO `blue_areas` VALUES ('2816', '330', '元坝区', '3');
INSERT INTO `blue_areas` VALUES ('2817', '330', '朝天区', '3');
INSERT INTO `blue_areas` VALUES ('2818', '330', '旺苍县', '3');
INSERT INTO `blue_areas` VALUES ('2819', '330', '青川县', '3');
INSERT INTO `blue_areas` VALUES ('2820', '330', '剑阁县', '3');
INSERT INTO `blue_areas` VALUES ('2821', '330', '苍溪县', '3');
INSERT INTO `blue_areas` VALUES ('2822', '331', '峨眉山市', '3');
INSERT INTO `blue_areas` VALUES ('2823', '331', '乐山市', '3');
INSERT INTO `blue_areas` VALUES ('2824', '331', '犍为县', '3');
INSERT INTO `blue_areas` VALUES ('2825', '331', '井研县', '3');
INSERT INTO `blue_areas` VALUES ('2826', '331', '夹江县', '3');
INSERT INTO `blue_areas` VALUES ('2827', '331', '沐川县', '3');
INSERT INTO `blue_areas` VALUES ('2828', '331', '峨边', '3');
INSERT INTO `blue_areas` VALUES ('2829', '331', '马边', '3');
INSERT INTO `blue_areas` VALUES ('2830', '332', '西昌市', '3');
INSERT INTO `blue_areas` VALUES ('2831', '332', '盐源县', '3');
INSERT INTO `blue_areas` VALUES ('2832', '332', '德昌县', '3');
INSERT INTO `blue_areas` VALUES ('2833', '332', '会理县', '3');
INSERT INTO `blue_areas` VALUES ('2834', '332', '会东县', '3');
INSERT INTO `blue_areas` VALUES ('2835', '332', '宁南县', '3');
INSERT INTO `blue_areas` VALUES ('2836', '332', '普格县', '3');
INSERT INTO `blue_areas` VALUES ('2837', '332', '布拖县', '3');
INSERT INTO `blue_areas` VALUES ('2838', '332', '金阳县', '3');
INSERT INTO `blue_areas` VALUES ('2839', '332', '昭觉县', '3');
INSERT INTO `blue_areas` VALUES ('2840', '332', '喜德县', '3');
INSERT INTO `blue_areas` VALUES ('2841', '332', '冕宁县', '3');
INSERT INTO `blue_areas` VALUES ('2842', '332', '越西县', '3');
INSERT INTO `blue_areas` VALUES ('2843', '332', '甘洛县', '3');
INSERT INTO `blue_areas` VALUES ('2844', '332', '美姑县', '3');
INSERT INTO `blue_areas` VALUES ('2845', '332', '雷波县', '3');
INSERT INTO `blue_areas` VALUES ('2846', '332', '木里', '3');
INSERT INTO `blue_areas` VALUES ('2847', '333', '东坡区', '3');
INSERT INTO `blue_areas` VALUES ('2848', '333', '仁寿县', '3');
INSERT INTO `blue_areas` VALUES ('2849', '333', '彭山县', '3');
INSERT INTO `blue_areas` VALUES ('2850', '333', '洪雅县', '3');
INSERT INTO `blue_areas` VALUES ('2851', '333', '丹棱县', '3');
INSERT INTO `blue_areas` VALUES ('2852', '333', '青神县', '3');
INSERT INTO `blue_areas` VALUES ('2853', '334', '阆中市', '3');
INSERT INTO `blue_areas` VALUES ('2854', '334', '南部县', '3');
INSERT INTO `blue_areas` VALUES ('2855', '334', '营山县', '3');
INSERT INTO `blue_areas` VALUES ('2856', '334', '蓬安县', '3');
INSERT INTO `blue_areas` VALUES ('2857', '334', '仪陇县', '3');
INSERT INTO `blue_areas` VALUES ('2858', '334', '顺庆区', '3');
INSERT INTO `blue_areas` VALUES ('2859', '334', '高坪区', '3');
INSERT INTO `blue_areas` VALUES ('2860', '334', '嘉陵区', '3');
INSERT INTO `blue_areas` VALUES ('2861', '334', '西充县', '3');
INSERT INTO `blue_areas` VALUES ('2862', '335', '市中区', '3');
INSERT INTO `blue_areas` VALUES ('2863', '335', '东兴区', '3');
INSERT INTO `blue_areas` VALUES ('2864', '335', '威远县', '3');
INSERT INTO `blue_areas` VALUES ('2865', '335', '资中县', '3');
INSERT INTO `blue_areas` VALUES ('2866', '335', '隆昌县', '3');
INSERT INTO `blue_areas` VALUES ('2867', '336', '东  区', '3');
INSERT INTO `blue_areas` VALUES ('2868', '336', '西  区', '3');
INSERT INTO `blue_areas` VALUES ('2869', '336', '仁和区', '3');
INSERT INTO `blue_areas` VALUES ('2870', '336', '米易县', '3');
INSERT INTO `blue_areas` VALUES ('2871', '336', '盐边县', '3');
INSERT INTO `blue_areas` VALUES ('2872', '337', '船山区', '3');
INSERT INTO `blue_areas` VALUES ('2873', '337', '安居区', '3');
INSERT INTO `blue_areas` VALUES ('2874', '337', '蓬溪县', '3');
INSERT INTO `blue_areas` VALUES ('2875', '337', '射洪县', '3');
INSERT INTO `blue_areas` VALUES ('2876', '337', '大英县', '3');
INSERT INTO `blue_areas` VALUES ('2877', '338', '雨城区', '3');
INSERT INTO `blue_areas` VALUES ('2878', '338', '名山县', '3');
INSERT INTO `blue_areas` VALUES ('2879', '338', '荥经县', '3');
INSERT INTO `blue_areas` VALUES ('2880', '338', '汉源县', '3');
INSERT INTO `blue_areas` VALUES ('2881', '338', '石棉县', '3');
INSERT INTO `blue_areas` VALUES ('2882', '338', '天全县', '3');
INSERT INTO `blue_areas` VALUES ('2883', '338', '芦山县', '3');
INSERT INTO `blue_areas` VALUES ('2884', '338', '宝兴县', '3');
INSERT INTO `blue_areas` VALUES ('2885', '339', '翠屏区', '3');
INSERT INTO `blue_areas` VALUES ('2886', '339', '宜宾县', '3');
INSERT INTO `blue_areas` VALUES ('2887', '339', '南溪县', '3');
INSERT INTO `blue_areas` VALUES ('2888', '339', '江安县', '3');
INSERT INTO `blue_areas` VALUES ('2889', '339', '长宁县', '3');
INSERT INTO `blue_areas` VALUES ('2890', '339', '高县', '3');
INSERT INTO `blue_areas` VALUES ('2891', '339', '珙县', '3');
INSERT INTO `blue_areas` VALUES ('2892', '339', '筠连县', '3');
INSERT INTO `blue_areas` VALUES ('2893', '339', '兴文县', '3');
INSERT INTO `blue_areas` VALUES ('2894', '339', '屏山县', '3');
INSERT INTO `blue_areas` VALUES ('2895', '340', '雁江区', '3');
INSERT INTO `blue_areas` VALUES ('2896', '340', '简阳市', '3');
INSERT INTO `blue_areas` VALUES ('2897', '340', '安岳县', '3');
INSERT INTO `blue_areas` VALUES ('2898', '340', '乐至县', '3');
INSERT INTO `blue_areas` VALUES ('2899', '341', '大安区', '3');
INSERT INTO `blue_areas` VALUES ('2900', '341', '自流井区', '3');
INSERT INTO `blue_areas` VALUES ('2901', '341', '贡井区', '3');
INSERT INTO `blue_areas` VALUES ('2902', '341', '沿滩区', '3');
INSERT INTO `blue_areas` VALUES ('2903', '341', '荣县', '3');
INSERT INTO `blue_areas` VALUES ('2904', '341', '富顺县', '3');
INSERT INTO `blue_areas` VALUES ('2905', '342', '江阳区', '3');
INSERT INTO `blue_areas` VALUES ('2906', '342', '纳溪区', '3');
INSERT INTO `blue_areas` VALUES ('2907', '342', '龙马潭区', '3');
INSERT INTO `blue_areas` VALUES ('2908', '342', '泸县', '3');
INSERT INTO `blue_areas` VALUES ('2909', '342', '合江县', '3');
INSERT INTO `blue_areas` VALUES ('2910', '342', '叙永县', '3');
INSERT INTO `blue_areas` VALUES ('2911', '342', '古蔺县', '3');
INSERT INTO `blue_areas` VALUES ('2912', '343', '和平区', '3');
INSERT INTO `blue_areas` VALUES ('2913', '343', '河西区', '3');
INSERT INTO `blue_areas` VALUES ('2914', '343', '南开区', '3');
INSERT INTO `blue_areas` VALUES ('2915', '343', '河北区', '3');
INSERT INTO `blue_areas` VALUES ('2916', '343', '河东区', '3');
INSERT INTO `blue_areas` VALUES ('2917', '343', '红桥区', '3');
INSERT INTO `blue_areas` VALUES ('2918', '343', '东丽区', '3');
INSERT INTO `blue_areas` VALUES ('2919', '343', '津南区', '3');
INSERT INTO `blue_areas` VALUES ('2920', '343', '西青区', '3');
INSERT INTO `blue_areas` VALUES ('2921', '343', '北辰区', '3');
INSERT INTO `blue_areas` VALUES ('2922', '343', '塘沽区', '3');
INSERT INTO `blue_areas` VALUES ('2923', '343', '汉沽区', '3');
INSERT INTO `blue_areas` VALUES ('2924', '343', '大港区', '3');
INSERT INTO `blue_areas` VALUES ('2925', '343', '武清区', '3');
INSERT INTO `blue_areas` VALUES ('2926', '343', '宝坻区', '3');
INSERT INTO `blue_areas` VALUES ('2927', '343', '经济开发区', '3');
INSERT INTO `blue_areas` VALUES ('2928', '343', '宁河县', '3');
INSERT INTO `blue_areas` VALUES ('2929', '343', '静海县', '3');
INSERT INTO `blue_areas` VALUES ('2930', '343', '蓟县', '3');
INSERT INTO `blue_areas` VALUES ('2931', '344', '城关区', '3');
INSERT INTO `blue_areas` VALUES ('2932', '344', '林周县', '3');
INSERT INTO `blue_areas` VALUES ('2933', '344', '当雄县', '3');
INSERT INTO `blue_areas` VALUES ('2934', '344', '尼木县', '3');
INSERT INTO `blue_areas` VALUES ('2935', '344', '曲水县', '3');
INSERT INTO `blue_areas` VALUES ('2936', '344', '堆龙德庆县', '3');
INSERT INTO `blue_areas` VALUES ('2937', '344', '达孜县', '3');
INSERT INTO `blue_areas` VALUES ('2938', '344', '墨竹工卡县', '3');
INSERT INTO `blue_areas` VALUES ('2939', '345', '噶尔县', '3');
INSERT INTO `blue_areas` VALUES ('2940', '345', '普兰县', '3');
INSERT INTO `blue_areas` VALUES ('2941', '345', '札达县', '3');
INSERT INTO `blue_areas` VALUES ('2942', '345', '日土县', '3');
INSERT INTO `blue_areas` VALUES ('2943', '345', '革吉县', '3');
INSERT INTO `blue_areas` VALUES ('2944', '345', '改则县', '3');
INSERT INTO `blue_areas` VALUES ('2945', '345', '措勤县', '3');
INSERT INTO `blue_areas` VALUES ('2946', '346', '昌都县', '3');
INSERT INTO `blue_areas` VALUES ('2947', '346', '江达县', '3');
INSERT INTO `blue_areas` VALUES ('2948', '346', '贡觉县', '3');
INSERT INTO `blue_areas` VALUES ('2949', '346', '类乌齐县', '3');
INSERT INTO `blue_areas` VALUES ('2950', '346', '丁青县', '3');
INSERT INTO `blue_areas` VALUES ('2951', '346', '察雅县', '3');
INSERT INTO `blue_areas` VALUES ('2952', '346', '八宿县', '3');
INSERT INTO `blue_areas` VALUES ('2953', '346', '左贡县', '3');
INSERT INTO `blue_areas` VALUES ('2954', '346', '芒康县', '3');
INSERT INTO `blue_areas` VALUES ('2955', '346', '洛隆县', '3');
INSERT INTO `blue_areas` VALUES ('2956', '346', '边坝县', '3');
INSERT INTO `blue_areas` VALUES ('2957', '347', '林芝县', '3');
INSERT INTO `blue_areas` VALUES ('2958', '347', '工布江达县', '3');
INSERT INTO `blue_areas` VALUES ('2959', '347', '米林县', '3');
INSERT INTO `blue_areas` VALUES ('2960', '347', '墨脱县', '3');
INSERT INTO `blue_areas` VALUES ('2961', '347', '波密县', '3');
INSERT INTO `blue_areas` VALUES ('2962', '347', '察隅县', '3');
INSERT INTO `blue_areas` VALUES ('2963', '347', '朗县', '3');
INSERT INTO `blue_areas` VALUES ('2964', '348', '那曲县', '3');
INSERT INTO `blue_areas` VALUES ('2965', '348', '嘉黎县', '3');
INSERT INTO `blue_areas` VALUES ('2966', '348', '比如县', '3');
INSERT INTO `blue_areas` VALUES ('2967', '348', '聂荣县', '3');
INSERT INTO `blue_areas` VALUES ('2968', '348', '安多县', '3');
INSERT INTO `blue_areas` VALUES ('2969', '348', '申扎县', '3');
INSERT INTO `blue_areas` VALUES ('2970', '348', '索县', '3');
INSERT INTO `blue_areas` VALUES ('2971', '348', '班戈县', '3');
INSERT INTO `blue_areas` VALUES ('2972', '348', '巴青县', '3');
INSERT INTO `blue_areas` VALUES ('2973', '348', '尼玛县', '3');
INSERT INTO `blue_areas` VALUES ('2974', '349', '日喀则市', '3');
INSERT INTO `blue_areas` VALUES ('2975', '349', '南木林县', '3');
INSERT INTO `blue_areas` VALUES ('2976', '349', '江孜县', '3');
INSERT INTO `blue_areas` VALUES ('2977', '349', '定日县', '3');
INSERT INTO `blue_areas` VALUES ('2978', '349', '萨迦县', '3');
INSERT INTO `blue_areas` VALUES ('2979', '349', '拉孜县', '3');
INSERT INTO `blue_areas` VALUES ('2980', '349', '昂仁县', '3');
INSERT INTO `blue_areas` VALUES ('2981', '349', '谢通门县', '3');
INSERT INTO `blue_areas` VALUES ('2982', '349', '白朗县', '3');
INSERT INTO `blue_areas` VALUES ('2983', '349', '仁布县', '3');
INSERT INTO `blue_areas` VALUES ('2984', '349', '康马县', '3');
INSERT INTO `blue_areas` VALUES ('2985', '349', '定结县', '3');
INSERT INTO `blue_areas` VALUES ('2986', '349', '仲巴县', '3');
INSERT INTO `blue_areas` VALUES ('2987', '349', '亚东县', '3');
INSERT INTO `blue_areas` VALUES ('2988', '349', '吉隆县', '3');
INSERT INTO `blue_areas` VALUES ('2989', '349', '聂拉木县', '3');
INSERT INTO `blue_areas` VALUES ('2990', '349', '萨嘎县', '3');
INSERT INTO `blue_areas` VALUES ('2991', '349', '岗巴县', '3');
INSERT INTO `blue_areas` VALUES ('2992', '350', '乃东县', '3');
INSERT INTO `blue_areas` VALUES ('2993', '350', '扎囊县', '3');
INSERT INTO `blue_areas` VALUES ('2994', '350', '贡嘎县', '3');
INSERT INTO `blue_areas` VALUES ('2995', '350', '桑日县', '3');
INSERT INTO `blue_areas` VALUES ('2996', '350', '琼结县', '3');
INSERT INTO `blue_areas` VALUES ('2997', '350', '曲松县', '3');
INSERT INTO `blue_areas` VALUES ('2998', '350', '措美县', '3');
INSERT INTO `blue_areas` VALUES ('2999', '350', '洛扎县', '3');
INSERT INTO `blue_areas` VALUES ('3000', '350', '加查县', '3');
INSERT INTO `blue_areas` VALUES ('3001', '350', '隆子县', '3');
INSERT INTO `blue_areas` VALUES ('3002', '350', '错那县', '3');
INSERT INTO `blue_areas` VALUES ('3003', '350', '浪卡子县', '3');
INSERT INTO `blue_areas` VALUES ('3004', '351', '天山区', '3');
INSERT INTO `blue_areas` VALUES ('3005', '351', '沙依巴克区', '3');
INSERT INTO `blue_areas` VALUES ('3006', '351', '新市区', '3');
INSERT INTO `blue_areas` VALUES ('3007', '351', '水磨沟区', '3');
INSERT INTO `blue_areas` VALUES ('3008', '351', '头屯河区', '3');
INSERT INTO `blue_areas` VALUES ('3009', '351', '达坂城区', '3');
INSERT INTO `blue_areas` VALUES ('3010', '351', '米东区', '3');
INSERT INTO `blue_areas` VALUES ('3011', '351', '乌鲁木齐县', '3');
INSERT INTO `blue_areas` VALUES ('3012', '352', '阿克苏市', '3');
INSERT INTO `blue_areas` VALUES ('3013', '352', '温宿县', '3');
INSERT INTO `blue_areas` VALUES ('3014', '352', '库车县', '3');
INSERT INTO `blue_areas` VALUES ('3015', '352', '沙雅县', '3');
INSERT INTO `blue_areas` VALUES ('3016', '352', '新和县', '3');
INSERT INTO `blue_areas` VALUES ('3017', '352', '拜城县', '3');
INSERT INTO `blue_areas` VALUES ('3018', '352', '乌什县', '3');
INSERT INTO `blue_areas` VALUES ('3019', '352', '阿瓦提县', '3');
INSERT INTO `blue_areas` VALUES ('3020', '352', '柯坪县', '3');
INSERT INTO `blue_areas` VALUES ('3021', '353', '阿拉尔市', '3');
INSERT INTO `blue_areas` VALUES ('3022', '354', '库尔勒市', '3');
INSERT INTO `blue_areas` VALUES ('3023', '354', '轮台县', '3');
INSERT INTO `blue_areas` VALUES ('3024', '354', '尉犁县', '3');
INSERT INTO `blue_areas` VALUES ('3025', '354', '若羌县', '3');
INSERT INTO `blue_areas` VALUES ('3026', '354', '且末县', '3');
INSERT INTO `blue_areas` VALUES ('3027', '354', '焉耆', '3');
INSERT INTO `blue_areas` VALUES ('3028', '354', '和静县', '3');
INSERT INTO `blue_areas` VALUES ('3029', '354', '和硕县', '3');
INSERT INTO `blue_areas` VALUES ('3030', '354', '博湖县', '3');
INSERT INTO `blue_areas` VALUES ('3031', '355', '博乐市', '3');
INSERT INTO `blue_areas` VALUES ('3032', '355', '精河县', '3');
INSERT INTO `blue_areas` VALUES ('3033', '355', '温泉县', '3');
INSERT INTO `blue_areas` VALUES ('3034', '356', '呼图壁县', '3');
INSERT INTO `blue_areas` VALUES ('3035', '356', '米泉市', '3');
INSERT INTO `blue_areas` VALUES ('3036', '356', '昌吉市', '3');
INSERT INTO `blue_areas` VALUES ('3037', '356', '阜康市', '3');
INSERT INTO `blue_areas` VALUES ('3038', '356', '玛纳斯县', '3');
INSERT INTO `blue_areas` VALUES ('3039', '356', '奇台县', '3');
INSERT INTO `blue_areas` VALUES ('3040', '356', '吉木萨尔县', '3');
INSERT INTO `blue_areas` VALUES ('3041', '356', '木垒', '3');
INSERT INTO `blue_areas` VALUES ('3042', '357', '哈密市', '3');
INSERT INTO `blue_areas` VALUES ('3043', '357', '伊吾县', '3');
INSERT INTO `blue_areas` VALUES ('3044', '357', '巴里坤', '3');
INSERT INTO `blue_areas` VALUES ('3045', '358', '和田市', '3');
INSERT INTO `blue_areas` VALUES ('3046', '358', '和田县', '3');
INSERT INTO `blue_areas` VALUES ('3047', '358', '墨玉县', '3');
INSERT INTO `blue_areas` VALUES ('3048', '358', '皮山县', '3');
INSERT INTO `blue_areas` VALUES ('3049', '358', '洛浦县', '3');
INSERT INTO `blue_areas` VALUES ('3050', '358', '策勒县', '3');
INSERT INTO `blue_areas` VALUES ('3051', '358', '于田县', '3');
INSERT INTO `blue_areas` VALUES ('3052', '358', '民丰县', '3');
INSERT INTO `blue_areas` VALUES ('3053', '359', '喀什市', '3');
INSERT INTO `blue_areas` VALUES ('3054', '359', '疏附县', '3');
INSERT INTO `blue_areas` VALUES ('3055', '359', '疏勒县', '3');
INSERT INTO `blue_areas` VALUES ('3056', '359', '英吉沙县', '3');
INSERT INTO `blue_areas` VALUES ('3057', '359', '泽普县', '3');
INSERT INTO `blue_areas` VALUES ('3058', '359', '莎车县', '3');
INSERT INTO `blue_areas` VALUES ('3059', '359', '叶城县', '3');
INSERT INTO `blue_areas` VALUES ('3060', '359', '麦盖提县', '3');
INSERT INTO `blue_areas` VALUES ('3061', '359', '岳普湖县', '3');
INSERT INTO `blue_areas` VALUES ('3062', '359', '伽师县', '3');
INSERT INTO `blue_areas` VALUES ('3063', '359', '巴楚县', '3');
INSERT INTO `blue_areas` VALUES ('3064', '359', '塔什库尔干', '3');
INSERT INTO `blue_areas` VALUES ('3065', '360', '克拉玛依市', '3');
INSERT INTO `blue_areas` VALUES ('3066', '361', '阿图什市', '3');
INSERT INTO `blue_areas` VALUES ('3067', '361', '阿克陶县', '3');
INSERT INTO `blue_areas` VALUES ('3068', '361', '阿合奇县', '3');
INSERT INTO `blue_areas` VALUES ('3069', '361', '乌恰县', '3');
INSERT INTO `blue_areas` VALUES ('3070', '362', '石河子市', '3');
INSERT INTO `blue_areas` VALUES ('3071', '363', '图木舒克市', '3');
INSERT INTO `blue_areas` VALUES ('3072', '364', '吐鲁番市', '3');
INSERT INTO `blue_areas` VALUES ('3073', '364', '鄯善县', '3');
INSERT INTO `blue_areas` VALUES ('3074', '364', '托克逊县', '3');
INSERT INTO `blue_areas` VALUES ('3075', '365', '五家渠市', '3');
INSERT INTO `blue_areas` VALUES ('3076', '366', '阿勒泰市', '3');
INSERT INTO `blue_areas` VALUES ('3077', '366', '布克赛尔', '3');
INSERT INTO `blue_areas` VALUES ('3078', '366', '伊宁市', '3');
INSERT INTO `blue_areas` VALUES ('3079', '366', '布尔津县', '3');
INSERT INTO `blue_areas` VALUES ('3080', '366', '奎屯市', '3');
INSERT INTO `blue_areas` VALUES ('3081', '366', '乌苏市', '3');
INSERT INTO `blue_areas` VALUES ('3082', '366', '额敏县', '3');
INSERT INTO `blue_areas` VALUES ('3083', '366', '富蕴县', '3');
INSERT INTO `blue_areas` VALUES ('3084', '366', '伊宁县', '3');
INSERT INTO `blue_areas` VALUES ('3085', '366', '福海县', '3');
INSERT INTO `blue_areas` VALUES ('3086', '366', '霍城县', '3');
INSERT INTO `blue_areas` VALUES ('3087', '366', '沙湾县', '3');
INSERT INTO `blue_areas` VALUES ('3088', '366', '巩留县', '3');
INSERT INTO `blue_areas` VALUES ('3089', '366', '哈巴河县', '3');
INSERT INTO `blue_areas` VALUES ('3090', '366', '托里县', '3');
INSERT INTO `blue_areas` VALUES ('3091', '366', '青河县', '3');
INSERT INTO `blue_areas` VALUES ('3092', '366', '新源县', '3');
INSERT INTO `blue_areas` VALUES ('3093', '366', '裕民县', '3');
INSERT INTO `blue_areas` VALUES ('3094', '366', '和布克赛尔', '3');
INSERT INTO `blue_areas` VALUES ('3095', '366', '吉木乃县', '3');
INSERT INTO `blue_areas` VALUES ('3096', '366', '昭苏县', '3');
INSERT INTO `blue_areas` VALUES ('3097', '366', '特克斯县', '3');
INSERT INTO `blue_areas` VALUES ('3098', '366', '尼勒克县', '3');
INSERT INTO `blue_areas` VALUES ('3099', '366', '察布查尔', '3');
INSERT INTO `blue_areas` VALUES ('3100', '367', '盘龙区', '3');
INSERT INTO `blue_areas` VALUES ('3101', '367', '五华区', '3');
INSERT INTO `blue_areas` VALUES ('3102', '367', '官渡区', '3');
INSERT INTO `blue_areas` VALUES ('3103', '367', '西山区', '3');
INSERT INTO `blue_areas` VALUES ('3104', '367', '东川区', '3');
INSERT INTO `blue_areas` VALUES ('3105', '367', '安宁市', '3');
INSERT INTO `blue_areas` VALUES ('3106', '367', '呈贡县', '3');
INSERT INTO `blue_areas` VALUES ('3107', '367', '晋宁县', '3');
INSERT INTO `blue_areas` VALUES ('3108', '367', '富民县', '3');
INSERT INTO `blue_areas` VALUES ('3109', '367', '宜良县', '3');
INSERT INTO `blue_areas` VALUES ('3110', '367', '嵩明县', '3');
INSERT INTO `blue_areas` VALUES ('3111', '367', '石林县', '3');
INSERT INTO `blue_areas` VALUES ('3112', '367', '禄劝', '3');
INSERT INTO `blue_areas` VALUES ('3113', '367', '寻甸', '3');
INSERT INTO `blue_areas` VALUES ('3114', '368', '兰坪', '3');
INSERT INTO `blue_areas` VALUES ('3115', '368', '泸水县', '3');
INSERT INTO `blue_areas` VALUES ('3116', '368', '福贡县', '3');
INSERT INTO `blue_areas` VALUES ('3117', '368', '贡山', '3');
INSERT INTO `blue_areas` VALUES ('3118', '369', '宁洱', '3');
INSERT INTO `blue_areas` VALUES ('3119', '369', '思茅区', '3');
INSERT INTO `blue_areas` VALUES ('3120', '369', '墨江', '3');
INSERT INTO `blue_areas` VALUES ('3121', '369', '景东', '3');
INSERT INTO `blue_areas` VALUES ('3122', '369', '景谷', '3');
INSERT INTO `blue_areas` VALUES ('3123', '369', '镇沅', '3');
INSERT INTO `blue_areas` VALUES ('3124', '369', '江城', '3');
INSERT INTO `blue_areas` VALUES ('3125', '369', '孟连', '3');
INSERT INTO `blue_areas` VALUES ('3126', '369', '澜沧', '3');
INSERT INTO `blue_areas` VALUES ('3127', '369', '西盟', '3');
INSERT INTO `blue_areas` VALUES ('3128', '370', '古城区', '3');
INSERT INTO `blue_areas` VALUES ('3129', '370', '宁蒗', '3');
INSERT INTO `blue_areas` VALUES ('3130', '370', '玉龙', '3');
INSERT INTO `blue_areas` VALUES ('3131', '370', '永胜县', '3');
INSERT INTO `blue_areas` VALUES ('3132', '370', '华坪县', '3');
INSERT INTO `blue_areas` VALUES ('3133', '371', '隆阳区', '3');
INSERT INTO `blue_areas` VALUES ('3134', '371', '施甸县', '3');
INSERT INTO `blue_areas` VALUES ('3135', '371', '腾冲县', '3');
INSERT INTO `blue_areas` VALUES ('3136', '371', '龙陵县', '3');
INSERT INTO `blue_areas` VALUES ('3137', '371', '昌宁县', '3');
INSERT INTO `blue_areas` VALUES ('3138', '372', '楚雄市', '3');
INSERT INTO `blue_areas` VALUES ('3139', '372', '双柏县', '3');
INSERT INTO `blue_areas` VALUES ('3140', '372', '牟定县', '3');
INSERT INTO `blue_areas` VALUES ('3141', '372', '南华县', '3');
INSERT INTO `blue_areas` VALUES ('3142', '372', '姚安县', '3');
INSERT INTO `blue_areas` VALUES ('3143', '372', '大姚县', '3');
INSERT INTO `blue_areas` VALUES ('3144', '372', '永仁县', '3');
INSERT INTO `blue_areas` VALUES ('3145', '372', '元谋县', '3');
INSERT INTO `blue_areas` VALUES ('3146', '372', '武定县', '3');
INSERT INTO `blue_areas` VALUES ('3147', '372', '禄丰县', '3');
INSERT INTO `blue_areas` VALUES ('3148', '373', '大理市', '3');
INSERT INTO `blue_areas` VALUES ('3149', '373', '祥云县', '3');
INSERT INTO `blue_areas` VALUES ('3150', '373', '宾川县', '3');
INSERT INTO `blue_areas` VALUES ('3151', '373', '弥渡县', '3');
INSERT INTO `blue_areas` VALUES ('3152', '373', '永平县', '3');
INSERT INTO `blue_areas` VALUES ('3153', '373', '云龙县', '3');
INSERT INTO `blue_areas` VALUES ('3154', '373', '洱源县', '3');
INSERT INTO `blue_areas` VALUES ('3155', '373', '剑川县', '3');
INSERT INTO `blue_areas` VALUES ('3156', '373', '鹤庆县', '3');
INSERT INTO `blue_areas` VALUES ('3157', '373', '漾濞', '3');
INSERT INTO `blue_areas` VALUES ('3158', '373', '南涧', '3');
INSERT INTO `blue_areas` VALUES ('3159', '373', '巍山', '3');
INSERT INTO `blue_areas` VALUES ('3160', '374', '潞西市', '3');
INSERT INTO `blue_areas` VALUES ('3161', '374', '瑞丽市', '3');
INSERT INTO `blue_areas` VALUES ('3162', '374', '梁河县', '3');
INSERT INTO `blue_areas` VALUES ('3163', '374', '盈江县', '3');
INSERT INTO `blue_areas` VALUES ('3164', '374', '陇川县', '3');
INSERT INTO `blue_areas` VALUES ('3165', '375', '香格里拉县', '3');
INSERT INTO `blue_areas` VALUES ('3166', '375', '德钦县', '3');
INSERT INTO `blue_areas` VALUES ('3167', '375', '维西', '3');
INSERT INTO `blue_areas` VALUES ('3168', '376', '泸西县', '3');
INSERT INTO `blue_areas` VALUES ('3169', '376', '蒙自县', '3');
INSERT INTO `blue_areas` VALUES ('3170', '376', '个旧市', '3');
INSERT INTO `blue_areas` VALUES ('3171', '376', '开远市', '3');
INSERT INTO `blue_areas` VALUES ('3172', '376', '绿春县', '3');
INSERT INTO `blue_areas` VALUES ('3173', '376', '建水县', '3');
INSERT INTO `blue_areas` VALUES ('3174', '376', '石屏县', '3');
INSERT INTO `blue_areas` VALUES ('3175', '376', '弥勒县', '3');
INSERT INTO `blue_areas` VALUES ('3176', '376', '元阳县', '3');
INSERT INTO `blue_areas` VALUES ('3177', '376', '红河县', '3');
INSERT INTO `blue_areas` VALUES ('3178', '376', '金平', '3');
INSERT INTO `blue_areas` VALUES ('3179', '376', '河口', '3');
INSERT INTO `blue_areas` VALUES ('3180', '376', '屏边', '3');
INSERT INTO `blue_areas` VALUES ('3181', '377', '临翔区', '3');
INSERT INTO `blue_areas` VALUES ('3182', '377', '凤庆县', '3');
INSERT INTO `blue_areas` VALUES ('3183', '377', '云县', '3');
INSERT INTO `blue_areas` VALUES ('3184', '377', '永德县', '3');
INSERT INTO `blue_areas` VALUES ('3185', '377', '镇康县', '3');
INSERT INTO `blue_areas` VALUES ('3186', '377', '双江', '3');
INSERT INTO `blue_areas` VALUES ('3187', '377', '耿马', '3');
INSERT INTO `blue_areas` VALUES ('3188', '377', '沧源', '3');
INSERT INTO `blue_areas` VALUES ('3189', '378', '麒麟区', '3');
INSERT INTO `blue_areas` VALUES ('3190', '378', '宣威市', '3');
INSERT INTO `blue_areas` VALUES ('3191', '378', '马龙县', '3');
INSERT INTO `blue_areas` VALUES ('3192', '378', '陆良县', '3');
INSERT INTO `blue_areas` VALUES ('3193', '378', '师宗县', '3');
INSERT INTO `blue_areas` VALUES ('3194', '378', '罗平县', '3');
INSERT INTO `blue_areas` VALUES ('3195', '378', '富源县', '3');
INSERT INTO `blue_areas` VALUES ('3196', '378', '会泽县', '3');
INSERT INTO `blue_areas` VALUES ('3197', '378', '沾益县', '3');
INSERT INTO `blue_areas` VALUES ('3198', '379', '文山县', '3');
INSERT INTO `blue_areas` VALUES ('3199', '379', '砚山县', '3');
INSERT INTO `blue_areas` VALUES ('3200', '379', '西畴县', '3');
INSERT INTO `blue_areas` VALUES ('3201', '379', '麻栗坡县', '3');
INSERT INTO `blue_areas` VALUES ('3202', '379', '马关县', '3');
INSERT INTO `blue_areas` VALUES ('3203', '379', '丘北县', '3');
INSERT INTO `blue_areas` VALUES ('3204', '379', '广南县', '3');
INSERT INTO `blue_areas` VALUES ('3205', '379', '富宁县', '3');
INSERT INTO `blue_areas` VALUES ('3206', '380', '景洪市', '3');
INSERT INTO `blue_areas` VALUES ('3207', '380', '勐海县', '3');
INSERT INTO `blue_areas` VALUES ('3208', '380', '勐腊县', '3');
INSERT INTO `blue_areas` VALUES ('3209', '381', '红塔区', '3');
INSERT INTO `blue_areas` VALUES ('3210', '381', '江川县', '3');
INSERT INTO `blue_areas` VALUES ('3211', '381', '澄江县', '3');
INSERT INTO `blue_areas` VALUES ('3212', '381', '通海县', '3');
INSERT INTO `blue_areas` VALUES ('3213', '381', '华宁县', '3');
INSERT INTO `blue_areas` VALUES ('3214', '381', '易门县', '3');
INSERT INTO `blue_areas` VALUES ('3215', '381', '峨山', '3');
INSERT INTO `blue_areas` VALUES ('3216', '381', '新平', '3');
INSERT INTO `blue_areas` VALUES ('3217', '381', '元江', '3');
INSERT INTO `blue_areas` VALUES ('3218', '382', '昭阳区', '3');
INSERT INTO `blue_areas` VALUES ('3219', '382', '鲁甸县', '3');
INSERT INTO `blue_areas` VALUES ('3220', '382', '巧家县', '3');
INSERT INTO `blue_areas` VALUES ('3221', '382', '盐津县', '3');
INSERT INTO `blue_areas` VALUES ('3222', '382', '大关县', '3');
INSERT INTO `blue_areas` VALUES ('3223', '382', '永善县', '3');
INSERT INTO `blue_areas` VALUES ('3224', '382', '绥江县', '3');
INSERT INTO `blue_areas` VALUES ('3225', '382', '镇雄县', '3');
INSERT INTO `blue_areas` VALUES ('3226', '382', '彝良县', '3');
INSERT INTO `blue_areas` VALUES ('3227', '382', '威信县', '3');
INSERT INTO `blue_areas` VALUES ('3228', '382', '水富县', '3');
INSERT INTO `blue_areas` VALUES ('3229', '383', '西湖区', '3');
INSERT INTO `blue_areas` VALUES ('3230', '383', '上城区', '3');
INSERT INTO `blue_areas` VALUES ('3231', '383', '下城区', '3');
INSERT INTO `blue_areas` VALUES ('3232', '383', '拱墅区', '3');
INSERT INTO `blue_areas` VALUES ('3233', '383', '滨江区', '3');
INSERT INTO `blue_areas` VALUES ('3234', '383', '江干区', '3');
INSERT INTO `blue_areas` VALUES ('3235', '383', '萧山区', '3');
INSERT INTO `blue_areas` VALUES ('3236', '383', '余杭区', '3');
INSERT INTO `blue_areas` VALUES ('3237', '383', '市郊', '3');
INSERT INTO `blue_areas` VALUES ('3238', '383', '建德市', '3');
INSERT INTO `blue_areas` VALUES ('3239', '383', '富阳市', '3');
INSERT INTO `blue_areas` VALUES ('3240', '383', '临安市', '3');
INSERT INTO `blue_areas` VALUES ('3241', '383', '桐庐县', '3');
INSERT INTO `blue_areas` VALUES ('3242', '383', '淳安县', '3');
INSERT INTO `blue_areas` VALUES ('3243', '384', '吴兴区', '3');
INSERT INTO `blue_areas` VALUES ('3244', '384', '南浔区', '3');
INSERT INTO `blue_areas` VALUES ('3245', '384', '德清县', '3');
INSERT INTO `blue_areas` VALUES ('3246', '384', '长兴县', '3');
INSERT INTO `blue_areas` VALUES ('3247', '384', '安吉县', '3');
INSERT INTO `blue_areas` VALUES ('3248', '385', '南湖区', '3');
INSERT INTO `blue_areas` VALUES ('3249', '385', '秀洲区', '3');
INSERT INTO `blue_areas` VALUES ('3250', '385', '海宁市', '3');
INSERT INTO `blue_areas` VALUES ('3251', '385', '嘉善县', '3');
INSERT INTO `blue_areas` VALUES ('3252', '385', '平湖市', '3');
INSERT INTO `blue_areas` VALUES ('3253', '385', '桐乡市', '3');
INSERT INTO `blue_areas` VALUES ('3254', '385', '海盐县', '3');
INSERT INTO `blue_areas` VALUES ('3255', '386', '婺城区', '3');
INSERT INTO `blue_areas` VALUES ('3256', '386', '金东区', '3');
INSERT INTO `blue_areas` VALUES ('3257', '386', '兰溪市', '3');
INSERT INTO `blue_areas` VALUES ('3258', '386', '市区', '3');
INSERT INTO `blue_areas` VALUES ('3259', '386', '佛堂镇', '3');
INSERT INTO `blue_areas` VALUES ('3260', '386', '上溪镇', '3');
INSERT INTO `blue_areas` VALUES ('3261', '386', '义亭镇', '3');
INSERT INTO `blue_areas` VALUES ('3262', '386', '大陈镇', '3');
INSERT INTO `blue_areas` VALUES ('3263', '386', '苏溪镇', '3');
INSERT INTO `blue_areas` VALUES ('3264', '386', '赤岸镇', '3');
INSERT INTO `blue_areas` VALUES ('3265', '386', '东阳市', '3');
INSERT INTO `blue_areas` VALUES ('3266', '386', '永康市', '3');
INSERT INTO `blue_areas` VALUES ('3267', '386', '武义县', '3');
INSERT INTO `blue_areas` VALUES ('3268', '386', '浦江县', '3');
INSERT INTO `blue_areas` VALUES ('3269', '386', '磐安县', '3');
INSERT INTO `blue_areas` VALUES ('3270', '387', '莲都区', '3');
INSERT INTO `blue_areas` VALUES ('3271', '387', '龙泉市', '3');
INSERT INTO `blue_areas` VALUES ('3272', '387', '青田县', '3');
INSERT INTO `blue_areas` VALUES ('3273', '387', '缙云县', '3');
INSERT INTO `blue_areas` VALUES ('3274', '387', '遂昌县', '3');
INSERT INTO `blue_areas` VALUES ('3275', '387', '松阳县', '3');
INSERT INTO `blue_areas` VALUES ('3276', '387', '云和县', '3');
INSERT INTO `blue_areas` VALUES ('3277', '387', '庆元县', '3');
INSERT INTO `blue_areas` VALUES ('3278', '387', '景宁', '3');
INSERT INTO `blue_areas` VALUES ('3279', '388', '海曙区', '3');
INSERT INTO `blue_areas` VALUES ('3280', '388', '江东区', '3');
INSERT INTO `blue_areas` VALUES ('3281', '388', '江北区', '3');
INSERT INTO `blue_areas` VALUES ('3282', '388', '镇海区', '3');
INSERT INTO `blue_areas` VALUES ('3283', '388', '北仑区', '3');
INSERT INTO `blue_areas` VALUES ('3284', '388', '鄞州区', '3');
INSERT INTO `blue_areas` VALUES ('3285', '388', '余姚市', '3');
INSERT INTO `blue_areas` VALUES ('3286', '388', '慈溪市', '3');
INSERT INTO `blue_areas` VALUES ('3287', '388', '奉化市', '3');
INSERT INTO `blue_areas` VALUES ('3288', '388', '象山县', '3');
INSERT INTO `blue_areas` VALUES ('3289', '388', '宁海县', '3');
INSERT INTO `blue_areas` VALUES ('3290', '389', '越城区', '3');
INSERT INTO `blue_areas` VALUES ('3291', '389', '上虞市', '3');
INSERT INTO `blue_areas` VALUES ('3292', '389', '嵊州市', '3');
INSERT INTO `blue_areas` VALUES ('3293', '389', '绍兴县', '3');
INSERT INTO `blue_areas` VALUES ('3294', '389', '新昌县', '3');
INSERT INTO `blue_areas` VALUES ('3295', '389', '诸暨市', '3');
INSERT INTO `blue_areas` VALUES ('3296', '390', '椒江区', '3');
INSERT INTO `blue_areas` VALUES ('3297', '390', '黄岩区', '3');
INSERT INTO `blue_areas` VALUES ('3298', '390', '路桥区', '3');
INSERT INTO `blue_areas` VALUES ('3299', '390', '温岭市', '3');
INSERT INTO `blue_areas` VALUES ('3300', '390', '临海市', '3');
INSERT INTO `blue_areas` VALUES ('3301', '390', '玉环县', '3');
INSERT INTO `blue_areas` VALUES ('3302', '390', '三门县', '3');
INSERT INTO `blue_areas` VALUES ('3303', '390', '天台县', '3');
INSERT INTO `blue_areas` VALUES ('3304', '390', '仙居县', '3');
INSERT INTO `blue_areas` VALUES ('3305', '391', '鹿城区', '3');
INSERT INTO `blue_areas` VALUES ('3306', '391', '龙湾区', '3');
INSERT INTO `blue_areas` VALUES ('3307', '391', '瓯海区', '3');
INSERT INTO `blue_areas` VALUES ('3308', '391', '瑞安市', '3');
INSERT INTO `blue_areas` VALUES ('3309', '391', '乐清市', '3');
INSERT INTO `blue_areas` VALUES ('3310', '391', '洞头县', '3');
INSERT INTO `blue_areas` VALUES ('3311', '391', '永嘉县', '3');
INSERT INTO `blue_areas` VALUES ('3312', '391', '平阳县', '3');
INSERT INTO `blue_areas` VALUES ('3313', '391', '苍南县', '3');
INSERT INTO `blue_areas` VALUES ('3314', '391', '文成县', '3');
INSERT INTO `blue_areas` VALUES ('3315', '391', '泰顺县', '3');
INSERT INTO `blue_areas` VALUES ('3316', '392', '定海区', '3');
INSERT INTO `blue_areas` VALUES ('3317', '392', '普陀区', '3');
INSERT INTO `blue_areas` VALUES ('3318', '392', '岱山县', '3');
INSERT INTO `blue_areas` VALUES ('3319', '392', '嵊泗县', '3');
INSERT INTO `blue_areas` VALUES ('3320', '393', '衢州市', '3');
INSERT INTO `blue_areas` VALUES ('3321', '393', '江山市', '3');
INSERT INTO `blue_areas` VALUES ('3322', '393', '常山县', '3');
INSERT INTO `blue_areas` VALUES ('3323', '393', '开化县', '3');
INSERT INTO `blue_areas` VALUES ('3324', '393', '龙游县', '3');
INSERT INTO `blue_areas` VALUES ('3325', '394', '合川区', '3');
INSERT INTO `blue_areas` VALUES ('3326', '394', '江津区', '3');
INSERT INTO `blue_areas` VALUES ('3327', '394', '南川区', '3');
INSERT INTO `blue_areas` VALUES ('3328', '394', '永川区', '3');
INSERT INTO `blue_areas` VALUES ('3329', '394', '南岸区', '3');
INSERT INTO `blue_areas` VALUES ('3330', '394', '渝北区', '3');
INSERT INTO `blue_areas` VALUES ('3331', '394', '万盛区', '3');
INSERT INTO `blue_areas` VALUES ('3332', '394', '大渡口区', '3');
INSERT INTO `blue_areas` VALUES ('3333', '394', '万州区', '3');
INSERT INTO `blue_areas` VALUES ('3334', '394', '北碚区', '3');
INSERT INTO `blue_areas` VALUES ('3335', '394', '沙坪坝区', '3');
INSERT INTO `blue_areas` VALUES ('3336', '394', '巴南区', '3');
INSERT INTO `blue_areas` VALUES ('3337', '394', '涪陵区', '3');
INSERT INTO `blue_areas` VALUES ('3338', '394', '江北区', '3');
INSERT INTO `blue_areas` VALUES ('3339', '394', '九龙坡区', '3');
INSERT INTO `blue_areas` VALUES ('3340', '394', '渝中区', '3');
INSERT INTO `blue_areas` VALUES ('3341', '394', '黔江开发区', '3');
INSERT INTO `blue_areas` VALUES ('3342', '394', '长寿区', '3');
INSERT INTO `blue_areas` VALUES ('3343', '394', '双桥区', '3');
INSERT INTO `blue_areas` VALUES ('3344', '394', '綦江县', '3');
INSERT INTO `blue_areas` VALUES ('3345', '394', '潼南县', '3');
INSERT INTO `blue_areas` VALUES ('3346', '394', '铜梁县', '3');
INSERT INTO `blue_areas` VALUES ('3347', '394', '大足县', '3');
INSERT INTO `blue_areas` VALUES ('3348', '394', '荣昌县', '3');
INSERT INTO `blue_areas` VALUES ('3349', '394', '璧山县', '3');
INSERT INTO `blue_areas` VALUES ('3350', '394', '垫江县', '3');
INSERT INTO `blue_areas` VALUES ('3351', '394', '武隆县', '3');
INSERT INTO `blue_areas` VALUES ('3352', '394', '丰都县', '3');
INSERT INTO `blue_areas` VALUES ('3353', '394', '城口县', '3');
INSERT INTO `blue_areas` VALUES ('3354', '394', '梁平县', '3');
INSERT INTO `blue_areas` VALUES ('3355', '394', '开县', '3');
INSERT INTO `blue_areas` VALUES ('3356', '394', '巫溪县', '3');
INSERT INTO `blue_areas` VALUES ('3357', '394', '巫山县', '3');
INSERT INTO `blue_areas` VALUES ('3358', '394', '奉节县', '3');
INSERT INTO `blue_areas` VALUES ('3359', '394', '云阳县', '3');
INSERT INTO `blue_areas` VALUES ('3360', '394', '忠县', '3');
INSERT INTO `blue_areas` VALUES ('3361', '394', '石柱', '3');
INSERT INTO `blue_areas` VALUES ('3362', '394', '彭水', '3');
INSERT INTO `blue_areas` VALUES ('3363', '394', '酉阳', '3');
INSERT INTO `blue_areas` VALUES ('3364', '394', '秀山', '3');
INSERT INTO `blue_areas` VALUES ('3365', '395', '沙田区', '3');
INSERT INTO `blue_areas` VALUES ('3366', '395', '东区', '3');
INSERT INTO `blue_areas` VALUES ('3367', '395', '观塘区', '3');
INSERT INTO `blue_areas` VALUES ('3368', '395', '黄大仙区', '3');
INSERT INTO `blue_areas` VALUES ('3369', '395', '九龙城区', '3');
INSERT INTO `blue_areas` VALUES ('3370', '395', '屯门区', '3');
INSERT INTO `blue_areas` VALUES ('3371', '395', '葵青区', '3');
INSERT INTO `blue_areas` VALUES ('3372', '395', '元朗区', '3');
INSERT INTO `blue_areas` VALUES ('3373', '395', '深水埗区', '3');
INSERT INTO `blue_areas` VALUES ('3374', '395', '西贡区', '3');
INSERT INTO `blue_areas` VALUES ('3375', '395', '大埔区', '3');
INSERT INTO `blue_areas` VALUES ('3376', '395', '湾仔区', '3');
INSERT INTO `blue_areas` VALUES ('3377', '395', '油尖旺区', '3');
INSERT INTO `blue_areas` VALUES ('3378', '395', '北区', '3');
INSERT INTO `blue_areas` VALUES ('3379', '395', '南区', '3');
INSERT INTO `blue_areas` VALUES ('3380', '395', '荃湾区', '3');
INSERT INTO `blue_areas` VALUES ('3381', '395', '中西区', '3');
INSERT INTO `blue_areas` VALUES ('3382', '395', '离岛区', '3');
INSERT INTO `blue_areas` VALUES ('3383', '396', '澳门', '3');
INSERT INTO `blue_areas` VALUES ('3384', '397', '台北', '3');
INSERT INTO `blue_areas` VALUES ('3385', '397', '高雄', '3');
INSERT INTO `blue_areas` VALUES ('3386', '397', '基隆', '3');
INSERT INTO `blue_areas` VALUES ('3387', '397', '台中', '3');
INSERT INTO `blue_areas` VALUES ('3388', '397', '台南', '3');
INSERT INTO `blue_areas` VALUES ('3389', '397', '新竹', '3');
INSERT INTO `blue_areas` VALUES ('3390', '397', '嘉义', '3');
INSERT INTO `blue_areas` VALUES ('3391', '397', '宜兰县', '3');
INSERT INTO `blue_areas` VALUES ('3392', '397', '桃园县', '3');
INSERT INTO `blue_areas` VALUES ('3393', '397', '苗栗县', '3');
INSERT INTO `blue_areas` VALUES ('3394', '397', '彰化县', '3');
INSERT INTO `blue_areas` VALUES ('3395', '397', '南投县', '3');
INSERT INTO `blue_areas` VALUES ('3396', '397', '云林县', '3');
INSERT INTO `blue_areas` VALUES ('3397', '397', '屏东县', '3');
INSERT INTO `blue_areas` VALUES ('3398', '397', '台东县', '3');
INSERT INTO `blue_areas` VALUES ('3399', '397', '花莲县', '3');
INSERT INTO `blue_areas` VALUES ('3400', '397', '澎湖县', '3');
INSERT INTO `blue_areas` VALUES ('3401', '3', '合肥', '2');
INSERT INTO `blue_areas` VALUES ('3402', '3401', '庐阳区', '3');
INSERT INTO `blue_areas` VALUES ('3403', '3401', '瑶海区', '3');
INSERT INTO `blue_areas` VALUES ('3404', '3401', '蜀山区', '3');
INSERT INTO `blue_areas` VALUES ('3405', '3401', '包河区', '3');
INSERT INTO `blue_areas` VALUES ('3406', '3401', '长丰县', '3');
INSERT INTO `blue_areas` VALUES ('3407', '3401', '肥东县', '3');
INSERT INTO `blue_areas` VALUES ('3408', '3401', '肥西县', '3');
INSERT INTO `blue_areas` VALUES ('3426', '1', 'www', '2');
INSERT INTO `blue_areas` VALUES ('601', '61', '南靖县', '3');
INSERT INTO `blue_areas` VALUES ('602', '61', '平和县', '3');
INSERT INTO `blue_areas` VALUES ('603', '61', '华安县', '3');
INSERT INTO `blue_areas` VALUES ('604', '62', '皋兰县', '3');
INSERT INTO `blue_areas` VALUES ('605', '62', '城关区', '3');
INSERT INTO `blue_areas` VALUES ('606', '62', '七里河区', '3');
INSERT INTO `blue_areas` VALUES ('607', '62', '西固区', '3');
INSERT INTO `blue_areas` VALUES ('608', '62', '安宁区', '3');
INSERT INTO `blue_areas` VALUES ('609', '62', '红古区', '3');
INSERT INTO `blue_areas` VALUES ('610', '62', '永登县', '3');
INSERT INTO `blue_areas` VALUES ('611', '62', '榆中县', '3');
INSERT INTO `blue_areas` VALUES ('612', '63', '白银区', '3');
INSERT INTO `blue_areas` VALUES ('613', '63', '平川区', '3');
INSERT INTO `blue_areas` VALUES ('614', '63', '会宁县', '3');
INSERT INTO `blue_areas` VALUES ('615', '63', '景泰县', '3');
INSERT INTO `blue_areas` VALUES ('616', '63', '靖远县', '3');
INSERT INTO `blue_areas` VALUES ('617', '64', '临洮县', '3');
INSERT INTO `blue_areas` VALUES ('618', '64', '陇西县', '3');
INSERT INTO `blue_areas` VALUES ('619', '64', '通渭县', '3');
INSERT INTO `blue_areas` VALUES ('620', '64', '渭源县', '3');
INSERT INTO `blue_areas` VALUES ('621', '64', '漳县', '3');
INSERT INTO `blue_areas` VALUES ('622', '64', '岷县', '3');
INSERT INTO `blue_areas` VALUES ('623', '64', '安定区', '3');
INSERT INTO `blue_areas` VALUES ('624', '64', '安定区', '3');
INSERT INTO `blue_areas` VALUES ('625', '65', '合作市', '3');
INSERT INTO `blue_areas` VALUES ('626', '65', '临潭县', '3');
INSERT INTO `blue_areas` VALUES ('627', '65', '卓尼县', '3');
INSERT INTO `blue_areas` VALUES ('628', '65', '舟曲县', '3');
INSERT INTO `blue_areas` VALUES ('629', '65', '迭部县', '3');
INSERT INTO `blue_areas` VALUES ('630', '65', '玛曲县', '3');
INSERT INTO `blue_areas` VALUES ('631', '65', '碌曲县', '3');
INSERT INTO `blue_areas` VALUES ('632', '65', '夏河县', '3');
INSERT INTO `blue_areas` VALUES ('633', '66', '嘉峪关市', '3');
INSERT INTO `blue_areas` VALUES ('634', '67', '金川区', '3');
INSERT INTO `blue_areas` VALUES ('635', '67', '永昌县', '3');
INSERT INTO `blue_areas` VALUES ('636', '68', '肃州区', '3');
INSERT INTO `blue_areas` VALUES ('637', '68', '玉门市', '3');
INSERT INTO `blue_areas` VALUES ('638', '68', '敦煌市', '3');
INSERT INTO `blue_areas` VALUES ('639', '68', '金塔县', '3');
INSERT INTO `blue_areas` VALUES ('640', '68', '瓜州县', '3');
INSERT INTO `blue_areas` VALUES ('641', '68', '肃北', '3');
INSERT INTO `blue_areas` VALUES ('642', '68', '阿克塞', '3');
INSERT INTO `blue_areas` VALUES ('643', '69', '临夏市', '3');
INSERT INTO `blue_areas` VALUES ('644', '69', '临夏县', '3');
INSERT INTO `blue_areas` VALUES ('645', '69', '康乐县', '3');
INSERT INTO `blue_areas` VALUES ('646', '69', '永靖县', '3');
INSERT INTO `blue_areas` VALUES ('647', '69', '广河县', '3');
INSERT INTO `blue_areas` VALUES ('648', '69', '和政县', '3');
INSERT INTO `blue_areas` VALUES ('649', '69', '东乡族自治县', '3');
INSERT INTO `blue_areas` VALUES ('650', '69', '积石山', '3');
INSERT INTO `blue_areas` VALUES ('651', '70', '成县', '3');
INSERT INTO `blue_areas` VALUES ('652', '70', '徽县', '3');
INSERT INTO `blue_areas` VALUES ('653', '70', '康县', '3');
INSERT INTO `blue_areas` VALUES ('654', '70', '礼县', '3');
INSERT INTO `blue_areas` VALUES ('655', '70', '两当县', '3');
INSERT INTO `blue_areas` VALUES ('656', '70', '文县', '3');
INSERT INTO `blue_areas` VALUES ('657', '70', '西和县', '3');
INSERT INTO `blue_areas` VALUES ('658', '70', '宕昌县', '3');
INSERT INTO `blue_areas` VALUES ('659', '70', '武都区', '3');
INSERT INTO `blue_areas` VALUES ('660', '71', '崇信县', '3');
INSERT INTO `blue_areas` VALUES ('661', '71', '华亭县', '3');
INSERT INTO `blue_areas` VALUES ('662', '71', '静宁县', '3');
INSERT INTO `blue_areas` VALUES ('663', '71', '灵台县', '3');
INSERT INTO `blue_areas` VALUES ('664', '71', '崆峒区', '3');
INSERT INTO `blue_areas` VALUES ('665', '71', '庄浪县', '3');
INSERT INTO `blue_areas` VALUES ('666', '71', '泾川县', '3');
INSERT INTO `blue_areas` VALUES ('667', '72', '合水县', '3');
INSERT INTO `blue_areas` VALUES ('668', '72', '华池县', '3');
INSERT INTO `blue_areas` VALUES ('669', '72', '环县', '3');
INSERT INTO `blue_areas` VALUES ('670', '72', '宁县', '3');
INSERT INTO `blue_areas` VALUES ('671', '72', '庆城县', '3');
INSERT INTO `blue_areas` VALUES ('672', '72', '西峰区', '3');
INSERT INTO `blue_areas` VALUES ('673', '72', '镇原县', '3');
INSERT INTO `blue_areas` VALUES ('674', '72', '正宁县', '3');
INSERT INTO `blue_areas` VALUES ('675', '73', '甘谷县', '3');
INSERT INTO `blue_areas` VALUES ('676', '73', '秦安县', '3');
INSERT INTO `blue_areas` VALUES ('677', '73', '清水县', '3');
INSERT INTO `blue_areas` VALUES ('678', '73', '秦州区', '3');
INSERT INTO `blue_areas` VALUES ('679', '73', '麦积区', '3');
INSERT INTO `blue_areas` VALUES ('680', '73', '武山县', '3');
INSERT INTO `blue_areas` VALUES ('681', '73', '张家川', '3');
INSERT INTO `blue_areas` VALUES ('682', '74', '古浪县', '3');
INSERT INTO `blue_areas` VALUES ('683', '74', '民勤县', '3');
INSERT INTO `blue_areas` VALUES ('684', '74', '天祝', '3');
INSERT INTO `blue_areas` VALUES ('685', '74', '凉州区', '3');
INSERT INTO `blue_areas` VALUES ('686', '75', '高台县', '3');
INSERT INTO `blue_areas` VALUES ('687', '75', '临泽县', '3');
INSERT INTO `blue_areas` VALUES ('688', '75', '民乐县', '3');
INSERT INTO `blue_areas` VALUES ('689', '75', '山丹县', '3');
INSERT INTO `blue_areas` VALUES ('690', '75', '肃南', '3');
INSERT INTO `blue_areas` VALUES ('691', '75', '甘州区', '3');
INSERT INTO `blue_areas` VALUES ('692', '76', '从化市', '3');
INSERT INTO `blue_areas` VALUES ('693', '76', '天河区', '3');
INSERT INTO `blue_areas` VALUES ('694', '76', '东山区', '3');
INSERT INTO `blue_areas` VALUES ('695', '76', '白云区', '3');
INSERT INTO `blue_areas` VALUES ('696', '76', '海珠区', '3');
INSERT INTO `blue_areas` VALUES ('697', '76', '荔湾区', '3');
INSERT INTO `blue_areas` VALUES ('698', '76', '越秀区', '3');
INSERT INTO `blue_areas` VALUES ('699', '76', '黄埔区', '3');
INSERT INTO `blue_areas` VALUES ('700', '76', '番禺区', '3');
INSERT INTO `blue_areas` VALUES ('701', '76', '花都区', '3');
INSERT INTO `blue_areas` VALUES ('702', '76', '增城区', '3');
INSERT INTO `blue_areas` VALUES ('703', '76', '从化区', '3');
INSERT INTO `blue_areas` VALUES ('704', '76', '市郊', '3');
INSERT INTO `blue_areas` VALUES ('705', '77', '福田区', '3');
INSERT INTO `blue_areas` VALUES ('706', '77', '罗湖区', '3');
INSERT INTO `blue_areas` VALUES ('707', '77', '南山区', '3');
INSERT INTO `blue_areas` VALUES ('708', '77', '宝安区', '3');
INSERT INTO `blue_areas` VALUES ('709', '77', '龙岗区', '3');
INSERT INTO `blue_areas` VALUES ('710', '77', '盐田区', '3');
INSERT INTO `blue_areas` VALUES ('711', '78', '湘桥区', '3');
INSERT INTO `blue_areas` VALUES ('712', '78', '潮安县', '3');
INSERT INTO `blue_areas` VALUES ('713', '78', '饶平县', '3');
INSERT INTO `blue_areas` VALUES ('714', '79', '南城区', '3');
INSERT INTO `blue_areas` VALUES ('715', '79', '东城区', '3');
INSERT INTO `blue_areas` VALUES ('716', '79', '万江区', '3');
INSERT INTO `blue_areas` VALUES ('717', '79', '莞城区', '3');
INSERT INTO `blue_areas` VALUES ('718', '79', '石龙镇', '3');
INSERT INTO `blue_areas` VALUES ('719', '79', '虎门镇', '3');
INSERT INTO `blue_areas` VALUES ('720', '79', '麻涌镇', '3');
INSERT INTO `blue_areas` VALUES ('721', '79', '道滘镇', '3');
INSERT INTO `blue_areas` VALUES ('722', '79', '石碣镇', '3');
INSERT INTO `blue_areas` VALUES ('723', '79', '沙田镇', '3');
INSERT INTO `blue_areas` VALUES ('724', '79', '望牛墩镇', '3');
INSERT INTO `blue_areas` VALUES ('725', '79', '洪梅镇', '3');
INSERT INTO `blue_areas` VALUES ('726', '79', '茶山镇', '3');
INSERT INTO `blue_areas` VALUES ('727', '79', '寮步镇', '3');
INSERT INTO `blue_areas` VALUES ('728', '79', '大岭山镇', '3');
INSERT INTO `blue_areas` VALUES ('729', '79', '大朗镇', '3');
INSERT INTO `blue_areas` VALUES ('730', '79', '黄江镇', '3');
INSERT INTO `blue_areas` VALUES ('731', '79', '樟木头', '3');
INSERT INTO `blue_areas` VALUES ('732', '79', '凤岗镇', '3');
INSERT INTO `blue_areas` VALUES ('733', '79', '塘厦镇', '3');
INSERT INTO `blue_areas` VALUES ('734', '79', '谢岗镇', '3');
INSERT INTO `blue_areas` VALUES ('735', '79', '厚街镇', '3');
INSERT INTO `blue_areas` VALUES ('736', '79', '清溪镇', '3');
INSERT INTO `blue_areas` VALUES ('737', '79', '常平镇', '3');
INSERT INTO `blue_areas` VALUES ('738', '79', '桥头镇', '3');
INSERT INTO `blue_areas` VALUES ('739', '79', '横沥镇', '3');
INSERT INTO `blue_areas` VALUES ('740', '79', '东坑镇', '3');
INSERT INTO `blue_areas` VALUES ('741', '79', '企石镇', '3');
INSERT INTO `blue_areas` VALUES ('742', '79', '石排镇', '3');
INSERT INTO `blue_areas` VALUES ('743', '79', '长安镇', '3');
INSERT INTO `blue_areas` VALUES ('744', '79', '中堂镇', '3');
INSERT INTO `blue_areas` VALUES ('745', '79', '高埗镇', '3');
INSERT INTO `blue_areas` VALUES ('746', '80', '禅城区', '3');
INSERT INTO `blue_areas` VALUES ('747', '80', '南海区', '3');
INSERT INTO `blue_areas` VALUES ('748', '80', '顺德区', '3');
INSERT INTO `blue_areas` VALUES ('749', '80', '三水区', '3');
INSERT INTO `blue_areas` VALUES ('750', '80', '高明区', '3');
INSERT INTO `blue_areas` VALUES ('751', '81', '东源县', '3');
INSERT INTO `blue_areas` VALUES ('752', '81', '和平县', '3');
INSERT INTO `blue_areas` VALUES ('753', '81', '源城区', '3');
INSERT INTO `blue_areas` VALUES ('754', '81', '连平县', '3');
INSERT INTO `blue_areas` VALUES ('755', '81', '龙川县', '3');
INSERT INTO `blue_areas` VALUES ('756', '81', '紫金县', '3');
INSERT INTO `blue_areas` VALUES ('757', '82', '惠阳区', '3');
INSERT INTO `blue_areas` VALUES ('758', '82', '惠城区', '3');
INSERT INTO `blue_areas` VALUES ('759', '82', '大亚湾', '3');
INSERT INTO `blue_areas` VALUES ('760', '82', '博罗县', '3');
INSERT INTO `blue_areas` VALUES ('761', '82', '惠东县', '3');
INSERT INTO `blue_areas` VALUES ('762', '82', '龙门县', '3');
INSERT INTO `blue_areas` VALUES ('763', '83', '江海区', '3');
INSERT INTO `blue_areas` VALUES ('764', '83', '蓬江区', '3');
INSERT INTO `blue_areas` VALUES ('765', '83', '新会区', '3');
INSERT INTO `blue_areas` VALUES ('766', '83', '台山市', '3');
INSERT INTO `blue_areas` VALUES ('767', '83', '开平市', '3');
INSERT INTO `blue_areas` VALUES ('768', '83', '鹤山市', '3');
INSERT INTO `blue_areas` VALUES ('769', '83', '恩平市', '3');
INSERT INTO `blue_areas` VALUES ('770', '84', '榕城区', '3');
INSERT INTO `blue_areas` VALUES ('771', '84', '普宁市', '3');
INSERT INTO `blue_areas` VALUES ('772', '84', '揭东县', '3');
INSERT INTO `blue_areas` VALUES ('773', '84', '揭西县', '3');
INSERT INTO `blue_areas` VALUES ('774', '84', '惠来县', '3');
INSERT INTO `blue_areas` VALUES ('775', '85', '茂南区', '3');
INSERT INTO `blue_areas` VALUES ('776', '85', '茂港区', '3');
INSERT INTO `blue_areas` VALUES ('777', '85', '高州市', '3');
INSERT INTO `blue_areas` VALUES ('778', '85', '化州市', '3');
INSERT INTO `blue_areas` VALUES ('779', '85', '信宜市', '3');
INSERT INTO `blue_areas` VALUES ('780', '85', '电白县', '3');
INSERT INTO `blue_areas` VALUES ('781', '86', '梅县', '3');
INSERT INTO `blue_areas` VALUES ('782', '86', '梅江区', '3');
INSERT INTO `blue_areas` VALUES ('783', '86', '兴宁市', '3');
INSERT INTO `blue_areas` VALUES ('784', '86', '大埔县', '3');
INSERT INTO `blue_areas` VALUES ('785', '86', '丰顺县', '3');
INSERT INTO `blue_areas` VALUES ('786', '86', '五华县', '3');
INSERT INTO `blue_areas` VALUES ('787', '86', '平远县', '3');
INSERT INTO `blue_areas` VALUES ('788', '86', '蕉岭县', '3');
INSERT INTO `blue_areas` VALUES ('789', '87', '清城区', '3');
INSERT INTO `blue_areas` VALUES ('790', '87', '英德市', '3');
INSERT INTO `blue_areas` VALUES ('791', '87', '连州市', '3');
INSERT INTO `blue_areas` VALUES ('792', '87', '佛冈县', '3');
INSERT INTO `blue_areas` VALUES ('793', '87', '阳山县', '3');
INSERT INTO `blue_areas` VALUES ('794', '87', '清新县', '3');
INSERT INTO `blue_areas` VALUES ('795', '87', '连山', '3');
INSERT INTO `blue_areas` VALUES ('796', '87', '连南', '3');
INSERT INTO `blue_areas` VALUES ('797', '88', '南澳县', '3');
INSERT INTO `blue_areas` VALUES ('798', '88', '潮阳区', '3');
INSERT INTO `blue_areas` VALUES ('799', '88', '澄海区', '3');
INSERT INTO `blue_areas` VALUES ('800', '88', '龙湖区', '3');
INSERT INTO `blue_areas` VALUES ('801', '88', '金平区', '3');
INSERT INTO `blue_areas` VALUES ('802', '88', '濠江区', '3');
INSERT INTO `blue_areas` VALUES ('803', '88', '潮南区', '3');
INSERT INTO `blue_areas` VALUES ('804', '89', '城区', '3');
INSERT INTO `blue_areas` VALUES ('805', '89', '陆丰市', '3');
INSERT INTO `blue_areas` VALUES ('806', '89', '海丰县', '3');
INSERT INTO `blue_areas` VALUES ('807', '89', '陆河县', '3');
INSERT INTO `blue_areas` VALUES ('808', '90', '曲江县', '3');
INSERT INTO `blue_areas` VALUES ('809', '90', '浈江区', '3');
INSERT INTO `blue_areas` VALUES ('810', '90', '武江区', '3');
INSERT INTO `blue_areas` VALUES ('811', '90', '曲江区', '3');
INSERT INTO `blue_areas` VALUES ('812', '90', '乐昌市', '3');
INSERT INTO `blue_areas` VALUES ('813', '90', '南雄市', '3');
INSERT INTO `blue_areas` VALUES ('814', '90', '始兴县', '3');
INSERT INTO `blue_areas` VALUES ('815', '90', '仁化县', '3');
INSERT INTO `blue_areas` VALUES ('816', '90', '翁源县', '3');
INSERT INTO `blue_areas` VALUES ('817', '90', '新丰县', '3');
INSERT INTO `blue_areas` VALUES ('818', '90', '乳源', '3');
INSERT INTO `blue_areas` VALUES ('819', '91', '江城区', '3');
INSERT INTO `blue_areas` VALUES ('820', '91', '阳春市', '3');
INSERT INTO `blue_areas` VALUES ('821', '91', '阳西县', '3');
INSERT INTO `blue_areas` VALUES ('822', '91', '阳东县', '3');
INSERT INTO `blue_areas` VALUES ('823', '92', '云城区', '3');
INSERT INTO `blue_areas` VALUES ('824', '92', '罗定市', '3');
INSERT INTO `blue_areas` VALUES ('825', '92', '新兴县', '3');
INSERT INTO `blue_areas` VALUES ('826', '92', '郁南县', '3');
INSERT INTO `blue_areas` VALUES ('827', '92', '云安县', '3');
INSERT INTO `blue_areas` VALUES ('828', '93', '赤坎区', '3');
INSERT INTO `blue_areas` VALUES ('829', '93', '霞山区', '3');
INSERT INTO `blue_areas` VALUES ('830', '93', '坡头区', '3');
INSERT INTO `blue_areas` VALUES ('831', '93', '麻章区', '3');
INSERT INTO `blue_areas` VALUES ('832', '93', '廉江市', '3');
INSERT INTO `blue_areas` VALUES ('833', '93', '雷州市', '3');
INSERT INTO `blue_areas` VALUES ('834', '93', '吴川市', '3');
INSERT INTO `blue_areas` VALUES ('835', '93', '遂溪县', '3');
INSERT INTO `blue_areas` VALUES ('836', '93', '徐闻县', '3');
INSERT INTO `blue_areas` VALUES ('837', '94', '肇庆市', '3');
INSERT INTO `blue_areas` VALUES ('838', '94', '高要市', '3');
INSERT INTO `blue_areas` VALUES ('839', '94', '四会市', '3');
INSERT INTO `blue_areas` VALUES ('840', '94', '广宁县', '3');
INSERT INTO `blue_areas` VALUES ('841', '94', '怀集县', '3');
INSERT INTO `blue_areas` VALUES ('842', '94', '封开县', '3');
INSERT INTO `blue_areas` VALUES ('843', '94', '德庆县', '3');
INSERT INTO `blue_areas` VALUES ('844', '95', '石岐街道', '3');
INSERT INTO `blue_areas` VALUES ('845', '95', '东区街道', '3');
INSERT INTO `blue_areas` VALUES ('846', '95', '西区街道', '3');
INSERT INTO `blue_areas` VALUES ('847', '95', '环城街道', '3');
INSERT INTO `blue_areas` VALUES ('848', '95', '中山港街道', '3');
INSERT INTO `blue_areas` VALUES ('849', '95', '五桂山街道', '3');
INSERT INTO `blue_areas` VALUES ('850', '96', '香洲区', '3');
INSERT INTO `blue_areas` VALUES ('851', '96', '斗门区', '3');
INSERT INTO `blue_areas` VALUES ('852', '96', '金湾区', '3');
INSERT INTO `blue_areas` VALUES ('853', '97', '邕宁区', '3');
INSERT INTO `blue_areas` VALUES ('854', '97', '青秀区', '3');
INSERT INTO `blue_areas` VALUES ('855', '97', '兴宁区', '3');
INSERT INTO `blue_areas` VALUES ('856', '97', '良庆区', '3');
INSERT INTO `blue_areas` VALUES ('857', '97', '西乡塘区', '3');
INSERT INTO `blue_areas` VALUES ('858', '97', '江南区', '3');
INSERT INTO `blue_areas` VALUES ('859', '97', '武鸣县', '3');
INSERT INTO `blue_areas` VALUES ('860', '97', '隆安县', '3');
INSERT INTO `blue_areas` VALUES ('861', '97', '马山县', '3');
INSERT INTO `blue_areas` VALUES ('862', '97', '上林县', '3');
INSERT INTO `blue_areas` VALUES ('863', '97', '宾阳县', '3');
INSERT INTO `blue_areas` VALUES ('864', '97', '横县', '3');
INSERT INTO `blue_areas` VALUES ('865', '98', '秀峰区', '3');
INSERT INTO `blue_areas` VALUES ('866', '98', '叠彩区', '3');
INSERT INTO `blue_areas` VALUES ('867', '98', '象山区', '3');
INSERT INTO `blue_areas` VALUES ('868', '98', '七星区', '3');
INSERT INTO `blue_areas` VALUES ('869', '98', '雁山区', '3');
INSERT INTO `blue_areas` VALUES ('870', '98', '阳朔县', '3');
INSERT INTO `blue_areas` VALUES ('871', '98', '临桂县', '3');
INSERT INTO `blue_areas` VALUES ('872', '98', '灵川县', '3');
INSERT INTO `blue_areas` VALUES ('873', '98', '全州县', '3');
INSERT INTO `blue_areas` VALUES ('874', '98', '平乐县', '3');
INSERT INTO `blue_areas` VALUES ('875', '98', '兴安县', '3');
INSERT INTO `blue_areas` VALUES ('876', '98', '灌阳县', '3');
INSERT INTO `blue_areas` VALUES ('877', '98', '荔浦县', '3');
INSERT INTO `blue_areas` VALUES ('878', '98', '资源县', '3');
INSERT INTO `blue_areas` VALUES ('879', '98', '永福县', '3');
INSERT INTO `blue_areas` VALUES ('880', '98', '龙胜', '3');
INSERT INTO `blue_areas` VALUES ('881', '98', '恭城', '3');
INSERT INTO `blue_areas` VALUES ('882', '99', '右江区', '3');
INSERT INTO `blue_areas` VALUES ('883', '99', '凌云县', '3');
INSERT INTO `blue_areas` VALUES ('884', '99', '平果县', '3');
INSERT INTO `blue_areas` VALUES ('885', '99', '西林县', '3');
INSERT INTO `blue_areas` VALUES ('886', '99', '乐业县', '3');
INSERT INTO `blue_areas` VALUES ('887', '99', '德保县', '3');
INSERT INTO `blue_areas` VALUES ('888', '99', '田林县', '3');
INSERT INTO `blue_areas` VALUES ('889', '99', '田阳县', '3');
INSERT INTO `blue_areas` VALUES ('890', '99', '靖西县', '3');
INSERT INTO `blue_areas` VALUES ('891', '99', '田东县', '3');
INSERT INTO `blue_areas` VALUES ('892', '99', '那坡县', '3');
INSERT INTO `blue_areas` VALUES ('893', '99', '隆林', '3');
INSERT INTO `blue_areas` VALUES ('894', '100', '海城区', '3');
INSERT INTO `blue_areas` VALUES ('895', '100', '银海区', '3');
INSERT INTO `blue_areas` VALUES ('896', '100', '铁山港区', '3');
INSERT INTO `blue_areas` VALUES ('897', '100', '合浦县', '3');
INSERT INTO `blue_areas` VALUES ('898', '101', '江州区', '3');
INSERT INTO `blue_areas` VALUES ('899', '101', '凭祥市', '3');
INSERT INTO `blue_areas` VALUES ('900', '101', '宁明县', '3');
INSERT INTO `blue_areas` VALUES ('901', '101', '扶绥县', '3');
INSERT INTO `blue_areas` VALUES ('902', '101', '龙州县', '3');
INSERT INTO `blue_areas` VALUES ('903', '101', '大新县', '3');
INSERT INTO `blue_areas` VALUES ('904', '101', '天等县', '3');
INSERT INTO `blue_areas` VALUES ('905', '102', '港口区', '3');
INSERT INTO `blue_areas` VALUES ('906', '102', '防城区', '3');
INSERT INTO `blue_areas` VALUES ('907', '102', '东兴市', '3');
INSERT INTO `blue_areas` VALUES ('908', '102', '上思县', '3');
INSERT INTO `blue_areas` VALUES ('909', '103', '港北区', '3');
INSERT INTO `blue_areas` VALUES ('910', '103', '港南区', '3');
INSERT INTO `blue_areas` VALUES ('911', '103', '覃塘区', '3');
INSERT INTO `blue_areas` VALUES ('912', '103', '桂平市', '3');
INSERT INTO `blue_areas` VALUES ('913', '103', '平南县', '3');
INSERT INTO `blue_areas` VALUES ('914', '104', '金城江区', '3');
INSERT INTO `blue_areas` VALUES ('915', '104', '宜州市', '3');
INSERT INTO `blue_areas` VALUES ('916', '104', '天峨县', '3');
INSERT INTO `blue_areas` VALUES ('917', '104', '凤山县', '3');
INSERT INTO `blue_areas` VALUES ('918', '104', '南丹县', '3');
INSERT INTO `blue_areas` VALUES ('919', '104', '东兰县', '3');
INSERT INTO `blue_areas` VALUES ('920', '104', '都安', '3');
INSERT INTO `blue_areas` VALUES ('921', '104', '罗城', '3');
INSERT INTO `blue_areas` VALUES ('922', '104', '巴马', '3');
INSERT INTO `blue_areas` VALUES ('923', '104', '环江', '3');
INSERT INTO `blue_areas` VALUES ('924', '104', '大化', '3');
INSERT INTO `blue_areas` VALUES ('925', '105', '八步区', '3');
INSERT INTO `blue_areas` VALUES ('926', '105', '钟山县', '3');
INSERT INTO `blue_areas` VALUES ('927', '105', '昭平县', '3');
INSERT INTO `blue_areas` VALUES ('928', '105', '富川', '3');
INSERT INTO `blue_areas` VALUES ('929', '106', '兴宾区', '3');
INSERT INTO `blue_areas` VALUES ('930', '106', '合山市', '3');
INSERT INTO `blue_areas` VALUES ('931', '106', '象州县', '3');
INSERT INTO `blue_areas` VALUES ('932', '106', '武宣县', '3');
INSERT INTO `blue_areas` VALUES ('933', '106', '忻城县', '3');
INSERT INTO `blue_areas` VALUES ('934', '106', '金秀', '3');
INSERT INTO `blue_areas` VALUES ('935', '107', '城中区', '3');
INSERT INTO `blue_areas` VALUES ('936', '107', '鱼峰区', '3');
INSERT INTO `blue_areas` VALUES ('937', '107', '柳北区', '3');
INSERT INTO `blue_areas` VALUES ('938', '107', '柳南区', '3');
INSERT INTO `blue_areas` VALUES ('939', '107', '柳江县', '3');
INSERT INTO `blue_areas` VALUES ('940', '107', '柳城县', '3');
INSERT INTO `blue_areas` VALUES ('941', '107', '鹿寨县', '3');
INSERT INTO `blue_areas` VALUES ('942', '107', '融安县', '3');
INSERT INTO `blue_areas` VALUES ('943', '107', '融水', '3');
INSERT INTO `blue_areas` VALUES ('944', '107', '三江', '3');
INSERT INTO `blue_areas` VALUES ('945', '108', '钦南区', '3');
INSERT INTO `blue_areas` VALUES ('946', '108', '钦北区', '3');
INSERT INTO `blue_areas` VALUES ('947', '108', '灵山县', '3');
INSERT INTO `blue_areas` VALUES ('948', '108', '浦北县', '3');
INSERT INTO `blue_areas` VALUES ('949', '109', '万秀区', '3');
INSERT INTO `blue_areas` VALUES ('950', '109', '蝶山区', '3');
INSERT INTO `blue_areas` VALUES ('951', '109', '长洲区', '3');
INSERT INTO `blue_areas` VALUES ('952', '109', '岑溪市', '3');
INSERT INTO `blue_areas` VALUES ('953', '109', '苍梧县', '3');
INSERT INTO `blue_areas` VALUES ('954', '109', '藤县', '3');
INSERT INTO `blue_areas` VALUES ('955', '109', '蒙山县', '3');
INSERT INTO `blue_areas` VALUES ('956', '110', '玉州区', '3');
INSERT INTO `blue_areas` VALUES ('957', '110', '北流市', '3');
INSERT INTO `blue_areas` VALUES ('958', '110', '容县', '3');
INSERT INTO `blue_areas` VALUES ('959', '110', '陆川县', '3');
INSERT INTO `blue_areas` VALUES ('960', '110', '博白县', '3');
INSERT INTO `blue_areas` VALUES ('961', '110', '兴业县', '3');
INSERT INTO `blue_areas` VALUES ('962', '111', '南明区', '3');
INSERT INTO `blue_areas` VALUES ('963', '111', '云岩区', '3');
INSERT INTO `blue_areas` VALUES ('964', '111', '花溪区', '3');
INSERT INTO `blue_areas` VALUES ('965', '111', '乌当区', '3');
INSERT INTO `blue_areas` VALUES ('966', '111', '白云区', '3');
INSERT INTO `blue_areas` VALUES ('967', '111', '小河区', '3');
INSERT INTO `blue_areas` VALUES ('968', '111', '金阳新区', '3');
INSERT INTO `blue_areas` VALUES ('969', '111', '新天园区', '3');
INSERT INTO `blue_areas` VALUES ('970', '111', '清镇市', '3');
INSERT INTO `blue_areas` VALUES ('971', '111', '开阳县', '3');
INSERT INTO `blue_areas` VALUES ('972', '111', '修文县', '3');
INSERT INTO `blue_areas` VALUES ('973', '111', '息烽县', '3');
INSERT INTO `blue_areas` VALUES ('974', '112', '西秀区', '3');
INSERT INTO `blue_areas` VALUES ('975', '112', '关岭', '3');
INSERT INTO `blue_areas` VALUES ('976', '112', '镇宁', '3');
INSERT INTO `blue_areas` VALUES ('977', '112', '紫云', '3');
INSERT INTO `blue_areas` VALUES ('978', '112', '平坝县', '3');
INSERT INTO `blue_areas` VALUES ('979', '112', '普定县', '3');
INSERT INTO `blue_areas` VALUES ('980', '113', '毕节市', '3');
INSERT INTO `blue_areas` VALUES ('981', '113', '大方县', '3');
INSERT INTO `blue_areas` VALUES ('982', '113', '黔西县', '3');
INSERT INTO `blue_areas` VALUES ('983', '113', '金沙县', '3');
INSERT INTO `blue_areas` VALUES ('984', '113', '织金县', '3');
INSERT INTO `blue_areas` VALUES ('985', '113', '纳雍县', '3');
INSERT INTO `blue_areas` VALUES ('986', '113', '赫章县', '3');
INSERT INTO `blue_areas` VALUES ('987', '113', '威宁', '3');
INSERT INTO `blue_areas` VALUES ('988', '114', '钟山区', '3');
INSERT INTO `blue_areas` VALUES ('989', '114', '六枝特区', '3');
INSERT INTO `blue_areas` VALUES ('990', '114', '水城县', '3');
INSERT INTO `blue_areas` VALUES ('991', '114', '盘县', '3');
INSERT INTO `blue_areas` VALUES ('992', '115', '凯里市', '3');
INSERT INTO `blue_areas` VALUES ('993', '115', '黄平县', '3');
INSERT INTO `blue_areas` VALUES ('994', '115', '施秉县', '3');
INSERT INTO `blue_areas` VALUES ('995', '115', '三穗县', '3');
INSERT INTO `blue_areas` VALUES ('996', '115', '镇远县', '3');
INSERT INTO `blue_areas` VALUES ('997', '115', '岑巩县', '3');
INSERT INTO `blue_areas` VALUES ('998', '115', '天柱县', '3');
INSERT INTO `blue_areas` VALUES ('999', '115', '锦屏县', '3');
INSERT INTO `blue_areas` VALUES ('1000', '115', '剑河县', '3');
INSERT INTO `blue_areas` VALUES ('1001', '115', '台江县', '3');
INSERT INTO `blue_areas` VALUES ('1002', '115', '黎平县', '3');
INSERT INTO `blue_areas` VALUES ('1003', '115', '榕江县', '3');
INSERT INTO `blue_areas` VALUES ('1004', '115', '从江县', '3');
INSERT INTO `blue_areas` VALUES ('1005', '115', '雷山县', '3');
INSERT INTO `blue_areas` VALUES ('1006', '115', '麻江县', '3');
INSERT INTO `blue_areas` VALUES ('1007', '115', '丹寨县', '3');
INSERT INTO `blue_areas` VALUES ('1008', '116', '都匀市', '3');
INSERT INTO `blue_areas` VALUES ('1009', '116', '福泉市', '3');
INSERT INTO `blue_areas` VALUES ('1010', '116', '荔波县', '3');
INSERT INTO `blue_areas` VALUES ('1011', '116', '贵定县', '3');
INSERT INTO `blue_areas` VALUES ('1012', '116', '瓮安县', '3');
INSERT INTO `blue_areas` VALUES ('1013', '116', '独山县', '3');
INSERT INTO `blue_areas` VALUES ('1014', '116', '平塘县', '3');
INSERT INTO `blue_areas` VALUES ('1015', '116', '罗甸县', '3');
INSERT INTO `blue_areas` VALUES ('1016', '116', '长顺县', '3');
INSERT INTO `blue_areas` VALUES ('1017', '116', '龙里县', '3');
INSERT INTO `blue_areas` VALUES ('1018', '116', '惠水县', '3');
INSERT INTO `blue_areas` VALUES ('1019', '116', '三都', '3');
INSERT INTO `blue_areas` VALUES ('1020', '117', '兴义市', '3');

-- ----------------------------
-- Table structure for `blue_article`
-- ----------------------------
DROP TABLE IF EXISTS `blue_article`;
CREATE TABLE `blue_article` (
  `article_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `position_id` int(32) NOT NULL COMMENT '类别id',
  `title` varchar(64) NOT NULL COMMENT '标题',
  `content` mediumtext NOT NULL,
  `add_time` varchar(32) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '状态 1：上线0:下线',
  `read_num` int(11) NOT NULL DEFAULT '0' COMMENT '阅读量',
  `sort` tinyint(6) DEFAULT NULL COMMENT '排序',
  `is_top` tinyint(5) DEFAULT '0' COMMENT '是否置顶 1：是 0：否',
  PRIMARY KEY (`article_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blue_article
-- ----------------------------
INSERT INTO `blue_article` VALUES ('1', '131', '解绑手机号', '解绑手机号', '1570271376', '1', '0', '1', '1');

-- ----------------------------
-- Table structure for `blue_article_category`
-- ----------------------------
DROP TABLE IF EXISTS `blue_article_category`;
CREATE TABLE `blue_article_category` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `parent_id` int(10) NOT NULL,
  `keywords` varchar(128) NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `status` tinyint(2) NOT NULL COMMENT '状态 1：开启 0关闭',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of blue_article_category
-- ----------------------------
INSERT INTO `blue_article_category` VALUES ('2', '市场动态', '0', '首页文章', '127', '1');
INSERT INTO `blue_article_category` VALUES ('3', '单条提示', '0', '111', '1', '1');
INSERT INTO `blue_article_category` VALUES ('4', '风险提示', '0', '', '0', '0');
INSERT INTO `blue_article_category` VALUES ('6', '帮助中心', '0', '', '0', '0');
INSERT INTO `blue_article_category` VALUES ('7', '快速链接', '0', '快速链接', '0', '1');
INSERT INTO `blue_article_category` VALUES ('32', '系统公告', '0', '系统公告', '10', '1');
INSERT INTO `blue_article_category` VALUES ('110', '转入币', '63', '转入币', '110', '1');
INSERT INTO `blue_article_category` VALUES ('111', '转出币', '63', '转出币', '111', '1');
INSERT INTO `blue_article_category` VALUES ('118', '关于我们', '7', '', '0', '0');
INSERT INTO `blue_article_category` VALUES ('119', '加入我们', '7', '', '0', '0');
INSERT INTO `blue_article_category` VALUES ('120', '提现提示', '3', '', '0', '0');
INSERT INTO `blue_article_category` VALUES ('121', '邀请规则', '3', '', '0', '0');
INSERT INTO `blue_article_category` VALUES ('122', '邀请好友', '3', '', '0', '0');
INSERT INTO `blue_article_category` VALUES ('123', '买入指南', '61', '0', '0', '0');
INSERT INTO `blue_article_category` VALUES ('125', '银行转账充值', '62', '0', '0', '0');
INSERT INTO `blue_article_category` VALUES ('126', '新币上线申请', '3', '', '0', '0');
INSERT INTO `blue_article_category` VALUES ('127', '官方公告', '0', '11', '111', '1');
INSERT INTO `blue_article_category` VALUES ('128', '行业资讯', '0', '', '0', '0');
INSERT INTO `blue_article_category` VALUES ('129', '项目介绍', '0', '项目介绍', '0', '0');
INSERT INTO `blue_article_category` VALUES ('130', '账号安全', '6', '账号安全', '1', '0');
INSERT INTO `blue_article_category` VALUES ('131', '交易会员', '6', '交易会员', '2', '0');
INSERT INTO `blue_article_category` VALUES ('132', '问题反馈', '6', '问题反馈', '3', '0');

-- ----------------------------
-- Table structure for `blue_bank`
-- ----------------------------
DROP TABLE IF EXISTS `blue_bank`;
CREATE TABLE `blue_bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(100) DEFAULT NULL COMMENT '银行卡名称',
  `bank_en` varchar(100) DEFAULT NULL COMMENT '英文标识',
  `sort` tinyint(5) DEFAULT NULL COMMENT '排序',
  `status` tinyint(5) DEFAULT '1' COMMENT '状态 1：上线 0：下线',
  `op_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='银行卡列表表';

-- ----------------------------
-- Records of blue_bank
-- ----------------------------
INSERT INTO `blue_bank` VALUES ('1', '工商银行', 'ICBC', '1', '1', '1570178045');
INSERT INTO `blue_bank` VALUES ('2', '中国银行', 'BOC', '2', '1', '1570178038');

-- ----------------------------
-- Table structure for `blue_config`
-- ----------------------------
DROP TABLE IF EXISTS `blue_config`;
CREATE TABLE `blue_config` (
  `key` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `type` tinyint(4) DEFAULT '1' COMMENT '类型 1：文本 2：图片',
  `name` varchar(200) DEFAULT NULL COMMENT '中文名称'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blue_config
-- ----------------------------
INSERT INTO `blue_config` VALUES ('web_title', '云链口袋', '1', '网站标题');
INSERT INTO `blue_config` VALUES ('web_keywords', '商品，卡卷', '1', '网站关键字');
INSERT INTO `blue_config` VALUES ('web_desc', '淘宝返利,开箱折扣', '1', '网站描述');
INSERT INTO `blue_config` VALUES ('web_logo', '/Uploads/Public/Uploads/2019-10-03/5d95bf2789ae0.png', '2', '网站LOGO');
INSERT INTO `blue_config` VALUES ('copyright', 'Copyright © 上海 版权所有  沪ICP备18042564号-2', '1', '版权信息');
INSERT INTO `blue_config` VALUES ('record', '上海', '1', '备案信息');
INSERT INTO `blue_config` VALUES ('tel', '400-808-3353', '1', '官方电话');
INSERT INTO `blue_config` VALUES ('email', '824398038@qq.com', '1', '官方邮箱');
INSERT INTO `blue_config` VALUES ('business_email', '2018 University of Washington | Seattle, WA', '1', '企业邮箱');
INSERT INTO `blue_config` VALUES ('web_name', '云链口袋', '1', '网站名称');
INSERT INTO `blue_config` VALUES ('company_address', '上海市徐汇区', '1', '公司地址');
INSERT INTO `blue_config` VALUES ('qq', '824398038', '1', 'QQ');
INSERT INTO `blue_config` VALUES ('technical_support', 'hmlwan(824398038)', '1', '技术支持');
INSERT INTO `blue_config` VALUES ('cert_num', '5', '1', '认证次数');
INSERT INTO `blue_config` VALUES ('set_user_currency', '2', '1', '设置用户币种');
INSERT INTO `blue_config` VALUES ('sign_luckdraw_title', '每日签到', '1', '签到抽奖规则');
INSERT INTO `blue_config` VALUES ('init_recomment_code', '1000000', '1', '初始推荐码');
INSERT INTO `blue_config` VALUES ('first_promotion', '一级推广', '1', '一级推广');
INSERT INTO `blue_config` VALUES ('second_promotion', '二级推广', '1', '二级推广');

-- ----------------------------
-- Table structure for `blue_currency`
-- ----------------------------
DROP TABLE IF EXISTS `blue_currency`;
CREATE TABLE `blue_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '货币id',
  `currency_name` varchar(32) DEFAULT NULL COMMENT '货币名称',
  `currency_logo` varchar(200) DEFAULT NULL COMMENT '货币logo',
  `currency_en` varchar(32) DEFAULT NULL COMMENT '英文标识',
  `is_lock` tinyint(4) DEFAULT '0' COMMENT '是否上线 0 是 1否',
  `sort` tinyint(4) DEFAULT '1' COMMENT '排序',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='币种表';

-- ----------------------------
-- Records of blue_currency
-- ----------------------------
INSERT INTO `blue_currency` VALUES ('2', '云链币', '/Uploads/Public/Uploads/2019-10-04/5d96fab939a76.png', 'YLB', '0', '1', '1570175685');

-- ----------------------------
-- Table structure for `blue_currency_user`
-- ----------------------------
DROP TABLE IF EXISTS `blue_currency_user`;
CREATE TABLE `blue_currency_user` (
  `cu_id` int(32) NOT NULL AUTO_INCREMENT,
  `member_id` int(32) NOT NULL COMMENT '用户id',
  `currency_id` int(32) NOT NULL COMMENT '货币id',
  `num` decimal(10,2) NOT NULL COMMENT '数量',
  `forzen_num` decimal(10,2) NOT NULL COMMENT '冻结数量',
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`cu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of blue_currency_user
-- ----------------------------

-- ----------------------------
-- Table structure for `blue_goods`
-- ----------------------------
DROP TABLE IF EXISTS `blue_goods`;
CREATE TABLE `blue_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(10) DEFAULT NULL COMMENT '类别',
  `good_name` varchar(200) DEFAULT NULL,
  `good_title` varchar(200) DEFAULT NULL COMMENT '商品标题',
  `currency_id` int(11) DEFAULT NULL COMMENT '币种id',
  `price` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `logo` varchar(200) DEFAULT NULL COMMENT 'logo',
  `spec` varchar(2048) DEFAULT NULL COMMENT '商品规格',
  `status` tinyint(5) DEFAULT '0' COMMENT '状态 1：发布 0：未发布',
  `sort` tinyint(4) DEFAULT '1' COMMENT '排序',
  `luckdraw_num` varchar(50) DEFAULT NULL COMMENT '抽奖数值（唯一）',
  `is_exchange` tinyint(6) DEFAULT '1' COMMENT '是否兑换 0 否 1是',
  `introduce` text COMMENT '商品详情',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `op_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='商品卡卷表';

-- ----------------------------
-- Records of blue_goods
-- ----------------------------
INSERT INTO `blue_goods` VALUES ('1', '2', 'honor荣耀 荣耀10青春版', '景斗云2.0会员预售优享价', '2', '1200.00', '/Uploads/Public/Uploads/2019-10-04/5d973c2c52e87.jpg', '{\"spec_name\":\"颜色\",\"spec_val\":[\"绿色\",\"蓝色\",\"红色\"]}', '1', '1', null, '1', '&lt;img src=&quot;/Public/kindeditor/attached/image/20191004/20191004122753_35257.jpg&quot; alt=&quot;&quot; /&gt;', null, '1570194024');

-- ----------------------------
-- Table structure for `blue_goods_type`
-- ----------------------------
DROP TABLE IF EXISTS `blue_goods_type`;
CREATE TABLE `blue_goods_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(200) DEFAULT NULL COMMENT '商品类别名称',
  `sort` tinyint(6) DEFAULT '1' COMMENT '排序',
  `status` tinyint(6) DEFAULT '1' COMMENT '状态 1：正常 0：下线',
  `op_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商品类别表';

-- ----------------------------
-- Records of blue_goods_type
-- ----------------------------
INSERT INTO `blue_goods_type` VALUES ('1', '精美商品', '1', '1', '1570179922');
INSERT INTO `blue_goods_type` VALUES ('2', '充值服务', '2', '1', '1570179962');

-- ----------------------------
-- Table structure for `blue_luckdraw_conf`
-- ----------------------------
DROP TABLE IF EXISTS `blue_luckdraw_conf`;
CREATE TABLE `blue_luckdraw_conf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL COMMENT '名称',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态 1：开启 0：关闭',
  `add_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blue_luckdraw_conf
-- ----------------------------
INSERT INTO `blue_luckdraw_conf` VALUES ('1', '每日签到', '1', '1570283482');

-- ----------------------------
-- Table structure for `blue_luckdraw_conf_detail`
-- ----------------------------
DROP TABLE IF EXISTS `blue_luckdraw_conf_detail`;
CREATE TABLE `blue_luckdraw_conf_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` varchar(50) DEFAULT NULL,
  `luckdraw_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blue_luckdraw_conf_detail
-- ----------------------------
INSERT INTO `blue_luckdraw_conf_detail` VALUES ('1', '2', '0');
INSERT INTO `blue_luckdraw_conf_detail` VALUES ('2', '1', '1');
INSERT INTO `blue_luckdraw_conf_detail` VALUES ('3', '2', '1');

-- ----------------------------
-- Table structure for `blue_luckdraw_record`
-- ----------------------------
DROP TABLE IF EXISTS `blue_luckdraw_record`;
CREATE TABLE `blue_luckdraw_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL COMMENT '商品类型',
  `type_name` varchar(100) DEFAULT NULL COMMENT '类型名称',
  `good_id` varchar(50) DEFAULT NULL COMMENT '商品id -1表示未中奖',
  `good_name` varchar(100) DEFAULT NULL,
  `num` decimal(10,0) DEFAULT '0' COMMENT '数量',
  `price` decimal(8,2) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL COMMENT '抽奖类型 1：签到 2:推广',
  `micrtimes` varchar(200) DEFAULT NULL COMMENT '时间戳 微秒',
  `mod` varchar(100) DEFAULT NULL COMMENT '余数',
  `add_time` int(11) DEFAULT NULL COMMENT '时间',
  `sub_id` int(11) DEFAULT NULL COMMENT '下级id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='签到记录表';

-- ----------------------------
-- Records of blue_luckdraw_record
-- ----------------------------

-- ----------------------------
-- Table structure for `blue_member`
-- ----------------------------
DROP TABLE IF EXISTS `blue_member`;
CREATE TABLE `blue_member` (
  `member_id` int(32) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) DEFAULT NULL,
  `pwd` varchar(64) DEFAULT NULL COMMENT '密码',
  `pid` varchar(64) DEFAULT NULL COMMENT '邀请人',
  `nick` varchar(64) DEFAULT NULL COMMENT '昵称',
  `name` varchar(32) DEFAULT NULL COMMENT '真实姓名',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `ip` varchar(64) DEFAULT NULL COMMENT '注册IP',
  `reg_time` int(32) DEFAULT NULL COMMENT '注册时间',
  `login_ip` varchar(64) DEFAULT NULL COMMENT '本次登录IP',
  `login_time` int(10) DEFAULT NULL COMMENT '登录时间',
  `rmb` decimal(20,2) DEFAULT '0.00' COMMENT '人民币',
  `forzen_rmb` decimal(20,2) DEFAULT '0.00' COMMENT 'forzen_rmb',
  `is_lock` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0是正常 1是锁定',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:未注册成功 1：注册成功',
  `unique_code` varchar(50) DEFAULT NULL COMMENT '唯一值',
  PRIMARY KEY (`member_id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blue_member
-- ----------------------------
INSERT INTO `blue_member` VALUES ('9', '123456', 'e10adc3949ba59abbe56e057f20f883e', '1000000', '测试', null, '15179811531', '127.0.0.1', '1563933002', '127.0.0.1', '1570360441', '50.00', '0.00', '0', '1', '1000000');

-- ----------------------------
-- Table structure for `blue_member_address`
-- ----------------------------
DROP TABLE IF EXISTS `blue_member_address`;
CREATE TABLE `blue_member_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(10) DEFAULT NULL COMMENT '用户id',
  `receipt_name` varchar(50) DEFAULT NULL COMMENT '收货人姓名',
  `receipt_phone` varchar(50) DEFAULT NULL COMMENT '收货电话',
  `receipt_address` varchar(600) DEFAULT NULL COMMENT '收货地址',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户收货地址';

-- ----------------------------
-- Records of blue_member_address
-- ----------------------------
INSERT INTO `blue_member_address` VALUES ('1', '9', 'hmlwan', '15179811532', '深圳市南山区腾讯大厦');

-- ----------------------------
-- Table structure for `blue_member_goods`
-- ----------------------------
DROP TABLE IF EXISTS `blue_member_goods`;
CREATE TABLE `blue_member_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `good_id` int(11) DEFAULT NULL COMMENT '商品id',
  `num` int(10) DEFAULT '0' COMMENT '总数量',
  `good_name` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `price` decimal(10,2) DEFAULT NULL,
  `valid_num` int(10) DEFAULT NULL COMMENT '可兑换商品卡数量',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户购买商品卡表';

-- ----------------------------
-- Records of blue_member_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `blue_member_goods_detail`
-- ----------------------------
DROP TABLE IF EXISTS `blue_member_goods_detail`;
CREATE TABLE `blue_member_goods_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL COMMENT '商品类别',
  `type_name` varchar(200) DEFAULT NULL COMMENT '商品类别名称',
  `good_id` int(11) DEFAULT NULL COMMENT '商品id',
  `good_name` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `num` int(10) DEFAULT NULL COMMENT '数量',
  `price` decimal(8,2) DEFAULT NULL COMMENT '价格',
  `is_exchange` tinyint(5) DEFAULT NULL COMMENT '是否可兑换实物',
  `origin_type` tinyint(6) DEFAULT '1' COMMENT '来源 1：购买2：签到抽奖3:推广',
  `create_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户购买商品卡表';

-- ----------------------------
-- Records of blue_member_goods_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `blue_member_info`
-- ----------------------------
DROP TABLE IF EXISTS `blue_member_info`;
CREATE TABLE `blue_member_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `bank_no` varchar(200) DEFAULT NULL COMMENT '银行卡号',
  `nick_name` varchar(200) DEFAULT NULL COMMENT '账号昵称',
  `zfb_no` varchar(200) DEFAULT NULL COMMENT '支付宝账号',
  `true_name` varchar(100) DEFAULT NULL COMMENT '姓名',
  `id_card` varchar(200) DEFAULT NULL COMMENT '身份证',
  `bank_id` int(10) DEFAULT NULL COMMENT '银行id',
  `head_url` varchar(200) DEFAULT NULL COMMENT '头像',
  `create_time` int(11) DEFAULT NULL COMMENT '提交时间',
  `cert_num` tinyint(5) DEFAULT NULL COMMENT '剩余认证次数',
  `is_cert` tinyint(4) DEFAULT '0' COMMENT '是否认证 1：是 0：否',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blue_member_info
-- ----------------------------
INSERT INTO `blue_member_info` VALUES ('3', '9', '252255225522', '雪中行者', '15179822523', '刘德华', '3625225225522555', '2', null, '1570358334', '5', '1');

-- ----------------------------
-- Table structure for `blue_message`
-- ----------------------------
DROP TABLE IF EXISTS `blue_message`;
CREATE TABLE `blue_message` (
  `message_id` int(32) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL COMMENT '消息标题',
  `member_id` varchar(100) NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '类型：1：系统消息2签到3推广',
  `content` text NOT NULL,
  `add_time` int(10) NOT NULL,
  `is_read` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否已读 0：否 1：是',
  `message_all_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=MyISAM AUTO_INCREMENT=140 DEFAULT CHARSET=utf8 COMMENT='会员消息记录表';

-- ----------------------------
-- Records of blue_message
-- ----------------------------
INSERT INTO `blue_message` VALUES ('139', '测试', '9', '1', '测试测试测试测试测试测试测试测试测试', '1570267167', '0', '3007');

-- ----------------------------
-- Table structure for `blue_message_all`
-- ----------------------------
DROP TABLE IF EXISTS `blue_message_all`;
CREATE TABLE `blue_message_all` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL COMMENT '消息标题',
  `u_id` varchar(200) NOT NULL COMMENT '-1为群发   多个，隔开',
  `content` text NOT NULL,
  `add_time` int(10) NOT NULL,
  `type` tinyint(7) DEFAULT NULL COMMENT '消息类型 1：系统消息',
  `send_type` tinyint(4) DEFAULT '1' COMMENT '发送类型 1：群发 2个人',
  `status` tinyint(4) DEFAULT '0' COMMENT '发布状态 0：未发布 1：已发布',
  `op_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3008 DEFAULT CHARSET=utf8 COMMENT='系统消息表';

-- ----------------------------
-- Records of blue_message_all
-- ----------------------------
INSERT INTO `blue_message_all` VALUES ('3007', '测试', '-1', '测试测试测试测试测试测试测试测试测试', '1570249930', '1', '1', '1', null);

-- ----------------------------
-- Table structure for `blue_nav`
-- ----------------------------
DROP TABLE IF EXISTS `blue_nav`;
CREATE TABLE `blue_nav` (
  `nav_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '权限表',
  `nav_name` varchar(32) NOT NULL COMMENT '列表名称',
  `nav_e` varchar(32) NOT NULL COMMENT '英文标识',
  `nav_url` varchar(64) NOT NULL COMMENT 'url路径',
  `cat_id` varchar(32) NOT NULL COMMENT '类别',
  `nav_sort` tinyint(6) DEFAULT '1' COMMENT '排序',
  PRIMARY KEY (`nav_id`)
) ENGINE=MyISAM AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blue_nav
-- ----------------------------
INSERT INTO `blue_nav` VALUES ('1', '系统配置', '&#xe642;', '/Config/index', 'sys', '1');
INSERT INTO `blue_nav` VALUES ('103', '抽奖规则配置', '&#xe6f7;', '/Luckdraw/index', 'luckdraw', '1');
INSERT INTO `blue_nav` VALUES ('7', '会员列表', '&#x3434;', '/Member/index', 'user', '1');
INSERT INTO `blue_nav` VALUES ('23', '菜单配置', '&#xe608;', '/Menu/index', 'sys', '2');
INSERT INTO `blue_nav` VALUES ('41', '管理员管理', '&#xe64d;', '/Manage/index', 'admin', '1');
INSERT INTO `blue_nav` VALUES ('101', '商品类型', '&#xe6f7;', '/Good/type', 'good', '2');
INSERT INTO `blue_nav` VALUES ('50', '帮助中心', '&#xe6f7;', '/Article/help', 'article', '1');
INSERT INTO `blue_nav` VALUES ('58', '提现记录', '&#xe6f7;', '/Record/tixian', 'record', null);
INSERT INTO `blue_nav` VALUES ('89', '充值记录', '&#xe6f7;', '/Record/recharge', 'record', null);
INSERT INTO `blue_nav` VALUES ('92', '商品列表', '&#xe6f7;', '/Good/index', 'good', '1');
INSERT INTO `blue_nav` VALUES ('93', '币种列表', '&#xe6f7;', '/Currency/index', 'currency', '1');
INSERT INTO `blue_nav` VALUES ('104', '财务列表', '&#xe6f7;', '/Finance/index', 'finance', '1');
INSERT INTO `blue_nav` VALUES ('94', '银行列表', '&#xe637;', '/Bank/index', 'bank', '1');
INSERT INTO `blue_nav` VALUES ('95', '用户购买商品卡', '&#xe6f7;', '/Good/usergoods', 'good', '23');
INSERT INTO `blue_nav` VALUES ('96', '订单记录', '&#xe6f7;', '/Order/record', 'order', '1');
INSERT INTO `blue_nav` VALUES ('97', '签到配置', '&#xe6f7;', '/Sign/conf', 'sign', '1');
INSERT INTO `blue_nav` VALUES ('98', '签到记录', '&#xe6f7;', '/Sign/record', 'sign', '2');
INSERT INTO `blue_nav` VALUES ('99', '系统发布消息', '&#xe6f7;', '/Message/index', 'message', '1');
INSERT INTO `blue_nav` VALUES ('100', '消息记录', '&#xe6f7;', '/Message/record', 'message', '2');

-- ----------------------------
-- Table structure for `blue_order`
-- ----------------------------
DROP TABLE IF EXISTS `blue_order`;
CREATE TABLE `blue_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `good_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `good_name` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `spec` varchar(200) DEFAULT NULL COMMENT '规格',
  `price` decimal(8,2) DEFAULT NULL COMMENT '商品单价',
  `num` int(10) DEFAULT NULL COMMENT '购买数量',
  `total_price` decimal(8,2) DEFAULT NULL COMMENT '总价',
  `status` tinyint(8) DEFAULT '0' COMMENT '状态 0：等待发货中  1：已收货 2：已发货 3退款',
  `remark` varchar(200) DEFAULT NULL COMMENT '后台退货备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户购买商品订单表';

-- ----------------------------
-- Records of blue_order
-- ----------------------------

-- ----------------------------
-- Table structure for `blue_outside_ad`
-- ----------------------------
DROP TABLE IF EXISTS `blue_outside_ad`;
CREATE TABLE `blue_outside_ad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `subtitle` varchar(200) DEFAULT NULL COMMENT '简介',
  `tag_json` varchar(1024) DEFAULT NULL COMMENT '标签',
  `ad_url` varchar(200) DEFAULT NULL COMMENT '广告地址',
  `is_recommend` tinyint(4) DEFAULT '1' COMMENT '是否推荐 1：是 0：否',
  `detail` text COMMENT '详情',
  `status` tinyint(5) DEFAULT '1' COMMENT '状态 1：正常 0下线 2：已删除',
  `read_num` varchar(50) DEFAULT NULL COMMENT '阅读量',
  `click_num` varchar(50) DEFAULT NULL COMMENT '点击t跳转量',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='站外广告';

-- ----------------------------
-- Records of blue_outside_ad
-- ----------------------------

-- ----------------------------
-- Table structure for `blue_receipt_type`
-- ----------------------------
DROP TABLE IF EXISTS `blue_receipt_type`;
CREATE TABLE `blue_receipt_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(5) NOT NULL COMMENT '收款类型 1：支付宝 2：微信 3：银行卡',
  `bank_name` varchar(100) DEFAULT NULL COMMENT '名称',
  `receipt_name` varchar(100) DEFAULT NULL COMMENT '收款姓名',
  `receipt_account` varchar(400) DEFAULT NULL COMMENT '银行账户',
  `account_addr` varchar(200) DEFAULT NULL COMMENT '开户网点',
  `url` varchar(400) DEFAULT NULL COMMENT '跳转链接',
  `logo_img` varchar(200) DEFAULT NULL,
  `op_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='收款方式';

-- ----------------------------
-- Records of blue_receipt_type
-- ----------------------------
INSERT INTO `blue_receipt_type` VALUES ('1', '1', '支付宝充值', '宏银百货', '', '', 'https://yb6.me/img/RCjO/ifQ2ovGti.png', '/Uploads/Public/Uploads/2019-07-23/5d370addbc636.png', '1563979098');
INSERT INTO `blue_receipt_type` VALUES ('5', '3', '建设银行', '林佳丽', '6217001830039250777', '', 'https://yb6.me/img/RCjO/ifQkydF3p.png', '/Uploads/Public/Uploads/2019-07-24/5d386f05d2fe5.png', '1563979602');
INSERT INTO `blue_receipt_type` VALUES ('2', '2', '微信充值', '测试2', '', '', 'http://wfe.wsd.com/wfe3/interface', '/Uploads/Public/Uploads/2019-07-23/5d370d250ad93.png', '1563888933');
INSERT INTO `blue_receipt_type` VALUES ('3', '1', '建设银行', '林佳丽', '6217001830039250777', '', '', '/Uploads/Public/Uploads/2019-07-25/5d3980ab07cc8.png', '1564049579');

-- ----------------------------
-- Table structure for `blue_record`
-- ----------------------------
DROP TABLE IF EXISTS `blue_record`;
CREATE TABLE `blue_record` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `member_id` int(10) DEFAULT NULL,
  `receipt_id` int(10) DEFAULT NULL,
  `num` decimal(20,2) DEFAULT NULL COMMENT '充值金额',
  `record_type` tinyint(4) DEFAULT NULL COMMENT '类型 1：充值2：提现',
  `username` varchar(100) DEFAULT NULL COMMENT '存款人姓名',
  `type` tinyint(4) DEFAULT NULL COMMENT '收款类型 1：支付宝 2：微信 3：银行卡''',
  `bank_name` varchar(200) DEFAULT NULL COMMENT '名称',
  `receipt_name` varchar(200) DEFAULT NULL COMMENT '收款人',
  `receipt_account` varchar(200) DEFAULT NULL COMMENT '银行账号',
  `account_addr` varchar(200) DEFAULT NULL COMMENT '开户网点',
  `url` varchar(200) DEFAULT NULL COMMENT '跳转链接',
  `status` tinyint(6) DEFAULT '0' COMMENT '状态  0：未审核 1：成功 2：失败',
  `create_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blue_record
-- ----------------------------
INSERT INTO `blue_record` VALUES ('1', '9', '1', '100.00', '1', '收款1', '1', '支付宝充值', '测试', '', '', 'https://www.baidu.com/', '1', '1563954780');
INSERT INTO `blue_record` VALUES ('2', '18', '5', '50.00', '1', 'a254025', '3', '建设银行', '林佳丽', '6217001830039250777', '', 'https://yb6.me/img/RCjO/ifQkydF3p.png', '1', '1565414217');

-- ----------------------------
-- Table structure for `blue_sign_conf`
-- ----------------------------
DROP TABLE IF EXISTS `blue_sign_conf`;
CREATE TABLE `blue_sign_conf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `currency_id` int(11) DEFAULT NULL COMMENT '币种id',
  `parama_arr` varchar(1024) DEFAULT NULL COMMENT '配置参数',
  `create_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='签到配置';

-- ----------------------------
-- Records of blue_sign_conf
-- ----------------------------
