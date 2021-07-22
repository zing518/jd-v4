# 每3天的23:50分清理一次日志(互助码不清理，proc_file.sh对该文件进行了去重)
50 23 */3 * * find /scripts/logs -name '*.log' | grep -v 'sharecodeCollection' | xargs rm -rf
#收集助力码
30 * * * * sh +x /scripts/docker/auto_help.sh collect >> /scripts/logs/auto_help_collect.log 2>&1

##############短期活动##############
#全民摸冰
6 9,12 * * * node /scripts/jd_mbwenmoux.js  >> /scripts/logs/jd_mbwenmoux.log 2>&1
#财富岛提现
0 12,0 * * * node /scripts/jd_cfd_cashOut.js  >> /scripts/logs/jd_cfd_cashOut.log 2>&1
#7月粉丝互动
1 8 * * * node /scripts/jd_wxFanswenmoux.js >> /scripts/logs/jd_wxFanswenmoux.log 2>&1
#星系牧场
1 0-23/2 * * * node /scripts/jd_qqxingwenmoux.js >> /scripts/logs/jd_qqxingwenmoux.log 2>&1
#发财大赢家
1 0 * * * node /scripts/jd_fcdyjwenmoux.js >> /scripts/logs/jd_fcdyjwenmoux.log 2>&1
#东东乐园
30 7 * * * node /scripts/jd_ddnc_farmparkwenmoux.js >> /scripts/logs/jd_ddnc_farmparkwenmoux.log 2>&1
#天降红包
30 7 * * * node /scripts/jd_SplitRedPacketwenmoux.js >> /scripts/logs/jd_SplitRedPacketwenmoux.log 2>&1
#翻翻乐
#1 6-21/1 * * * node /scripts/jd_618redpacketwenmoux.js  >> /scripts/logs/jd_618redpacketwenmoux.log 2>&1
#口袋书店
1 8,12,18 * * * node /scripts/jd_bookshopWenmoux.js >> /scripts/logs/jd_bookshopWenmoux.log 2>&1
#京东签到图形验证
14 10 * * * node /scripts/jd_sign_graphicssmiek2221.js >> /scripts/logs/jd_sign_graphicssmiek2221.log 2>&1
#点点券
20 0,20 * * * node /scripts/jd_necklacesmiek2221.js >> /scripts/logs/jd_necklacesmiek2221.log 2>&1
#京东宠汪汪
15 0-23/2 * * * node /scripts/jd_joysmiek2221.js >> /scripts/logs/jd_joysmiek2221.log 2>&1
#宠汪汪偷好友积分与狗粮
10 0-21/3 * * * node /scripts/jd_joy_stealsmiek2221.js >> /scripts/logs/jd_joy_stealsmiek2221.log 2>&1
#送豆得豆
45 4 * * * node /scripts/jd_sendBeanscdle.js >> /scripts/logs/jd_sendBeanscdle.log 2>&1
#早起赢现金
30 7 * * * node /scripts/jd_morningSccdle.js >> /scripts/logs/jd_morningSccdle.log 2>&1
#汪汪乐园每日助力
30 23 * * * node /scripts/jd_joy_park_helpcdle.js >> /scripts/logs/jd_joy_park_helpcdle.log 2>&1
#早起福利
30 6 * * * node /scripts/jd_goodMorningcdle.js >> /scripts/logs/jd_goodMorningcdle.log 2>&1
#愤怒的现金
0 0 * * * node /scripts/jd_angryCashcdle.js >> /scripts/logs/jd_angryCashcdle.log 2>&1
#愤怒的锦鲤
0 0 * * * node /scripts/jd_angryKoicdle.js >> /scripts/logs/jd_angryKoicdle.log 2>&1
#签到领现金兑换
#0 0 * * * node /scripts/jd_cash_exchangecdle.js >> /scripts/logs/jd_cash_exchangecdle.log 2>&1
#发财大赢家助力
0 0 * * * node /scripts/jd_dyj_helpcdle.js >> /scripts/logs/jd_dyj_helpcdle.log 2>&1
#预存validate
59 7,15,23 * * * node /scripts/jd_validate_Worker.js >> /scripts/logs/jd_validate_Worker.log 2>&1
#宠汪汪兑换京豆
0 8,16,0 * * * node /scripts/jd_joy_reward.js >> /scripts/logs/jd_joy_reward.log 2>&1
#省钱大赢家之翻翻乐
20 * * * * node /scripts/jd_big_winner.js >> /scripts/logs/jd_big_winner.log 2>&1
##############长期活动##############
# 签到
7 0,17 * * * cd /scripts && node jd_bean_sign.js >> /scripts/logs/jd_bean_sign.log 2>&1
#京东资产变动通知
2 9 * * * node /scripts/jd_bean_change.js >> /scripts/logs/jd_bean_change.log 2>&1
#领京豆额外奖励
2 9 * * * node /scripts/jd_bean_home.js >> /scripts/logs/jd_bean_home.log 2>&1
#美丽研究院
1 7,12,19 * * * node /scripts/jd_beauty.js >> /scripts/logs/jd_beauty.log 2>&1
# 东东超市兑换奖品
0 0 * * * node /scripts/jd_blueCoin.js >> /scripts/logs/jd_blueCoin.log 2>&1
# 京东汽车(签到满500赛点可兑换500京豆)
10 7 * * * node /scripts/jd_car.js >> /scripts/logs/jd_car.log 2>&1
# 京东汽车旅程赛点兑换金豆
0 0 * * * node /scripts/jd_car_exchange.js >> /scripts/logs/jd_car_exchange.log 2>&1
# 签到领现金
2 0-23/4 * * * node /scripts/jd_cash.js >> /scripts/logs/jd_cash.log 2>&1
#京喜财富岛
5 */1 * * * node /scripts/jd_cfd.js >> /scripts/logs/jd_cfd.log 2>&1
#摇京豆
5 0,23 * * * node /scripts/jd_club_lottery.js >> /scripts/logs/jd_club_lottery.log 2>&1
#天天提鹅
10 * * * * node /scripts/jd_daily_egg.js >> /scripts/logs/jd_daily_egg.log 2>&1
# 删除优惠券(默认注释，如需要自己开启，如有误删，已删除的券可以在回收站中还原，慎用)
#20 9 * * 6 node /scripts/jd_delCoupon.js >> /scripts/logs/jd_delCoupon.log 2>&1
#京喜工厂
10 * * * * node /scripts/jd_dreamFactory.js >> /scripts/logs/jd_dreamFactory.log 2>&1
#京东家庭号
1 12,23 * * * node /scripts/jd_family.js >> /scripts/logs/jd_family.log 2>&1
#东东农场
5 6-18/6 * * * node /scripts/jd_fruit.js >> /scripts/logs/jd_fruit.log 2>&1
#金榜创造营
13 1,22 * * * node /scripts/jd_gold_creator.js >> /scripts/logs/jd_gold_creator.log 2>&1
#东东健康社区
13 1,6,22 * * * node /scripts/jd_health.js >> /scripts/logs/jd_health.log 2>&1
#东东健康社区收集能量
5-45/20 * * * * node /scripts/jd_health_collect.js >> /scripts/logs/jd_health_collect.log 2>&1
#东东工厂
10 * * * * node /scripts/jd_jdfactory.js >> /scripts/logs/jd_jdfactory.log 2>&1
# 京东赚赚
10 0 * * * node /scripts/jd_jdzz.js >> /scripts/logs/jd_jdzz.log 2>&1
#领金贴
10 0 * * * node /scripts/jd_jin_tie.js >> /scripts/logs/jd_jin_tie.log 2>&1
#京喜农场
0 9,12,18 * * * node /scripts/jd_jxnc.js >> /scripts/logs/jd_jxnc.log 2>&1
#京东快递签到
10 0 * * * node /scripts/jd_kd.js >> /scripts/logs/jd_kd.log 2>&1
#京东直播
10-20/5 12 * * * node /scripts/jd_live.js >> /scripts/logs/jd_live.log 2>&1
#超级直播间红包雨
0,30 0-23/1 * * * node /scripts/jd_live_redrain.js >> /scripts/logs/jd_live_redrain.log 2>&1
#幸运大转盘
4 10 * * * node /scripts/jd_market_lottery.js >> /scripts/logs/jd_market_lottery.log 2>&1
#5G超级盲盒
0 0,1-23/3 * * * node /scripts/jd_mohe.js >> /scripts/logs/jd_mohe.log 2>&1
#京东摇钱树
3 0-23/2 * * * node /scripts/jd_moneyTree.js >> /scripts/logs/jd_moneyTree.log 2>&1
#京东秒秒币
10 7 * * * node /scripts/jd_ms.js >> /scripts/logs/jd_ms.log 2>&1
#东东萌宠
15 6-18/6 * * * node /scripts/jd_pet.js >> /scripts/logs/jd_pet.log 2>&1
#京东金融养猪猪
12 0-23/6 * * * node /scripts/jd_pigPet.js >> /scripts/logs/jd_pigPet.log 2>&1
#京东种豆得豆
1 7-21/2 * * * node /scripts/jd_plantBean.js >> /scripts/logs/jd_plantBean.log 2>&1
#京东保价
#41 0,23 * * * node /scripts/jd_price.js >> /scripts/logs/jd_price.log 2>&1
#京东全民开红包
1 1,2,23 * * * node /scripts/jd_redPacket.js >> /scripts/logs/jd_redPacket.log 2>&1
#闪购盲盒
20 8 * * * node /scripts/jd_sgmh.js >> /scripts/logs/jd_sgmh.log 2>&1
#进店领豆
10 0 * * * node /scripts/jd_shop.js >> /scripts/logs/jd_shop.log 2>&1
#东东小窝
16 22 * * * node /scripts/jd_small_home.js >> /scripts/logs/jd_small_home.log 2>&1
#天天加速
8 0-23/3 * * * node /scripts/jd_speed.js >> /scripts/logs/jd_speed.log 2>&1
#京东极速版红包
8,9,10 1 * * * node /scripts/jd_speed_redpocke.js >> /scripts/logs/jd_speed_redpocke.log 2>&1
#京东极速版
0 7 * * * node /scripts/jd_speed_sign.js >> /scripts/logs/jd_speed_sign.log 2>&1
#东东超市
11 * * * * node /scripts/jd_superMarket.js >> /scripts/logs/jd_superMarket.log 2>&1
#赚京豆
10 0,7,23 * * * node /scripts/jd_syj.js >> /scripts/logs/jd_syj.log 2>&1
#取关京东店铺商品
55 23 * * * node /scripts/jd_unsubscribe.js >> /scripts/logs/jd_unsubscribe.log 2>&1
# 京东抽奖机
0 0,12,23 * * * node /scripts/jd_lotteryMachine.js >> /scripts/logs/jd_lotteryMachine.log 2>&1
# 京东排行榜
21 9 * * * node /scripts/jd_rankingList.js >> /scripts/logs/jd_rankingList.log 2>&1
#东东电竞经理
0 0-23/2 * * * node /scripts/jd_EsportsManager.js >> /scripts/logs/jd_EsportsManager.log 2>&1
#环境测试
0 12 * * * node /scripts/jd_api_test.js >> /scripts/logs/jd_api_test.log 2>&1
#京喜牧场
20 0-23/3 * * *  node /scripts/jd_jxmc.js >> /scripts/logs/jd_jxmc.log 2>&1
