﻿/*
Deployment script for PxtlCa.BigVariant.Database

This code was generated by a tool.
Changes to this file may cause incorrect behavior and will be lost if
the code is regenerated.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "PxtlCa.BigVariant.Database"
:setvar DefaultFilePrefix "PxtlCa.BigVariant.Database"
:setvar DefaultDataPath "C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\"
:setvar DefaultLogPath "C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\"

GO
:on error exit
GO
/*
Detect SQLCMD mode and disable script execution if SQLCMD mode is not supported.
To re-enable the script after enabling SQLCMD mode, execute the following:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'SQLCMD mode must be enabled to successfully execute this script.';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO
PRINT N'Altering [PxtlCa.BigVariant.Core]...';


GO
ALTER ASSEMBLY [PxtlCa.BigVariant.Core]
    DROP FILE ALL;


GO
ALTER ASSEMBLY [PxtlCa.BigVariant.Core]
    FROM 0x4D5A90000300000004000000FFFF0000B800000000000000400000000000000000000000000000000000000000000000000000000000000000000000800000000E1FBA0E00B409CD21B8014CCD21546869732070726F6772616D2063616E6E6F742062652072756E20696E20444F53206D6F64652E0D0D0A2400000000000000504500004C010300272D03570000000000000000E00022200B013000002400000006000000000000EE43000000200000006000000000001000200000000200000400000000000000040000000000000000A0000000020000000000000300408500001000001000000000100000100000000000001000000000000000000000009C4300004F00000000600000F803000000000000000000000000000000000000008000000C000000644200001C0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000080000000000000000000000082000004800000000000000000000002E74657874000000F4230000002000000024000000020000000000000000000000000000200000602E72737263000000F8030000006000000004000000260000000000000000000000000000400000402E72656C6F6300000C0000000080000000020000002A00000000000000000000000000004000004200000000000000000000000000000000D0430000000000004800000002000500482900001C1900000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000133001000C0000000100001100027B010000040A2B00062A133001001A00000002000011000228010000060A1200FE16030000026F1300000A0B2B00072A00001330010011000000030000110002280100000628110000060A2B00062AF20002037D0200000402032C180375140000012C0D0374140000016F1400000A2B01162B01177D0300000402036F1500000A28120000067D010000042A0000133001000C0000000400001100027B020000040A2B00062A1E027B030000042A133001000C00000005000011000228060000060A2B00062A1330010011000000060000110002280500000674190000010A2B00062A00000013300100110000000700001100022805000006A51A0000010A2B00062A000000133001000F00000008000011001200FE1502000002060B2B00072A00133002001700000009000011000228030000060228050000066F160000060A2B00062A00133002006D0000000A000011000228070000062C1E032C180375140000012C0D0374140000016F1400000A2B01162B01172B01160A062C0500170B2B3A03750200000214FE030C082C1D0003A5020000020D022805000006120328050000066F1600000A0B2B1000022805000006036F1600000A0B2B00072A000000133001001C0000000B000011000228070000062D0D0228050000066F1700000A2B01160A2B00062A13300100110000000C00001100028C1A00000173040000060A2B00062A820002036F1800000A7D0100000402022803000006036F150000067D020000042A8E0003022801000006D26F1900000A00022803000006030228050000066F14000006002A000013300300B50000000D00001100020A064504000000290000003100000069000000390000002B00061F0A5945070000001A000000220000002A0000004200000042000000320000003A0000002B40731C0000060B2B6973260000060B2B61732B0000060B2B5973300000060B2B5173350000060B2B49733A0000060B2B41733F0000060B2B3973440000060B2B31720100007072550000707269000070281A00000A0F00FE16030000026F1300000A281B00000A7281000070731C00000A7A072A00000013300200420100000E0000110002D01F000001281D00000A3B1001000002D028000001281D00000A3BFD00000002D020000001281D00000A3BEA00000002D029000001281D00000A3BD700000002D02A000001281D00000A3BC400000002D02B000001281D00000A3BB100000002D02C000001281D00000A3B9E00000002D02D000001281D00000A3B8B00000002D02E000001281D00000A2E7A02D021000001281D00000A2E6902D022000001281D00000A2E5802D023000001281D00000A2E4702D02F000001281D00000A2E3602D030000001281D00000A2E2502D01A000001281D00000A2E1402D019000001281D00000A2E03162B021F102B021F0F2B021F0E2B021F0D2B021F0C2B021F0B2B021F0A2B021F092B011E2B011D2B011C2B011B2B011A2B01192B01182B01170A0616FE010B072C1100728B0000707281000070731C00000A7A060C2B00082A2202281E00000A002A0013300100070000000100001100160A2B00062A0013300100070000000400001100140A2B00062A0A002A0000133001000B000000090000110072D30000700A2B00062A22022817000006002A4200020304A50800001B6F1F00000A002A000000133002001200000009000011000203A50800001B6F2000000A0A2B00062A0000133001001300000009000011000F01FE160800001B6F1300000A0A2B00062A0013300100070000000100001100170A2B00062A001330030024000000040000110003036F2100000A6F2200000A036F2100000A6F2300000A59696F2400000A0A2B00062A4200030F02282500000A6F2600000A002A000000133002002200000009000011000F01282500000A6F1300000A02281500000A6F2700000A281B00000A0A2B00062A2202282800000A002A0013300100070000000100001100190A2B00062A0013300100160000000400001100036F1800000A282900000A8C200000010A2B00062A4200030F02282A00000A6F1900000A002A0013300200250000000F000011000F01282A00000A0A1200282B00000A02281500000A6F2700000A281B00000A0B2B00072A2202282C00000A002A0000133001000800000001000011001F0A0A2B00062A13300100160000000400001100036F2D00000A282E00000A8C210000010A2B00062A4200030F02282F00000A6F3000000A002A00133002002500000010000011000F01282F00000A0A1200283100000A02281500000A6F2700000A281B00000A0B2B00072A2202283200000A002A0000133001000800000001000011001F0B0A2B00062A13300100160000000400001100036F3300000A283400000A8C220000010A2B00062A4200030F02283500000A6F3600000A002A00133002002500000011000011000F01283500000A0A1200283700000A02281500000A6F2700000A281B00000A0B2B00072A2202283800000A002A0000133001000800000001000011001F0C0A2B00062A13300100160000000400001100036F3900000A283A00000A8C230000010A2B00062A4200030F02283B00000A6F3C00000A002A00133002002500000012000011000F01283B00000A0A1200283D00000A02281500000A6F2700000A281B00000A0B2B00072A2202283E00000A002A0000133001000800000001000011001F0F0A2B00062A13300100160000000400001100036F3F00000A734000000A8C1A0000010A2B00062A3E000304284100000A6F4200000A002A0000133002001D00000009000011000F01284300000A02281500000A6F2700000A281B00000A0A2B00062A2202284400000A002A0000133001000800000001000011001F100A2B00062A13300100160000000400001100036F2100000A734500000A734600000A0A2B00062A660004036F4700000A284800000A734900000A6F4A00000A002A133001000C0000000900001100036F4B00000A0A2B00062A2202284C00000A002A000000133001000C0000000C000011000273040000060A2B00062A133001000C0000000C000011000273040000060A2B00062A13300100110000000C00001100028C1A00000173040000060A2B00062A00000042534A4201000100000000000C00000076322E302E35303732370000000005006C000000840C0000237E0000F00C00008407000023537472696E67730000000074140000E0000000235553005415000010000000234755494400000064150000B803000023426C6F620000000000000002000001571FA2090904000000FA013300160000010000003C0000000F000000150000004700000034000000020000004C0000001100000015000000120000000A000000120000001200000009000000010000000300000001000000000029040100000000000600E30276060600760376060600E40144060F00960600000600270200050600C602000506009202000506005D03000506002903000506004203000506005A0200050600130257060600D60157060600750200050600030373070A000B0723060A003E02230606003001C9040A00B50323060A00BF00A50606001207C9040600BB01760606009E0144060600F80144060A008004A5060A00DA03A5060600540558000600160658000600D704C90406005C01C9040A006907A5060A009D03A5060A004600A5060A002000A5060A003300A5060A00B102230606000804C90406001F05C9040600E400C9040A00DC04A5060A00C406A5060A00FB06A5060A001B01A5060A001E04A5060A00DA00A5060A008600A5060A006007A5060A000801A5060600C20458000600310500050600A003C90406004900C90406002300C90406003600C9040E0046056C040E003C056C040600C60352070E0008066C040E00C900E7040E00FE056C04000000004F000000000001000100090110003107660149000100010001010000D004660175000400110081011000D4066601550016001100810010009D05660155001600130001001000C90566011400160018008100100001006601140016001D0001001000EE05660106001600220001001000AB0566010A0016002700010010007F0566010E0016002C000100100061056601120016003100010010007005660116001600360001001000B90566011A0016003B0001001000D70566011E001600400081011000E606660155001600450001003D01DC010100A803E00121008E00E30106066400E60156804D04DC0156806907DC015680DC04DC0156809D03DC015680C406DC015680FB06DC0156801B01DC0156801E04DC015680DA00DC0156808600DC0156804600DC0156802000DC0156803300DC0156806007DC0156800801DC015680DA03DC0156808004DC0150200000000083083A01E9010100682000000000860827016600010090200000000086088E05EE010100AD200000000086183E06F3010100EC20000000008608A503F8010200042100000000810855046F0002000C2100000000E60961046F00020024210000000086089904FC01020044210000000086080204010202006421000000009608440406020200802100000000C600F90366000200A42100000000C600CD069D000200202200000000C600A700A6000300482200000000960098010B020300652200000000E601810012020400862200000000E601B50118020500AC22000000009600E4051E0206007023000000009600460125020700000000000000C60D3A01E9010800000000000000C605B5012C020800000000000000C605810033020A00000000000000C605F90339020B00BE240000000084183E0606000C00C82400000000C6083A01E9010C00DC2400000000C600810033020C00EF2400000000C600B5012C020D00F42400000000C600F90339020F000B250000000086183E0606001000142500000000C600B5012C021000000000000000C405A304EC001200282500000000C600F90339021400482500000000C401AD04F40015000B250000000084183E0606001600682500000000C6083A01E90116007C2500000000C600810033021600AC2500000000C400A3043E021700C02500000000C400AD0446021900EE250000000086183E0606001A00F82500000000C6083A01E9011A000C2600000000C600810033021A002E2600000000C400A3044C021B00402600000000C400AD0455021D0071260000000086183E0606001E007C2600000000C6083A01E9011E00902600000000C600810033021E00B22600000000C400A3045C021F00C42600000000C400AD0465022100F5260000000086183E0606002200002700000000C6083A01E9012200142700000000C600810033022200362700000000C400A3046C022300482700000000C400AD047502250079270000000086183E0606002600842700000000C6083A01E9012600982700000000C600810033022600BA2700000000C400A3047C022700CC2700000000C400AD0485022900FD270000000086183E0606002A00082800000000C6083A01E9012A001C2800000000C600810033022A003E2800000000C400A3048C022B00502800000000C400AD0494022D0079280000000086183E0606002E00842800000000C6083A01E9012E00982800000000C600810033022E00BA2800000000C400A3049A022F00D42800000000C400AD04A2023100EC280000000086183E0606003200F8280000000096008704A802320010290000000096003C07AF0233002829000000009600E4030B02340000000100AF03000001001A0400000100AF03000001004206000001005E07000001006101000001006101000001005E0700000200AF0300000100420600000100AF03000001004206000001005E0700000200AF0300000100AF03000001005E0700000200AF03000001005E0700000200AF0300000100AF0300000100AF03000001004206000001005E0700000200AF0300000100AF03000001004206000001005E0700000200AF0300000100AF03000001004206000001005E0700000200AF0300000100AF03000001004206000001005E0700000200AF0300000100AF03000001004206000001005E0700000200AF0300000100AF03000001004206000001005E0700000200AF0300000100AF03000001004206000001005E0700000200AF0300000100AF0300000100AF0300000100AF0300000100AF0302004D000200510009003E06010011003E06060019003E060A0029003E06100031003E06100039003E06100041003E06100049003E06100051003E06100059003E06100061003E06150069003E06100071003E06100079003E06060089003E061A00B1003E060600C1003E06200021013E060600A900F9036600A10061046F00A90059017300A900CD069D00A900A700A600D9009403AF00E100B501B30029010B07BF0029010407C60031013E06CC00F100F600DA00A9003E0606004C00A304EC004C00AD04F400D900BA04FA0089010F040001890112050001D900BA060401F900A5030A01E100B5010F019101120166000C003E0606000101190715010101A503AF009901F903660014003E060600D9003C0021010901190725010901A5032101E100B5012C01A101F90366001C003E060600D9001600A6001101190736011101A503A600E100B5010100A901F903660024003E060600D900290000011901190742011901A5030001E100B5014901B101F90366002C003E060600D900CF036600D1003E061000D10025075301E100B5011000D100A503660034003E060600B9013E065901C9003E066001E100BA04FA00C901B3006701D1013E066D01D90177047701C900A50366003C003E060600080014008701080018008C0108001C009101080020009601080024009B0108002800A00108002C00A50108003000AA0108003400AF0108003800B40108003C00B90108004000BE0108004400C30108004800C80108004C00CD0108005000D20108005400D7012E000B00DA022E001300E3022E001B0002032E0023000B032E002B002B032E0033002B032E003B002B032E0043000B032E004B0031032E0053002B032E005B002B032E00630049032E006B0073032E0073008C0143007B008903610083008C0161008B008003C00083008C01A00893008C01C00893008C01E00893008C015B0060006A0078007C00800085008A0091009500A200AA00B800D2001C0131013D014E010200010005000A0006000B0008000C0009000D000A000E000B000F000C0010000D0011000E00120000003E01B50200005C01BA020000A005BE020000A903C30200006404C70200006504C70200009D04CB0200000604D00200006704D50200003E01B50200003E01B50200003E01B50200003E01B50200003E01B50200003E01B50200003E01B50200003E01B50200003E01B502020001000300020002000500020003000700020005000900020006000B00020007000D00020008000F0002000900110002000A001300020013001500020018001700020022001900020027001B0002002C001D00020031001F0002003600210002003B00230002004000250026002D0035003D0045004D005400E200E500048000000100000000000000000000000000810100000200000000000000000000007E017800000000000200000000000000000000007E016C00000000000200000000000000000000007E016C0400000000000000000E0062000000000000547970656453716C5479706548656C70657260310052656164496E7433320053716C496E7433320052656164496E7436340053716C496E7436340052656164496E7431360053716C496E743136003C4D6F64756C653E0053797374656D2E494F00540076616C75655F5F0053797374656D2E44617461006D73636F726C696200526561640053716C47756964003C5F49734E756C6C3E6B5F5F4261636B696E674669656C640047657448617368436F6465006765745F556E69636F646500494E756C6C61626C650049586D6C53657269616C697A61626C650053716C446F75626C650052756E74696D655479706548616E646C65004765745479706546726F6D48616E646C650053716C53696E676C65006765745F4E616D650053716C4461746554696D65006765745F547970650056616C756554797065006765745F53716C547970650047657453716C5479706546726F6D5479706500476574547970650074797065005078746C43612E53716C436F6C6C656374696F6E732E436F7265005078746C43612E42696756617269616E742E436F726500506172736500446562756767657242726F777361626C65537461746500577269746500436F6D70696C657247656E65726174656441747472696275746500477569644174747269627574650044656275676761626C6541747472696275746500446562756767657242726F777361626C6541747472696275746500436F6D56697369626C6541747472696275746500417373656D626C795469746C654174747269627574650053716C55736572446566696E65645479706541747472696275746500417373656D626C7954726164656D61726B41747472696275746500417373656D626C7946696C6556657273696F6E41747472696275746500417373656D626C79436F6E66696775726174696F6E4174747269627574650053716C46756E6374696F6E41747472696275746500417373656D626C794465736372697074696F6E41747472696275746500436F6D70696C6174696F6E52656C61786174696F6E7341747472696275746500416C6C6F775061727469616C6C795472757374656443616C6C65727341747472696275746500417373656D626C7950726F6475637441747472696275746500417373656D626C79436F7079726967687441747472696275746500417373656D626C79436F6D70616E794174747269627574650052756E74696D65436F6D7061746962696C6974794174747269627574650052656164427974650053716C42797465006765745F56616C75650076616C7565004942696E61727953657269616C697A6500456E636F64696E670052656164537472696E670053716C537472696E670042696756617269616E7446726F6D537472696E6700546F537472696E67006765745F4173537472696E67006765745F4C656E677468006F626A0053716C446563696D616C005078746C43612E42696756617269616E742E436F72652E646C6C006765745F4E756C6C0053716C4E756C6C006765745F5F49734E756C6C006765745F49734E756C6C0053797374656D2E586D6C005772697465586D6C0053716C586D6C0042696756617269616E7446726F6D586D6C006765745F4173586D6C005772697465496D706C00546F537472696E67496D706C006765745F4261736553747265616D0053797374656D0053716C54797065456E756D0053716C426F6F6C65616E0053797374656D2E586D6C2E53657269616C697A6174696F6E0053797374656D2E5265666C656374696F6E006765745F506F736974696F6E00417267756D656E74457863657074696F6E004D656D626572496E666F00586D6C52656164657200586D6C546578745265616465720042696E6172795265616465720053716C496E74333248656C7065720053716C496E74363448656C7065720053716C496E74313648656C706572006765745F5479706548656C7065720053716C5479706548656C7065720053716C4279746548656C7065720053716C537472696E6748656C7065720053716C4E756C6C48656C7065720053716C586D6C48656C7065720047657448656C7065720053716C42696E61727948656C70657200586D6C57726974657200586D6C546578745772697465720042696E617279577269746572004D6963726F736F66742E53716C5365727665722E536572766572002E63746F720053797374656D2E446961676E6F73746963730053797374656D2E52756E74696D652E496E7465726F7053657276696365730053797374656D2E52756E74696D652E436F6D70696C6572536572766963657300446562756767696E674D6F6465730053797374656D2E446174612E53716C5479706573005265616442797465730053716C427974657300457175616C730053716C54797065457874656E73696F6E730055736572446566696E656446756E6374696F6E730053716C436861727300436F6E63617400466F726D6174004F626A656374006F705F496D706C69636974006F705F4578706C696369740042696756617269616E740042696756617269616E7446726F6D56617269616E740053797374656D2E5465787400770053716C4D6F6E65790053716C42696E6172790053797374656D2E5365637572697479000000537B0030007D00200068006100730020006E006F0020006300610073006500200074006F002000680061006E0064006C006500200074006800650020007B0031007D002000760061006C00750065003A0020000013470065007400480065006C007000650072000017530071006C00540079007000650045006E0075006D000009740079007000650000474E006F007400200061002000760061006C00690064002000530051004C0020007400790070006500200066006F0072002000420069006700560061007200690061006E00740000094E0055004C004C0000000000EC4509363297DD48A6791DB8BE93728600042001010803200001052001011111042001010E042001010205200101114105200101115D0615121C01117D0715121C011180810715121C011180850715121C011180890715121C0111808D0615121C0111690615121C011265040701110C050702110C0E0320000E04070112140320000204200012790307011C0307010204070112650407011169060702110811080307010E0707040202021108042001021C03070108032000080407011108032000050420010105060702110C12140600030E0E1C1C0500020E0E0E052002010E0E070703110C02110C070001127911809D0213000615121C01130007200201127113000520010E13000520001280C50320000A0520011D05080420001D05052001011D0506000111808105040702050E03200006060001118085060420010106040702060E06000111808908040702080E06000111808D0A042001010A0407020A0E0500010E1169062001011280C5062001011280E10500001280E5092002011280C51280E5062001011280F108B77A5C561934E0890400000000040100000004020000000403000000040400000004050000000406000000040700000004080000000409000000040A000000040B000000040C000000040D000000040E000000040F00000004100000000306110C02061C020602020608042000110C0420001214042001011C0320001C0420001265042000116904000011080600011108116905200101126D0520010112710600011214110C060001110C12790620020112711C0520011C126D0420010E1C072002011271117D0520010E117D0820020112711180810620010E1180810820020112711180850620010E1180850820020112711180890620010E11808908200201127111808D0620010E11808D07200201127111690520010E116907200201127112650520010E12650600011108126505000111081C042800110C0328000E04280012140328001C032800020428001265042800116904080011080801000800000000001E01000100540216577261704E6F6E457863657074696F6E5468726F7773010801000701000000001F01001A5078746C43612E53716C436F6C6C656374696F6E732E436F7265000005010000000017010012436F7079726967687420C2A920203230313600002901002436303334336138362D323061392D346137342D626237662D66623361343630333163343000000C010007312E302E302E3000000801000000000000002B010002000000020054020D497346697865644C656E6774680054080B4D61784279746553697A65FFFFFFFF00000000000000272D035700000000020000001C010000804200008024000052534453C7D9230490087343861A7E544E538F8601000000433A5C55736572735C4D617274696E5C44726F70626F785C50726F6A656374735C4769744875625C42696756617269616E745C5078746C43612E42696756617269616E742E436F72655C6F626A5C44656275675C5078746C43612E42696756617269616E742E436F72652E706462000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000C44300000000000000000000DE430000002000000000000000000000000000000000000000000000D0430000000000000000000000005F436F72446C6C4D61696E006D73636F7265652E646C6C0000000000FF2500200010000000000000000000000000000000000000000000000000000001001000000018000080000000000000000000000000000001000100000030000080000000000000000000000000000001000000000048000000586000009C03000000000000000000009C0334000000560053005F00560045005200530049004F004E005F0049004E0046004F0000000000BD04EFFE00000100000001000000000000000100000000003F000000000000000400000002000000000000000000000000000000440000000100560061007200460069006C00650049006E0066006F00000000002400040000005400720061006E0073006C006100740069006F006E00000000000000B004FC020000010053007400720069006E006700460069006C00650049006E0066006F000000D802000001003000300030003000300034006200300000001A000100010043006F006D006D0065006E007400730000000000000022000100010043006F006D00700061006E0079004E0061006D00650000000000000000005E001B000100460069006C0065004400650073006300720069007000740069006F006E00000000005000780074006C00430061002E00530071006C0043006F006C006C0065006300740069006F006E0073002E0043006F007200650000000000300008000100460069006C006500560065007200730069006F006E000000000031002E0030002E0030002E003000000056001B00010049006E007400650072006E0061006C004E0061006D00650000005000780074006C00430061002E00420069006700560061007200690061006E0074002E0043006F00720065002E0064006C006C00000000004800120001004C006500670061006C0043006F007000790072006900670068007400000043006F0070007900720069006700680074002000A90020002000320030003100360000002A00010001004C006500670061006C00540072006100640065006D00610072006B00730000000000000000005E001B0001004F0072006900670069006E0061006C00460069006C0065006E0061006D00650000005000780074006C00430061002E00420069006700560061007200690061006E0074002E0043006F00720065002E0064006C006C000000000056001B000100500072006F0064007500630074004E0061006D006500000000005000780074006C00430061002E00530071006C0043006F006C006C0065006300740069006F006E0073002E0043006F007200650000000000340008000100500072006F006400750063007400560065007200730069006F006E00000031002E0030002E0030002E003000000038000800010041007300730065006D0062006C0079002000560065007200730069006F006E00000031002E0030002E0030002E0030000000000000000000000000000000004000000C000000F03300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;


GO
PRINT N'Update complete.';


GO
