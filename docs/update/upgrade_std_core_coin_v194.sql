
ALTER TABLE `tsys_dict` 
CHANGE COLUMN `parent_key` `parent_key` VARCHAR(64) NULL DEFAULT NULL COMMENT '父key' ,
CHANGE COLUMN `dkey` `dkey` VARCHAR(64) NULL DEFAULT NULL COMMENT 'key' ;

UPDATE `tsys_config` SET `cvalue` = 'qn.tha.hichengdai.com' WHERE (`ckey` = 'qiniu_domain');

DELETE FROM `tsys_dict` WHERE (`dkey` = 'jour_biz_type_user' OR `parent_key` = 'jour_biz_type_user');
DELETE FROM `tsys_dict` WHERE (`dkey` = 'jour_biz_type_cold' OR `parent_key` = 'jour_biz_type_cold');
DELETE FROM `tsys_dict` WHERE (`dkey` = 'jour_biz_type_plat' OR `parent_key` = 'jour_biz_type_plat');
DELETE FROM `tsys_dict` WHERE (`dkey` = 'jour_biz_type' OR `parent_key` = 'jour_biz_type');
DELETE FROM `tsys_dict` WHERE (`dkey` = 'jour_biz_type_plat_lhlc' OR `parent_key` = 'jour_biz_type_plat_lhlc');

DELETE FROM `tsys_dict` WHERE (`parent_key` = 'collection_status');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','collection_status','0','等待归集','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','collection_status','1','获取矿工费广播中','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','collection_status','2','归集广播中','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','collection_status','3','归集成功','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','collection_status','4','归集失败','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');

