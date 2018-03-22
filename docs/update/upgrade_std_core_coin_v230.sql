
DELETE FROM `tsys_config` WHERE `type`='collection_rule_eth';
DELETE FROM `tsys_config` WHERE `id`='withdraw_rule_eth';
DELETE FROM `tsys_config` WHERE `type`='collection_rule_sc';
DELETE FROM `tsys_config` WHERE `id`='withdraw_rule_sc';
DELETE FROM `tsys_config` WHERE `type`='collection_rule_btc';
DELETE FROM `tsys_config` WHERE `id`='withdraw_rule_btc';


INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('0',NULL,'coin_type','币种类型','admin',now(),'','CD-COIN000017','CD-COIN000017');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','coin_type','0','原生币','admin',now(),'','CD-COIN000017','CD-COIN000017');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','coin_type','1','token币','admin',now(),'','CD-COIN000017','CD-COIN000017');

INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('0',NULL,'coin_status','币种状态','admin',now(),'','CD-COIN000017','CD-COIN000017');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','coin_status','0','已发布','admin',now(),'','CD-COIN000017','CD-COIN000017');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','coin_status','1','已撤下','admin',now(),'','CD-COIN000017','CD-COIN000017');

INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','channel_type','1','线上','admin',now(),'','CD-COIN000017','CD-COIN000017');
