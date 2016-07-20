-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2016 at 11:52 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog_article`
--

CREATE TABLE IF NOT EXISTS `blog_article` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `nav` mediumint(8) NOT NULL,
  `title` varchar(40) NOT NULL,
  `author` varchar(20) NOT NULL,
  `from` varchar(20) NOT NULL,
  `type` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `info` varchar(200) NOT NULL,
  `keyword` varchar(30) NOT NULL,
  `comment` tinyint(1) NOT NULL,
  `readcount` mediumint(8) NOT NULL,
  `readlimit` tinyint(1) NOT NULL DEFAULT '0',
  `thumbnail` varchar(50) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `blog_article`
--

INSERT INTO `blog_article` (`id`, `nav`, `title`, `author`, `from`, `type`, `content`, `info`, `keyword`, `comment`, `readcount`, `readlimit`, `thumbnail`, `date`) VALUES
(2, 0, '套壳测试 雷诺全新梅甘娜R.S.早期谍照', 'Mark', 'AuthHome', 'original  ', '<p>日前，海外媒体曝光了一组疑似<a href="http://car.autohome.com.cn/price/brand-10.html" target="_blank">雷诺</a>新一代<a href="http://www.autohome.com.cn/196/" target="_blank">梅甘娜</a>R.S.套壳测试车谍照，新车采用现款<a href="http://www.autohome.com.cn/196/" target="_blank">梅甘娜</a>GT车型外壳进行伪装，内部安装有检测设备及换挡拨片等装置。据悉，新一代<a href="http://www.autohome.com.cn/196/" target="_blank">梅甘娜</a>R.S.预计于2017年底正式推出。 <img alt="" src="/blog/uploads/20160719/20160719092354801.jpg" style="height:350px; width:620px" /></p>\n\n<p><img alt="" src="/blog/uploads/20160719/20160719092416696.jpg" style="height:350px; width:620px" /></p>\n\n<p>本次曝光的测试车采用了现款<a href="http://www.autohome.com.cn/196/" target="_blank">梅甘娜</a>GT车型的外壳进行伪装，但从车身细节处可以发现，该车或为<a href="http://car.autohome.com.cn/price/brand-10.html" target="_blank">雷诺</a>下一代<a href="http://www.autohome.com.cn/196/" target="_blank">梅甘娜</a>R.S.。测试车采用<a href="http://www.autohome.com.cn/196/" target="_blank">梅甘娜</a>R.S.车型惯用的中置双出的排气布局，<a href="http://car.autohome.com.cn/shuyu/detail_8_9_555.html" target="_blank">发动机</a>盖及刹车卡钳处有所变化，轮拱处有明显的加宽痕迹，似乎在为新一代<a href="http://www.autohome.com.cn/196/" target="_blank">梅甘娜</a>R.S.五门版的推出做准备。据海外媒体透露，该车内饰部分还安装了检测设备，方向盘后部装配有换挡拨片（资料有限，暂无内饰图片，敬请谅解）。</p>\n\n<p>据悉，新一代<a href="http://www.autohome.com.cn/196/" target="_blank">梅甘娜</a>R.S.仍搭载一台2.0L<a href="http://car.autohome.com.cn/shuyu/detail_8_10_95.html" target="_blank">涡轮增压</a><a href="http://car.autohome.com.cn/shuyu/detail_8_9_555.html" target="_blank">发动机</a>，<a href="http://car.autohome.com.cn/price/brand-10.html" target="_blank">雷诺</a>工程师将对该<a href="http://car.autohome.com.cn/shuyu/detail_8_9_555.html" target="_blank">发动机</a>进行进一步调校以压榨出300马力的最大输出<a href="http://car.autohome.com.cn/shuyu/detail_40_41_98.html" target="_blank">功率</a>。传动系统方面，与<a href="http://car.autohome.com.cn/shuyu/detail_8_9_555.html" target="_blank">发动机</a>匹配的将是<a href="http://car.autohome.com.cn/price/brand-10.html" target="_blank">雷诺</a>EDC<a href="http://car.autohome.com.cn/shuyu/detail_1_2_141.html" target="_blank">双离合变速箱</a>或6速<a href="http://car.autohome.com.cn/shuyu/detail_1_2_350.html" target="_blank">手动变速箱</a>。由于竞争对手新<a href="http://www.autohome.com.cn/364/" target="_blank">福克斯</a>RS车型从上代车型的<a href="http://car.autohome.com.cn/shuyu/detail_18_23_395.html#560" target="_blank">前置前驱</a>改为了<a href="http://car.autohome.com.cn/shuyu/detail_18_23_395.html#562" target="_blank">前置四驱</a>布局，<a href="http://car.autohome.com.cn/price/brand-10.html" target="_blank">雷诺</a>或许也会为新一代<a href="http://www.autohome.com.cn/196/" target="_blank">梅甘娜</a>R.S.带来一套四驱系统。</p>\n', '日前，海外媒体曝光了一组疑似雷诺新一代梅甘娜R.S.套壳测试车谍照，新车采用现款梅甘娜GT车型外壳进行伪装，内部安装有检测设备及换挡拨片等装置。据悉，新一代梅甘娜R.S.预计于2017年底正式推出。', 'Sport, France', 0, 0, 0, '/blog/uploads/20160719/20160719092525171.jpg', '2016-07-20 10:58:31'),
(3, 0, '或2017年推出 曝Vanquish S两车型谍照', 'Mark', 'AutoHome', 'original ', '<p>日前，有海外媒体曝光了一组<a href="http://car.autohome.com.cn/price/brand-35.html" target="_blank">阿斯顿&middot;马丁</a><a href="http://www.autohome.com.cn/386/" target="_blank">Vanquish</a>&nbsp;S&nbsp;<a href="http://www.autohome.com.cn/322/" target="_blank">Coupe</a>（硬顶版）和Volante（敞篷版）车型的谍照。相比现款<a href="http://www.autohome.com.cn/386/" target="_blank">Vanquish</a>系列，新车的外观和动力经过调整和升级。外媒预计，新车有望于2017年正式推出。</p>\r\n\r\n<p><img alt="" src="/blog/uploads/20160719/20160719144711387.jpg" style="height:350px; width:620px" /></p>\r\n\r\n<p><img alt="" src="/blog/uploads/20160719/20160719144724175.jpg" style="height:350px; width:620px" /></p>\r\n\r\n<p><img alt="" src="/blog/uploads/20160719/20160719144735248.jpg" style="height:350px; width:620px" /></p>\r\n\r\n<p>外观方面，新款<a href="http://www.autohome.com.cn/386/" target="_blank">Vanquish</a>&nbsp;S车型的前保险杠采用了全新的设计，大尺寸进气口搭配新的下部扰流板，整体风格相比现款<a href="http://www.autohome.com.cn/386/" target="_blank">Vanquish</a>更加狂野。</p>\r\n\r\n<p>来到侧面，新车的侧包围与现款<a href="http://www.autohome.com.cn/386/" target="_blank">Vanquish</a>车型相比，其横向宽度更大，更具运动感。同时，新车装配了一套双色涂装的新样式轮圈。</p>\r\n\r\n<p>车尾部分，新车的变化较为明显。新车的下部保险杠经过重新设计，中间配备了大尺寸的扩散器，两端的线条也更加夸张。全新造型的后保险杠搭配了双边共四出式排气，其与现款<a href="http://www.autohome.com.cn/386/" target="_blank">Vanquish</a>车型上双边共两出的排气布局差异明显。</p>\r\n\r\n<p>新近发布谍照的<a href="http://www.autohome.com.cn/386/" target="_blank">Vanquish</a>&nbsp;S&nbsp;Volante（敞篷版）车型基本维持了<a href="http://www.autohome.com.cn/386/" target="_blank">Vanquish</a>&nbsp;S&nbsp;<a href="http://www.autohome.com.cn/322/" target="_blank">Coupe</a>（硬顶版）车型的造型，差异仅在于其换装了软顶敞篷，使消费者拥有更多的选择。</p>\r\n\r\n<p>　　在搭载5.2L<a href="http://car.autohome.com.cn/shuyu/detail_8_10_95.html#331" target="_blank">双涡轮增压</a>V12<a href="http://car.autohome.com.cn/shuyu/detail_8_9_555.html" target="_blank">发动机</a>的下一代<a href="http://car.autohome.com.cn/price/brand-35.html" target="_blank">阿斯顿&middot;马丁</a><a href="http://www.autohome.com.cn/386/" target="_blank">Vanquish</a>面世之前，现款<a href="http://www.autohome.com.cn/386/" target="_blank">Vanquish</a>车型所搭载的6.0L自然吸气V12<a href="http://car.autohome.com.cn/shuyu/detail_8_9_555.html" target="_blank">发动机</a>还将在<a href="http://www.autohome.com.cn/386/" target="_blank">Vanquish</a>&nbsp;S车型上继续服役，其<a href="http://car.autohome.com.cn/shuyu/detail_40_41_98.html" target="_blank">功率</a>输出有望升级至600马力的水平，传动方面与<a href="http://car.autohome.com.cn/shuyu/detail_8_9_555.html" target="_blank">发动机</a>相匹配的是8速手自一体变速箱。</p>\r\n', '日前，有海外媒体曝光了一组阿斯顿·马丁Vanquish S Coupe（硬顶版）和Volante（敞篷版）车型的谍照。相比现款Vanquish系列，新车的外观和动力经过调整和升级。外媒预计，新车有望于2017年正式推出。', '谍照，运动', 0, 0, 0, '/blog/uploads/20160719/20160719144832464.jpg', '2016-07-20 10:54:35'),
(4, 0, '奢华绅士的结合 改1020马力奔驰E63 AMG', 'Mark', 'AuthHome', 'original  ', '<p>&nbsp;<a href="http://car.autohome.com.cn/price/brand-36.html" target="_blank">奔驰</a>E63 AMG一直以来就是成功人士追寻的座驾，低调的外观设计和出色的动力表现一直广受追捧。近日德国Posaidon改装工厂打造了一款代号为RS850+的<a href="http://car.autohome.com.cn/price/brand-36.html" target="_blank">奔驰</a>E63 AMG，可它并不是很低调。</p>\r\n\r\n<p><img alt="" src="/blog/uploads/20160719/20160719145910166.jpg" style="height:350px; width:620px" /></p>\r\n\r\n<p><img alt="" src="/blog/uploads/20160719/20160719145942270.jpg" style="height:350px; width:620px" /></p>\r\n\r\n<p><img alt="" src="/blog/uploads/20160719/20160719145926882.jpg" style="height:350px; width:620px" /></p>\r\n\r\n<p>Posaidon改装工厂将这辆<a href="http://car.autohome.com.cn/price/brand-36.html" target="_blank">奔驰</a>E63 AMG做了很大的变化，碳纤维的前扰流板和进气中网，让车头看上去非常有战斗力，尤其是没有车标的中网更是让人看着有些胆怯。碳纤维的<a href="http://car.autohome.com.cn/shuyu/detail_8_9_555.html" target="_blank">发动机</a>盖可以让整车质量更轻，同时还可以有很好的散热性能。</p>\r\n\r\n<p>这辆<a href="http://car.autohome.com.cn/price/brand-36.html" target="_blank">奔驰</a>E63 AMG的<a href="http://car.autohome.com.cn/shuyu/detail_3_6_59.html" target="_blank">悬架</a>系统采用KW品牌V3系列的运动<a href="http://car.autohome.com.cn/shuyu/detail_38_39_482.html" target="_blank">绞牙减振器</a>，与之匹配的是来自于ADV.1品牌锻造技术的<a href="http://car.autohome.com.cn/shuyu/detail_13_15_525.html" target="_blank">铝合金轮圈</a>。为了获得更好的操控性，前后都匹配了<a href="http://car.autohome.com.cn/shuyu/detail_29_42_372.html" target="_blank">米其林</a>PSS高性能运动轮胎。不仅如此，处于安全的考虑，工程师为这辆车搭载了碳陶的刹车系统。</p>\r\n\r\n<p>打开<a href="http://car.autohome.com.cn/shuyu/detail_8_9_555.html" target="_blank">发动机</a>盖，里面的进气管路已被更换成碳纤维材质。这样的设计不仅美观，还可以获得更好的进气流速及温度帮助<a href="http://car.autohome.com.cn/shuyu/detail_8_9_555.html" target="_blank">发动机</a>做工。据了解，这台5.5升<a href="http://car.autohome.com.cn/shuyu/detail_8_10_95.html" target="_blank">涡轮增压</a><a href="http://car.autohome.com.cn/shuyu/detail_8_9_555.html" target="_blank">发动机</a>进行了全部的升级，最终在工程师的调校下，可以爆发出惊人的1020马力，<a href="http://car.autohome.com.cn/shuyu/detail_40_41_99.html" target="_blank">扭矩</a>更是高达1032 牛&middot;米。</p>\r\n\r\n<p>进入到车内，工程师为这辆车的仪表也进行了改装，380km/h的极限车速可是震惊。不仅如此，翻毛皮的方向盘也是惊喜设计，为了彰显高贵，赛车座椅也采用高档皮质作为面料。</p>\r\n\r\n<p>车身尾部的碳纤维扰流翼可算别具匠心，不仅与众不同，还可以在高速时获得很好的下压力帮助车身尾部起到稳定作用。底部的碳纤维扩散器也可以起到下压力的作用，碳合金双边共四出的运动排气，可以释放出那迷人的V8音符。如果见到这样的车还敢挑衅的话，百公里2.8秒的加速会给你好看。</p>\r\n', ' 奔驰E63 AMG一直以来就是成功人士追寻的座驾，低调的外观设计和出色的动力表现一直广受追捧。近日德国Posaidon改装工厂打造了一款代号为RS850+的奔驰E63 AMG，可它并不是很低调。', '谍照，运动', 0, 0, 0, '/blog/uploads/20160719/20160719150026977.jpg', '2016-07-20 10:57:17'),
(5, 0, '福克斯RS“漂移模式”纵容车主犯法？', 'Mark', 'AutoHome', 'original', '<p>据海外媒体报道，有澳大利亚法律行业相关专家指出：<a href="http://car.autohome.com.cn/price/brand-8.html" target="_blank">福特</a>汽车旗下<a href="http://www.autohome.com.cn/364/" target="_blank">福克斯</a>RS车型所拥有的&ldquo;漂移模式&rdquo;对于一辆合法销售、上路的量产车型来说是一项完全没有必要的功能，该功能会对驾驶员进行不正确的引导，从而纵容车主触犯澳洲的&ldquo;Anti-Hoon&rdquo;法（意译为&ldquo;反危险驾驶法&rdquo;）。</p>\r\n\r\n<p><img alt="" src="/blog/uploads/20160720/20160720110148829.jpg" style="height:350px; width:620px" /></p>\r\n\r\n<p>因此，澳洲行人委员会随后对<a href="http://car.autohome.com.cn/price/brand-8.html" target="_blank">福特</a>汽车发出警告，敦促其召回<a href="http://www.autohome.com.cn/364/" target="_blank">福克斯</a>RS车型，并禁用该车的&ldquo;漂移模式&rdquo;。然而，<a href="http://car.autohome.com.cn/price/brand-8.html" target="_blank">福特</a>拒绝了这一要求，同时表示当<a href="http://www.autohome.com.cn/364/" target="_blank">福克斯</a>RS车型的&ldquo;漂移模式&rdquo;被激活时，该车的仪表盘会出现&ldquo;漂移模式仅适合赛道使用&rdquo;的相关提示。</p>\r\n\r\n<p>外媒认为，这些&ldquo;安全专家&rdquo;并未认识到&ldquo;漂移模式&rdquo;实际上会令漂移更加安全。退一步说，现今市面上销售的大多数后驱性能车都可以随时关闭<a href="http://car.autohome.com.cn/shuyu/detail_16_44_1043.html#109" target="_blank">ESP</a>或TCS等驾驶辅助系统，相比<a href="http://car.autohome.com.cn/shuyu/detail_3_7_412.html#147" target="_blank">全时四驱</a>的<a href="http://www.autohome.com.cn/364/" target="_blank">福克斯</a>RS来说，这些车型会更容易失控、更易发生危险。</p>\r\n\r\n<p>　　此前，澳洲相关部门便曾以触犯&ldquo;Anti-Hoon&rdquo;法为由，要求<a href="http://car.autohome.com.cn/price/brand-8.html" target="_blank">福特</a>汽车为旗下<a href="http://www.autohome.com.cn/102/" target="_blank">Mustang</a>&nbsp;GT车型取消Line Lock弹射预备功能，即所谓的&ldquo;烧胎模式&rdquo;。</p>\r\n', '据海外媒体报道，有澳大利亚法律行业相关专家指出：福特汽车旗下福克斯RS车型所拥有的“漂移模式”对于一辆合法销售、上路的量产车型来说是一项完全没有必要的功能，该功能会对驾驶员进行不正确的引导，从而纵容车主触犯澳洲的“Anti-Hoon”法（意译为“反危险驾驶法”）。', '新闻', 0, 0, 0, '/blog/uploads/20160720/20160720110220332.jpg', '2016-07-20 11:02:24'),
(6, 0, '开着宾利去钓鱼 添越推原厂垂钓套件', 'Mark', 'AutoHome', 'original', '<p>俗话说&ldquo;工欲善其事必先利其器&rdquo;，如果你是一位拥有了世界上最昂贵、最奢华的<a href="http://car.autohome.com.cn/shuyu/detail_3_4_281.html#390" target="_blank">SUV</a>的垂钓爱好者，我想一套与这辆<a href="http://car.autohome.com.cn/shuyu/detail_3_4_281.html#390" target="_blank">SUV</a>调性相符的、顶级的户外钓鱼装备是必不可少的。日前，<a href="http://car.autohome.com.cn/price/brand-39.html" target="_blank">宾利</a>就为旗下的<a href="http://car.autohome.com.cn/shuyu/detail_3_4_281.html#390" target="_blank">SUV</a>车型<a href="http://www.autohome.com.cn/2685/" target="_blank">添越</a>推出了这样一套原厂垂钓套件，该套件由真皮和实木打造，极尽奢华。</p>\r\n\r\n<p><img alt="" src="/blog/uploads/20160720/20160720110941385.jpg" style="height:350px; width:620px" /> <img alt="" src="/blog/uploads/20160720/20160720110928825.jpg" style="height:350px; width:620px" /></p>\r\n\r\n<p>除此以外，一个同样由马鞍皮包裹的木质行李厢可以轻松放下防水钓鱼裤和靴子，箱子内衬采用橡胶和耐磨材质包裹，并具有一定的防水性能。在<a href="http://www.autohome.com.cn/2685/" target="_blank">添越</a>的后备厢，设计师还融入了一台电子除湿机，以保证后备厢区域的干燥。</p>\r\n', '俗话说“工欲善其事必先利其器”，如果你是一位拥有了世界上最昂贵、最奢华的SUV的垂钓爱好者，我想一套与这辆SUV调性相符的、顶级的户外钓鱼装备是必不可少的。日前，宾利就为旗下的SUV车型添越推出了这样一套原厂垂钓套件，该套件由真皮和实木打造，极尽奢华。', '新闻', 0, 0, 0, '/blog/uploads/20160720/20160720111004997.jpg', '2016-07-20 11:10:08'),
(7, 0, '卖不动就砍 4C继任者或不再推出敞篷版', 'Mark', 'AutoHome', 'original', '<p>据海外媒体报道，由于现款车型的市场表现较差，下一代<a href="http://car.autohome.com.cn/price/brand-34.html" target="_blank">阿尔法罗密欧</a>4C Spider（敞篷版）车型或将被取消，目前在售的现款车型预计将在2020年前逐步停产。</p>\r\n\r\n<p><img alt="" src="/blog/uploads/20160720/20160720111106859.jpg" style="height:350px; width:620px" /></p>\r\n\r\n<p><img alt="" src="/blog/uploads/20160720/20160720111118313.jpg" style="height:350px; width:620px" /></p>\r\n\r\n<p>敞篷<a href="http://car.autohome.com.cn/shuyu/detail_3_4_281.html#383" target="_blank">跑车</a>本身属于小众车型，<a href="http://car.autohome.com.cn/price/brand-34.html" target="_blank">阿尔法罗密欧</a>也未对4C Spider车型有太高的销量预期，但4C Spider车型今年在美国市场仅售出309辆，这一销售成绩只比即将停产的<a href="http://car.autohome.com.cn/price/brand-41.html" target="_blank">道奇</a><a href="http://www.autohome.com.cn/573/" target="_blank">蝰蛇</a>多11辆，表现远不如预期。另据此前消息，<a href="http://car.autohome.com.cn/price/brand-34.html" target="_blank">阿尔法罗密欧</a>计划在2020年推出现款4C车型的继任者，新车将基于新Giorgio平台进行打造，同时或将沿用此前<a href="http://car.autohome.com.cn/price/brand-34.html" target="_blank">阿尔法罗密欧</a>旗下一款紧凑型轿车Brera车型的命名，新车的售价也会更加亲民。</p>\r\n\r\n<p>现款<a href="http://car.autohome.com.cn/price/brand-34.html" target="_blank">阿尔法罗密欧</a>4C定位于一款<a href="http://car.autohome.com.cn/shuyu/detail_40_41_829.html" target="_blank">轻量化</a><a href="http://car.autohome.com.cn/shuyu/detail_3_4_281.html#383" target="_blank">跑车</a>，采用碳纤维底盘，动力方面搭配1.75L<a href="http://car.autohome.com.cn/shuyu/detail_8_10_95.html" target="_blank">涡轮增压</a>直列四缸<a href="http://car.autohome.com.cn/shuyu/detail_8_9_555.html" target="_blank">发动机</a>，最大输出<a href="http://car.autohome.com.cn/shuyu/detail_40_41_98.html" target="_blank">功率</a>240马力，峰值<a href="http://car.autohome.com.cn/shuyu/detail_40_41_99.html" target="_blank">扭矩</a>350牛&middot;米，传动系统匹配6速Alfa TCT<a href="http://car.autohome.com.cn/shuyu/detail_1_2_141.html" target="_blank">双离合变速箱</a>。另外，新车的官方0-96km/h加速时间为4.1秒。</p>\r\n', '据海外媒体报道，由于现款车型的市场表现较差，下一代阿尔法罗密欧4C Spider（敞篷版）车型或将被取消，目前在售的现款车型预计将在2020年前逐步停产。', '新闻', 0, 0, 0, '/blog/uploads/20160720/20160720111145559.jpg', '2016-07-20 11:11:48'),
(8, 0, '动力超300马力 全新雷诺梅甘娜R.S.消息', 'Mark', 'AutoHome', 'original', '<p>日前，有海外媒体报道了全新一代<a href="http://car.autohome.com.cn/price/brand-10.html" target="_blank">雷诺</a><a href="http://www.autohome.com.cn/196/" target="_blank">梅甘娜</a>R.S.的消息，据悉，全新<a href="http://www.autohome.com.cn/196/" target="_blank">梅甘娜</a>R.S.的动力或将超过300马力，并会继续采用前轮驱动。 <img alt="" src="/blog/uploads/20160720/20160720111328809.jpg" style="height:350px; width:620px" /></p>\r\n\r\n<p><img alt="" src="/blog/uploads/20160720/20160720111340141.jpg" style="height:350px; width:620px" /></p>\r\n\r\n<p>根据消息，全新<a href="http://www.autohome.com.cn/196/" target="_blank">梅甘娜</a>R.S.将仅推出5门版车型，较现款3门版车型的实用性更好。新车将会采用全新设计翼子板和保险杠，并将配备尺寸更大的车轮，相比普通版车型更加激进。另外，全新<a href="http://www.autohome.com.cn/196/" target="_blank">梅甘娜</a>R.S.的动力将会超过300马力，仍采用前轮驱动。传动系统方面，新车将会提供<a href="http://car.autohome.com.cn/shuyu/detail_1_2_350.html" target="_blank">手动变速箱</a>和<a href="http://car.autohome.com.cn/shuyu/detail_1_2_141.html" target="_blank">双离合变速箱</a>。<a href="http://car.autohome.com.cn/price/brand-10.html" target="_blank">雷诺</a>希望能用全新<a href="http://www.autohome.com.cn/196/" target="_blank">梅甘娜</a>R.S.来夺得纽北最快前驱车的记录，目前该记录的保持者是<a href="http://car.autohome.com.cn/price/brand-1.html" target="_blank">大众</a><a href="http://www.autohome.com.cn/871/" target="_blank">高尔夫</a>GTI Clubsport S。</p>\r\n', '日前，有海外媒体报道了全新一代雷诺梅甘娜R.S.的消息，据悉，全新梅甘娜R.S.的动力或将超过300马力，并会继续采用前轮驱动。 ', '新闻', 0, 0, 0, '/blog/uploads/20160720/20160720111404534.jpg', '2016-07-20 11:14:07');

-- --------------------------------------------------------

--
-- Table structure for table `blog_comment`
--

CREATE TABLE IF NOT EXISTS `blog_comment` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `user` varchar(20) NOT NULL,
  `content` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL COMMENT '审核状态',
  `manner` tinyint(1) NOT NULL,
  `ArticleId` mediumint(8) NOT NULL COMMENT '文章ID',
  `replyId` mediumint(8) NOT NULL COMMENT '回复文章ID',
  `date` datetime NOT NULL,
  `sustain` mediumint(8) NOT NULL DEFAULT '0' COMMENT '支持',
  `oppose` mediumint(8) NOT NULL DEFAULT '0' COMMENT '反对',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `blog_comment`
--

INSERT INTO `blog_comment` (`id`, `user`, `content`, `state`, `manner`, `ArticleId`, `replyId`, `date`, `sustain`, `oppose`) VALUES
(1, 'red', '你们有钱人真会玩儿', 0, 0, 6, 0, '2016-07-20 13:23:44', 0, 0),
(2, 'red', '你们有钱人真会玩儿~', 0, 0, 6, 0, '2016-07-20 13:31:24', 0, 0),
(3, 'red', '期待自动挡版本', 0, 0, 8, 0, '2016-07-20 15:35:20', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `blog_user`
--

CREATE TABLE IF NOT EXISTS `blog_user` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL COMMENT '用户名',
  `password` char(40) NOT NULL COMMENT '密码',
  `email` varchar(30) NOT NULL COMMENT '邮箱',
  `face` varchar(100) NOT NULL,
  `question` varchar(30) NOT NULL,
  `answer` varchar(40) NOT NULL,
  `authority` tinyint(1) NOT NULL DEFAULT '1',
  `date` datetime NOT NULL,
  `time` char(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `blog_user`
--

INSERT INTO `blog_user` (`id`, `username`, `password`, `email`, `face`, `question`, `answer`, `authority`, `date`, `time`) VALUES
(2, 'red', '78988010b890ce6f4d2136481f392787ec6d6106', 'red@163.com', '/BLOG/uploads/20160715/20160715212053609.jpg', 'red', '78988010b890ce6f4d2136481f392787ec6d6106', 1, '2016-07-01 00:00:00', ''),
(3, 'red2', '78988010b890ce6f4d2136481f392787ec6d6106', 'red@163.com', '/BLOG/uploads/20160715/20160715212053609.jpg', 'red', '78988010b890ce6f4d2136481f392787ec6d6106', 1, '2016-07-02 00:00:00', ''),
(4, 'red3', '78988010b890ce6f4d2136481f392787ec6d6106', 'red@163.com', '/BLOG/uploads/20160715/20160715212053609.jpg', 'red', '78988010b890ce6f4d2136481f392787ec6d6106', 1, '2016-07-03 00:00:00', ''),
(5, 'red4', '78988010b890ce6f4d2136481f392787ec6d6106', 'red@163.com', '/BLOG/uploads/20160715/20160715212053609.jpg', 'red', '78988010b890ce6f4d2136481f392787ec6d6106', 1, '2016-07-04 00:00:00', ''),
(6, 'red5', '78988010b890ce6f4d2136481f392787ec6d6106', 'red@163.com', '/BLOG/uploads/20160715/20160715212053609.jpg', 'red', '78988010b890ce6f4d2136481f392787ec6d6106', 1, '2016-07-05 00:00:00', ''),
(7, 'red6', '78988010b890ce6f4d2136481f392787ec6d6106', 'red@163.com', '/BLOG/uploads/20160715/20160715212053609.jpg', 'red', '78988010b890ce6f4d2136481f392787ec6d6106', 1, '2016-07-06 00:00:00', ''),
(8, 'red7', '78988010b890ce6f4d2136481f392787ec6d6106', 'red@163.com', '/BLOG/uploads/20160715/20160715212053609.jpg', 'red', '78988010b890ce6f4d2136481f392787ec6d6106', 1, '2016-07-07 00:00:00', ''),
(9, 'red8', '78988010b890ce6f4d2136481f392787ec6d6106', 'red@163.com', '/BLOG/uploads/20160715/20160715212053609.jpg', 'red', '78988010b890ce6f4d2136481f392787ec6d6106', 1, '2016-07-08 00:00:00', ''),
(10, 'red9', '78988010b890ce6f4d2136481f392787ec6d6106', 'red@163.com', '/BLOG/uploads/20160715/20160715212053609.jpg', 'red', '78988010b890ce6f4d2136481f392787ec6d6106', 1, '2016-07-09 00:00:00', ''),
(11, 'red10', '78988010b890ce6f4d2136481f392787ec6d6106', 'red@163.com', '/BLOG/uploads/20160715/20160715212053609.jpg', 'red', '78988010b890ce6f4d2136481f392787ec6d6106', 1, '2016-07-10 00:00:00', ''),
(12, 'red11', '78988010b890ce6f4d2136481f392787ec6d6106', 'red@163.com', '/BLOG/uploads/20160715/20160715212053609.jpg', 'red', '78988010b890ce6f4d2136481f392787ec6d6106', 1, '2016-07-11 00:00:00', ''),
(13, 'red12', '78988010b890ce6f4d2136481f392787ec6d6106', 'red@163.com', '/BLOG/uploads/20160715/20160715212053609.jpg', 'red', '78988010b890ce6f4d2136481f392787ec6d6106', 1, '2016-07-12 00:00:00', ''),
(14, 'red13', '78988010b890ce6f4d2136481f392787ec6d6106', 'red@163.com', '/BLOG/uploads/20160715/20160715212053609.jpg', 'red', '78988010b890ce6f4d2136481f392787ec6d6106', 1, '2016-07-13 00:00:00', ''),
(15, 'red14', '78988010b890ce6f4d2136481f392787ec6d6106', 'red@163.com', '/BLOG/uploads/20160715/20160715212053609.jpg', 'red', '78988010b890ce6f4d2136481f392787ec6d6106', 1, '2016-07-16 00:00:00', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