INSERT INTO `tsys_config` (`type`,`ckey`,`cvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('hd','x_memory_word','achieve tissue goat rare happy crash oxygen mammal account lottery plate renew tape stool negative service certain dream logic clown chicken planet middle various','admin',now(),'分发地址的助记词','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_config` (`type`,`ckey`,`cvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('hd','plat_memory_word','sadness fiscal soup include shift rural robust negative travel pigeon loyal viable mom inflict achieve quality oak timber episode combine ring enrich gesture reward','admin',now(),'平台助记词','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_config` (`type`,`ckey`,`cvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('supply','btc_supply_value','0.0001','admin',now(),'btc归集补给金额','CD-TOKEN00018','CD-TOKEN00018');

/**C端用户流水类型**/
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('0',NULL,'jour_biz_type_user','用户流水业务类型','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_user','charge','充值','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_user','withdraw','取现','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_user','withdrawfee','取现手续费','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_user','redpacket_receive_in','抢红包','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_user','redpacket_send_out','发红包','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_user','redpacket_back_in','红包过期退回','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_user','lhlc_invest_out','量化理财投资','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_user','lhlc_repay_in','量化理财本金回款','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_user','lhlc_income_in','量化理财收益','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_user','invite_income_pop_in','邀请好友量化分成','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_user','jf_lottery_in','积分抽奖','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');

/**ETH平台账户流水类型**/
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('0',NULL,'jour_biz_type_plat_eth','ETH平台账户流水类型','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_eth','deposit','定存','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_eth','collect','归集','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_eth','withdraw','取现','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_eth','lhlc_invest_in','量化理财投资','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_eth','lhlc_repay_out','量化理财本金回款','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_eth','lhlc_income_out','量化理财收益','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_eth','redpacket_send_in','用户发红包','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_eth','redpacket_receive_out','用户抢红包','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_eth','redpacket_back_out','红包过期退回给用户','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_eth','withdrawfee','取现手续费收入','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_eth','supply','平台补给收入','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_eth','mfee','取现矿工费支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_eth','wfee','归集矿工费支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_eth','dfee','定存矿工费支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_eth','token_sfee','token归集补给矿工费支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_eth','token_mfee','token取现矿工费支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_eth','token_wfee','token归集矿工费支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_eth','token_dfee','token定存矿工费支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_eth','invite_income_pop_out','邀请好友量化分成','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_eth','jf_lottery_out','积分抽奖支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');

/**ETH_TOKEN平台账户流水类型**/
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('0',NULL,'jour_biz_type_plat_eth_token','ETH_TOKEN平台账户流水类型','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_eth_token','deposit','定存','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_eth_token','collect','归集','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_eth_token','withdraw','取现','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_eth_token','lhlc_invest_in','量化理财投资','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_eth_token','lhlc_repay_out','量化理财本金回款','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_eth_token','lhlc_income_out','量化理财收益','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_eth_token','redpacket_send_in','用户发红包','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_eth_token','redpacket_receive_out','用户抢红包','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_eth_token','redpacket_back_out','红包过期退回给用户','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_eth_token','withdrawfee','取现手续费收入','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_eth_token','invite_income_pop_out','邀请好友量化分成','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_eth_token','jf_lottery_out','积分抽奖支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');

/**BTC平台账户流水类型**/
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('0',NULL,'jour_biz_type_plat_btc','BTC平台账户流水类型','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_btc','deposit','定存','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_btc','collect','归集','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_btc','withdraw','取现','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_btc','lhlc_invest_in','量化理财投资','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_btc','lhlc_repay_out','量化理财本金回款','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_btc','lhlc_income_out','量化理财收益','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_btc','redpacket_send_in','用户发红包','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_btc','redpacket_receive_out','用户抢红包','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_btc','redpacket_back_out','红包过期退回给用户','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_btc','withdrawfee','取现手续费收入','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_btc','supply','平台补给收入','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_btc','mfee','取现矿工费支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_btc','wfee','归集矿工费支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_btc','dfee','定存矿工费支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_btc','usdt_sfee','usdt归集补给矿工费支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_btc','usdt_mfee','usdt取现矿工费支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_btc','usdt_wfee','usdt归集矿工费支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_btc','usdt_dfee','usdt定存矿工费支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_btc','invite_income_pop_out','邀请好友量化分成','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_btc','jf_lottery_out','积分抽奖支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');

/**USDT平台账户流水类型**/
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('0',NULL,'jour_biz_type_plat_usdt','USDT平台账户流水类型','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_usdt','deposit','定存','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_usdt','collect','归集','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_usdt','withdraw','取现','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_usdt','lhlc_invest_in','量化理财投资','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_usdt','lhlc_repay_out','量化理财本金回款','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_usdt','lhlc_income_out','量化理财收益','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_usdt','redpacket_send_in','用户发红包','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_usdt','redpacket_receive_out','用户抢红包','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_usdt','redpacket_back_out','红包过期退回给用户','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_usdt','withdrawfee','取现手续费收入','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_usdt','invite_income_pop_out','邀请好友量化分成','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_usdt','jf_lottery_out','积分抽奖支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');

/**WAN平台账户流水类型**/
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('0',NULL,'jour_biz_type_plat_wan','WAN平台账户流水类型','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_wan','deposit','定存','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_wan','collect','归集','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_wan','withdraw','取现','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_wan','lhlc_invest_in','量化理财投资','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_wan','lhlc_repay_out','量化理财本金回款','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_wan','lhlc_income_out','量化理财收益','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_wan','redpacket_send_in','用户发红包','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_wan','redpacket_receive_out','用户抢红包','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_wan','redpacket_back_out','红包过期退回给用户','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_wan','withdrawfee','取现手续费收入','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_wan','supply','平台补给收入','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_wan','mfee','取现矿工费支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_wan','wfee','归集矿工费支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_wan','dfee','定存矿工费支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_wan','token_sfee','token归集补给矿工费支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_wan','token_mfee','token取现矿工费支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_wan','token_wfee','token归集矿工费支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_wan','token_dfee','token定存矿工费支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_wan','invite_income_pop_out','邀请好友量化分成','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_wan','jf_lottery_out','积分抽奖支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');

/**平台冷钱包账户业务类型**/
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('0',NULL,'jour_biz_type_plat_cold','平台冷钱包账户业务类型','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_cold','deposit','定存','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_cold','collect','归集','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');

/**平台散取账户业务类型**/
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('0',NULL,'jour_biz_type_plat_withdraw','平台散取账户业务类型','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_withdraw','deposit','定存','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_withdraw','withdraw','取现','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');

/**平台量化理财账户业务类型**/
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('0',NULL,'jour_biz_type_plat_lhlc','平台量化理财账户业务类型','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_lhlc','lhlc_invest_in','量化理财投资','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_lhlc','lhlc_repay_out','量化理财本金回款','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_lhlc','lhlc_income_out','量化理财收益','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');

/**平台红包账户业务类型**/
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('0',NULL,'jour_biz_type_plat_hb','平台量化理财账户业务类型','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_hb','redpacket_send_in','用户发红包','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_hb','redpacket_receive_out','用户抢红包','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_hb','redpacket_back_out','红包过期退回给用户','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');

/**ETH盈亏账户业务类型**/
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('0',NULL,'jour_biz_type_plat_income_eth','ETH盈亏账户业务类型','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_income_eth','withdrawfee','取现手续费收入','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_income_eth','supply','平台补给收入','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_income_eth','mfee','取现矿工费支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_income_eth','wfee','归集矿工费支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_income_eth','dfee','定存矿工费支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_income_eth','token_sfee','token归集补给矿工费支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_income_eth','token_mfee','token取现矿工费支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_income_eth','token_wfee','token归集矿工费支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_income_eth','token_dfee','token定存矿工费支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_income_eth','invite_income_pop_out','邀请好友量化分成','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_income_eth','jf_lottery_out','积分抽奖支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');

/**WAN盈亏账户业务类型**/
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('0',NULL,'jour_biz_type_plat_income_wan','WAN盈亏账户业务类型','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_income_wan','withdrawfee','取现手续费收入','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_income_wan','supply','平台补给收入','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_income_wan','mfee','取现矿工费支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_income_wan','wfee','归集矿工费支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_income_wan','dfee','定存矿工费支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_income_wan','token_sfee','token归集补给矿工费支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_income_wan','token_mfee','token取现矿工费支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_income_wan','token_wfee','token归集矿工费支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_income_wan','token_dfee','token定存矿工费支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_income_wan','invite_income_pop_out','邀请好友量化分成','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_income_wan','jf_lottery_out','积分抽奖支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');

/**BTC盈亏账户业务类型**/
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('0',NULL,'jour_biz_type_plat_income_btc','BTC盈亏账户业务类型','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_income_btc','withdrawfee','取现手续费收入','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_income_btc','supply','平台补给收入','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_income_btc','mfee','取现矿工费支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_income_btc','wfee','归集矿工费支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_income_btc','dfee','定存矿工费支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_income_btc','usdt_sfee','usdt归集补给矿工费支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_income_btc','usdt_mfee','usdt取现矿工费支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_income_btc','usdt_wfee','usdt归集矿工费支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_income_btc','usdt_dfee','usdt定存矿工费支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_income_btc','invite_income_pop_out','邀请好友量化分成','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_income_btc','jf_lottery_out','积分抽奖支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');

/**ETHToken盈亏账户业务类型**/
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('0',NULL,'jour_biz_type_plat_income_eth_token','ETHToken盈亏账户业务类型','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_income_eth_token','withdrawfee','取现手续费收入','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_income_eth_token','invite_income_pop_out','邀请好友量化分成','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_income_eth_token','jf_lottery_out','积分抽奖支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');


/**WANToken盈亏账户业务类型**/
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('0',NULL,'jour_biz_type_plat_income_wan_token','ETHToken盈亏账户业务类型','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_income_wan_token','withdrawfee','取现手续费收入','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_income_wan_token','invite_income_pop_out','邀请好友量化分成','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_income_wan_token','jf_lottery_out','积分抽奖支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');

/**USDT盈亏账户业务类型**/
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('0',NULL,'jour_biz_type_plat_income_btc_usdt','USDT盈亏账户业务类型','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_income_btc_usdt','withdrawfee','取现手续费收入','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_income_btc_usdt','invite_income_pop_out','邀请好友量化分成','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type_plat_income_btc_usdt','jf_lottery_out','积分抽奖支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');

/**总业务类型**/
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('0',NULL,'jour_biz_type','总业务类型','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type','charge','充值','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type','collect','归集','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type','invest_frozen','购买理财套餐冻结','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type','invest_unfrozen','理财套餐流标解冻','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type','invite_income_pop_in','邀请好友量化分成','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type','invite_income_pop_out','邀请好友量化分成','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type','jf_lottery_in','积分抽奖','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type','jf_lottery_out','积分抽奖支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type','lhlc_income_in','量化理财收益','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type','lhlc_income_out','量化理财收益','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type','lhlc_invest_in','量化理财投资','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type','lhlc_invest_out','量化理财还款','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type','lhlc_repay_in','量化理财本金回款','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type','lhlc_repay_out','量化理财本金回款','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type','mfee','取现矿工费','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type','wfee','归集矿工费','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type','deposit','定存','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type','dfee','定存矿工费','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type','usdt_sfee','usdt归集补给矿工费支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type','usdt_mfee','usdt取现矿工费支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type','usdt_wfee','usdt归集矿工费支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type','usdt_dfee','usdt定存矿工费支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type','token_sfee','token归集补给矿工费支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type','token_mfee','token取现矿工费支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type','token_wfee','token归集矿工费支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type','token_dfee','token定存矿工费支出','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type','withdraw','取现','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type','withdrawfee','取现手续费','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type','withdrawfrozen','取现冻结','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type','withdrawunfrozen','取现解冻','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type','redpacket_back_in','红包过期退回','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type','redpacket_back_out','红包过期退回','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type','redpacket_receive_in','抢红包','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type','redpacket_receive_out','发红包','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type','redpacket_send_in','用户发红包','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type','redpacket_send_out','发红包','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type','sfee','补给矿工费','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','jour_biz_type','supply','平台补给收入','admin',now(),'','CD-TOKEN00018','CD-TOKEN00018');

