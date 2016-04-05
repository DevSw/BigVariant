﻿--------------------------------------------------------------------------------
--     This code was generated by a tool.
--
--     Changes to this file may cause incorrect behavior and will be lost if
--     the code is regenerated.
--------------------------------------------------------------------------------

CREATE TYPE [dbo].[BigVariant]
     EXTERNAL NAME [PxtlCa.BigVariant.Core].[PxtlCa.SqlCollections.Core.BigVariant];

GO

CREATE FUNCTION [dbo].[BigVariantFromXml] (@value [xml])
RETURNS [dbo].[BigVariant]
AS EXTERNAL NAME [PxtlCa.BigVariant.Core].[PxtlCa.SqlCollections.Core.UserDefinedFunctions].[BigVariantFromXml];

GO

CREATE FUNCTION [dbo].[BigVariantFromVariant] (@value [sql_variant])
RETURNS [dbo].[BigVariant]
AS EXTERNAL NAME [PxtlCa.BigVariant.Core].[PxtlCa.SqlCollections.Core.UserDefinedFunctions].[BigVariantFromVariant];

GO

CREATE FUNCTION [dbo].[BigVariantFromString] (@value [nvarchar](MAX))
RETURNS [dbo].[BigVariant]
AS EXTERNAL NAME [PxtlCa.BigVariant.Core].[PxtlCa.SqlCollections.Core.UserDefinedFunctions].[BigVariantFromString];

GO

CREATE FUNCTION [dbo].[BigVariantFromBinary] (@value [varbinary](8000))
RETURNS [dbo].[BigVariant]
AS EXTERNAL NAME [PxtlCa.BigVariant.Core].[PxtlCa.SqlCollections.Core.UserDefinedFunctions].[BigVariantFromBinary];

GO

