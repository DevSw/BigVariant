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
PRINT N'Dropping [PxtlCa.SqlCollections.Core]...';


GO
DROP ASSEMBLY [PxtlCa.SqlCollections.Core];


GO
PRINT N'Creating [PxtlCa.SqlCollections.Core]...';


GO
CREATE ASSEMBLY [PxtlCa.SqlCollections.Core]
    AUTHORIZATION [dbo]
    FROM 0x4D5A90000300000004000000FFFF0000B800000000000000400000000000000000000000000000000000000000000000000000000000000000000000800000000E1FBA0E00B409CD21B8014CCD21546869732070726F6772616D2063616E6E6F742062652072756E20696E20444F53206D6F64652E0D0D0A2400000000000000504500004C01030015B700570000000000000000E00022200B013000001600000008000000000000CA350000002000000040000000000010002000000002000004000000000000000400000000000000008000000002000000000000030040850000100000100000000010000010000000000000100000000000000000000000783500004F000000004000000804000000000000000000000000000000000000006000000C000000403400001C0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000080000000000000000000000082000004800000000000000000000002E74657874000000D0150000002000000016000000020000000000000000000000000000200000602E7273726300000008040000004000000006000000180000000000000000000000000000400000402E72656C6F6300000C0000000060000000020000001E00000000000000000000000000004000004200000000000000000000000000000000AC35000000000000480000000200050008250000380F00000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000133001000C0000000100001100027B010000040A2B00062A2A000203D27D010000042A00133001000C00000001000011000228010000060A2B00062A1330020099000000020000110002280B0000060A062C0800140B38840000000228030000060C081F0A5945070000001000000023000000360000004D0000004D00000002000000440000002B4B027B020000048C140000010B2B48027C03000004281300000A8C1B0000010B2B35027C03000004281400000A8C1C0000010B2B22027B030000048C150000010B2B14027B040000040B2B0B7201000070731500000A7A072A000000133002002B000000030000110002280100000616FE030A062C0C007245000070731500000A7A021F0F28020000060002037D020000042A001330020030000000030000110002280100000616FE030A062C0C007245000070731500000A7A021F0A2802000006000203281600000A7D030000042A1330020030000000030000110002280100000616FE030A062C0C007245000070731500000A7A021F0B2802000006000203281700000A7D030000042A133002002B000000030000110002280100000616FE030A062C0C007245000070731500000A7A021F0C28020000060002037D030000042A00133002002B000000030000110002280100000616FE030A062C0C007245000070731500000A7A021F1028020000060002037D040000042A1E027B050000042A00133001000C000000030000110002280A0000060A2B00062A133001000F00000004000011001200FE1502000002060B2B00072A001330010025000000050000110002280B0000060A062C090072B50000700B2B0F000228040000066F1800000A0B2B00072A000000133002005F000000060000110002280B0000062C10032C0A037E1900000AFE012B01172B01160A062C0500170B2B3A03750200000214FE030C082C1D0003A5020000020D022804000006120328040000066F1A00000A0B2B1000022804000006036F1A00000A0B2B00072A00133001001C000000070000110002280B0000062D0D0228040000066F1B00000A2B01160A2B00062A133001000C00000008000011000228130000060A2B00062A1330020042010000090000110002D022000001281C00000A3B1001000002D024000001281C00000A3BFD00000002D025000001281C00000A3BEA00000002D026000001281C00000A3BD700000002D027000001281C00000A3BC400000002D028000001281C00000A3BB100000002D029000001281C00000A3B9E00000002D02A000001281C00000A3B8B00000002D02B000001281C00000A2E7A02D01B000001281C00000A2E6902D01C000001281C00000A2E5802D015000001281C00000A2E4702D02C000001281C00000A2E3602D02D000001281C00000A2E2502D014000001281C00000A2E1402D016000001281C00000A2E03162B021F102B021F0F2B021F0E2B021F0D2B021F0C2B021F0B2B021F0A2B021F092B011E2B011D2B011C2B011B2B011A2B01192B01182B01170A0616FE010B072C110072BF00007072C9000070731D00000A7A060C2B00082A0000133002001800000004000011001200FE1502000002120002280900000600060B2B00072A133002001800000004000011001200FE1502000002120002280500000600060B2B00072A42534A4201000100000000000C00000076322E302E35303732370000000005006C000000B8050000237E000024060000AC05000023537472696E677300000000D00B00001401000023555300E40C0000100000002347554944000000F40C00004402000023426C6F620000000000000002000001571FA2010900000000FA013300160000010000002E0000000400000017000000130000000B000000010000001D00000011000000140000000900000001000000060000000700000001000000020000000000DF030100000000000600C002EF0406005303EF040600C101BD040F000F050000060004025E040600A3025E0406006F025E0406003A035E04060006035E0406001F035E04060037025E040600F001D0040600B301D004060052025E040600E00299050A0061059C040A001B029C040600180134040A00C5001E050A00BD031E050A0025001E050A002D041E0506009801EF0406008101BD040600D501BD040600680534040A0041001E050A0014001E0506005601340406004E0434040A008E029C040600700434040600FE0334040A008F051E050600D90034040A0053041E050A0071031E050A0033051E050A0058051E050A0007011E050A00D4031E050A00CF001E050A0098001E050A0086051E050A00FD001E0506008A043404000000004A000000000001000100090110007B0560014900010001000101000047046001790006001200810110004305600169001800120001003B04F10001009203F40001007903F8000100A203FC002100A000000106067B00030156801301060156808F0506015680530406015680710306015680330506015680580506015680070106015680D40306015680CF0006015680980006015680410006015680140006015680250006015680860506015680FD0006015680BD03060156802D040601502000000000810822010A01010068200000000081082F010F01010074200000000086083C010A0102008C200000000086088803150102003421000000008300B503190102006C210000000083002E001F010300A821000000008300010025010400E4210000000083001D002B0105001C2200000000830025043101060053220000000081080E04370107005C2200000000E6091A0437010700742200000000960805043B010700902200000000C600C7035A000700C42200000000C6003C056B000700302300000000C600B9007400080058230000000096007B01400108007023000000009600480147010900C02400000000960053004E010A00E424000000009600650040010B0000000100AF0300000100AF0300000100AF0300000100AF0300000100AF0300000100AF0300000100D00300000100AF03000001005B0100000100AF0300000100AF0302004D000900B70401001100B70406001900B7040A002900B70410003100B70410003900B70410004100B70410004900B70410005100B70410005900B70410006100B70415006900B70410007100B70410007900B70406008900B7041A00B900B7040600C900B7042000F900B7040600A9003F003200A900120037000101B7041000A9006F054000A9006F054700D100C7035A000901A9036600D1003C056B00D100B9007400E900EB0085007101B7048D0008001C009C0008002000A10008002400A60008002800AB0008002C00B00008003000B50008003400BA0008003800BF0008003C00C40008004000C90008004400CE0008004800D30008004C00D80008005000DD0008005400E20008005800E70008005C00EC002E000B0067012E00130070012E001B008F012E00230098012E002B00B8012E003300B8012E003B00B8012E00430098012E004B00BE012E005300B8012E005B00B8012E006300D6012E006B0000022E007300A10043007B001602A1008300A100A1008B000D0240018300A10040029300A10060029300A10026002B003C004E0055005E00700078007D000200010000003F0155010000400155010000A9035A0100001D045E0100001E045E0100002004620102000100030001000200030002000300050002000400070002000A00090002000B000B0002000C000D000480000001000000000000000000000000006001000002000000000000000000000093008F0000000000020000000000000000000000930083000000000000000053657456616C756553716C496E74333200546F53716C496E7433320053657456616C756553716C496E7436340053657456616C756553716C496E74313600546F53716C496E743136003C4D6F64756C653E0042696756617269616E7446726F6D584D4C0042696756617269616E7446726F6D564152434841520076616C75655F5F0053797374656D2E44617461006D73636F726C69620053716C47756964003C5F49734E756C6C3E6B5F5F4261636B696E674669656C640047657448617368436F646500494E756C6C61626C650053716C446F75626C650052756E74696D655479706548616E646C65004765745479706546726F6D48616E646C650053716C53696E676C650053716C4461746554696D65004E6F6E650056616C756554797065006765745F5F53716C54797065007365745F5F53716C54797065006765745F53716C547970650047657453716C5479706546726F6D547970650074797065005078746C43612E53716C436F6C6C656374696F6E732E436F726500506172736500446562756767657242726F777361626C65537461746500436F6D70696C657247656E65726174656441747472696275746500477569644174747269627574650044656275676761626C6541747472696275746500446562756767657242726F777361626C6541747472696275746500436F6D56697369626C6541747472696275746500417373656D626C795469746C654174747269627574650053716C55736572446566696E65645479706541747472696275746500417373656D626C7954726164656D61726B41747472696275746500417373656D626C7946696C6556657273696F6E41747472696275746500417373656D626C79436F6E66696775726174696F6E4174747269627574650053716C46756E6374696F6E41747472696275746500417373656D626C794465736372697074696F6E41747472696275746500436F6D70696C6174696F6E52656C61786174696F6E7341747472696275746500416C6C6F775061727469616C6C795472757374656443616C6C65727341747472696275746500417373656D626C7950726F6475637441747472696275746500417373656D626C79436F7079726967687441747472696275746500417373656D626C79436F6D70616E794174747269627574650052756E74696D65436F6D7061746962696C6974794174747269627574650053716C42797465005F53716C496E74363456616C7565006765745F56616C7565005F53716C537472696E6756616C7565005F53716C586D6C56616C75650076616C75650053657456616C756553716C537472696E6700546F537472696E67006F626A0053716C446563696D616C005078746C43612E53716C436F6C6C656374696F6E732E436F72652E646C6C0044424E756C6C006765745F4E756C6C006765745F5F49734E756C6C006765745F49734E756C6C0053657456616C756553716C586D6C0053797374656D005F53716C547970654E756D0053716C54797065456E756D0053716C426F6F6C65616E0053797374656D2E5265666C656374696F6E00496E76616C69644F7065726174696F6E457863657074696F6E00417267756D656E74457863657074696F6E004D6963726F736F66742E53716C5365727665722E536572766572002E63746F720053797374656D2E446961676E6F73746963730053797374656D2E52756E74696D652E496E7465726F7053657276696365730053797374656D2E52756E74696D652E436F6D70696C6572536572766963657300446562756767696E674D6F6465730053797374656D2E446174612E53716C54797065730053716C427974657300457175616C730055736572446566696E656446756E6374696F6E730053716C436861727300466F726D6174004F626A656374006F705F496D706C696369740042696756617269616E740053716C4D6F6E65790053716C42696E6172790053797374656D2E536563757269747900000000004349006D0070006F0073007300690062006C0065002000760061006C0075006500200068006100730020006200650065006E002000730074006F007200650064002E00006F520065007000650061007400650064002000730065007400740069006E00670020006F0066002000760061006C007500650020006F006E002000420069006700560061007200690061006E00740020006900730020006E006F007400200061006C006C006F007700650064002E0000094E0055004C004C000009740079007000650000474E006F007400200061002000760061006C00690064002000530051004C0020007400790070006500200066006F0072002000420069006700560061007200690061006E007400000000001F2EBB921D19194F94CF22FED3FB119100042001010803200001052001011111042001010E0420010102052001011141052001011161040701110C060703021C110C042000116D0420001171030701020600011155116D0600011155117106070211081108040702020E0320000E07070402020211080406128085042001021C03070108032000080407011108070703110C02110C070001127511808D052002010E0E08B77A5C561934E0890400000000040100000004020000000403000000040400000004050000000406000000040700000004080000000409000000040A000000040B000000040C000000040D000000040E000000040F00000004100000000206050306115103061155030612590206020206080306110C042000110C05200101110C0320001C05200101115105200101116D05200101117105200101115505200101125903200002040000110806000111081151060001110C127506000111081259042800110C0328001C0328000204080011080801000800000000001E01000100540216577261704E6F6E457863657074696F6E5468726F7773010801000701000000001F01001A5078746C43612E53716C436F6C6C656374696F6E732E436F7265000005010000000017010012436F7079726967687420C2A920203230313600002901002436303334336138362D323061392D346137342D626237662D66623361343630333163343000000C010007312E302E302E3000000801000000000000002B010001000000020054020D497346697865644C656E6774680054080B4D61784279746553697A65FFFFFFFF00000000000015B7005700000000020000001C0100005C3400005C1600005253445342536E52AD878C4DB87D0B22A803966A01000000433A5C55736572735C4D617274696E5C44726F70626F785C50726F6A656374735C4769744875625C53716C436F6C6C656374696F6E735C5078746C43612E53716C436F6C6C656374696F6E732E436F72655C6F626A5C44656275675C5078746C43612E53716C436F6C6C656374696F6E732E436F72652E706462000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000A03500000000000000000000BA350000002000000000000000000000000000000000000000000000AC350000000000000000000000005F436F72446C6C4D61696E006D73636F7265652E646C6C0000000000FF250020001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100100000001800008000000000000000000000000000000100010000003000008000000000000000000000000000000100000000004800000058400000AC0300000000000000000000AC0334000000560053005F00560045005200530049004F004E005F0049004E0046004F0000000000BD04EFFE00000100000001000000000000000100000000003F000000000000000400000002000000000000000000000000000000440000000100560061007200460069006C00650049006E0066006F00000000002400040000005400720061006E0073006C006100740069006F006E00000000000000B0040C030000010053007400720069006E006700460069006C00650049006E0066006F000000E802000001003000300030003000300034006200300000001A000100010043006F006D006D0065006E007400730000000000000022000100010043006F006D00700061006E0079004E0061006D00650000000000000000005E001B000100460069006C0065004400650073006300720069007000740069006F006E00000000005000780074006C00430061002E00530071006C0043006F006C006C0065006300740069006F006E0073002E0043006F007200650000000000300008000100460069006C006500560065007200730069006F006E000000000031002E0030002E0030002E00300000005E001F00010049006E007400650072006E0061006C004E0061006D00650000005000780074006C00430061002E00530071006C0043006F006C006C0065006300740069006F006E0073002E0043006F00720065002E0064006C006C00000000004800120001004C006500670061006C0043006F007000790072006900670068007400000043006F0070007900720069006700680074002000A90020002000320030003100360000002A00010001004C006500670061006C00540072006100640065006D00610072006B007300000000000000000066001F0001004F0072006900670069006E0061006C00460069006C0065006E0061006D00650000005000780074006C00430061002E00530071006C0043006F006C006C0065006300740069006F006E0073002E0043006F00720065002E0064006C006C000000000056001B000100500072006F0064007500630074004E0061006D006500000000005000780074006C00430061002E00530071006C0043006F006C006C0065006300740069006F006E0073002E0043006F007200650000000000340008000100500072006F006400750063007400560065007200730069006F006E00000031002E0030002E0030002E003000000038000800010041007300730065006D0062006C0079002000560065007200730069006F006E00000031002E0030002E0030002E003000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003000000C000000CC3500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;


GO
PRINT N'Creating [dbo].[BigVariant]...';


GO
CREATE TYPE [dbo].[BigVariant]
     EXTERNAL NAME [PxtlCa.SqlCollections.Core].[PxtlCa.SqlCollections.Core.BigVariant];


GO
PRINT N'Creating [dbo].[BigVariantFromVARCHAR]...';


GO
CREATE FUNCTION [dbo].[BigVariantFromVARCHAR]
(@value NVARCHAR (MAX))
RETURNS [dbo].[BigVariant]
AS
 EXTERNAL NAME [PxtlCa.SqlCollections.Core].[PxtlCa.SqlCollections.Core.UserDefinedFunctions].[BigVariantFromVARCHAR]


GO
PRINT N'Creating [dbo].[BigVariantFromXML]...';


GO
CREATE FUNCTION [dbo].[BigVariantFromXML]
(@value XML)
RETURNS [dbo].[BigVariant]
AS
 EXTERNAL NAME [PxtlCa.SqlCollections.Core].[PxtlCa.SqlCollections.Core.UserDefinedFunctions].[BigVariantFromXML]


GO
PRINT N'Update complete.';


GO
