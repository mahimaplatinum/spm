
-- MySQL dump 10.13  Distrib 8.0.37, for Win64 (x86_64)
--
-- Host: localhost    Database: spm
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `files_data`
--

DROP TABLE IF EXISTS `files_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files_data` (
  `f_id` int NOT NULL AUTO_INCREMENT,
  `file_name` varchar(50) NOT NULL,
  `file_data` longblob,
  `added_by` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`f_id`),
  UNIQUE KEY `file_name` (`file_name`),
  KEY `added_by` (`added_by`),
  CONSTRAINT `files_data_ibfk_1` FOREIGN KEY (`added_by`) REFERENCES `student` (`email`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files_data`
--

LOCK TABLES `files_data` WRITE;
/*!40000 ALTER TABLE `files_data` DISABLE KEYS */;
INSERT INTO `files_data` VALUES (1,'otp.py',_binary 'import random\r\ndef genotp():\r\n    otp=\'\'\r\n    Caps=[chr(i) for i in range(ord(\'A\'),ord(\'Z\')+1)]\r\n    sms=[chr(i) for i in range(ord(\'a\'),ord(\'z\')+1)]\r\n    for i in  range(0,2):\r\n        otp=otp+random.choice(Caps)  #otp=\'K\'  #otp=\'K3i\'+\'M\'\r\n        otp=otp+str(random.randint(0,9)) #otp=\'K\'+\'3\' #otp=\'K3\'   \'K3iM5\'\r\n        otp=otp+random.choice(sms)  #otp=\'K3\'+\'i\'  #otp=\'K3i\'  \'K3iM5d\'\r\n    return otp\r\n','anusha@codegnan.com','2024-08-12 10:55:36'),(2,'bg1.jpg',_binary 'ˇ\ÿˇ\‡\0 JFIF\0  \0\0 \0 \0\0ˇ\€\0Ñ\0	   \r\r\r\r\r\r \r\r    \r                  (   %   !5-%)+...  3D3-8(..+ \n\n\n \r     +   0+-+0+-/--+-++/-+---+----/2/---+-------.-5----+---ˇ¿\0  \0® ,  \"\0      ˇ\ƒ\0 \0  \0    \0\0\0\0\0\0\0\0\0\0        ˇ\ƒ\0; \0   \0        \0\0\0  \0     !1  AQ\"aÅ  2bqÇë3B CR°±#$4DSrí≤¡ˇ\ƒ\0\Z   \0   \0\0\0\0\0\0\0\0\0\0\0      ˇ\ƒ\0.  \0        \0\0\0\0\0\0\0    !  1A\"QqÅ\—\ aë\Ò #2BC±\·ˇ\⁄\0   \0    \0?\0\Ù\·  |ÀÆHeí    \ƒD®± *,DJ(ñq  ã $\"\… BõààR\" $ñ I%â  >6‹®¨\Ã¡UA,\Ã@\0 ≤I=Ñ\Î\Ò∆¥b\‰ s¨è*\œ$\Ë ˙úßó°\È\ﬂ]\Áí\Ò/ \‰\ŸCae\◊\‰ 	¶¸ï¶\¬U:≠ã\Â  \€\È\–˚\Ù \'¶<6\…\‡µ\‚æ^´¬∏\Œ>b≥cZ∂Ñb≠≠Ç æè] C\Î;˝\Áã\¸\ƒ\·W”ùÉês0\ﬂ˛ûH¯Cç\ı*Tkî\Î®ﬂ™êOY\ÏXYIuimL ª :0\Ï\ F¡åÿª\'q\‚Vñﬂü/ ˚M\‡á 7\Ô(∫£\'\Òk≤\‹ _\‰\r˛†˚\ÕDô\Ôû-\‡ã\ƒ0≠\«nåG5m˛ã Uo\Êx ##=v ∂V\≈  B è¸NèGóæù≥\Ê\ZùE5n\Ë\ıBd& Ün5êôö\g ˇ\0 ŒÆ\Ê:¢\ÕUï\Ì\Âì\—ˇ\0i\Î˙s{\Ã!ê\ÃoXµf≥\Í ∂ö\Œ\·˙YN\∆\ƒM\'Ï∑è˝\Î \‚X€ø ï \œW†ˇ\0Mæö+˚Gº\›\Á\œd§\“\”Y\Ùukh¥n â%íF$D∞   ÑD@± *,D≤\¬ ,J K$	 \ƒ	 \… DD™DD	 \… \√¯£)\Ë√π\Í!m`µRH\ÿ[laZ ˙3É8\‚pz™«Ø P\ZëB\Èá77ª6˚ívI\ı&s\ÒN+›Öz‘º÷®[jSŸ¨≠Öà>•\0ùû òô4U}Gu⁄ä\Î\Ô¢; c\È\Ùñ ßè \Ï\ \'ñë\‚_≥ºk’ü }\“\Ôz∂µ?]Ä\Ë:w\Î\”F|~\Ã¯Ö∏∂]\¬3 ¨Bm\«\ˆ*z∫ \Ìøà~ß\⁄z Çy\Ô\⁄^7êp\Û±∂3 \‚µrçñ ∑∞Ç=@\‰˛	 ≥\◊ Kd˛Uß{\Ò˘1µbæ\‹=\Zy ⁄ø\0˚Ω\À\ƒ*]Wi	ëÆ¡\ı• Æµ˙\ÍzGÜx\Õ|C å™ªXø \Ô|é:2 –É>\‹wÜ&f5\ÿ\ˆ\r≠äT˚èb>`\ıò\‚\…8≤n~e´ ÆüùâúIülºG∆∫\‹kF¨•ä7Mlz0˘ £\ıü ;ë;ç√õ1©”âê\ g (\…¯oå∑ Ãß)vUO-\ ?æñ¸c\ı\ÏG\ÕD˝ èrÿâb0du å:ÜR6 ˙O\Õ v\ü\⁄ \·ÿãâu x≠õ\…e`9j:! ˝è7\”C\“huù<\‰’´ ∂z|±^-\·\Ìq 9M≤Xà \"%BXâPîD∞ \…,®DD\"D≤B¨D@ë   ,¢jMNRH$í\…\nå&π\˜ \≠±\\¬Ÿèk ,\∆v\‰‰∞ùµî∂à]\˜*z \◊`ìΩípu\‹D\Ã,5|æ9õ\’i\·V\Ûz5˘8µ\’¸£1?\ƒ¿q\ﬁ \ƒ °\≈n∂∑\À\√&\⁄q( \„\ná\ı ôá39]\ı\ˆ\Z\‘\›xÄZ’¨v à•ùò\ÈU@\Ÿb}\0 T\√9ºYã•ñp˛ AT*®2\Ú‘çs\Ì¡\Ú\–˙t\ﬂ\Û\”\” µ;ààà\Û\Ù[\÷&5πñ ¡\\Q8  ld:\·¸L.N ˙ ±\«E˘ Ö \Ù*ì\’\«Y\‰\ﬁ4\8\√\ƒ[±o∏’äMã]úåi\Ÿ\€=L\0 o\‚#\Âæ˝˝ ¬úW\Ô∏8˘\'\\Œö≥]Öã\ææ[ gû+håïù˙K\nn=ôhükº \\úF•Í∫Ø#^®O\¬\ﬂBu\ı˘O5>\‚~ì\‚XiëMîÿ°í\≈e`{ Fàüù¯\œ | ´\Ò,\ﬁ\Îm°?\ﬂY¸-¸ æ\Ê\ﬂEóu\ÏüGáQN{°\“2NSâ3}®ë®\']\Êg ¬ºB\Ù Wà¸á\ó+Y?=1 S ^µ\Û:eZÕºFﬂ¢dâgŒ∫dí\ƒ\n\" ¢T%âeB\"YPàâPàâ \" \"\"Pàâ \"%	%ê»©!ëõ_Y ∑\Ú#ø¨+îÜXêkû0®Zò\ÿ\œ˝,å™+∏z5`õ\n ìyaO…å\Ã%sß\‚å ø ºü¸EO]¯˚: ⁄ú:©>ÅπyO…å˚\~#^]	}{\”l2∑G≠¡\”V\„—îÇ ˘L¶7Xe \…\ƒ1Öµ=l6¨•H>†â\Á\ﬂeºK\Ó˘9ú!\€bª,|r +r∫ˇ\0\ıo˛S—≥.Z\Îwr ¢ñb{\0 \…ˇ\0i\‡\ıdYçïG  õ5\√/©V p?kXø\ƒ\ˆ\È\È\ﬂKW\Ù¯∞\…mLOﬁû˛\'ù˝≠xx\ﬂJ\ÁRªª \ÒÄ:µGø\Ò\ﬂ˘\˜õ˛-´b+° å°îé\≈H\ÿ?\ƒ\Áb   ∞gé;\Õ- èFv¨Lj_ò˘Å \€\È\Ô3ú \¬Yô\‰\Z\Î\Úi?\Ê\⁄  {™\˜o\ˆ 9\Ï+\‡¸ ∑\Õ î\Û\Ôõ\\r \˜ ∂\Êe)U\Z\0M‹ü\ƒ8\ˆ#\ıxS•èÓñ•\·ø \‚\·\Ú\ÿ\À\Á\ﬁ?Ã¥ A¸´\Ÿ \Á\Á6≈•@÷ß\œ+6∫u\Ê:¶\ˆ ò\Îz :˝ S\Ï:\Õwä¯ö\⁄nj´\∆6Ö\–$ t{\Ë\ı\Z\ËA\ı\ËG\Ë4gø,\Óyl\«m#é åDL  \…,°(íQ ≤\ƒJÑ±,®DD°$± ë,@DD°$± K  H\“\»dVõ\‚_\Z◊áí0¸∞\◊ åú\œ\  1:\–\—\ﬂPD\¬\„˝•´[é´H)u¬êC≥ ∂(\È€Ø\∆?ôò\Ò7Ä\Î\‚ Àö\˜\ŸYZ|ûT \Û\È¡\˜ g∑\ˆâ\‘\·\ﬂf t}\‹˘π \‘\\/Rl^Æ\nëøá∑¿&\Õ\' Sü,f/æ<7¥; îä5.\Ê´9 ¡\Áp\"-|ú;õ \˜—∑J õà\Z \ \œs≠u  Ängdñ&c¿\Û\ﬂ ]ƒ´·∂É\˜{  •\ÕMV£-gª ªht\—\Ô\–˙wò  \ˆ|sp±.|À´vQg!UzQ\\\Û ã–ÇwΩ\Ôˇ\0\…\Î∂V °  ≥Ç\÷ \0\0\0t\0t \÷:ãV∫Ø em;û_  à1Ë¶Ä≈ÖU•aò\0X*Å≥°≠\Ù\Ùù¢gÕüS ï∆ÉRÔã´]HU [©-À∞;ë∞ É<9¥\\Ù\”.\ˆ 0ô\\gú\€M!¸\Â\ÿ] ,\‰ ∞Ä˙\È [\Z<ß\ÿœÄ¬∑8≠™H≤ï<\ı !Ÿø∑[:®˛.˚!ê º§ Ö<1/\≈k\ÈQ\˜Ña\Ê\nT+ø\·nmû§Ë•™	 ` \Î6±tìnl\Òæz\◊\√ á√¨ ≤™2\Ÿ\≈\…\‘ e\ﬂ7\¬\›\\\Ï ¡\Ã;ù  \⁄I7\Zßá3\‚\‰ ˙à\«b£B  Ä\Û\ı; c\Ú≤ I∏Ø \Û˛\Âë`|[™T{)®\÷Wõ[51\— ),6æÖ∫Ëôñ\Â ”°\\U¨i©lñ¥∞≤\ƒN#xàâBr å\‰%IQ,K+ \"% ñHB\"$R\"%B\" \"\"  AÖu-\‚ •©CZãuÅö¥, ≤Æπà ∫ÿùÄw4_ ¯M≤\Ì∂˙‹ª≤÷çS7&\—6¬§m|!õîì\Ú=Gq≤¯c \"úJì.\”nFãZ«∞f;\‰_ ª\–˘	ù©X¨LO>\‚7ø ∂§\‘\Èg\Òä1\ÿ%å\Ê\¬9ÖuUm\ˆkz\ﬂ%jN∫ \—>$RÊ•¢\Ó}  \≈ ñ˘rç∏>ΩTt\Î\ÿ åV}À∑  °-^\”6\‘*¡S \€)>f\«\„ee\È£˝\«]&7 √óµÇ\€]±\Î\0\Íñ…ø5\Œ∆∂\Õkr ;\ÙS˙Õ∂¶,™Ã• ÄJí	SÆ´±\–\ÍS/\‚LF†\”„âå¥÷µ¶˘Wz\Ê$ûßg˛g‘ô µ1\\WçWå*f\ÊeµÇ´&äçë‘üØ\÷y\Û3\√(ÜI\Ï\0lù ‹û\¬a¯∑ Zi[™ rõ dá“Ø}±?-~æ\€: ´}π )º\Õ  SHzt †∂áv:\Ám\ˆ\ÂS\ﬂBv\xrp\€\Ë¶\◊\’7ïZÀî\Ê6í\0˘ \Œ Ω:ü5= Õå]5ØÃ∞æZ\’”Ω2 ¡ïYaPP¶∂sµnm0*: ∞ $\Ù\ﬂ7^Qæ\‡\·…àîfP∂=NG:\"\Ÿeáõ_	\0ll ] ÃïéùfsÖp∑¶Ã™Y+8N†W\ÒíÕ∞AV]t tù˚ \˜3#\√p  °ME Ç\Ìª ¨vgr\Ïƒüvb~≥°è h‘ækY”´Ñµyüx™\≈JZ∂ U\»yôŒ¥\‹\€\– î «©o\ı \ﬁ\≈√™û *§Ø\Ãseúä ù\œv>\Êv$û\œ$ààV \"\' \“ D¢ \‘\‰ K2BXâPñ JÑíƒí$DH  (DD D@DD   \˜Æ≤Å9 ëXæ!\√\Ì±\˜NA°l\n∑ïPl!wÆBz)<\⁄\'G† \Ì\√¯eXÀ™ìD˛&? π\˜f=L\Ó3\06{@;ôn| ò\Ï˛)U ]v?+ZtÄ˙¸Aw˙s: \‹&E¶6\Ï l\ˆ≥ ö∂…°E° \Ôê6\¬1Q\›IR:˚~í\„\«¯ó\Ì&\—X‹±\'\"\Ïã\Ú∞ØNJlRò\ˆ®e\rµ;\—\ÓNà\ÌÿÅ◊® µ¡8(_˚ £\Œ\» T\Ï†0:=P i\Â; ©\⁄\Ÿ\Ì;\‘b∂~ 5D”ó[î[oF\ÿdm \Ùﬁ∫7Nú\Ë=¶\¬\ÿ =µ_eh\◊‘•R\Œ^´±£\À\Ì\‹¸¿c\Ów\”\≈\”VæZ∑\œ3\·á\·|:\«∆ø\Z\Í⁄ì]ú¥\€ Ωu¢ F˙†m\Ë ú§ yô\≈\ƒZÎ¶≤M¶ïUW∞ \‰Ö\Â\Êﬁªëø\Êv\"lkO \"$!$î\… K  	 (ú M\'!$\‰%BXñV$@âEàâPàÉ DD\ƒ\"\"Pàà àÄàà :ô¸B¨pçuãZª≠jX\Ë c•Q\Û&v\Ê \≈¸,f\‡d\„ûÏÑßrCØƒß˘ #[\Á¬≤÷ée#\‹ ”°ö\'É8\Ûce_¡slcm6 ámÑñ∫¶\€* =\ÿ Ω{ç˚LœÇ32ü ™¯Çrd™ æuv≤Ω\È]µ\–7M \Ô\Ì\ÿkøhú7»π3’º™Æ\Ú\Ë ∞ \Â\ÌV\Ê\∆\Ã˝è†}‘ë\Î=±\÷&”é\”\Á˝˙ \‹F\ı˚= sM\ÒMè\√sq∏\›@ï§y A u≥\r€©˘îm0˙\ÃÁÜ∏Ø\ﬂ1í\«_.\Â-VM{Ÿ™\Ù<∂\'–éû\‡É;y¯\Àmo[®de*¿\ˆ ç <\Îi\≈}˚ó∂/\Z\˜∂Jm[ lF é°ëÅ\ÿe#`è°ú\Êá\ˆmû\ÿ\Ì  Ωâ|A\Ê`≥ ∂\·3iG\Ã\÷~ \Ú+7π€≠¢—∏s¶&\'RDDJ  H§í\…   0íâ\'!8.ë©bYPàâQb\" â%ï â\"B\"$R\"! àÖ\"HêXí $\"Xê`≤P\”g\√\› [_\Õ?ÃØ¯¯æá\ﬁw3\Ò*\Ã∆≤õ =WVUæj√∏˘œß §≤ÜO\Í!\ÊO\‘zNß ∏ k  áôO\…I¯ì\ˆùàlOµ]˝˝ˇ\0÷â\· \Î8~k\‚\‰∑^z\\ÚIﬁô\¬\Î +\Ùz«ñ 2\'©ûõ\‹M \Ì\'Ö*\Úq ¨QW\Ó˘\· \∆q]Å\Û \Ê≠˘\\|\ƒ\ÿ|%\≈NV6≠e9 ü\' Ø\·f\n\n⁄øï–´èìMú\Ò\ﬂX\À 	¯µ©\Ï\œo\Œ \ﬂ \„[I£äb/6V  Bè\Û\Ë#WPu˛•\ﬂ\‘OB\·\\B¨ºzr®nzn≠l¨˛V \Î\Ï}?Q0π	\Ã ò  dˇ\0ág_\¬ \Î \Ú˘|7}îìª\Ò\«\ËO8˘ =∫,ø„üìœ©«øn>oBâ7 õ\Ì2Bb!Hí \"\" \Z]\Œ;ç\Œ §\Â∏\‹\„π`r‹≥Ñªóiß(ìq∏G(í%ÿ≤Dê,I∏‹õUâ7 çã nM\∆≈â7 ê\“ƒõìpi\ 78\Ó7\n¶`≥*5Y§\Ô≥m?˚Ä¯\Î˝\√˝¿ô\ÕŒß \«6\'\¬t\ÍC!\ı ;C\” µ(\Î^M 0 ]®C ÿ´\r gô\ á\· E±mc\…O% \«¸\Ã  ˚lé˝MV1®ü\Ù⁄æâ7\Ó ê r\ˆK6\Ë= \«\ı+˙ £\‰D\◊˛\“x^\ÍN!]~c\‚á[\Î\Ì\Á\·∏Â∫£˚I#\⁄{\Ù\ˆà¥\“\ﬁ-\«\“X\Á§\«1\Ê9è£u\ﬁ\ƒ\◊<[\√l∂•ª \Úfc:\‰b?µ©\‘)¸¨6ß\‰g  \Òo? \…k<\€(  áΩ\‘2\ÛQ \ÓN˛Ã¨=&¡rlO)\Ó\≈ \Œ \’\Î˘K#\·\Œ1_ √£.†TZªd?äª \”\÷\ﬂ5`G\“dßüxs\'¸7ä>+ bq&6S˛ö\ÛU~4˘yàª˝P˚\œ@ùúwã\÷- u\È4ùJƒë3`±$B\ÈbH‹ÜòH\‹D\‡:f\Â\‹Dl7.\‚%Cr\Ó\"P‹ªàÑM\∆\‚ M\∆\‚$Sr\ÓHÅw&\‚ M\∆\‚!tn7 !£qπ\"6iw!1 å }E-\“\Ù\Û zΩÖ\√\”\˜\rè®\ˆù\ı±r(\ﬂ\ˆ∫êA\Ù\Ù \ƒLw\√j—∫DºWÜqõ∏  Ø #˙ Ωï ÷ô±-`\ }àV€èng ‹ë\√\0A  ∞GPGºD\ﬁ\Î9≠/\Î0\–\√≈≠_Hñ \ƒ¸3\Ô42+\Z\Ï l¶¡ﬁªêÜ≠\«\Ë¿Mè\¬\\o¸C\r.` \ı&¨™ˇ\0\Ù\ÔNéøß®\˜  âóCy\Ê©\’V5 \Ã\∆\‚&˚H‹õàÖ7 àÅˇ\Ÿ','anusha@codegnan.com','2024-08-12 10:56:28');
/*!40000 ALTER TABLE `files_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notes` (
  `nid` int NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `note_content` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `added_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`nid`),
  UNIQUE KEY `title` (`title`),
  KEY `added_by` (`added_by`),
  CONSTRAINT `notes_ibfk_1` FOREIGN KEY (`added_by`) REFERENCES `student` (`email`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (3,'python','easy and simple','2024-08-10 07:13:57','anusha@codegnan.com');
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `email` varchar(100) NOT NULL,
  `student_fname` varchar(50) NOT NULL,
  `student_lname` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `password` varbinary(10) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('anusha@codegnan.com','anusha','baditha','2024-08-07 11:24:06',_binary '1234');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-16 12:33:36