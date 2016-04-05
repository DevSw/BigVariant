﻿/*
Deployment script for PxtlCa.SqlCollections.Database

This code was generated by a tool.
Changes to this file may cause incorrect behavior and will be lost if
the code is regenerated.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "PxtlCa.SqlCollections.Database"
:setvar DefaultFilePrefix "PxtlCa.SqlCollections.Database"
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
PRINT N'Altering [PxtlCa.SqlCollections.Core]...';


GO
ALTER ASSEMBLY [PxtlCa.SqlCollections.Core]
    DROP FILE ALL;


GO
ALTER ASSEMBLY [PxtlCa.SqlCollections.Core]
    FROM 0x4D5A90000300000004000000FFFF0000B800000000000000400000000000000000000000000000000000000000000000000000000000000000000000800000000E1FBA0E00B409CD21B8014CCD21546869732070726F6772616D2063616E6E6F742062652072756E20696E20444F53206D6F64652E0D0D0A2400000000000000504500004C0103004D8F01570000000000000000E00022200B0130000022000000080000000000008640000000200000006000000000001000200000000200000400000000000000040000000000000000A000000002000000000000030040850000100000100000000010000010000000000000100000000000000000000000344000004F000000006000000804000000000000000000000000000000000000008000000C000000FC3E00001C0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000080000000000000000000000082000004800000000000000000000002E746578740000008C200000002000000022000000020000000000000000000000000000200000602E7273726300000008040000006000000006000000240000000000000000000000000000400000402E72656C6F6300000C0000000080000000020000002A0000000000000000000000000000400000420000000000000000000000000000000068400000000000004800000002000500B02700004C1700000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000133001000C0000000100001100027B010000040A2B00062A133001001A00000002000011000228010000060A1200FE16030000026F1300000A0B2B00072A00001330010011000000030000110002280100000628110000060A2B00062ABA0002037D0200000402032C0A037E1400000AFE012B01177D0300000402036F1500000A28120000067D010000042A133001000C0000000400001100027B020000040A2B00062A1E027B030000042A133001000C00000005000011000228060000060A2B00062A1330010011000000060000110002280500000674190000010A2B00062A00000013300100110000000700001100022805000006A51A0000010A2B00062A000000133001000F00000008000011001200FE1502000002060B2B00072A00133002001700000009000011000228030000060228050000066F160000060A2B00062A00133002005F0000000A000011000228070000062C10032C0A037E1400000AFE012B01172B01160A062C0500170B2B3A03750200000214FE030C082C1D0003A5020000020D022805000006120328050000066F1600000A0B2B1000022805000006036F1600000A0B2B00072A00133001001C0000000B000011000228070000062D0D0228050000066F1700000A2B01160A2B00062A13300100110000000C00001100028C1A00000173040000060A2B00062A820002036F1800000A7D0100000402022803000006036F150000067D020000042A8E0003022801000006D26F1900000A00022803000006030228050000066F14000006002A000013300300920000000D00001100020A062C292B00061F0A5945070000000A000000120000001A0000003200000032000000220000002A0000002B30731C0000060B2B5973260000060B2B51732B0000060B2B4973300000060B2B4173350000060B2B39733A0000060B2B31720100007072550000707269000070281A00000A0F00FE16030000026F1300000A281B00000A7281000070731C00000A7A072A000013300200420100000E0000110002D026000001281D00000A3B1001000002D028000001281D00000A3BFD00000002D029000001281D00000A3BEA00000002D02A000001281D00000A3BD700000002D02B000001281D00000A3BC400000002D02C000001281D00000A3BB100000002D02D000001281D00000A3B9E00000002D02E000001281D00000A3B8B00000002D02F000001281D00000A2E7A02D01F000001281D00000A2E6902D020000001281D00000A2E5802D021000001281D00000A2E4702D030000001281D00000A2E3602D031000001281D00000A2E2502D01A000001281D00000A2E1402D019000001281D00000A2E03162B021F102B021F0F2B021F0E2B021F0D2B021F0C2B021F0B2B021F0A2B021F092B011E2B011D2B011C2B011B2B011A2B01192B01182B01170A0616FE010B072C1100728B0000707281000070731C00000A7A060C2B00082A2202281E00000A002A0013300100070000000100001100160A2B00062A0013300100070000000400001100140A2B00062A0A002A0000133001000B000000090000110072D30000700A2B00062A22022817000006002A4200020304A50600001B6F1F00000A002A000000133002001200000009000011000203A50600001B6F2000000A0A2B00062A0000133001001300000009000011000F01FE160600001B6F1300000A0A2B00062A00133001000800000001000011001F0A0A2B00062A13300100160000000400001100036F2100000A282200000A8C1F0000010A2B00062A3E000304282300000A6F2400000A002A000013300100150000000F000011000F01282500000A0A1200282600000A0B2B00072A2202282700000A002A0000133001000800000001000011001F0B0A2B00062A13300100160000000400001100036F2800000A282900000A8C200000010A2B00062A3E000304282A00000A6F2B00000A002A0000133001001500000010000011000F01282C00000A0A1200282D00000A0B2B00072A2202282E00000A002A0000133001000800000001000011001F0C0A2B00062A13300100160000000400001100036F2F00000A283000000A8C210000010A2B00062A3E000304283100000A6F3200000A002A0000133001001500000011000011000F01283300000A0A1200283400000A0B2B00072A2202283500000A002A0000133001000800000001000011001F0F0A2B00062A13300100160000000400001100036F3600000A733700000A8C1A0000010A2B00062A3E000304283800000A6F3900000A002A0000133001000D00000009000011000F01283A00000A0A2B00062A2202283B00000A002A0000133001000800000001000011001F100A2B00062A13300100160000000400001100036F3C00000A733D00000A733E00000A0A2B00062A660004036F3F00000A284000000A734100000A6F4200000A002A133001000C0000000900001100036F4300000A0A2B00062A2202284400000A002A000000133001000C0000000C000011000273040000060A2B00062A133001000C0000000C000011000273040000060A2B00062A13300100110000000C00001100028C1A00000173040000060A2B00062A00000042534A4201000100000000000C00000076322E302E35303732370000000005006C000000500B0000237E0000BC0B00002407000023537472696E677300000000E0120000E000000023555300C0130000100000002347554944000000D01300007C03000023426C6F620000000000000002000001571FA2090904000000FA013300160000010000003B0000000D000000150000003D0000002C0000000200000044000000110000001500000011000000080000001000000010000000070000000100000003000000010000000000FE030100000000000600C30220060600560320060600C401EE050F004006000006000702E0040600A602E00406007202E00406003D03E00406000903E00406002203E00406003A02E0040600F30101060600B601010606005502E0040600E30213070A00AB06CD050A001E02CD0506002701A9040A009503CD050A00BF004F060600B206A90406009B01200606007E01EE050600D801EE050A0060044F060A00BA034F0606001C0558000600C00558000600B704A90406005301A9040A0046004F060A0020004F060A0033004F060A009102CD0506001D04A9040600E803A9040600F204A9040A0009074F060600E400A9040A00BC044F060A007D034F060A0064064F060A009B064F060A0012014F060A00F3034F060A00DA004F060A0086004F060A0000074F060A0008014F0606004900A90406002300A90406003600A9040600A20458000E000E054C040E0004054C040600A603F2060E00B2054C040E00C900C7040E00A8054C04000000004F00000000000100010009011000D1065D0149000100010001010000B0045D017500040011008101100074065D015500160011008100100065055D015500160013000100100083055D011400160018008100100001005D01140016001D000100100047055D010600160022000100100029055D010A00160027000100100038055D010E0016002C000100100073055D011200160031000100100091055D011600160036008101100086065D01550016003B0001003401C30101008803C70121008E00CA0106066400CD0156802D04C30156800907C3015680BC04C30156807D03C30156806406C30156809B06C30156801201C3015680F303C3015680DA00C30156808600C30156804600C30156802000C30156803300C30156800007C30156800801C3015680BA03C30156806004C30150200000000083083101D001010068200000000086081E015600010090200000000086085605D5010100AD20000000008618E805DA010100DC200000000086088503DF010200F4200000000081083504E3010200FC2000000000E6094104E301020014210000000086087904E70102003421000000008608E203EC01020054210000000096082404F1010200702100000000C600D90356000200942100000000C6006D068E000200002200000000C600A7009700030028220000000096007801F6010300452200000000E6018100FD010400662200000000E6019501030205008C220000000096009E05090206002C230000000096003D0110020700000000000000C60D3101D0010800000000000000C605950117020800000000000000C60581001E020A00000000000000C605D90324020B007A24000000008418E80506000C00842400000000C6083101D0010C00982400000000C60081001E020C00AB2400000000C600950117020D00B02400000000C600D90324020F00C724000000008618E80506001000D02400000000C600950117021000000000000000C4058304DD001200E42400000000C600D90324021400042500000000C4018D04E5001500C724000000008418E80506001600242500000000C6083101D0011600382500000000C60081001E0216005A2500000000C4008304290217006C2500000000C4008D04310219008D25000000008618E80506001A00982500000000C6083101D0011A00AC2500000000C60081001E021A00CE2500000000C400830437021B00E02500000000C4008D0440021D000126000000008618E80506001E000C2600000000C6083101D0011E00202600000000C60081001E021E00422600000000C400830447021F00542600000000C4008D04500221007526000000008618E80506002200802600000000C6083101D0012200942600000000C60081001E022200B62600000000C400830457022300C82600000000C4008D045F022500E126000000008618E80506002600EC2600000000C6083101D0012600002700000000C60081001E022600222700000000C4008304650227003C2700000000C4008D046D0229005427000000008618E80506002A006027000000009600670473022A007827000000009600DC0673022B009027000000009600C403F6012C00000001008F0300000100EF03000001008F0300000100EC0500000100FE0600000100580100000100580100000100FE06000002008F0300000100EC05000001008F0300000100EC0500000100FE06000002008F03000001008F0300000100FE06000002008F0300000100FE06000002008F03000001008F03000001008F0300000100EC0500000100FE06000002008F03000001008F0300000100EC0500000100FE06000002008F03000001008F0300000100EC0500000100FE06000002008F03000001008F0300000100EC0500000100FE06000002008F03000001008F0300000100EC0500000100FE06000002008F03000001008F03000001008F03000001008F03000001008F0302004D00020051000900E80501001100E80506001900E8050A002900E80510003100E80510003900E80510004100E80510004900E80510005100E80510005900E80510006100E80515006900E80510007100E80510007900E80506008900E8051A00B100E8050600C100E80520001101E8050600A900D9035600190189035F00A90050016400A9006D068E00A900A7009700D9007403A000E1009501A4002101AB06B0002101A406B7002901E805BD00F100F600CB00A900E80506003C008304DD003C008D04E500D9003C00EB00F900B906EF00F900C506F500E1009501FB00F9008503EB009101D90356000C00E8050600D900160097000101B90605010101C5060C01E100950101000101850397009901D90356001400E8050600D900290018010901B9061C010901C5062301E10095012A01090185031801A101D90356001C00E8050600D900AF035600D100E8051000D100C5063401E10095011000D100850356002400E8050600D9009A043A01B101E8054001C900E8054701E1009A043A01C101B3004E01C901E8055401D10157045E01C900850356002C00E8050600080014006E0108001800730108001C007801080020007D0108002400820108002800870108002C008C01080030009101080034009601080038009B0108003C00A00108004000A50108004400AA0108004800AF0108004C00B40108005000B90108005400BE012E000B009F022E001300A8022E001B00C7022E002300D0022E002B00F0022E003300F0022E003B00F0022E004300D0022E004B00F6022E005300F0022E005B00F0022E0063000E032E006B0038032E007300730143007B004E0361008300730161008B004503C00083007301600793007301800793007301A007930073014B0050005A0069006D00710076007B008200860093009B00A900C300000113012F010200010005000A0006000B0008000C0009000D000A000E000B000F000C001000000035017A02000053017F02000068058302000089038802000044048C02000045048C0200007D0490020000E6039502000047049A02000035017A02000035017A02000035017A02000035017A02000035017A02000035017A02000035017A02020001000300020002000500020003000700020005000900020006000B00020007000D00020008000F0002000900110002000A001300020013001500020018001700020022001900020027001B0002002C001D00020031001F0002003600210026002D0035003D004400D300D6000480000001000000000000000000000000005D010000020000000000000000000000650178000000000002000000000000000000000065016C000000000002000000000000000000000065014C0400000000000000000E0062000000000000547970656453716C5479706548656C70657260310052656164496E7433320053716C496E7433320052656164496E7436340053716C496E7436340052656164496E7431360053716C496E743136003C4D6F64756C653E0053797374656D2E494F00540076616C75655F5F0053797374656D2E44617461006D73636F726C696200526561640053716C47756964003C5F49734E756C6C3E6B5F5F4261636B696E674669656C640047657448617368436F6465006765745F556E69636F646500494E756C6C61626C650049586D6C53657269616C697A61626C650053716C446F75626C650052756E74696D655479706548616E646C65004765745479706546726F6D48616E646C650053716C53696E676C650053716C4461746554696D65006765745F547970650056616C756554797065006765745F53716C547970650047657453716C5479706546726F6D5479706500476574547970650074797065005078746C43612E53716C436F6C6C656374696F6E732E436F726500506172736500446562756767657242726F777361626C65537461746500577269746500436F6D70696C657247656E65726174656441747472696275746500477569644174747269627574650044656275676761626C6541747472696275746500446562756767657242726F777361626C6541747472696275746500436F6D56697369626C6541747472696275746500417373656D626C795469746C654174747269627574650053716C55736572446566696E65645479706541747472696275746500417373656D626C7954726164656D61726B41747472696275746500417373656D626C7946696C6556657273696F6E41747472696275746500417373656D626C79436F6E66696775726174696F6E4174747269627574650053716C46756E6374696F6E41747472696275746500417373656D626C794465736372697074696F6E41747472696275746500436F6D70696C6174696F6E52656C61786174696F6E7341747472696275746500416C6C6F775061727469616C6C795472757374656443616C6C65727341747472696275746500417373656D626C7950726F6475637441747472696275746500417373656D626C79436F7079726967687441747472696275746500417373656D626C79436F6D70616E794174747269627574650052756E74696D65436F6D7061746962696C6974794174747269627574650052656164427974650053716C42797465006765745F56616C75650076616C7565004942696E61727953657269616C697A6500456E636F64696E670052656164537472696E670053716C537472696E670042696756617269616E7446726F6D537472696E6700546F537472696E67006765745F4173537472696E67006F626A0053716C446563696D616C005078746C43612E53716C436F6C6C656374696F6E732E436F72652E646C6C0044424E756C6C006765745F4E756C6C0053716C4E756C6C006765745F5F49734E756C6C006765745F49734E756C6C0053797374656D2E586D6C005772697465586D6C0053716C586D6C0042696756617269616E7446726F6D586D6C006765745F4173586D6C005772697465496D706C00546F537472696E67496D706C006765745F4261736553747265616D0053797374656D0053716C54797065456E756D0053716C426F6F6C65616E0053797374656D2E586D6C2E53657269616C697A6174696F6E0053797374656D2E5265666C656374696F6E00417267756D656E74457863657074696F6E00586D6C52656164657200586D6C546578745265616465720042696E6172795265616465720053716C496E74333248656C7065720053716C496E74363448656C7065720053716C496E74313648656C706572006765745F5479706548656C7065720053716C5479706548656C7065720053716C537472696E6748656C7065720053716C4E756C6C48656C7065720053716C586D6C48656C7065720047657448656C70657200586D6C57726974657200586D6C546578745772697465720042696E617279577269746572004D6963726F736F66742E53716C5365727665722E536572766572002E63746F720053797374656D2E446961676E6F73746963730053797374656D2E52756E74696D652E496E7465726F7053657276696365730053797374656D2E52756E74696D652E436F6D70696C6572536572766963657300446562756767696E674D6F6465730053797374656D2E446174612E53716C54797065730053716C427974657300457175616C730053716C54797065457874656E73696F6E730055736572446566696E656446756E6374696F6E730053716C436861727300436F6E63617400466F726D6174004F626A656374006F705F496D706C69636974006F705F4578706C696369740042696756617269616E740042696756617269616E7446726F6D56617269616E740053797374656D2E5465787400770053716C4D6F6E65790053716C42696E6172790053797374656D2E5365637572697479000000537B0030007D00200068006100730020006E006F0020006300610073006500200074006F002000680061006E0064006C006500200074006800650020007B0031007D002000760061006C00750065003A0020000013470065007400480065006C007000650072000017530071006C00540079007000650045006E0075006D000009740079007000650000474E006F007400200061002000760061006C00690064002000530051004C0020007400790070006500200066006F0072002000420069006700560061007200690061006E00740000094E0055004C004C0000000000C232A061A22D494381875D1ED2A79BA900042001010803200001052001011111042001010E042001010205200101114105200101115D0615121C01117D0715121C011180810715121C011180850615121C0111690615121C011265040701110C050702110C0E0320000E0407011214040612808D04200012790307011C0307010204070112650407011169060702110811080307010E0707040202021108042001021C03070108032000080407011108032000050420010105060702110C12140600030E0E1C1C0500020E0E0E052002010E0E070703110C02110C070001127911809D0213000615121C01130007200201127113000520010E130003200006050001117D0605000106117D0420010106040702060E0600011180810806000108118081040702080E0320000A0600011180850A0600010A118085042001010A0407020A0E0500010E11690520001280D5062001011280D5062001011280DD0500001280E1092002011280D51280E1062001011280ED08B77A5C561934E0890400000000040100000004020000000403000000040400000004050000000406000000040700000004080000000409000000040A000000040B000000040C000000040D000000040E000000040F00000004100000000306110C02061C020602020608042000110C0420001214042001011C0320001C032000020420001265042000116904000011080600011108116905200101126D0520010112710600011214110C060001110C12790620020112711C0520011C126D0420010E1C072002011271117D0520010E117D0820020112711180810620010E1180810820020112711180850620010E11808507200201127111690520010E116907200201127112650520010E126506000111081265042800110C0328000E04280012140328001C032800020428001265042800116904080011080801000800000000001E01000100540216577261704E6F6E457863657074696F6E5468726F7773010801000701000000001F01001A5078746C43612E53716C436F6C6C656374696F6E732E436F7265000005010000000017010012436F7079726967687420C2A920203230313600002901002436303334336138362D323061392D346137342D626237662D66623361343630333163343000000C010007312E302E302E3000000801000000000000002B010002000000020054020D497346697865644C656E6774680054080B4D61784279746553697A65FFFFFFFF0000000000004D8F015700000000020000001C010000183F0000182100005253445333BEE27375CE2143A0E2D66AA24F9C8101000000433A5C55736572735C4D617274696E5C44726F70626F785C50726F6A656374735C4769744875625C53716C436F6C6C656374696F6E735C5078746C43612E53716C436F6C6C656374696F6E732E436F72655C6F626A5C44656275675C5078746C43612E53716C436F6C6C656374696F6E732E436F72652E7064620000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005C40000000000000000000007640000000200000000000000000000000000000000000000000000068400000000000000000000000005F436F72446C6C4D61696E006D73636F7265652E646C6C0000000000FF250020001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100100000001800008000000000000000000000000000000100010000003000008000000000000000000000000000000100000000004800000058600000AC0300000000000000000000AC0334000000560053005F00560045005200530049004F004E005F0049004E0046004F0000000000BD04EFFE00000100000001000000000000000100000000003F000000000000000400000002000000000000000000000000000000440000000100560061007200460069006C00650049006E0066006F00000000002400040000005400720061006E0073006C006100740069006F006E00000000000000B0040C030000010053007400720069006E006700460069006C00650049006E0066006F000000E802000001003000300030003000300034006200300000001A000100010043006F006D006D0065006E007400730000000000000022000100010043006F006D00700061006E0079004E0061006D00650000000000000000005E001B000100460069006C0065004400650073006300720069007000740069006F006E00000000005000780074006C00430061002E00530071006C0043006F006C006C0065006300740069006F006E0073002E0043006F007200650000000000300008000100460069006C006500560065007200730069006F006E000000000031002E0030002E0030002E00300000005E001F00010049006E007400650072006E0061006C004E0061006D00650000005000780074006C00430061002E00530071006C0043006F006C006C0065006300740069006F006E0073002E0043006F00720065002E0064006C006C00000000004800120001004C006500670061006C0043006F007000790072006900670068007400000043006F0070007900720069006700680074002000A90020002000320030003100360000002A00010001004C006500670061006C00540072006100640065006D00610072006B007300000000000000000066001F0001004F0072006900670069006E0061006C00460069006C0065006E0061006D00650000005000780074006C00430061002E00530071006C0043006F006C006C0065006300740069006F006E0073002E0043006F00720065002E0064006C006C000000000056001B000100500072006F0064007500630074004E0061006D006500000000005000780074006C00430061002E00530071006C0043006F006C006C0065006300740069006F006E0073002E0043006F007200650000000000340008000100500072006F006400750063007400560065007200730069006F006E00000031002E0030002E0030002E003000000038000800010041007300730065006D0062006C0079002000560065007200730069006F006E00000031002E0030002E0030002E003000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000000C000000883000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;


GO
PRINT N'Update complete.';


GO