CREATE ASSEMBLY [PxtlCa.BigVariant.Core] AUTHORIZATION [dbo]
FROM 0x4D5A90000300000004000000FFFF0000B800000000000000400000000000000000000000000000000000000000000000000000000000000000000000800000000E1FBA0E00B409CD21B8014CCD21546869732070726F6772616D2063616E6E6F742062652072756E20696E20444F53206D6F64652E0D0D0A2400000000000000504500004C0103002E5103570000000000000000E00022200B0130000034000000060000000000004E53000000200000006000000000001000200000000200000400000000000000040000000000000000A000000002000000000000030040850000100000100000000010000010000000000000100000000000000000000000FC5200004F00000000600000F803000000000000000000000000000000000000008000000C000000C45100001C0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000080000000000000000000000082000004800000000000000000000002E7465787400000054330000002000000034000000020000000000000000000000000000200000602E72737263000000F8030000006000000004000000360000000000000000000000000000400000402E72656C6F6300000C0000000080000000020000003A0000000000000000000000000000400000420000000000000000000000000000000030530000000000004800000002000500582F00006C2200000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000133001000C0000000100001100027B010000040A2B00062A133001001A00000002000011000228010000060A1200FE16030000026F1300000A0B2B00072A00001330010011000000030000110002280100000628120000060A2B00062AF20002037D0200000402032C180375140000012C0D0374140000016F1400000A2B01162B01177D0300000402036F1500000A28130000067D010000042A0000133001000C0000000400001100027B020000040A2B00062A1E027B030000042A133001000C00000005000011000228060000060A2B00062A1330010011000000060000110002280500000674190000010A2B00062A00000013300100110000000700001100022805000006A51A0000010A2B00062A00000013300100110000000800001100022805000006A51B0000010A2B00062A000000133001000F00000009000011001200FE1502000002060B2B00072A0013300200170000000A000011000228030000060228050000066F170000060A2B00062A00133002006D0000000B000011000228070000062C1E032C180375140000012C0D0374140000016F1400000A2B01162B01172B01160A062C0500170B2B3A03750200000214FE030C082C1D0003A5020000020D022805000006120328050000066F1600000A0B2B1000022805000006036F1600000A0B2B00072A000000133001001C0000000C000011000228070000062D0D0228050000066F1700000A2B01160A2B00062A13300100110000000D00001100028C1A00000173040000060A2B00062A820002036F1800000A7D0100000402022803000006036F160000067D020000042A8E0003022801000006D26F1900000A00022803000006030228050000066F15000006002A000013300300040100000E00001100020A06450F00000005000000100000001B00000026000000310000003C000000440000004C000000540000005C000000640000006C000000740000007C000000840000003887000000731F0000060B38AD000000732C0000060B38A200000073380000060B389700000073320000060B388C000000733E0000060B388100000073440000060B2B79734A0000060B2B7173500000060B2B69735C0000060B2B6173620000060B2B5973680000060B2B5173560000060B2B4973740000060B2B41736E0000060B2B39737A0000060B2B31720100007072550000707269000070281A00000A0F00FE16030000026F1300000A281B00000A7281000070731C00000A7A072A133002001A0100000F0000110002D01B000001281D00000A3BE800000002D021000001281D00000A3BD500000002D020000001281D00000A3BC200000002D022000001281D00000A3BAF00000002D024000001281D00000A3B9C00000002D026000001281D00000A3B8900000002D027000001281D00000A2E7902D02A000001281D00000A2E6902D02B000001281D00000A2E5802D02C000001281D00000A2E4702D029000001281D00000A2E3602D02D000001281D00000A2E2502D01A000001281D00000A2E1402D019000001281D00000A2E03162B021F0E2B021F0D2B021F0C2B021F0B2B021F0A2B021F092B011E2B011D2B011C2B011B2B011A2B01192B01182B01170A0616FE010B072C1100728B0000707281000070731C00000A7A060C2B00082A2202281E00000A002A0013300100070000000100001100160A2B00062A0013300100070000000400001100140A2B00062A0A002A0000133001000B0000000A0000110072D30000700A2B00062A0013300100070000000C00001100160A2B00062A22022819000006002A4200020304A50F00001B6F1F00000A002A00000013300200120000000A000011000203A50F00001B6F2000000A0A2B00062A000013300100130000000A000011000F01FE160F00001B6F1300000A0A2B00062A0013300200120000000C000011000203A50F00001B6F2100000A0A2B00062A000013300100070000000100001100170A2B00062A00133003002E000000040000110003036F2200000A6F2300000A036F2200000A6F2400000A59696F2500000A282600000A8C1B0000010A2B00062A4200030F02282700000A6F2800000A002A0013300100120000000A000011000F01282700000A6F1300000A0A2B00062A000013300100120000000C000011000F01282700000A6F1700000A0A2B00062A2202282900000A002A0013300100070000000100001100190A2B00062A0013300100160000000400001100036F1800000A282A00000A8C200000010A2B00062A4200030F02282B00000A6F1900000A002A00133001001500000010000011000F01282B00000A0A1200282C00000A0B2B00072A000000133001001500000011000011000F01282B00000A0A1200282D00000A0B2B00072A2202282E00000A002A000013300100070000000100001100180A2B00062A0013300100160000000400001100036F2F00000A283000000A8C210000010A2B00062A4200030F02283100000A6F3200000A002A00133001001500000012000011000F01283100000A0A1200283300000A0B2B00072A000000133001001500000013000011000F01283100000A0A1200283400000A0B2B00072A2202283500000A002A0000133001000700000001000011001A0A2B00062A0013300200200000001400001100036F3600000A0A036F3600000A0B0607733700000A8C220000010C2B00082A7A00030F02283800000A6F3900000A00030F02283A00000A6F3900000A002A00133001001B00000015000011000F01283B00000A0A1200FE16230000016F1300000A0B2B00072A00133001001B00000016000011000F01283B00000A0A1200FE16230000016F1700000A0B2B00072A2202283C00000A002A133001000700000001000011001B0A2B00062A0013300400560000001700001100036F1800000A0A036F1800000A0B036F2F00000A0C1A8D350000010D0916036F3600000A9E0917036F3600000A9E0918036F3600000A9E0919036F3600000A9E06070809733D00000A8C2400000113042B0011042A000013300200510000001800001100030F02283E00000A6F1900000A00030F02283F00000A6F1900000A00030F02284000000A6F3200000A00000F02284100000A0A160B2B120607940C0003086F3900000A00000717580B07068E6932E82A000000133001001500000019000011000F01284200000A0A1200284300000A0B2B00072A00000013300100150000001A000011000F01284200000A0A1200284400000A0B2B00072A2202284500000A002A0000133001000700000001000011001C0A2B00062A0013300100160000000400001100036F4600000A284700000A8C260000010A2B00062A4200030F02284800000A6F4900000A002A0013300100150000001B000011000F01284800000A0A1200284A00000A0B2B00072A00000013300100150000001C000011000F01284800000A0A1200284B00000A0B2B00072A2202284C00000A002A0000133001000700000001000011001D0A2B00062A0013300200180000000400001100031F106F2500000A734D00000A8C270000010A2B00062A4200030F02284E00000A6F2800000A002A000000133001001B0000001D000011000F01284F00000A0A1200FE16280000016F1300000A0B2B00072A00133001001B0000001E000011000F01284F00000A0A1200FE16280000016F1700000A0B2B00072A2202285000000A002A133001000800000001000011001F0B0A2B00062A13300100160000000400001100036F5100000A285200000A8C290000010A2B00062A4200030F02285300000A6F5400000A002A00133001001500000019000011000F01285300000A0A1200284300000A0B2B00072A00000013300100150000001A000011000F01285300000A0A1200284400000A0B2B00072A2202285500000A002A0000133001000700000001000011001E0A2B00062A0013300100160000000400001100036F5600000A285700000A8C2A0000010A2B00062A4200030F02285800000A6F5900000A002A0013300100150000001F000011000F01285800000A0A1200285A00000A0B2B00072A000000133001001500000020000011000F01285800000A0A1200285B00000A0B2B00072A2202285C00000A002A0000133001000800000001000011001F090A2B00062A13300100160000000400001100036F3600000A285D00000A8C2B0000010A2B00062A4200030F02285E00000A6F3900000A002A00133001001500000021000011000F01285E00000A0A1200285F00000A0B2B00072A000000133001001500000022000011000F01285E00000A0A1200286000000A0B2B00072A2202286100000A002A0000133001000800000001000011001F0A0A2B00062A13300100160000000400001100036F6200000A286300000A8C2C0000010A2B00062A4200030F02286400000A6F6500000A002A00133001001500000023000011000F01286400000A0A1200286600000A0B2B00072A000000133001001500000024000011000F01286400000A0A1200286700000A0B2B00072A2202286800000A002A0000133001000800000001000011001F0D0A2B00062A13300100160000000400001100036F6900000A736A00000A8C1A0000010A2B00062A3E000304286B00000A6F6C00000A002A0000133001000D0000000A000011000F01286D00000A0A2B00062A00000013300100120000000C000011000F01286D00000A6F1700000A0A2B00062A2202286E00000A002A00133001000800000001000011001F0C0A2B00062A13300100160000000400001100036F6F00000A287000000A8C2D0000010A2B00062A4200030F02287100000A6F7200000A002A00133001001500000025000011000F01287100000A0A1200287300000A0B2B00072A000000133001001500000026000011000F01287100000A0A1200287400000A0B2B00072A2202287500000A002A0000133001000800000001000011001F0E0A2B00062A13300100160000000400001100036F2200000A737600000A737700000A0A2B00062A660004036F7800000A287900000A737A00000A6F7B00000A002A133001000C0000000A00001100036F7C00000A0A2B00062A13300100110000000C00001100036F7C00000A6F1700000A0A2B00062A2202287D00000A002A0000133001000C0000000D000011000273040000060A2B00062A133001000C0000000D000011000273040000060A2B00062A13300100110000000D00001100028C1A00000173040000060A2B00062A00000013300100110000000D00001100028C1B00000173040000060A2B00062A00000042534A4201000100000000000C00000076322E302E35303732370000000005006C000000D8120000237E0000441300008C08000023537472696E677300000000D01B0000E000000023555300B01C0000100000002347554944000000C01C0000AC05000023426C6F620000000000000002000001571FA2090904000000FA013300160000010000003F00000016000000130000007E00000063000000020000007D0000000F0000001600000026000000110000001A0000001A00000010000000010000000300000001000000000064040100000000000600030345070600960345070600040213070F00650700000600470269050600E60269050600B202690506007D03690506004903690506006203690506007A0269050600330226070600F60126070600950269050600230379080A00E307F2060A005E02F2060600500114050A00E403F2060A00D20074070600EA0714050600DB0145070600BE0113070600180213070A00BB0474070A00090474070A004D0874070600B20558000600E506580006002605140506007C0114050A00BD0374070A00370574070A003B01740706003E0114050A005904740706005C0414050A00F80074070A008F0074070600920014050A00440874070A00460074070A00200074070A00330074070A00310174070A00D102F20606003704140506008805140506000201140506000D0558000600C003140506003A0514050600230014050600FB0014050600490014050600360014050600340114050E00A405A7040E009A05A7040600F5032A080E00D706A7040E00DC0050050E00CD06A704000000004F0000000000010001000901100009088601490001000100010100001F05860179000400120081011000B5078601550014001200810010003B0686015500140014000100100078068601140014001A00810010000100860114001400200001001000BD06860106001400270001001000490686010A0014002D0001001000930686010E0014003300010010001A0686011200140039000100100067068601160014003F0001001000FA0586011A001400450001001000EC0586011E0014004B0001001000AE06860122001400510001001000DD05860126001400570001001000BF0586012A0014005D0001001000CE0586012E00140063000100100057068601320014006900010010000A068601360014006F0001001000860686013A001400750081011000C7078601550014007B0001001E05EB020100C803EF0221009700F20206066400F50256808804EB0256804D08EB0256803705EB025680BD03EB0256803B01EB0256805904EB025680F800EB0256808F00EB0256804600EB0256802000EB0256803300EB0256804408EB0256803101EB0256800904EB025680BB04EB0250200000000083081B05F8020100682000000000860847019E00010090200000000086082C06FD020100AD200000000086180D0702030100EC20000000008608C5030703020004210000000081089004A70002000C2100000000E6099C04A70002002421000000008608D4040B030200442100000000860831041003020064210000000086086C081503020084210000000096087F041A030200A02100000000C60028049E000200C42100000000C600AE07DA000200402200000000C600B000E30003006822000000009600B8011F030300852200000000E6018A0026030400A62200000000E601D5012C030500CC22000000009600A40632030600DC23000000009600660139030700000000000000C60D5A01F8020800000000000000C605D50140030800000000000000C6058A0047030A00000000000000C60528044D030B00000000000000C605B00052030C0002250000000084180D0706000D000C2500000000C6085A01F8020D00202500000000C6008A0047030D00332500000000C600D50140030E00382500000000C60028044D031000502500000000C600B0005203110063250000000086180D07060012006C2500000000C600D50140031200000000000000C405EE0429011400802500000000C60028044D031600A02500000000C401F80431011700C02500000000C600B00052031800000000000000C405DE043701190063250000000084180D0706001A00E02500000000C6085A01F8021A00F42500000000C6008A0047031A002E2600000000C400EE0457031B00402600000000C400F8045F031D00602600000000C400DE0465031E007E260000000086180D0706001F00882600000000C6085A01F8021F009C2600000000C6008A0047031F00BE2600000000C400EE046B032000D02600000000C400F80474032200F42600000000C400DE047B03230015270000000086180D0706002400202700000000C6085A01F8022400342700000000C6008A0047032400562700000000C400EE0482032500682700000000C400F8048B0327008C2700000000C400DE0492032800AD270000000086180D0706002900B82700000000C6085A01F8022900CC2700000000C6008A0047032900F82700000000C400EE0499032A00182800000000C400F804A2032C00402800000000C400DE04A9032D0067280000000086180D0706002E00702800000000C6085A01F8022E00842800000000C6008A0047032E00E82800000000C400EE04B0032F00482900000000C400F804B90331006C2900000000C400DE04C00332008D290000000086180D0706003300982900000000C6085A01F8023300AC2900000000C6008A0047033300CE2900000000C400EE04C7033400E02900000000C400F804D0033600042A00000000C400DE04D7033700252A0000000086180D0706003800302A00000000C6085A01F8023800442A00000000C6008A0047033800682A00000000C400EE04DE0339007C2A00000000C400F804E7033B00A42A00000000C400DE04EE033C00CB2A0000000086180D0706003D00D42A00000000C6085A01F8023D00E82A00000000C6008A0047033D000A2B00000000C400EE04F5033E001C2B00000000C400F804FE034000402B00000000C400DE0405044100612B0000000086180D07060042006C2B00000000C6085A01F8024200802B00000000C6008A0047034200A22B00000000C400EE040C044300B42B00000000C400F80415044500D82B00000000C400DE041C044600F92B0000000086180D0706004700042C00000000C6085A01F8024700182C00000000C6008A00470347003A2C00000000C400EE04230448004C2C00000000C400F8042C044A00702C00000000C400DE0433044B00912C0000000086180D0706004C009C2C00000000C6085A01F8024C00B02C00000000C6008A0047034C00D22C00000000C400EE043A044D00E42C00000000C400F80443044F00082D00000000C400DE044A045000292D0000000086180D0706005100342D00000000C6085A01F8025100482D00000000C6008A00470351006A2D00000000C400EE04510452007C2D00000000C400F80459045400982D00000000C400DE045F045500B62D0000000086180D0706005600C02D00000000C6085A01F8025600D42D00000000C6008A0047035600F62D00000000C400EE0465045700082E00000000C400F8046E0459002C2E00000000C400DE0475045A004D2E0000000086180D0706005B00582E00000000C6085A01F8025B006C2E00000000C6008A0047035B008E2E00000000C400EE047C045C00A82E00000000C400F80484045E00C02E00000000C400DE048A045F00DD2E0000000086180D0706006000E82E000000009600C20490046000002F000000009600140897046100182F00000000960013041F036200382F00000000960057089D04630000000100CF0300000100490400000100CF0300000100110700000100360800000100810100000100810100000100360800000200CF0300000100110700000100CF0300000100CF0300000100110700000100360800000200CF0300000100CF0300000100CF0300000100360800000200CF0300000100360800000200CF0300000100CF0300000100CF0300000100CF0300000100CF0300000100110700000100360800000200CF0300000100CF0300000100CF0300000100110700000100360800000200CF0300000100CF0300000100CF0300000100110700000100360800000200CF0300000100CF0300000100CF0300000100110700000100360800000200CF0300000100CF0300000100CF0300000100110700000100360800000200CF0300000100CF0300000100CF0300000100110700000100360800000200CF0300000100CF0300000100CF0300000100110700000100360800000200CF0300000100CF0300000100CF0300000100110700000100360800000200CF0300000100CF0300000100CF0300000100110700000100360800000200CF0300000100CF0300000100CF0300000100110700000100360800000200CF0300000100CF0300000100CF0300000100110700000100360800000200CF0300000100CF0300000100CF0300000100110700000100360800000200CF0300000100CF0300000100CF0300000100110700000100360800000200CF0300000100CF0300000100CF0300000100110700000100360800000200CF0300000100CF0300000100CF0300000100CF0300000100CF0300000100CF0300000100CF0302004D000200510009000D07010011000D07060019000D070A0029000D07100031000D07100039000D07100041000D07100049000D07100051000D07100059000D07100061000D07150069000D07100071000D07100079000D07060089000D071A00B1000D070600C1000D07200071010D070600A90028049E00A1009C04A700A9007901AB00A900AE07DA00A900B000E300E100B403EC00E900D501F0007901E307FC007901DC07030181010D070901F90014011701A9000D0706008400EE0429018400F80431018400DE043701E10005053D0191013E04430191017B054301E10089074701D900F1074D01D900C5035401E900D50159010C000D0706000101F1075F010101C503EC00990128049E009901B000E30014000D070600E1002B05A7000901F10770010901C503A700E900D5011500A10128049E00A101B000E3001C000D070600E1001600E30011010D0787011101A107E300E900D501010011019307E3001101C503940124000D07060021010D07AA0121014205EC002101C800EC002101D503A70021017800BA012101C503C601290128049E002901B000E3002C000D070600E100ED00D3013101F107D7013101C503D301E900D501DE01B10128049E00B101B000E30034000D07060039010D0759013901380854013901C503F4013C000D070600E1004D04C6014901F10701024901C503C601E900D5010A0244000D070600E1003C0011025101F10715025101C5031102E900D5011C02B90128049E00B901B000E3004C000D0706005901F1072B025901C503E300A90128049E00A901B000E30054000D070600E100290043016101F1073C026101C5034301E900D5014302C10128049E00C101B000E3005C000D070600E100FE039E00D1000D071000D100FD075202E900D5011000D100C5039E0064000D070600E100260158026901F1075C026901C5035802E900D5016302C90128049E00C901B000E3006C000D070600D1010D077202C9000D077902E90005053D01E101BC008002E9010D078602F101B2049002C900C5039E0074000D07060008001400A00208001800A50208001C00AA0208002000AF0208002400B40208002800B90208002C00BE0208003000C30208003400C80208003800CD0208003C00D20208004000D70208004400DC0208004800E10208004C00E6022E000B00CE042E001300D7042E001B00F6042E002300FF042E002B001F052E0033001F052E003B001F052E004300FF042E004B0025052E0053001F052E005B001F052E0063003D052E006B0067052E007300A50243007B007D0561008300A50261008B007405C0008300A502600F9300A502800F9300A502A00F9300A502C00F9300A50293009800A200B000B400B800BD00C200C700CE00D200DF00E700F5000F0166016B0177017C0181018D019A01A101B301BF01CC01E301E801ED01FA01210226023202370248024D0268026D020200010005000B0006000C0008000D0009000E000A000F000B0010000C0011000D0012000E0013000F001400100015001100160012001700130018001400190015001A0000001F05A40400007C01A90400003E06AD040000C903B20400009F04B6040000A004B6040000D804BA0400003504BF0400007008C4040000A204C90400005E01A40400005E01A40400005E01A40400005E01A40400005E01A40400005E01A40400005E01A40400005E01A40400005E01A40400005E01A40400005E01A40400005E01A40400005E01A40400005E01A40400005E01A40400005E01A404020001000300020002000500020003000700020005000900020006000B00020007000D00020008000F0002000900110002000A00130002000B00150002001400170002001A001900020027001B0002002D001D00020033001F0002003900210002003F00230002004500250002004B002700020051002900020057002B0002005D002D00020063002F0002006900310002006F00330002007500350026002D0035003D0045004D0055005D0065006D0075007D0084008C001F012201048000000100000000000000000000000000A1010000020000000000000000000000970281000000000002000000000000000000000097026C00000000000200000000000000000000009702A70400000000000000000E006200000000547970656453716C5479706548656C70657260310052656164496E7433320053716C496E7433320052656164496E7436340053716C496E7436340052656164496E7431360053716C496E743136003C4D6F64756C653E0053797374656D2E494F00540076616C75655F5F0053797374656D2E44617461006765745F44617461006D73636F726C696200526561640053716C47756964003C5F49734E756C6C3E6B5F5F4261636B696E674669656C640047657448617368436F6465006765745F556E69636F6465006765745F5363616C6500494E756C6C61626C650049586D6C53657269616C697A61626C650052656164446F75626C650053716C446F75626C650052756E74696D655479706548616E646C65004765745479706546726F6D48616E646C65005265616453696E676C650053716C53696E676C650053716C4461746554696D65006765745F547970650056616C756554797065006765745F53716C547970650047657453716C5479706546726F6D5479706500476574547970650074797065005078746C43612E53716C436F6C6C656374696F6E732E436F7265005078746C43612E42696756617269616E742E436F726500506172736500446562756767657242726F777361626C65537461746500577269746500436F6D70696C657247656E65726174656441747472696275746500477569644174747269627574650044656275676761626C6541747472696275746500446562756767657242726F777361626C6541747472696275746500436F6D56697369626C6541747472696275746500417373656D626C795469746C654174747269627574650053716C55736572446566696E65645479706541747472696275746500417373656D626C7954726164656D61726B41747472696275746500417373656D626C7946696C6556657273696F6E41747472696275746500417373656D626C79436F6E66696775726174696F6E4174747269627574650053716C46756E6374696F6E41747472696275746500417373656D626C794465736372697074696F6E41747472696275746500436F6D70696C6174696F6E52656C61786174696F6E7341747472696275746500416C6C6F775061727469616C6C795472757374656443616C6C65727341747472696275746500417373656D626C7950726F6475637441747472696275746500417373656D626C79436F7079726967687441747472696275746500417373656D626C79436F6D70616E794174747269627574650052756E74696D65436F6D7061746962696C6974794174747269627574650052656164427974650053716C42797465006765745F56616C75650076616C7565006765745F4973506F736974697665004942696E61727953657269616C697A6500456E636F64696E670052656164537472696E670053716C537472696E670042696756617269616E7446726F6D537472696E6700546F537472696E67006765745F4173537472696E67006765745F4C656E677468006F626A0052656164446563696D616C0053716C446563696D616C005078746C43612E42696756617269616E742E436F72652E646C6C006765745F4E756C6C0053716C4E756C6C006765745F5F49734E756C6C006765745F49734E756C6C0053797374656D2E586D6C005772697465586D6C0053716C586D6C0042696756617269616E7446726F6D586D6C006765745F4173586D6C0047657448617368436F6465496D706C005772697465496D706C00546F537472696E67496D706C006765745F4261736553747265616D0053797374656D006765745F53716C54797065456E756D0052656164426F6F6C65616E0053716C426F6F6C65616E006765745F507265636973696F6E0053797374656D2E586D6C2E53657269616C697A6174696F6E0053797374656D2E5265666C656374696F6E006765745F506F736974696F6E00417267756D656E74457863657074696F6E00586D6C52656164657200586D6C546578745265616465720042696E6172795265616465720053716C496E74333248656C7065720053716C496E74363448656C7065720053716C496E74313648656C7065720053716C4775696448656C7065720053716C446F75626C6548656C7065720053716C53696E676C6548656C7065720053716C4461746554696D6548656C706572006765745F5479706548656C7065720053716C5479706548656C7065720053716C4279746548656C7065720053716C537472696E6748656C7065720053716C446563696D616C48656C7065720053716C4E756C6C48656C7065720053716C586D6C48656C7065720053716C426F6F6C65616E48656C7065720047657448656C7065720053716C4D6F6E657948656C7065720053716C42696E61727948656C70657200586D6C57726974657200586D6C546578745772697465720042696E617279577269746572004D6963726F736F66742E53716C5365727665722E536572766572002E63746F720053797374656D2E446961676E6F73746963730053797374656D2E52756E74696D652E496E7465726F7053657276696365730053797374656D2E52756E74696D652E436F6D70696C6572536572766963657300446562756767696E674D6F6465730053797374656D2E446174612E53716C547970657300526561644279746573006765745F54696D655469636B73006765745F4461795469636B7300457175616C730053716C54797065457874656E73696F6E730055736572446566696E656446756E6374696F6E7300436F6E63617400466F726D6174004F626A656374006F705F496D706C69636974006F705F4578706C696369740042696756617269616E740042696756617269616E7446726F6D56617269616E740053797374656D2E54657874007700546F4279746541727261790053716C4D6F6E65790053716C42696E6172790042696756617269616E7446726F6D42696E617279006765745F417342696E6172790053797374656D2E53656375726974790000000000537B0030007D00200068006100730020006E006F0020006300610073006500200074006F002000680061006E0064006C006500200074006800650020007B0031007D002000760061006C00750065003A0020000013470065007400480065006C007000650072000017530071006C00540079007000650045006E0075006D000009740079007000650000474E006F007400200061002000760061006C00690064002000530051004C0020007400790070006500200066006F0072002000420069006700560061007200690061006E00740000094E0055004C004C00000000009D9D461FEFB93E498D71D15A7D46DD3D00042001010803200001052001011111042001010E042001010205200101114105200101115D0615121C01116D0715121C011180810715121C011180850715121C011180890715121C011180910715121C011180990715121C0111809D0715121C011180A50715121C011180A90715121C011180AD0715121C011180B10615121C0111690715121C011180B50615121C011265040701110C050702110C0E0320000E040701121403200002042000127D0307011C0307010204070112650407011169040701116D060702110811080307010E0707040202021108042001021C03070108032000080407011108032000050420010105060702110C12140600030E0E1C1C0500020E0E0E052002010E0E070703110C02110C070001127D1180C50213000615121C01130007200201127513000520010E13000520010813000520001280C90320000A0520011D0508060001116D1D050420001D05052001011D0506000111808105040702050E040702050806000111808502040702020E040702020805070308081C05200201080806070211808D0E05200011808D06070211808D080807050505021D081C082004010505021D080607031D0808080420001D080607021180950E052000118095060702118095080320000D0600011180990D042001010D0407020D0E0407020D080607021180A10E0520001180A10607021180A1080800011180A511809506200101118095032000060600011180A9060420010106040702060E04070206080600011180AD08040702080E04070208080600011180B10A042001010A0407020A0E0407020A080500010E11690320000C0600011180B50C042001010C0407020C0E0407020C08062001011280C9062001011280ED0500001280F1092002011280C91280F1062001011280FD08B77A5C561934E0890400000000040100000004020000000403000000040400000004050000000406000000040700000004080000000409000000040A000000040B000000040C000000040D000000040E0000000306110C02061C020602020608042000110C0420001214042001011C0320001C04200012650420001169042000116D0400001108060001110811690520010112710520010112750600011214110C060001110C127D0620020112751C0520011C12710420010E1C042001081C072002011275116D0520010E116D05200108116D0820020112751180810620010E118081062001081180810820020112751180850620010E118085062001081180850820020112751180890620010E118089062001081180890820020112751180910620010E118091062001081180910820020112751180990620010E1180990620010811809908200201127511809D0620010E11809D0620010811809D0820020112751180A50620010E1180A5062001081180A50820020112751180A90620010E1180A9062001081180A90820020112751180AD0620010E1180AD062001081180AD0820020112751180B10620010E1180B1062001081180B107200201127511690520010E11690520010811690820020112751180B50620010E1180B5062001081180B507200201127512650520010E12650520010812650600011108126505000111081C0600011108116D042800110C0328000E04280012140328001C0328000204280012650428001169042800116D04080011080801000800000000001E01000100540216577261704E6F6E457863657074696F6E5468726F7773010801000701000000001F01001A5078746C43612E53716C436F6C6C656374696F6E732E436F7265000005010000000017010012436F7079726967687420C2A920203230313600002901002436303334336138362D323061392D346137342D626237662D66623361343630333163343000000C010007312E302E302E3000000801000000000000002B010002000000020054020D497346697865644C656E6774680054080B4D61784279746553697A65FFFFFFFF000000000000002E51035700000000020000001C010000E0510000E033000052534453B852DA554A76054A84B8B286CD9CF4F101000000433A5C55736572735C4D617274696E5C44726F70626F785C50726F6A656374735C4769744875625C42696756617269616E745C5078746C43612E42696756617269616E742E436F72655C6F626A5C44656275675C5078746C43612E42696756617269616E742E436F72652E7064620000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002453000000000000000000003E53000000200000000000000000000000000000000000000000000030530000000000000000000000005F436F72446C6C4D61696E006D73636F7265652E646C6C0000000000FF250020001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001001000000018000080000000000000000000000000000001000100000030000080000000000000000000000000000001000000000048000000586000009C03000000000000000000009C0334000000560053005F00560045005200530049004F004E005F0049004E0046004F0000000000BD04EFFE00000100000001000000000000000100000000003F000000000000000400000002000000000000000000000000000000440000000100560061007200460069006C00650049006E0066006F00000000002400040000005400720061006E0073006C006100740069006F006E00000000000000B004FC020000010053007400720069006E006700460069006C00650049006E0066006F000000D802000001003000300030003000300034006200300000001A000100010043006F006D006D0065006E007400730000000000000022000100010043006F006D00700061006E0079004E0061006D00650000000000000000005E001B000100460069006C0065004400650073006300720069007000740069006F006E00000000005000780074006C00430061002E00530071006C0043006F006C006C0065006300740069006F006E0073002E0043006F007200650000000000300008000100460069006C006500560065007200730069006F006E000000000031002E0030002E0030002E003000000056001B00010049006E007400650072006E0061006C004E0061006D00650000005000780074006C00430061002E00420069006700560061007200690061006E0074002E0043006F00720065002E0064006C006C00000000004800120001004C006500670061006C0043006F007000790072006900670068007400000043006F0070007900720069006700680074002000A90020002000320030003100360000002A00010001004C006500670061006C00540072006100640065006D00610072006B00730000000000000000005E001B0001004F0072006900670069006E0061006C00460069006C0065006E0061006D00650000005000780074006C00430061002E00420069006700560061007200690061006E0074002E0043006F00720065002E0064006C006C000000000056001B000100500072006F0064007500630074004E0061006D006500000000005000780074006C00430061002E00530071006C0043006F006C006C0065006300740069006F006E0073002E0043006F007200650000000000340008000100500072006F006400750063007400560065007200730069006F006E00000031002E0030002E0030002E003000000038000800010041007300730065006D0062006C0079002000560065007200730069006F006E00000031002E0030002E0030002E0030000000000000000000000000000000005000000C000000503300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
WITH PERMISSION_SET = SAFE

GO
