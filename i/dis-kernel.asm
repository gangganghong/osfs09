
kernel.bin:     file format elf32-i386


Disassembly of section .text:

00001000 <_start>:
    1000:	bc a0 ff 00 00       	mov    $0xffa0,%esp
    1005:	c7 05 24 a8 04 00 00 	movl   $0x0,0x4a824
    100c:	00 00 00 
    100f:	0f 01 05 2c a8 04 00 	sgdtl  0x4a82c
    1016:	e8 15 04 00 00       	call   1430 <cstart>
    101b:	0f 01 15 2c a8 04 00 	lgdtl  0x4a82c
    1022:	0f 01 1d 80 08 01 00 	lidtl  0x10880
    1029:	ea 30 10 00 00 08 00 	ljmp   $0x8,$0x1030

00001030 <csinit>:
    1030:	31 c0                	xor    %eax,%eax
    1032:	66 b8 20 00          	mov    $0x20,%ax
    1036:	0f 00 d8             	ltr    %ax
    1039:	e9 87 04 00 00       	jmp    14c5 <kernel_main>
    103e:	90                   	nop
    103f:	90                   	nop

00001040 <hwint00>:
    1040:	e8 4c 03 00 00       	call   1391 <save>
    1045:	e4 21                	in     $0x21,%al
    1047:	0c 01                	or     $0x1,%al
    1049:	e6 21                	out    %al,$0x21
    104b:	b0 20                	mov    $0x20,%al
    104d:	e6 20                	out    %al,$0x20
    104f:	fb                   	sti    
    1050:	6a 00                	push   $0x0
    1052:	ff 15 80 b2 04 00    	call   *0x4b280
    1058:	59                   	pop    %ecx
    1059:	fa                   	cli    
    105a:	e4 21                	in     $0x21,%al
    105c:	24 fe                	and    $0xfe,%al
    105e:	e6 21                	out    %al,$0x21
    1060:	c3                   	ret    
    1061:	90                   	nop
    1062:	90                   	nop
    1063:	90                   	nop
    1064:	90                   	nop
    1065:	90                   	nop
    1066:	90                   	nop
    1067:	90                   	nop
    1068:	90                   	nop
    1069:	90                   	nop
    106a:	90                   	nop
    106b:	90                   	nop
    106c:	90                   	nop
    106d:	90                   	nop
    106e:	90                   	nop
    106f:	90                   	nop

00001070 <hwint01>:
    1070:	e8 1c 03 00 00       	call   1391 <save>
    1075:	e4 21                	in     $0x21,%al
    1077:	0c 02                	or     $0x2,%al
    1079:	e6 21                	out    %al,$0x21
    107b:	b0 20                	mov    $0x20,%al
    107d:	e6 20                	out    %al,$0x20
    107f:	fb                   	sti    
    1080:	6a 01                	push   $0x1
    1082:	ff 15 84 b2 04 00    	call   *0x4b284
    1088:	59                   	pop    %ecx
    1089:	fa                   	cli    
    108a:	e4 21                	in     $0x21,%al
    108c:	24 fd                	and    $0xfd,%al
    108e:	e6 21                	out    %al,$0x21
    1090:	c3                   	ret    
    1091:	90                   	nop
    1092:	90                   	nop
    1093:	90                   	nop
    1094:	90                   	nop
    1095:	90                   	nop
    1096:	90                   	nop
    1097:	90                   	nop
    1098:	90                   	nop
    1099:	90                   	nop
    109a:	90                   	nop
    109b:	90                   	nop
    109c:	90                   	nop
    109d:	90                   	nop
    109e:	90                   	nop
    109f:	90                   	nop

000010a0 <hwint02>:
    10a0:	e8 ec 02 00 00       	call   1391 <save>
    10a5:	e4 21                	in     $0x21,%al
    10a7:	0c 04                	or     $0x4,%al
    10a9:	e6 21                	out    %al,$0x21
    10ab:	b0 20                	mov    $0x20,%al
    10ad:	e6 20                	out    %al,$0x20
    10af:	fb                   	sti    
    10b0:	6a 02                	push   $0x2
    10b2:	ff 15 88 b2 04 00    	call   *0x4b288
    10b8:	59                   	pop    %ecx
    10b9:	fa                   	cli    
    10ba:	e4 21                	in     $0x21,%al
    10bc:	24 fb                	and    $0xfb,%al
    10be:	e6 21                	out    %al,$0x21
    10c0:	c3                   	ret    
    10c1:	90                   	nop
    10c2:	90                   	nop
    10c3:	90                   	nop
    10c4:	90                   	nop
    10c5:	90                   	nop
    10c6:	90                   	nop
    10c7:	90                   	nop
    10c8:	90                   	nop
    10c9:	90                   	nop
    10ca:	90                   	nop
    10cb:	90                   	nop
    10cc:	90                   	nop
    10cd:	90                   	nop
    10ce:	90                   	nop
    10cf:	90                   	nop

000010d0 <hwint03>:
    10d0:	e8 bc 02 00 00       	call   1391 <save>
    10d5:	e4 21                	in     $0x21,%al
    10d7:	0c 08                	or     $0x8,%al
    10d9:	e6 21                	out    %al,$0x21
    10db:	b0 20                	mov    $0x20,%al
    10dd:	e6 20                	out    %al,$0x20
    10df:	fb                   	sti    
    10e0:	6a 03                	push   $0x3
    10e2:	ff 15 8c b2 04 00    	call   *0x4b28c
    10e8:	59                   	pop    %ecx
    10e9:	fa                   	cli    
    10ea:	e4 21                	in     $0x21,%al
    10ec:	24 f7                	and    $0xf7,%al
    10ee:	e6 21                	out    %al,$0x21
    10f0:	c3                   	ret    
    10f1:	90                   	nop
    10f2:	90                   	nop
    10f3:	90                   	nop
    10f4:	90                   	nop
    10f5:	90                   	nop
    10f6:	90                   	nop
    10f7:	90                   	nop
    10f8:	90                   	nop
    10f9:	90                   	nop
    10fa:	90                   	nop
    10fb:	90                   	nop
    10fc:	90                   	nop
    10fd:	90                   	nop
    10fe:	90                   	nop
    10ff:	90                   	nop

00001100 <hwint04>:
    1100:	e8 8c 02 00 00       	call   1391 <save>
    1105:	e4 21                	in     $0x21,%al
    1107:	0c 10                	or     $0x10,%al
    1109:	e6 21                	out    %al,$0x21
    110b:	b0 20                	mov    $0x20,%al
    110d:	e6 20                	out    %al,$0x20
    110f:	fb                   	sti    
    1110:	6a 04                	push   $0x4
    1112:	ff 15 90 b2 04 00    	call   *0x4b290
    1118:	59                   	pop    %ecx
    1119:	fa                   	cli    
    111a:	e4 21                	in     $0x21,%al
    111c:	24 ef                	and    $0xef,%al
    111e:	e6 21                	out    %al,$0x21
    1120:	c3                   	ret    
    1121:	90                   	nop
    1122:	90                   	nop
    1123:	90                   	nop
    1124:	90                   	nop
    1125:	90                   	nop
    1126:	90                   	nop
    1127:	90                   	nop
    1128:	90                   	nop
    1129:	90                   	nop
    112a:	90                   	nop
    112b:	90                   	nop
    112c:	90                   	nop
    112d:	90                   	nop
    112e:	90                   	nop
    112f:	90                   	nop

00001130 <hwint05>:
    1130:	e8 5c 02 00 00       	call   1391 <save>
    1135:	e4 21                	in     $0x21,%al
    1137:	0c 20                	or     $0x20,%al
    1139:	e6 21                	out    %al,$0x21
    113b:	b0 20                	mov    $0x20,%al
    113d:	e6 20                	out    %al,$0x20
    113f:	fb                   	sti    
    1140:	6a 05                	push   $0x5
    1142:	ff 15 94 b2 04 00    	call   *0x4b294
    1148:	59                   	pop    %ecx
    1149:	fa                   	cli    
    114a:	e4 21                	in     $0x21,%al
    114c:	24 df                	and    $0xdf,%al
    114e:	e6 21                	out    %al,$0x21
    1150:	c3                   	ret    
    1151:	90                   	nop
    1152:	90                   	nop
    1153:	90                   	nop
    1154:	90                   	nop
    1155:	90                   	nop
    1156:	90                   	nop
    1157:	90                   	nop
    1158:	90                   	nop
    1159:	90                   	nop
    115a:	90                   	nop
    115b:	90                   	nop
    115c:	90                   	nop
    115d:	90                   	nop
    115e:	90                   	nop
    115f:	90                   	nop

00001160 <hwint06>:
    1160:	e8 2c 02 00 00       	call   1391 <save>
    1165:	e4 21                	in     $0x21,%al
    1167:	0c 40                	or     $0x40,%al
    1169:	e6 21                	out    %al,$0x21
    116b:	b0 20                	mov    $0x20,%al
    116d:	e6 20                	out    %al,$0x20
    116f:	fb                   	sti    
    1170:	6a 06                	push   $0x6
    1172:	ff 15 98 b2 04 00    	call   *0x4b298
    1178:	59                   	pop    %ecx
    1179:	fa                   	cli    
    117a:	e4 21                	in     $0x21,%al
    117c:	24 bf                	and    $0xbf,%al
    117e:	e6 21                	out    %al,$0x21
    1180:	c3                   	ret    
    1181:	90                   	nop
    1182:	90                   	nop
    1183:	90                   	nop
    1184:	90                   	nop
    1185:	90                   	nop
    1186:	90                   	nop
    1187:	90                   	nop
    1188:	90                   	nop
    1189:	90                   	nop
    118a:	90                   	nop
    118b:	90                   	nop
    118c:	90                   	nop
    118d:	90                   	nop
    118e:	90                   	nop
    118f:	90                   	nop

00001190 <hwint07>:
    1190:	e8 fc 01 00 00       	call   1391 <save>
    1195:	e4 21                	in     $0x21,%al
    1197:	0c 80                	or     $0x80,%al
    1199:	e6 21                	out    %al,$0x21
    119b:	b0 20                	mov    $0x20,%al
    119d:	e6 20                	out    %al,$0x20
    119f:	fb                   	sti    
    11a0:	6a 07                	push   $0x7
    11a2:	ff 15 9c b2 04 00    	call   *0x4b29c
    11a8:	59                   	pop    %ecx
    11a9:	fa                   	cli    
    11aa:	e4 21                	in     $0x21,%al
    11ac:	24 7f                	and    $0x7f,%al
    11ae:	e6 21                	out    %al,$0x21
    11b0:	c3                   	ret    
    11b1:	90                   	nop
    11b2:	90                   	nop
    11b3:	90                   	nop
    11b4:	90                   	nop
    11b5:	90                   	nop
    11b6:	90                   	nop
    11b7:	90                   	nop
    11b8:	90                   	nop
    11b9:	90                   	nop
    11ba:	90                   	nop
    11bb:	90                   	nop
    11bc:	90                   	nop
    11bd:	90                   	nop
    11be:	90                   	nop
    11bf:	90                   	nop

000011c0 <hwint08>:
    11c0:	e8 cc 01 00 00       	call   1391 <save>
    11c5:	e4 a1                	in     $0xa1,%al
    11c7:	0c 01                	or     $0x1,%al
    11c9:	e6 a1                	out    %al,$0xa1
    11cb:	b0 20                	mov    $0x20,%al
    11cd:	e6 20                	out    %al,$0x20
    11cf:	90                   	nop
    11d0:	e6 a0                	out    %al,$0xa0
    11d2:	fb                   	sti    
    11d3:	6a 08                	push   $0x8
    11d5:	ff 15 a0 b2 04 00    	call   *0x4b2a0
    11db:	59                   	pop    %ecx
    11dc:	fa                   	cli    
    11dd:	e4 a1                	in     $0xa1,%al
    11df:	24 fe                	and    $0xfe,%al
    11e1:	e6 a1                	out    %al,$0xa1
    11e3:	c3                   	ret    
    11e4:	90                   	nop
    11e5:	90                   	nop
    11e6:	90                   	nop
    11e7:	90                   	nop
    11e8:	90                   	nop
    11e9:	90                   	nop
    11ea:	90                   	nop
    11eb:	90                   	nop
    11ec:	90                   	nop
    11ed:	90                   	nop
    11ee:	90                   	nop
    11ef:	90                   	nop

000011f0 <hwint09>:
    11f0:	e8 9c 01 00 00       	call   1391 <save>
    11f5:	e4 a1                	in     $0xa1,%al
    11f7:	0c 02                	or     $0x2,%al
    11f9:	e6 a1                	out    %al,$0xa1
    11fb:	b0 20                	mov    $0x20,%al
    11fd:	e6 20                	out    %al,$0x20
    11ff:	90                   	nop
    1200:	e6 a0                	out    %al,$0xa0
    1202:	fb                   	sti    
    1203:	6a 09                	push   $0x9
    1205:	ff 15 a4 b2 04 00    	call   *0x4b2a4
    120b:	59                   	pop    %ecx
    120c:	fa                   	cli    
    120d:	e4 a1                	in     $0xa1,%al
    120f:	24 fd                	and    $0xfd,%al
    1211:	e6 a1                	out    %al,$0xa1
    1213:	c3                   	ret    
    1214:	90                   	nop
    1215:	90                   	nop
    1216:	90                   	nop
    1217:	90                   	nop
    1218:	90                   	nop
    1219:	90                   	nop
    121a:	90                   	nop
    121b:	90                   	nop
    121c:	90                   	nop
    121d:	90                   	nop
    121e:	90                   	nop
    121f:	90                   	nop

00001220 <hwint10>:
    1220:	e8 6c 01 00 00       	call   1391 <save>
    1225:	e4 a1                	in     $0xa1,%al
    1227:	0c 04                	or     $0x4,%al
    1229:	e6 a1                	out    %al,$0xa1
    122b:	b0 20                	mov    $0x20,%al
    122d:	e6 20                	out    %al,$0x20
    122f:	90                   	nop
    1230:	e6 a0                	out    %al,$0xa0
    1232:	fb                   	sti    
    1233:	6a 0a                	push   $0xa
    1235:	ff 15 a8 b2 04 00    	call   *0x4b2a8
    123b:	59                   	pop    %ecx
    123c:	fa                   	cli    
    123d:	e4 a1                	in     $0xa1,%al
    123f:	24 fb                	and    $0xfb,%al
    1241:	e6 a1                	out    %al,$0xa1
    1243:	c3                   	ret    
    1244:	90                   	nop
    1245:	90                   	nop
    1246:	90                   	nop
    1247:	90                   	nop
    1248:	90                   	nop
    1249:	90                   	nop
    124a:	90                   	nop
    124b:	90                   	nop
    124c:	90                   	nop
    124d:	90                   	nop
    124e:	90                   	nop
    124f:	90                   	nop

00001250 <hwint11>:
    1250:	e8 3c 01 00 00       	call   1391 <save>
    1255:	e4 a1                	in     $0xa1,%al
    1257:	0c 08                	or     $0x8,%al
    1259:	e6 a1                	out    %al,$0xa1
    125b:	b0 20                	mov    $0x20,%al
    125d:	e6 20                	out    %al,$0x20
    125f:	90                   	nop
    1260:	e6 a0                	out    %al,$0xa0
    1262:	fb                   	sti    
    1263:	6a 0b                	push   $0xb
    1265:	ff 15 ac b2 04 00    	call   *0x4b2ac
    126b:	59                   	pop    %ecx
    126c:	fa                   	cli    
    126d:	e4 a1                	in     $0xa1,%al
    126f:	24 f7                	and    $0xf7,%al
    1271:	e6 a1                	out    %al,$0xa1
    1273:	c3                   	ret    
    1274:	90                   	nop
    1275:	90                   	nop
    1276:	90                   	nop
    1277:	90                   	nop
    1278:	90                   	nop
    1279:	90                   	nop
    127a:	90                   	nop
    127b:	90                   	nop
    127c:	90                   	nop
    127d:	90                   	nop
    127e:	90                   	nop
    127f:	90                   	nop

00001280 <hwint12>:
    1280:	e8 0c 01 00 00       	call   1391 <save>
    1285:	e4 a1                	in     $0xa1,%al
    1287:	0c 10                	or     $0x10,%al
    1289:	e6 a1                	out    %al,$0xa1
    128b:	b0 20                	mov    $0x20,%al
    128d:	e6 20                	out    %al,$0x20
    128f:	90                   	nop
    1290:	e6 a0                	out    %al,$0xa0
    1292:	fb                   	sti    
    1293:	6a 0c                	push   $0xc
    1295:	ff 15 b0 b2 04 00    	call   *0x4b2b0
    129b:	59                   	pop    %ecx
    129c:	fa                   	cli    
    129d:	e4 a1                	in     $0xa1,%al
    129f:	24 ef                	and    $0xef,%al
    12a1:	e6 a1                	out    %al,$0xa1
    12a3:	c3                   	ret    
    12a4:	90                   	nop
    12a5:	90                   	nop
    12a6:	90                   	nop
    12a7:	90                   	nop
    12a8:	90                   	nop
    12a9:	90                   	nop
    12aa:	90                   	nop
    12ab:	90                   	nop
    12ac:	90                   	nop
    12ad:	90                   	nop
    12ae:	90                   	nop
    12af:	90                   	nop

000012b0 <hwint13>:
    12b0:	e8 dc 00 00 00       	call   1391 <save>
    12b5:	e4 a1                	in     $0xa1,%al
    12b7:	0c 20                	or     $0x20,%al
    12b9:	e6 a1                	out    %al,$0xa1
    12bb:	b0 20                	mov    $0x20,%al
    12bd:	e6 20                	out    %al,$0x20
    12bf:	90                   	nop
    12c0:	e6 a0                	out    %al,$0xa0
    12c2:	fb                   	sti    
    12c3:	6a 0d                	push   $0xd
    12c5:	ff 15 b4 b2 04 00    	call   *0x4b2b4
    12cb:	59                   	pop    %ecx
    12cc:	fa                   	cli    
    12cd:	e4 a1                	in     $0xa1,%al
    12cf:	24 df                	and    $0xdf,%al
    12d1:	e6 a1                	out    %al,$0xa1
    12d3:	c3                   	ret    
    12d4:	90                   	nop
    12d5:	90                   	nop
    12d6:	90                   	nop
    12d7:	90                   	nop
    12d8:	90                   	nop
    12d9:	90                   	nop
    12da:	90                   	nop
    12db:	90                   	nop
    12dc:	90                   	nop
    12dd:	90                   	nop
    12de:	90                   	nop
    12df:	90                   	nop

000012e0 <hwint14>:
    12e0:	e8 ac 00 00 00       	call   1391 <save>
    12e5:	e4 a1                	in     $0xa1,%al
    12e7:	0c 40                	or     $0x40,%al
    12e9:	e6 a1                	out    %al,$0xa1
    12eb:	b0 20                	mov    $0x20,%al
    12ed:	e6 20                	out    %al,$0x20
    12ef:	90                   	nop
    12f0:	e6 a0                	out    %al,$0xa0
    12f2:	fb                   	sti    
    12f3:	6a 0e                	push   $0xe
    12f5:	ff 15 b8 b2 04 00    	call   *0x4b2b8
    12fb:	59                   	pop    %ecx
    12fc:	fa                   	cli    
    12fd:	e4 a1                	in     $0xa1,%al
    12ff:	24 bf                	and    $0xbf,%al
    1301:	e6 a1                	out    %al,$0xa1
    1303:	c3                   	ret    
    1304:	90                   	nop
    1305:	90                   	nop
    1306:	90                   	nop
    1307:	90                   	nop
    1308:	90                   	nop
    1309:	90                   	nop
    130a:	90                   	nop
    130b:	90                   	nop
    130c:	90                   	nop
    130d:	90                   	nop
    130e:	90                   	nop
    130f:	90                   	nop

00001310 <hwint15>:
    1310:	e8 7c 00 00 00       	call   1391 <save>
    1315:	e4 a1                	in     $0xa1,%al
    1317:	0c 80                	or     $0x80,%al
    1319:	e6 a1                	out    %al,$0xa1
    131b:	b0 20                	mov    $0x20,%al
    131d:	e6 20                	out    %al,$0x20
    131f:	90                   	nop
    1320:	e6 a0                	out    %al,$0xa0
    1322:	fb                   	sti    
    1323:	6a 0f                	push   $0xf
    1325:	ff 15 bc b2 04 00    	call   *0x4b2bc
    132b:	59                   	pop    %ecx
    132c:	fa                   	cli    
    132d:	e4 a1                	in     $0xa1,%al
    132f:	24 7f                	and    $0x7f,%al
    1331:	e6 a1                	out    %al,$0xa1
    1333:	c3                   	ret    

00001334 <divide_error>:
    1334:	6a ff                	push   $0xffffffff
    1336:	6a 00                	push   $0x0
    1338:	eb 4e                	jmp    1388 <exception>

0000133a <single_step_exception>:
    133a:	6a ff                	push   $0xffffffff
    133c:	6a 01                	push   $0x1
    133e:	eb 48                	jmp    1388 <exception>

00001340 <nmi>:
    1340:	6a ff                	push   $0xffffffff
    1342:	6a 02                	push   $0x2
    1344:	eb 42                	jmp    1388 <exception>

00001346 <breakpoint_exception>:
    1346:	6a ff                	push   $0xffffffff
    1348:	6a 03                	push   $0x3
    134a:	eb 3c                	jmp    1388 <exception>

0000134c <overflow>:
    134c:	6a ff                	push   $0xffffffff
    134e:	6a 04                	push   $0x4
    1350:	eb 36                	jmp    1388 <exception>

00001352 <bounds_check>:
    1352:	6a ff                	push   $0xffffffff
    1354:	6a 05                	push   $0x5
    1356:	eb 30                	jmp    1388 <exception>

00001358 <inval_opcode>:
    1358:	6a ff                	push   $0xffffffff
    135a:	6a 06                	push   $0x6
    135c:	eb 2a                	jmp    1388 <exception>

0000135e <copr_not_available>:
    135e:	6a ff                	push   $0xffffffff
    1360:	6a 07                	push   $0x7
    1362:	eb 24                	jmp    1388 <exception>

00001364 <double_fault>:
    1364:	6a 08                	push   $0x8
    1366:	eb 20                	jmp    1388 <exception>

00001368 <copr_seg_overrun>:
    1368:	6a ff                	push   $0xffffffff
    136a:	6a 09                	push   $0x9
    136c:	eb 1a                	jmp    1388 <exception>

0000136e <inval_tss>:
    136e:	6a 0a                	push   $0xa
    1370:	eb 16                	jmp    1388 <exception>

00001372 <segment_not_present>:
    1372:	6a 0b                	push   $0xb
    1374:	eb 12                	jmp    1388 <exception>

00001376 <stack_exception>:
    1376:	6a 0c                	push   $0xc
    1378:	eb 0e                	jmp    1388 <exception>

0000137a <general_protection>:
    137a:	6a 0d                	push   $0xd
    137c:	eb 0a                	jmp    1388 <exception>

0000137e <page_fault>:
    137e:	6a 0e                	push   $0xe
    1380:	eb 06                	jmp    1388 <exception>

00001382 <copr_error>:
    1382:	6a ff                	push   $0xffffffff
    1384:	6a 10                	push   $0x10
    1386:	eb 00                	jmp    1388 <exception>

00001388 <exception>:
    1388:	e8 45 28 00 00       	call   3bd2 <exception_handler>
    138d:	83 c4 08             	add    $0x8,%esp
    1390:	f4                   	hlt    

00001391 <save>:
    1391:	60                   	pusha  
    1392:	1e                   	push   %ds
    1393:	06                   	push   %es
    1394:	0f a0                	push   %fs
    1396:	0f a8                	push   %gs
    1398:	89 d6                	mov    %edx,%esi
    139a:	66 8c d2             	mov    %ss,%dx
    139d:	8e da                	mov    %edx,%ds
    139f:	8e c2                	mov    %edx,%es
    13a1:	8e e2                	mov    %edx,%fs
    13a3:	89 f2                	mov    %esi,%edx
    13a5:	89 e6                	mov    %esp,%esi
    13a7:	ff 05 a0 93 04 00    	incl   0x493a0
    13ad:	83 3d a0 93 04 00 00 	cmpl   $0x0,0x493a0
    13b4:	75 0d                	jne    13c3 <save.1>
    13b6:	bc a0 ff 00 00       	mov    $0xffa0,%esp
    13bb:	68 eb 13 00 00       	push   $0x13eb
    13c0:	ff 66 30             	jmp    *0x30(%esi)

000013c3 <save.1>:
    13c3:	68 ff 13 00 00       	push   $0x13ff
    13c8:	ff 66 30             	jmp    *0x30(%esi)

000013cb <sys_call>:
    13cb:	e8 c1 ff ff ff       	call   1391 <save>
    13d0:	fb                   	sti    
    13d1:	56                   	push   %esi
    13d2:	ff 35 c0 b2 04 00    	pushl  0x4b2c0
    13d8:	52                   	push   %edx
    13d9:	51                   	push   %ecx
    13da:	53                   	push   %ebx
    13db:	ff 14 85 78 f7 00 00 	call   *0xf778(,%eax,4)
    13e2:	83 c4 10             	add    $0x10,%esp
    13e5:	5e                   	pop    %esi
    13e6:	89 46 2c             	mov    %eax,0x2c(%esi)
    13e9:	fa                   	cli    
    13ea:	c3                   	ret    

000013eb <restart>:
    13eb:	8b 25 c0 b2 04 00    	mov    0x4b2c0,%esp
    13f1:	0f 00 54 24 48       	lldt   0x48(%esp)
    13f6:	8d 44 24 48          	lea    0x48(%esp),%eax
    13fa:	a3 64 a4 04 00       	mov    %eax,0x4a464

000013ff <restart_reenter>:
    13ff:	ff 0d a0 93 04 00    	decl   0x493a0
    1405:	0f a9                	pop    %gs
    1407:	0f a1                	pop    %fs
    1409:	07                   	pop    %es
    140a:	1f                   	pop    %ds
    140b:	61                   	popa   
    140c:	83 c4 04             	add    $0x4,%esp
    140f:	cf                   	iret   

00001410 <sendrec>:
    1410:	b8 01 00 00 00       	mov    $0x1,%eax
    1415:	8b 5c 24 04          	mov    0x4(%esp),%ebx
    1419:	8b 4c 24 08          	mov    0x8(%esp),%ecx
    141d:	8b 54 24 0c          	mov    0xc(%esp),%edx
    1421:	cd 90                	int    $0x90
    1423:	c3                   	ret    

00001424 <printx>:
    1424:	b8 00 00 00 00       	mov    $0x0,%eax
    1429:	8b 54 24 04          	mov    0x4(%esp),%edx
    142d:	cd 90                	int    $0x90
    142f:	c3                   	ret    

00001430 <cstart>:
    1430:	55                   	push   %ebp
    1431:	89 e5                	mov    %esp,%ebp
    1433:	83 ec 18             	sub    $0x18,%esp
    1436:	83 ec 0c             	sub    $0xc,%esp
    1439:	68 80 a7 00 00       	push   $0xa780
    143e:	e8 bd 51 00 00       	call   6600 <disp_str>
    1443:	83 c4 10             	add    $0x10,%esp
    1446:	b8 2c a8 04 00       	mov    $0x4a82c,%eax
    144b:	0f b7 00             	movzwl (%eax),%eax
    144e:	0f b7 c0             	movzwl %ax,%eax
    1451:	83 c0 01             	add    $0x1,%eax
    1454:	ba 2e a8 04 00       	mov    $0x4a82e,%edx
    1459:	8b 12                	mov    (%edx),%edx
    145b:	83 ec 04             	sub    $0x4,%esp
    145e:	50                   	push   %eax
    145f:	52                   	push   %edx
    1460:	68 c0 93 04 00       	push   $0x493c0
    1465:	e8 56 54 00 00       	call   68c0 <memcpy>
    146a:	83 c4 10             	add    $0x10,%esp
    146d:	c7 45 f4 2c a8 04 00 	movl   $0x4a82c,-0xc(%ebp)
    1474:	c7 45 f0 2e a8 04 00 	movl   $0x4a82e,-0x10(%ebp)
    147b:	8b 45 f4             	mov    -0xc(%ebp),%eax
    147e:	66 c7 00 ff 03       	movw   $0x3ff,(%eax)
    1483:	ba c0 93 04 00       	mov    $0x493c0,%edx
    1488:	8b 45 f0             	mov    -0x10(%ebp),%eax
    148b:	89 10                	mov    %edx,(%eax)
    148d:	c7 45 ec 80 08 01 00 	movl   $0x10880,-0x14(%ebp)
    1494:	c7 45 e8 82 08 01 00 	movl   $0x10882,-0x18(%ebp)
    149b:	8b 45 ec             	mov    -0x14(%ebp),%eax
    149e:	66 c7 00 ff 07       	movw   $0x7ff,(%eax)
    14a3:	ba 40 a8 04 00       	mov    $0x4a840,%edx
    14a8:	8b 45 e8             	mov    -0x18(%ebp),%eax
    14ab:	89 10                	mov    %edx,(%eax)
    14ad:	e8 47 22 00 00       	call   36f9 <init_prot>
    14b2:	83 ec 0c             	sub    $0xc,%esp
    14b5:	68 aa a7 00 00       	push   $0xa7aa
    14ba:	e8 41 51 00 00       	call   6600 <disp_str>
    14bf:	83 c4 10             	add    $0x10,%esp
    14c2:	90                   	nop
    14c3:	c9                   	leave  
    14c4:	c3                   	ret    

000014c5 <kernel_main>:
    14c5:	55                   	push   %ebp
    14c6:	89 e5                	mov    %esp,%ebp
    14c8:	83 ec 28             	sub    $0x28,%esp
    14cb:	83 ec 0c             	sub    $0xc,%esp
    14ce:	68 c8 a7 00 00       	push   $0xa7c8
    14d3:	e8 28 51 00 00       	call   6600 <disp_str>
    14d8:	83 c4 10             	add    $0x10,%esp
    14db:	c7 45 f0 e0 b2 04 00 	movl   $0x4b2e0,-0x10(%ebp)
    14e2:	c7 45 ec a0 93 04 00 	movl   $0x493a0,-0x14(%ebp)
    14e9:	66 c7 45 ea 28 00    	movw   $0x28,-0x16(%ebp)
    14ef:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
    14f6:	e9 11 02 00 00       	jmp    170c <kernel_main+0x247>
    14fb:	83 7d e0 03          	cmpl   $0x3,-0x20(%ebp)
    14ff:	7f 2d                	jg     152e <kernel_main+0x69>
    1501:	8b 55 e0             	mov    -0x20(%ebp),%edx
    1504:	89 d0                	mov    %edx,%eax
    1506:	c1 e0 02             	shl    $0x2,%eax
    1509:	01 d0                	add    %edx,%eax
    150b:	c1 e0 03             	shl    $0x3,%eax
    150e:	05 60 f6 00 00       	add    $0xf660,%eax
    1513:	89 45 f4             	mov    %eax,-0xc(%ebp)
    1516:	c6 45 e9 01          	movb   $0x1,-0x17(%ebp)
    151a:	c6 45 e8 01          	movb   $0x1,-0x18(%ebp)
    151e:	c7 45 e4 02 12 00 00 	movl   $0x1202,-0x1c(%ebp)
    1525:	c7 45 d8 0f 00 00 00 	movl   $0xf,-0x28(%ebp)
    152c:	eb 30                	jmp    155e <kernel_main+0x99>
    152e:	8b 55 e0             	mov    -0x20(%ebp),%edx
    1531:	89 d0                	mov    %edx,%eax
    1533:	c1 e0 02             	shl    $0x2,%eax
    1536:	01 d0                	add    %edx,%eax
    1538:	c1 e0 03             	shl    $0x3,%eax
    153b:	2d a0 00 00 00       	sub    $0xa0,%eax
    1540:	05 00 f7 00 00       	add    $0xf700,%eax
    1545:	89 45 f4             	mov    %eax,-0xc(%ebp)
    1548:	c6 45 e9 03          	movb   $0x3,-0x17(%ebp)
    154c:	c6 45 e8 03          	movb   $0x3,-0x18(%ebp)
    1550:	c7 45 e4 02 02 00 00 	movl   $0x202,-0x1c(%ebp)
    1557:	c7 45 d8 05 00 00 00 	movl   $0x5,-0x28(%ebp)
    155e:	8b 45 f4             	mov    -0xc(%ebp),%eax
    1561:	8d 50 08             	lea    0x8(%eax),%edx
    1564:	8b 45 f0             	mov    -0x10(%ebp),%eax
    1567:	83 c0 68             	add    $0x68,%eax
    156a:	83 ec 08             	sub    $0x8,%esp
    156d:	52                   	push   %edx
    156e:	50                   	push   %eax
    156f:	e8 96 53 00 00       	call   690a <strcpy>
    1574:	83 c4 10             	add    $0x10,%esp
    1577:	8b 55 e0             	mov    -0x20(%ebp),%edx
    157a:	8b 45 f0             	mov    -0x10(%ebp),%eax
    157d:	89 50 64             	mov    %edx,0x64(%eax)
    1580:	8b 45 f0             	mov    -0x10(%ebp),%eax
    1583:	0f b7 55 ea          	movzwl -0x16(%ebp),%edx
    1587:	66 89 50 48          	mov    %dx,0x48(%eax)
    158b:	8b 45 f0             	mov    -0x10(%ebp),%eax
    158e:	83 c0 4a             	add    $0x4a,%eax
    1591:	83 ec 04             	sub    $0x4,%esp
    1594:	6a 08                	push   $0x8
    1596:	68 c8 93 04 00       	push   $0x493c8
    159b:	50                   	push   %eax
    159c:	e8 1f 53 00 00       	call   68c0 <memcpy>
    15a1:	83 c4 10             	add    $0x10,%esp
    15a4:	0f b6 45 e9          	movzbl -0x17(%ebp),%eax
    15a8:	c1 e0 05             	shl    $0x5,%eax
    15ab:	83 c8 98             	or     $0xffffff98,%eax
    15ae:	89 c2                	mov    %eax,%edx
    15b0:	8b 45 f0             	mov    -0x10(%ebp),%eax
    15b3:	88 50 4f             	mov    %dl,0x4f(%eax)
    15b6:	8b 45 f0             	mov    -0x10(%ebp),%eax
    15b9:	83 c0 52             	add    $0x52,%eax
    15bc:	83 ec 04             	sub    $0x4,%esp
    15bf:	6a 08                	push   $0x8
    15c1:	68 d0 93 04 00       	push   $0x493d0
    15c6:	50                   	push   %eax
    15c7:	e8 f4 52 00 00       	call   68c0 <memcpy>
    15cc:	83 c4 10             	add    $0x10,%esp
    15cf:	0f b6 45 e9          	movzbl -0x17(%ebp),%eax
    15d3:	c1 e0 05             	shl    $0x5,%eax
    15d6:	83 c8 92             	or     $0xffffff92,%eax
    15d9:	89 c2                	mov    %eax,%edx
    15db:	8b 45 f0             	mov    -0x10(%ebp),%eax
    15de:	88 50 57             	mov    %dl,0x57(%eax)
    15e1:	0f b6 45 e8          	movzbl -0x18(%ebp),%eax
    15e5:	83 c8 04             	or     $0x4,%eax
    15e8:	0f b6 d0             	movzbl %al,%edx
    15eb:	8b 45 f0             	mov    -0x10(%ebp),%eax
    15ee:	89 50 38             	mov    %edx,0x38(%eax)
    15f1:	0f b6 45 e8          	movzbl -0x18(%ebp),%eax
    15f5:	83 c8 0c             	or     $0xc,%eax
    15f8:	0f b6 d0             	movzbl %al,%edx
    15fb:	8b 45 f0             	mov    -0x10(%ebp),%eax
    15fe:	89 50 0c             	mov    %edx,0xc(%eax)
    1601:	0f b6 45 e8          	movzbl -0x18(%ebp),%eax
    1605:	83 c8 0c             	or     $0xc,%eax
    1608:	0f b6 d0             	movzbl %al,%edx
    160b:	8b 45 f0             	mov    -0x10(%ebp),%eax
    160e:	89 50 08             	mov    %edx,0x8(%eax)
    1611:	0f b6 45 e8          	movzbl -0x18(%ebp),%eax
    1615:	83 c8 0c             	or     $0xc,%eax
    1618:	0f b6 d0             	movzbl %al,%edx
    161b:	8b 45 f0             	mov    -0x10(%ebp),%eax
    161e:	89 50 04             	mov    %edx,0x4(%eax)
    1621:	0f b6 45 e8          	movzbl -0x18(%ebp),%eax
    1625:	83 c8 0c             	or     $0xc,%eax
    1628:	0f b6 d0             	movzbl %al,%edx
    162b:	8b 45 f0             	mov    -0x10(%ebp),%eax
    162e:	89 50 44             	mov    %edx,0x44(%eax)
    1631:	0f b6 45 e8          	movzbl -0x18(%ebp),%eax
    1635:	83 c8 18             	or     $0x18,%eax
    1638:	0f b6 d0             	movzbl %al,%edx
    163b:	8b 45 f0             	mov    -0x10(%ebp),%eax
    163e:	89 10                	mov    %edx,(%eax)
    1640:	8b 45 f4             	mov    -0xc(%ebp),%eax
    1643:	8b 00                	mov    (%eax),%eax
    1645:	89 c2                	mov    %eax,%edx
    1647:	8b 45 f0             	mov    -0x10(%ebp),%eax
    164a:	89 50 34             	mov    %edx,0x34(%eax)
    164d:	8b 55 ec             	mov    -0x14(%ebp),%edx
    1650:	8b 45 f0             	mov    -0x10(%ebp),%eax
    1653:	89 50 40             	mov    %edx,0x40(%eax)
    1656:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    1659:	8b 45 f0             	mov    -0x10(%ebp),%eax
    165c:	89 50 3c             	mov    %edx,0x3c(%eax)
    165f:	8b 45 f0             	mov    -0x10(%ebp),%eax
    1662:	c7 40 78 00 00 00 00 	movl   $0x0,0x78(%eax)
    1669:	8b 45 f0             	mov    -0x10(%ebp),%eax
    166c:	c7 40 7c 00 00 00 00 	movl   $0x0,0x7c(%eax)
    1673:	8b 45 f0             	mov    -0x10(%ebp),%eax
    1676:	c7 80 80 00 00 00 1b 	movl   $0x1b,0x80(%eax)
    167d:	00 00 00 
    1680:	8b 45 f0             	mov    -0x10(%ebp),%eax
    1683:	c7 80 84 00 00 00 1b 	movl   $0x1b,0x84(%eax)
    168a:	00 00 00 
    168d:	8b 45 f0             	mov    -0x10(%ebp),%eax
    1690:	c7 80 88 00 00 00 00 	movl   $0x0,0x88(%eax)
    1697:	00 00 00 
    169a:	8b 45 f0             	mov    -0x10(%ebp),%eax
    169d:	c7 80 8c 00 00 00 00 	movl   $0x0,0x8c(%eax)
    16a4:	00 00 00 
    16a7:	8b 45 f0             	mov    -0x10(%ebp),%eax
    16aa:	c7 80 90 00 00 00 00 	movl   $0x0,0x90(%eax)
    16b1:	00 00 00 
    16b4:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
    16bb:	eb 15                	jmp    16d2 <kernel_main+0x20d>
    16bd:	8b 45 f0             	mov    -0x10(%ebp),%eax
    16c0:	8b 55 dc             	mov    -0x24(%ebp),%edx
    16c3:	83 c2 24             	add    $0x24,%edx
    16c6:	c7 44 90 04 00 00 00 	movl   $0x0,0x4(%eax,%edx,4)
    16cd:	00 
    16ce:	83 45 dc 01          	addl   $0x1,-0x24(%ebp)
    16d2:	83 7d dc 3f          	cmpl   $0x3f,-0x24(%ebp)
    16d6:	7e e5                	jle    16bd <kernel_main+0x1f8>
    16d8:	8b 45 f0             	mov    -0x10(%ebp),%eax
    16db:	8b 55 d8             	mov    -0x28(%ebp),%edx
    16de:	89 50 60             	mov    %edx,0x60(%eax)
    16e1:	8b 45 f0             	mov    -0x10(%ebp),%eax
    16e4:	8b 50 60             	mov    0x60(%eax),%edx
    16e7:	8b 45 f0             	mov    -0x10(%ebp),%eax
    16ea:	89 50 5c             	mov    %edx,0x5c(%eax)
    16ed:	8b 45 f4             	mov    -0xc(%ebp),%eax
    16f0:	8b 40 04             	mov    0x4(%eax),%eax
    16f3:	f7 d8                	neg    %eax
    16f5:	01 45 ec             	add    %eax,-0x14(%ebp)
    16f8:	81 45 f0 94 01 00 00 	addl   $0x194,-0x10(%ebp)
    16ff:	83 45 f4 28          	addl   $0x28,-0xc(%ebp)
    1703:	66 83 45 ea 08       	addw   $0x8,-0x16(%ebp)
    1708:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
    170c:	83 7d e0 06          	cmpl   $0x6,-0x20(%ebp)
    1710:	0f 8e e5 fd ff ff    	jle    14fb <kernel_main+0x36>
    1716:	c7 05 a0 93 04 00 00 	movl   $0x0,0x493a0
    171d:	00 00 00 
    1720:	c7 05 20 b2 04 00 00 	movl   $0x0,0x4b220
    1727:	00 00 00 
    172a:	c7 05 c0 b2 04 00 e0 	movl   $0x4b2e0,0x4b2c0
    1731:	b2 04 00 
    1734:	e8 c4 05 00 00       	call   1cfd <init_clock>
    1739:	e8 81 06 00 00       	call   1dbf <init_keyboard>
    173e:	e8 a8 fc ff ff       	call   13eb <restart>
    1743:	eb fe                	jmp    1743 <kernel_main+0x27e>

00001745 <get_ticks>:
    1745:	55                   	push   %ebp
    1746:	89 e5                	mov    %esp,%ebp
    1748:	83 ec 38             	sub    $0x38,%esp
    174b:	83 ec 0c             	sub    $0xc,%esp
    174e:	8d 45 c8             	lea    -0x38(%ebp),%eax
    1751:	50                   	push   %eax
    1752:	e8 c8 28 00 00       	call   401f <reset_msg>
    1757:	83 c4 10             	add    $0x10,%esp
    175a:	c7 45 cc 02 00 00 00 	movl   $0x2,-0x34(%ebp)
    1761:	83 ec 04             	sub    $0x4,%esp
    1764:	8d 45 c8             	lea    -0x38(%ebp),%eax
    1767:	50                   	push   %eax
    1768:	6a 01                	push   $0x1
    176a:	6a 03                	push   $0x3
    176c:	e8 46 27 00 00       	call   3eb7 <send_recv>
    1771:	83 c4 10             	add    $0x10,%esp
    1774:	8b 45 d0             	mov    -0x30(%ebp),%eax
    1777:	c9                   	leave  
    1778:	c3                   	ret    

00001779 <TestA>:
    1779:	55                   	push   %ebp
    177a:	89 e5                	mov    %esp,%ebp
    177c:	53                   	push   %ebx
    177d:	83 ec 54             	sub    $0x54,%esp
    1780:	89 e0                	mov    %esp,%eax
    1782:	89 c3                	mov    %eax,%ebx
    1784:	c7 45 d3 62 6c 61 68 	movl   $0x68616c62,-0x2d(%ebp)
    178b:	c7 45 d7 00 00 00 00 	movl   $0x0,-0x29(%ebp)
    1792:	c7 45 db 00 00 00 00 	movl   $0x0,-0x25(%ebp)
    1799:	c6 45 df 00          	movb   $0x0,-0x21(%ebp)
    179d:	c7 45 cd 61 62 63 64 	movl   $0x64636261,-0x33(%ebp)
    17a4:	66 c7 45 d1 65 00    	movw   $0x65,-0x2f(%ebp)
    17aa:	c7 45 f0 03 00 00 00 	movl   $0x3,-0x10(%ebp)
    17b1:	8b 45 f0             	mov    -0x10(%ebp),%eax
    17b4:	83 e8 01             	sub    $0x1,%eax
    17b7:	89 45 ec             	mov    %eax,-0x14(%ebp)
    17ba:	8b 45 f0             	mov    -0x10(%ebp),%eax
    17bd:	ba 10 00 00 00       	mov    $0x10,%edx
    17c2:	83 ea 01             	sub    $0x1,%edx
    17c5:	01 d0                	add    %edx,%eax
    17c7:	b9 10 00 00 00       	mov    $0x10,%ecx
    17cc:	ba 00 00 00 00       	mov    $0x0,%edx
    17d1:	f7 f1                	div    %ecx
    17d3:	6b c0 10             	imul   $0x10,%eax,%eax
    17d6:	29 c4                	sub    %eax,%esp
    17d8:	89 e0                	mov    %esp,%eax
    17da:	83 c0 00             	add    $0x0,%eax
    17dd:	89 45 e8             	mov    %eax,-0x18(%ebp)
    17e0:	83 ec 0c             	sub    $0xc,%esp
    17e3:	8d 45 cd             	lea    -0x33(%ebp),%eax
    17e6:	50                   	push   %eax
    17e7:	e8 36 51 00 00       	call   6922 <strlen>
    17ec:	83 c4 10             	add    $0x10,%esp
    17ef:	39 45 f0             	cmp    %eax,-0x10(%ebp)
    17f2:	7e 1c                	jle    1810 <TestA+0x97>
    17f4:	68 8c 00 00 00       	push   $0x8c
    17f9:	68 e8 a7 00 00       	push   $0xa7e8
    17fe:	68 e8 a7 00 00       	push   $0xa7e8
    1803:	68 f6 a7 00 00       	push   $0xa7f6
    1808:	e8 86 52 00 00       	call   6a93 <assertion_failure>
    180d:	83 c4 10             	add    $0x10,%esp
    1810:	83 ec 08             	sub    $0x8,%esp
    1813:	6a 03                	push   $0x3
    1815:	8d 45 d3             	lea    -0x2d(%ebp),%eax
    1818:	50                   	push   %eax
    1819:	e8 ae 52 00 00       	call   6acc <open>
    181e:	83 c4 10             	add    $0x10,%esp
    1821:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    1824:	83 7d e4 ff          	cmpl   $0xffffffff,-0x1c(%ebp)
    1828:	75 1c                	jne    1846 <TestA+0xcd>
    182a:	68 90 00 00 00       	push   $0x90
    182f:	68 e8 a7 00 00       	push   $0xa7e8
    1834:	68 e8 a7 00 00       	push   $0xa7e8
    1839:	68 0f a8 00 00       	push   $0xa80f
    183e:	e8 50 52 00 00       	call   6a93 <assertion_failure>
    1843:	83 c4 10             	add    $0x10,%esp
    1846:	83 ec 04             	sub    $0x4,%esp
    1849:	ff 75 e4             	pushl  -0x1c(%ebp)
    184c:	8d 45 d3             	lea    -0x2d(%ebp),%eax
    184f:	50                   	push   %eax
    1850:	68 18 a8 00 00       	push   $0xa818
    1855:	e8 4a 4a 00 00       	call   62a4 <printf>
    185a:	83 c4 10             	add    $0x10,%esp
    185d:	83 ec 0c             	sub    $0xc,%esp
    1860:	8d 45 cd             	lea    -0x33(%ebp),%eax
    1863:	50                   	push   %eax
    1864:	e8 b9 50 00 00       	call   6922 <strlen>
    1869:	83 c4 10             	add    $0x10,%esp
    186c:	83 ec 04             	sub    $0x4,%esp
    186f:	50                   	push   %eax
    1870:	8d 45 cd             	lea    -0x33(%ebp),%eax
    1873:	50                   	push   %eax
    1874:	ff 75 e4             	pushl  -0x1c(%ebp)
    1877:	e8 ea 52 00 00       	call   6b66 <write>
    187c:	83 c4 10             	add    $0x10,%esp
    187f:	89 45 e0             	mov    %eax,-0x20(%ebp)
    1882:	83 ec 0c             	sub    $0xc,%esp
    1885:	8d 45 cd             	lea    -0x33(%ebp),%eax
    1888:	50                   	push   %eax
    1889:	e8 94 50 00 00       	call   6922 <strlen>
    188e:	83 c4 10             	add    $0x10,%esp
    1891:	39 45 e0             	cmp    %eax,-0x20(%ebp)
    1894:	74 1c                	je     18b2 <TestA+0x139>
    1896:	68 95 00 00 00       	push   $0x95
    189b:	68 e8 a7 00 00       	push   $0xa7e8
    18a0:	68 e8 a7 00 00       	push   $0xa7e8
    18a5:	68 32 a8 00 00       	push   $0xa832
    18aa:	e8 e4 51 00 00       	call   6a93 <assertion_failure>
    18af:	83 c4 10             	add    $0x10,%esp
    18b2:	83 ec 0c             	sub    $0xc,%esp
    18b5:	ff 75 e4             	pushl  -0x1c(%ebp)
    18b8:	e8 e0 52 00 00       	call   6b9d <close>
    18bd:	83 c4 10             	add    $0x10,%esp
    18c0:	83 ec 08             	sub    $0x8,%esp
    18c3:	6a 02                	push   $0x2
    18c5:	8d 45 d3             	lea    -0x2d(%ebp),%eax
    18c8:	50                   	push   %eax
    18c9:	e8 fe 51 00 00       	call   6acc <open>
    18ce:	83 c4 10             	add    $0x10,%esp
    18d1:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    18d4:	83 7d e4 ff          	cmpl   $0xffffffff,-0x1c(%ebp)
    18d8:	75 1c                	jne    18f6 <TestA+0x17d>
    18da:	68 9c 00 00 00       	push   $0x9c
    18df:	68 e8 a7 00 00       	push   $0xa7e8
    18e4:	68 e8 a7 00 00       	push   $0xa7e8
    18e9:	68 0f a8 00 00       	push   $0xa80f
    18ee:	e8 a0 51 00 00       	call   6a93 <assertion_failure>
    18f3:	83 c4 10             	add    $0x10,%esp
    18f6:	83 ec 08             	sub    $0x8,%esp
    18f9:	ff 75 e4             	pushl  -0x1c(%ebp)
    18fc:	68 44 a8 00 00       	push   $0xa844
    1901:	e8 9e 49 00 00       	call   62a4 <printf>
    1906:	83 c4 10             	add    $0x10,%esp
    1909:	8b 45 e8             	mov    -0x18(%ebp),%eax
    190c:	83 ec 04             	sub    $0x4,%esp
    190f:	ff 75 f0             	pushl  -0x10(%ebp)
    1912:	50                   	push   %eax
    1913:	ff 75 e4             	pushl  -0x1c(%ebp)
    1916:	e8 14 52 00 00       	call   6b2f <read>
    191b:	83 c4 10             	add    $0x10,%esp
    191e:	89 45 e0             	mov    %eax,-0x20(%ebp)
    1921:	8b 45 e0             	mov    -0x20(%ebp),%eax
    1924:	3b 45 f0             	cmp    -0x10(%ebp),%eax
    1927:	74 1c                	je     1945 <TestA+0x1cc>
    1929:	68 a1 00 00 00       	push   $0xa1
    192e:	68 e8 a7 00 00       	push   $0xa7e8
    1933:	68 e8 a7 00 00       	push   $0xa7e8
    1938:	68 59 a8 00 00       	push   $0xa859
    193d:	e8 51 51 00 00       	call   6a93 <assertion_failure>
    1942:	83 c4 10             	add    $0x10,%esp
    1945:	8b 55 e8             	mov    -0x18(%ebp),%edx
    1948:	8b 45 e0             	mov    -0x20(%ebp),%eax
    194b:	01 d0                	add    %edx,%eax
    194d:	c6 00 00             	movb   $0x0,(%eax)
    1950:	8b 45 e8             	mov    -0x18(%ebp),%eax
    1953:	83 ec 04             	sub    $0x4,%esp
    1956:	50                   	push   %eax
    1957:	ff 75 e0             	pushl  -0x20(%ebp)
    195a:	68 67 a8 00 00       	push   $0xa867
    195f:	e8 40 49 00 00       	call   62a4 <printf>
    1964:	83 c4 10             	add    $0x10,%esp
    1967:	83 ec 0c             	sub    $0xc,%esp
    196a:	ff 75 e4             	pushl  -0x1c(%ebp)
    196d:	e8 2b 52 00 00       	call   6b9d <close>
    1972:	83 c4 10             	add    $0x10,%esp
    1975:	c7 45 c0 7a a8 00 00 	movl   $0xa87a,-0x40(%ebp)
    197c:	c7 45 c4 7f a8 00 00 	movl   $0xa87f,-0x3c(%ebp)
    1983:	c7 45 c8 84 a8 00 00 	movl   $0xa884,-0x38(%ebp)
    198a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    1991:	eb 67                	jmp    19fa <TestA+0x281>
    1993:	8b 45 f4             	mov    -0xc(%ebp),%eax
    1996:	8b 44 85 c0          	mov    -0x40(%ebp,%eax,4),%eax
    199a:	83 ec 08             	sub    $0x8,%esp
    199d:	6a 03                	push   $0x3
    199f:	50                   	push   %eax
    19a0:	e8 27 51 00 00       	call   6acc <open>
    19a5:	83 c4 10             	add    $0x10,%esp
    19a8:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    19ab:	83 7d e4 ff          	cmpl   $0xffffffff,-0x1c(%ebp)
    19af:	75 1c                	jne    19cd <TestA+0x254>
    19b1:	68 ad 00 00 00       	push   $0xad
    19b6:	68 e8 a7 00 00       	push   $0xa7e8
    19bb:	68 e8 a7 00 00       	push   $0xa7e8
    19c0:	68 0f a8 00 00       	push   $0xa80f
    19c5:	e8 c9 50 00 00       	call   6a93 <assertion_failure>
    19ca:	83 c4 10             	add    $0x10,%esp
    19cd:	8b 45 f4             	mov    -0xc(%ebp),%eax
    19d0:	8b 44 85 c0          	mov    -0x40(%ebp,%eax,4),%eax
    19d4:	83 ec 04             	sub    $0x4,%esp
    19d7:	ff 75 e4             	pushl  -0x1c(%ebp)
    19da:	50                   	push   %eax
    19db:	68 18 a8 00 00       	push   $0xa818
    19e0:	e8 bf 48 00 00       	call   62a4 <printf>
    19e5:	83 c4 10             	add    $0x10,%esp
    19e8:	83 ec 0c             	sub    $0xc,%esp
    19eb:	ff 75 e4             	pushl  -0x1c(%ebp)
    19ee:	e8 aa 51 00 00       	call   6b9d <close>
    19f3:	83 c4 10             	add    $0x10,%esp
    19f6:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    19fa:	8b 45 f4             	mov    -0xc(%ebp),%eax
    19fd:	83 f8 02             	cmp    $0x2,%eax
    1a00:	76 91                	jbe    1993 <TestA+0x21a>
    1a02:	c7 45 b4 7f a8 00 00 	movl   $0xa87f,-0x4c(%ebp)
    1a09:	c7 45 b8 7a a8 00 00 	movl   $0xa87a,-0x48(%ebp)
    1a10:	c7 45 bc 84 a8 00 00 	movl   $0xa884,-0x44(%ebp)
    1a17:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    1a1e:	eb 4d                	jmp    1a6d <TestA+0x2f4>
    1a20:	8b 45 f4             	mov    -0xc(%ebp),%eax
    1a23:	8b 44 85 b4          	mov    -0x4c(%ebp,%eax,4),%eax
    1a27:	83 ec 0c             	sub    $0xc,%esp
    1a2a:	50                   	push   %eax
    1a2b:	e8 98 51 00 00       	call   6bc8 <unlink>
    1a30:	83 c4 10             	add    $0x10,%esp
    1a33:	85 c0                	test   %eax,%eax
    1a35:	75 1a                	jne    1a51 <TestA+0x2d8>
    1a37:	8b 45 f4             	mov    -0xc(%ebp),%eax
    1a3a:	8b 44 85 b4          	mov    -0x4c(%ebp,%eax,4),%eax
    1a3e:	83 ec 08             	sub    $0x8,%esp
    1a41:	50                   	push   %eax
    1a42:	68 89 a8 00 00       	push   $0xa889
    1a47:	e8 58 48 00 00       	call   62a4 <printf>
    1a4c:	83 c4 10             	add    $0x10,%esp
    1a4f:	eb 18                	jmp    1a69 <TestA+0x2f0>
    1a51:	8b 45 f4             	mov    -0xc(%ebp),%eax
    1a54:	8b 44 85 b4          	mov    -0x4c(%ebp,%eax,4),%eax
    1a58:	83 ec 08             	sub    $0x8,%esp
    1a5b:	50                   	push   %eax
    1a5c:	68 9b a8 00 00       	push   $0xa89b
    1a61:	e8 3e 48 00 00       	call   62a4 <printf>
    1a66:	83 c4 10             	add    $0x10,%esp
    1a69:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    1a6d:	8b 45 f4             	mov    -0xc(%ebp),%eax
    1a70:	83 f8 02             	cmp    $0x2,%eax
    1a73:	76 ab                	jbe    1a20 <TestA+0x2a7>
    1a75:	83 ec 0c             	sub    $0xc,%esp
    1a78:	68 b6 a8 00 00       	push   $0xa8b6
    1a7d:	e8 f6 4f 00 00       	call   6a78 <spin>
    1a82:	83 c4 10             	add    $0x10,%esp
    1a85:	89 dc                	mov    %ebx,%esp
    1a87:	90                   	nop
    1a88:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1a8b:	c9                   	leave  
    1a8c:	c3                   	ret    

00001a8d <TestB>:
    1a8d:	55                   	push   %ebp
    1a8e:	89 e5                	mov    %esp,%ebp
    1a90:	81 ec a8 00 00 00    	sub    $0xa8,%esp
    1a96:	c7 45 e2 2f 64 65 76 	movl   $0x7665642f,-0x1e(%ebp)
    1a9d:	c7 45 e6 5f 74 74 79 	movl   $0x7974745f,-0x1a(%ebp)
    1aa4:	66 c7 45 ea 31 00    	movw   $0x31,-0x16(%ebp)
    1aaa:	83 ec 08             	sub    $0x8,%esp
    1aad:	6a 02                	push   $0x2
    1aaf:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    1ab2:	50                   	push   %eax
    1ab3:	e8 14 50 00 00       	call   6acc <open>
    1ab8:	83 c4 10             	add    $0x10,%esp
    1abb:	89 45 f4             	mov    %eax,-0xc(%ebp)
    1abe:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    1ac2:	74 1c                	je     1ae0 <TestB+0x53>
    1ac4:	68 c8 00 00 00       	push   $0xc8
    1ac9:	68 e8 a7 00 00       	push   $0xa7e8
    1ace:	68 e8 a7 00 00       	push   $0xa7e8
    1ad3:	68 bc a8 00 00       	push   $0xa8bc
    1ad8:	e8 b6 4f 00 00       	call   6a93 <assertion_failure>
    1add:	83 c4 10             	add    $0x10,%esp
    1ae0:	83 ec 08             	sub    $0x8,%esp
    1ae3:	6a 02                	push   $0x2
    1ae5:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    1ae8:	50                   	push   %eax
    1ae9:	e8 de 4f 00 00       	call   6acc <open>
    1aee:	83 c4 10             	add    $0x10,%esp
    1af1:	89 45 f0             	mov    %eax,-0x10(%ebp)
    1af4:	83 7d f0 01          	cmpl   $0x1,-0x10(%ebp)
    1af8:	74 1c                	je     1b16 <TestB+0x89>
    1afa:	68 ca 00 00 00       	push   $0xca
    1aff:	68 e8 a7 00 00       	push   $0xa7e8
    1b04:	68 e8 a7 00 00       	push   $0xa7e8
    1b09:	68 ca a8 00 00       	push   $0xa8ca
    1b0e:	e8 80 4f 00 00       	call   6a93 <assertion_failure>
    1b13:	83 c4 10             	add    $0x10,%esp
    1b16:	83 ec 04             	sub    $0x4,%esp
    1b19:	6a 02                	push   $0x2
    1b1b:	68 d9 a8 00 00       	push   $0xa8d9
    1b20:	ff 75 f0             	pushl  -0x10(%ebp)
    1b23:	e8 3e 50 00 00       	call   6b66 <write>
    1b28:	83 c4 10             	add    $0x10,%esp
    1b2b:	83 ec 04             	sub    $0x4,%esp
    1b2e:	6a 46                	push   $0x46
    1b30:	8d 85 62 ff ff ff    	lea    -0x9e(%ebp),%eax
    1b36:	50                   	push   %eax
    1b37:	ff 75 f4             	pushl  -0xc(%ebp)
    1b3a:	e8 f0 4f 00 00       	call   6b2f <read>
    1b3f:	83 c4 10             	add    $0x10,%esp
    1b42:	89 45 ec             	mov    %eax,-0x14(%ebp)
    1b45:	8d 95 62 ff ff ff    	lea    -0x9e(%ebp),%edx
    1b4b:	8b 45 ec             	mov    -0x14(%ebp),%eax
    1b4e:	01 d0                	add    %edx,%eax
    1b50:	c6 00 00             	movb   $0x0,(%eax)
    1b53:	83 ec 08             	sub    $0x8,%esp
    1b56:	68 dc a8 00 00       	push   $0xa8dc
    1b5b:	8d 85 62 ff ff ff    	lea    -0x9e(%ebp),%eax
    1b61:	50                   	push   %eax
    1b62:	e8 43 4e 00 00       	call   69aa <strcmp>
    1b67:	83 c4 10             	add    $0x10,%esp
    1b6a:	85 c0                	test   %eax,%eax
    1b6c:	75 17                	jne    1b85 <TestB+0xf8>
    1b6e:	83 ec 04             	sub    $0x4,%esp
    1b71:	6a 0d                	push   $0xd
    1b73:	68 e2 a8 00 00       	push   $0xa8e2
    1b78:	ff 75 f0             	pushl  -0x10(%ebp)
    1b7b:	e8 e6 4f 00 00       	call   6b66 <write>
    1b80:	83 c4 10             	add    $0x10,%esp
    1b83:	eb 91                	jmp    1b16 <TestB+0x89>
    1b85:	0f b6 85 62 ff ff ff 	movzbl -0x9e(%ebp),%eax
    1b8c:	84 c0                	test   %al,%al
    1b8e:	74 86                	je     1b16 <TestB+0x89>
    1b90:	83 ec 04             	sub    $0x4,%esp
    1b93:	6a 01                	push   $0x1
    1b95:	68 f0 a8 00 00       	push   $0xa8f0
    1b9a:	ff 75 f0             	pushl  -0x10(%ebp)
    1b9d:	e8 c4 4f 00 00       	call   6b66 <write>
    1ba2:	83 c4 10             	add    $0x10,%esp
    1ba5:	83 ec 04             	sub    $0x4,%esp
    1ba8:	ff 75 ec             	pushl  -0x14(%ebp)
    1bab:	8d 85 62 ff ff ff    	lea    -0x9e(%ebp),%eax
    1bb1:	50                   	push   %eax
    1bb2:	ff 75 f0             	pushl  -0x10(%ebp)
    1bb5:	e8 ac 4f 00 00       	call   6b66 <write>
    1bba:	83 c4 10             	add    $0x10,%esp
    1bbd:	83 ec 04             	sub    $0x4,%esp
    1bc0:	6a 02                	push   $0x2
    1bc2:	68 f2 a8 00 00       	push   $0xa8f2
    1bc7:	ff 75 f0             	pushl  -0x10(%ebp)
    1bca:	e8 97 4f 00 00       	call   6b66 <write>
    1bcf:	83 c4 10             	add    $0x10,%esp
    1bd2:	e9 3f ff ff ff       	jmp    1b16 <TestB+0x89>

00001bd7 <TestC>:
    1bd7:	55                   	push   %ebp
    1bd8:	89 e5                	mov    %esp,%ebp
    1bda:	83 ec 08             	sub    $0x8,%esp
    1bdd:	83 ec 0c             	sub    $0xc,%esp
    1be0:	68 f5 a8 00 00       	push   $0xa8f5
    1be5:	e8 8e 4e 00 00       	call   6a78 <spin>
    1bea:	83 c4 10             	add    $0x10,%esp
    1bed:	83 ec 0c             	sub    $0xc,%esp
    1bf0:	68 fb a8 00 00       	push   $0xa8fb
    1bf5:	e8 aa 46 00 00       	call   62a4 <printf>
    1bfa:	83 c4 10             	add    $0x10,%esp
    1bfd:	83 ec 0c             	sub    $0xc,%esp
    1c00:	68 c8 00 00 00       	push   $0xc8
    1c05:	e8 c9 00 00 00       	call   1cd3 <milli_delay>
    1c0a:	83 c4 10             	add    $0x10,%esp
    1c0d:	eb de                	jmp    1bed <TestC+0x16>

00001c0f <panic>:
    1c0f:	55                   	push   %ebp
    1c10:	89 e5                	mov    %esp,%ebp
    1c12:	81 ec 18 01 00 00    	sub    $0x118,%esp
    1c18:	8d 45 0c             	lea    0xc(%ebp),%eax
    1c1b:	89 45 f4             	mov    %eax,-0xc(%ebp)
    1c1e:	8b 45 08             	mov    0x8(%ebp),%eax
    1c21:	83 ec 04             	sub    $0x4,%esp
    1c24:	ff 75 f4             	pushl  -0xc(%ebp)
    1c27:	50                   	push   %eax
    1c28:	8d 85 f0 fe ff ff    	lea    -0x110(%ebp),%eax
    1c2e:	50                   	push   %eax
    1c2f:	e8 26 47 00 00       	call   635a <vsprintf>
    1c34:	83 c4 10             	add    $0x10,%esp
    1c37:	89 45 f0             	mov    %eax,-0x10(%ebp)
    1c3a:	83 ec 04             	sub    $0x4,%esp
    1c3d:	8d 85 f0 fe ff ff    	lea    -0x110(%ebp),%eax
    1c43:	50                   	push   %eax
    1c44:	6a 02                	push   $0x2
    1c46:	68 fd a8 00 00       	push   $0xa8fd
    1c4b:	e8 54 46 00 00       	call   62a4 <printf>
    1c50:	83 c4 10             	add    $0x10,%esp
    1c53:	0f 0b                	ud2    
    1c55:	90                   	nop
    1c56:	c9                   	leave  
    1c57:	c3                   	ret    

00001c58 <clock_handler>:
    1c58:	55                   	push   %ebp
    1c59:	89 e5                	mov    %esp,%ebp
    1c5b:	83 ec 08             	sub    $0x8,%esp
    1c5e:	a1 20 b2 04 00       	mov    0x4b220,%eax
    1c63:	83 c0 01             	add    $0x1,%eax
    1c66:	a3 20 b2 04 00       	mov    %eax,0x4b220
    1c6b:	a1 20 b2 04 00       	mov    0x4b220,%eax
    1c70:	3d cc ab ff 7f       	cmp    $0x7fffabcc,%eax
    1c75:	7e 0a                	jle    1c81 <clock_handler+0x29>
    1c77:	c7 05 20 b2 04 00 00 	movl   $0x0,0x4b220
    1c7e:	00 00 00 
    1c81:	a1 c0 b2 04 00       	mov    0x4b2c0,%eax
    1c86:	8b 40 5c             	mov    0x5c(%eax),%eax
    1c89:	85 c0                	test   %eax,%eax
    1c8b:	74 0e                	je     1c9b <clock_handler+0x43>
    1c8d:	a1 c0 b2 04 00       	mov    0x4b2c0,%eax
    1c92:	8b 50 5c             	mov    0x5c(%eax),%edx
    1c95:	83 ea 01             	sub    $0x1,%edx
    1c98:	89 50 5c             	mov    %edx,0x5c(%eax)
    1c9b:	a1 28 a8 04 00       	mov    0x4a828,%eax
    1ca0:	85 c0                	test   %eax,%eax
    1ca2:	74 0d                	je     1cb1 <clock_handler+0x59>
    1ca4:	83 ec 0c             	sub    $0xc,%esp
    1ca7:	6a 00                	push   $0x0
    1ca9:	e8 67 31 00 00       	call   4e15 <inform_int>
    1cae:	83 c4 10             	add    $0x10,%esp
    1cb1:	a1 a0 93 04 00       	mov    0x493a0,%eax
    1cb6:	85 c0                	test   %eax,%eax
    1cb8:	75 13                	jne    1ccd <clock_handler+0x75>
    1cba:	a1 c0 b2 04 00       	mov    0x4b2c0,%eax
    1cbf:	8b 40 5c             	mov    0x5c(%eax),%eax
    1cc2:	85 c0                	test   %eax,%eax
    1cc4:	7f 0a                	jg     1cd0 <clock_handler+0x78>
    1cc6:	e8 42 20 00 00       	call   3d0d <schedule>
    1ccb:	eb 04                	jmp    1cd1 <clock_handler+0x79>
    1ccd:	90                   	nop
    1cce:	eb 01                	jmp    1cd1 <clock_handler+0x79>
    1cd0:	90                   	nop
    1cd1:	c9                   	leave  
    1cd2:	c3                   	ret    

00001cd3 <milli_delay>:
    1cd3:	55                   	push   %ebp
    1cd4:	89 e5                	mov    %esp,%ebp
    1cd6:	83 ec 18             	sub    $0x18,%esp
    1cd9:	e8 67 fa ff ff       	call   1745 <get_ticks>
    1cde:	89 45 f4             	mov    %eax,-0xc(%ebp)
    1ce1:	90                   	nop
    1ce2:	e8 5e fa ff ff       	call   1745 <get_ticks>
    1ce7:	2b 45 f4             	sub    -0xc(%ebp),%eax
    1cea:	89 c2                	mov    %eax,%edx
    1cec:	89 d0                	mov    %edx,%eax
    1cee:	c1 e0 02             	shl    $0x2,%eax
    1cf1:	01 d0                	add    %edx,%eax
    1cf3:	01 c0                	add    %eax,%eax
    1cf5:	39 45 08             	cmp    %eax,0x8(%ebp)
    1cf8:	7f e8                	jg     1ce2 <milli_delay+0xf>
    1cfa:	90                   	nop
    1cfb:	c9                   	leave  
    1cfc:	c3                   	ret    

00001cfd <init_clock>:
    1cfd:	55                   	push   %ebp
    1cfe:	89 e5                	mov    %esp,%ebp
    1d00:	83 ec 08             	sub    $0x8,%esp
    1d03:	83 ec 08             	sub    $0x8,%esp
    1d06:	6a 34                	push   $0x34
    1d08:	6a 43                	push   $0x43
    1d0a:	e8 6e 49 00 00       	call   667d <out_byte>
    1d0f:	83 c4 10             	add    $0x10,%esp
    1d12:	83 ec 08             	sub    $0x8,%esp
    1d15:	68 9b 00 00 00       	push   $0x9b
    1d1a:	6a 40                	push   $0x40
    1d1c:	e8 5c 49 00 00       	call   667d <out_byte>
    1d21:	83 c4 10             	add    $0x10,%esp
    1d24:	83 ec 08             	sub    $0x8,%esp
    1d27:	6a 2e                	push   $0x2e
    1d29:	6a 40                	push   $0x40
    1d2b:	e8 4d 49 00 00       	call   667d <out_byte>
    1d30:	83 c4 10             	add    $0x10,%esp
    1d33:	83 ec 08             	sub    $0x8,%esp
    1d36:	68 58 1c 00 00       	push   $0x1c58
    1d3b:	6a 00                	push   $0x0
    1d3d:	e8 93 19 00 00       	call   36d5 <put_irq_handler>
    1d42:	83 c4 10             	add    $0x10,%esp
    1d45:	83 ec 0c             	sub    $0xc,%esp
    1d48:	6a 00                	push   $0x0
    1d4a:	e8 9f 49 00 00       	call   66ee <enable_irq>
    1d4f:	83 c4 10             	add    $0x10,%esp
    1d52:	90                   	nop
    1d53:	c9                   	leave  
    1d54:	c3                   	ret    

00001d55 <keyboard_handler>:
    1d55:	55                   	push   %ebp
    1d56:	89 e5                	mov    %esp,%ebp
    1d58:	83 ec 18             	sub    $0x18,%esp
    1d5b:	83 ec 0c             	sub    $0xc,%esp
    1d5e:	6a 60                	push   $0x60
    1d60:	e8 24 49 00 00       	call   6689 <in_byte>
    1d65:	83 c4 10             	add    $0x10,%esp
    1d68:	88 45 f7             	mov    %al,-0x9(%ebp)
    1d6b:	a1 a8 ff 00 00       	mov    0xffa8,%eax
    1d70:	83 f8 1f             	cmp    $0x1f,%eax
    1d73:	7f 3d                	jg     1db2 <keyboard_handler+0x5d>
    1d75:	a1 a0 ff 00 00       	mov    0xffa0,%eax
    1d7a:	0f b6 55 f7          	movzbl -0x9(%ebp),%edx
    1d7e:	88 10                	mov    %dl,(%eax)
    1d80:	a1 a0 ff 00 00       	mov    0xffa0,%eax
    1d85:	83 c0 01             	add    $0x1,%eax
    1d88:	a3 a0 ff 00 00       	mov    %eax,0xffa0
    1d8d:	a1 a0 ff 00 00       	mov    0xffa0,%eax
    1d92:	ba cc ff 00 00       	mov    $0xffcc,%edx
    1d97:	39 d0                	cmp    %edx,%eax
    1d99:	75 0a                	jne    1da5 <keyboard_handler+0x50>
    1d9b:	c7 05 a0 ff 00 00 ac 	movl   $0xffac,0xffa0
    1da2:	ff 00 00 
    1da5:	a1 a8 ff 00 00       	mov    0xffa8,%eax
    1daa:	83 c0 01             	add    $0x1,%eax
    1dad:	a3 a8 ff 00 00       	mov    %eax,0xffa8
    1db2:	c7 05 28 a8 04 00 01 	movl   $0x1,0x4a828
    1db9:	00 00 00 
    1dbc:	90                   	nop
    1dbd:	c9                   	leave  
    1dbe:	c3                   	ret    

00001dbf <init_keyboard>:
    1dbf:	55                   	push   %ebp
    1dc0:	89 e5                	mov    %esp,%ebp
    1dc2:	83 ec 08             	sub    $0x8,%esp
    1dc5:	c7 05 a8 ff 00 00 00 	movl   $0x0,0xffa8
    1dcc:	00 00 00 
    1dcf:	c7 05 a4 ff 00 00 ac 	movl   $0xffac,0xffa4
    1dd6:	ff 00 00 
    1dd9:	a1 a4 ff 00 00       	mov    0xffa4,%eax
    1dde:	a3 a0 ff 00 00       	mov    %eax,0xffa0
    1de3:	c7 05 d4 ff 00 00 00 	movl   $0x0,0xffd4
    1dea:	00 00 00 
    1ded:	a1 d4 ff 00 00       	mov    0xffd4,%eax
    1df2:	a3 d0 ff 00 00       	mov    %eax,0xffd0
    1df7:	c7 05 dc ff 00 00 00 	movl   $0x0,0xffdc
    1dfe:	00 00 00 
    1e01:	a1 dc ff 00 00       	mov    0xffdc,%eax
    1e06:	a3 d8 ff 00 00       	mov    %eax,0xffd8
    1e0b:	c7 05 e4 ff 00 00 00 	movl   $0x0,0xffe4
    1e12:	00 00 00 
    1e15:	a1 e4 ff 00 00       	mov    0xffe4,%eax
    1e1a:	a3 e0 ff 00 00       	mov    %eax,0xffe0
    1e1f:	c7 05 e8 ff 00 00 00 	movl   $0x0,0xffe8
    1e26:	00 00 00 
    1e29:	c7 05 ec ff 00 00 01 	movl   $0x1,0xffec
    1e30:	00 00 00 
    1e33:	c7 05 f0 ff 00 00 00 	movl   $0x0,0xfff0
    1e3a:	00 00 00 
    1e3d:	c7 05 f4 ff 00 00 00 	movl   $0x0,0xfff4
    1e44:	00 00 00 
    1e47:	e8 8d 05 00 00       	call   23d9 <set_leds>
    1e4c:	83 ec 08             	sub    $0x8,%esp
    1e4f:	68 55 1d 00 00       	push   $0x1d55
    1e54:	6a 01                	push   $0x1
    1e56:	e8 7a 18 00 00       	call   36d5 <put_irq_handler>
    1e5b:	83 c4 10             	add    $0x10,%esp
    1e5e:	83 ec 0c             	sub    $0xc,%esp
    1e61:	6a 01                	push   $0x1
    1e63:	e8 86 48 00 00       	call   66ee <enable_irq>
    1e68:	83 c4 10             	add    $0x10,%esp
    1e6b:	90                   	nop
    1e6c:	c9                   	leave  
    1e6d:	c3                   	ret    

00001e6e <keyboard_read>:
    1e6e:	55                   	push   %ebp
    1e6f:	89 e5                	mov    %esp,%ebp
    1e71:	83 ec 38             	sub    $0x38,%esp
    1e74:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    1e7b:	e9 a9 04 00 00       	jmp    2329 <keyboard_read+0x4bb>
    1e80:	c7 05 cc ff 00 00 00 	movl   $0x0,0xffcc
    1e87:	00 00 00 
    1e8a:	e8 aa 04 00 00       	call   2339 <get_byte_from_kb_buf>
    1e8f:	88 45 f7             	mov    %al,-0x9(%ebp)
    1e92:	80 7d f7 e1          	cmpb   $0xe1,-0x9(%ebp)
    1e96:	75 67                	jne    1eff <keyboard_read+0x91>
    1e98:	c6 45 d2 e1          	movb   $0xe1,-0x2e(%ebp)
    1e9c:	c6 45 d3 1d          	movb   $0x1d,-0x2d(%ebp)
    1ea0:	c6 45 d4 45          	movb   $0x45,-0x2c(%ebp)
    1ea4:	c6 45 d5 e1          	movb   $0xe1,-0x2b(%ebp)
    1ea8:	c6 45 d6 9d          	movb   $0x9d,-0x2a(%ebp)
    1eac:	c6 45 d7 c5          	movb   $0xc5,-0x29(%ebp)
    1eb0:	c7 45 e4 01 00 00 00 	movl   $0x1,-0x1c(%ebp)
    1eb7:	c7 45 e8 01 00 00 00 	movl   $0x1,-0x18(%ebp)
    1ebe:	eb 23                	jmp    1ee3 <keyboard_read+0x75>
    1ec0:	e8 74 04 00 00       	call   2339 <get_byte_from_kb_buf>
    1ec5:	89 c1                	mov    %eax,%ecx
    1ec7:	8d 55 d2             	lea    -0x2e(%ebp),%edx
    1eca:	8b 45 e8             	mov    -0x18(%ebp),%eax
    1ecd:	01 d0                	add    %edx,%eax
    1ecf:	0f b6 00             	movzbl (%eax),%eax
    1ed2:	38 c1                	cmp    %al,%cl
    1ed4:	74 09                	je     1edf <keyboard_read+0x71>
    1ed6:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    1edd:	eb 0a                	jmp    1ee9 <keyboard_read+0x7b>
    1edf:	83 45 e8 01          	addl   $0x1,-0x18(%ebp)
    1ee3:	83 7d e8 05          	cmpl   $0x5,-0x18(%ebp)
    1ee7:	7e d7                	jle    1ec0 <keyboard_read+0x52>
    1ee9:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
    1eed:	0f 84 b2 00 00 00    	je     1fa5 <keyboard_read+0x137>
    1ef3:	c7 45 ec 1e 01 00 00 	movl   $0x11e,-0x14(%ebp)
    1efa:	e9 a6 00 00 00       	jmp    1fa5 <keyboard_read+0x137>
    1eff:	80 7d f7 e0          	cmpb   $0xe0,-0x9(%ebp)
    1f03:	0f 85 9c 00 00 00    	jne    1fa5 <keyboard_read+0x137>
    1f09:	c7 05 cc ff 00 00 01 	movl   $0x1,0xffcc
    1f10:	00 00 00 
    1f13:	e8 21 04 00 00       	call   2339 <get_byte_from_kb_buf>
    1f18:	88 45 f7             	mov    %al,-0x9(%ebp)
    1f1b:	80 7d f7 2a          	cmpb   $0x2a,-0x9(%ebp)
    1f1f:	75 40                	jne    1f61 <keyboard_read+0xf3>
    1f21:	c7 05 cc ff 00 00 00 	movl   $0x0,0xffcc
    1f28:	00 00 00 
    1f2b:	e8 09 04 00 00       	call   2339 <get_byte_from_kb_buf>
    1f30:	88 45 f7             	mov    %al,-0x9(%ebp)
    1f33:	80 7d f7 e0          	cmpb   $0xe0,-0x9(%ebp)
    1f37:	75 6c                	jne    1fa5 <keyboard_read+0x137>
    1f39:	c7 05 cc ff 00 00 01 	movl   $0x1,0xffcc
    1f40:	00 00 00 
    1f43:	e8 f1 03 00 00       	call   2339 <get_byte_from_kb_buf>
    1f48:	88 45 f7             	mov    %al,-0x9(%ebp)
    1f4b:	80 7d f7 37          	cmpb   $0x37,-0x9(%ebp)
    1f4f:	75 54                	jne    1fa5 <keyboard_read+0x137>
    1f51:	c7 45 ec 1d 01 00 00 	movl   $0x11d,-0x14(%ebp)
    1f58:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
    1f5f:	eb 44                	jmp    1fa5 <keyboard_read+0x137>
    1f61:	80 7d f7 b7          	cmpb   $0xb7,-0x9(%ebp)
    1f65:	75 3e                	jne    1fa5 <keyboard_read+0x137>
    1f67:	c7 05 cc ff 00 00 00 	movl   $0x0,0xffcc
    1f6e:	00 00 00 
    1f71:	e8 c3 03 00 00       	call   2339 <get_byte_from_kb_buf>
    1f76:	88 45 f7             	mov    %al,-0x9(%ebp)
    1f79:	80 7d f7 e0          	cmpb   $0xe0,-0x9(%ebp)
    1f7d:	75 26                	jne    1fa5 <keyboard_read+0x137>
    1f7f:	c7 05 cc ff 00 00 01 	movl   $0x1,0xffcc
    1f86:	00 00 00 
    1f89:	e8 ab 03 00 00       	call   2339 <get_byte_from_kb_buf>
    1f8e:	88 45 f7             	mov    %al,-0x9(%ebp)
    1f91:	80 7d f7 aa          	cmpb   $0xaa,-0x9(%ebp)
    1f95:	75 0e                	jne    1fa5 <keyboard_read+0x137>
    1f97:	c7 45 ec 1d 01 00 00 	movl   $0x11d,-0x14(%ebp)
    1f9e:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    1fa5:	81 7d ec 1e 01 00 00 	cmpl   $0x11e,-0x14(%ebp)
    1fac:	0f 84 80 01 00 00    	je     2132 <keyboard_read+0x2c4>
    1fb2:	81 7d ec 1d 01 00 00 	cmpl   $0x11d,-0x14(%ebp)
    1fb9:	0f 84 73 01 00 00    	je     2132 <keyboard_read+0x2c4>
    1fbf:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
    1fc3:	f7 d0                	not    %eax
    1fc5:	c0 e8 07             	shr    $0x7,%al
    1fc8:	0f b6 c0             	movzbl %al,%eax
    1fcb:	89 45 f0             	mov    %eax,-0x10(%ebp)
    1fce:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
    1fd2:	83 e0 7f             	and    $0x7f,%eax
    1fd5:	89 c2                	mov    %eax,%edx
    1fd7:	89 d0                	mov    %edx,%eax
    1fd9:	01 c0                	add    %eax,%eax
    1fdb:	01 d0                	add    %edx,%eax
    1fdd:	c1 e0 02             	shl    $0x2,%eax
    1fe0:	05 20 f0 00 00       	add    $0xf020,%eax
    1fe5:	89 45 d8             	mov    %eax,-0x28(%ebp)
    1fe8:	c7 05 f4 ff 00 00 00 	movl   $0x0,0xfff4
    1fef:	00 00 00 
    1ff2:	a1 d0 ff 00 00       	mov    0xffd0,%eax
    1ff7:	85 c0                	test   %eax,%eax
    1ff9:	75 09                	jne    2004 <keyboard_read+0x196>
    1ffb:	a1 d4 ff 00 00       	mov    0xffd4,%eax
    2000:	85 c0                	test   %eax,%eax
    2002:	74 07                	je     200b <keyboard_read+0x19d>
    2004:	b8 01 00 00 00       	mov    $0x1,%eax
    2009:	eb 05                	jmp    2010 <keyboard_read+0x1a2>
    200b:	b8 00 00 00 00       	mov    $0x0,%eax
    2010:	89 45 e0             	mov    %eax,-0x20(%ebp)
    2013:	a1 e8 ff 00 00       	mov    0xffe8,%eax
    2018:	85 c0                	test   %eax,%eax
    201a:	74 21                	je     203d <keyboard_read+0x1cf>
    201c:	8b 45 d8             	mov    -0x28(%ebp),%eax
    201f:	8b 00                	mov    (%eax),%eax
    2021:	83 f8 60             	cmp    $0x60,%eax
    2024:	76 17                	jbe    203d <keyboard_read+0x1cf>
    2026:	8b 45 d8             	mov    -0x28(%ebp),%eax
    2029:	8b 00                	mov    (%eax),%eax
    202b:	83 f8 7a             	cmp    $0x7a,%eax
    202e:	77 0d                	ja     203d <keyboard_read+0x1cf>
    2030:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
    2034:	0f 94 c0             	sete   %al
    2037:	0f b6 c0             	movzbl %al,%eax
    203a:	89 45 e0             	mov    %eax,-0x20(%ebp)
    203d:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
    2041:	74 0a                	je     204d <keyboard_read+0x1df>
    2043:	c7 05 f4 ff 00 00 01 	movl   $0x1,0xfff4
    204a:	00 00 00 
    204d:	a1 cc ff 00 00       	mov    0xffcc,%eax
    2052:	85 c0                	test   %eax,%eax
    2054:	74 0a                	je     2060 <keyboard_read+0x1f2>
    2056:	c7 05 f4 ff 00 00 02 	movl   $0x2,0xfff4
    205d:	00 00 00 
    2060:	a1 f4 ff 00 00       	mov    0xfff4,%eax
    2065:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
    206c:	8b 45 d8             	mov    -0x28(%ebp),%eax
    206f:	01 d0                	add    %edx,%eax
    2071:	8b 00                	mov    (%eax),%eax
    2073:	89 45 ec             	mov    %eax,-0x14(%ebp)
    2076:	8b 45 ec             	mov    -0x14(%ebp),%eax
    2079:	2d 08 01 00 00       	sub    $0x108,%eax
    207e:	83 f8 08             	cmp    $0x8,%eax
    2081:	0f 87 ae 00 00 00    	ja     2135 <keyboard_read+0x2c7>
    2087:	8b 04 85 10 a9 00 00 	mov    0xa910(,%eax,4),%eax
    208e:	ff e0                	jmp    *%eax
    2090:	8b 45 f0             	mov    -0x10(%ebp),%eax
    2093:	a3 d0 ff 00 00       	mov    %eax,0xffd0
    2098:	e9 a2 00 00 00       	jmp    213f <keyboard_read+0x2d1>
    209d:	8b 45 f0             	mov    -0x10(%ebp),%eax
    20a0:	a3 d4 ff 00 00       	mov    %eax,0xffd4
    20a5:	e9 95 00 00 00       	jmp    213f <keyboard_read+0x2d1>
    20aa:	8b 45 f0             	mov    -0x10(%ebp),%eax
    20ad:	a3 e0 ff 00 00       	mov    %eax,0xffe0
    20b2:	e9 88 00 00 00       	jmp    213f <keyboard_read+0x2d1>
    20b7:	8b 45 f0             	mov    -0x10(%ebp),%eax
    20ba:	a3 e4 ff 00 00       	mov    %eax,0xffe4
    20bf:	eb 7e                	jmp    213f <keyboard_read+0x2d1>
    20c1:	8b 45 f0             	mov    -0x10(%ebp),%eax
    20c4:	a3 d8 ff 00 00       	mov    %eax,0xffd8
    20c9:	eb 74                	jmp    213f <keyboard_read+0x2d1>
    20cb:	8b 45 f0             	mov    -0x10(%ebp),%eax
    20ce:	a3 d8 ff 00 00       	mov    %eax,0xffd8
    20d3:	eb 6a                	jmp    213f <keyboard_read+0x2d1>
    20d5:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    20d9:	74 5d                	je     2138 <keyboard_read+0x2ca>
    20db:	a1 e8 ff 00 00       	mov    0xffe8,%eax
    20e0:	85 c0                	test   %eax,%eax
    20e2:	0f 94 c0             	sete   %al
    20e5:	0f b6 c0             	movzbl %al,%eax
    20e8:	a3 e8 ff 00 00       	mov    %eax,0xffe8
    20ed:	e8 e7 02 00 00       	call   23d9 <set_leds>
    20f2:	eb 44                	jmp    2138 <keyboard_read+0x2ca>
    20f4:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    20f8:	74 41                	je     213b <keyboard_read+0x2cd>
    20fa:	a1 ec ff 00 00       	mov    0xffec,%eax
    20ff:	85 c0                	test   %eax,%eax
    2101:	0f 94 c0             	sete   %al
    2104:	0f b6 c0             	movzbl %al,%eax
    2107:	a3 ec ff 00 00       	mov    %eax,0xffec
    210c:	e8 c8 02 00 00       	call   23d9 <set_leds>
    2111:	eb 28                	jmp    213b <keyboard_read+0x2cd>
    2113:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    2117:	74 25                	je     213e <keyboard_read+0x2d0>
    2119:	a1 f0 ff 00 00       	mov    0xfff0,%eax
    211e:	85 c0                	test   %eax,%eax
    2120:	0f 94 c0             	sete   %al
    2123:	0f b6 c0             	movzbl %al,%eax
    2126:	a3 f0 ff 00 00       	mov    %eax,0xfff0
    212b:	e8 a9 02 00 00       	call   23d9 <set_leds>
    2130:	eb 0c                	jmp    213e <keyboard_read+0x2d0>
    2132:	90                   	nop
    2133:	eb 0a                	jmp    213f <keyboard_read+0x2d1>
    2135:	90                   	nop
    2136:	eb 07                	jmp    213f <keyboard_read+0x2d1>
    2138:	90                   	nop
    2139:	eb 04                	jmp    213f <keyboard_read+0x2d1>
    213b:	90                   	nop
    213c:	eb 01                	jmp    213f <keyboard_read+0x2d1>
    213e:	90                   	nop
    213f:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    2143:	0f 84 e0 01 00 00    	je     2329 <keyboard_read+0x4bb>
    2149:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
    2150:	81 7d ec 2b 01 00 00 	cmpl   $0x12b,-0x14(%ebp)
    2157:	0f 86 12 01 00 00    	jbe    226f <keyboard_read+0x401>
    215d:	81 7d ec 3b 01 00 00 	cmpl   $0x13b,-0x14(%ebp)
    2164:	0f 87 05 01 00 00    	ja     226f <keyboard_read+0x401>
    216a:	c7 45 dc 01 00 00 00 	movl   $0x1,-0x24(%ebp)
    2171:	8b 45 ec             	mov    -0x14(%ebp),%eax
    2174:	2d 2c 01 00 00       	sub    $0x12c,%eax
    2179:	83 f8 04             	cmp    $0x4,%eax
    217c:	77 45                	ja     21c3 <keyboard_read+0x355>
    217e:	8b 04 85 34 a9 00 00 	mov    0xa934(,%eax,4),%eax
    2185:	ff e0                	jmp    *%eax
    2187:	c7 45 ec 2f 00 00 00 	movl   $0x2f,-0x14(%ebp)
    218e:	e9 e0 00 00 00       	jmp    2273 <keyboard_read+0x405>
    2193:	c7 45 ec 2a 00 00 00 	movl   $0x2a,-0x14(%ebp)
    219a:	e9 d4 00 00 00       	jmp    2273 <keyboard_read+0x405>
    219f:	c7 45 ec 2d 00 00 00 	movl   $0x2d,-0x14(%ebp)
    21a6:	e9 c8 00 00 00       	jmp    2273 <keyboard_read+0x405>
    21ab:	c7 45 ec 2b 00 00 00 	movl   $0x2b,-0x14(%ebp)
    21b2:	e9 bc 00 00 00       	jmp    2273 <keyboard_read+0x405>
    21b7:	c7 45 ec 03 01 00 00 	movl   $0x103,-0x14(%ebp)
    21be:	e9 b0 00 00 00       	jmp    2273 <keyboard_read+0x405>
    21c3:	a1 ec ff 00 00       	mov    0xffec,%eax
    21c8:	85 c0                	test   %eax,%eax
    21ca:	74 30                	je     21fc <keyboard_read+0x38e>
    21cc:	81 7d ec 31 01 00 00 	cmpl   $0x131,-0x14(%ebp)
    21d3:	76 15                	jbe    21ea <keyboard_read+0x37c>
    21d5:	81 7d ec 3b 01 00 00 	cmpl   $0x13b,-0x14(%ebp)
    21dc:	77 0c                	ja     21ea <keyboard_read+0x37c>
    21de:	81 6d ec 02 01 00 00 	subl   $0x102,-0x14(%ebp)
    21e5:	e9 83 00 00 00       	jmp    226d <keyboard_read+0x3ff>
    21ea:	81 7d ec 31 01 00 00 	cmpl   $0x131,-0x14(%ebp)
    21f1:	75 7f                	jne    2272 <keyboard_read+0x404>
    21f3:	c7 45 ec 2e 00 00 00 	movl   $0x2e,-0x14(%ebp)
    21fa:	eb 76                	jmp    2272 <keyboard_read+0x404>
    21fc:	8b 45 ec             	mov    -0x14(%ebp),%eax
    21ff:	2d 31 01 00 00       	sub    $0x131,%eax
    2204:	83 f8 0a             	cmp    $0xa,%eax
    2207:	77 63                	ja     226c <keyboard_read+0x3fe>
    2209:	8b 04 85 48 a9 00 00 	mov    0xa948(,%eax,4),%eax
    2210:	ff e0                	jmp    *%eax
    2212:	c7 45 ec 21 01 00 00 	movl   $0x121,-0x14(%ebp)
    2219:	eb 52                	jmp    226d <keyboard_read+0x3ff>
    221b:	c7 45 ec 22 01 00 00 	movl   $0x122,-0x14(%ebp)
    2222:	eb 49                	jmp    226d <keyboard_read+0x3ff>
    2224:	c7 45 ec 23 01 00 00 	movl   $0x123,-0x14(%ebp)
    222b:	eb 40                	jmp    226d <keyboard_read+0x3ff>
    222d:	c7 45 ec 24 01 00 00 	movl   $0x124,-0x14(%ebp)
    2234:	eb 37                	jmp    226d <keyboard_read+0x3ff>
    2236:	c7 45 ec 1f 01 00 00 	movl   $0x11f,-0x14(%ebp)
    223d:	eb 2e                	jmp    226d <keyboard_read+0x3ff>
    223f:	c7 45 ec 25 01 00 00 	movl   $0x125,-0x14(%ebp)
    2246:	eb 25                	jmp    226d <keyboard_read+0x3ff>
    2248:	c7 45 ec 26 01 00 00 	movl   $0x126,-0x14(%ebp)
    224f:	eb 1c                	jmp    226d <keyboard_read+0x3ff>
    2251:	c7 45 ec 27 01 00 00 	movl   $0x127,-0x14(%ebp)
    2258:	eb 13                	jmp    226d <keyboard_read+0x3ff>
    225a:	c7 45 ec 28 01 00 00 	movl   $0x128,-0x14(%ebp)
    2261:	eb 0a                	jmp    226d <keyboard_read+0x3ff>
    2263:	c7 45 ec 20 01 00 00 	movl   $0x120,-0x14(%ebp)
    226a:	eb 01                	jmp    226d <keyboard_read+0x3ff>
    226c:	90                   	nop
    226d:	eb 03                	jmp    2272 <keyboard_read+0x404>
    226f:	90                   	nop
    2270:	eb 01                	jmp    2273 <keyboard_read+0x405>
    2272:	90                   	nop
    2273:	a1 d0 ff 00 00       	mov    0xffd0,%eax
    2278:	85 c0                	test   %eax,%eax
    227a:	74 07                	je     2283 <keyboard_read+0x415>
    227c:	b8 00 02 00 00       	mov    $0x200,%eax
    2281:	eb 05                	jmp    2288 <keyboard_read+0x41a>
    2283:	b8 00 00 00 00       	mov    $0x0,%eax
    2288:	09 45 ec             	or     %eax,-0x14(%ebp)
    228b:	a1 d4 ff 00 00       	mov    0xffd4,%eax
    2290:	85 c0                	test   %eax,%eax
    2292:	74 07                	je     229b <keyboard_read+0x42d>
    2294:	b8 00 04 00 00       	mov    $0x400,%eax
    2299:	eb 05                	jmp    22a0 <keyboard_read+0x432>
    229b:	b8 00 00 00 00       	mov    $0x0,%eax
    22a0:	09 45 ec             	or     %eax,-0x14(%ebp)
    22a3:	a1 e0 ff 00 00       	mov    0xffe0,%eax
    22a8:	85 c0                	test   %eax,%eax
    22aa:	74 07                	je     22b3 <keyboard_read+0x445>
    22ac:	b8 00 08 00 00       	mov    $0x800,%eax
    22b1:	eb 05                	jmp    22b8 <keyboard_read+0x44a>
    22b3:	b8 00 00 00 00       	mov    $0x0,%eax
    22b8:	09 45 ec             	or     %eax,-0x14(%ebp)
    22bb:	a1 e4 ff 00 00       	mov    0xffe4,%eax
    22c0:	85 c0                	test   %eax,%eax
    22c2:	74 07                	je     22cb <keyboard_read+0x45d>
    22c4:	b8 00 10 00 00       	mov    $0x1000,%eax
    22c9:	eb 05                	jmp    22d0 <keyboard_read+0x462>
    22cb:	b8 00 00 00 00       	mov    $0x0,%eax
    22d0:	09 45 ec             	or     %eax,-0x14(%ebp)
    22d3:	a1 d8 ff 00 00       	mov    0xffd8,%eax
    22d8:	85 c0                	test   %eax,%eax
    22da:	74 07                	je     22e3 <keyboard_read+0x475>
    22dc:	b8 00 20 00 00       	mov    $0x2000,%eax
    22e1:	eb 05                	jmp    22e8 <keyboard_read+0x47a>
    22e3:	b8 00 00 00 00       	mov    $0x0,%eax
    22e8:	09 45 ec             	or     %eax,-0x14(%ebp)
    22eb:	a1 dc ff 00 00       	mov    0xffdc,%eax
    22f0:	85 c0                	test   %eax,%eax
    22f2:	74 07                	je     22fb <keyboard_read+0x48d>
    22f4:	b8 00 40 00 00       	mov    $0x4000,%eax
    22f9:	eb 05                	jmp    2300 <keyboard_read+0x492>
    22fb:	b8 00 00 00 00       	mov    $0x0,%eax
    2300:	09 45 ec             	or     %eax,-0x14(%ebp)
    2303:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
    2307:	74 07                	je     2310 <keyboard_read+0x4a2>
    2309:	b8 00 80 00 00       	mov    $0x8000,%eax
    230e:	eb 05                	jmp    2315 <keyboard_read+0x4a7>
    2310:	b8 00 00 00 00       	mov    $0x0,%eax
    2315:	09 45 ec             	or     %eax,-0x14(%ebp)
    2318:	83 ec 08             	sub    $0x8,%esp
    231b:	ff 75 ec             	pushl  -0x14(%ebp)
    231e:	ff 75 08             	pushl  0x8(%ebp)
    2321:	e8 c1 02 00 00       	call   25e7 <in_process>
    2326:	83 c4 10             	add    $0x10,%esp
    2329:	a1 a8 ff 00 00       	mov    0xffa8,%eax
    232e:	85 c0                	test   %eax,%eax
    2330:	0f 8f 4a fb ff ff    	jg     1e80 <keyboard_read+0x12>
    2336:	90                   	nop
    2337:	c9                   	leave  
    2338:	c3                   	ret    

00002339 <get_byte_from_kb_buf>:
    2339:	55                   	push   %ebp
    233a:	89 e5                	mov    %esp,%ebp
    233c:	83 ec 18             	sub    $0x18,%esp
    233f:	90                   	nop
    2340:	a1 a8 ff 00 00       	mov    0xffa8,%eax
    2345:	85 c0                	test   %eax,%eax
    2347:	7e f7                	jle    2340 <get_byte_from_kb_buf+0x7>
    2349:	e8 bf 43 00 00       	call   670d <disable_int>
    234e:	a1 a4 ff 00 00       	mov    0xffa4,%eax
    2353:	0f b6 00             	movzbl (%eax),%eax
    2356:	88 45 f7             	mov    %al,-0x9(%ebp)
    2359:	a1 a4 ff 00 00       	mov    0xffa4,%eax
    235e:	83 c0 01             	add    $0x1,%eax
    2361:	a3 a4 ff 00 00       	mov    %eax,0xffa4
    2366:	a1 a4 ff 00 00       	mov    0xffa4,%eax
    236b:	ba cc ff 00 00       	mov    $0xffcc,%edx
    2370:	39 d0                	cmp    %edx,%eax
    2372:	75 0a                	jne    237e <get_byte_from_kb_buf+0x45>
    2374:	c7 05 a4 ff 00 00 ac 	movl   $0xffac,0xffa4
    237b:	ff 00 00 
    237e:	a1 a8 ff 00 00       	mov    0xffa8,%eax
    2383:	83 e8 01             	sub    $0x1,%eax
    2386:	a3 a8 ff 00 00       	mov    %eax,0xffa8
    238b:	e8 7f 43 00 00       	call   670f <enable_int>
    2390:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
    2394:	c9                   	leave  
    2395:	c3                   	ret    

00002396 <kb_wait>:
    2396:	55                   	push   %ebp
    2397:	89 e5                	mov    %esp,%ebp
    2399:	83 ec 18             	sub    $0x18,%esp
    239c:	83 ec 0c             	sub    $0xc,%esp
    239f:	6a 64                	push   $0x64
    23a1:	e8 e3 42 00 00       	call   6689 <in_byte>
    23a6:	83 c4 10             	add    $0x10,%esp
    23a9:	88 45 f7             	mov    %al,-0x9(%ebp)
    23ac:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
    23b0:	83 e0 02             	and    $0x2,%eax
    23b3:	85 c0                	test   %eax,%eax
    23b5:	75 e5                	jne    239c <kb_wait+0x6>
    23b7:	90                   	nop
    23b8:	c9                   	leave  
    23b9:	c3                   	ret    

000023ba <kb_ack>:
    23ba:	55                   	push   %ebp
    23bb:	89 e5                	mov    %esp,%ebp
    23bd:	83 ec 18             	sub    $0x18,%esp
    23c0:	83 ec 0c             	sub    $0xc,%esp
    23c3:	6a 60                	push   $0x60
    23c5:	e8 bf 42 00 00       	call   6689 <in_byte>
    23ca:	83 c4 10             	add    $0x10,%esp
    23cd:	88 45 f7             	mov    %al,-0x9(%ebp)
    23d0:	80 7d f7 fa          	cmpb   $0xfa,-0x9(%ebp)
    23d4:	75 ea                	jne    23c0 <kb_ack+0x6>
    23d6:	90                   	nop
    23d7:	c9                   	leave  
    23d8:	c3                   	ret    

000023d9 <set_leds>:
    23d9:	55                   	push   %ebp
    23da:	89 e5                	mov    %esp,%ebp
    23dc:	83 ec 18             	sub    $0x18,%esp
    23df:	a1 e8 ff 00 00       	mov    0xffe8,%eax
    23e4:	c1 e0 02             	shl    $0x2,%eax
    23e7:	89 c2                	mov    %eax,%edx
    23e9:	a1 ec ff 00 00       	mov    0xffec,%eax
    23ee:	01 c0                	add    %eax,%eax
    23f0:	09 c2                	or     %eax,%edx
    23f2:	a1 f0 ff 00 00       	mov    0xfff0,%eax
    23f7:	09 d0                	or     %edx,%eax
    23f9:	88 45 f7             	mov    %al,-0x9(%ebp)
    23fc:	e8 95 ff ff ff       	call   2396 <kb_wait>
    2401:	83 ec 08             	sub    $0x8,%esp
    2404:	68 ed 00 00 00       	push   $0xed
    2409:	6a 60                	push   $0x60
    240b:	e8 6d 42 00 00       	call   667d <out_byte>
    2410:	83 c4 10             	add    $0x10,%esp
    2413:	e8 a2 ff ff ff       	call   23ba <kb_ack>
    2418:	e8 79 ff ff ff       	call   2396 <kb_wait>
    241d:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
    2421:	83 ec 08             	sub    $0x8,%esp
    2424:	50                   	push   %eax
    2425:	6a 60                	push   $0x60
    2427:	e8 51 42 00 00       	call   667d <out_byte>
    242c:	83 c4 10             	add    $0x10,%esp
    242f:	e8 86 ff ff ff       	call   23ba <kb_ack>
    2434:	90                   	nop
    2435:	c9                   	leave  
    2436:	c3                   	ret    

00002437 <task_tty>:
    2437:	55                   	push   %ebp
    2438:	89 e5                	mov    %esp,%ebp
    243a:	83 ec 48             	sub    $0x48,%esp
    243d:	e8 7d f9 ff ff       	call   1dbf <init_keyboard>
    2442:	c7 45 f4 e0 97 04 00 	movl   $0x497e0,-0xc(%ebp)
    2449:	eb 15                	jmp    2460 <task_tty+0x29>
    244b:	83 ec 0c             	sub    $0xc,%esp
    244e:	ff 75 f4             	pushl  -0xc(%ebp)
    2451:	e8 4f 01 00 00       	call   25a5 <init_tty>
    2456:	83 c4 10             	add    $0x10,%esp
    2459:	81 45 f4 24 04 00 00 	addl   $0x424,-0xc(%ebp)
    2460:	b8 4c a4 04 00       	mov    $0x4a44c,%eax
    2465:	39 45 f4             	cmp    %eax,-0xc(%ebp)
    2468:	72 e1                	jb     244b <task_tty+0x14>
    246a:	83 ec 0c             	sub    $0xc,%esp
    246d:	6a 00                	push   $0x0
    246f:	e8 c2 0e 00 00       	call   3336 <select_console>
    2474:	83 c4 10             	add    $0x10,%esp
    2477:	c7 45 f4 e0 97 04 00 	movl   $0x497e0,-0xc(%ebp)
    247e:	eb 30                	jmp    24b0 <task_tty+0x79>
    2480:	83 ec 0c             	sub    $0xc,%esp
    2483:	ff 75 f4             	pushl  -0xc(%ebp)
    2486:	e8 e0 02 00 00       	call   276b <tty_dev_read>
    248b:	83 c4 10             	add    $0x10,%esp
    248e:	83 ec 0c             	sub    $0xc,%esp
    2491:	ff 75 f4             	pushl  -0xc(%ebp)
    2494:	e8 02 03 00 00       	call   279b <tty_dev_write>
    2499:	83 c4 10             	add    $0x10,%esp
    249c:	8b 45 f4             	mov    -0xc(%ebp),%eax
    249f:	8b 80 08 04 00 00    	mov    0x408(%eax),%eax
    24a5:	85 c0                	test   %eax,%eax
    24a7:	75 d7                	jne    2480 <task_tty+0x49>
    24a9:	81 45 f4 24 04 00 00 	addl   $0x424,-0xc(%ebp)
    24b0:	b8 4c a4 04 00       	mov    $0x4a44c,%eax
    24b5:	39 45 f4             	cmp    %eax,-0xc(%ebp)
    24b8:	72 c6                	jb     2480 <task_tty+0x49>
    24ba:	83 ec 04             	sub    $0x4,%esp
    24bd:	8d 45 bc             	lea    -0x44(%ebp),%eax
    24c0:	50                   	push   %eax
    24c1:	6a 11                	push   $0x11
    24c3:	6a 02                	push   $0x2
    24c5:	e8 ed 19 00 00       	call   3eb7 <send_recv>
    24ca:	83 c4 10             	add    $0x10,%esp
    24cd:	8b 45 bc             	mov    -0x44(%ebp),%eax
    24d0:	89 45 f0             	mov    %eax,-0x10(%ebp)
    24d3:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    24d7:	75 19                	jne    24f2 <task_tty+0xbb>
    24d9:	6a 5e                	push   $0x5e
    24db:	68 74 a9 00 00       	push   $0xa974
    24e0:	68 74 a9 00 00       	push   $0xa974
    24e5:	68 81 a9 00 00       	push   $0xa981
    24ea:	e8 a4 45 00 00       	call   6a93 <assertion_failure>
    24ef:	83 c4 10             	add    $0x10,%esp
    24f2:	8b 45 d0             	mov    -0x30(%ebp),%eax
    24f5:	69 c0 24 04 00 00    	imul   $0x424,%eax,%eax
    24fb:	05 e0 97 04 00       	add    $0x497e0,%eax
    2500:	89 45 ec             	mov    %eax,-0x14(%ebp)
    2503:	8b 45 c0             	mov    -0x40(%ebp),%eax
    2506:	3d e9 03 00 00       	cmp    $0x3e9,%eax
    250b:	74 1e                	je     252b <task_tty+0xf4>
    250d:	3d e9 03 00 00       	cmp    $0x3e9,%eax
    2512:	7f 07                	jg     251b <task_tty+0xe4>
    2514:	83 f8 01             	cmp    $0x1,%eax
    2517:	74 66                	je     257f <task_tty+0x148>
    2519:	eb 70                	jmp    258b <task_tty+0x154>
    251b:	3d eb 03 00 00       	cmp    $0x3eb,%eax
    2520:	74 35                	je     2557 <task_tty+0x120>
    2522:	3d ec 03 00 00       	cmp    $0x3ec,%eax
    2527:	74 42                	je     256b <task_tty+0x134>
    2529:	eb 60                	jmp    258b <task_tty+0x154>
    252b:	83 ec 0c             	sub    $0xc,%esp
    252e:	8d 45 bc             	lea    -0x44(%ebp),%eax
    2531:	50                   	push   %eax
    2532:	e8 e8 1a 00 00       	call   401f <reset_msg>
    2537:	83 c4 10             	add    $0x10,%esp
    253a:	c7 45 c0 0d 00 00 00 	movl   $0xd,-0x40(%ebp)
    2541:	83 ec 04             	sub    $0x4,%esp
    2544:	8d 45 bc             	lea    -0x44(%ebp),%eax
    2547:	50                   	push   %eax
    2548:	ff 75 f0             	pushl  -0x10(%ebp)
    254b:	6a 01                	push   $0x1
    254d:	e8 65 19 00 00       	call   3eb7 <send_recv>
    2552:	83 c4 10             	add    $0x10,%esp
    2555:	eb 49                	jmp    25a0 <task_tty+0x169>
    2557:	83 ec 08             	sub    $0x8,%esp
    255a:	8d 45 bc             	lea    -0x44(%ebp),%eax
    255d:	50                   	push   %eax
    255e:	ff 75 ec             	pushl  -0x14(%ebp)
    2561:	e8 28 04 00 00       	call   298e <tty_do_read>
    2566:	83 c4 10             	add    $0x10,%esp
    2569:	eb 35                	jmp    25a0 <task_tty+0x169>
    256b:	83 ec 08             	sub    $0x8,%esp
    256e:	8d 45 bc             	lea    -0x44(%ebp),%eax
    2571:	50                   	push   %eax
    2572:	ff 75 ec             	pushl  -0x14(%ebp)
    2575:	e8 b0 04 00 00       	call   2a2a <tty_do_write>
    257a:	83 c4 10             	add    $0x10,%esp
    257d:	eb 21                	jmp    25a0 <task_tty+0x169>
    257f:	c7 05 28 a8 04 00 00 	movl   $0x0,0x4a828
    2586:	00 00 00 
    2589:	eb 15                	jmp    25a0 <task_tty+0x169>
    258b:	83 ec 08             	sub    $0x8,%esp
    258e:	8d 45 bc             	lea    -0x44(%ebp),%eax
    2591:	50                   	push   %eax
    2592:	68 91 a9 00 00       	push   $0xa991
    2597:	e8 65 2d 00 00       	call   5301 <dump_msg>
    259c:	83 c4 10             	add    $0x10,%esp
    259f:	90                   	nop
    25a0:	e9 d2 fe ff ff       	jmp    2477 <task_tty+0x40>

000025a5 <init_tty>:
    25a5:	55                   	push   %ebp
    25a6:	89 e5                	mov    %esp,%ebp
    25a8:	83 ec 08             	sub    $0x8,%esp
    25ab:	8b 45 08             	mov    0x8(%ebp),%eax
    25ae:	c7 80 08 04 00 00 00 	movl   $0x0,0x408(%eax)
    25b5:	00 00 00 
    25b8:	8b 55 08             	mov    0x8(%ebp),%edx
    25bb:	8b 45 08             	mov    0x8(%ebp),%eax
    25be:	89 90 04 04 00 00    	mov    %edx,0x404(%eax)
    25c4:	8b 45 08             	mov    0x8(%ebp),%eax
    25c7:	8b 90 04 04 00 00    	mov    0x404(%eax),%edx
    25cd:	8b 45 08             	mov    0x8(%ebp),%eax
    25d0:	89 90 00 04 00 00    	mov    %edx,0x400(%eax)
    25d6:	83 ec 0c             	sub    $0xc,%esp
    25d9:	ff 75 08             	pushl  0x8(%ebp)
    25dc:	e8 11 08 00 00       	call   2df2 <init_screen>
    25e1:	83 c4 10             	add    $0x10,%esp
    25e4:	90                   	nop
    25e5:	c9                   	leave  
    25e6:	c3                   	ret    

000025e7 <in_process>:
    25e7:	55                   	push   %ebp
    25e8:	89 e5                	mov    %esp,%ebp
    25ea:	83 ec 18             	sub    $0x18,%esp
    25ed:	8b 45 0c             	mov    0xc(%ebp),%eax
    25f0:	25 00 01 00 00       	and    $0x100,%eax
    25f5:	85 c0                	test   %eax,%eax
    25f7:	75 16                	jne    260f <in_process+0x28>
    25f9:	83 ec 08             	sub    $0x8,%esp
    25fc:	ff 75 0c             	pushl  0xc(%ebp)
    25ff:	ff 75 08             	pushl  0x8(%ebp)
    2602:	e8 f4 00 00 00       	call   26fb <put_key>
    2607:	83 c4 10             	add    $0x10,%esp
    260a:	e9 e9 00 00 00       	jmp    26f8 <in_process+0x111>
    260f:	8b 45 0c             	mov    0xc(%ebp),%eax
    2612:	25 ff 01 00 00       	and    $0x1ff,%eax
    2617:	89 45 f4             	mov    %eax,-0xc(%ebp)
    261a:	8b 45 f4             	mov    -0xc(%ebp),%eax
    261d:	2d 03 01 00 00       	sub    $0x103,%eax
    2622:	83 f8 23             	cmp    $0x23,%eax
    2625:	0f 87 c3 00 00 00    	ja     26ee <in_process+0x107>
    262b:	8b 04 85 a4 a9 00 00 	mov    0xa9a4(,%eax,4),%eax
    2632:	ff e0                	jmp    *%eax
    2634:	83 ec 08             	sub    $0x8,%esp
    2637:	6a 0a                	push   $0xa
    2639:	ff 75 08             	pushl  0x8(%ebp)
    263c:	e8 ba 00 00 00       	call   26fb <put_key>
    2641:	83 c4 10             	add    $0x10,%esp
    2644:	e9 af 00 00 00       	jmp    26f8 <in_process+0x111>
    2649:	83 ec 08             	sub    $0x8,%esp
    264c:	6a 08                	push   $0x8
    264e:	ff 75 08             	pushl  0x8(%ebp)
    2651:	e8 a5 00 00 00       	call   26fb <put_key>
    2656:	83 c4 10             	add    $0x10,%esp
    2659:	e9 9a 00 00 00       	jmp    26f8 <in_process+0x111>
    265e:	8b 45 0c             	mov    0xc(%ebp),%eax
    2661:	25 00 02 00 00       	and    $0x200,%eax
    2666:	85 c0                	test   %eax,%eax
    2668:	75 0c                	jne    2676 <in_process+0x8f>
    266a:	8b 45 0c             	mov    0xc(%ebp),%eax
    266d:	25 00 04 00 00       	and    $0x400,%eax
    2672:	85 c0                	test   %eax,%eax
    2674:	74 7b                	je     26f1 <in_process+0x10a>
    2676:	8b 45 08             	mov    0x8(%ebp),%eax
    2679:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    267f:	83 ec 08             	sub    $0x8,%esp
    2682:	6a ff                	push   $0xffffffff
    2684:	50                   	push   %eax
    2685:	e8 ec 0c 00 00       	call   3376 <scroll_screen>
    268a:	83 c4 10             	add    $0x10,%esp
    268d:	eb 62                	jmp    26f1 <in_process+0x10a>
    268f:	8b 45 0c             	mov    0xc(%ebp),%eax
    2692:	25 00 02 00 00       	and    $0x200,%eax
    2697:	85 c0                	test   %eax,%eax
    2699:	75 0c                	jne    26a7 <in_process+0xc0>
    269b:	8b 45 0c             	mov    0xc(%ebp),%eax
    269e:	25 00 04 00 00       	and    $0x400,%eax
    26a3:	85 c0                	test   %eax,%eax
    26a5:	74 4d                	je     26f4 <in_process+0x10d>
    26a7:	8b 45 08             	mov    0x8(%ebp),%eax
    26aa:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    26b0:	83 ec 08             	sub    $0x8,%esp
    26b3:	6a 01                	push   $0x1
    26b5:	50                   	push   %eax
    26b6:	e8 bb 0c 00 00       	call   3376 <scroll_screen>
    26bb:	83 c4 10             	add    $0x10,%esp
    26be:	eb 34                	jmp    26f4 <in_process+0x10d>
    26c0:	8b 45 0c             	mov    0xc(%ebp),%eax
    26c3:	25 00 20 00 00       	and    $0x2000,%eax
    26c8:	85 c0                	test   %eax,%eax
    26ca:	75 0c                	jne    26d8 <in_process+0xf1>
    26cc:	8b 45 0c             	mov    0xc(%ebp),%eax
    26cf:	25 00 40 00 00       	and    $0x4000,%eax
    26d4:	85 c0                	test   %eax,%eax
    26d6:	74 1f                	je     26f7 <in_process+0x110>
    26d8:	8b 45 f4             	mov    -0xc(%ebp),%eax
    26db:	2d 11 01 00 00       	sub    $0x111,%eax
    26e0:	83 ec 0c             	sub    $0xc,%esp
    26e3:	50                   	push   %eax
    26e4:	e8 4d 0c 00 00       	call   3336 <select_console>
    26e9:	83 c4 10             	add    $0x10,%esp
    26ec:	eb 09                	jmp    26f7 <in_process+0x110>
    26ee:	90                   	nop
    26ef:	eb 07                	jmp    26f8 <in_process+0x111>
    26f1:	90                   	nop
    26f2:	eb 04                	jmp    26f8 <in_process+0x111>
    26f4:	90                   	nop
    26f5:	eb 01                	jmp    26f8 <in_process+0x111>
    26f7:	90                   	nop
    26f8:	90                   	nop
    26f9:	c9                   	leave  
    26fa:	c3                   	ret    

000026fb <put_key>:
    26fb:	55                   	push   %ebp
    26fc:	89 e5                	mov    %esp,%ebp
    26fe:	8b 45 08             	mov    0x8(%ebp),%eax
    2701:	8b 80 08 04 00 00    	mov    0x408(%eax),%eax
    2707:	3d ff 00 00 00       	cmp    $0xff,%eax
    270c:	7f 5a                	jg     2768 <put_key+0x6d>
    270e:	8b 45 08             	mov    0x8(%ebp),%eax
    2711:	8b 80 00 04 00 00    	mov    0x400(%eax),%eax
    2717:	8b 55 0c             	mov    0xc(%ebp),%edx
    271a:	89 10                	mov    %edx,(%eax)
    271c:	8b 45 08             	mov    0x8(%ebp),%eax
    271f:	8b 80 00 04 00 00    	mov    0x400(%eax),%eax
    2725:	8d 50 04             	lea    0x4(%eax),%edx
    2728:	8b 45 08             	mov    0x8(%ebp),%eax
    272b:	89 90 00 04 00 00    	mov    %edx,0x400(%eax)
    2731:	8b 45 08             	mov    0x8(%ebp),%eax
    2734:	8b 80 00 04 00 00    	mov    0x400(%eax),%eax
    273a:	8b 55 08             	mov    0x8(%ebp),%edx
    273d:	81 c2 00 04 00 00    	add    $0x400,%edx
    2743:	39 d0                	cmp    %edx,%eax
    2745:	75 0c                	jne    2753 <put_key+0x58>
    2747:	8b 55 08             	mov    0x8(%ebp),%edx
    274a:	8b 45 08             	mov    0x8(%ebp),%eax
    274d:	89 90 00 04 00 00    	mov    %edx,0x400(%eax)
    2753:	8b 45 08             	mov    0x8(%ebp),%eax
    2756:	8b 80 08 04 00 00    	mov    0x408(%eax),%eax
    275c:	8d 50 01             	lea    0x1(%eax),%edx
    275f:	8b 45 08             	mov    0x8(%ebp),%eax
    2762:	89 90 08 04 00 00    	mov    %edx,0x408(%eax)
    2768:	90                   	nop
    2769:	5d                   	pop    %ebp
    276a:	c3                   	ret    

0000276b <tty_dev_read>:
    276b:	55                   	push   %ebp
    276c:	89 e5                	mov    %esp,%ebp
    276e:	83 ec 08             	sub    $0x8,%esp
    2771:	8b 45 08             	mov    0x8(%ebp),%eax
    2774:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    277a:	83 ec 0c             	sub    $0xc,%esp
    277d:	50                   	push   %eax
    277e:	e8 c0 0a 00 00       	call   3243 <is_current_console>
    2783:	83 c4 10             	add    $0x10,%esp
    2786:	85 c0                	test   %eax,%eax
    2788:	74 0e                	je     2798 <tty_dev_read+0x2d>
    278a:	83 ec 0c             	sub    $0xc,%esp
    278d:	ff 75 08             	pushl  0x8(%ebp)
    2790:	e8 d9 f6 ff ff       	call   1e6e <keyboard_read>
    2795:	83 c4 10             	add    $0x10,%esp
    2798:	90                   	nop
    2799:	c9                   	leave  
    279a:	c3                   	ret    

0000279b <tty_dev_write>:
    279b:	55                   	push   %ebp
    279c:	89 e5                	mov    %esp,%ebp
    279e:	83 ec 48             	sub    $0x48,%esp
    27a1:	e9 d4 01 00 00       	jmp    297a <tty_dev_write+0x1df>
    27a6:	8b 45 08             	mov    0x8(%ebp),%eax
    27a9:	8b 80 04 04 00 00    	mov    0x404(%eax),%eax
    27af:	8b 00                	mov    (%eax),%eax
    27b1:	88 45 f3             	mov    %al,-0xd(%ebp)
    27b4:	8b 45 08             	mov    0x8(%ebp),%eax
    27b7:	8b 80 04 04 00 00    	mov    0x404(%eax),%eax
    27bd:	8d 50 04             	lea    0x4(%eax),%edx
    27c0:	8b 45 08             	mov    0x8(%ebp),%eax
    27c3:	89 90 04 04 00 00    	mov    %edx,0x404(%eax)
    27c9:	8b 45 08             	mov    0x8(%ebp),%eax
    27cc:	8b 80 04 04 00 00    	mov    0x404(%eax),%eax
    27d2:	8b 55 08             	mov    0x8(%ebp),%edx
    27d5:	81 c2 00 04 00 00    	add    $0x400,%edx
    27db:	39 d0                	cmp    %edx,%eax
    27dd:	75 0c                	jne    27eb <tty_dev_write+0x50>
    27df:	8b 55 08             	mov    0x8(%ebp),%edx
    27e2:	8b 45 08             	mov    0x8(%ebp),%eax
    27e5:	89 90 04 04 00 00    	mov    %edx,0x404(%eax)
    27eb:	8b 45 08             	mov    0x8(%ebp),%eax
    27ee:	8b 80 08 04 00 00    	mov    0x408(%eax),%eax
    27f4:	8d 50 ff             	lea    -0x1(%eax),%edx
    27f7:	8b 45 08             	mov    0x8(%ebp),%eax
    27fa:	89 90 08 04 00 00    	mov    %edx,0x408(%eax)
    2800:	8b 45 08             	mov    0x8(%ebp),%eax
    2803:	8b 80 18 04 00 00    	mov    0x418(%eax),%eax
    2809:	85 c0                	test   %eax,%eax
    280b:	0f 84 69 01 00 00    	je     297a <tty_dev_write+0x1df>
    2811:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
    2815:	3c 1f                	cmp    $0x1f,%al
    2817:	0f 8e 8e 00 00 00    	jle    28ab <tty_dev_write+0x110>
    281d:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
    2821:	3c 7f                	cmp    $0x7f,%al
    2823:	0f 84 82 00 00 00    	je     28ab <tty_dev_write+0x110>
    2829:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
    282d:	0f be d0             	movsbl %al,%edx
    2830:	8b 45 08             	mov    0x8(%ebp),%eax
    2833:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    2839:	83 ec 08             	sub    $0x8,%esp
    283c:	52                   	push   %edx
    283d:	50                   	push   %eax
    283e:	e8 23 07 00 00       	call   2f66 <out_char>
    2843:	83 c4 10             	add    $0x10,%esp
    2846:	8b 45 08             	mov    0x8(%ebp),%eax
    2849:	8b 90 14 04 00 00    	mov    0x414(%eax),%edx
    284f:	8b 45 08             	mov    0x8(%ebp),%eax
    2852:	8b 80 1c 04 00 00    	mov    0x41c(%eax),%eax
    2858:	01 d0                	add    %edx,%eax
    285a:	89 45 f4             	mov    %eax,-0xc(%ebp)
    285d:	83 ec 08             	sub    $0x8,%esp
    2860:	8d 45 f3             	lea    -0xd(%ebp),%eax
    2863:	50                   	push   %eax
    2864:	6a 00                	push   $0x0
    2866:	e8 53 17 00 00       	call   3fbe <va2la>
    286b:	83 c4 10             	add    $0x10,%esp
    286e:	83 ec 04             	sub    $0x4,%esp
    2871:	6a 01                	push   $0x1
    2873:	50                   	push   %eax
    2874:	ff 75 f4             	pushl  -0xc(%ebp)
    2877:	e8 44 40 00 00       	call   68c0 <memcpy>
    287c:	83 c4 10             	add    $0x10,%esp
    287f:	8b 45 08             	mov    0x8(%ebp),%eax
    2882:	8b 80 1c 04 00 00    	mov    0x41c(%eax),%eax
    2888:	8d 50 01             	lea    0x1(%eax),%edx
    288b:	8b 45 08             	mov    0x8(%ebp),%eax
    288e:	89 90 1c 04 00 00    	mov    %edx,0x41c(%eax)
    2894:	8b 45 08             	mov    0x8(%ebp),%eax
    2897:	8b 80 18 04 00 00    	mov    0x418(%eax),%eax
    289d:	8d 50 ff             	lea    -0x1(%eax),%edx
    28a0:	8b 45 08             	mov    0x8(%ebp),%eax
    28a3:	89 90 18 04 00 00    	mov    %edx,0x418(%eax)
    28a9:	eb 5c                	jmp    2907 <tty_dev_write+0x16c>
    28ab:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
    28af:	3c 08                	cmp    $0x8,%al
    28b1:	75 54                	jne    2907 <tty_dev_write+0x16c>
    28b3:	8b 45 08             	mov    0x8(%ebp),%eax
    28b6:	8b 80 1c 04 00 00    	mov    0x41c(%eax),%eax
    28bc:	85 c0                	test   %eax,%eax
    28be:	74 47                	je     2907 <tty_dev_write+0x16c>
    28c0:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
    28c4:	0f be d0             	movsbl %al,%edx
    28c7:	8b 45 08             	mov    0x8(%ebp),%eax
    28ca:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    28d0:	83 ec 08             	sub    $0x8,%esp
    28d3:	52                   	push   %edx
    28d4:	50                   	push   %eax
    28d5:	e8 8c 06 00 00       	call   2f66 <out_char>
    28da:	83 c4 10             	add    $0x10,%esp
    28dd:	8b 45 08             	mov    0x8(%ebp),%eax
    28e0:	8b 80 1c 04 00 00    	mov    0x41c(%eax),%eax
    28e6:	8d 50 ff             	lea    -0x1(%eax),%edx
    28e9:	8b 45 08             	mov    0x8(%ebp),%eax
    28ec:	89 90 1c 04 00 00    	mov    %edx,0x41c(%eax)
    28f2:	8b 45 08             	mov    0x8(%ebp),%eax
    28f5:	8b 80 18 04 00 00    	mov    0x418(%eax),%eax
    28fb:	8d 50 01             	lea    0x1(%eax),%edx
    28fe:	8b 45 08             	mov    0x8(%ebp),%eax
    2901:	89 90 18 04 00 00    	mov    %edx,0x418(%eax)
    2907:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
    290b:	3c 0a                	cmp    $0xa,%al
    290d:	74 0d                	je     291c <tty_dev_write+0x181>
    290f:	8b 45 08             	mov    0x8(%ebp),%eax
    2912:	8b 80 18 04 00 00    	mov    0x418(%eax),%eax
    2918:	85 c0                	test   %eax,%eax
    291a:	75 5e                	jne    297a <tty_dev_write+0x1df>
    291c:	8b 45 08             	mov    0x8(%ebp),%eax
    291f:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    2925:	83 ec 08             	sub    $0x8,%esp
    2928:	6a 0a                	push   $0xa
    292a:	50                   	push   %eax
    292b:	e8 36 06 00 00       	call   2f66 <out_char>
    2930:	83 c4 10             	add    $0x10,%esp
    2933:	c7 45 c4 0c 00 00 00 	movl   $0xc,-0x3c(%ebp)
    293a:	8b 45 08             	mov    0x8(%ebp),%eax
    293d:	8b 80 10 04 00 00    	mov    0x410(%eax),%eax
    2943:	89 45 d0             	mov    %eax,-0x30(%ebp)
    2946:	8b 45 08             	mov    0x8(%ebp),%eax
    2949:	8b 80 1c 04 00 00    	mov    0x41c(%eax),%eax
    294f:	89 45 cc             	mov    %eax,-0x34(%ebp)
    2952:	8b 45 08             	mov    0x8(%ebp),%eax
    2955:	8b 80 0c 04 00 00    	mov    0x40c(%eax),%eax
    295b:	83 ec 04             	sub    $0x4,%esp
    295e:	8d 55 c0             	lea    -0x40(%ebp),%edx
    2961:	52                   	push   %edx
    2962:	50                   	push   %eax
    2963:	6a 01                	push   $0x1
    2965:	e8 4d 15 00 00       	call   3eb7 <send_recv>
    296a:	83 c4 10             	add    $0x10,%esp
    296d:	8b 45 08             	mov    0x8(%ebp),%eax
    2970:	c7 80 18 04 00 00 00 	movl   $0x0,0x418(%eax)
    2977:	00 00 00 
    297a:	8b 45 08             	mov    0x8(%ebp),%eax
    297d:	8b 80 08 04 00 00    	mov    0x408(%eax),%eax
    2983:	85 c0                	test   %eax,%eax
    2985:	0f 85 1b fe ff ff    	jne    27a6 <tty_dev_write+0xb>
    298b:	90                   	nop
    298c:	c9                   	leave  
    298d:	c3                   	ret    

0000298e <tty_do_read>:
    298e:	55                   	push   %ebp
    298f:	89 e5                	mov    %esp,%ebp
    2991:	83 ec 08             	sub    $0x8,%esp
    2994:	8b 45 0c             	mov    0xc(%ebp),%eax
    2997:	8b 10                	mov    (%eax),%edx
    2999:	8b 45 08             	mov    0x8(%ebp),%eax
    299c:	89 90 0c 04 00 00    	mov    %edx,0x40c(%eax)
    29a2:	8b 45 0c             	mov    0xc(%ebp),%eax
    29a5:	8b 50 10             	mov    0x10(%eax),%edx
    29a8:	8b 45 08             	mov    0x8(%ebp),%eax
    29ab:	89 90 10 04 00 00    	mov    %edx,0x410(%eax)
    29b1:	8b 45 0c             	mov    0xc(%ebp),%eax
    29b4:	8b 50 2c             	mov    0x2c(%eax),%edx
    29b7:	8b 45 08             	mov    0x8(%ebp),%eax
    29ba:	8b 80 10 04 00 00    	mov    0x410(%eax),%eax
    29c0:	83 ec 08             	sub    $0x8,%esp
    29c3:	52                   	push   %edx
    29c4:	50                   	push   %eax
    29c5:	e8 f4 15 00 00       	call   3fbe <va2la>
    29ca:	83 c4 10             	add    $0x10,%esp
    29cd:	89 c2                	mov    %eax,%edx
    29cf:	8b 45 08             	mov    0x8(%ebp),%eax
    29d2:	89 90 14 04 00 00    	mov    %edx,0x414(%eax)
    29d8:	8b 45 0c             	mov    0xc(%ebp),%eax
    29db:	8b 50 0c             	mov    0xc(%eax),%edx
    29de:	8b 45 08             	mov    0x8(%ebp),%eax
    29e1:	89 90 18 04 00 00    	mov    %edx,0x418(%eax)
    29e7:	8b 45 08             	mov    0x8(%ebp),%eax
    29ea:	c7 80 1c 04 00 00 00 	movl   $0x0,0x41c(%eax)
    29f1:	00 00 00 
    29f4:	8b 45 0c             	mov    0xc(%ebp),%eax
    29f7:	c7 40 04 0b 00 00 00 	movl   $0xb,0x4(%eax)
    29fe:	8b 45 08             	mov    0x8(%ebp),%eax
    2a01:	8b 90 18 04 00 00    	mov    0x418(%eax),%edx
    2a07:	8b 45 0c             	mov    0xc(%ebp),%eax
    2a0a:	89 50 0c             	mov    %edx,0xc(%eax)
    2a0d:	8b 45 08             	mov    0x8(%ebp),%eax
    2a10:	8b 80 0c 04 00 00    	mov    0x40c(%eax),%eax
    2a16:	83 ec 04             	sub    $0x4,%esp
    2a19:	ff 75 0c             	pushl  0xc(%ebp)
    2a1c:	50                   	push   %eax
    2a1d:	6a 01                	push   $0x1
    2a1f:	e8 93 14 00 00       	call   3eb7 <send_recv>
    2a24:	83 c4 10             	add    $0x10,%esp
    2a27:	90                   	nop
    2a28:	c9                   	leave  
    2a29:	c3                   	ret    

00002a2a <tty_do_write>:
    2a2a:	55                   	push   %ebp
    2a2b:	89 e5                	mov    %esp,%ebp
    2a2d:	83 ec 28             	sub    $0x28,%esp
    2a30:	8b 45 0c             	mov    0xc(%ebp),%eax
    2a33:	8b 50 2c             	mov    0x2c(%eax),%edx
    2a36:	8b 45 0c             	mov    0xc(%ebp),%eax
    2a39:	8b 40 10             	mov    0x10(%eax),%eax
    2a3c:	83 ec 08             	sub    $0x8,%esp
    2a3f:	52                   	push   %edx
    2a40:	50                   	push   %eax
    2a41:	e8 78 15 00 00       	call   3fbe <va2la>
    2a46:	83 c4 10             	add    $0x10,%esp
    2a49:	89 45 f4             	mov    %eax,-0xc(%ebp)
    2a4c:	8b 45 0c             	mov    0xc(%ebp),%eax
    2a4f:	8b 40 0c             	mov    0xc(%eax),%eax
    2a52:	89 45 f0             	mov    %eax,-0x10(%ebp)
    2a55:	eb 78                	jmp    2acf <tty_do_write+0xa5>
    2a57:	b8 02 00 00 00       	mov    $0x2,%eax
    2a5c:	83 7d f0 02          	cmpl   $0x2,-0x10(%ebp)
    2a60:	0f 4e 45 f0          	cmovle -0x10(%ebp),%eax
    2a64:	89 45 e8             	mov    %eax,-0x18(%ebp)
    2a67:	83 ec 08             	sub    $0x8,%esp
    2a6a:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    2a6d:	50                   	push   %eax
    2a6e:	6a 00                	push   $0x0
    2a70:	e8 49 15 00 00       	call   3fbe <va2la>
    2a75:	83 c4 10             	add    $0x10,%esp
    2a78:	83 ec 04             	sub    $0x4,%esp
    2a7b:	ff 75 e8             	pushl  -0x18(%ebp)
    2a7e:	ff 75 f4             	pushl  -0xc(%ebp)
    2a81:	50                   	push   %eax
    2a82:	e8 39 3e 00 00       	call   68c0 <memcpy>
    2a87:	83 c4 10             	add    $0x10,%esp
    2a8a:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    2a91:	eb 28                	jmp    2abb <tty_do_write+0x91>
    2a93:	8d 55 e6             	lea    -0x1a(%ebp),%edx
    2a96:	8b 45 ec             	mov    -0x14(%ebp),%eax
    2a99:	01 d0                	add    %edx,%eax
    2a9b:	0f b6 00             	movzbl (%eax),%eax
    2a9e:	0f be d0             	movsbl %al,%edx
    2aa1:	8b 45 08             	mov    0x8(%ebp),%eax
    2aa4:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    2aaa:	83 ec 08             	sub    $0x8,%esp
    2aad:	52                   	push   %edx
    2aae:	50                   	push   %eax
    2aaf:	e8 b2 04 00 00       	call   2f66 <out_char>
    2ab4:	83 c4 10             	add    $0x10,%esp
    2ab7:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
    2abb:	8b 45 ec             	mov    -0x14(%ebp),%eax
    2abe:	3b 45 e8             	cmp    -0x18(%ebp),%eax
    2ac1:	7c d0                	jl     2a93 <tty_do_write+0x69>
    2ac3:	8b 45 e8             	mov    -0x18(%ebp),%eax
    2ac6:	29 45 f0             	sub    %eax,-0x10(%ebp)
    2ac9:	8b 45 e8             	mov    -0x18(%ebp),%eax
    2acc:	01 45 f4             	add    %eax,-0xc(%ebp)
    2acf:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    2ad3:	75 82                	jne    2a57 <tty_do_write+0x2d>
    2ad5:	8b 45 0c             	mov    0xc(%ebp),%eax
    2ad8:	c7 40 04 0d 00 00 00 	movl   $0xd,0x4(%eax)
    2adf:	8b 45 0c             	mov    0xc(%ebp),%eax
    2ae2:	8b 00                	mov    (%eax),%eax
    2ae4:	83 ec 04             	sub    $0x4,%esp
    2ae7:	ff 75 0c             	pushl  0xc(%ebp)
    2aea:	50                   	push   %eax
    2aeb:	6a 01                	push   $0x1
    2aed:	e8 c5 13 00 00       	call   3eb7 <send_recv>
    2af2:	83 c4 10             	add    $0x10,%esp
    2af5:	90                   	nop
    2af6:	c9                   	leave  
    2af7:	c3                   	ret    

00002af8 <sys_printx>:
    2af8:	55                   	push   %ebp
    2af9:	89 e5                	mov    %esp,%ebp
    2afb:	83 ec 48             	sub    $0x48,%esp
    2afe:	c7 45 bf 3f 20 6b 5f 	movl   $0x5f6b203f,-0x41(%ebp)
    2b05:	c7 45 c3 72 65 65 6e 	movl   $0x6e656572,-0x3d(%ebp)
    2b0c:	c7 45 c7 74 65 72 20 	movl   $0x20726574,-0x39(%ebp)
    2b13:	c7 45 cb 69 73 20 69 	movl   $0x69207369,-0x35(%ebp)
    2b1a:	c7 45 cf 6e 63 6f 72 	movl   $0x726f636e,-0x31(%ebp)
    2b21:	c7 45 d3 72 65 63 74 	movl   $0x74636572,-0x2d(%ebp)
    2b28:	c7 45 d7 20 66 6f 72 	movl   $0x726f6620,-0x29(%ebp)
    2b2f:	c7 45 db 20 75 6e 6b 	movl   $0x6b6e7520,-0x25(%ebp)
    2b36:	c7 45 df 6e 6f 77 6e 	movl   $0x6e776f6e,-0x21(%ebp)
    2b3d:	c7 45 e3 20 72 65 61 	movl   $0x61657220,-0x1d(%ebp)
    2b44:	c7 45 e7 73 6f 6e 00 	movl   $0x6e6f73,-0x19(%ebp)
    2b4b:	c6 45 bf 02          	movb   $0x2,-0x41(%ebp)
    2b4f:	a1 a0 93 04 00       	mov    0x493a0,%eax
    2b54:	85 c0                	test   %eax,%eax
    2b56:	75 25                	jne    2b7d <sys_printx+0x85>
    2b58:	8b 45 14             	mov    0x14(%ebp),%eax
    2b5b:	2d e0 b2 04 00       	sub    $0x4b2e0,%eax
    2b60:	c1 f8 02             	sar    $0x2,%eax
    2b63:	69 c0 6d b1 32 7c    	imul   $0x7c32b16d,%eax,%eax
    2b69:	83 ec 08             	sub    $0x8,%esp
    2b6c:	ff 75 10             	pushl  0x10(%ebp)
    2b6f:	50                   	push   %eax
    2b70:	e8 49 14 00 00       	call   3fbe <va2la>
    2b75:	83 c4 10             	add    $0x10,%esp
    2b78:	89 45 f4             	mov    %eax,-0xc(%ebp)
    2b7b:	eb 17                	jmp    2b94 <sys_printx+0x9c>
    2b7d:	a1 a0 93 04 00       	mov    0x493a0,%eax
    2b82:	85 c0                	test   %eax,%eax
    2b84:	74 08                	je     2b8e <sys_printx+0x96>
    2b86:	8b 45 10             	mov    0x10(%ebp),%eax
    2b89:	89 45 f4             	mov    %eax,-0xc(%ebp)
    2b8c:	eb 06                	jmp    2b94 <sys_printx+0x9c>
    2b8e:	8d 45 bf             	lea    -0x41(%ebp),%eax
    2b91:	89 45 f4             	mov    %eax,-0xc(%ebp)
    2b94:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2b97:	0f b6 00             	movzbl (%eax),%eax
    2b9a:	3c 02                	cmp    $0x2,%al
    2b9c:	74 1e                	je     2bbc <sys_printx+0xc4>
    2b9e:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2ba1:	0f b6 00             	movzbl (%eax),%eax
    2ba4:	3c 03                	cmp    $0x3,%al
    2ba6:	0f 85 cd 00 00 00    	jne    2c79 <sys_printx+0x181>
    2bac:	a1 c0 b2 04 00       	mov    0x4b2c0,%eax
    2bb1:	3d 30 b9 04 00       	cmp    $0x4b930,%eax
    2bb6:	0f 83 bd 00 00 00    	jae    2c79 <sys_printx+0x181>
    2bbc:	e8 4c 3b 00 00       	call   670d <disable_int>
    2bc1:	c7 45 f0 00 80 0b 00 	movl   $0xb8000,-0x10(%ebp)
    2bc8:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2bcb:	83 c0 01             	add    $0x1,%eax
    2bce:	89 45 ec             	mov    %eax,-0x14(%ebp)
    2bd1:	eb 76                	jmp    2c49 <sys_printx+0x151>
    2bd3:	8b 55 ec             	mov    -0x14(%ebp),%edx
    2bd6:	8d 42 01             	lea    0x1(%edx),%eax
    2bd9:	89 45 ec             	mov    %eax,-0x14(%ebp)
    2bdc:	8b 45 f0             	mov    -0x10(%ebp),%eax
    2bdf:	8d 48 01             	lea    0x1(%eax),%ecx
    2be2:	89 4d f0             	mov    %ecx,-0x10(%ebp)
    2be5:	0f b6 12             	movzbl (%edx),%edx
    2be8:	88 10                	mov    %dl,(%eax)
    2bea:	8b 45 f0             	mov    -0x10(%ebp),%eax
    2bed:	8d 50 01             	lea    0x1(%eax),%edx
    2bf0:	89 55 f0             	mov    %edx,-0x10(%ebp)
    2bf3:	c6 00 1c             	movb   $0x1c,(%eax)
    2bf6:	8b 45 ec             	mov    -0x14(%ebp),%eax
    2bf9:	0f b6 00             	movzbl (%eax),%eax
    2bfc:	84 c0                	test   %al,%al
    2bfe:	75 49                	jne    2c49 <sys_printx+0x151>
    2c00:	eb 10                	jmp    2c12 <sys_printx+0x11a>
    2c02:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    2c06:	8b 45 f0             	mov    -0x10(%ebp),%eax
    2c09:	8d 50 01             	lea    0x1(%eax),%edx
    2c0c:	89 55 f0             	mov    %edx,-0x10(%ebp)
    2c0f:	c6 00 08             	movb   $0x8,(%eax)
    2c12:	8b 45 f0             	mov    -0x10(%ebp),%eax
    2c15:	8d 88 00 80 f4 ff    	lea    -0xb8000(%eax),%ecx
    2c1b:	ba 67 66 66 66       	mov    $0x66666667,%edx
    2c20:	89 c8                	mov    %ecx,%eax
    2c22:	f7 ea                	imul   %edx
    2c24:	c1 fa 09             	sar    $0x9,%edx
    2c27:	89 c8                	mov    %ecx,%eax
    2c29:	c1 f8 1f             	sar    $0x1f,%eax
    2c2c:	29 c2                	sub    %eax,%edx
    2c2e:	89 d0                	mov    %edx,%eax
    2c30:	c1 e0 02             	shl    $0x2,%eax
    2c33:	01 d0                	add    %edx,%eax
    2c35:	c1 e0 08             	shl    $0x8,%eax
    2c38:	29 c1                	sub    %eax,%ecx
    2c3a:	89 ca                	mov    %ecx,%edx
    2c3c:	85 d2                	test   %edx,%edx
    2c3e:	75 c2                	jne    2c02 <sys_printx+0x10a>
    2c40:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2c43:	83 c0 01             	add    $0x1,%eax
    2c46:	89 45 ec             	mov    %eax,-0x14(%ebp)
    2c49:	81 7d f0 ff ff 0b 00 	cmpl   $0xbffff,-0x10(%ebp)
    2c50:	76 81                	jbe    2bd3 <sys_printx+0xdb>
    2c52:	f4                   	hlt    
    2c53:	eb 24                	jmp    2c79 <sys_printx+0x181>
    2c55:	80 7d eb 02          	cmpb   $0x2,-0x15(%ebp)
    2c59:	74 1e                	je     2c79 <sys_printx+0x181>
    2c5b:	80 7d eb 03          	cmpb   $0x3,-0x15(%ebp)
    2c5f:	75 02                	jne    2c63 <sys_printx+0x16b>
    2c61:	eb 16                	jmp    2c79 <sys_printx+0x181>
    2c63:	0f be 55 eb          	movsbl -0x15(%ebp),%edx
    2c67:	a1 00 9c 04 00       	mov    0x49c00,%eax
    2c6c:	83 ec 08             	sub    $0x8,%esp
    2c6f:	52                   	push   %edx
    2c70:	50                   	push   %eax
    2c71:	e8 f0 02 00 00       	call   2f66 <out_char>
    2c76:	83 c4 10             	add    $0x10,%esp
    2c79:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2c7c:	8d 50 01             	lea    0x1(%eax),%edx
    2c7f:	89 55 f4             	mov    %edx,-0xc(%ebp)
    2c82:	0f b6 00             	movzbl (%eax),%eax
    2c85:	88 45 eb             	mov    %al,-0x15(%ebp)
    2c88:	80 7d eb 00          	cmpb   $0x0,-0x15(%ebp)
    2c8c:	75 c7                	jne    2c55 <sys_printx+0x15d>
    2c8e:	b8 00 00 00 00       	mov    $0x0,%eax
    2c93:	c9                   	leave  
    2c94:	c3                   	ret    

00002c95 <dump_tty_buf>:
    2c95:	55                   	push   %ebp
    2c96:	89 e5                	mov    %esp,%ebp
    2c98:	83 ec 18             	sub    $0x18,%esp
    2c9b:	c7 45 f4 04 9c 04 00 	movl   $0x49c04,-0xc(%ebp)
    2ca2:	83 ec 0c             	sub    $0xc,%esp
    2ca5:	68 20 f6 00 00       	push   $0xf620
    2caa:	e8 f5 35 00 00       	call   62a4 <printf>
    2caf:	83 c4 10             	add    $0x10,%esp
    2cb2:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2cb5:	8b 90 00 04 00 00    	mov    0x400(%eax),%edx
    2cbb:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2cbe:	29 c2                	sub    %eax,%edx
    2cc0:	89 d0                	mov    %edx,%eax
    2cc2:	c1 f8 02             	sar    $0x2,%eax
    2cc5:	83 ec 08             	sub    $0x8,%esp
    2cc8:	50                   	push   %eax
    2cc9:	68 34 aa 00 00       	push   $0xaa34
    2cce:	e8 d1 35 00 00       	call   62a4 <printf>
    2cd3:	83 c4 10             	add    $0x10,%esp
    2cd6:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2cd9:	8b 90 04 04 00 00    	mov    0x404(%eax),%edx
    2cdf:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2ce2:	29 c2                	sub    %eax,%edx
    2ce4:	89 d0                	mov    %edx,%eax
    2ce6:	c1 f8 02             	sar    $0x2,%eax
    2ce9:	83 ec 08             	sub    $0x8,%esp
    2cec:	50                   	push   %eax
    2ced:	68 3e aa 00 00       	push   $0xaa3e
    2cf2:	e8 ad 35 00 00       	call   62a4 <printf>
    2cf7:	83 c4 10             	add    $0x10,%esp
    2cfa:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2cfd:	8b 80 08 04 00 00    	mov    0x408(%eax),%eax
    2d03:	83 ec 08             	sub    $0x8,%esp
    2d06:	50                   	push   %eax
    2d07:	68 48 aa 00 00       	push   $0xaa48
    2d0c:	e8 93 35 00 00       	call   62a4 <printf>
    2d11:	83 c4 10             	add    $0x10,%esp
    2d14:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2d17:	8b 80 0c 04 00 00    	mov    0x40c(%eax),%eax
    2d1d:	89 45 f0             	mov    %eax,-0x10(%ebp)
    2d20:	8b 45 f0             	mov    -0x10(%ebp),%eax
    2d23:	69 c0 94 01 00 00    	imul   $0x194,%eax,%eax
    2d29:	83 c0 60             	add    $0x60,%eax
    2d2c:	05 e0 b2 04 00       	add    $0x4b2e0,%eax
    2d31:	83 c0 08             	add    $0x8,%eax
    2d34:	83 ec 04             	sub    $0x4,%esp
    2d37:	ff 75 f0             	pushl  -0x10(%ebp)
    2d3a:	50                   	push   %eax
    2d3b:	68 51 aa 00 00       	push   $0xaa51
    2d40:	e8 5f 35 00 00       	call   62a4 <printf>
    2d45:	83 c4 10             	add    $0x10,%esp
    2d48:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2d4b:	8b 80 10 04 00 00    	mov    0x410(%eax),%eax
    2d51:	89 45 f0             	mov    %eax,-0x10(%ebp)
    2d54:	8b 45 f0             	mov    -0x10(%ebp),%eax
    2d57:	69 c0 94 01 00 00    	imul   $0x194,%eax,%eax
    2d5d:	83 c0 60             	add    $0x60,%eax
    2d60:	05 e0 b2 04 00       	add    $0x4b2e0,%eax
    2d65:	83 c0 08             	add    $0x8,%eax
    2d68:	83 ec 04             	sub    $0x4,%esp
    2d6b:	ff 75 f0             	pushl  -0x10(%ebp)
    2d6e:	50                   	push   %eax
    2d6f:	68 51 aa 00 00       	push   $0xaa51
    2d74:	e8 2b 35 00 00       	call   62a4 <printf>
    2d79:	83 c4 10             	add    $0x10,%esp
    2d7c:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2d7f:	8b 80 14 04 00 00    	mov    0x414(%eax),%eax
    2d85:	83 ec 08             	sub    $0x8,%esp
    2d88:	50                   	push   %eax
    2d89:	68 62 aa 00 00       	push   $0xaa62
    2d8e:	e8 11 35 00 00       	call   62a4 <printf>
    2d93:	83 c4 10             	add    $0x10,%esp
    2d96:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2d99:	8b 80 18 04 00 00    	mov    0x418(%eax),%eax
    2d9f:	83 ec 08             	sub    $0x8,%esp
    2da2:	50                   	push   %eax
    2da3:	68 6f aa 00 00       	push   $0xaa6f
    2da8:	e8 f7 34 00 00       	call   62a4 <printf>
    2dad:	83 c4 10             	add    $0x10,%esp
    2db0:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2db3:	8b 80 1c 04 00 00    	mov    0x41c(%eax),%eax
    2db9:	83 ec 08             	sub    $0x8,%esp
    2dbc:	50                   	push   %eax
    2dbd:	68 7d aa 00 00       	push   $0xaa7d
    2dc2:	e8 dd 34 00 00       	call   62a4 <printf>
    2dc7:	83 c4 10             	add    $0x10,%esp
    2dca:	83 ec 0c             	sub    $0xc,%esp
    2dcd:	68 8c aa 00 00       	push   $0xaa8c
    2dd2:	e8 cd 34 00 00       	call   62a4 <printf>
    2dd7:	83 c4 10             	add    $0x10,%esp
    2dda:	83 ec 08             	sub    $0x8,%esp
    2ddd:	68 ae aa 00 00       	push   $0xaaae
    2de2:	68 20 f6 00 00       	push   $0xf620
    2de7:	e8 1e 3b 00 00       	call   690a <strcpy>
    2dec:	83 c4 10             	add    $0x10,%esp
    2def:	90                   	nop
    2df0:	c9                   	leave  
    2df1:	c3                   	ret    

00002df2 <init_screen>:
    2df2:	55                   	push   %ebp
    2df3:	89 e5                	mov    %esp,%ebp
    2df5:	83 ec 28             	sub    $0x28,%esp
    2df8:	8b 45 08             	mov    0x8(%ebp),%eax
    2dfb:	2d e0 97 04 00       	sub    $0x497e0,%eax
    2e00:	c1 f8 02             	sar    $0x2,%eax
    2e03:	69 c0 39 dd 03 1c    	imul   $0x1c03dd39,%eax,%eax
    2e09:	89 45 f0             	mov    %eax,-0x10(%ebp)
    2e0c:	8b 55 f0             	mov    -0x10(%ebp),%edx
    2e0f:	89 d0                	mov    %edx,%eax
    2e11:	c1 e0 02             	shl    $0x2,%eax
    2e14:	01 d0                	add    %edx,%eax
    2e16:	c1 e0 02             	shl    $0x2,%eax
    2e19:	8d 90 40 b2 04 00    	lea    0x4b240(%eax),%edx
    2e1f:	8b 45 08             	mov    0x8(%ebp),%eax
    2e22:	89 90 20 04 00 00    	mov    %edx,0x420(%eax)
    2e28:	c7 45 ec 00 40 00 00 	movl   $0x4000,-0x14(%ebp)
    2e2f:	8b 4d ec             	mov    -0x14(%ebp),%ecx
    2e32:	ba 56 55 55 55       	mov    $0x55555556,%edx
    2e37:	89 c8                	mov    %ecx,%eax
    2e39:	f7 ea                	imul   %edx
    2e3b:	89 c8                	mov    %ecx,%eax
    2e3d:	c1 f8 1f             	sar    $0x1f,%eax
    2e40:	29 c2                	sub    %eax,%edx
    2e42:	89 d0                	mov    %edx,%eax
    2e44:	89 45 e8             	mov    %eax,-0x18(%ebp)
    2e47:	8b 45 f0             	mov    -0x10(%ebp),%eax
    2e4a:	0f af 45 e8          	imul   -0x18(%ebp),%eax
    2e4e:	89 c2                	mov    %eax,%edx
    2e50:	8b 45 08             	mov    0x8(%ebp),%eax
    2e53:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    2e59:	89 50 04             	mov    %edx,0x4(%eax)
    2e5c:	8b 4d e8             	mov    -0x18(%ebp),%ecx
    2e5f:	ba 67 66 66 66       	mov    $0x66666667,%edx
    2e64:	89 c8                	mov    %ecx,%eax
    2e66:	f7 ea                	imul   %edx
    2e68:	c1 fa 05             	sar    $0x5,%edx
    2e6b:	89 c8                	mov    %ecx,%eax
    2e6d:	c1 f8 1f             	sar    $0x1f,%eax
    2e70:	29 c2                	sub    %eax,%edx
    2e72:	89 d0                	mov    %edx,%eax
    2e74:	c1 e0 02             	shl    $0x2,%eax
    2e77:	01 d0                	add    %edx,%eax
    2e79:	c1 e0 04             	shl    $0x4,%eax
    2e7c:	89 c2                	mov    %eax,%edx
    2e7e:	8b 45 08             	mov    0x8(%ebp),%eax
    2e81:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    2e87:	89 50 08             	mov    %edx,0x8(%eax)
    2e8a:	8b 45 08             	mov    0x8(%ebp),%eax
    2e8d:	8b 90 20 04 00 00    	mov    0x420(%eax),%edx
    2e93:	8b 45 08             	mov    0x8(%ebp),%eax
    2e96:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    2e9c:	8b 52 04             	mov    0x4(%edx),%edx
    2e9f:	89 10                	mov    %edx,(%eax)
    2ea1:	8b 55 08             	mov    0x8(%ebp),%edx
    2ea4:	8b 92 20 04 00 00    	mov    0x420(%edx),%edx
    2eaa:	8b 00                	mov    (%eax),%eax
    2eac:	89 42 0c             	mov    %eax,0xc(%edx)
    2eaf:	8b 45 08             	mov    0x8(%ebp),%eax
    2eb2:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    2eb8:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
    2ebf:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    2ec3:	75 28                	jne    2eed <init_screen+0xfb>
    2ec5:	a1 24 a8 04 00       	mov    0x4a824,%eax
    2eca:	89 c2                	mov    %eax,%edx
    2ecc:	c1 ea 1f             	shr    $0x1f,%edx
    2ecf:	01 d0                	add    %edx,%eax
    2ed1:	d1 f8                	sar    %eax
    2ed3:	89 c2                	mov    %eax,%edx
    2ed5:	8b 45 08             	mov    0x8(%ebp),%eax
    2ed8:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    2ede:	89 50 0c             	mov    %edx,0xc(%eax)
    2ee1:	c7 05 24 a8 04 00 00 	movl   $0x0,0x4a824
    2ee8:	00 00 00 
    2eeb:	eb 5e                	jmp    2f4b <init_screen+0x159>
    2eed:	c7 45 de 5b 54 54 59 	movl   $0x5954545b,-0x22(%ebp)
    2ef4:	c7 45 e2 20 23 3f 5d 	movl   $0x5d3f2320,-0x1e(%ebp)
    2efb:	66 c7 45 e6 0a 00    	movw   $0xa,-0x1a(%ebp)
    2f01:	8d 45 de             	lea    -0x22(%ebp),%eax
    2f04:	89 45 f4             	mov    %eax,-0xc(%ebp)
    2f07:	eb 38                	jmp    2f41 <init_screen+0x14f>
    2f09:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2f0c:	0f b6 00             	movzbl (%eax),%eax
    2f0f:	3c 3f                	cmp    $0x3f,%al
    2f11:	75 0b                	jne    2f1e <init_screen+0x12c>
    2f13:	8b 45 f0             	mov    -0x10(%ebp),%eax
    2f16:	83 c0 30             	add    $0x30,%eax
    2f19:	0f be c0             	movsbl %al,%eax
    2f1c:	eb 09                	jmp    2f27 <init_screen+0x135>
    2f1e:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2f21:	0f b6 00             	movzbl (%eax),%eax
    2f24:	0f be c0             	movsbl %al,%eax
    2f27:	8b 55 08             	mov    0x8(%ebp),%edx
    2f2a:	8b 92 20 04 00 00    	mov    0x420(%edx),%edx
    2f30:	83 ec 08             	sub    $0x8,%esp
    2f33:	50                   	push   %eax
    2f34:	52                   	push   %edx
    2f35:	e8 2c 00 00 00       	call   2f66 <out_char>
    2f3a:	83 c4 10             	add    $0x10,%esp
    2f3d:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    2f41:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2f44:	0f b6 00             	movzbl (%eax),%eax
    2f47:	84 c0                	test   %al,%al
    2f49:	75 be                	jne    2f09 <init_screen+0x117>
    2f4b:	8b 45 08             	mov    0x8(%ebp),%eax
    2f4e:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    2f54:	8b 40 0c             	mov    0xc(%eax),%eax
    2f57:	83 ec 0c             	sub    $0xc,%esp
    2f5a:	50                   	push   %eax
    2f5b:	e8 06 03 00 00       	call   3266 <set_cursor>
    2f60:	83 c4 10             	add    $0x10,%esp
    2f63:	90                   	nop
    2f64:	c9                   	leave  
    2f65:	c3                   	ret    

00002f66 <out_char>:
    2f66:	55                   	push   %ebp
    2f67:	89 e5                	mov    %esp,%ebp
    2f69:	83 ec 28             	sub    $0x28,%esp
    2f6c:	8b 45 0c             	mov    0xc(%ebp),%eax
    2f6f:	88 45 e4             	mov    %al,-0x1c(%ebp)
    2f72:	8b 45 08             	mov    0x8(%ebp),%eax
    2f75:	8b 40 0c             	mov    0xc(%eax),%eax
    2f78:	05 00 c0 05 00       	add    $0x5c000,%eax
    2f7d:	01 c0                	add    %eax,%eax
    2f7f:	89 45 f4             	mov    %eax,-0xc(%ebp)
    2f82:	8b 45 08             	mov    0x8(%ebp),%eax
    2f85:	8b 50 0c             	mov    0xc(%eax),%edx
    2f88:	8b 45 08             	mov    0x8(%ebp),%eax
    2f8b:	8b 40 04             	mov    0x4(%eax),%eax
    2f8e:	29 c2                	sub    %eax,%edx
    2f90:	8b 45 08             	mov    0x8(%ebp),%eax
    2f93:	8b 40 08             	mov    0x8(%eax),%eax
    2f96:	39 c2                	cmp    %eax,%edx
    2f98:	72 19                	jb     2fb3 <out_char+0x4d>
    2f9a:	6a 59                	push   $0x59
    2f9c:	68 b0 aa 00 00       	push   $0xaab0
    2fa1:	68 b0 aa 00 00       	push   $0xaab0
    2fa6:	68 c4 aa 00 00       	push   $0xaac4
    2fab:	e8 e3 3a 00 00       	call   6a93 <assertion_failure>
    2fb0:	83 c4 10             	add    $0x10,%esp
    2fb3:	8b 45 08             	mov    0x8(%ebp),%eax
    2fb6:	8b 50 0c             	mov    0xc(%eax),%edx
    2fb9:	8b 45 08             	mov    0x8(%ebp),%eax
    2fbc:	8b 40 04             	mov    0x4(%eax),%eax
    2fbf:	89 d1                	mov    %edx,%ecx
    2fc1:	29 c1                	sub    %eax,%ecx
    2fc3:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
    2fc8:	89 c8                	mov    %ecx,%eax
    2fca:	f7 e2                	mul    %edx
    2fcc:	c1 ea 06             	shr    $0x6,%edx
    2fcf:	89 d0                	mov    %edx,%eax
    2fd1:	c1 e0 02             	shl    $0x2,%eax
    2fd4:	01 d0                	add    %edx,%eax
    2fd6:	c1 e0 04             	shl    $0x4,%eax
    2fd9:	29 c1                	sub    %eax,%ecx
    2fdb:	89 ca                	mov    %ecx,%edx
    2fdd:	89 55 f0             	mov    %edx,-0x10(%ebp)
    2fe0:	8b 45 08             	mov    0x8(%ebp),%eax
    2fe3:	8b 50 0c             	mov    0xc(%eax),%edx
    2fe6:	8b 45 08             	mov    0x8(%ebp),%eax
    2fe9:	8b 40 04             	mov    0x4(%eax),%eax
    2fec:	29 c2                	sub    %eax,%edx
    2fee:	89 d0                	mov    %edx,%eax
    2ff0:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
    2ff5:	f7 e2                	mul    %edx
    2ff7:	89 d0                	mov    %edx,%eax
    2ff9:	c1 e8 06             	shr    $0x6,%eax
    2ffc:	89 45 ec             	mov    %eax,-0x14(%ebp)
    2fff:	0f be 45 e4          	movsbl -0x1c(%ebp),%eax
    3003:	83 f8 08             	cmp    $0x8,%eax
    3006:	74 26                	je     302e <out_char+0xc8>
    3008:	83 f8 0a             	cmp    $0xa,%eax
    300b:	75 54                	jne    3061 <out_char+0xfb>
    300d:	8b 45 08             	mov    0x8(%ebp),%eax
    3010:	8b 48 04             	mov    0x4(%eax),%ecx
    3013:	8b 45 ec             	mov    -0x14(%ebp),%eax
    3016:	8d 50 01             	lea    0x1(%eax),%edx
    3019:	89 d0                	mov    %edx,%eax
    301b:	c1 e0 02             	shl    $0x2,%eax
    301e:	01 d0                	add    %edx,%eax
    3020:	c1 e0 04             	shl    $0x4,%eax
    3023:	8d 14 01             	lea    (%ecx,%eax,1),%edx
    3026:	8b 45 08             	mov    0x8(%ebp),%eax
    3029:	89 50 0c             	mov    %edx,0xc(%eax)
    302c:	eb 60                	jmp    308e <out_char+0x128>
    302e:	8b 45 08             	mov    0x8(%ebp),%eax
    3031:	8b 50 0c             	mov    0xc(%eax),%edx
    3034:	8b 45 08             	mov    0x8(%ebp),%eax
    3037:	8b 40 04             	mov    0x4(%eax),%eax
    303a:	39 c2                	cmp    %eax,%edx
    303c:	76 4f                	jbe    308d <out_char+0x127>
    303e:	8b 45 08             	mov    0x8(%ebp),%eax
    3041:	8b 40 0c             	mov    0xc(%eax),%eax
    3044:	8d 50 ff             	lea    -0x1(%eax),%edx
    3047:	8b 45 08             	mov    0x8(%ebp),%eax
    304a:	89 50 0c             	mov    %edx,0xc(%eax)
    304d:	8b 45 f4             	mov    -0xc(%ebp),%eax
    3050:	83 e8 02             	sub    $0x2,%eax
    3053:	c6 00 20             	movb   $0x20,(%eax)
    3056:	8b 45 f4             	mov    -0xc(%ebp),%eax
    3059:	83 e8 01             	sub    $0x1,%eax
    305c:	c6 00 07             	movb   $0x7,(%eax)
    305f:	eb 2c                	jmp    308d <out_char+0x127>
    3061:	8b 45 f4             	mov    -0xc(%ebp),%eax
    3064:	8d 50 01             	lea    0x1(%eax),%edx
    3067:	89 55 f4             	mov    %edx,-0xc(%ebp)
    306a:	0f b6 55 e4          	movzbl -0x1c(%ebp),%edx
    306e:	88 10                	mov    %dl,(%eax)
    3070:	8b 45 f4             	mov    -0xc(%ebp),%eax
    3073:	8d 50 01             	lea    0x1(%eax),%edx
    3076:	89 55 f4             	mov    %edx,-0xc(%ebp)
    3079:	c6 00 07             	movb   $0x7,(%eax)
    307c:	8b 45 08             	mov    0x8(%ebp),%eax
    307f:	8b 40 0c             	mov    0xc(%eax),%eax
    3082:	8d 50 01             	lea    0x1(%eax),%edx
    3085:	8b 45 08             	mov    0x8(%ebp),%eax
    3088:	89 50 0c             	mov    %edx,0xc(%eax)
    308b:	eb 01                	jmp    308e <out_char+0x128>
    308d:	90                   	nop
    308e:	8b 45 08             	mov    0x8(%ebp),%eax
    3091:	8b 50 0c             	mov    0xc(%eax),%edx
    3094:	8b 45 08             	mov    0x8(%ebp),%eax
    3097:	8b 40 04             	mov    0x4(%eax),%eax
    309a:	29 c2                	sub    %eax,%edx
    309c:	8b 45 08             	mov    0x8(%ebp),%eax
    309f:	8b 40 08             	mov    0x8(%eax),%eax
    30a2:	39 c2                	cmp    %eax,%edx
    30a4:	0f 82 d1 00 00 00    	jb     317b <out_char+0x215>
    30aa:	8b 45 08             	mov    0x8(%ebp),%eax
    30ad:	8b 50 0c             	mov    0xc(%eax),%edx
    30b0:	8b 45 08             	mov    0x8(%ebp),%eax
    30b3:	8b 40 04             	mov    0x4(%eax),%eax
    30b6:	89 d1                	mov    %edx,%ecx
    30b8:	29 c1                	sub    %eax,%ecx
    30ba:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
    30bf:	89 c8                	mov    %ecx,%eax
    30c1:	f7 e2                	mul    %edx
    30c3:	c1 ea 06             	shr    $0x6,%edx
    30c6:	89 d0                	mov    %edx,%eax
    30c8:	c1 e0 02             	shl    $0x2,%eax
    30cb:	01 d0                	add    %edx,%eax
    30cd:	c1 e0 04             	shl    $0x4,%eax
    30d0:	29 c1                	sub    %eax,%ecx
    30d2:	89 ca                	mov    %ecx,%edx
    30d4:	89 55 f0             	mov    %edx,-0x10(%ebp)
    30d7:	8b 45 08             	mov    0x8(%ebp),%eax
    30da:	8b 50 0c             	mov    0xc(%eax),%edx
    30dd:	8b 45 08             	mov    0x8(%ebp),%eax
    30e0:	8b 40 04             	mov    0x4(%eax),%eax
    30e3:	29 c2                	sub    %eax,%edx
    30e5:	89 d0                	mov    %edx,%eax
    30e7:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
    30ec:	f7 e2                	mul    %edx
    30ee:	89 d0                	mov    %edx,%eax
    30f0:	c1 e8 06             	shr    $0x6,%eax
    30f3:	89 45 ec             	mov    %eax,-0x14(%ebp)
    30f6:	8b 45 08             	mov    0x8(%ebp),%eax
    30f9:	8b 48 04             	mov    0x4(%eax),%ecx
    30fc:	8b 45 ec             	mov    -0x14(%ebp),%eax
    30ff:	8d 50 01             	lea    0x1(%eax),%edx
    3102:	89 d0                	mov    %edx,%eax
    3104:	c1 e0 02             	shl    $0x2,%eax
    3107:	01 d0                	add    %edx,%eax
    3109:	c1 e0 04             	shl    $0x4,%eax
    310c:	01 c8                	add    %ecx,%eax
    310e:	2d d0 07 00 00       	sub    $0x7d0,%eax
    3113:	89 45 e8             	mov    %eax,-0x18(%ebp)
    3116:	8b 55 e8             	mov    -0x18(%ebp),%edx
    3119:	8b 45 08             	mov    0x8(%ebp),%eax
    311c:	8b 40 04             	mov    0x4(%eax),%eax
    311f:	83 ec 04             	sub    $0x4,%esp
    3122:	68 80 07 00 00       	push   $0x780
    3127:	52                   	push   %edx
    3128:	50                   	push   %eax
    3129:	e8 67 04 00 00       	call   3595 <w_copy>
    312e:	83 c4 10             	add    $0x10,%esp
    3131:	8b 45 08             	mov    0x8(%ebp),%eax
    3134:	8b 50 04             	mov    0x4(%eax),%edx
    3137:	8b 45 08             	mov    0x8(%ebp),%eax
    313a:	89 10                	mov    %edx,(%eax)
    313c:	8b 45 08             	mov    0x8(%ebp),%eax
    313f:	8b 50 04             	mov    0x4(%eax),%edx
    3142:	8b 45 f0             	mov    -0x10(%ebp),%eax
    3145:	01 d0                	add    %edx,%eax
    3147:	8d 90 80 07 00 00    	lea    0x780(%eax),%edx
    314d:	8b 45 08             	mov    0x8(%ebp),%eax
    3150:	89 50 0c             	mov    %edx,0xc(%eax)
    3153:	8b 45 08             	mov    0x8(%ebp),%eax
    3156:	8b 40 0c             	mov    0xc(%eax),%eax
    3159:	83 ec 08             	sub    $0x8,%esp
    315c:	6a 50                	push   $0x50
    315e:	50                   	push   %eax
    315f:	e8 a5 00 00 00       	call   3209 <clear_screen>
    3164:	83 c4 10             	add    $0x10,%esp
    3167:	8b 45 08             	mov    0x8(%ebp),%eax
    316a:	8b 40 10             	mov    0x10(%eax),%eax
    316d:	85 c0                	test   %eax,%eax
    316f:	75 0a                	jne    317b <out_char+0x215>
    3171:	8b 45 08             	mov    0x8(%ebp),%eax
    3174:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
    317b:	8b 45 08             	mov    0x8(%ebp),%eax
    317e:	8b 50 0c             	mov    0xc(%eax),%edx
    3181:	8b 45 08             	mov    0x8(%ebp),%eax
    3184:	8b 40 04             	mov    0x4(%eax),%eax
    3187:	29 c2                	sub    %eax,%edx
    3189:	8b 45 08             	mov    0x8(%ebp),%eax
    318c:	8b 40 08             	mov    0x8(%eax),%eax
    318f:	39 c2                	cmp    %eax,%edx
    3191:	72 42                	jb     31d5 <out_char+0x26f>
    3193:	68 80 00 00 00       	push   $0x80
    3198:	68 b0 aa 00 00       	push   $0xaab0
    319d:	68 b0 aa 00 00       	push   $0xaab0
    31a2:	68 c4 aa 00 00       	push   $0xaac4
    31a7:	e8 e7 38 00 00       	call   6a93 <assertion_failure>
    31ac:	83 c4 10             	add    $0x10,%esp
    31af:	eb 24                	jmp    31d5 <out_char+0x26f>
    31b1:	83 ec 08             	sub    $0x8,%esp
    31b4:	6a 01                	push   $0x1
    31b6:	ff 75 08             	pushl  0x8(%ebp)
    31b9:	e8 b8 01 00 00       	call   3376 <scroll_screen>
    31be:	83 c4 10             	add    $0x10,%esp
    31c1:	8b 45 08             	mov    0x8(%ebp),%eax
    31c4:	8b 40 0c             	mov    0xc(%eax),%eax
    31c7:	83 ec 08             	sub    $0x8,%esp
    31ca:	6a 50                	push   $0x50
    31cc:	50                   	push   %eax
    31cd:	e8 37 00 00 00       	call   3209 <clear_screen>
    31d2:	83 c4 10             	add    $0x10,%esp
    31d5:	8b 45 08             	mov    0x8(%ebp),%eax
    31d8:	8b 50 0c             	mov    0xc(%eax),%edx
    31db:	8b 45 08             	mov    0x8(%ebp),%eax
    31de:	8b 00                	mov    (%eax),%eax
    31e0:	05 d0 07 00 00       	add    $0x7d0,%eax
    31e5:	39 c2                	cmp    %eax,%edx
    31e7:	73 c8                	jae    31b1 <out_char+0x24b>
    31e9:	8b 45 08             	mov    0x8(%ebp),%eax
    31ec:	8b 50 0c             	mov    0xc(%eax),%edx
    31ef:	8b 45 08             	mov    0x8(%ebp),%eax
    31f2:	8b 00                	mov    (%eax),%eax
    31f4:	39 c2                	cmp    %eax,%edx
    31f6:	72 b9                	jb     31b1 <out_char+0x24b>
    31f8:	83 ec 0c             	sub    $0xc,%esp
    31fb:	ff 75 08             	pushl  0x8(%ebp)
    31fe:	e8 57 03 00 00       	call   355a <flush>
    3203:	83 c4 10             	add    $0x10,%esp
    3206:	90                   	nop
    3207:	c9                   	leave  
    3208:	c3                   	ret    

00003209 <clear_screen>:
    3209:	55                   	push   %ebp
    320a:	89 e5                	mov    %esp,%ebp
    320c:	83 ec 10             	sub    $0x10,%esp
    320f:	8b 45 08             	mov    0x8(%ebp),%eax
    3212:	05 00 c0 05 00       	add    $0x5c000,%eax
    3217:	01 c0                	add    %eax,%eax
    3219:	89 45 fc             	mov    %eax,-0x4(%ebp)
    321c:	eb 18                	jmp    3236 <clear_screen+0x2d>
    321e:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3221:	8d 50 01             	lea    0x1(%eax),%edx
    3224:	89 55 fc             	mov    %edx,-0x4(%ebp)
    3227:	c6 00 20             	movb   $0x20,(%eax)
    322a:	8b 45 fc             	mov    -0x4(%ebp),%eax
    322d:	8d 50 01             	lea    0x1(%eax),%edx
    3230:	89 55 fc             	mov    %edx,-0x4(%ebp)
    3233:	c6 00 07             	movb   $0x7,(%eax)
    3236:	83 6d 0c 01          	subl   $0x1,0xc(%ebp)
    323a:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    323e:	79 de                	jns    321e <clear_screen+0x15>
    3240:	90                   	nop
    3241:	c9                   	leave  
    3242:	c3                   	ret    

00003243 <is_current_console>:
    3243:	55                   	push   %ebp
    3244:	89 e5                	mov    %esp,%ebp
    3246:	8b 15 c0 97 04 00    	mov    0x497c0,%edx
    324c:	89 d0                	mov    %edx,%eax
    324e:	c1 e0 02             	shl    $0x2,%eax
    3251:	01 d0                	add    %edx,%eax
    3253:	c1 e0 02             	shl    $0x2,%eax
    3256:	05 40 b2 04 00       	add    $0x4b240,%eax
    325b:	39 45 08             	cmp    %eax,0x8(%ebp)
    325e:	0f 94 c0             	sete   %al
    3261:	0f b6 c0             	movzbl %al,%eax
    3264:	5d                   	pop    %ebp
    3265:	c3                   	ret    

00003266 <set_cursor>:
    3266:	55                   	push   %ebp
    3267:	89 e5                	mov    %esp,%ebp
    3269:	83 ec 08             	sub    $0x8,%esp
    326c:	e8 9c 34 00 00       	call   670d <disable_int>
    3271:	83 ec 08             	sub    $0x8,%esp
    3274:	6a 0e                	push   $0xe
    3276:	68 d4 03 00 00       	push   $0x3d4
    327b:	e8 fd 33 00 00       	call   667d <out_byte>
    3280:	83 c4 10             	add    $0x10,%esp
    3283:	8b 45 08             	mov    0x8(%ebp),%eax
    3286:	c1 e8 08             	shr    $0x8,%eax
    3289:	0f b6 c0             	movzbl %al,%eax
    328c:	83 ec 08             	sub    $0x8,%esp
    328f:	50                   	push   %eax
    3290:	68 d5 03 00 00       	push   $0x3d5
    3295:	e8 e3 33 00 00       	call   667d <out_byte>
    329a:	83 c4 10             	add    $0x10,%esp
    329d:	83 ec 08             	sub    $0x8,%esp
    32a0:	6a 0f                	push   $0xf
    32a2:	68 d4 03 00 00       	push   $0x3d4
    32a7:	e8 d1 33 00 00       	call   667d <out_byte>
    32ac:	83 c4 10             	add    $0x10,%esp
    32af:	8b 45 08             	mov    0x8(%ebp),%eax
    32b2:	0f b6 c0             	movzbl %al,%eax
    32b5:	83 ec 08             	sub    $0x8,%esp
    32b8:	50                   	push   %eax
    32b9:	68 d5 03 00 00       	push   $0x3d5
    32be:	e8 ba 33 00 00       	call   667d <out_byte>
    32c3:	83 c4 10             	add    $0x10,%esp
    32c6:	e8 44 34 00 00       	call   670f <enable_int>
    32cb:	90                   	nop
    32cc:	c9                   	leave  
    32cd:	c3                   	ret    

000032ce <set_video_start_addr>:
    32ce:	55                   	push   %ebp
    32cf:	89 e5                	mov    %esp,%ebp
    32d1:	83 ec 08             	sub    $0x8,%esp
    32d4:	e8 34 34 00 00       	call   670d <disable_int>
    32d9:	83 ec 08             	sub    $0x8,%esp
    32dc:	6a 0c                	push   $0xc
    32de:	68 d4 03 00 00       	push   $0x3d4
    32e3:	e8 95 33 00 00       	call   667d <out_byte>
    32e8:	83 c4 10             	add    $0x10,%esp
    32eb:	8b 45 08             	mov    0x8(%ebp),%eax
    32ee:	c1 e8 08             	shr    $0x8,%eax
    32f1:	0f b6 c0             	movzbl %al,%eax
    32f4:	83 ec 08             	sub    $0x8,%esp
    32f7:	50                   	push   %eax
    32f8:	68 d5 03 00 00       	push   $0x3d5
    32fd:	e8 7b 33 00 00       	call   667d <out_byte>
    3302:	83 c4 10             	add    $0x10,%esp
    3305:	83 ec 08             	sub    $0x8,%esp
    3308:	6a 0d                	push   $0xd
    330a:	68 d4 03 00 00       	push   $0x3d4
    330f:	e8 69 33 00 00       	call   667d <out_byte>
    3314:	83 c4 10             	add    $0x10,%esp
    3317:	8b 45 08             	mov    0x8(%ebp),%eax
    331a:	0f b6 c0             	movzbl %al,%eax
    331d:	83 ec 08             	sub    $0x8,%esp
    3320:	50                   	push   %eax
    3321:	68 d5 03 00 00       	push   $0x3d5
    3326:	e8 52 33 00 00       	call   667d <out_byte>
    332b:	83 c4 10             	add    $0x10,%esp
    332e:	e8 dc 33 00 00       	call   670f <enable_int>
    3333:	90                   	nop
    3334:	c9                   	leave  
    3335:	c3                   	ret    

00003336 <select_console>:
    3336:	55                   	push   %ebp
    3337:	89 e5                	mov    %esp,%ebp
    3339:	83 ec 08             	sub    $0x8,%esp
    333c:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
    3340:	78 31                	js     3373 <select_console+0x3d>
    3342:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
    3346:	7f 2b                	jg     3373 <select_console+0x3d>
    3348:	8b 45 08             	mov    0x8(%ebp),%eax
    334b:	a3 c0 97 04 00       	mov    %eax,0x497c0
    3350:	8b 15 c0 97 04 00    	mov    0x497c0,%edx
    3356:	89 d0                	mov    %edx,%eax
    3358:	c1 e0 02             	shl    $0x2,%eax
    335b:	01 d0                	add    %edx,%eax
    335d:	c1 e0 02             	shl    $0x2,%eax
    3360:	05 40 b2 04 00       	add    $0x4b240,%eax
    3365:	83 ec 0c             	sub    $0xc,%esp
    3368:	50                   	push   %eax
    3369:	e8 ec 01 00 00       	call   355a <flush>
    336e:	83 c4 10             	add    $0x10,%esp
    3371:	eb 01                	jmp    3374 <select_console+0x3e>
    3373:	90                   	nop
    3374:	c9                   	leave  
    3375:	c3                   	ret    

00003376 <scroll_screen>:
    3376:	55                   	push   %ebp
    3377:	89 e5                	mov    %esp,%ebp
    3379:	83 ec 18             	sub    $0x18,%esp
    337c:	8b 45 08             	mov    0x8(%ebp),%eax
    337f:	8b 50 0c             	mov    0xc(%eax),%edx
    3382:	8b 45 08             	mov    0x8(%ebp),%eax
    3385:	8b 40 04             	mov    0x4(%eax),%eax
    3388:	29 c2                	sub    %eax,%edx
    338a:	89 d0                	mov    %edx,%eax
    338c:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
    3391:	f7 e2                	mul    %edx
    3393:	c1 ea 06             	shr    $0x6,%edx
    3396:	89 d0                	mov    %edx,%eax
    3398:	c1 e0 02             	shl    $0x2,%eax
    339b:	01 d0                	add    %edx,%eax
    339d:	c1 e0 04             	shl    $0x4,%eax
    33a0:	89 45 f4             	mov    %eax,-0xc(%ebp)
    33a3:	8b 45 08             	mov    0x8(%ebp),%eax
    33a6:	8b 40 10             	mov    0x10(%eax),%eax
    33a9:	85 c0                	test   %eax,%eax
    33ab:	74 1b                	je     33c8 <scroll_screen+0x52>
    33ad:	8b 45 f4             	mov    -0xc(%ebp),%eax
    33b0:	83 c0 50             	add    $0x50,%eax
    33b3:	89 c2                	mov    %eax,%edx
    33b5:	8b 45 08             	mov    0x8(%ebp),%eax
    33b8:	8b 48 08             	mov    0x8(%eax),%ecx
    33bb:	89 d0                	mov    %edx,%eax
    33bd:	ba 00 00 00 00       	mov    $0x0,%edx
    33c2:	f7 f1                	div    %ecx
    33c4:	89 d0                	mov    %edx,%eax
    33c6:	eb 05                	jmp    33cd <scroll_screen+0x57>
    33c8:	b8 00 00 00 00       	mov    $0x0,%eax
    33cd:	89 45 f0             	mov    %eax,-0x10(%ebp)
    33d0:	8b 45 08             	mov    0x8(%ebp),%eax
    33d3:	8b 10                	mov    (%eax),%edx
    33d5:	8b 45 08             	mov    0x8(%ebp),%eax
    33d8:	8b 40 04             	mov    0x4(%eax),%eax
    33db:	29 c2                	sub    %eax,%edx
    33dd:	89 d0                	mov    %edx,%eax
    33df:	89 45 ec             	mov    %eax,-0x14(%ebp)
    33e2:	83 7d 0c ff          	cmpl   $0xffffffff,0xc(%ebp)
    33e6:	0f 85 c2 00 00 00    	jne    34ae <scroll_screen+0x138>
    33ec:	8b 45 08             	mov    0x8(%ebp),%eax
    33ef:	8b 40 10             	mov    0x10(%eax),%eax
    33f2:	85 c0                	test   %eax,%eax
    33f4:	75 18                	jne    340e <scroll_screen+0x98>
    33f6:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
    33fa:	7e 12                	jle    340e <scroll_screen+0x98>
    33fc:	8b 45 08             	mov    0x8(%ebp),%eax
    33ff:	8b 00                	mov    (%eax),%eax
    3401:	8d 50 b0             	lea    -0x50(%eax),%edx
    3404:	8b 45 08             	mov    0x8(%ebp),%eax
    3407:	89 10                	mov    %edx,(%eax)
    3409:	e9 3b 01 00 00       	jmp    3549 <scroll_screen+0x1d3>
    340e:	8b 45 08             	mov    0x8(%ebp),%eax
    3411:	8b 40 10             	mov    0x10(%eax),%eax
    3414:	85 c0                	test   %eax,%eax
    3416:	0f 84 2d 01 00 00    	je     3549 <scroll_screen+0x1d3>
    341c:	8b 45 ec             	mov    -0x14(%ebp),%eax
    341f:	3b 45 f0             	cmp    -0x10(%ebp),%eax
    3422:	0f 84 21 01 00 00    	je     3549 <scroll_screen+0x1d3>
    3428:	8b 45 08             	mov    0x8(%ebp),%eax
    342b:	8b 50 0c             	mov    0xc(%eax),%edx
    342e:	8b 45 08             	mov    0x8(%ebp),%eax
    3431:	8b 40 04             	mov    0x4(%eax),%eax
    3434:	29 c2                	sub    %eax,%edx
    3436:	8b 45 08             	mov    0x8(%ebp),%eax
    3439:	8b 40 08             	mov    0x8(%eax),%eax
    343c:	2d d0 07 00 00       	sub    $0x7d0,%eax
    3441:	39 c2                	cmp    %eax,%edx
    3443:	72 25                	jb     346a <scroll_screen+0xf4>
    3445:	8b 45 08             	mov    0x8(%ebp),%eax
    3448:	8b 10                	mov    (%eax),%edx
    344a:	8b 45 08             	mov    0x8(%ebp),%eax
    344d:	8b 40 04             	mov    0x4(%eax),%eax
    3450:	39 c2                	cmp    %eax,%edx
    3452:	0f 84 f1 00 00 00    	je     3549 <scroll_screen+0x1d3>
    3458:	8b 45 08             	mov    0x8(%ebp),%eax
    345b:	8b 00                	mov    (%eax),%eax
    345d:	8d 50 b0             	lea    -0x50(%eax),%edx
    3460:	8b 45 08             	mov    0x8(%ebp),%eax
    3463:	89 10                	mov    %edx,(%eax)
    3465:	e9 df 00 00 00       	jmp    3549 <scroll_screen+0x1d3>
    346a:	8b 45 08             	mov    0x8(%ebp),%eax
    346d:	8b 10                	mov    (%eax),%edx
    346f:	8b 45 08             	mov    0x8(%ebp),%eax
    3472:	8b 40 04             	mov    0x4(%eax),%eax
    3475:	39 c2                	cmp    %eax,%edx
    3477:	75 23                	jne    349c <scroll_screen+0x126>
    3479:	8b 45 08             	mov    0x8(%ebp),%eax
    347c:	8b 40 08             	mov    0x8(%eax),%eax
    347f:	2d d0 07 00 00       	sub    $0x7d0,%eax
    3484:	89 45 ec             	mov    %eax,-0x14(%ebp)
    3487:	8b 45 08             	mov    0x8(%ebp),%eax
    348a:	8b 50 04             	mov    0x4(%eax),%edx
    348d:	8b 45 ec             	mov    -0x14(%ebp),%eax
    3490:	01 c2                	add    %eax,%edx
    3492:	8b 45 08             	mov    0x8(%ebp),%eax
    3495:	89 10                	mov    %edx,(%eax)
    3497:	e9 ad 00 00 00       	jmp    3549 <scroll_screen+0x1d3>
    349c:	8b 45 08             	mov    0x8(%ebp),%eax
    349f:	8b 00                	mov    (%eax),%eax
    34a1:	8d 50 b0             	lea    -0x50(%eax),%edx
    34a4:	8b 45 08             	mov    0x8(%ebp),%eax
    34a7:	89 10                	mov    %edx,(%eax)
    34a9:	e9 9b 00 00 00       	jmp    3549 <scroll_screen+0x1d3>
    34ae:	83 7d 0c 01          	cmpl   $0x1,0xc(%ebp)
    34b2:	75 6d                	jne    3521 <scroll_screen+0x1ab>
    34b4:	8b 45 08             	mov    0x8(%ebp),%eax
    34b7:	8b 40 10             	mov    0x10(%eax),%eax
    34ba:	85 c0                	test   %eax,%eax
    34bc:	75 1c                	jne    34da <scroll_screen+0x164>
    34be:	8b 45 ec             	mov    -0x14(%ebp),%eax
    34c1:	05 cf 07 00 00       	add    $0x7cf,%eax
    34c6:	39 45 f4             	cmp    %eax,-0xc(%ebp)
    34c9:	7e 0f                	jle    34da <scroll_screen+0x164>
    34cb:	8b 45 08             	mov    0x8(%ebp),%eax
    34ce:	8b 00                	mov    (%eax),%eax
    34d0:	8d 50 50             	lea    0x50(%eax),%edx
    34d3:	8b 45 08             	mov    0x8(%ebp),%eax
    34d6:	89 10                	mov    %edx,(%eax)
    34d8:	eb 6f                	jmp    3549 <scroll_screen+0x1d3>
    34da:	8b 45 08             	mov    0x8(%ebp),%eax
    34dd:	8b 40 10             	mov    0x10(%eax),%eax
    34e0:	85 c0                	test   %eax,%eax
    34e2:	74 65                	je     3549 <scroll_screen+0x1d3>
    34e4:	8b 45 ec             	mov    -0x14(%ebp),%eax
    34e7:	05 80 07 00 00       	add    $0x780,%eax
    34ec:	39 45 f4             	cmp    %eax,-0xc(%ebp)
    34ef:	74 58                	je     3549 <scroll_screen+0x1d3>
    34f1:	8b 45 ec             	mov    -0x14(%ebp),%eax
    34f4:	05 d0 07 00 00       	add    $0x7d0,%eax
    34f9:	89 c2                	mov    %eax,%edx
    34fb:	8b 45 08             	mov    0x8(%ebp),%eax
    34fe:	8b 40 08             	mov    0x8(%eax),%eax
    3501:	39 c2                	cmp    %eax,%edx
    3503:	75 0d                	jne    3512 <scroll_screen+0x19c>
    3505:	8b 45 08             	mov    0x8(%ebp),%eax
    3508:	8b 50 04             	mov    0x4(%eax),%edx
    350b:	8b 45 08             	mov    0x8(%ebp),%eax
    350e:	89 10                	mov    %edx,(%eax)
    3510:	eb 37                	jmp    3549 <scroll_screen+0x1d3>
    3512:	8b 45 08             	mov    0x8(%ebp),%eax
    3515:	8b 00                	mov    (%eax),%eax
    3517:	8d 50 50             	lea    0x50(%eax),%edx
    351a:	8b 45 08             	mov    0x8(%ebp),%eax
    351d:	89 10                	mov    %edx,(%eax)
    351f:	eb 28                	jmp    3549 <scroll_screen+0x1d3>
    3521:	83 7d 0c ff          	cmpl   $0xffffffff,0xc(%ebp)
    3525:	74 22                	je     3549 <scroll_screen+0x1d3>
    3527:	83 7d 0c 01          	cmpl   $0x1,0xc(%ebp)
    352b:	74 1c                	je     3549 <scroll_screen+0x1d3>
    352d:	68 24 01 00 00       	push   $0x124
    3532:	68 b0 aa 00 00       	push   $0xaab0
    3537:	68 b0 aa 00 00       	push   $0xaab0
    353c:	68 ec aa 00 00       	push   $0xaaec
    3541:	e8 4d 35 00 00       	call   6a93 <assertion_failure>
    3546:	83 c4 10             	add    $0x10,%esp
    3549:	83 ec 0c             	sub    $0xc,%esp
    354c:	ff 75 08             	pushl  0x8(%ebp)
    354f:	e8 06 00 00 00       	call   355a <flush>
    3554:	83 c4 10             	add    $0x10,%esp
    3557:	90                   	nop
    3558:	c9                   	leave  
    3559:	c3                   	ret    

0000355a <flush>:
    355a:	55                   	push   %ebp
    355b:	89 e5                	mov    %esp,%ebp
    355d:	83 ec 08             	sub    $0x8,%esp
    3560:	ff 75 08             	pushl  0x8(%ebp)
    3563:	e8 db fc ff ff       	call   3243 <is_current_console>
    3568:	83 c4 04             	add    $0x4,%esp
    356b:	85 c0                	test   %eax,%eax
    356d:	74 23                	je     3592 <flush+0x38>
    356f:	8b 45 08             	mov    0x8(%ebp),%eax
    3572:	8b 40 0c             	mov    0xc(%eax),%eax
    3575:	83 ec 0c             	sub    $0xc,%esp
    3578:	50                   	push   %eax
    3579:	e8 e8 fc ff ff       	call   3266 <set_cursor>
    357e:	83 c4 10             	add    $0x10,%esp
    3581:	8b 45 08             	mov    0x8(%ebp),%eax
    3584:	8b 00                	mov    (%eax),%eax
    3586:	83 ec 0c             	sub    $0xc,%esp
    3589:	50                   	push   %eax
    358a:	e8 3f fd ff ff       	call   32ce <set_video_start_addr>
    358f:	83 c4 10             	add    $0x10,%esp
    3592:	90                   	nop
    3593:	c9                   	leave  
    3594:	c3                   	ret    

00003595 <w_copy>:
    3595:	55                   	push   %ebp
    3596:	89 e5                	mov    %esp,%ebp
    3598:	83 ec 08             	sub    $0x8,%esp
    359b:	8b 45 10             	mov    0x10(%ebp),%eax
    359e:	01 c0                	add    %eax,%eax
    35a0:	8b 55 0c             	mov    0xc(%ebp),%edx
    35a3:	01 d2                	add    %edx,%edx
    35a5:	81 c2 00 80 0b 00    	add    $0xb8000,%edx
    35ab:	89 d1                	mov    %edx,%ecx
    35ad:	8b 55 08             	mov    0x8(%ebp),%edx
    35b0:	01 d2                	add    %edx,%edx
    35b2:	81 c2 00 80 0b 00    	add    $0xb8000,%edx
    35b8:	83 ec 04             	sub    $0x4,%esp
    35bb:	50                   	push   %eax
    35bc:	51                   	push   %ecx
    35bd:	52                   	push   %edx
    35be:	e8 fd 32 00 00       	call   68c0 <memcpy>
    35c3:	83 c4 10             	add    $0x10,%esp
    35c6:	90                   	nop
    35c7:	c9                   	leave  
    35c8:	c3                   	ret    

000035c9 <init_8259A>:
    35c9:	55                   	push   %ebp
    35ca:	89 e5                	mov    %esp,%ebp
    35cc:	83 ec 18             	sub    $0x18,%esp
    35cf:	83 ec 08             	sub    $0x8,%esp
    35d2:	6a 11                	push   $0x11
    35d4:	6a 20                	push   $0x20
    35d6:	e8 a2 30 00 00       	call   667d <out_byte>
    35db:	83 c4 10             	add    $0x10,%esp
    35de:	83 ec 08             	sub    $0x8,%esp
    35e1:	6a 11                	push   $0x11
    35e3:	68 a0 00 00 00       	push   $0xa0
    35e8:	e8 90 30 00 00       	call   667d <out_byte>
    35ed:	83 c4 10             	add    $0x10,%esp
    35f0:	83 ec 08             	sub    $0x8,%esp
    35f3:	6a 20                	push   $0x20
    35f5:	6a 21                	push   $0x21
    35f7:	e8 81 30 00 00       	call   667d <out_byte>
    35fc:	83 c4 10             	add    $0x10,%esp
    35ff:	83 ec 08             	sub    $0x8,%esp
    3602:	6a 28                	push   $0x28
    3604:	68 a1 00 00 00       	push   $0xa1
    3609:	e8 6f 30 00 00       	call   667d <out_byte>
    360e:	83 c4 10             	add    $0x10,%esp
    3611:	83 ec 08             	sub    $0x8,%esp
    3614:	6a 04                	push   $0x4
    3616:	6a 21                	push   $0x21
    3618:	e8 60 30 00 00       	call   667d <out_byte>
    361d:	83 c4 10             	add    $0x10,%esp
    3620:	83 ec 08             	sub    $0x8,%esp
    3623:	6a 02                	push   $0x2
    3625:	68 a1 00 00 00       	push   $0xa1
    362a:	e8 4e 30 00 00       	call   667d <out_byte>
    362f:	83 c4 10             	add    $0x10,%esp
    3632:	83 ec 08             	sub    $0x8,%esp
    3635:	6a 01                	push   $0x1
    3637:	6a 21                	push   $0x21
    3639:	e8 3f 30 00 00       	call   667d <out_byte>
    363e:	83 c4 10             	add    $0x10,%esp
    3641:	83 ec 08             	sub    $0x8,%esp
    3644:	6a 01                	push   $0x1
    3646:	68 a1 00 00 00       	push   $0xa1
    364b:	e8 2d 30 00 00       	call   667d <out_byte>
    3650:	83 c4 10             	add    $0x10,%esp
    3653:	83 ec 08             	sub    $0x8,%esp
    3656:	68 ff 00 00 00       	push   $0xff
    365b:	6a 21                	push   $0x21
    365d:	e8 1b 30 00 00       	call   667d <out_byte>
    3662:	83 c4 10             	add    $0x10,%esp
    3665:	83 ec 08             	sub    $0x8,%esp
    3668:	68 ff 00 00 00       	push   $0xff
    366d:	68 a1 00 00 00       	push   $0xa1
    3672:	e8 06 30 00 00       	call   667d <out_byte>
    3677:	83 c4 10             	add    $0x10,%esp
    367a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    3681:	eb 12                	jmp    3695 <init_8259A+0xcc>
    3683:	8b 45 f4             	mov    -0xc(%ebp),%eax
    3686:	c7 04 85 80 b2 04 00 	movl   $0x369e,0x4b280(,%eax,4)
    368d:	9e 36 00 00 
    3691:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    3695:	83 7d f4 0f          	cmpl   $0xf,-0xc(%ebp)
    3699:	7e e8                	jle    3683 <init_8259A+0xba>
    369b:	90                   	nop
    369c:	c9                   	leave  
    369d:	c3                   	ret    

0000369e <spurious_irq>:
    369e:	55                   	push   %ebp
    369f:	89 e5                	mov    %esp,%ebp
    36a1:	83 ec 08             	sub    $0x8,%esp
    36a4:	83 ec 0c             	sub    $0xc,%esp
    36a7:	68 0b ab 00 00       	push   $0xab0b
    36ac:	e8 4f 2f 00 00       	call   6600 <disp_str>
    36b1:	83 c4 10             	add    $0x10,%esp
    36b4:	83 ec 0c             	sub    $0xc,%esp
    36b7:	ff 75 08             	pushl  0x8(%ebp)
    36ba:	e8 86 31 00 00       	call   6845 <disp_int>
    36bf:	83 c4 10             	add    $0x10,%esp
    36c2:	83 ec 0c             	sub    $0xc,%esp
    36c5:	68 1a ab 00 00       	push   $0xab1a
    36ca:	e8 31 2f 00 00       	call   6600 <disp_str>
    36cf:	83 c4 10             	add    $0x10,%esp
    36d2:	90                   	nop
    36d3:	c9                   	leave  
    36d4:	c3                   	ret    

000036d5 <put_irq_handler>:
    36d5:	55                   	push   %ebp
    36d6:	89 e5                	mov    %esp,%ebp
    36d8:	83 ec 08             	sub    $0x8,%esp
    36db:	83 ec 0c             	sub    $0xc,%esp
    36de:	ff 75 08             	pushl  0x8(%ebp)
    36e1:	e8 d3 2f 00 00       	call   66b9 <disable_irq>
    36e6:	83 c4 10             	add    $0x10,%esp
    36e9:	8b 45 08             	mov    0x8(%ebp),%eax
    36ec:	8b 55 0c             	mov    0xc(%ebp),%edx
    36ef:	89 14 85 80 b2 04 00 	mov    %edx,0x4b280(,%eax,4)
    36f6:	90                   	nop
    36f7:	c9                   	leave  
    36f8:	c3                   	ret    

000036f9 <init_prot>:
    36f9:	55                   	push   %ebp
    36fa:	89 e5                	mov    %esp,%ebp
    36fc:	83 ec 18             	sub    $0x18,%esp
    36ff:	e8 c5 fe ff ff       	call   35c9 <init_8259A>
    3704:	6a 00                	push   $0x0
    3706:	68 34 13 00 00       	push   $0x1334
    370b:	68 8e 00 00 00       	push   $0x8e
    3710:	6a 00                	push   $0x0
    3712:	e8 8e 03 00 00       	call   3aa5 <init_idt_desc>
    3717:	83 c4 10             	add    $0x10,%esp
    371a:	6a 00                	push   $0x0
    371c:	68 3a 13 00 00       	push   $0x133a
    3721:	68 8e 00 00 00       	push   $0x8e
    3726:	6a 01                	push   $0x1
    3728:	e8 78 03 00 00       	call   3aa5 <init_idt_desc>
    372d:	83 c4 10             	add    $0x10,%esp
    3730:	6a 00                	push   $0x0
    3732:	68 40 13 00 00       	push   $0x1340
    3737:	68 8e 00 00 00       	push   $0x8e
    373c:	6a 02                	push   $0x2
    373e:	e8 62 03 00 00       	call   3aa5 <init_idt_desc>
    3743:	83 c4 10             	add    $0x10,%esp
    3746:	6a 03                	push   $0x3
    3748:	68 46 13 00 00       	push   $0x1346
    374d:	68 8e 00 00 00       	push   $0x8e
    3752:	6a 03                	push   $0x3
    3754:	e8 4c 03 00 00       	call   3aa5 <init_idt_desc>
    3759:	83 c4 10             	add    $0x10,%esp
    375c:	6a 03                	push   $0x3
    375e:	68 4c 13 00 00       	push   $0x134c
    3763:	68 8e 00 00 00       	push   $0x8e
    3768:	6a 04                	push   $0x4
    376a:	e8 36 03 00 00       	call   3aa5 <init_idt_desc>
    376f:	83 c4 10             	add    $0x10,%esp
    3772:	6a 00                	push   $0x0
    3774:	68 52 13 00 00       	push   $0x1352
    3779:	68 8e 00 00 00       	push   $0x8e
    377e:	6a 05                	push   $0x5
    3780:	e8 20 03 00 00       	call   3aa5 <init_idt_desc>
    3785:	83 c4 10             	add    $0x10,%esp
    3788:	6a 00                	push   $0x0
    378a:	68 58 13 00 00       	push   $0x1358
    378f:	68 8e 00 00 00       	push   $0x8e
    3794:	6a 06                	push   $0x6
    3796:	e8 0a 03 00 00       	call   3aa5 <init_idt_desc>
    379b:	83 c4 10             	add    $0x10,%esp
    379e:	6a 00                	push   $0x0
    37a0:	68 5e 13 00 00       	push   $0x135e
    37a5:	68 8e 00 00 00       	push   $0x8e
    37aa:	6a 07                	push   $0x7
    37ac:	e8 f4 02 00 00       	call   3aa5 <init_idt_desc>
    37b1:	83 c4 10             	add    $0x10,%esp
    37b4:	6a 00                	push   $0x0
    37b6:	68 64 13 00 00       	push   $0x1364
    37bb:	68 8e 00 00 00       	push   $0x8e
    37c0:	6a 08                	push   $0x8
    37c2:	e8 de 02 00 00       	call   3aa5 <init_idt_desc>
    37c7:	83 c4 10             	add    $0x10,%esp
    37ca:	6a 00                	push   $0x0
    37cc:	68 68 13 00 00       	push   $0x1368
    37d1:	68 8e 00 00 00       	push   $0x8e
    37d6:	6a 09                	push   $0x9
    37d8:	e8 c8 02 00 00       	call   3aa5 <init_idt_desc>
    37dd:	83 c4 10             	add    $0x10,%esp
    37e0:	6a 00                	push   $0x0
    37e2:	68 6e 13 00 00       	push   $0x136e
    37e7:	68 8e 00 00 00       	push   $0x8e
    37ec:	6a 0a                	push   $0xa
    37ee:	e8 b2 02 00 00       	call   3aa5 <init_idt_desc>
    37f3:	83 c4 10             	add    $0x10,%esp
    37f6:	6a 00                	push   $0x0
    37f8:	68 72 13 00 00       	push   $0x1372
    37fd:	68 8e 00 00 00       	push   $0x8e
    3802:	6a 0b                	push   $0xb
    3804:	e8 9c 02 00 00       	call   3aa5 <init_idt_desc>
    3809:	83 c4 10             	add    $0x10,%esp
    380c:	6a 00                	push   $0x0
    380e:	68 76 13 00 00       	push   $0x1376
    3813:	68 8e 00 00 00       	push   $0x8e
    3818:	6a 0c                	push   $0xc
    381a:	e8 86 02 00 00       	call   3aa5 <init_idt_desc>
    381f:	83 c4 10             	add    $0x10,%esp
    3822:	6a 00                	push   $0x0
    3824:	68 7a 13 00 00       	push   $0x137a
    3829:	68 8e 00 00 00       	push   $0x8e
    382e:	6a 0d                	push   $0xd
    3830:	e8 70 02 00 00       	call   3aa5 <init_idt_desc>
    3835:	83 c4 10             	add    $0x10,%esp
    3838:	6a 00                	push   $0x0
    383a:	68 7e 13 00 00       	push   $0x137e
    383f:	68 8e 00 00 00       	push   $0x8e
    3844:	6a 0e                	push   $0xe
    3846:	e8 5a 02 00 00       	call   3aa5 <init_idt_desc>
    384b:	83 c4 10             	add    $0x10,%esp
    384e:	6a 00                	push   $0x0
    3850:	68 82 13 00 00       	push   $0x1382
    3855:	68 8e 00 00 00       	push   $0x8e
    385a:	6a 10                	push   $0x10
    385c:	e8 44 02 00 00       	call   3aa5 <init_idt_desc>
    3861:	83 c4 10             	add    $0x10,%esp
    3864:	6a 00                	push   $0x0
    3866:	68 40 10 00 00       	push   $0x1040
    386b:	68 8e 00 00 00       	push   $0x8e
    3870:	6a 20                	push   $0x20
    3872:	e8 2e 02 00 00       	call   3aa5 <init_idt_desc>
    3877:	83 c4 10             	add    $0x10,%esp
    387a:	6a 00                	push   $0x0
    387c:	68 70 10 00 00       	push   $0x1070
    3881:	68 8e 00 00 00       	push   $0x8e
    3886:	6a 21                	push   $0x21
    3888:	e8 18 02 00 00       	call   3aa5 <init_idt_desc>
    388d:	83 c4 10             	add    $0x10,%esp
    3890:	6a 00                	push   $0x0
    3892:	68 a0 10 00 00       	push   $0x10a0
    3897:	68 8e 00 00 00       	push   $0x8e
    389c:	6a 22                	push   $0x22
    389e:	e8 02 02 00 00       	call   3aa5 <init_idt_desc>
    38a3:	83 c4 10             	add    $0x10,%esp
    38a6:	6a 00                	push   $0x0
    38a8:	68 d0 10 00 00       	push   $0x10d0
    38ad:	68 8e 00 00 00       	push   $0x8e
    38b2:	6a 23                	push   $0x23
    38b4:	e8 ec 01 00 00       	call   3aa5 <init_idt_desc>
    38b9:	83 c4 10             	add    $0x10,%esp
    38bc:	6a 00                	push   $0x0
    38be:	68 00 11 00 00       	push   $0x1100
    38c3:	68 8e 00 00 00       	push   $0x8e
    38c8:	6a 24                	push   $0x24
    38ca:	e8 d6 01 00 00       	call   3aa5 <init_idt_desc>
    38cf:	83 c4 10             	add    $0x10,%esp
    38d2:	6a 00                	push   $0x0
    38d4:	68 30 11 00 00       	push   $0x1130
    38d9:	68 8e 00 00 00       	push   $0x8e
    38de:	6a 25                	push   $0x25
    38e0:	e8 c0 01 00 00       	call   3aa5 <init_idt_desc>
    38e5:	83 c4 10             	add    $0x10,%esp
    38e8:	6a 00                	push   $0x0
    38ea:	68 60 11 00 00       	push   $0x1160
    38ef:	68 8e 00 00 00       	push   $0x8e
    38f4:	6a 26                	push   $0x26
    38f6:	e8 aa 01 00 00       	call   3aa5 <init_idt_desc>
    38fb:	83 c4 10             	add    $0x10,%esp
    38fe:	6a 00                	push   $0x0
    3900:	68 90 11 00 00       	push   $0x1190
    3905:	68 8e 00 00 00       	push   $0x8e
    390a:	6a 27                	push   $0x27
    390c:	e8 94 01 00 00       	call   3aa5 <init_idt_desc>
    3911:	83 c4 10             	add    $0x10,%esp
    3914:	6a 00                	push   $0x0
    3916:	68 c0 11 00 00       	push   $0x11c0
    391b:	68 8e 00 00 00       	push   $0x8e
    3920:	6a 28                	push   $0x28
    3922:	e8 7e 01 00 00       	call   3aa5 <init_idt_desc>
    3927:	83 c4 10             	add    $0x10,%esp
    392a:	6a 00                	push   $0x0
    392c:	68 f0 11 00 00       	push   $0x11f0
    3931:	68 8e 00 00 00       	push   $0x8e
    3936:	6a 29                	push   $0x29
    3938:	e8 68 01 00 00       	call   3aa5 <init_idt_desc>
    393d:	83 c4 10             	add    $0x10,%esp
    3940:	6a 00                	push   $0x0
    3942:	68 20 12 00 00       	push   $0x1220
    3947:	68 8e 00 00 00       	push   $0x8e
    394c:	6a 2a                	push   $0x2a
    394e:	e8 52 01 00 00       	call   3aa5 <init_idt_desc>
    3953:	83 c4 10             	add    $0x10,%esp
    3956:	6a 00                	push   $0x0
    3958:	68 50 12 00 00       	push   $0x1250
    395d:	68 8e 00 00 00       	push   $0x8e
    3962:	6a 2b                	push   $0x2b
    3964:	e8 3c 01 00 00       	call   3aa5 <init_idt_desc>
    3969:	83 c4 10             	add    $0x10,%esp
    396c:	6a 00                	push   $0x0
    396e:	68 80 12 00 00       	push   $0x1280
    3973:	68 8e 00 00 00       	push   $0x8e
    3978:	6a 2c                	push   $0x2c
    397a:	e8 26 01 00 00       	call   3aa5 <init_idt_desc>
    397f:	83 c4 10             	add    $0x10,%esp
    3982:	6a 00                	push   $0x0
    3984:	68 b0 12 00 00       	push   $0x12b0
    3989:	68 8e 00 00 00       	push   $0x8e
    398e:	6a 2d                	push   $0x2d
    3990:	e8 10 01 00 00       	call   3aa5 <init_idt_desc>
    3995:	83 c4 10             	add    $0x10,%esp
    3998:	6a 00                	push   $0x0
    399a:	68 e0 12 00 00       	push   $0x12e0
    399f:	68 8e 00 00 00       	push   $0x8e
    39a4:	6a 2e                	push   $0x2e
    39a6:	e8 fa 00 00 00       	call   3aa5 <init_idt_desc>
    39ab:	83 c4 10             	add    $0x10,%esp
    39ae:	6a 00                	push   $0x0
    39b0:	68 10 13 00 00       	push   $0x1310
    39b5:	68 8e 00 00 00       	push   $0x8e
    39ba:	6a 2f                	push   $0x2f
    39bc:	e8 e4 00 00 00       	call   3aa5 <init_idt_desc>
    39c1:	83 c4 10             	add    $0x10,%esp
    39c4:	6a 03                	push   $0x3
    39c6:	68 cb 13 00 00       	push   $0x13cb
    39cb:	68 8e 00 00 00       	push   $0x8e
    39d0:	68 90 00 00 00       	push   $0x90
    39d5:	e8 cb 00 00 00       	call   3aa5 <init_idt_desc>
    39da:	83 c4 10             	add    $0x10,%esp
    39dd:	83 ec 04             	sub    $0x4,%esp
    39e0:	6a 68                	push   $0x68
    39e2:	6a 00                	push   $0x0
    39e4:	68 60 a4 04 00       	push   $0x4a460
    39e9:	e8 fb 2e 00 00       	call   68e9 <memset>
    39ee:	83 c4 10             	add    $0x10,%esp
    39f1:	c7 05 68 a4 04 00 10 	movl   $0x10,0x4a468
    39f8:	00 00 00 
    39fb:	83 ec 0c             	sub    $0xc,%esp
    39fe:	6a 10                	push   $0x10
    3a00:	e8 11 01 00 00       	call   3b16 <seg2phys>
    3a05:	83 c4 10             	add    $0x10,%esp
    3a08:	ba 60 a4 04 00       	mov    $0x4a460,%edx
    3a0d:	01 d0                	add    %edx,%eax
    3a0f:	68 89 00 00 00       	push   $0x89
    3a14:	6a 67                	push   $0x67
    3a16:	50                   	push   %eax
    3a17:	68 e0 93 04 00       	push   $0x493e0
    3a1c:	e8 44 01 00 00       	call   3b65 <init_descriptor>
    3a21:	83 c4 10             	add    $0x10,%esp
    3a24:	66 c7 05 c6 a4 04 00 	movw   $0x68,0x4a4c6
    3a2b:	68 00 
    3a2d:	c7 45 f0 e0 b2 04 00 	movl   $0x4b2e0,-0x10(%ebp)
    3a34:	66 c7 45 ee 28 00    	movw   $0x28,-0x12(%ebp)
    3a3a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    3a41:	eb 59                	jmp    3a9c <init_prot+0x3a3>
    3a43:	83 ec 0c             	sub    $0xc,%esp
    3a46:	6a 10                	push   $0x10
    3a48:	e8 c9 00 00 00       	call   3b16 <seg2phys>
    3a4d:	83 c4 10             	add    $0x10,%esp
    3a50:	89 c2                	mov    %eax,%edx
    3a52:	8b 45 f4             	mov    -0xc(%ebp),%eax
    3a55:	69 c0 94 01 00 00    	imul   $0x194,%eax,%eax
    3a5b:	83 c0 40             	add    $0x40,%eax
    3a5e:	05 e0 b2 04 00       	add    $0x4b2e0,%eax
    3a63:	83 c0 0a             	add    $0xa,%eax
    3a66:	01 c2                	add    %eax,%edx
    3a68:	0f b7 45 ee          	movzwl -0x12(%ebp),%eax
    3a6c:	66 c1 e8 03          	shr    $0x3,%ax
    3a70:	0f b7 c0             	movzwl %ax,%eax
    3a73:	c1 e0 03             	shl    $0x3,%eax
    3a76:	05 c0 93 04 00       	add    $0x493c0,%eax
    3a7b:	68 82 00 00 00       	push   $0x82
    3a80:	6a 0f                	push   $0xf
    3a82:	52                   	push   %edx
    3a83:	50                   	push   %eax
    3a84:	e8 dc 00 00 00       	call   3b65 <init_descriptor>
    3a89:	83 c4 10             	add    $0x10,%esp
    3a8c:	81 45 f0 94 01 00 00 	addl   $0x194,-0x10(%ebp)
    3a93:	66 83 45 ee 08       	addw   $0x8,-0x12(%ebp)
    3a98:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    3a9c:	83 7d f4 06          	cmpl   $0x6,-0xc(%ebp)
    3aa0:	7e a1                	jle    3a43 <init_prot+0x34a>
    3aa2:	90                   	nop
    3aa3:	c9                   	leave  
    3aa4:	c3                   	ret    

00003aa5 <init_idt_desc>:
    3aa5:	55                   	push   %ebp
    3aa6:	89 e5                	mov    %esp,%ebp
    3aa8:	83 ec 1c             	sub    $0x1c,%esp
    3aab:	8b 4d 08             	mov    0x8(%ebp),%ecx
    3aae:	8b 55 0c             	mov    0xc(%ebp),%edx
    3ab1:	8b 45 14             	mov    0x14(%ebp),%eax
    3ab4:	88 4d ec             	mov    %cl,-0x14(%ebp)
    3ab7:	88 55 e8             	mov    %dl,-0x18(%ebp)
    3aba:	88 45 e4             	mov    %al,-0x1c(%ebp)
    3abd:	0f b6 45 ec          	movzbl -0x14(%ebp),%eax
    3ac1:	c1 e0 03             	shl    $0x3,%eax
    3ac4:	05 40 a8 04 00       	add    $0x4a840,%eax
    3ac9:	89 45 fc             	mov    %eax,-0x4(%ebp)
    3acc:	8b 45 10             	mov    0x10(%ebp),%eax
    3acf:	89 45 f8             	mov    %eax,-0x8(%ebp)
    3ad2:	8b 45 f8             	mov    -0x8(%ebp),%eax
    3ad5:	89 c2                	mov    %eax,%edx
    3ad7:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3ada:	66 89 10             	mov    %dx,(%eax)
    3add:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3ae0:	66 c7 40 02 08 00    	movw   $0x8,0x2(%eax)
    3ae6:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3ae9:	c6 40 04 00          	movb   $0x0,0x4(%eax)
    3aed:	0f b6 45 e4          	movzbl -0x1c(%ebp),%eax
    3af1:	c1 e0 05             	shl    $0x5,%eax
    3af4:	89 c2                	mov    %eax,%edx
    3af6:	0f b6 45 e8          	movzbl -0x18(%ebp),%eax
    3afa:	09 d0                	or     %edx,%eax
    3afc:	89 c2                	mov    %eax,%edx
    3afe:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3b01:	88 50 05             	mov    %dl,0x5(%eax)
    3b04:	8b 45 f8             	mov    -0x8(%ebp),%eax
    3b07:	c1 e8 10             	shr    $0x10,%eax
    3b0a:	89 c2                	mov    %eax,%edx
    3b0c:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3b0f:	66 89 50 06          	mov    %dx,0x6(%eax)
    3b13:	90                   	nop
    3b14:	c9                   	leave  
    3b15:	c3                   	ret    

00003b16 <seg2phys>:
    3b16:	55                   	push   %ebp
    3b17:	89 e5                	mov    %esp,%ebp
    3b19:	83 ec 14             	sub    $0x14,%esp
    3b1c:	8b 45 08             	mov    0x8(%ebp),%eax
    3b1f:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
    3b23:	0f b7 45 ec          	movzwl -0x14(%ebp),%eax
    3b27:	66 c1 e8 03          	shr    $0x3,%ax
    3b2b:	0f b7 c0             	movzwl %ax,%eax
    3b2e:	c1 e0 03             	shl    $0x3,%eax
    3b31:	05 c0 93 04 00       	add    $0x493c0,%eax
    3b36:	89 45 fc             	mov    %eax,-0x4(%ebp)
    3b39:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3b3c:	0f b6 40 07          	movzbl 0x7(%eax),%eax
    3b40:	0f b6 c0             	movzbl %al,%eax
    3b43:	c1 e0 18             	shl    $0x18,%eax
    3b46:	89 c2                	mov    %eax,%edx
    3b48:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3b4b:	0f b6 40 04          	movzbl 0x4(%eax),%eax
    3b4f:	0f b6 c0             	movzbl %al,%eax
    3b52:	c1 e0 10             	shl    $0x10,%eax
    3b55:	09 c2                	or     %eax,%edx
    3b57:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3b5a:	0f b7 40 02          	movzwl 0x2(%eax),%eax
    3b5e:	0f b7 c0             	movzwl %ax,%eax
    3b61:	09 d0                	or     %edx,%eax
    3b63:	c9                   	leave  
    3b64:	c3                   	ret    

00003b65 <init_descriptor>:
    3b65:	55                   	push   %ebp
    3b66:	89 e5                	mov    %esp,%ebp
    3b68:	83 ec 04             	sub    $0x4,%esp
    3b6b:	8b 45 14             	mov    0x14(%ebp),%eax
    3b6e:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
    3b72:	8b 45 10             	mov    0x10(%ebp),%eax
    3b75:	89 c2                	mov    %eax,%edx
    3b77:	8b 45 08             	mov    0x8(%ebp),%eax
    3b7a:	66 89 10             	mov    %dx,(%eax)
    3b7d:	8b 45 0c             	mov    0xc(%ebp),%eax
    3b80:	89 c2                	mov    %eax,%edx
    3b82:	8b 45 08             	mov    0x8(%ebp),%eax
    3b85:	66 89 50 02          	mov    %dx,0x2(%eax)
    3b89:	8b 45 0c             	mov    0xc(%ebp),%eax
    3b8c:	c1 e8 10             	shr    $0x10,%eax
    3b8f:	89 c2                	mov    %eax,%edx
    3b91:	8b 45 08             	mov    0x8(%ebp),%eax
    3b94:	88 50 04             	mov    %dl,0x4(%eax)
    3b97:	0f b7 45 fc          	movzwl -0x4(%ebp),%eax
    3b9b:	89 c2                	mov    %eax,%edx
    3b9d:	8b 45 08             	mov    0x8(%ebp),%eax
    3ba0:	88 50 05             	mov    %dl,0x5(%eax)
    3ba3:	8b 45 10             	mov    0x10(%ebp),%eax
    3ba6:	c1 e8 10             	shr    $0x10,%eax
    3ba9:	83 e0 0f             	and    $0xf,%eax
    3bac:	89 c2                	mov    %eax,%edx
    3bae:	0f b7 45 fc          	movzwl -0x4(%ebp),%eax
    3bb2:	66 c1 e8 08          	shr    $0x8,%ax
    3bb6:	83 e0 f0             	and    $0xfffffff0,%eax
    3bb9:	09 c2                	or     %eax,%edx
    3bbb:	8b 45 08             	mov    0x8(%ebp),%eax
    3bbe:	88 50 06             	mov    %dl,0x6(%eax)
    3bc1:	8b 45 0c             	mov    0xc(%ebp),%eax
    3bc4:	c1 e8 18             	shr    $0x18,%eax
    3bc7:	89 c2                	mov    %eax,%edx
    3bc9:	8b 45 08             	mov    0x8(%ebp),%eax
    3bcc:	88 50 07             	mov    %dl,0x7(%eax)
    3bcf:	90                   	nop
    3bd0:	c9                   	leave  
    3bd1:	c3                   	ret    

00003bd2 <exception_handler>:
    3bd2:	55                   	push   %ebp
    3bd3:	89 e5                	mov    %esp,%ebp
    3bd5:	57                   	push   %edi
    3bd6:	56                   	push   %esi
    3bd7:	53                   	push   %ebx
    3bd8:	81 ec 1c 05 00 00    	sub    $0x51c,%esp
    3bde:	c7 45 e0 74 00 00 00 	movl   $0x74,-0x20(%ebp)
    3be5:	8d 85 e0 fa ff ff    	lea    -0x520(%ebp),%eax
    3beb:	bb 60 ab 00 00       	mov    $0xab60,%ebx
    3bf0:	ba 40 01 00 00       	mov    $0x140,%edx
    3bf5:	89 c7                	mov    %eax,%edi
    3bf7:	89 de                	mov    %ebx,%esi
    3bf9:	89 d1                	mov    %edx,%ecx
    3bfb:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
    3bfd:	c7 05 24 a8 04 00 00 	movl   $0x0,0x4a824
    3c04:	00 00 00 
    3c07:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    3c0e:	eb 14                	jmp    3c24 <exception_handler+0x52>
    3c10:	83 ec 0c             	sub    $0xc,%esp
    3c13:	68 20 ab 00 00       	push   $0xab20
    3c18:	e8 e3 29 00 00       	call   6600 <disp_str>
    3c1d:	83 c4 10             	add    $0x10,%esp
    3c20:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    3c24:	81 7d e4 8f 01 00 00 	cmpl   $0x18f,-0x1c(%ebp)
    3c2b:	7e e3                	jle    3c10 <exception_handler+0x3e>
    3c2d:	c7 05 24 a8 04 00 00 	movl   $0x0,0x4a824
    3c34:	00 00 00 
    3c37:	83 ec 08             	sub    $0x8,%esp
    3c3a:	ff 75 e0             	pushl  -0x20(%ebp)
    3c3d:	68 22 ab 00 00       	push   $0xab22
    3c42:	e8 f7 29 00 00       	call   663e <disp_color_str>
    3c47:	83 c4 10             	add    $0x10,%esp
    3c4a:	8d 85 e0 fa ff ff    	lea    -0x520(%ebp),%eax
    3c50:	8b 55 08             	mov    0x8(%ebp),%edx
    3c53:	c1 e2 06             	shl    $0x6,%edx
    3c56:	01 d0                	add    %edx,%eax
    3c58:	83 ec 08             	sub    $0x8,%esp
    3c5b:	ff 75 e0             	pushl  -0x20(%ebp)
    3c5e:	50                   	push   %eax
    3c5f:	e8 da 29 00 00       	call   663e <disp_color_str>
    3c64:	83 c4 10             	add    $0x10,%esp
    3c67:	83 ec 08             	sub    $0x8,%esp
    3c6a:	ff 75 e0             	pushl  -0x20(%ebp)
    3c6d:	68 32 ab 00 00       	push   $0xab32
    3c72:	e8 c7 29 00 00       	call   663e <disp_color_str>
    3c77:	83 c4 10             	add    $0x10,%esp
    3c7a:	83 ec 08             	sub    $0x8,%esp
    3c7d:	ff 75 e0             	pushl  -0x20(%ebp)
    3c80:	68 35 ab 00 00       	push   $0xab35
    3c85:	e8 b4 29 00 00       	call   663e <disp_color_str>
    3c8a:	83 c4 10             	add    $0x10,%esp
    3c8d:	83 ec 0c             	sub    $0xc,%esp
    3c90:	ff 75 18             	pushl  0x18(%ebp)
    3c93:	e8 ad 2b 00 00       	call   6845 <disp_int>
    3c98:	83 c4 10             	add    $0x10,%esp
    3c9b:	83 ec 08             	sub    $0x8,%esp
    3c9e:	ff 75 e0             	pushl  -0x20(%ebp)
    3ca1:	68 3d ab 00 00       	push   $0xab3d
    3ca6:	e8 93 29 00 00       	call   663e <disp_color_str>
    3cab:	83 c4 10             	add    $0x10,%esp
    3cae:	83 ec 0c             	sub    $0xc,%esp
    3cb1:	ff 75 14             	pushl  0x14(%ebp)
    3cb4:	e8 8c 2b 00 00       	call   6845 <disp_int>
    3cb9:	83 c4 10             	add    $0x10,%esp
    3cbc:	83 ec 08             	sub    $0x8,%esp
    3cbf:	ff 75 e0             	pushl  -0x20(%ebp)
    3cc2:	68 41 ab 00 00       	push   $0xab41
    3cc7:	e8 72 29 00 00       	call   663e <disp_color_str>
    3ccc:	83 c4 10             	add    $0x10,%esp
    3ccf:	83 ec 0c             	sub    $0xc,%esp
    3cd2:	ff 75 10             	pushl  0x10(%ebp)
    3cd5:	e8 6b 2b 00 00       	call   6845 <disp_int>
    3cda:	83 c4 10             	add    $0x10,%esp
    3cdd:	83 7d 0c ff          	cmpl   $0xffffffff,0xc(%ebp)
    3ce1:	74 21                	je     3d04 <exception_handler+0x132>
    3ce3:	83 ec 08             	sub    $0x8,%esp
    3ce6:	ff 75 e0             	pushl  -0x20(%ebp)
    3ce9:	68 46 ab 00 00       	push   $0xab46
    3cee:	e8 4b 29 00 00       	call   663e <disp_color_str>
    3cf3:	83 c4 10             	add    $0x10,%esp
    3cf6:	83 ec 0c             	sub    $0xc,%esp
    3cf9:	ff 75 0c             	pushl  0xc(%ebp)
    3cfc:	e8 44 2b 00 00       	call   6845 <disp_int>
    3d01:	83 c4 10             	add    $0x10,%esp
    3d04:	90                   	nop
    3d05:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3d08:	5b                   	pop    %ebx
    3d09:	5e                   	pop    %esi
    3d0a:	5f                   	pop    %edi
    3d0b:	5d                   	pop    %ebp
    3d0c:	c3                   	ret    

00003d0d <schedule>:
    3d0d:	55                   	push   %ebp
    3d0e:	89 e5                	mov    %esp,%ebp
    3d10:	83 ec 10             	sub    $0x10,%esp
    3d13:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
    3d1a:	eb 74                	jmp    3d90 <schedule+0x83>
    3d1c:	c7 45 fc e0 b2 04 00 	movl   $0x4b2e0,-0x4(%ebp)
    3d23:	eb 2d                	jmp    3d52 <schedule+0x45>
    3d25:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3d28:	8b 40 78             	mov    0x78(%eax),%eax
    3d2b:	85 c0                	test   %eax,%eax
    3d2d:	75 1c                	jne    3d4b <schedule+0x3e>
    3d2f:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3d32:	8b 40 5c             	mov    0x5c(%eax),%eax
    3d35:	39 45 f8             	cmp    %eax,-0x8(%ebp)
    3d38:	7d 11                	jge    3d4b <schedule+0x3e>
    3d3a:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3d3d:	8b 40 5c             	mov    0x5c(%eax),%eax
    3d40:	89 45 f8             	mov    %eax,-0x8(%ebp)
    3d43:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3d46:	a3 c0 b2 04 00       	mov    %eax,0x4b2c0
    3d4b:	81 45 fc 94 01 00 00 	addl   $0x194,-0x4(%ebp)
    3d52:	81 7d fc 58 bc 04 00 	cmpl   $0x4bc58,-0x4(%ebp)
    3d59:	76 ca                	jbe    3d25 <schedule+0x18>
    3d5b:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
    3d5f:	75 2f                	jne    3d90 <schedule+0x83>
    3d61:	c7 45 fc e0 b2 04 00 	movl   $0x4b2e0,-0x4(%ebp)
    3d68:	eb 1d                	jmp    3d87 <schedule+0x7a>
    3d6a:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3d6d:	8b 40 78             	mov    0x78(%eax),%eax
    3d70:	85 c0                	test   %eax,%eax
    3d72:	75 0c                	jne    3d80 <schedule+0x73>
    3d74:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3d77:	8b 50 60             	mov    0x60(%eax),%edx
    3d7a:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3d7d:	89 50 5c             	mov    %edx,0x5c(%eax)
    3d80:	81 45 fc 94 01 00 00 	addl   $0x194,-0x4(%ebp)
    3d87:	81 7d fc 58 bc 04 00 	cmpl   $0x4bc58,-0x4(%ebp)
    3d8e:	76 da                	jbe    3d6a <schedule+0x5d>
    3d90:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
    3d94:	74 86                	je     3d1c <schedule+0xf>
    3d96:	90                   	nop
    3d97:	c9                   	leave  
    3d98:	c3                   	ret    

00003d99 <sys_sendrec>:
    3d99:	55                   	push   %ebp
    3d9a:	89 e5                	mov    %esp,%ebp
    3d9c:	83 ec 18             	sub    $0x18,%esp
    3d9f:	a1 a0 93 04 00       	mov    0x493a0,%eax
    3da4:	85 c0                	test   %eax,%eax
    3da6:	74 19                	je     3dc1 <sys_sendrec+0x28>
    3da8:	6a 46                	push   $0x46
    3daa:	68 60 b0 00 00       	push   $0xb060
    3daf:	68 60 b0 00 00       	push   $0xb060
    3db4:	68 6e b0 00 00       	push   $0xb06e
    3db9:	e8 d5 2c 00 00       	call   6a93 <assertion_failure>
    3dbe:	83 c4 10             	add    $0x10,%esp
    3dc1:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    3dc5:	78 06                	js     3dcd <sys_sendrec+0x34>
    3dc7:	83 7d 0c 06          	cmpl   $0x6,0xc(%ebp)
    3dcb:	7e 25                	jle    3df2 <sys_sendrec+0x59>
    3dcd:	83 7d 0c 11          	cmpl   $0x11,0xc(%ebp)
    3dd1:	74 1f                	je     3df2 <sys_sendrec+0x59>
    3dd3:	83 7d 0c f6          	cmpl   $0xfffffff6,0xc(%ebp)
    3dd7:	74 19                	je     3df2 <sys_sendrec+0x59>
    3dd9:	6a 49                	push   $0x49
    3ddb:	68 60 b0 00 00       	push   $0xb060
    3de0:	68 60 b0 00 00       	push   $0xb060
    3de5:	68 80 b0 00 00       	push   $0xb080
    3dea:	e8 a4 2c 00 00       	call   6a93 <assertion_failure>
    3def:	83 c4 10             	add    $0x10,%esp
    3df2:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    3df9:	8b 45 14             	mov    0x14(%ebp),%eax
    3dfc:	2d e0 b2 04 00       	sub    $0x4b2e0,%eax
    3e01:	c1 f8 02             	sar    $0x2,%eax
    3e04:	69 c0 6d b1 32 7c    	imul   $0x7c32b16d,%eax,%eax
    3e0a:	89 45 f0             	mov    %eax,-0x10(%ebp)
    3e0d:	83 ec 08             	sub    $0x8,%esp
    3e10:	ff 75 10             	pushl  0x10(%ebp)
    3e13:	ff 75 f0             	pushl  -0x10(%ebp)
    3e16:	e8 a3 01 00 00       	call   3fbe <va2la>
    3e1b:	83 c4 10             	add    $0x10,%esp
    3e1e:	89 45 ec             	mov    %eax,-0x14(%ebp)
    3e21:	8b 45 ec             	mov    -0x14(%ebp),%eax
    3e24:	8b 55 f0             	mov    -0x10(%ebp),%edx
    3e27:	89 10                	mov    %edx,(%eax)
    3e29:	8b 45 ec             	mov    -0x14(%ebp),%eax
    3e2c:	8b 00                	mov    (%eax),%eax
    3e2e:	39 45 0c             	cmp    %eax,0xc(%ebp)
    3e31:	75 19                	jne    3e4c <sys_sendrec+0xb3>
    3e33:	6a 50                	push   $0x50
    3e35:	68 60 b0 00 00       	push   $0xb060
    3e3a:	68 60 b0 00 00       	push   $0xb060
    3e3f:	68 de b0 00 00       	push   $0xb0de
    3e44:	e8 4a 2c 00 00       	call   6a93 <assertion_failure>
    3e49:	83 c4 10             	add    $0x10,%esp
    3e4c:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
    3e50:	75 22                	jne    3e74 <sys_sendrec+0xdb>
    3e52:	83 ec 04             	sub    $0x4,%esp
    3e55:	ff 75 10             	pushl  0x10(%ebp)
    3e58:	ff 75 0c             	pushl  0xc(%ebp)
    3e5b:	ff 75 14             	pushl  0x14(%ebp)
    3e5e:	e8 3e 03 00 00       	call   41a1 <msg_send>
    3e63:	83 c4 10             	add    $0x10,%esp
    3e66:	89 45 f4             	mov    %eax,-0xc(%ebp)
    3e69:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    3e6d:	74 41                	je     3eb0 <sys_sendrec+0x117>
    3e6f:	8b 45 f4             	mov    -0xc(%ebp),%eax
    3e72:	eb 41                	jmp    3eb5 <sys_sendrec+0x11c>
    3e74:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
    3e78:	75 22                	jne    3e9c <sys_sendrec+0x103>
    3e7a:	83 ec 04             	sub    $0x4,%esp
    3e7d:	ff 75 10             	pushl  0x10(%ebp)
    3e80:	ff 75 0c             	pushl  0xc(%ebp)
    3e83:	ff 75 14             	pushl  0x14(%ebp)
    3e86:	e8 58 07 00 00       	call   45e3 <msg_receive>
    3e8b:	83 c4 10             	add    $0x10,%esp
    3e8e:	89 45 f4             	mov    %eax,-0xc(%ebp)
    3e91:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    3e95:	74 19                	je     3eb0 <sys_sendrec+0x117>
    3e97:	8b 45 f4             	mov    -0xc(%ebp),%eax
    3e9a:	eb 19                	jmp    3eb5 <sys_sendrec+0x11c>
    3e9c:	6a 02                	push   $0x2
    3e9e:	6a 01                	push   $0x1
    3ea0:	ff 75 08             	pushl  0x8(%ebp)
    3ea3:	68 f8 b0 00 00       	push   $0xb0f8
    3ea8:	e8 62 dd ff ff       	call   1c0f <panic>
    3ead:	83 c4 10             	add    $0x10,%esp
    3eb0:	b8 00 00 00 00       	mov    $0x0,%eax
    3eb5:	c9                   	leave  
    3eb6:	c3                   	ret    

00003eb7 <send_recv>:
    3eb7:	55                   	push   %ebp
    3eb8:	89 e5                	mov    %esp,%ebp
    3eba:	83 ec 18             	sub    $0x18,%esp
    3ebd:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    3ec4:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
    3ec8:	75 12                	jne    3edc <send_recv+0x25>
    3eca:	83 ec 04             	sub    $0x4,%esp
    3ecd:	6a 30                	push   $0x30
    3ecf:	6a 00                	push   $0x0
    3ed1:	ff 75 10             	pushl  0x10(%ebp)
    3ed4:	e8 10 2a 00 00       	call   68e9 <memset>
    3ed9:	83 c4 10             	add    $0x10,%esp
    3edc:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
    3ee0:	7e 59                	jle    3f3b <send_recv+0x84>
    3ee2:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
    3ee6:	7e 3a                	jle    3f22 <send_recv+0x6b>
    3ee8:	83 7d 08 03          	cmpl   $0x3,0x8(%ebp)
    3eec:	75 4d                	jne    3f3b <send_recv+0x84>
    3eee:	83 ec 04             	sub    $0x4,%esp
    3ef1:	ff 75 10             	pushl  0x10(%ebp)
    3ef4:	ff 75 0c             	pushl  0xc(%ebp)
    3ef7:	6a 01                	push   $0x1
    3ef9:	e8 12 d5 ff ff       	call   1410 <sendrec>
    3efe:	83 c4 10             	add    $0x10,%esp
    3f01:	89 45 f4             	mov    %eax,-0xc(%ebp)
    3f04:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    3f08:	75 61                	jne    3f6b <send_recv+0xb4>
    3f0a:	83 ec 04             	sub    $0x4,%esp
    3f0d:	ff 75 10             	pushl  0x10(%ebp)
    3f10:	ff 75 0c             	pushl  0xc(%ebp)
    3f13:	6a 02                	push   $0x2
    3f15:	e8 f6 d4 ff ff       	call   1410 <sendrec>
    3f1a:	83 c4 10             	add    $0x10,%esp
    3f1d:	89 45 f4             	mov    %eax,-0xc(%ebp)
    3f20:	eb 49                	jmp    3f6b <send_recv+0xb4>
    3f22:	83 ec 04             	sub    $0x4,%esp
    3f25:	ff 75 10             	pushl  0x10(%ebp)
    3f28:	ff 75 0c             	pushl  0xc(%ebp)
    3f2b:	ff 75 08             	pushl  0x8(%ebp)
    3f2e:	e8 dd d4 ff ff       	call   1410 <sendrec>
    3f33:	83 c4 10             	add    $0x10,%esp
    3f36:	89 45 f4             	mov    %eax,-0xc(%ebp)
    3f39:	eb 34                	jmp    3f6f <send_recv+0xb8>
    3f3b:	83 7d 08 03          	cmpl   $0x3,0x8(%ebp)
    3f3f:	74 2d                	je     3f6e <send_recv+0xb7>
    3f41:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
    3f45:	74 27                	je     3f6e <send_recv+0xb7>
    3f47:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
    3f4b:	74 21                	je     3f6e <send_recv+0xb7>
    3f4d:	68 8c 00 00 00       	push   $0x8c
    3f52:	68 60 b0 00 00       	push   $0xb060
    3f57:	68 60 b0 00 00       	push   $0xb060
    3f5c:	68 34 b1 00 00       	push   $0xb134
    3f61:	e8 2d 2b 00 00       	call   6a93 <assertion_failure>
    3f66:	83 c4 10             	add    $0x10,%esp
    3f69:	eb 03                	jmp    3f6e <send_recv+0xb7>
    3f6b:	90                   	nop
    3f6c:	eb 01                	jmp    3f6f <send_recv+0xb8>
    3f6e:	90                   	nop
    3f6f:	8b 45 f4             	mov    -0xc(%ebp),%eax
    3f72:	c9                   	leave  
    3f73:	c3                   	ret    

00003f74 <ldt_seg_linear>:
    3f74:	55                   	push   %ebp
    3f75:	89 e5                	mov    %esp,%ebp
    3f77:	83 ec 10             	sub    $0x10,%esp
    3f7a:	8b 45 0c             	mov    0xc(%ebp),%eax
    3f7d:	83 c0 08             	add    $0x8,%eax
    3f80:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    3f87:	8b 45 08             	mov    0x8(%ebp),%eax
    3f8a:	01 d0                	add    %edx,%eax
    3f8c:	83 c0 0a             	add    $0xa,%eax
    3f8f:	89 45 fc             	mov    %eax,-0x4(%ebp)
    3f92:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3f95:	0f b6 40 07          	movzbl 0x7(%eax),%eax
    3f99:	0f b6 c0             	movzbl %al,%eax
    3f9c:	c1 e0 18             	shl    $0x18,%eax
    3f9f:	89 c2                	mov    %eax,%edx
    3fa1:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3fa4:	0f b6 40 04          	movzbl 0x4(%eax),%eax
    3fa8:	0f b6 c0             	movzbl %al,%eax
    3fab:	c1 e0 10             	shl    $0x10,%eax
    3fae:	09 c2                	or     %eax,%edx
    3fb0:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3fb3:	0f b7 40 02          	movzwl 0x2(%eax),%eax
    3fb7:	0f b7 c0             	movzwl %ax,%eax
    3fba:	09 d0                	or     %edx,%eax
    3fbc:	c9                   	leave  
    3fbd:	c3                   	ret    

00003fbe <va2la>:
    3fbe:	55                   	push   %ebp
    3fbf:	89 e5                	mov    %esp,%ebp
    3fc1:	83 ec 18             	sub    $0x18,%esp
    3fc4:	8b 45 08             	mov    0x8(%ebp),%eax
    3fc7:	69 c0 94 01 00 00    	imul   $0x194,%eax,%eax
    3fcd:	05 e0 b2 04 00       	add    $0x4b2e0,%eax
    3fd2:	89 45 f4             	mov    %eax,-0xc(%ebp)
    3fd5:	6a 01                	push   $0x1
    3fd7:	ff 75 f4             	pushl  -0xc(%ebp)
    3fda:	e8 95 ff ff ff       	call   3f74 <ldt_seg_linear>
    3fdf:	83 c4 08             	add    $0x8,%esp
    3fe2:	89 45 f0             	mov    %eax,-0x10(%ebp)
    3fe5:	8b 55 0c             	mov    0xc(%ebp),%edx
    3fe8:	8b 45 f0             	mov    -0x10(%ebp),%eax
    3feb:	01 d0                	add    %edx,%eax
    3fed:	89 45 ec             	mov    %eax,-0x14(%ebp)
    3ff0:	83 7d 08 06          	cmpl   $0x6,0x8(%ebp)
    3ff4:	7f 24                	jg     401a <va2la+0x5c>
    3ff6:	8b 45 0c             	mov    0xc(%ebp),%eax
    3ff9:	39 45 ec             	cmp    %eax,-0x14(%ebp)
    3ffc:	74 1c                	je     401a <va2la+0x5c>
    3ffe:	68 b9 00 00 00       	push   $0xb9
    4003:	68 60 b0 00 00       	push   $0xb060
    4008:	68 60 b0 00 00       	push   $0xb060
    400d:	68 76 b1 00 00       	push   $0xb176
    4012:	e8 7c 2a 00 00       	call   6a93 <assertion_failure>
    4017:	83 c4 10             	add    $0x10,%esp
    401a:	8b 45 ec             	mov    -0x14(%ebp),%eax
    401d:	c9                   	leave  
    401e:	c3                   	ret    

0000401f <reset_msg>:
    401f:	55                   	push   %ebp
    4020:	89 e5                	mov    %esp,%ebp
    4022:	83 ec 08             	sub    $0x8,%esp
    4025:	83 ec 04             	sub    $0x4,%esp
    4028:	6a 30                	push   $0x30
    402a:	6a 00                	push   $0x0
    402c:	ff 75 08             	pushl  0x8(%ebp)
    402f:	e8 b5 28 00 00       	call   68e9 <memset>
    4034:	83 c4 10             	add    $0x10,%esp
    4037:	90                   	nop
    4038:	c9                   	leave  
    4039:	c3                   	ret    

0000403a <block>:
    403a:	55                   	push   %ebp
    403b:	89 e5                	mov    %esp,%ebp
    403d:	83 ec 08             	sub    $0x8,%esp
    4040:	8b 45 08             	mov    0x8(%ebp),%eax
    4043:	8b 40 78             	mov    0x78(%eax),%eax
    4046:	85 c0                	test   %eax,%eax
    4048:	75 1c                	jne    4066 <block+0x2c>
    404a:	68 da 00 00 00       	push   $0xda
    404f:	68 60 b0 00 00       	push   $0xb060
    4054:	68 60 b0 00 00       	push   $0xb060
    4059:	68 84 b1 00 00       	push   $0xb184
    405e:	e8 30 2a 00 00       	call   6a93 <assertion_failure>
    4063:	83 c4 10             	add    $0x10,%esp
    4066:	e8 a2 fc ff ff       	call   3d0d <schedule>
    406b:	90                   	nop
    406c:	c9                   	leave  
    406d:	c3                   	ret    

0000406e <unblock>:
    406e:	55                   	push   %ebp
    406f:	89 e5                	mov    %esp,%ebp
    4071:	83 ec 08             	sub    $0x8,%esp
    4074:	8b 45 08             	mov    0x8(%ebp),%eax
    4077:	8b 40 78             	mov    0x78(%eax),%eax
    407a:	85 c0                	test   %eax,%eax
    407c:	74 1c                	je     409a <unblock+0x2c>
    407e:	68 e9 00 00 00       	push   $0xe9
    4083:	68 60 b0 00 00       	push   $0xb060
    4088:	68 60 b0 00 00       	push   $0xb060
    408d:	68 8f b1 00 00       	push   $0xb18f
    4092:	e8 fc 29 00 00       	call   6a93 <assertion_failure>
    4097:	83 c4 10             	add    $0x10,%esp
    409a:	90                   	nop
    409b:	c9                   	leave  
    409c:	c3                   	ret    

0000409d <deadlock>:
    409d:	55                   	push   %ebp
    409e:	89 e5                	mov    %esp,%ebp
    40a0:	83 ec 18             	sub    $0x18,%esp
    40a3:	8b 45 0c             	mov    0xc(%ebp),%eax
    40a6:	69 c0 94 01 00 00    	imul   $0x194,%eax,%eax
    40ac:	05 e0 b2 04 00       	add    $0x4b2e0,%eax
    40b1:	89 45 f4             	mov    %eax,-0xc(%ebp)
    40b4:	8b 45 f4             	mov    -0xc(%ebp),%eax
    40b7:	8b 40 78             	mov    0x78(%eax),%eax
    40ba:	83 e0 02             	and    $0x2,%eax
    40bd:	85 c0                	test   %eax,%eax
    40bf:	0f 84 d4 00 00 00    	je     4199 <deadlock+0xfc>
    40c5:	8b 45 f4             	mov    -0xc(%ebp),%eax
    40c8:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
    40ce:	39 45 08             	cmp    %eax,0x8(%ebp)
    40d1:	0f 85 a6 00 00 00    	jne    417d <deadlock+0xe0>
    40d7:	8b 45 0c             	mov    0xc(%ebp),%eax
    40da:	69 c0 94 01 00 00    	imul   $0x194,%eax,%eax
    40e0:	05 e0 b2 04 00       	add    $0x4b2e0,%eax
    40e5:	89 45 f4             	mov    %eax,-0xc(%ebp)
    40e8:	8b 45 f4             	mov    -0xc(%ebp),%eax
    40eb:	83 c0 68             	add    $0x68,%eax
    40ee:	83 ec 08             	sub    $0x8,%esp
    40f1:	50                   	push   %eax
    40f2:	68 9f b1 00 00       	push   $0xb19f
    40f7:	e8 a8 21 00 00       	call   62a4 <printf>
    40fc:	83 c4 10             	add    $0x10,%esp
    40ff:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4102:	8b 40 7c             	mov    0x7c(%eax),%eax
    4105:	85 c0                	test   %eax,%eax
    4107:	75 1c                	jne    4125 <deadlock+0x88>
    4109:	68 05 01 00 00       	push   $0x105
    410e:	68 60 b0 00 00       	push   $0xb060
    4113:	68 60 b0 00 00       	push   $0xb060
    4118:	68 a5 b1 00 00       	push   $0xb1a5
    411d:	e8 71 29 00 00       	call   6a93 <assertion_failure>
    4122:	83 c4 10             	add    $0x10,%esp
    4125:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4128:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
    412e:	69 c0 94 01 00 00    	imul   $0x194,%eax,%eax
    4134:	05 e0 b2 04 00       	add    $0x4b2e0,%eax
    4139:	89 45 f4             	mov    %eax,-0xc(%ebp)
    413c:	8b 45 f4             	mov    -0xc(%ebp),%eax
    413f:	83 c0 68             	add    $0x68,%eax
    4142:	83 ec 08             	sub    $0x8,%esp
    4145:	50                   	push   %eax
    4146:	68 ae b1 00 00       	push   $0xb1ae
    414b:	e8 54 21 00 00       	call   62a4 <printf>
    4150:	83 c4 10             	add    $0x10,%esp
    4153:	8b 45 08             	mov    0x8(%ebp),%eax
    4156:	69 c0 94 01 00 00    	imul   $0x194,%eax,%eax
    415c:	05 e0 b2 04 00       	add    $0x4b2e0,%eax
    4161:	39 45 f4             	cmp    %eax,-0xc(%ebp)
    4164:	75 99                	jne    40ff <deadlock+0x62>
    4166:	83 ec 0c             	sub    $0xc,%esp
    4169:	68 b3 b1 00 00       	push   $0xb1b3
    416e:	e8 31 21 00 00       	call   62a4 <printf>
    4173:	83 c4 10             	add    $0x10,%esp
    4176:	b8 01 00 00 00       	mov    $0x1,%eax
    417b:	eb 22                	jmp    419f <deadlock+0x102>
    417d:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4180:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
    4186:	69 c0 94 01 00 00    	imul   $0x194,%eax,%eax
    418c:	05 e0 b2 04 00       	add    $0x4b2e0,%eax
    4191:	89 45 f4             	mov    %eax,-0xc(%ebp)
    4194:	e9 1b ff ff ff       	jmp    40b4 <deadlock+0x17>
    4199:	90                   	nop
    419a:	b8 00 00 00 00       	mov    $0x0,%eax
    419f:	c9                   	leave  
    41a0:	c3                   	ret    

000041a1 <msg_send>:
    41a1:	55                   	push   %ebp
    41a2:	89 e5                	mov    %esp,%ebp
    41a4:	53                   	push   %ebx
    41a5:	83 ec 14             	sub    $0x14,%esp
    41a8:	8b 45 08             	mov    0x8(%ebp),%eax
    41ab:	89 45 f0             	mov    %eax,-0x10(%ebp)
    41ae:	8b 45 0c             	mov    0xc(%ebp),%eax
    41b1:	69 c0 94 01 00 00    	imul   $0x194,%eax,%eax
    41b7:	05 e0 b2 04 00       	add    $0x4b2e0,%eax
    41bc:	89 45 ec             	mov    %eax,-0x14(%ebp)
    41bf:	8b 45 f0             	mov    -0x10(%ebp),%eax
    41c2:	2d e0 b2 04 00       	sub    $0x4b2e0,%eax
    41c7:	c1 f8 02             	sar    $0x2,%eax
    41ca:	69 c0 6d b1 32 7c    	imul   $0x7c32b16d,%eax,%eax
    41d0:	39 45 0c             	cmp    %eax,0xc(%ebp)
    41d3:	75 1c                	jne    41f1 <msg_send+0x50>
    41d5:	68 29 01 00 00       	push   $0x129
    41da:	68 60 b0 00 00       	push   $0xb060
    41df:	68 60 b0 00 00       	push   $0xb060
    41e4:	68 b7 b1 00 00       	push   $0xb1b7
    41e9:	e8 a5 28 00 00       	call   6a93 <assertion_failure>
    41ee:	83 c4 10             	add    $0x10,%esp
    41f1:	8b 45 f0             	mov    -0x10(%ebp),%eax
    41f4:	2d e0 b2 04 00       	sub    $0x4b2e0,%eax
    41f9:	c1 f8 02             	sar    $0x2,%eax
    41fc:	69 c0 6d b1 32 7c    	imul   $0x7c32b16d,%eax,%eax
    4202:	83 ec 08             	sub    $0x8,%esp
    4205:	ff 75 0c             	pushl  0xc(%ebp)
    4208:	50                   	push   %eax
    4209:	e8 8f fe ff ff       	call   409d <deadlock>
    420e:	83 c4 10             	add    $0x10,%esp
    4211:	85 c0                	test   %eax,%eax
    4213:	74 1e                	je     4233 <msg_send+0x92>
    4215:	8b 45 ec             	mov    -0x14(%ebp),%eax
    4218:	8d 50 68             	lea    0x68(%eax),%edx
    421b:	8b 45 f0             	mov    -0x10(%ebp),%eax
    421e:	83 c0 68             	add    $0x68,%eax
    4221:	83 ec 04             	sub    $0x4,%esp
    4224:	52                   	push   %edx
    4225:	50                   	push   %eax
    4226:	68 d0 b1 00 00       	push   $0xb1d0
    422b:	e8 df d9 ff ff       	call   1c0f <panic>
    4230:	83 c4 10             	add    $0x10,%esp
    4233:	8b 45 ec             	mov    -0x14(%ebp),%eax
    4236:	8b 40 78             	mov    0x78(%eax),%eax
    4239:	83 e0 04             	and    $0x4,%eax
    423c:	85 c0                	test   %eax,%eax
    423e:	0f 84 3e 02 00 00    	je     4482 <msg_send+0x2e1>
    4244:	8b 45 ec             	mov    -0x14(%ebp),%eax
    4247:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    424d:	8b 55 f0             	mov    -0x10(%ebp),%edx
    4250:	81 ea e0 b2 04 00    	sub    $0x4b2e0,%edx
    4256:	c1 fa 02             	sar    $0x2,%edx
    4259:	69 d2 6d b1 32 7c    	imul   $0x7c32b16d,%edx,%edx
    425f:	39 d0                	cmp    %edx,%eax
    4261:	74 12                	je     4275 <msg_send+0xd4>
    4263:	8b 45 ec             	mov    -0x14(%ebp),%eax
    4266:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    426c:	83 f8 11             	cmp    $0x11,%eax
    426f:	0f 85 0d 02 00 00    	jne    4482 <msg_send+0x2e1>
    4275:	8b 45 ec             	mov    -0x14(%ebp),%eax
    4278:	8b 40 7c             	mov    0x7c(%eax),%eax
    427b:	85 c0                	test   %eax,%eax
    427d:	75 1c                	jne    429b <msg_send+0xfa>
    427f:	68 33 01 00 00       	push   $0x133
    4284:	68 60 b0 00 00       	push   $0xb060
    4289:	68 60 b0 00 00       	push   $0xb060
    428e:	68 e4 b1 00 00       	push   $0xb1e4
    4293:	e8 fb 27 00 00       	call   6a93 <assertion_failure>
    4298:	83 c4 10             	add    $0x10,%esp
    429b:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
    429f:	75 1c                	jne    42bd <msg_send+0x11c>
    42a1:	68 34 01 00 00       	push   $0x134
    42a6:	68 60 b0 00 00       	push   $0xb060
    42ab:	68 60 b0 00 00       	push   $0xb060
    42b0:	68 f2 b1 00 00       	push   $0xb1f2
    42b5:	e8 d9 27 00 00       	call   6a93 <assertion_failure>
    42ba:	83 c4 10             	add    $0x10,%esp
    42bd:	8b 45 f0             	mov    -0x10(%ebp),%eax
    42c0:	2d e0 b2 04 00       	sub    $0x4b2e0,%eax
    42c5:	c1 f8 02             	sar    $0x2,%eax
    42c8:	69 c0 6d b1 32 7c    	imul   $0x7c32b16d,%eax,%eax
    42ce:	83 ec 08             	sub    $0x8,%esp
    42d1:	ff 75 10             	pushl  0x10(%ebp)
    42d4:	50                   	push   %eax
    42d5:	e8 e4 fc ff ff       	call   3fbe <va2la>
    42da:	83 c4 10             	add    $0x10,%esp
    42dd:	89 c3                	mov    %eax,%ebx
    42df:	8b 45 ec             	mov    -0x14(%ebp),%eax
    42e2:	8b 40 7c             	mov    0x7c(%eax),%eax
    42e5:	83 ec 08             	sub    $0x8,%esp
    42e8:	50                   	push   %eax
    42e9:	ff 75 0c             	pushl  0xc(%ebp)
    42ec:	e8 cd fc ff ff       	call   3fbe <va2la>
    42f1:	83 c4 10             	add    $0x10,%esp
    42f4:	83 ec 04             	sub    $0x4,%esp
    42f7:	6a 30                	push   $0x30
    42f9:	53                   	push   %ebx
    42fa:	50                   	push   %eax
    42fb:	e8 c0 25 00 00       	call   68c0 <memcpy>
    4300:	83 c4 10             	add    $0x10,%esp
    4303:	8b 45 ec             	mov    -0x14(%ebp),%eax
    4306:	c7 40 7c 00 00 00 00 	movl   $0x0,0x7c(%eax)
    430d:	8b 45 ec             	mov    -0x14(%ebp),%eax
    4310:	8b 40 78             	mov    0x78(%eax),%eax
    4313:	83 e0 fb             	and    $0xfffffffb,%eax
    4316:	89 c2                	mov    %eax,%edx
    4318:	8b 45 ec             	mov    -0x14(%ebp),%eax
    431b:	89 50 78             	mov    %edx,0x78(%eax)
    431e:	8b 45 ec             	mov    -0x14(%ebp),%eax
    4321:	c7 80 80 00 00 00 1b 	movl   $0x1b,0x80(%eax)
    4328:	00 00 00 
    432b:	83 ec 0c             	sub    $0xc,%esp
    432e:	ff 75 ec             	pushl  -0x14(%ebp)
    4331:	e8 38 fd ff ff       	call   406e <unblock>
    4336:	83 c4 10             	add    $0x10,%esp
    4339:	8b 45 ec             	mov    -0x14(%ebp),%eax
    433c:	8b 40 78             	mov    0x78(%eax),%eax
    433f:	85 c0                	test   %eax,%eax
    4341:	74 1c                	je     435f <msg_send+0x1be>
    4343:	68 3e 01 00 00       	push   $0x13e
    4348:	68 60 b0 00 00       	push   $0xb060
    434d:	68 60 b0 00 00       	push   $0xb060
    4352:	68 f4 b1 00 00       	push   $0xb1f4
    4357:	e8 37 27 00 00       	call   6a93 <assertion_failure>
    435c:	83 c4 10             	add    $0x10,%esp
    435f:	8b 45 ec             	mov    -0x14(%ebp),%eax
    4362:	8b 40 7c             	mov    0x7c(%eax),%eax
    4365:	85 c0                	test   %eax,%eax
    4367:	74 1c                	je     4385 <msg_send+0x1e4>
    4369:	68 3f 01 00 00       	push   $0x13f
    436e:	68 60 b0 00 00       	push   $0xb060
    4373:	68 60 b0 00 00       	push   $0xb060
    4378:	68 09 b2 00 00       	push   $0xb209
    437d:	e8 11 27 00 00       	call   6a93 <assertion_failure>
    4382:	83 c4 10             	add    $0x10,%esp
    4385:	8b 45 ec             	mov    -0x14(%ebp),%eax
    4388:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    438e:	83 f8 1b             	cmp    $0x1b,%eax
    4391:	74 1c                	je     43af <msg_send+0x20e>
    4393:	68 40 01 00 00       	push   $0x140
    4398:	68 60 b0 00 00       	push   $0xb060
    439d:	68 60 b0 00 00       	push   $0xb060
    43a2:	68 1c b2 00 00       	push   $0xb21c
    43a7:	e8 e7 26 00 00       	call   6a93 <assertion_failure>
    43ac:	83 c4 10             	add    $0x10,%esp
    43af:	8b 45 ec             	mov    -0x14(%ebp),%eax
    43b2:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
    43b8:	83 f8 1b             	cmp    $0x1b,%eax
    43bb:	74 1c                	je     43d9 <msg_send+0x238>
    43bd:	68 41 01 00 00       	push   $0x141
    43c2:	68 60 b0 00 00       	push   $0xb060
    43c7:	68 60 b0 00 00       	push   $0xb060
    43cc:	68 3a b2 00 00       	push   $0xb23a
    43d1:	e8 bd 26 00 00       	call   6a93 <assertion_failure>
    43d6:	83 c4 10             	add    $0x10,%esp
    43d9:	8b 45 f0             	mov    -0x10(%ebp),%eax
    43dc:	8b 40 78             	mov    0x78(%eax),%eax
    43df:	85 c0                	test   %eax,%eax
    43e1:	74 1c                	je     43ff <msg_send+0x25e>
    43e3:	68 42 01 00 00       	push   $0x142
    43e8:	68 60 b0 00 00       	push   $0xb060
    43ed:	68 60 b0 00 00       	push   $0xb060
    43f2:	68 56 b2 00 00       	push   $0xb256
    43f7:	e8 97 26 00 00       	call   6a93 <assertion_failure>
    43fc:	83 c4 10             	add    $0x10,%esp
    43ff:	8b 45 f0             	mov    -0x10(%ebp),%eax
    4402:	8b 40 7c             	mov    0x7c(%eax),%eax
    4405:	85 c0                	test   %eax,%eax
    4407:	74 1c                	je     4425 <msg_send+0x284>
    4409:	68 43 01 00 00       	push   $0x143
    440e:	68 60 b0 00 00       	push   $0xb060
    4413:	68 60 b0 00 00       	push   $0xb060
    4418:	68 6b b2 00 00       	push   $0xb26b
    441d:	e8 71 26 00 00       	call   6a93 <assertion_failure>
    4422:	83 c4 10             	add    $0x10,%esp
    4425:	8b 45 f0             	mov    -0x10(%ebp),%eax
    4428:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    442e:	83 f8 1b             	cmp    $0x1b,%eax
    4431:	74 1c                	je     444f <msg_send+0x2ae>
    4433:	68 44 01 00 00       	push   $0x144
    4438:	68 60 b0 00 00       	push   $0xb060
    443d:	68 60 b0 00 00       	push   $0xb060
    4442:	68 7e b2 00 00       	push   $0xb27e
    4447:	e8 47 26 00 00       	call   6a93 <assertion_failure>
    444c:	83 c4 10             	add    $0x10,%esp
    444f:	8b 45 f0             	mov    -0x10(%ebp),%eax
    4452:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
    4458:	83 f8 1b             	cmp    $0x1b,%eax
    445b:	0f 84 78 01 00 00    	je     45d9 <msg_send+0x438>
    4461:	68 45 01 00 00       	push   $0x145
    4466:	68 60 b0 00 00       	push   $0xb060
    446b:	68 60 b0 00 00       	push   $0xb060
    4470:	68 9c b2 00 00       	push   $0xb29c
    4475:	e8 19 26 00 00       	call   6a93 <assertion_failure>
    447a:	83 c4 10             	add    $0x10,%esp
    447d:	e9 57 01 00 00       	jmp    45d9 <msg_send+0x438>
    4482:	8b 45 f0             	mov    -0x10(%ebp),%eax
    4485:	8b 40 78             	mov    0x78(%eax),%eax
    4488:	83 c8 02             	or     $0x2,%eax
    448b:	89 c2                	mov    %eax,%edx
    448d:	8b 45 f0             	mov    -0x10(%ebp),%eax
    4490:	89 50 78             	mov    %edx,0x78(%eax)
    4493:	8b 45 f0             	mov    -0x10(%ebp),%eax
    4496:	8b 40 78             	mov    0x78(%eax),%eax
    4499:	83 f8 02             	cmp    $0x2,%eax
    449c:	74 1c                	je     44ba <msg_send+0x319>
    449e:	68 49 01 00 00       	push   $0x149
    44a3:	68 60 b0 00 00       	push   $0xb060
    44a8:	68 60 b0 00 00       	push   $0xb060
    44ad:	68 b8 b2 00 00       	push   $0xb2b8
    44b2:	e8 dc 25 00 00       	call   6a93 <assertion_failure>
    44b7:	83 c4 10             	add    $0x10,%esp
    44ba:	8b 45 f0             	mov    -0x10(%ebp),%eax
    44bd:	8b 55 0c             	mov    0xc(%ebp),%edx
    44c0:	89 90 84 00 00 00    	mov    %edx,0x84(%eax)
    44c6:	8b 45 f0             	mov    -0x10(%ebp),%eax
    44c9:	8b 55 10             	mov    0x10(%ebp),%edx
    44cc:	89 50 7c             	mov    %edx,0x7c(%eax)
    44cf:	8b 45 ec             	mov    -0x14(%ebp),%eax
    44d2:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
    44d8:	85 c0                	test   %eax,%eax
    44da:	74 35                	je     4511 <msg_send+0x370>
    44dc:	8b 45 ec             	mov    -0x14(%ebp),%eax
    44df:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
    44e5:	89 45 f4             	mov    %eax,-0xc(%ebp)
    44e8:	eb 0c                	jmp    44f6 <msg_send+0x355>
    44ea:	8b 45 f4             	mov    -0xc(%ebp),%eax
    44ed:	8b 80 90 00 00 00    	mov    0x90(%eax),%eax
    44f3:	89 45 f4             	mov    %eax,-0xc(%ebp)
    44f6:	8b 45 f4             	mov    -0xc(%ebp),%eax
    44f9:	8b 80 90 00 00 00    	mov    0x90(%eax),%eax
    44ff:	85 c0                	test   %eax,%eax
    4501:	75 e7                	jne    44ea <msg_send+0x349>
    4503:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4506:	8b 55 f0             	mov    -0x10(%ebp),%edx
    4509:	89 90 90 00 00 00    	mov    %edx,0x90(%eax)
    450f:	eb 0c                	jmp    451d <msg_send+0x37c>
    4511:	8b 45 ec             	mov    -0x14(%ebp),%eax
    4514:	8b 55 f0             	mov    -0x10(%ebp),%edx
    4517:	89 90 8c 00 00 00    	mov    %edx,0x8c(%eax)
    451d:	8b 45 f0             	mov    -0x10(%ebp),%eax
    4520:	c7 80 90 00 00 00 00 	movl   $0x0,0x90(%eax)
    4527:	00 00 00 
    452a:	83 ec 0c             	sub    $0xc,%esp
    452d:	ff 75 f0             	pushl  -0x10(%ebp)
    4530:	e8 05 fb ff ff       	call   403a <block>
    4535:	83 c4 10             	add    $0x10,%esp
    4538:	8b 45 f0             	mov    -0x10(%ebp),%eax
    453b:	8b 40 78             	mov    0x78(%eax),%eax
    453e:	83 f8 02             	cmp    $0x2,%eax
    4541:	74 1c                	je     455f <msg_send+0x3be>
    4543:	68 5c 01 00 00       	push   $0x15c
    4548:	68 60 b0 00 00       	push   $0xb060
    454d:	68 60 b0 00 00       	push   $0xb060
    4552:	68 b8 b2 00 00       	push   $0xb2b8
    4557:	e8 37 25 00 00       	call   6a93 <assertion_failure>
    455c:	83 c4 10             	add    $0x10,%esp
    455f:	8b 45 f0             	mov    -0x10(%ebp),%eax
    4562:	8b 40 7c             	mov    0x7c(%eax),%eax
    4565:	85 c0                	test   %eax,%eax
    4567:	75 1c                	jne    4585 <msg_send+0x3e4>
    4569:	68 5d 01 00 00       	push   $0x15d
    456e:	68 60 b0 00 00       	push   $0xb060
    4573:	68 60 b0 00 00       	push   $0xb060
    4578:	68 d3 b2 00 00       	push   $0xb2d3
    457d:	e8 11 25 00 00       	call   6a93 <assertion_failure>
    4582:	83 c4 10             	add    $0x10,%esp
    4585:	8b 45 f0             	mov    -0x10(%ebp),%eax
    4588:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    458e:	83 f8 1b             	cmp    $0x1b,%eax
    4591:	74 1c                	je     45af <msg_send+0x40e>
    4593:	68 5e 01 00 00       	push   $0x15e
    4598:	68 60 b0 00 00       	push   $0xb060
    459d:	68 60 b0 00 00       	push   $0xb060
    45a2:	68 7e b2 00 00       	push   $0xb27e
    45a7:	e8 e7 24 00 00       	call   6a93 <assertion_failure>
    45ac:	83 c4 10             	add    $0x10,%esp
    45af:	8b 45 f0             	mov    -0x10(%ebp),%eax
    45b2:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
    45b8:	39 45 0c             	cmp    %eax,0xc(%ebp)
    45bb:	74 1c                	je     45d9 <msg_send+0x438>
    45bd:	68 5f 01 00 00       	push   $0x15f
    45c2:	68 60 b0 00 00       	push   $0xb060
    45c7:	68 60 b0 00 00       	push   $0xb060
    45cc:	68 e6 b2 00 00       	push   $0xb2e6
    45d1:	e8 bd 24 00 00       	call   6a93 <assertion_failure>
    45d6:	83 c4 10             	add    $0x10,%esp
    45d9:	b8 00 00 00 00       	mov    $0x0,%eax
    45de:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    45e1:	c9                   	leave  
    45e2:	c3                   	ret    

000045e3 <msg_receive>:
    45e3:	55                   	push   %ebp
    45e4:	89 e5                	mov    %esp,%ebp
    45e6:	53                   	push   %ebx
    45e7:	83 ec 54             	sub    $0x54,%esp
    45ea:	8b 45 08             	mov    0x8(%ebp),%eax
    45ed:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    45f0:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    45f7:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    45fe:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    4605:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4608:	2d e0 b2 04 00       	sub    $0x4b2e0,%eax
    460d:	c1 f8 02             	sar    $0x2,%eax
    4610:	69 c0 6d b1 32 7c    	imul   $0x7c32b16d,%eax,%eax
    4616:	39 45 0c             	cmp    %eax,0xc(%ebp)
    4619:	75 1c                	jne    4637 <msg_receive+0x54>
    461b:	68 80 01 00 00       	push   $0x180
    4620:	68 60 b0 00 00       	push   $0xb060
    4625:	68 60 b0 00 00       	push   $0xb060
    462a:	68 00 b3 00 00       	push   $0xb300
    462f:	e8 5f 24 00 00       	call   6a93 <assertion_failure>
    4634:	83 c4 10             	add    $0x10,%esp
    4637:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    463a:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
    4640:	85 c0                	test   %eax,%eax
    4642:	0f 84 39 01 00 00    	je     4781 <msg_receive+0x19e>
    4648:	83 7d 0c 11          	cmpl   $0x11,0xc(%ebp)
    464c:	74 0a                	je     4658 <msg_receive+0x75>
    464e:	83 7d 0c f6          	cmpl   $0xfffffff6,0xc(%ebp)
    4652:	0f 85 29 01 00 00    	jne    4781 <msg_receive+0x19e>
    4658:	83 ec 0c             	sub    $0xc,%esp
    465b:	8d 45 b4             	lea    -0x4c(%ebp),%eax
    465e:	50                   	push   %eax
    465f:	e8 bb f9 ff ff       	call   401f <reset_msg>
    4664:	83 c4 10             	add    $0x10,%esp
    4667:	c7 45 b4 f6 ff ff ff 	movl   $0xfffffff6,-0x4c(%ebp)
    466e:	c7 45 b8 01 00 00 00 	movl   $0x1,-0x48(%ebp)
    4675:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
    4679:	75 1c                	jne    4697 <msg_receive+0xb4>
    467b:	68 8d 01 00 00       	push   $0x18d
    4680:	68 60 b0 00 00       	push   $0xb060
    4685:	68 60 b0 00 00       	push   $0xb060
    468a:	68 f2 b1 00 00       	push   $0xb1f2
    468f:	e8 ff 23 00 00       	call   6a93 <assertion_failure>
    4694:	83 c4 10             	add    $0x10,%esp
    4697:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    469a:	2d e0 b2 04 00       	sub    $0x4b2e0,%eax
    469f:	c1 f8 02             	sar    $0x2,%eax
    46a2:	69 c0 6d b1 32 7c    	imul   $0x7c32b16d,%eax,%eax
    46a8:	83 ec 08             	sub    $0x8,%esp
    46ab:	ff 75 10             	pushl  0x10(%ebp)
    46ae:	50                   	push   %eax
    46af:	e8 0a f9 ff ff       	call   3fbe <va2la>
    46b4:	83 c4 10             	add    $0x10,%esp
    46b7:	89 c2                	mov    %eax,%edx
    46b9:	83 ec 04             	sub    $0x4,%esp
    46bc:	6a 30                	push   $0x30
    46be:	8d 45 b4             	lea    -0x4c(%ebp),%eax
    46c1:	50                   	push   %eax
    46c2:	52                   	push   %edx
    46c3:	e8 f8 21 00 00       	call   68c0 <memcpy>
    46c8:	83 c4 10             	add    $0x10,%esp
    46cb:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    46ce:	c7 80 88 00 00 00 00 	movl   $0x0,0x88(%eax)
    46d5:	00 00 00 
    46d8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    46db:	8b 40 78             	mov    0x78(%eax),%eax
    46de:	85 c0                	test   %eax,%eax
    46e0:	74 1c                	je     46fe <msg_receive+0x11b>
    46e2:	68 94 01 00 00       	push   $0x194
    46e7:	68 60 b0 00 00       	push   $0xb060
    46ec:	68 60 b0 00 00       	push   $0xb060
    46f1:	68 24 b3 00 00       	push   $0xb324
    46f6:	e8 98 23 00 00       	call   6a93 <assertion_failure>
    46fb:	83 c4 10             	add    $0x10,%esp
    46fe:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4701:	8b 40 7c             	mov    0x7c(%eax),%eax
    4704:	85 c0                	test   %eax,%eax
    4706:	74 1c                	je     4724 <msg_receive+0x141>
    4708:	68 95 01 00 00       	push   $0x195
    470d:	68 60 b0 00 00       	push   $0xb060
    4712:	68 60 b0 00 00       	push   $0xb060
    4717:	68 43 b3 00 00       	push   $0xb343
    471c:	e8 72 23 00 00       	call   6a93 <assertion_failure>
    4721:	83 c4 10             	add    $0x10,%esp
    4724:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4727:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
    472d:	83 f8 1b             	cmp    $0x1b,%eax
    4730:	74 1c                	je     474e <msg_receive+0x16b>
    4732:	68 96 01 00 00       	push   $0x196
    4737:	68 60 b0 00 00       	push   $0xb060
    473c:	68 60 b0 00 00       	push   $0xb060
    4741:	68 60 b3 00 00       	push   $0xb360
    4746:	e8 48 23 00 00       	call   6a93 <assertion_failure>
    474b:	83 c4 10             	add    $0x10,%esp
    474e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4751:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
    4757:	85 c0                	test   %eax,%eax
    4759:	74 1c                	je     4777 <msg_receive+0x194>
    475b:	68 97 01 00 00       	push   $0x197
    4760:	68 60 b0 00 00       	push   $0xb060
    4765:	68 60 b0 00 00       	push   $0xb060
    476a:	68 88 b3 00 00       	push   $0xb388
    476f:	e8 1f 23 00 00       	call   6a93 <assertion_failure>
    4774:	83 c4 10             	add    $0x10,%esp
    4777:	b8 00 00 00 00       	mov    $0x0,%eax
    477c:	e9 8f 06 00 00       	jmp    4e10 <msg_receive+0x82d>
    4781:	83 7d 0c 11          	cmpl   $0x11,0xc(%ebp)
    4785:	0f 85 a8 01 00 00    	jne    4933 <msg_receive+0x350>
    478b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    478e:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
    4794:	85 c0                	test   %eax,%eax
    4796:	0f 84 fc 03 00 00    	je     4b98 <msg_receive+0x5b5>
    479c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    479f:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
    47a5:	89 45 f4             	mov    %eax,-0xc(%ebp)
    47a8:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%ebp)
    47af:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    47b2:	8b 40 78             	mov    0x78(%eax),%eax
    47b5:	85 c0                	test   %eax,%eax
    47b7:	74 1c                	je     47d5 <msg_receive+0x1f2>
    47b9:	68 a7 01 00 00       	push   $0x1a7
    47be:	68 60 b0 00 00       	push   $0xb060
    47c3:	68 60 b0 00 00       	push   $0xb060
    47c8:	68 24 b3 00 00       	push   $0xb324
    47cd:	e8 c1 22 00 00       	call   6a93 <assertion_failure>
    47d2:	83 c4 10             	add    $0x10,%esp
    47d5:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    47d8:	8b 40 7c             	mov    0x7c(%eax),%eax
    47db:	85 c0                	test   %eax,%eax
    47dd:	74 1c                	je     47fb <msg_receive+0x218>
    47df:	68 a8 01 00 00       	push   $0x1a8
    47e4:	68 60 b0 00 00       	push   $0xb060
    47e9:	68 60 b0 00 00       	push   $0xb060
    47ee:	68 43 b3 00 00       	push   $0xb343
    47f3:	e8 9b 22 00 00       	call   6a93 <assertion_failure>
    47f8:	83 c4 10             	add    $0x10,%esp
    47fb:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    47fe:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    4804:	83 f8 1b             	cmp    $0x1b,%eax
    4807:	74 1c                	je     4825 <msg_receive+0x242>
    4809:	68 a9 01 00 00       	push   $0x1a9
    480e:	68 60 b0 00 00       	push   $0xb060
    4813:	68 60 b0 00 00       	push   $0xb060
    4818:	68 ac b3 00 00       	push   $0xb3ac
    481d:	e8 71 22 00 00       	call   6a93 <assertion_failure>
    4822:	83 c4 10             	add    $0x10,%esp
    4825:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4828:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
    482e:	83 f8 1b             	cmp    $0x1b,%eax
    4831:	74 1c                	je     484f <msg_receive+0x26c>
    4833:	68 aa 01 00 00       	push   $0x1aa
    4838:	68 60 b0 00 00       	push   $0xb060
    483d:	68 60 b0 00 00       	push   $0xb060
    4842:	68 60 b3 00 00       	push   $0xb360
    4847:	e8 47 22 00 00       	call   6a93 <assertion_failure>
    484c:	83 c4 10             	add    $0x10,%esp
    484f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4852:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
    4858:	85 c0                	test   %eax,%eax
    485a:	75 1c                	jne    4878 <msg_receive+0x295>
    485c:	68 ab 01 00 00       	push   $0x1ab
    4861:	68 60 b0 00 00       	push   $0xb060
    4866:	68 60 b0 00 00       	push   $0xb060
    486b:	68 d4 b3 00 00       	push   $0xb3d4
    4870:	e8 1e 22 00 00       	call   6a93 <assertion_failure>
    4875:	83 c4 10             	add    $0x10,%esp
    4878:	8b 45 f4             	mov    -0xc(%ebp),%eax
    487b:	8b 40 78             	mov    0x78(%eax),%eax
    487e:	83 f8 02             	cmp    $0x2,%eax
    4881:	74 1c                	je     489f <msg_receive+0x2bc>
    4883:	68 ac 01 00 00       	push   $0x1ac
    4888:	68 60 b0 00 00       	push   $0xb060
    488d:	68 60 b0 00 00       	push   $0xb060
    4892:	68 f5 b3 00 00       	push   $0xb3f5
    4897:	e8 f7 21 00 00       	call   6a93 <assertion_failure>
    489c:	83 c4 10             	add    $0x10,%esp
    489f:	8b 45 f4             	mov    -0xc(%ebp),%eax
    48a2:	8b 40 7c             	mov    0x7c(%eax),%eax
    48a5:	85 c0                	test   %eax,%eax
    48a7:	75 1c                	jne    48c5 <msg_receive+0x2e2>
    48a9:	68 ad 01 00 00       	push   $0x1ad
    48ae:	68 60 b0 00 00       	push   $0xb060
    48b3:	68 60 b0 00 00       	push   $0xb060
    48b8:	68 10 b4 00 00       	push   $0xb410
    48bd:	e8 d1 21 00 00       	call   6a93 <assertion_failure>
    48c2:	83 c4 10             	add    $0x10,%esp
    48c5:	8b 45 f4             	mov    -0xc(%ebp),%eax
    48c8:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    48ce:	83 f8 1b             	cmp    $0x1b,%eax
    48d1:	74 1c                	je     48ef <msg_receive+0x30c>
    48d3:	68 ae 01 00 00       	push   $0x1ae
    48d8:	68 60 b0 00 00       	push   $0xb060
    48dd:	68 60 b0 00 00       	push   $0xb060
    48e2:	68 23 b4 00 00       	push   $0xb423
    48e7:	e8 a7 21 00 00       	call   6a93 <assertion_failure>
    48ec:	83 c4 10             	add    $0x10,%esp
    48ef:	8b 45 f4             	mov    -0xc(%ebp),%eax
    48f2:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
    48f8:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    48fb:	81 ea e0 b2 04 00    	sub    $0x4b2e0,%edx
    4901:	c1 fa 02             	sar    $0x2,%edx
    4904:	69 d2 6d b1 32 7c    	imul   $0x7c32b16d,%edx,%edx
    490a:	39 d0                	cmp    %edx,%eax
    490c:	0f 84 86 02 00 00    	je     4b98 <msg_receive+0x5b5>
    4912:	68 af 01 00 00       	push   $0x1af
    4917:	68 60 b0 00 00       	push   $0xb060
    491c:	68 60 b0 00 00       	push   $0xb060
    4921:	68 44 b4 00 00       	push   $0xb444
    4926:	e8 68 21 00 00       	call   6a93 <assertion_failure>
    492b:	83 c4 10             	add    $0x10,%esp
    492e:	e9 65 02 00 00       	jmp    4b98 <msg_receive+0x5b5>
    4933:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    4937:	0f 88 5b 02 00 00    	js     4b98 <msg_receive+0x5b5>
    493d:	83 7d 0c 06          	cmpl   $0x6,0xc(%ebp)
    4941:	0f 8f 51 02 00 00    	jg     4b98 <msg_receive+0x5b5>
    4947:	8b 45 0c             	mov    0xc(%ebp),%eax
    494a:	69 c0 94 01 00 00    	imul   $0x194,%eax,%eax
    4950:	05 e0 b2 04 00       	add    $0x4b2e0,%eax
    4955:	89 45 f4             	mov    %eax,-0xc(%ebp)
    4958:	8b 45 f4             	mov    -0xc(%ebp),%eax
    495b:	8b 40 78             	mov    0x78(%eax),%eax
    495e:	83 e0 02             	and    $0x2,%eax
    4961:	85 c0                	test   %eax,%eax
    4963:	0f 84 2f 02 00 00    	je     4b98 <msg_receive+0x5b5>
    4969:	8b 45 f4             	mov    -0xc(%ebp),%eax
    496c:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
    4972:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    4975:	81 ea e0 b2 04 00    	sub    $0x4b2e0,%edx
    497b:	c1 fa 02             	sar    $0x2,%edx
    497e:	69 d2 6d b1 32 7c    	imul   $0x7c32b16d,%edx,%edx
    4984:	39 d0                	cmp    %edx,%eax
    4986:	0f 85 0c 02 00 00    	jne    4b98 <msg_receive+0x5b5>
    498c:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%ebp)
    4993:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4996:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
    499c:	89 45 e8             	mov    %eax,-0x18(%ebp)
    499f:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
    49a3:	75 6f                	jne    4a14 <msg_receive+0x431>
    49a5:	68 c1 01 00 00       	push   $0x1c1
    49aa:	68 60 b0 00 00       	push   $0xb060
    49af:	68 60 b0 00 00       	push   $0xb060
    49b4:	68 73 b4 00 00       	push   $0xb473
    49b9:	e8 d5 20 00 00       	call   6a93 <assertion_failure>
    49be:	83 c4 10             	add    $0x10,%esp
    49c1:	eb 51                	jmp    4a14 <msg_receive+0x431>
    49c3:	8b 45 f4             	mov    -0xc(%ebp),%eax
    49c6:	8b 40 78             	mov    0x78(%eax),%eax
    49c9:	83 e0 02             	and    $0x2,%eax
    49cc:	85 c0                	test   %eax,%eax
    49ce:	75 1c                	jne    49ec <msg_receive+0x409>
    49d0:	68 c6 01 00 00       	push   $0x1c6
    49d5:	68 60 b0 00 00       	push   $0xb060
    49da:	68 60 b0 00 00       	push   $0xb060
    49df:	68 75 b4 00 00       	push   $0xb475
    49e4:	e8 aa 20 00 00       	call   6a93 <assertion_failure>
    49e9:	83 c4 10             	add    $0x10,%esp
    49ec:	8b 45 e8             	mov    -0x18(%ebp),%eax
    49ef:	2d e0 b2 04 00       	sub    $0x4b2e0,%eax
    49f4:	c1 f8 02             	sar    $0x2,%eax
    49f7:	69 c0 6d b1 32 7c    	imul   $0x7c32b16d,%eax,%eax
    49fd:	39 45 0c             	cmp    %eax,0xc(%ebp)
    4a00:	74 1a                	je     4a1c <msg_receive+0x439>
    4a02:	8b 45 e8             	mov    -0x18(%ebp),%eax
    4a05:	89 45 f0             	mov    %eax,-0x10(%ebp)
    4a08:	8b 45 e8             	mov    -0x18(%ebp),%eax
    4a0b:	8b 80 90 00 00 00    	mov    0x90(%eax),%eax
    4a11:	89 45 e8             	mov    %eax,-0x18(%ebp)
    4a14:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
    4a18:	75 a9                	jne    49c3 <msg_receive+0x3e0>
    4a1a:	eb 01                	jmp    4a1d <msg_receive+0x43a>
    4a1c:	90                   	nop
    4a1d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4a20:	8b 40 78             	mov    0x78(%eax),%eax
    4a23:	85 c0                	test   %eax,%eax
    4a25:	74 1c                	je     4a43 <msg_receive+0x460>
    4a27:	68 cf 01 00 00       	push   $0x1cf
    4a2c:	68 60 b0 00 00       	push   $0xb060
    4a31:	68 60 b0 00 00       	push   $0xb060
    4a36:	68 24 b3 00 00       	push   $0xb324
    4a3b:	e8 53 20 00 00       	call   6a93 <assertion_failure>
    4a40:	83 c4 10             	add    $0x10,%esp
    4a43:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4a46:	8b 40 7c             	mov    0x7c(%eax),%eax
    4a49:	85 c0                	test   %eax,%eax
    4a4b:	74 1c                	je     4a69 <msg_receive+0x486>
    4a4d:	68 d0 01 00 00       	push   $0x1d0
    4a52:	68 60 b0 00 00       	push   $0xb060
    4a57:	68 60 b0 00 00       	push   $0xb060
    4a5c:	68 43 b3 00 00       	push   $0xb343
    4a61:	e8 2d 20 00 00       	call   6a93 <assertion_failure>
    4a66:	83 c4 10             	add    $0x10,%esp
    4a69:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4a6c:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    4a72:	83 f8 1b             	cmp    $0x1b,%eax
    4a75:	74 1c                	je     4a93 <msg_receive+0x4b0>
    4a77:	68 d1 01 00 00       	push   $0x1d1
    4a7c:	68 60 b0 00 00       	push   $0xb060
    4a81:	68 60 b0 00 00       	push   $0xb060
    4a86:	68 ac b3 00 00       	push   $0xb3ac
    4a8b:	e8 03 20 00 00       	call   6a93 <assertion_failure>
    4a90:	83 c4 10             	add    $0x10,%esp
    4a93:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4a96:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
    4a9c:	83 f8 1b             	cmp    $0x1b,%eax
    4a9f:	74 1c                	je     4abd <msg_receive+0x4da>
    4aa1:	68 d2 01 00 00       	push   $0x1d2
    4aa6:	68 60 b0 00 00       	push   $0xb060
    4aab:	68 60 b0 00 00       	push   $0xb060
    4ab0:	68 60 b3 00 00       	push   $0xb360
    4ab5:	e8 d9 1f 00 00       	call   6a93 <assertion_failure>
    4aba:	83 c4 10             	add    $0x10,%esp
    4abd:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4ac0:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
    4ac6:	85 c0                	test   %eax,%eax
    4ac8:	75 1c                	jne    4ae6 <msg_receive+0x503>
    4aca:	68 d3 01 00 00       	push   $0x1d3
    4acf:	68 60 b0 00 00       	push   $0xb060
    4ad4:	68 60 b0 00 00       	push   $0xb060
    4ad9:	68 d4 b3 00 00       	push   $0xb3d4
    4ade:	e8 b0 1f 00 00       	call   6a93 <assertion_failure>
    4ae3:	83 c4 10             	add    $0x10,%esp
    4ae6:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4ae9:	8b 40 78             	mov    0x78(%eax),%eax
    4aec:	83 f8 02             	cmp    $0x2,%eax
    4aef:	74 1c                	je     4b0d <msg_receive+0x52a>
    4af1:	68 d4 01 00 00       	push   $0x1d4
    4af6:	68 60 b0 00 00       	push   $0xb060
    4afb:	68 60 b0 00 00       	push   $0xb060
    4b00:	68 f5 b3 00 00       	push   $0xb3f5
    4b05:	e8 89 1f 00 00       	call   6a93 <assertion_failure>
    4b0a:	83 c4 10             	add    $0x10,%esp
    4b0d:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4b10:	8b 40 7c             	mov    0x7c(%eax),%eax
    4b13:	85 c0                	test   %eax,%eax
    4b15:	75 1c                	jne    4b33 <msg_receive+0x550>
    4b17:	68 d5 01 00 00       	push   $0x1d5
    4b1c:	68 60 b0 00 00       	push   $0xb060
    4b21:	68 60 b0 00 00       	push   $0xb060
    4b26:	68 10 b4 00 00       	push   $0xb410
    4b2b:	e8 63 1f 00 00       	call   6a93 <assertion_failure>
    4b30:	83 c4 10             	add    $0x10,%esp
    4b33:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4b36:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    4b3c:	83 f8 1b             	cmp    $0x1b,%eax
    4b3f:	74 1c                	je     4b5d <msg_receive+0x57a>
    4b41:	68 d6 01 00 00       	push   $0x1d6
    4b46:	68 60 b0 00 00       	push   $0xb060
    4b4b:	68 60 b0 00 00       	push   $0xb060
    4b50:	68 23 b4 00 00       	push   $0xb423
    4b55:	e8 39 1f 00 00       	call   6a93 <assertion_failure>
    4b5a:	83 c4 10             	add    $0x10,%esp
    4b5d:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4b60:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
    4b66:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    4b69:	81 ea e0 b2 04 00    	sub    $0x4b2e0,%edx
    4b6f:	c1 fa 02             	sar    $0x2,%edx
    4b72:	69 d2 6d b1 32 7c    	imul   $0x7c32b16d,%edx,%edx
    4b78:	39 d0                	cmp    %edx,%eax
    4b7a:	74 1c                	je     4b98 <msg_receive+0x5b5>
    4b7c:	68 d7 01 00 00       	push   $0x1d7
    4b81:	68 60 b0 00 00       	push   $0xb060
    4b86:	68 60 b0 00 00       	push   $0xb060
    4b8b:	68 44 b4 00 00       	push   $0xb444
    4b90:	e8 fe 1e 00 00       	call   6a93 <assertion_failure>
    4b95:	83 c4 10             	add    $0x10,%esp
    4b98:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
    4b9c:	0f 84 6b 01 00 00    	je     4d0d <msg_receive+0x72a>
    4ba2:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4ba5:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
    4bab:	39 45 f4             	cmp    %eax,-0xc(%ebp)
    4bae:	75 43                	jne    4bf3 <msg_receive+0x610>
    4bb0:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    4bb4:	74 1c                	je     4bd2 <msg_receive+0x5ef>
    4bb6:	68 e2 01 00 00       	push   $0x1e2
    4bbb:	68 60 b0 00 00       	push   $0xb060
    4bc0:	68 60 b0 00 00       	push   $0xb060
    4bc5:	68 8f b4 00 00       	push   $0xb48f
    4bca:	e8 c4 1e 00 00       	call   6a93 <assertion_failure>
    4bcf:	83 c4 10             	add    $0x10,%esp
    4bd2:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4bd5:	8b 90 90 00 00 00    	mov    0x90(%eax),%edx
    4bdb:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4bde:	89 90 8c 00 00 00    	mov    %edx,0x8c(%eax)
    4be4:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4be7:	c7 80 90 00 00 00 00 	movl   $0x0,0x90(%eax)
    4bee:	00 00 00 
    4bf1:	eb 41                	jmp    4c34 <msg_receive+0x651>
    4bf3:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    4bf7:	75 1c                	jne    4c15 <msg_receive+0x632>
    4bf9:	68 e7 01 00 00       	push   $0x1e7
    4bfe:	68 60 b0 00 00       	push   $0xb060
    4c03:	68 60 b0 00 00       	push   $0xb060
    4c08:	68 99 b4 00 00       	push   $0xb499
    4c0d:	e8 81 1e 00 00       	call   6a93 <assertion_failure>
    4c12:	83 c4 10             	add    $0x10,%esp
    4c15:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4c18:	8b 90 90 00 00 00    	mov    0x90(%eax),%edx
    4c1e:	8b 45 f0             	mov    -0x10(%ebp),%eax
    4c21:	89 90 90 00 00 00    	mov    %edx,0x90(%eax)
    4c27:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4c2a:	c7 80 90 00 00 00 00 	movl   $0x0,0x90(%eax)
    4c31:	00 00 00 
    4c34:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
    4c38:	75 1c                	jne    4c56 <msg_receive+0x673>
    4c3a:	68 ec 01 00 00       	push   $0x1ec
    4c3f:	68 60 b0 00 00       	push   $0xb060
    4c44:	68 60 b0 00 00       	push   $0xb060
    4c49:	68 f2 b1 00 00       	push   $0xb1f2
    4c4e:	e8 40 1e 00 00       	call   6a93 <assertion_failure>
    4c53:	83 c4 10             	add    $0x10,%esp
    4c56:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4c59:	8b 40 7c             	mov    0x7c(%eax),%eax
    4c5c:	85 c0                	test   %eax,%eax
    4c5e:	75 1c                	jne    4c7c <msg_receive+0x699>
    4c60:	68 ed 01 00 00       	push   $0x1ed
    4c65:	68 60 b0 00 00       	push   $0xb060
    4c6a:	68 60 b0 00 00       	push   $0xb060
    4c6f:	68 9e b4 00 00       	push   $0xb49e
    4c74:	e8 1a 1e 00 00       	call   6a93 <assertion_failure>
    4c79:	83 c4 10             	add    $0x10,%esp
    4c7c:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4c7f:	8b 40 7c             	mov    0x7c(%eax),%eax
    4c82:	8b 55 f4             	mov    -0xc(%ebp),%edx
    4c85:	81 ea e0 b2 04 00    	sub    $0x4b2e0,%edx
    4c8b:	c1 fa 02             	sar    $0x2,%edx
    4c8e:	69 d2 6d b1 32 7c    	imul   $0x7c32b16d,%edx,%edx
    4c94:	83 ec 08             	sub    $0x8,%esp
    4c97:	50                   	push   %eax
    4c98:	52                   	push   %edx
    4c99:	e8 20 f3 ff ff       	call   3fbe <va2la>
    4c9e:	83 c4 10             	add    $0x10,%esp
    4ca1:	89 c3                	mov    %eax,%ebx
    4ca3:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4ca6:	2d e0 b2 04 00       	sub    $0x4b2e0,%eax
    4cab:	c1 f8 02             	sar    $0x2,%eax
    4cae:	69 c0 6d b1 32 7c    	imul   $0x7c32b16d,%eax,%eax
    4cb4:	83 ec 08             	sub    $0x8,%esp
    4cb7:	ff 75 10             	pushl  0x10(%ebp)
    4cba:	50                   	push   %eax
    4cbb:	e8 fe f2 ff ff       	call   3fbe <va2la>
    4cc0:	83 c4 10             	add    $0x10,%esp
    4cc3:	83 ec 04             	sub    $0x4,%esp
    4cc6:	6a 30                	push   $0x30
    4cc8:	53                   	push   %ebx
    4cc9:	50                   	push   %eax
    4cca:	e8 f1 1b 00 00       	call   68c0 <memcpy>
    4ccf:	83 c4 10             	add    $0x10,%esp
    4cd2:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4cd5:	c7 40 7c 00 00 00 00 	movl   $0x0,0x7c(%eax)
    4cdc:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4cdf:	c7 80 84 00 00 00 1b 	movl   $0x1b,0x84(%eax)
    4ce6:	00 00 00 
    4ce9:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4cec:	8b 40 78             	mov    0x78(%eax),%eax
    4cef:	83 e0 fd             	and    $0xfffffffd,%eax
    4cf2:	89 c2                	mov    %eax,%edx
    4cf4:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4cf7:	89 50 78             	mov    %edx,0x78(%eax)
    4cfa:	83 ec 0c             	sub    $0xc,%esp
    4cfd:	ff 75 f4             	pushl  -0xc(%ebp)
    4d00:	e8 69 f3 ff ff       	call   406e <unblock>
    4d05:	83 c4 10             	add    $0x10,%esp
    4d08:	e9 fe 00 00 00       	jmp    4e0b <msg_receive+0x828>
    4d0d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4d10:	8b 40 78             	mov    0x78(%eax),%eax
    4d13:	83 c8 04             	or     $0x4,%eax
    4d16:	89 c2                	mov    %eax,%edx
    4d18:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4d1b:	89 50 78             	mov    %edx,0x78(%eax)
    4d1e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4d21:	8b 55 10             	mov    0x10(%ebp),%edx
    4d24:	89 50 7c             	mov    %edx,0x7c(%eax)
    4d27:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4d2a:	8b 55 0c             	mov    0xc(%ebp),%edx
    4d2d:	89 90 80 00 00 00    	mov    %edx,0x80(%eax)
    4d33:	83 ec 0c             	sub    $0xc,%esp
    4d36:	ff 75 e4             	pushl  -0x1c(%ebp)
    4d39:	e8 fc f2 ff ff       	call   403a <block>
    4d3e:	83 c4 10             	add    $0x10,%esp
    4d41:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4d44:	8b 40 78             	mov    0x78(%eax),%eax
    4d47:	83 f8 04             	cmp    $0x4,%eax
    4d4a:	74 1c                	je     4d68 <msg_receive+0x785>
    4d4c:	68 03 02 00 00       	push   $0x203
    4d51:	68 60 b0 00 00       	push   $0xb060
    4d56:	68 60 b0 00 00       	push   $0xb060
    4d5b:	68 ac b4 00 00       	push   $0xb4ac
    4d60:	e8 2e 1d 00 00       	call   6a93 <assertion_failure>
    4d65:	83 c4 10             	add    $0x10,%esp
    4d68:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4d6b:	8b 40 7c             	mov    0x7c(%eax),%eax
    4d6e:	85 c0                	test   %eax,%eax
    4d70:	75 1c                	jne    4d8e <msg_receive+0x7ab>
    4d72:	68 04 02 00 00       	push   $0x204
    4d77:	68 60 b0 00 00       	push   $0xb060
    4d7c:	68 60 b0 00 00       	push   $0xb060
    4d81:	68 d3 b4 00 00       	push   $0xb4d3
    4d86:	e8 08 1d 00 00       	call   6a93 <assertion_failure>
    4d8b:	83 c4 10             	add    $0x10,%esp
    4d8e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4d91:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    4d97:	83 f8 1b             	cmp    $0x1b,%eax
    4d9a:	75 1c                	jne    4db8 <msg_receive+0x7d5>
    4d9c:	68 05 02 00 00       	push   $0x205
    4da1:	68 60 b0 00 00       	push   $0xb060
    4da6:	68 60 b0 00 00       	push   $0xb060
    4dab:	68 f0 b4 00 00       	push   $0xb4f0
    4db0:	e8 de 1c 00 00       	call   6a93 <assertion_failure>
    4db5:	83 c4 10             	add    $0x10,%esp
    4db8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4dbb:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
    4dc1:	83 f8 1b             	cmp    $0x1b,%eax
    4dc4:	74 1c                	je     4de2 <msg_receive+0x7ff>
    4dc6:	68 06 02 00 00       	push   $0x206
    4dcb:	68 60 b0 00 00       	push   $0xb060
    4dd0:	68 60 b0 00 00       	push   $0xb060
    4dd5:	68 60 b3 00 00       	push   $0xb360
    4dda:	e8 b4 1c 00 00       	call   6a93 <assertion_failure>
    4ddf:	83 c4 10             	add    $0x10,%esp
    4de2:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4de5:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
    4deb:	85 c0                	test   %eax,%eax
    4ded:	74 1c                	je     4e0b <msg_receive+0x828>
    4def:	68 07 02 00 00       	push   $0x207
    4df4:	68 60 b0 00 00       	push   $0xb060
    4df9:	68 60 b0 00 00       	push   $0xb060
    4dfe:	68 88 b3 00 00       	push   $0xb388
    4e03:	e8 8b 1c 00 00       	call   6a93 <assertion_failure>
    4e08:	83 c4 10             	add    $0x10,%esp
    4e0b:	b8 00 00 00 00       	mov    $0x0,%eax
    4e10:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    4e13:	c9                   	leave  
    4e14:	c3                   	ret    

00004e15 <inform_int>:
    4e15:	55                   	push   %ebp
    4e16:	89 e5                	mov    %esp,%ebp
    4e18:	83 ec 18             	sub    $0x18,%esp
    4e1b:	8b 45 08             	mov    0x8(%ebp),%eax
    4e1e:	69 c0 94 01 00 00    	imul   $0x194,%eax,%eax
    4e24:	05 e0 b2 04 00       	add    $0x4b2e0,%eax
    4e29:	89 45 f4             	mov    %eax,-0xc(%ebp)
    4e2c:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4e2f:	8b 40 78             	mov    0x78(%eax),%eax
    4e32:	83 e0 04             	and    $0x4,%eax
    4e35:	85 c0                	test   %eax,%eax
    4e37:	0f 84 44 01 00 00    	je     4f81 <inform_int+0x16c>
    4e3d:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4e40:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    4e46:	83 f8 f6             	cmp    $0xfffffff6,%eax
    4e49:	74 12                	je     4e5d <inform_int+0x48>
    4e4b:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4e4e:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    4e54:	83 f8 11             	cmp    $0x11,%eax
    4e57:	0f 85 24 01 00 00    	jne    4f81 <inform_int+0x16c>
    4e5d:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4e60:	8b 40 7c             	mov    0x7c(%eax),%eax
    4e63:	c7 00 f6 ff ff ff    	movl   $0xfffffff6,(%eax)
    4e69:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4e6c:	8b 40 7c             	mov    0x7c(%eax),%eax
    4e6f:	c7 40 04 01 00 00 00 	movl   $0x1,0x4(%eax)
    4e76:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4e79:	c7 40 7c 00 00 00 00 	movl   $0x0,0x7c(%eax)
    4e80:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4e83:	c7 80 88 00 00 00 00 	movl   $0x0,0x88(%eax)
    4e8a:	00 00 00 
    4e8d:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4e90:	8b 40 78             	mov    0x78(%eax),%eax
    4e93:	83 e0 fb             	and    $0xfffffffb,%eax
    4e96:	89 c2                	mov    %eax,%edx
    4e98:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4e9b:	89 50 78             	mov    %edx,0x78(%eax)
    4e9e:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4ea1:	c7 80 80 00 00 00 1b 	movl   $0x1b,0x80(%eax)
    4ea8:	00 00 00 
    4eab:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4eae:	8b 40 78             	mov    0x78(%eax),%eax
    4eb1:	85 c0                	test   %eax,%eax
    4eb3:	74 1c                	je     4ed1 <inform_int+0xbc>
    4eb5:	68 21 02 00 00       	push   $0x221
    4eba:	68 60 b0 00 00       	push   $0xb060
    4ebf:	68 60 b0 00 00       	push   $0xb060
    4ec4:	68 8f b1 00 00       	push   $0xb18f
    4ec9:	e8 c5 1b 00 00       	call   6a93 <assertion_failure>
    4ece:	83 c4 10             	add    $0x10,%esp
    4ed1:	83 ec 0c             	sub    $0xc,%esp
    4ed4:	ff 75 f4             	pushl  -0xc(%ebp)
    4ed7:	e8 92 f1 ff ff       	call   406e <unblock>
    4edc:	83 c4 10             	add    $0x10,%esp
    4edf:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4ee2:	8b 40 78             	mov    0x78(%eax),%eax
    4ee5:	85 c0                	test   %eax,%eax
    4ee7:	74 1c                	je     4f05 <inform_int+0xf0>
    4ee9:	68 24 02 00 00       	push   $0x224
    4eee:	68 60 b0 00 00       	push   $0xb060
    4ef3:	68 60 b0 00 00       	push   $0xb060
    4ef8:	68 8f b1 00 00       	push   $0xb18f
    4efd:	e8 91 1b 00 00       	call   6a93 <assertion_failure>
    4f02:	83 c4 10             	add    $0x10,%esp
    4f05:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4f08:	8b 40 7c             	mov    0x7c(%eax),%eax
    4f0b:	85 c0                	test   %eax,%eax
    4f0d:	74 1c                	je     4f2b <inform_int+0x116>
    4f0f:	68 25 02 00 00       	push   $0x225
    4f14:	68 60 b0 00 00       	push   $0xb060
    4f19:	68 60 b0 00 00       	push   $0xb060
    4f1e:	68 18 b5 00 00       	push   $0xb518
    4f23:	e8 6b 1b 00 00       	call   6a93 <assertion_failure>
    4f28:	83 c4 10             	add    $0x10,%esp
    4f2b:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4f2e:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    4f34:	83 f8 1b             	cmp    $0x1b,%eax
    4f37:	74 1c                	je     4f55 <inform_int+0x140>
    4f39:	68 26 02 00 00       	push   $0x226
    4f3e:	68 60 b0 00 00       	push   $0xb060
    4f43:	68 60 b0 00 00       	push   $0xb060
    4f48:	68 26 b5 00 00       	push   $0xb526
    4f4d:	e8 41 1b 00 00       	call   6a93 <assertion_failure>
    4f52:	83 c4 10             	add    $0x10,%esp
    4f55:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4f58:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
    4f5e:	83 f8 1b             	cmp    $0x1b,%eax
    4f61:	74 2b                	je     4f8e <inform_int+0x179>
    4f63:	68 27 02 00 00       	push   $0x227
    4f68:	68 60 b0 00 00       	push   $0xb060
    4f6d:	68 60 b0 00 00       	push   $0xb060
    4f72:	68 3f b5 00 00       	push   $0xb53f
    4f77:	e8 17 1b 00 00       	call   6a93 <assertion_failure>
    4f7c:	83 c4 10             	add    $0x10,%esp
    4f7f:	eb 0d                	jmp    4f8e <inform_int+0x179>
    4f81:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4f84:	c7 80 88 00 00 00 01 	movl   $0x1,0x88(%eax)
    4f8b:	00 00 00 
    4f8e:	90                   	nop
    4f8f:	c9                   	leave  
    4f90:	c3                   	ret    

00004f91 <dump_proc>:
    4f91:	55                   	push   %ebp
    4f92:	89 e5                	mov    %esp,%ebp
    4f94:	81 ec 18 04 00 00    	sub    $0x418,%esp
    4f9a:	c7 45 f0 24 00 00 00 	movl   $0x24,-0x10(%ebp)
    4fa1:	c7 45 ec 94 01 00 00 	movl   $0x194,-0x14(%ebp)
    4fa8:	83 ec 08             	sub    $0x8,%esp
    4fab:	6a 0c                	push   $0xc
    4fad:	68 d4 03 00 00       	push   $0x3d4
    4fb2:	e8 c6 16 00 00       	call   667d <out_byte>
    4fb7:	83 c4 10             	add    $0x10,%esp
    4fba:	83 ec 08             	sub    $0x8,%esp
    4fbd:	6a 00                	push   $0x0
    4fbf:	68 d5 03 00 00       	push   $0x3d5
    4fc4:	e8 b4 16 00 00       	call   667d <out_byte>
    4fc9:	83 c4 10             	add    $0x10,%esp
    4fcc:	83 ec 08             	sub    $0x8,%esp
    4fcf:	6a 0d                	push   $0xd
    4fd1:	68 d4 03 00 00       	push   $0x3d4
    4fd6:	e8 a2 16 00 00       	call   667d <out_byte>
    4fdb:	83 c4 10             	add    $0x10,%esp
    4fde:	83 ec 08             	sub    $0x8,%esp
    4fe1:	6a 00                	push   $0x0
    4fe3:	68 d5 03 00 00       	push   $0x3d5
    4fe8:	e8 90 16 00 00       	call   667d <out_byte>
    4fed:	83 c4 10             	add    $0x10,%esp
    4ff0:	8b 45 08             	mov    0x8(%ebp),%eax
    4ff3:	2d e0 b2 04 00       	sub    $0x4b2e0,%eax
    4ff8:	c1 f8 02             	sar    $0x2,%eax
    4ffb:	69 c0 6d b1 32 7c    	imul   $0x7c32b16d,%eax,%eax
    5001:	83 ec 04             	sub    $0x4,%esp
    5004:	50                   	push   %eax
    5005:	68 56 b5 00 00       	push   $0xb556
    500a:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    5010:	50                   	push   %eax
    5011:	e8 c1 15 00 00       	call   65d7 <sprintf>
    5016:	83 c4 10             	add    $0x10,%esp
    5019:	83 ec 08             	sub    $0x8,%esp
    501c:	ff 75 f0             	pushl  -0x10(%ebp)
    501f:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    5025:	50                   	push   %eax
    5026:	e8 13 16 00 00       	call   663e <disp_color_str>
    502b:	83 c4 10             	add    $0x10,%esp
    502e:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    5035:	eb 3f                	jmp    5076 <dump_proc+0xe5>
    5037:	8b 55 f4             	mov    -0xc(%ebp),%edx
    503a:	8b 45 08             	mov    0x8(%ebp),%eax
    503d:	01 d0                	add    %edx,%eax
    503f:	0f b6 00             	movzbl (%eax),%eax
    5042:	0f b6 c0             	movzbl %al,%eax
    5045:	83 ec 04             	sub    $0x4,%esp
    5048:	50                   	push   %eax
    5049:	68 74 b5 00 00       	push   $0xb574
    504e:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    5054:	50                   	push   %eax
    5055:	e8 7d 15 00 00       	call   65d7 <sprintf>
    505a:	83 c4 10             	add    $0x10,%esp
    505d:	83 ec 08             	sub    $0x8,%esp
    5060:	ff 75 f0             	pushl  -0x10(%ebp)
    5063:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    5069:	50                   	push   %eax
    506a:	e8 cf 15 00 00       	call   663e <disp_color_str>
    506f:	83 c4 10             	add    $0x10,%esp
    5072:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    5076:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5079:	3b 45 ec             	cmp    -0x14(%ebp),%eax
    507c:	7c b9                	jl     5037 <dump_proc+0xa6>
    507e:	83 ec 08             	sub    $0x8,%esp
    5081:	ff 75 f0             	pushl  -0x10(%ebp)
    5084:	68 78 b5 00 00       	push   $0xb578
    5089:	e8 b0 15 00 00       	call   663e <disp_color_str>
    508e:	83 c4 10             	add    $0x10,%esp
    5091:	83 ec 04             	sub    $0x4,%esp
    5094:	6a 11                	push   $0x11
    5096:	68 7b b5 00 00       	push   $0xb57b
    509b:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    50a1:	50                   	push   %eax
    50a2:	e8 30 15 00 00       	call   65d7 <sprintf>
    50a7:	83 c4 10             	add    $0x10,%esp
    50aa:	83 ec 08             	sub    $0x8,%esp
    50ad:	ff 75 f0             	pushl  -0x10(%ebp)
    50b0:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    50b6:	50                   	push   %eax
    50b7:	e8 82 15 00 00       	call   663e <disp_color_str>
    50bc:	83 c4 10             	add    $0x10,%esp
    50bf:	83 ec 04             	sub    $0x4,%esp
    50c2:	6a 1b                	push   $0x1b
    50c4:	68 87 b5 00 00       	push   $0xb587
    50c9:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    50cf:	50                   	push   %eax
    50d0:	e8 02 15 00 00       	call   65d7 <sprintf>
    50d5:	83 c4 10             	add    $0x10,%esp
    50d8:	83 ec 08             	sub    $0x8,%esp
    50db:	ff 75 f0             	pushl  -0x10(%ebp)
    50de:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    50e4:	50                   	push   %eax
    50e5:	e8 54 15 00 00       	call   663e <disp_color_str>
    50ea:	83 c4 10             	add    $0x10,%esp
    50ed:	83 ec 08             	sub    $0x8,%esp
    50f0:	ff 75 f0             	pushl  -0x10(%ebp)
    50f3:	68 97 b5 00 00       	push   $0xb597
    50f8:	e8 41 15 00 00       	call   663e <disp_color_str>
    50fd:	83 c4 10             	add    $0x10,%esp
    5100:	8b 45 08             	mov    0x8(%ebp),%eax
    5103:	0f b7 40 48          	movzwl 0x48(%eax),%eax
    5107:	0f b7 c0             	movzwl %ax,%eax
    510a:	83 ec 04             	sub    $0x4,%esp
    510d:	50                   	push   %eax
    510e:	68 99 b5 00 00       	push   $0xb599
    5113:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    5119:	50                   	push   %eax
    511a:	e8 b8 14 00 00       	call   65d7 <sprintf>
    511f:	83 c4 10             	add    $0x10,%esp
    5122:	83 ec 08             	sub    $0x8,%esp
    5125:	ff 75 f0             	pushl  -0x10(%ebp)
    5128:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    512e:	50                   	push   %eax
    512f:	e8 0a 15 00 00       	call   663e <disp_color_str>
    5134:	83 c4 10             	add    $0x10,%esp
    5137:	8b 45 08             	mov    0x8(%ebp),%eax
    513a:	8b 40 5c             	mov    0x5c(%eax),%eax
    513d:	83 ec 04             	sub    $0x4,%esp
    5140:	50                   	push   %eax
    5141:	68 aa b5 00 00       	push   $0xb5aa
    5146:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    514c:	50                   	push   %eax
    514d:	e8 85 14 00 00       	call   65d7 <sprintf>
    5152:	83 c4 10             	add    $0x10,%esp
    5155:	83 ec 08             	sub    $0x8,%esp
    5158:	ff 75 f0             	pushl  -0x10(%ebp)
    515b:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    5161:	50                   	push   %eax
    5162:	e8 d7 14 00 00       	call   663e <disp_color_str>
    5167:	83 c4 10             	add    $0x10,%esp
    516a:	8b 45 08             	mov    0x8(%ebp),%eax
    516d:	8b 40 60             	mov    0x60(%eax),%eax
    5170:	83 ec 04             	sub    $0x4,%esp
    5173:	50                   	push   %eax
    5174:	68 b9 b5 00 00       	push   $0xb5b9
    5179:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    517f:	50                   	push   %eax
    5180:	e8 52 14 00 00       	call   65d7 <sprintf>
    5185:	83 c4 10             	add    $0x10,%esp
    5188:	83 ec 08             	sub    $0x8,%esp
    518b:	ff 75 f0             	pushl  -0x10(%ebp)
    518e:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    5194:	50                   	push   %eax
    5195:	e8 a4 14 00 00       	call   663e <disp_color_str>
    519a:	83 c4 10             	add    $0x10,%esp
    519d:	8b 45 08             	mov    0x8(%ebp),%eax
    51a0:	8b 40 64             	mov    0x64(%eax),%eax
    51a3:	83 ec 04             	sub    $0x4,%esp
    51a6:	50                   	push   %eax
    51a7:	68 cb b5 00 00       	push   $0xb5cb
    51ac:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    51b2:	50                   	push   %eax
    51b3:	e8 1f 14 00 00       	call   65d7 <sprintf>
    51b8:	83 c4 10             	add    $0x10,%esp
    51bb:	83 ec 08             	sub    $0x8,%esp
    51be:	ff 75 f0             	pushl  -0x10(%ebp)
    51c1:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    51c7:	50                   	push   %eax
    51c8:	e8 71 14 00 00       	call   663e <disp_color_str>
    51cd:	83 c4 10             	add    $0x10,%esp
    51d0:	8b 45 08             	mov    0x8(%ebp),%eax
    51d3:	83 c0 68             	add    $0x68,%eax
    51d6:	83 ec 04             	sub    $0x4,%esp
    51d9:	50                   	push   %eax
    51da:	68 d8 b5 00 00       	push   $0xb5d8
    51df:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    51e5:	50                   	push   %eax
    51e6:	e8 ec 13 00 00       	call   65d7 <sprintf>
    51eb:	83 c4 10             	add    $0x10,%esp
    51ee:	83 ec 08             	sub    $0x8,%esp
    51f1:	ff 75 f0             	pushl  -0x10(%ebp)
    51f4:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    51fa:	50                   	push   %eax
    51fb:	e8 3e 14 00 00       	call   663e <disp_color_str>
    5200:	83 c4 10             	add    $0x10,%esp
    5203:	83 ec 08             	sub    $0x8,%esp
    5206:	ff 75 f0             	pushl  -0x10(%ebp)
    5209:	68 97 b5 00 00       	push   $0xb597
    520e:	e8 2b 14 00 00       	call   663e <disp_color_str>
    5213:	83 c4 10             	add    $0x10,%esp
    5216:	8b 45 08             	mov    0x8(%ebp),%eax
    5219:	8b 40 78             	mov    0x78(%eax),%eax
    521c:	83 ec 04             	sub    $0x4,%esp
    521f:	50                   	push   %eax
    5220:	68 e4 b5 00 00       	push   $0xb5e4
    5225:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    522b:	50                   	push   %eax
    522c:	e8 a6 13 00 00       	call   65d7 <sprintf>
    5231:	83 c4 10             	add    $0x10,%esp
    5234:	83 ec 08             	sub    $0x8,%esp
    5237:	ff 75 f0             	pushl  -0x10(%ebp)
    523a:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    5240:	50                   	push   %eax
    5241:	e8 f8 13 00 00       	call   663e <disp_color_str>
    5246:	83 c4 10             	add    $0x10,%esp
    5249:	8b 45 08             	mov    0x8(%ebp),%eax
    524c:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    5252:	83 ec 04             	sub    $0x4,%esp
    5255:	50                   	push   %eax
    5256:	68 f5 b5 00 00       	push   $0xb5f5
    525b:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    5261:	50                   	push   %eax
    5262:	e8 70 13 00 00       	call   65d7 <sprintf>
    5267:	83 c4 10             	add    $0x10,%esp
    526a:	83 ec 08             	sub    $0x8,%esp
    526d:	ff 75 f0             	pushl  -0x10(%ebp)
    5270:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    5276:	50                   	push   %eax
    5277:	e8 c2 13 00 00       	call   663e <disp_color_str>
    527c:	83 c4 10             	add    $0x10,%esp
    527f:	8b 45 08             	mov    0x8(%ebp),%eax
    5282:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
    5288:	83 ec 04             	sub    $0x4,%esp
    528b:	50                   	push   %eax
    528c:	68 09 b6 00 00       	push   $0xb609
    5291:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    5297:	50                   	push   %eax
    5298:	e8 3a 13 00 00       	call   65d7 <sprintf>
    529d:	83 c4 10             	add    $0x10,%esp
    52a0:	83 ec 08             	sub    $0x8,%esp
    52a3:	ff 75 f0             	pushl  -0x10(%ebp)
    52a6:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    52ac:	50                   	push   %eax
    52ad:	e8 8c 13 00 00       	call   663e <disp_color_str>
    52b2:	83 c4 10             	add    $0x10,%esp
    52b5:	83 ec 08             	sub    $0x8,%esp
    52b8:	ff 75 f0             	pushl  -0x10(%ebp)
    52bb:	68 97 b5 00 00       	push   $0xb597
    52c0:	e8 79 13 00 00       	call   663e <disp_color_str>
    52c5:	83 c4 10             	add    $0x10,%esp
    52c8:	8b 45 08             	mov    0x8(%ebp),%eax
    52cb:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
    52d1:	83 ec 04             	sub    $0x4,%esp
    52d4:	50                   	push   %eax
    52d5:	68 1b b6 00 00       	push   $0xb61b
    52da:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    52e0:	50                   	push   %eax
    52e1:	e8 f1 12 00 00       	call   65d7 <sprintf>
    52e6:	83 c4 10             	add    $0x10,%esp
    52e9:	83 ec 08             	sub    $0x8,%esp
    52ec:	ff 75 f0             	pushl  -0x10(%ebp)
    52ef:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    52f5:	50                   	push   %eax
    52f6:	e8 43 13 00 00       	call   663e <disp_color_str>
    52fb:	83 c4 10             	add    $0x10,%esp
    52fe:	90                   	nop
    52ff:	c9                   	leave  
    5300:	c3                   	ret    

00005301 <dump_msg>:
    5301:	55                   	push   %ebp
    5302:	89 e5                	mov    %esp,%ebp
    5304:	57                   	push   %edi
    5305:	56                   	push   %esi
    5306:	53                   	push   %ebx
    5307:	83 ec 4c             	sub    $0x4c,%esp
    530a:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    5311:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
    5315:	74 09                	je     5320 <dump_msg+0x1f>
    5317:	c7 45 d4 30 b6 00 00 	movl   $0xb630,-0x2c(%ebp)
    531e:	eb 07                	jmp    5327 <dump_msg+0x26>
    5320:	c7 45 d4 97 b5 00 00 	movl   $0xb597,-0x2c(%ebp)
    5327:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
    532b:	74 09                	je     5336 <dump_msg+0x35>
    532d:	c7 45 d0 30 b6 00 00 	movl   $0xb630,-0x30(%ebp)
    5334:	eb 07                	jmp    533d <dump_msg+0x3c>
    5336:	c7 45 d0 97 b5 00 00 	movl   $0xb597,-0x30(%ebp)
    533d:	8b 45 0c             	mov    0xc(%ebp),%eax
    5340:	8b 40 2c             	mov    0x2c(%eax),%eax
    5343:	89 45 c4             	mov    %eax,-0x3c(%ebp)
    5346:	8b 45 0c             	mov    0xc(%ebp),%eax
    5349:	8b 40 28             	mov    0x28(%eax),%eax
    534c:	89 45 c0             	mov    %eax,-0x40(%ebp)
    534f:	8b 45 0c             	mov    0xc(%ebp),%eax
    5352:	8b 40 14             	mov    0x14(%eax),%eax
    5355:	89 45 bc             	mov    %eax,-0x44(%ebp)
    5358:	8b 45 0c             	mov    0xc(%ebp),%eax
    535b:	8b 40 10             	mov    0x10(%eax),%eax
    535e:	89 45 b8             	mov    %eax,-0x48(%ebp)
    5361:	8b 45 0c             	mov    0xc(%ebp),%eax
    5364:	8b 40 0c             	mov    0xc(%eax),%eax
    5367:	89 45 b4             	mov    %eax,-0x4c(%ebp)
    536a:	8b 45 0c             	mov    0xc(%ebp),%eax
    536d:	8b 78 08             	mov    0x8(%eax),%edi
    5370:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
    5374:	74 09                	je     537f <dump_msg+0x7e>
    5376:	c7 45 cc 31 b6 00 00 	movl   $0xb631,-0x34(%ebp)
    537d:	eb 07                	jmp    5386 <dump_msg+0x85>
    537f:	c7 45 cc 33 b6 00 00 	movl   $0xb633,-0x34(%ebp)
    5386:	8b 45 0c             	mov    0xc(%ebp),%eax
    5389:	8b 70 04             	mov    0x4(%eax),%esi
    538c:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
    5390:	74 09                	je     539b <dump_msg+0x9a>
    5392:	c7 45 c8 31 b6 00 00 	movl   $0xb631,-0x38(%ebp)
    5399:	eb 07                	jmp    53a2 <dump_msg+0xa1>
    539b:	c7 45 c8 33 b6 00 00 	movl   $0xb633,-0x38(%ebp)
    53a2:	8b 45 0c             	mov    0xc(%ebp),%eax
    53a5:	8b 18                	mov    (%eax),%ebx
    53a7:	8b 45 0c             	mov    0xc(%ebp),%eax
    53aa:	8b 00                	mov    (%eax),%eax
    53ac:	69 c0 94 01 00 00    	imul   $0x194,%eax,%eax
    53b2:	83 c0 60             	add    $0x60,%eax
    53b5:	05 e0 b2 04 00       	add    $0x4b2e0,%eax
    53ba:	8d 50 08             	lea    0x8(%eax),%edx
    53bd:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
    53c1:	74 07                	je     53ca <dump_msg+0xc9>
    53c3:	b9 30 b6 00 00       	mov    $0xb630,%ecx
    53c8:	eb 05                	jmp    53cf <dump_msg+0xce>
    53ca:	b9 33 b6 00 00       	mov    $0xb633,%ecx
    53cf:	8b 45 0c             	mov    0xc(%ebp),%eax
    53d2:	83 ec 0c             	sub    $0xc,%esp
    53d5:	ff 75 d4             	pushl  -0x2c(%ebp)
    53d8:	ff 75 d0             	pushl  -0x30(%ebp)
    53db:	ff 75 c4             	pushl  -0x3c(%ebp)
    53de:	ff 75 c0             	pushl  -0x40(%ebp)
    53e1:	ff 75 bc             	pushl  -0x44(%ebp)
    53e4:	ff 75 b8             	pushl  -0x48(%ebp)
    53e7:	ff 75 b4             	pushl  -0x4c(%ebp)
    53ea:	57                   	push   %edi
    53eb:	ff 75 cc             	pushl  -0x34(%ebp)
    53ee:	56                   	push   %esi
    53ef:	ff 75 c8             	pushl  -0x38(%ebp)
    53f2:	53                   	push   %ebx
    53f3:	52                   	push   %edx
    53f4:	51                   	push   %ecx
    53f5:	50                   	push   %eax
    53f6:	ff 75 08             	pushl  0x8(%ebp)
    53f9:	68 40 b6 00 00       	push   $0xb640
    53fe:	e8 a1 0e 00 00       	call   62a4 <printf>
    5403:	83 c4 50             	add    $0x50,%esp
    5406:	90                   	nop
    5407:	8d 65 f4             	lea    -0xc(%ebp),%esp
    540a:	5b                   	pop    %ebx
    540b:	5e                   	pop    %esi
    540c:	5f                   	pop    %edi
    540d:	5d                   	pop    %ebp
    540e:	c3                   	ret    

0000540f <task_sys>:
    540f:	55                   	push   %ebp
    5410:	89 e5                	mov    %esp,%ebp
    5412:	83 ec 48             	sub    $0x48,%esp
    5415:	83 ec 04             	sub    $0x4,%esp
    5418:	8d 45 c4             	lea    -0x3c(%ebp),%eax
    541b:	50                   	push   %eax
    541c:	6a 11                	push   $0x11
    541e:	6a 02                	push   $0x2
    5420:	e8 92 ea ff ff       	call   3eb7 <send_recv>
    5425:	83 c4 10             	add    $0x10,%esp
    5428:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    542b:	89 45 f4             	mov    %eax,-0xc(%ebp)
    542e:	8b 45 c8             	mov    -0x38(%ebp),%eax
    5431:	83 f8 02             	cmp    $0x2,%eax
    5434:	74 07                	je     543d <task_sys+0x2e>
    5436:	83 f8 03             	cmp    $0x3,%eax
    5439:	74 20                	je     545b <task_sys+0x4c>
    543b:	eb 41                	jmp    547e <task_sys+0x6f>
    543d:	a1 20 b2 04 00       	mov    0x4b220,%eax
    5442:	89 45 cc             	mov    %eax,-0x34(%ebp)
    5445:	83 ec 04             	sub    $0x4,%esp
    5448:	8d 45 c4             	lea    -0x3c(%ebp),%eax
    544b:	50                   	push   %eax
    544c:	ff 75 f4             	pushl  -0xc(%ebp)
    544f:	6a 01                	push   $0x1
    5451:	e8 61 ea ff ff       	call   3eb7 <send_recv>
    5456:	83 c4 10             	add    $0x10,%esp
    5459:	eb 34                	jmp    548f <task_sys+0x80>
    545b:	c7 45 c8 0d 00 00 00 	movl   $0xd,-0x38(%ebp)
    5462:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5465:	89 45 d0             	mov    %eax,-0x30(%ebp)
    5468:	83 ec 04             	sub    $0x4,%esp
    546b:	8d 45 c4             	lea    -0x3c(%ebp),%eax
    546e:	50                   	push   %eax
    546f:	ff 75 f4             	pushl  -0xc(%ebp)
    5472:	6a 01                	push   $0x1
    5474:	e8 3e ea ff ff       	call   3eb7 <send_recv>
    5479:	83 c4 10             	add    $0x10,%esp
    547c:	eb 11                	jmp    548f <task_sys+0x80>
    547e:	83 ec 0c             	sub    $0xc,%esp
    5481:	68 8e b6 00 00       	push   $0xb68e
    5486:	e8 84 c7 ff ff       	call   1c0f <panic>
    548b:	83 c4 10             	add    $0x10,%esp
    548e:	90                   	nop
    548f:	eb 84                	jmp    5415 <task_sys+0x6>

00005491 <task_hd>:
    5491:	55                   	push   %ebp
    5492:	89 e5                	mov    %esp,%ebp
    5494:	83 ec 48             	sub    $0x48,%esp
    5497:	e8 b1 00 00 00       	call   554d <init_hd>
    549c:	83 ec 04             	sub    $0x4,%esp
    549f:	8d 45 c4             	lea    -0x3c(%ebp),%eax
    54a2:	50                   	push   %eax
    54a3:	6a 11                	push   $0x11
    54a5:	6a 02                	push   $0x2
    54a7:	e8 0b ea ff ff       	call   3eb7 <send_recv>
    54ac:	83 c4 10             	add    $0x10,%esp
    54af:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    54b2:	89 45 f4             	mov    %eax,-0xc(%ebp)
    54b5:	8b 45 c8             	mov    -0x38(%ebp),%eax
    54b8:	2d e9 03 00 00       	sub    $0x3e9,%eax
    54bd:	83 f8 04             	cmp    $0x4,%eax
    54c0:	77 4d                	ja     550f <task_hd+0x7e>
    54c2:	8b 04 85 dc b6 00 00 	mov    0xb6dc(,%eax,4),%eax
    54c9:	ff e0                	jmp    *%eax
    54cb:	8b 45 d8             	mov    -0x28(%ebp),%eax
    54ce:	83 ec 0c             	sub    $0xc,%esp
    54d1:	50                   	push   %eax
    54d2:	e8 2d 01 00 00       	call   5604 <hd_open>
    54d7:	83 c4 10             	add    $0x10,%esp
    54da:	eb 58                	jmp    5534 <task_hd+0xa3>
    54dc:	8b 45 d8             	mov    -0x28(%ebp),%eax
    54df:	83 ec 0c             	sub    $0xc,%esp
    54e2:	50                   	push   %eax
    54e3:	e8 e2 01 00 00       	call   56ca <hd_close>
    54e8:	83 c4 10             	add    $0x10,%esp
    54eb:	eb 47                	jmp    5534 <task_hd+0xa3>
    54ed:	83 ec 0c             	sub    $0xc,%esp
    54f0:	8d 45 c4             	lea    -0x3c(%ebp),%eax
    54f3:	50                   	push   %eax
    54f4:	e8 52 02 00 00       	call   574b <hd_rdwt>
    54f9:	83 c4 10             	add    $0x10,%esp
    54fc:	eb 36                	jmp    5534 <task_hd+0xa3>
    54fe:	83 ec 0c             	sub    $0xc,%esp
    5501:	8d 45 c4             	lea    -0x3c(%ebp),%eax
    5504:	50                   	push   %eax
    5505:	e8 ec 04 00 00       	call   59f6 <hd_ioctl>
    550a:	83 c4 10             	add    $0x10,%esp
    550d:	eb 25                	jmp    5534 <task_hd+0xa3>
    550f:	83 ec 08             	sub    $0x8,%esp
    5512:	8d 45 c4             	lea    -0x3c(%ebp),%eax
    5515:	50                   	push   %eax
    5516:	68 a0 b6 00 00       	push   $0xb6a0
    551b:	e8 e1 fd ff ff       	call   5301 <dump_msg>
    5520:	83 c4 10             	add    $0x10,%esp
    5523:	83 ec 0c             	sub    $0xc,%esp
    5526:	68 b8 b6 00 00       	push   $0xb6b8
    552b:	e8 48 15 00 00       	call   6a78 <spin>
    5530:	83 c4 10             	add    $0x10,%esp
    5533:	90                   	nop
    5534:	83 ec 04             	sub    $0x4,%esp
    5537:	8d 45 c4             	lea    -0x3c(%ebp),%eax
    553a:	50                   	push   %eax
    553b:	ff 75 f4             	pushl  -0xc(%ebp)
    553e:	6a 01                	push   $0x1
    5540:	e8 72 e9 ff ff       	call   3eb7 <send_recv>
    5545:	83 c4 10             	add    $0x10,%esp
    5548:	e9 4f ff ff ff       	jmp    549c <task_hd+0xb>

0000554d <init_hd>:
    554d:	55                   	push   %ebp
    554e:	89 e5                	mov    %esp,%ebp
    5550:	83 ec 18             	sub    $0x18,%esp
    5553:	c7 45 f0 75 04 00 00 	movl   $0x475,-0x10(%ebp)
    555a:	8b 45 f0             	mov    -0x10(%ebp),%eax
    555d:	0f b6 00             	movzbl (%eax),%eax
    5560:	0f b6 c0             	movzbl %al,%eax
    5563:	83 ec 08             	sub    $0x8,%esp
    5566:	50                   	push   %eax
    5567:	68 f0 b6 00 00       	push   $0xb6f0
    556c:	e8 33 0d 00 00       	call   62a4 <printf>
    5571:	83 c4 10             	add    $0x10,%esp
    5574:	8b 45 f0             	mov    -0x10(%ebp),%eax
    5577:	0f b6 00             	movzbl (%eax),%eax
    557a:	84 c0                	test   %al,%al
    557c:	75 19                	jne    5597 <init_hd+0x4a>
    557e:	6a 6b                	push   $0x6b
    5580:	68 fe b6 00 00       	push   $0xb6fe
    5585:	68 fe b6 00 00       	push   $0xb6fe
    558a:	68 0a b7 00 00       	push   $0xb70a
    558f:	e8 ff 14 00 00       	call   6a93 <assertion_failure>
    5594:	83 c4 10             	add    $0x10,%esp
    5597:	83 ec 08             	sub    $0x8,%esp
    559a:	68 79 62 00 00       	push   $0x6279
    559f:	6a 0e                	push   $0xe
    55a1:	e8 2f e1 ff ff       	call   36d5 <put_irq_handler>
    55a6:	83 c4 10             	add    $0x10,%esp
    55a9:	83 ec 0c             	sub    $0xc,%esp
    55ac:	6a 02                	push   $0x2
    55ae:	e8 3b 11 00 00       	call   66ee <enable_irq>
    55b3:	83 c4 10             	add    $0x10,%esp
    55b6:	83 ec 0c             	sub    $0xc,%esp
    55b9:	6a 0e                	push   $0xe
    55bb:	e8 2e 11 00 00       	call   66ee <enable_irq>
    55c0:	83 c4 10             	add    $0x10,%esp
    55c3:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    55ca:	eb 25                	jmp    55f1 <init_hd+0xa4>
    55cc:	8b 45 f4             	mov    -0xc(%ebp),%eax
    55cf:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
    55d5:	05 20 04 01 00       	add    $0x10420,%eax
    55da:	83 ec 04             	sub    $0x4,%esp
    55dd:	68 2c 02 00 00       	push   $0x22c
    55e2:	6a 00                	push   $0x0
    55e4:	50                   	push   %eax
    55e5:	e8 ff 12 00 00       	call   68e9 <memset>
    55ea:	83 c4 10             	add    $0x10,%esp
    55ed:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    55f1:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    55f5:	74 d5                	je     55cc <init_hd+0x7f>
    55f7:	c7 05 20 04 01 00 00 	movl   $0x0,0x10420
    55fe:	00 00 00 
    5601:	90                   	nop
    5602:	c9                   	leave  
    5603:	c3                   	ret    

00005604 <hd_open>:
    5604:	55                   	push   %ebp
    5605:	89 e5                	mov    %esp,%ebp
    5607:	83 ec 18             	sub    $0x18,%esp
    560a:	83 7d 08 09          	cmpl   $0x9,0x8(%ebp)
    560e:	7f 19                	jg     5629 <hd_open+0x25>
    5610:	8b 4d 08             	mov    0x8(%ebp),%ecx
    5613:	ba 67 66 66 66       	mov    $0x66666667,%edx
    5618:	89 c8                	mov    %ecx,%eax
    561a:	f7 ea                	imul   %edx
    561c:	d1 fa                	sar    %edx
    561e:	89 c8                	mov    %ecx,%eax
    5620:	c1 f8 1f             	sar    $0x1f,%eax
    5623:	29 c2                	sub    %eax,%edx
    5625:	89 d0                	mov    %edx,%eax
    5627:	eb 11                	jmp    563a <hd_open+0x36>
    5629:	8b 45 08             	mov    0x8(%ebp),%eax
    562c:	83 e8 10             	sub    $0x10,%eax
    562f:	8d 50 3f             	lea    0x3f(%eax),%edx
    5632:	85 c0                	test   %eax,%eax
    5634:	0f 48 c2             	cmovs  %edx,%eax
    5637:	c1 f8 06             	sar    $0x6,%eax
    563a:	89 45 f4             	mov    %eax,-0xc(%ebp)
    563d:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    5641:	74 1c                	je     565f <hd_open+0x5b>
    5643:	68 83 00 00 00       	push   $0x83
    5648:	68 fe b6 00 00       	push   $0xb6fe
    564d:	68 fe b6 00 00       	push   $0xb6fe
    5652:	68 15 b7 00 00       	push   $0xb715
    5657:	e8 37 14 00 00       	call   6a93 <assertion_failure>
    565c:	83 c4 10             	add    $0x10,%esp
    565f:	83 ec 0c             	sub    $0xc,%esp
    5662:	ff 75 f4             	pushl  -0xc(%ebp)
    5665:	e8 38 08 00 00       	call   5ea2 <hd_identify>
    566a:	83 c4 10             	add    $0x10,%esp
    566d:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5670:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
    5676:	05 20 04 01 00       	add    $0x10420,%eax
    567b:	8b 00                	mov    (%eax),%eax
    567d:	8d 50 01             	lea    0x1(%eax),%edx
    5680:	8b 4d f4             	mov    -0xc(%ebp),%ecx
    5683:	69 c9 2c 02 00 00    	imul   $0x22c,%ecx,%ecx
    5689:	81 c1 20 04 01 00    	add    $0x10420,%ecx
    568f:	89 11                	mov    %edx,(%ecx)
    5691:	85 c0                	test   %eax,%eax
    5693:	75 32                	jne    56c7 <hd_open+0xc3>
    5695:	8b 55 f4             	mov    -0xc(%ebp),%edx
    5698:	89 d0                	mov    %edx,%eax
    569a:	c1 e0 02             	shl    $0x2,%eax
    569d:	01 d0                	add    %edx,%eax
    569f:	83 ec 08             	sub    $0x8,%esp
    56a2:	6a 00                	push   $0x0
    56a4:	50                   	push   %eax
    56a5:	e8 df 04 00 00       	call   5b89 <partition>
    56aa:	83 c4 10             	add    $0x10,%esp
    56ad:	8b 45 f4             	mov    -0xc(%ebp),%eax
    56b0:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
    56b6:	05 20 04 01 00       	add    $0x10420,%eax
    56bb:	83 ec 0c             	sub    $0xc,%esp
    56be:	50                   	push   %eax
    56bf:	e8 f7 06 00 00       	call   5dbb <print_hdinfo>
    56c4:	83 c4 10             	add    $0x10,%esp
    56c7:	90                   	nop
    56c8:	c9                   	leave  
    56c9:	c3                   	ret    

000056ca <hd_close>:
    56ca:	55                   	push   %ebp
    56cb:	89 e5                	mov    %esp,%ebp
    56cd:	83 ec 18             	sub    $0x18,%esp
    56d0:	83 7d 08 09          	cmpl   $0x9,0x8(%ebp)
    56d4:	7f 19                	jg     56ef <hd_close+0x25>
    56d6:	8b 4d 08             	mov    0x8(%ebp),%ecx
    56d9:	ba 67 66 66 66       	mov    $0x66666667,%edx
    56de:	89 c8                	mov    %ecx,%eax
    56e0:	f7 ea                	imul   %edx
    56e2:	d1 fa                	sar    %edx
    56e4:	89 c8                	mov    %ecx,%eax
    56e6:	c1 f8 1f             	sar    $0x1f,%eax
    56e9:	29 c2                	sub    %eax,%edx
    56eb:	89 d0                	mov    %edx,%eax
    56ed:	eb 11                	jmp    5700 <hd_close+0x36>
    56ef:	8b 45 08             	mov    0x8(%ebp),%eax
    56f2:	83 e8 10             	sub    $0x10,%eax
    56f5:	8d 50 3f             	lea    0x3f(%eax),%edx
    56f8:	85 c0                	test   %eax,%eax
    56fa:	0f 48 c2             	cmovs  %edx,%eax
    56fd:	c1 f8 06             	sar    $0x6,%eax
    5700:	89 45 f4             	mov    %eax,-0xc(%ebp)
    5703:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    5707:	74 1c                	je     5725 <hd_close+0x5b>
    5709:	68 98 00 00 00       	push   $0x98
    570e:	68 fe b6 00 00       	push   $0xb6fe
    5713:	68 fe b6 00 00       	push   $0xb6fe
    5718:	68 15 b7 00 00       	push   $0xb715
    571d:	e8 71 13 00 00       	call   6a93 <assertion_failure>
    5722:	83 c4 10             	add    $0x10,%esp
    5725:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5728:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
    572e:	05 20 04 01 00       	add    $0x10420,%eax
    5733:	8b 00                	mov    (%eax),%eax
    5735:	8d 50 ff             	lea    -0x1(%eax),%edx
    5738:	8b 45 f4             	mov    -0xc(%ebp),%eax
    573b:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
    5741:	05 20 04 01 00       	add    $0x10420,%eax
    5746:	89 10                	mov    %edx,(%eax)
    5748:	90                   	nop
    5749:	c9                   	leave  
    574a:	c3                   	ret    

0000574b <hd_rdwt>:
    574b:	55                   	push   %ebp
    574c:	89 e5                	mov    %esp,%ebp
    574e:	57                   	push   %edi
    574f:	56                   	push   %esi
    5750:	53                   	push   %ebx
    5751:	83 ec 3c             	sub    $0x3c,%esp
    5754:	8b 45 08             	mov    0x8(%ebp),%eax
    5757:	8b 40 14             	mov    0x14(%eax),%eax
    575a:	83 f8 09             	cmp    $0x9,%eax
    575d:	7f 1c                	jg     577b <hd_rdwt+0x30>
    575f:	8b 45 08             	mov    0x8(%ebp),%eax
    5762:	8b 48 14             	mov    0x14(%eax),%ecx
    5765:	ba 67 66 66 66       	mov    $0x66666667,%edx
    576a:	89 c8                	mov    %ecx,%eax
    576c:	f7 ea                	imul   %edx
    576e:	d1 fa                	sar    %edx
    5770:	89 c8                	mov    %ecx,%eax
    5772:	c1 f8 1f             	sar    $0x1f,%eax
    5775:	29 c2                	sub    %eax,%edx
    5777:	89 d0                	mov    %edx,%eax
    5779:	eb 14                	jmp    578f <hd_rdwt+0x44>
    577b:	8b 45 08             	mov    0x8(%ebp),%eax
    577e:	8b 40 14             	mov    0x14(%eax),%eax
    5781:	83 e8 10             	sub    $0x10,%eax
    5784:	8d 50 3f             	lea    0x3f(%eax),%edx
    5787:	85 c0                	test   %eax,%eax
    5789:	0f 48 c2             	cmovs  %edx,%eax
    578c:	c1 f8 06             	sar    $0x6,%eax
    578f:	89 45 dc             	mov    %eax,-0x24(%ebp)
    5792:	8b 45 08             	mov    0x8(%ebp),%eax
    5795:	8b 50 1c             	mov    0x1c(%eax),%edx
    5798:	8b 40 18             	mov    0x18(%eax),%eax
    579b:	89 45 d0             	mov    %eax,-0x30(%ebp)
    579e:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    57a1:	8b 45 d0             	mov    -0x30(%ebp),%eax
    57a4:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    57a7:	0f ac d0 09          	shrd   $0x9,%edx,%eax
    57ab:	c1 ea 09             	shr    $0x9,%edx
    57ae:	89 c6                	mov    %eax,%esi
    57b0:	89 d7                	mov    %edx,%edi
    57b2:	bb ff ff ff 7f       	mov    $0x7fffffff,%ebx
    57b7:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
    57bc:	39 f3                	cmp    %esi,%ebx
    57be:	19 f9                	sbb    %edi,%ecx
    57c0:	73 1c                	jae    57de <hd_rdwt+0x93>
    57c2:	68 ab 00 00 00       	push   $0xab
    57c7:	68 fe b6 00 00       	push   $0xb6fe
    57cc:	68 fe b6 00 00       	push   $0xb6fe
    57d1:	68 20 b7 00 00       	push   $0xb720
    57d6:	e8 b8 12 00 00       	call   6a93 <assertion_failure>
    57db:	83 c4 10             	add    $0x10,%esp
    57de:	8b 45 d0             	mov    -0x30(%ebp),%eax
    57e1:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    57e4:	25 ff 01 00 00       	and    $0x1ff,%eax
    57e9:	ba 00 00 00 00       	mov    $0x0,%edx
    57ee:	09 d0                	or     %edx,%eax
    57f0:	85 c0                	test   %eax,%eax
    57f2:	74 1c                	je     5810 <hd_rdwt+0xc5>
    57f4:	68 b0 00 00 00       	push   $0xb0
    57f9:	68 fe b6 00 00       	push   $0xb6fe
    57fe:	68 fe b6 00 00       	push   $0xb6fe
    5803:	68 47 b7 00 00       	push   $0xb747
    5808:	e8 86 12 00 00       	call   6a93 <assertion_failure>
    580d:	83 c4 10             	add    $0x10,%esp
    5810:	8b 45 d0             	mov    -0x30(%ebp),%eax
    5813:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    5816:	0f ac d0 09          	shrd   $0x9,%edx,%eax
    581a:	c1 ea 09             	shr    $0x9,%edx
    581d:	89 c3                	mov    %eax,%ebx
    581f:	89 d6                	mov    %edx,%esi
    5821:	89 5d cc             	mov    %ebx,-0x34(%ebp)
    5824:	8b 45 08             	mov    0x8(%ebp),%eax
    5827:	8b 40 14             	mov    0x14(%eax),%eax
    582a:	8d 50 f0             	lea    -0x10(%eax),%edx
    582d:	89 d0                	mov    %edx,%eax
    582f:	c1 f8 1f             	sar    $0x1f,%eax
    5832:	c1 e8 1a             	shr    $0x1a,%eax
    5835:	01 c2                	add    %eax,%edx
    5837:	83 e2 3f             	and    $0x3f,%edx
    583a:	29 c2                	sub    %eax,%edx
    583c:	89 d0                	mov    %edx,%eax
    583e:	89 45 c8             	mov    %eax,-0x38(%ebp)
    5841:	8b 45 08             	mov    0x8(%ebp),%eax
    5844:	8b 40 14             	mov    0x14(%eax),%eax
    5847:	83 f8 08             	cmp    $0x8,%eax
    584a:	7f 1d                	jg     5869 <hd_rdwt+0x11e>
    584c:	8b 45 08             	mov    0x8(%ebp),%eax
    584f:	8b 50 14             	mov    0x14(%eax),%edx
    5852:	8b 45 dc             	mov    -0x24(%ebp),%eax
    5855:	c1 e2 03             	shl    $0x3,%edx
    5858:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
    585e:	01 d0                	add    %edx,%eax
    5860:	05 24 04 01 00       	add    $0x10424,%eax
    5865:	8b 00                	mov    (%eax),%eax
    5867:	eb 1b                	jmp    5884 <hd_rdwt+0x139>
    5869:	8b 45 c8             	mov    -0x38(%ebp),%eax
    586c:	8d 50 04             	lea    0x4(%eax),%edx
    586f:	8b 45 dc             	mov    -0x24(%ebp),%eax
    5872:	c1 e2 03             	shl    $0x3,%edx
    5875:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
    587b:	01 d0                	add    %edx,%eax
    587d:	05 2c 04 01 00       	add    $0x1042c,%eax
    5882:	8b 00                	mov    (%eax),%eax
    5884:	01 45 cc             	add    %eax,-0x34(%ebp)
    5887:	c6 45 bd 00          	movb   $0x0,-0x43(%ebp)
    588b:	8b 45 08             	mov    0x8(%ebp),%eax
    588e:	8b 40 0c             	mov    0xc(%eax),%eax
    5891:	05 ff 01 00 00       	add    $0x1ff,%eax
    5896:	8d 90 ff 01 00 00    	lea    0x1ff(%eax),%edx
    589c:	85 c0                	test   %eax,%eax
    589e:	0f 48 c2             	cmovs  %edx,%eax
    58a1:	c1 f8 09             	sar    $0x9,%eax
    58a4:	88 45 be             	mov    %al,-0x42(%ebp)
    58a7:	8b 45 cc             	mov    -0x34(%ebp),%eax
    58aa:	88 45 bf             	mov    %al,-0x41(%ebp)
    58ad:	8b 45 cc             	mov    -0x34(%ebp),%eax
    58b0:	c1 e8 08             	shr    $0x8,%eax
    58b3:	88 45 c0             	mov    %al,-0x40(%ebp)
    58b6:	8b 45 cc             	mov    -0x34(%ebp),%eax
    58b9:	c1 e8 10             	shr    $0x10,%eax
    58bc:	88 45 c1             	mov    %al,-0x3f(%ebp)
    58bf:	8b 45 dc             	mov    -0x24(%ebp),%eax
    58c2:	c1 e0 04             	shl    $0x4,%eax
    58c5:	89 c2                	mov    %eax,%edx
    58c7:	8b 45 cc             	mov    -0x34(%ebp),%eax
    58ca:	c1 e8 18             	shr    $0x18,%eax
    58cd:	83 e0 0f             	and    $0xf,%eax
    58d0:	09 d0                	or     %edx,%eax
    58d2:	83 c8 e0             	or     $0xffffffe0,%eax
    58d5:	88 45 c2             	mov    %al,-0x3e(%ebp)
    58d8:	8b 45 08             	mov    0x8(%ebp),%eax
    58db:	8b 40 04             	mov    0x4(%eax),%eax
    58de:	3d eb 03 00 00       	cmp    $0x3eb,%eax
    58e3:	75 07                	jne    58ec <hd_rdwt+0x1a1>
    58e5:	b8 20 00 00 00       	mov    $0x20,%eax
    58ea:	eb 05                	jmp    58f1 <hd_rdwt+0x1a6>
    58ec:	b8 30 00 00 00       	mov    $0x30,%eax
    58f1:	88 45 c3             	mov    %al,-0x3d(%ebp)
    58f4:	83 ec 0c             	sub    $0xc,%esp
    58f7:	8d 45 bd             	lea    -0x43(%ebp),%eax
    58fa:	50                   	push   %eax
    58fb:	e8 0a 08 00 00       	call   610a <hd_cmd_out>
    5900:	83 c4 10             	add    $0x10,%esp
    5903:	8b 45 08             	mov    0x8(%ebp),%eax
    5906:	8b 40 0c             	mov    0xc(%eax),%eax
    5909:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    590c:	8b 45 08             	mov    0x8(%ebp),%eax
    590f:	8b 50 2c             	mov    0x2c(%eax),%edx
    5912:	8b 45 08             	mov    0x8(%ebp),%eax
    5915:	8b 40 10             	mov    0x10(%eax),%eax
    5918:	83 ec 08             	sub    $0x8,%esp
    591b:	52                   	push   %edx
    591c:	50                   	push   %eax
    591d:	e8 9c e6 ff ff       	call   3fbe <va2la>
    5922:	83 c4 10             	add    $0x10,%esp
    5925:	89 45 e0             	mov    %eax,-0x20(%ebp)
    5928:	e9 b6 00 00 00       	jmp    59e3 <hd_rdwt+0x298>
    592d:	b8 00 02 00 00       	mov    $0x200,%eax
    5932:	81 7d e4 00 02 00 00 	cmpl   $0x200,-0x1c(%ebp)
    5939:	0f 4e 45 e4          	cmovle -0x1c(%ebp),%eax
    593d:	89 45 c4             	mov    %eax,-0x3c(%ebp)
    5940:	8b 45 08             	mov    0x8(%ebp),%eax
    5943:	8b 40 04             	mov    0x4(%eax),%eax
    5946:	3d eb 03 00 00       	cmp    $0x3eb,%eax
    594b:	75 45                	jne    5992 <hd_rdwt+0x247>
    594d:	e8 ba 08 00 00       	call   620c <interrupt_wait>
    5952:	83 ec 04             	sub    $0x4,%esp
    5955:	68 00 02 00 00       	push   $0x200
    595a:	68 20 00 01 00       	push   $0x10020
    595f:	68 f0 01 00 00       	push   $0x1f0
    5964:	e8 2a 0d 00 00       	call   6693 <port_read>
    5969:	83 c4 10             	add    $0x10,%esp
    596c:	83 ec 08             	sub    $0x8,%esp
    596f:	68 20 00 01 00       	push   $0x10020
    5974:	6a 02                	push   $0x2
    5976:	e8 43 e6 ff ff       	call   3fbe <va2la>
    597b:	83 c4 10             	add    $0x10,%esp
    597e:	83 ec 04             	sub    $0x4,%esp
    5981:	ff 75 c4             	pushl  -0x3c(%ebp)
    5984:	50                   	push   %eax
    5985:	ff 75 e0             	pushl  -0x20(%ebp)
    5988:	e8 33 0f 00 00       	call   68c0 <memcpy>
    598d:	83 c4 10             	add    $0x10,%esp
    5990:	eb 43                	jmp    59d5 <hd_rdwt+0x28a>
    5992:	83 ec 04             	sub    $0x4,%esp
    5995:	68 10 27 00 00       	push   $0x2710
    599a:	6a 08                	push   $0x8
    599c:	6a 08                	push   $0x8
    599e:	e8 85 08 00 00       	call   6228 <waitfor>
    59a3:	83 c4 10             	add    $0x10,%esp
    59a6:	85 c0                	test   %eax,%eax
    59a8:	75 10                	jne    59ba <hd_rdwt+0x26f>
    59aa:	83 ec 0c             	sub    $0xc,%esp
    59ad:	68 5a b7 00 00       	push   $0xb75a
    59b2:	e8 58 c2 ff ff       	call   1c0f <panic>
    59b7:	83 c4 10             	add    $0x10,%esp
    59ba:	83 ec 04             	sub    $0x4,%esp
    59bd:	ff 75 c4             	pushl  -0x3c(%ebp)
    59c0:	ff 75 e0             	pushl  -0x20(%ebp)
    59c3:	68 f0 01 00 00       	push   $0x1f0
    59c8:	e8 d9 0c 00 00       	call   66a6 <port_write>
    59cd:	83 c4 10             	add    $0x10,%esp
    59d0:	e8 37 08 00 00       	call   620c <interrupt_wait>
    59d5:	81 6d e4 00 02 00 00 	subl   $0x200,-0x1c(%ebp)
    59dc:	81 45 e0 00 02 00 00 	addl   $0x200,-0x20(%ebp)
    59e3:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
    59e7:	0f 85 40 ff ff ff    	jne    592d <hd_rdwt+0x1e2>
    59ed:	90                   	nop
    59ee:	8d 65 f4             	lea    -0xc(%ebp),%esp
    59f1:	5b                   	pop    %ebx
    59f2:	5e                   	pop    %esi
    59f3:	5f                   	pop    %edi
    59f4:	5d                   	pop    %ebp
    59f5:	c3                   	ret    

000059f6 <hd_ioctl>:
    59f6:	55                   	push   %ebp
    59f7:	89 e5                	mov    %esp,%ebp
    59f9:	83 ec 28             	sub    $0x28,%esp
    59fc:	8b 45 08             	mov    0x8(%ebp),%eax
    59ff:	8b 40 14             	mov    0x14(%eax),%eax
    5a02:	89 45 f4             	mov    %eax,-0xc(%ebp)
    5a05:	83 7d f4 09          	cmpl   $0x9,-0xc(%ebp)
    5a09:	7f 19                	jg     5a24 <hd_ioctl+0x2e>
    5a0b:	8b 4d f4             	mov    -0xc(%ebp),%ecx
    5a0e:	ba 67 66 66 66       	mov    $0x66666667,%edx
    5a13:	89 c8                	mov    %ecx,%eax
    5a15:	f7 ea                	imul   %edx
    5a17:	d1 fa                	sar    %edx
    5a19:	89 c8                	mov    %ecx,%eax
    5a1b:	c1 f8 1f             	sar    $0x1f,%eax
    5a1e:	29 c2                	sub    %eax,%edx
    5a20:	89 d0                	mov    %edx,%eax
    5a22:	eb 11                	jmp    5a35 <hd_ioctl+0x3f>
    5a24:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5a27:	83 e8 10             	sub    $0x10,%eax
    5a2a:	8d 50 3f             	lea    0x3f(%eax),%edx
    5a2d:	85 c0                	test   %eax,%eax
    5a2f:	0f 48 c2             	cmovs  %edx,%eax
    5a32:	c1 f8 06             	sar    $0x6,%eax
    5a35:	89 45 f0             	mov    %eax,-0x10(%ebp)
    5a38:	8b 45 f0             	mov    -0x10(%ebp),%eax
    5a3b:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
    5a41:	05 20 04 01 00       	add    $0x10420,%eax
    5a46:	89 45 ec             	mov    %eax,-0x14(%ebp)
    5a49:	8b 45 08             	mov    0x8(%ebp),%eax
    5a4c:	8b 40 0c             	mov    0xc(%eax),%eax
    5a4f:	83 f8 01             	cmp    $0x1,%eax
    5a52:	0f 85 85 00 00 00    	jne    5add <hd_ioctl+0xe7>
    5a58:	8b 45 08             	mov    0x8(%ebp),%eax
    5a5b:	8b 50 2c             	mov    0x2c(%eax),%edx
    5a5e:	8b 45 08             	mov    0x8(%ebp),%eax
    5a61:	8b 40 10             	mov    0x10(%eax),%eax
    5a64:	83 ec 08             	sub    $0x8,%esp
    5a67:	52                   	push   %edx
    5a68:	50                   	push   %eax
    5a69:	e8 50 e5 ff ff       	call   3fbe <va2la>
    5a6e:	83 c4 10             	add    $0x10,%esp
    5a71:	89 45 e8             	mov    %eax,-0x18(%ebp)
    5a74:	83 7d f4 08          	cmpl   $0x8,-0xc(%ebp)
    5a78:	7f 14                	jg     5a8e <hd_ioctl+0x98>
    5a7a:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5a7d:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    5a84:	8b 45 ec             	mov    -0x14(%ebp),%eax
    5a87:	01 d0                	add    %edx,%eax
    5a89:	83 c0 04             	add    $0x4,%eax
    5a8c:	eb 29                	jmp    5ab7 <hd_ioctl+0xc1>
    5a8e:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5a91:	8d 50 f0             	lea    -0x10(%eax),%edx
    5a94:	89 d0                	mov    %edx,%eax
    5a96:	c1 f8 1f             	sar    $0x1f,%eax
    5a99:	c1 e8 1a             	shr    $0x1a,%eax
    5a9c:	01 c2                	add    %eax,%edx
    5a9e:	83 e2 3f             	and    $0x3f,%edx
    5aa1:	29 c2                	sub    %eax,%edx
    5aa3:	89 d0                	mov    %edx,%eax
    5aa5:	83 c0 04             	add    $0x4,%eax
    5aa8:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    5aaf:	8b 45 ec             	mov    -0x14(%ebp),%eax
    5ab2:	01 d0                	add    %edx,%eax
    5ab4:	83 c0 0c             	add    $0xc,%eax
    5ab7:	83 ec 08             	sub    $0x8,%esp
    5aba:	50                   	push   %eax
    5abb:	6a 02                	push   $0x2
    5abd:	e8 fc e4 ff ff       	call   3fbe <va2la>
    5ac2:	83 c4 10             	add    $0x10,%esp
    5ac5:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    5ac8:	83 ec 04             	sub    $0x4,%esp
    5acb:	6a 08                	push   $0x8
    5acd:	ff 75 e4             	pushl  -0x1c(%ebp)
    5ad0:	ff 75 e8             	pushl  -0x18(%ebp)
    5ad3:	e8 e8 0d 00 00       	call   68c0 <memcpy>
    5ad8:	83 c4 10             	add    $0x10,%esp
    5adb:	eb 1c                	jmp    5af9 <hd_ioctl+0x103>
    5add:	68 f3 00 00 00       	push   $0xf3
    5ae2:	68 fe b6 00 00       	push   $0xb6fe
    5ae7:	68 fe b6 00 00       	push   $0xb6fe
    5aec:	68 6c b7 00 00       	push   $0xb76c
    5af1:	e8 9d 0f 00 00       	call   6a93 <assertion_failure>
    5af6:	83 c4 10             	add    $0x10,%esp
    5af9:	90                   	nop
    5afa:	c9                   	leave  
    5afb:	c3                   	ret    

00005afc <get_part_table>:
    5afc:	55                   	push   %ebp
    5afd:	89 e5                	mov    %esp,%ebp
    5aff:	83 ec 18             	sub    $0x18,%esp
    5b02:	c6 45 f1 00          	movb   $0x0,-0xf(%ebp)
    5b06:	c6 45 f2 01          	movb   $0x1,-0xe(%ebp)
    5b0a:	8b 45 0c             	mov    0xc(%ebp),%eax
    5b0d:	88 45 f3             	mov    %al,-0xd(%ebp)
    5b10:	8b 45 0c             	mov    0xc(%ebp),%eax
    5b13:	c1 f8 08             	sar    $0x8,%eax
    5b16:	88 45 f4             	mov    %al,-0xc(%ebp)
    5b19:	8b 45 0c             	mov    0xc(%ebp),%eax
    5b1c:	c1 f8 10             	sar    $0x10,%eax
    5b1f:	88 45 f5             	mov    %al,-0xb(%ebp)
    5b22:	8b 45 08             	mov    0x8(%ebp),%eax
    5b25:	c1 e0 04             	shl    $0x4,%eax
    5b28:	83 c8 40             	or     $0x40,%eax
    5b2b:	89 c2                	mov    %eax,%edx
    5b2d:	8b 45 0c             	mov    0xc(%ebp),%eax
    5b30:	c1 f8 18             	sar    $0x18,%eax
    5b33:	83 e0 0f             	and    $0xf,%eax
    5b36:	09 d0                	or     %edx,%eax
    5b38:	83 c8 a0             	or     $0xffffffa0,%eax
    5b3b:	88 45 f6             	mov    %al,-0xa(%ebp)
    5b3e:	c6 45 f7 20          	movb   $0x20,-0x9(%ebp)
    5b42:	83 ec 0c             	sub    $0xc,%esp
    5b45:	8d 45 f1             	lea    -0xf(%ebp),%eax
    5b48:	50                   	push   %eax
    5b49:	e8 bc 05 00 00       	call   610a <hd_cmd_out>
    5b4e:	83 c4 10             	add    $0x10,%esp
    5b51:	e8 b6 06 00 00       	call   620c <interrupt_wait>
    5b56:	83 ec 04             	sub    $0x4,%esp
    5b59:	68 00 02 00 00       	push   $0x200
    5b5e:	68 20 00 01 00       	push   $0x10020
    5b63:	68 f0 01 00 00       	push   $0x1f0
    5b68:	e8 26 0b 00 00       	call   6693 <port_read>
    5b6d:	83 c4 10             	add    $0x10,%esp
    5b70:	b8 de 01 01 00       	mov    $0x101de,%eax
    5b75:	83 ec 04             	sub    $0x4,%esp
    5b78:	6a 40                	push   $0x40
    5b7a:	50                   	push   %eax
    5b7b:	ff 75 10             	pushl  0x10(%ebp)
    5b7e:	e8 3d 0d 00 00       	call   68c0 <memcpy>
    5b83:	83 c4 10             	add    $0x10,%esp
    5b86:	90                   	nop
    5b87:	c9                   	leave  
    5b88:	c3                   	ret    

00005b89 <partition>:
    5b89:	55                   	push   %ebp
    5b8a:	89 e5                	mov    %esp,%ebp
    5b8c:	81 ec 38 04 00 00    	sub    $0x438,%esp
    5b92:	83 7d 08 09          	cmpl   $0x9,0x8(%ebp)
    5b96:	7f 19                	jg     5bb1 <partition+0x28>
    5b98:	8b 4d 08             	mov    0x8(%ebp),%ecx
    5b9b:	ba 67 66 66 66       	mov    $0x66666667,%edx
    5ba0:	89 c8                	mov    %ecx,%eax
    5ba2:	f7 ea                	imul   %edx
    5ba4:	d1 fa                	sar    %edx
    5ba6:	89 c8                	mov    %ecx,%eax
    5ba8:	c1 f8 1f             	sar    $0x1f,%eax
    5bab:	29 c2                	sub    %eax,%edx
    5bad:	89 d0                	mov    %edx,%eax
    5baf:	eb 11                	jmp    5bc2 <partition+0x39>
    5bb1:	8b 45 08             	mov    0x8(%ebp),%eax
    5bb4:	83 e8 10             	sub    $0x10,%eax
    5bb7:	8d 50 3f             	lea    0x3f(%eax),%edx
    5bba:	85 c0                	test   %eax,%eax
    5bbc:	0f 48 c2             	cmovs  %edx,%eax
    5bbf:	c1 f8 06             	sar    $0x6,%eax
    5bc2:	89 45 e8             	mov    %eax,-0x18(%ebp)
    5bc5:	8b 45 e8             	mov    -0x18(%ebp),%eax
    5bc8:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
    5bce:	05 20 04 01 00       	add    $0x10420,%eax
    5bd3:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    5bd6:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    5bda:	0f 85 f0 00 00 00    	jne    5cd0 <partition+0x147>
    5be0:	83 ec 04             	sub    $0x4,%esp
    5be3:	8d 85 d0 fb ff ff    	lea    -0x430(%ebp),%eax
    5be9:	50                   	push   %eax
    5bea:	ff 75 e8             	pushl  -0x18(%ebp)
    5bed:	ff 75 e8             	pushl  -0x18(%ebp)
    5bf0:	e8 07 ff ff ff       	call   5afc <get_part_table>
    5bf5:	83 c4 10             	add    $0x10,%esp
    5bf8:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    5bff:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    5c06:	e9 90 00 00 00       	jmp    5c9b <partition+0x112>
    5c0b:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5c0e:	c1 e0 04             	shl    $0x4,%eax
    5c11:	8d 4d f8             	lea    -0x8(%ebp),%ecx
    5c14:	01 c8                	add    %ecx,%eax
    5c16:	2d 24 04 00 00       	sub    $0x424,%eax
    5c1b:	0f b6 00             	movzbl (%eax),%eax
    5c1e:	84 c0                	test   %al,%al
    5c20:	74 74                	je     5c96 <partition+0x10d>
    5c22:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    5c26:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5c29:	83 c0 01             	add    $0x1,%eax
    5c2c:	89 45 e0             	mov    %eax,-0x20(%ebp)
    5c2f:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5c32:	c1 e0 04             	shl    $0x4,%eax
    5c35:	8d 4d f8             	lea    -0x8(%ebp),%ecx
    5c38:	01 c8                	add    %ecx,%eax
    5c3a:	2d 20 04 00 00       	sub    $0x420,%eax
    5c3f:	8b 08                	mov    (%eax),%ecx
    5c41:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    5c44:	8b 55 e0             	mov    -0x20(%ebp),%edx
    5c47:	89 4c d0 04          	mov    %ecx,0x4(%eax,%edx,8)
    5c4b:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5c4e:	c1 e0 04             	shl    $0x4,%eax
    5c51:	8d 4d f8             	lea    -0x8(%ebp),%ecx
    5c54:	01 c8                	add    %ecx,%eax
    5c56:	2d 1c 04 00 00       	sub    $0x41c,%eax
    5c5b:	8b 08                	mov    (%eax),%ecx
    5c5d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    5c60:	8b 55 e0             	mov    -0x20(%ebp),%edx
    5c63:	89 4c d0 08          	mov    %ecx,0x8(%eax,%edx,8)
    5c67:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5c6a:	c1 e0 04             	shl    $0x4,%eax
    5c6d:	8d 4d f8             	lea    -0x8(%ebp),%ecx
    5c70:	01 c8                	add    %ecx,%eax
    5c72:	2d 24 04 00 00       	sub    $0x424,%eax
    5c77:	0f b6 00             	movzbl (%eax),%eax
    5c7a:	3c 05                	cmp    $0x5,%al
    5c7c:	75 19                	jne    5c97 <partition+0x10e>
    5c7e:	8b 55 08             	mov    0x8(%ebp),%edx
    5c81:	8b 45 e0             	mov    -0x20(%ebp),%eax
    5c84:	01 d0                	add    %edx,%eax
    5c86:	83 ec 08             	sub    $0x8,%esp
    5c89:	6a 01                	push   $0x1
    5c8b:	50                   	push   %eax
    5c8c:	e8 f8 fe ff ff       	call   5b89 <partition>
    5c91:	83 c4 10             	add    $0x10,%esp
    5c94:	eb 01                	jmp    5c97 <partition+0x10e>
    5c96:	90                   	nop
    5c97:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    5c9b:	83 7d f4 03          	cmpl   $0x3,-0xc(%ebp)
    5c9f:	0f 8e 66 ff ff ff    	jle    5c0b <partition+0x82>
    5ca5:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    5ca9:	0f 85 09 01 00 00    	jne    5db8 <partition+0x22f>
    5caf:	68 38 01 00 00       	push   $0x138
    5cb4:	68 fe b6 00 00       	push   $0xb6fe
    5cb9:	68 fe b6 00 00       	push   $0xb6fe
    5cbe:	68 6e b7 00 00       	push   $0xb76e
    5cc3:	e8 cb 0d 00 00       	call   6a93 <assertion_failure>
    5cc8:	83 c4 10             	add    $0x10,%esp
    5ccb:	e9 e8 00 00 00       	jmp    5db8 <partition+0x22f>
    5cd0:	83 7d 0c 01          	cmpl   $0x1,0xc(%ebp)
    5cd4:	0f 85 bf 00 00 00    	jne    5d99 <partition+0x210>
    5cda:	8b 4d 08             	mov    0x8(%ebp),%ecx
    5cdd:	ba 67 66 66 66       	mov    $0x66666667,%edx
    5ce2:	89 c8                	mov    %ecx,%eax
    5ce4:	f7 ea                	imul   %edx
    5ce6:	d1 fa                	sar    %edx
    5ce8:	89 c8                	mov    %ecx,%eax
    5cea:	c1 f8 1f             	sar    $0x1f,%eax
    5ced:	29 c2                	sub    %eax,%edx
    5cef:	89 d0                	mov    %edx,%eax
    5cf1:	c1 e0 02             	shl    $0x2,%eax
    5cf4:	01 d0                	add    %edx,%eax
    5cf6:	29 c1                	sub    %eax,%ecx
    5cf8:	89 c8                	mov    %ecx,%eax
    5cfa:	89 45 dc             	mov    %eax,-0x24(%ebp)
    5cfd:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    5d00:	8b 55 dc             	mov    -0x24(%ebp),%edx
    5d03:	8b 44 d0 04          	mov    0x4(%eax,%edx,8),%eax
    5d07:	89 45 d8             	mov    %eax,-0x28(%ebp)
    5d0a:	8b 45 d8             	mov    -0x28(%ebp),%eax
    5d0d:	89 45 ec             	mov    %eax,-0x14(%ebp)
    5d10:	8b 45 dc             	mov    -0x24(%ebp),%eax
    5d13:	83 e8 01             	sub    $0x1,%eax
    5d16:	c1 e0 04             	shl    $0x4,%eax
    5d19:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    5d1c:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    5d23:	eb 6c                	jmp    5d91 <partition+0x208>
    5d25:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    5d28:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5d2b:	01 d0                	add    %edx,%eax
    5d2d:	89 45 d0             	mov    %eax,-0x30(%ebp)
    5d30:	83 ec 04             	sub    $0x4,%esp
    5d33:	8d 85 d0 fb ff ff    	lea    -0x430(%ebp),%eax
    5d39:	50                   	push   %eax
    5d3a:	ff 75 ec             	pushl  -0x14(%ebp)
    5d3d:	ff 75 e8             	pushl  -0x18(%ebp)
    5d40:	e8 b7 fd ff ff       	call   5afc <get_part_table>
    5d45:	83 c4 10             	add    $0x10,%esp
    5d48:	8b 95 d8 fb ff ff    	mov    -0x428(%ebp),%edx
    5d4e:	8b 45 ec             	mov    -0x14(%ebp),%eax
    5d51:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
    5d54:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    5d57:	8b 55 d0             	mov    -0x30(%ebp),%edx
    5d5a:	83 c2 04             	add    $0x4,%edx
    5d5d:	89 4c d0 0c          	mov    %ecx,0xc(%eax,%edx,8)
    5d61:	8b 95 dc fb ff ff    	mov    -0x424(%ebp),%edx
    5d67:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    5d6a:	8b 4d d0             	mov    -0x30(%ebp),%ecx
    5d6d:	83 c1 04             	add    $0x4,%ecx
    5d70:	89 54 c8 10          	mov    %edx,0x10(%eax,%ecx,8)
    5d74:	8b 95 e8 fb ff ff    	mov    -0x418(%ebp),%edx
    5d7a:	8b 45 d8             	mov    -0x28(%ebp),%eax
    5d7d:	01 d0                	add    %edx,%eax
    5d7f:	89 45 ec             	mov    %eax,-0x14(%ebp)
    5d82:	0f b6 85 e4 fb ff ff 	movzbl -0x41c(%ebp),%eax
    5d89:	84 c0                	test   %al,%al
    5d8b:	74 2a                	je     5db7 <partition+0x22e>
    5d8d:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    5d91:	83 7d f4 0f          	cmpl   $0xf,-0xc(%ebp)
    5d95:	7e 8e                	jle    5d25 <partition+0x19c>
    5d97:	eb 1f                	jmp    5db8 <partition+0x22f>
    5d99:	68 51 01 00 00       	push   $0x151
    5d9e:	68 fe b6 00 00       	push   $0xb6fe
    5da3:	68 fe b6 00 00       	push   $0xb6fe
    5da8:	68 6c b7 00 00       	push   $0xb76c
    5dad:	e8 e1 0c 00 00       	call   6a93 <assertion_failure>
    5db2:	83 c4 10             	add    $0x10,%esp
    5db5:	eb 01                	jmp    5db8 <partition+0x22f>
    5db7:	90                   	nop
    5db8:	90                   	nop
    5db9:	c9                   	leave  
    5dba:	c3                   	ret    

00005dbb <print_hdinfo>:
    5dbb:	55                   	push   %ebp
    5dbc:	89 e5                	mov    %esp,%ebp
    5dbe:	56                   	push   %esi
    5dbf:	53                   	push   %ebx
    5dc0:	83 ec 10             	sub    $0x10,%esp
    5dc3:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    5dca:	eb 56                	jmp    5e22 <print_hdinfo+0x67>
    5dcc:	8b 45 08             	mov    0x8(%ebp),%eax
    5dcf:	8b 55 f4             	mov    -0xc(%ebp),%edx
    5dd2:	8b 5c d0 08          	mov    0x8(%eax,%edx,8),%ebx
    5dd6:	8b 45 08             	mov    0x8(%ebp),%eax
    5dd9:	8b 55 f4             	mov    -0xc(%ebp),%edx
    5ddc:	8b 4c d0 08          	mov    0x8(%eax,%edx,8),%ecx
    5de0:	8b 45 08             	mov    0x8(%ebp),%eax
    5de3:	8b 55 f4             	mov    -0xc(%ebp),%edx
    5de6:	8b 54 d0 04          	mov    0x4(%eax,%edx,8),%edx
    5dea:	8b 45 08             	mov    0x8(%ebp),%eax
    5ded:	8b 75 f4             	mov    -0xc(%ebp),%esi
    5df0:	8b 44 f0 04          	mov    0x4(%eax,%esi,8),%eax
    5df4:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    5df8:	75 07                	jne    5e01 <print_hdinfo+0x46>
    5dfa:	be 81 b7 00 00       	mov    $0xb781,%esi
    5dff:	eb 05                	jmp    5e06 <print_hdinfo+0x4b>
    5e01:	be 83 b7 00 00       	mov    $0xb783,%esi
    5e06:	83 ec 04             	sub    $0x4,%esp
    5e09:	53                   	push   %ebx
    5e0a:	51                   	push   %ecx
    5e0b:	52                   	push   %edx
    5e0c:	50                   	push   %eax
    5e0d:	ff 75 f4             	pushl  -0xc(%ebp)
    5e10:	56                   	push   %esi
    5e11:	68 8c b7 00 00       	push   $0xb78c
    5e16:	e8 89 04 00 00       	call   62a4 <printf>
    5e1b:	83 c4 20             	add    $0x20,%esp
    5e1e:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    5e22:	83 7d f4 04          	cmpl   $0x4,-0xc(%ebp)
    5e26:	7e a4                	jle    5dcc <print_hdinfo+0x11>
    5e28:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    5e2f:	eb 63                	jmp    5e94 <print_hdinfo+0xd9>
    5e31:	8b 45 08             	mov    0x8(%ebp),%eax
    5e34:	8b 55 f4             	mov    -0xc(%ebp),%edx
    5e37:	83 c2 04             	add    $0x4,%edx
    5e3a:	8b 44 d0 10          	mov    0x10(%eax,%edx,8),%eax
    5e3e:	85 c0                	test   %eax,%eax
    5e40:	74 4d                	je     5e8f <print_hdinfo+0xd4>
    5e42:	8b 45 08             	mov    0x8(%ebp),%eax
    5e45:	8b 55 f4             	mov    -0xc(%ebp),%edx
    5e48:	83 c2 04             	add    $0x4,%edx
    5e4b:	8b 5c d0 10          	mov    0x10(%eax,%edx,8),%ebx
    5e4f:	8b 45 08             	mov    0x8(%ebp),%eax
    5e52:	8b 55 f4             	mov    -0xc(%ebp),%edx
    5e55:	83 c2 04             	add    $0x4,%edx
    5e58:	8b 4c d0 10          	mov    0x10(%eax,%edx,8),%ecx
    5e5c:	8b 45 08             	mov    0x8(%ebp),%eax
    5e5f:	8b 55 f4             	mov    -0xc(%ebp),%edx
    5e62:	83 c2 04             	add    $0x4,%edx
    5e65:	8b 54 d0 0c          	mov    0xc(%eax,%edx,8),%edx
    5e69:	8b 45 08             	mov    0x8(%ebp),%eax
    5e6c:	8b 75 f4             	mov    -0xc(%ebp),%esi
    5e6f:	83 c6 04             	add    $0x4,%esi
    5e72:	8b 44 f0 0c          	mov    0xc(%eax,%esi,8),%eax
    5e76:	83 ec 08             	sub    $0x8,%esp
    5e79:	53                   	push   %ebx
    5e7a:	51                   	push   %ecx
    5e7b:	52                   	push   %edx
    5e7c:	50                   	push   %eax
    5e7d:	ff 75 f4             	pushl  -0xc(%ebp)
    5e80:	68 c4 b7 00 00       	push   $0xb7c4
    5e85:	e8 1a 04 00 00       	call   62a4 <printf>
    5e8a:	83 c4 20             	add    $0x20,%esp
    5e8d:	eb 01                	jmp    5e90 <print_hdinfo+0xd5>
    5e8f:	90                   	nop
    5e90:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    5e94:	83 7d f4 3f          	cmpl   $0x3f,-0xc(%ebp)
    5e98:	7e 97                	jle    5e31 <print_hdinfo+0x76>
    5e9a:	90                   	nop
    5e9b:	8d 65 f8             	lea    -0x8(%ebp),%esp
    5e9e:	5b                   	pop    %ebx
    5e9f:	5e                   	pop    %esi
    5ea0:	5d                   	pop    %ebp
    5ea1:	c3                   	ret    

00005ea2 <hd_identify>:
    5ea2:	55                   	push   %ebp
    5ea3:	89 e5                	mov    %esp,%ebp
    5ea5:	83 ec 18             	sub    $0x18,%esp
    5ea8:	8b 45 08             	mov    0x8(%ebp),%eax
    5eab:	c1 e0 04             	shl    $0x4,%eax
    5eae:	83 c8 a0             	or     $0xffffffa0,%eax
    5eb1:	88 45 f2             	mov    %al,-0xe(%ebp)
    5eb4:	c6 45 f3 ec          	movb   $0xec,-0xd(%ebp)
    5eb8:	83 ec 0c             	sub    $0xc,%esp
    5ebb:	8d 45 ed             	lea    -0x13(%ebp),%eax
    5ebe:	50                   	push   %eax
    5ebf:	e8 46 02 00 00       	call   610a <hd_cmd_out>
    5ec4:	83 c4 10             	add    $0x10,%esp
    5ec7:	e8 40 03 00 00       	call   620c <interrupt_wait>
    5ecc:	83 ec 04             	sub    $0x4,%esp
    5ecf:	68 00 02 00 00       	push   $0x200
    5ed4:	68 20 00 01 00       	push   $0x10020
    5ed9:	68 f0 01 00 00       	push   $0x1f0
    5ede:	e8 b0 07 00 00       	call   6693 <port_read>
    5ee3:	83 c4 10             	add    $0x10,%esp
    5ee6:	83 ec 0c             	sub    $0xc,%esp
    5ee9:	68 20 00 01 00       	push   $0x10020
    5eee:	e8 52 00 00 00       	call   5f45 <print_identify_info>
    5ef3:	83 c4 10             	add    $0x10,%esp
    5ef6:	c7 45 f4 20 00 01 00 	movl   $0x10020,-0xc(%ebp)
    5efd:	8b 45 08             	mov    0x8(%ebp),%eax
    5f00:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
    5f06:	05 24 04 01 00       	add    $0x10424,%eax
    5f0b:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
    5f11:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5f14:	83 c0 7a             	add    $0x7a,%eax
    5f17:	0f b7 00             	movzwl (%eax),%eax
    5f1a:	0f b7 c0             	movzwl %ax,%eax
    5f1d:	c1 e0 10             	shl    $0x10,%eax
    5f20:	89 c2                	mov    %eax,%edx
    5f22:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5f25:	83 c0 78             	add    $0x78,%eax
    5f28:	0f b7 00             	movzwl (%eax),%eax
    5f2b:	0f b7 c0             	movzwl %ax,%eax
    5f2e:	01 d0                	add    %edx,%eax
    5f30:	89 c2                	mov    %eax,%edx
    5f32:	8b 45 08             	mov    0x8(%ebp),%eax
    5f35:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
    5f3b:	05 28 04 01 00       	add    $0x10428,%eax
    5f40:	89 10                	mov    %edx,(%eax)
    5f42:	90                   	nop
    5f43:	c9                   	leave  
    5f44:	c3                   	ret    

00005f45 <print_identify_info>:
    5f45:	55                   	push   %ebp
    5f46:	89 e5                	mov    %esp,%ebp
    5f48:	83 ec 78             	sub    $0x78,%esp
    5f4b:	c7 45 88 0a 00 00 00 	movl   $0xa,-0x78(%ebp)
    5f52:	c7 45 8c 14 00 00 00 	movl   $0x14,-0x74(%ebp)
    5f59:	c7 45 90 fb b7 00 00 	movl   $0xb7fb,-0x70(%ebp)
    5f60:	c7 45 94 1b 00 00 00 	movl   $0x1b,-0x6c(%ebp)
    5f67:	c7 45 98 28 00 00 00 	movl   $0x28,-0x68(%ebp)
    5f6e:	c7 45 9c 01 b8 00 00 	movl   $0xb801,-0x64(%ebp)
    5f75:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    5f7c:	e9 b8 00 00 00       	jmp    6039 <print_identify_info+0xf4>
    5f81:	8b 55 f0             	mov    -0x10(%ebp),%edx
    5f84:	89 d0                	mov    %edx,%eax
    5f86:	01 c0                	add    %eax,%eax
    5f88:	01 d0                	add    %edx,%eax
    5f8a:	c1 e0 02             	shl    $0x2,%eax
    5f8d:	8d 4d f8             	lea    -0x8(%ebp),%ecx
    5f90:	01 c8                	add    %ecx,%eax
    5f92:	83 e8 70             	sub    $0x70,%eax
    5f95:	8b 00                	mov    (%eax),%eax
    5f97:	8d 14 00             	lea    (%eax,%eax,1),%edx
    5f9a:	8b 45 08             	mov    0x8(%ebp),%eax
    5f9d:	01 d0                	add    %edx,%eax
    5f9f:	89 45 ec             	mov    %eax,-0x14(%ebp)
    5fa2:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    5fa9:	eb 31                	jmp    5fdc <print_identify_info+0x97>
    5fab:	8b 45 ec             	mov    -0x14(%ebp),%eax
    5fae:	8d 50 01             	lea    0x1(%eax),%edx
    5fb1:	89 55 ec             	mov    %edx,-0x14(%ebp)
    5fb4:	8b 55 f4             	mov    -0xc(%ebp),%edx
    5fb7:	01 d2                	add    %edx,%edx
    5fb9:	83 c2 01             	add    $0x1,%edx
    5fbc:	0f b6 00             	movzbl (%eax),%eax
    5fbf:	88 44 15 a0          	mov    %al,-0x60(%ebp,%edx,1)
    5fc3:	8b 45 ec             	mov    -0x14(%ebp),%eax
    5fc6:	8d 50 01             	lea    0x1(%eax),%edx
    5fc9:	89 55 ec             	mov    %edx,-0x14(%ebp)
    5fcc:	8b 55 f4             	mov    -0xc(%ebp),%edx
    5fcf:	01 d2                	add    %edx,%edx
    5fd1:	0f b6 00             	movzbl (%eax),%eax
    5fd4:	88 44 15 a0          	mov    %al,-0x60(%ebp,%edx,1)
    5fd8:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    5fdc:	8b 55 f0             	mov    -0x10(%ebp),%edx
    5fdf:	89 d0                	mov    %edx,%eax
    5fe1:	01 c0                	add    %eax,%eax
    5fe3:	01 d0                	add    %edx,%eax
    5fe5:	c1 e0 02             	shl    $0x2,%eax
    5fe8:	8d 4d f8             	lea    -0x8(%ebp),%ecx
    5feb:	01 c8                	add    %ecx,%eax
    5fed:	83 e8 6c             	sub    $0x6c,%eax
    5ff0:	8b 00                	mov    (%eax),%eax
    5ff2:	89 c2                	mov    %eax,%edx
    5ff4:	c1 ea 1f             	shr    $0x1f,%edx
    5ff7:	01 d0                	add    %edx,%eax
    5ff9:	d1 f8                	sar    %eax
    5ffb:	39 45 f4             	cmp    %eax,-0xc(%ebp)
    5ffe:	7c ab                	jl     5fab <print_identify_info+0x66>
    6000:	8b 45 f4             	mov    -0xc(%ebp),%eax
    6003:	01 c0                	add    %eax,%eax
    6005:	c6 44 05 a0 00       	movb   $0x0,-0x60(%ebp,%eax,1)
    600a:	8b 55 f0             	mov    -0x10(%ebp),%edx
    600d:	89 d0                	mov    %edx,%eax
    600f:	01 c0                	add    %eax,%eax
    6011:	01 d0                	add    %edx,%eax
    6013:	c1 e0 02             	shl    $0x2,%eax
    6016:	8d 4d f8             	lea    -0x8(%ebp),%ecx
    6019:	01 c8                	add    %ecx,%eax
    601b:	83 e8 68             	sub    $0x68,%eax
    601e:	8b 00                	mov    (%eax),%eax
    6020:	83 ec 04             	sub    $0x4,%esp
    6023:	8d 55 a0             	lea    -0x60(%ebp),%edx
    6026:	52                   	push   %edx
    6027:	50                   	push   %eax
    6028:	68 0a b8 00 00       	push   $0xb80a
    602d:	e8 72 02 00 00       	call   62a4 <printf>
    6032:	83 c4 10             	add    $0x10,%esp
    6035:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    6039:	8b 45 f0             	mov    -0x10(%ebp),%eax
    603c:	83 f8 01             	cmp    $0x1,%eax
    603f:	0f 86 3c ff ff ff    	jbe    5f81 <print_identify_info+0x3c>
    6045:	8b 45 08             	mov    0x8(%ebp),%eax
    6048:	83 c0 62             	add    $0x62,%eax
    604b:	0f b7 00             	movzwl (%eax),%eax
    604e:	0f b7 c0             	movzwl %ax,%eax
    6051:	89 45 e8             	mov    %eax,-0x18(%ebp)
    6054:	8b 45 e8             	mov    -0x18(%ebp),%eax
    6057:	25 00 02 00 00       	and    $0x200,%eax
    605c:	85 c0                	test   %eax,%eax
    605e:	74 07                	je     6067 <print_identify_info+0x122>
    6060:	b8 12 b8 00 00       	mov    $0xb812,%eax
    6065:	eb 05                	jmp    606c <print_identify_info+0x127>
    6067:	b8 16 b8 00 00       	mov    $0xb816,%eax
    606c:	83 ec 08             	sub    $0x8,%esp
    606f:	50                   	push   %eax
    6070:	68 19 b8 00 00       	push   $0xb819
    6075:	e8 2a 02 00 00       	call   62a4 <printf>
    607a:	83 c4 10             	add    $0x10,%esp
    607d:	8b 45 08             	mov    0x8(%ebp),%eax
    6080:	05 a6 00 00 00       	add    $0xa6,%eax
    6085:	0f b7 00             	movzwl (%eax),%eax
    6088:	0f b7 c0             	movzwl %ax,%eax
    608b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    608e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    6091:	25 00 04 00 00       	and    $0x400,%eax
    6096:	85 c0                	test   %eax,%eax
    6098:	74 07                	je     60a1 <print_identify_info+0x15c>
    609a:	b8 12 b8 00 00       	mov    $0xb812,%eax
    609f:	eb 05                	jmp    60a6 <print_identify_info+0x161>
    60a1:	b8 16 b8 00 00       	mov    $0xb816,%eax
    60a6:	83 ec 08             	sub    $0x8,%esp
    60a9:	50                   	push   %eax
    60aa:	68 2c b8 00 00       	push   $0xb82c
    60af:	e8 f0 01 00 00       	call   62a4 <printf>
    60b4:	83 c4 10             	add    $0x10,%esp
    60b7:	8b 45 08             	mov    0x8(%ebp),%eax
    60ba:	83 c0 7a             	add    $0x7a,%eax
    60bd:	0f b7 00             	movzwl (%eax),%eax
    60c0:	0f b7 c0             	movzwl %ax,%eax
    60c3:	c1 e0 10             	shl    $0x10,%eax
    60c6:	89 c2                	mov    %eax,%edx
    60c8:	8b 45 08             	mov    0x8(%ebp),%eax
    60cb:	83 c0 78             	add    $0x78,%eax
    60ce:	0f b7 00             	movzwl (%eax),%eax
    60d1:	0f b7 c0             	movzwl %ax,%eax
    60d4:	01 d0                	add    %edx,%eax
    60d6:	89 45 e0             	mov    %eax,-0x20(%ebp)
    60d9:	8b 45 e0             	mov    -0x20(%ebp),%eax
    60dc:	c1 e0 09             	shl    $0x9,%eax
    60df:	89 c1                	mov    %eax,%ecx
    60e1:	ba 83 de 1b 43       	mov    $0x431bde83,%edx
    60e6:	89 c8                	mov    %ecx,%eax
    60e8:	f7 ea                	imul   %edx
    60ea:	c1 fa 12             	sar    $0x12,%edx
    60ed:	89 c8                	mov    %ecx,%eax
    60ef:	c1 f8 1f             	sar    $0x1f,%eax
    60f2:	29 c2                	sub    %eax,%edx
    60f4:	89 d0                	mov    %edx,%eax
    60f6:	83 ec 08             	sub    $0x8,%esp
    60f9:	50                   	push   %eax
    60fa:	68 41 b8 00 00       	push   $0xb841
    60ff:	e8 a0 01 00 00       	call   62a4 <printf>
    6104:	83 c4 10             	add    $0x10,%esp
    6107:	90                   	nop
    6108:	c9                   	leave  
    6109:	c3                   	ret    

0000610a <hd_cmd_out>:
    610a:	55                   	push   %ebp
    610b:	89 e5                	mov    %esp,%ebp
    610d:	83 ec 08             	sub    $0x8,%esp
    6110:	83 ec 04             	sub    $0x4,%esp
    6113:	68 10 27 00 00       	push   $0x2710
    6118:	6a 00                	push   $0x0
    611a:	68 80 00 00 00       	push   $0x80
    611f:	e8 04 01 00 00       	call   6228 <waitfor>
    6124:	83 c4 10             	add    $0x10,%esp
    6127:	85 c0                	test   %eax,%eax
    6129:	75 10                	jne    613b <hd_cmd_out+0x31>
    612b:	83 ec 0c             	sub    $0xc,%esp
    612e:	68 50 b8 00 00       	push   $0xb850
    6133:	e8 d7 ba ff ff       	call   1c0f <panic>
    6138:	83 c4 10             	add    $0x10,%esp
    613b:	83 ec 08             	sub    $0x8,%esp
    613e:	6a 00                	push   $0x0
    6140:	68 f6 03 00 00       	push   $0x3f6
    6145:	e8 33 05 00 00       	call   667d <out_byte>
    614a:	83 c4 10             	add    $0x10,%esp
    614d:	8b 45 08             	mov    0x8(%ebp),%eax
    6150:	0f b6 00             	movzbl (%eax),%eax
    6153:	0f b6 c0             	movzbl %al,%eax
    6156:	83 ec 08             	sub    $0x8,%esp
    6159:	50                   	push   %eax
    615a:	68 f1 01 00 00       	push   $0x1f1
    615f:	e8 19 05 00 00       	call   667d <out_byte>
    6164:	83 c4 10             	add    $0x10,%esp
    6167:	8b 45 08             	mov    0x8(%ebp),%eax
    616a:	0f b6 40 01          	movzbl 0x1(%eax),%eax
    616e:	0f b6 c0             	movzbl %al,%eax
    6171:	83 ec 08             	sub    $0x8,%esp
    6174:	50                   	push   %eax
    6175:	68 f2 01 00 00       	push   $0x1f2
    617a:	e8 fe 04 00 00       	call   667d <out_byte>
    617f:	83 c4 10             	add    $0x10,%esp
    6182:	8b 45 08             	mov    0x8(%ebp),%eax
    6185:	0f b6 40 02          	movzbl 0x2(%eax),%eax
    6189:	0f b6 c0             	movzbl %al,%eax
    618c:	83 ec 08             	sub    $0x8,%esp
    618f:	50                   	push   %eax
    6190:	68 f3 01 00 00       	push   $0x1f3
    6195:	e8 e3 04 00 00       	call   667d <out_byte>
    619a:	83 c4 10             	add    $0x10,%esp
    619d:	8b 45 08             	mov    0x8(%ebp),%eax
    61a0:	0f b6 40 03          	movzbl 0x3(%eax),%eax
    61a4:	0f b6 c0             	movzbl %al,%eax
    61a7:	83 ec 08             	sub    $0x8,%esp
    61aa:	50                   	push   %eax
    61ab:	68 f4 01 00 00       	push   $0x1f4
    61b0:	e8 c8 04 00 00       	call   667d <out_byte>
    61b5:	83 c4 10             	add    $0x10,%esp
    61b8:	8b 45 08             	mov    0x8(%ebp),%eax
    61bb:	0f b6 40 04          	movzbl 0x4(%eax),%eax
    61bf:	0f b6 c0             	movzbl %al,%eax
    61c2:	83 ec 08             	sub    $0x8,%esp
    61c5:	50                   	push   %eax
    61c6:	68 f5 01 00 00       	push   $0x1f5
    61cb:	e8 ad 04 00 00       	call   667d <out_byte>
    61d0:	83 c4 10             	add    $0x10,%esp
    61d3:	8b 45 08             	mov    0x8(%ebp),%eax
    61d6:	0f b6 40 05          	movzbl 0x5(%eax),%eax
    61da:	0f b6 c0             	movzbl %al,%eax
    61dd:	83 ec 08             	sub    $0x8,%esp
    61e0:	50                   	push   %eax
    61e1:	68 f6 01 00 00       	push   $0x1f6
    61e6:	e8 92 04 00 00       	call   667d <out_byte>
    61eb:	83 c4 10             	add    $0x10,%esp
    61ee:	8b 45 08             	mov    0x8(%ebp),%eax
    61f1:	0f b6 40 06          	movzbl 0x6(%eax),%eax
    61f5:	0f b6 c0             	movzbl %al,%eax
    61f8:	83 ec 08             	sub    $0x8,%esp
    61fb:	50                   	push   %eax
    61fc:	68 f7 01 00 00       	push   $0x1f7
    6201:	e8 77 04 00 00       	call   667d <out_byte>
    6206:	83 c4 10             	add    $0x10,%esp
    6209:	90                   	nop
    620a:	c9                   	leave  
    620b:	c3                   	ret    

0000620c <interrupt_wait>:
    620c:	55                   	push   %ebp
    620d:	89 e5                	mov    %esp,%ebp
    620f:	83 ec 38             	sub    $0x38,%esp
    6212:	83 ec 04             	sub    $0x4,%esp
    6215:	8d 45 c8             	lea    -0x38(%ebp),%eax
    6218:	50                   	push   %eax
    6219:	6a f6                	push   $0xfffffff6
    621b:	6a 02                	push   $0x2
    621d:	e8 95 dc ff ff       	call   3eb7 <send_recv>
    6222:	83 c4 10             	add    $0x10,%esp
    6225:	90                   	nop
    6226:	c9                   	leave  
    6227:	c3                   	ret    

00006228 <waitfor>:
    6228:	55                   	push   %ebp
    6229:	89 e5                	mov    %esp,%ebp
    622b:	83 ec 18             	sub    $0x18,%esp
    622e:	e8 12 b5 ff ff       	call   1745 <get_ticks>
    6233:	89 45 f4             	mov    %eax,-0xc(%ebp)
    6236:	eb 22                	jmp    625a <waitfor+0x32>
    6238:	83 ec 0c             	sub    $0xc,%esp
    623b:	68 f7 01 00 00       	push   $0x1f7
    6240:	e8 44 04 00 00       	call   6689 <in_byte>
    6245:	83 c4 10             	add    $0x10,%esp
    6248:	0f b6 c0             	movzbl %al,%eax
    624b:	23 45 08             	and    0x8(%ebp),%eax
    624e:	39 45 0c             	cmp    %eax,0xc(%ebp)
    6251:	75 07                	jne    625a <waitfor+0x32>
    6253:	b8 01 00 00 00       	mov    $0x1,%eax
    6258:	eb 1d                	jmp    6277 <waitfor+0x4f>
    625a:	e8 e6 b4 ff ff       	call   1745 <get_ticks>
    625f:	2b 45 f4             	sub    -0xc(%ebp),%eax
    6262:	89 c2                	mov    %eax,%edx
    6264:	89 d0                	mov    %edx,%eax
    6266:	c1 e0 02             	shl    $0x2,%eax
    6269:	01 d0                	add    %edx,%eax
    626b:	01 c0                	add    %eax,%eax
    626d:	39 45 10             	cmp    %eax,0x10(%ebp)
    6270:	7f c6                	jg     6238 <waitfor+0x10>
    6272:	b8 00 00 00 00       	mov    $0x0,%eax
    6277:	c9                   	leave  
    6278:	c3                   	ret    

00006279 <hd_handler>:
    6279:	55                   	push   %ebp
    627a:	89 e5                	mov    %esp,%ebp
    627c:	83 ec 08             	sub    $0x8,%esp
    627f:	83 ec 0c             	sub    $0xc,%esp
    6282:	68 f7 01 00 00       	push   $0x1f7
    6287:	e8 fd 03 00 00       	call   6689 <in_byte>
    628c:	83 c4 10             	add    $0x10,%esp
    628f:	a2 00 00 01 00       	mov    %al,0x10000
    6294:	83 ec 0c             	sub    $0xc,%esp
    6297:	6a 02                	push   $0x2
    6299:	e8 77 eb ff ff       	call   4e15 <inform_int>
    629e:	83 c4 10             	add    $0x10,%esp
    62a1:	90                   	nop
    62a2:	c9                   	leave  
    62a3:	c3                   	ret    

000062a4 <printf>:
    62a4:	55                   	push   %ebp
    62a5:	89 e5                	mov    %esp,%ebp
    62a7:	81 ec 18 01 00 00    	sub    $0x118,%esp
    62ad:	8d 45 0c             	lea    0xc(%ebp),%eax
    62b0:	89 45 f4             	mov    %eax,-0xc(%ebp)
    62b3:	8b 45 08             	mov    0x8(%ebp),%eax
    62b6:	83 ec 04             	sub    $0x4,%esp
    62b9:	ff 75 f4             	pushl  -0xc(%ebp)
    62bc:	50                   	push   %eax
    62bd:	8d 85 f0 fe ff ff    	lea    -0x110(%ebp),%eax
    62c3:	50                   	push   %eax
    62c4:	e8 91 00 00 00       	call   635a <vsprintf>
    62c9:	83 c4 10             	add    $0x10,%esp
    62cc:	89 45 f0             	mov    %eax,-0x10(%ebp)
    62cf:	8d 95 f0 fe ff ff    	lea    -0x110(%ebp),%edx
    62d5:	8b 45 f0             	mov    -0x10(%ebp),%eax
    62d8:	01 d0                	add    %edx,%eax
    62da:	c6 00 00             	movb   $0x0,(%eax)
    62dd:	83 ec 0c             	sub    $0xc,%esp
    62e0:	8d 85 f0 fe ff ff    	lea    -0x110(%ebp),%eax
    62e6:	50                   	push   %eax
    62e7:	e8 38 b1 ff ff       	call   1424 <printx>
    62ec:	83 c4 10             	add    $0x10,%esp
    62ef:	8b 45 f0             	mov    -0x10(%ebp),%eax
    62f2:	c9                   	leave  
    62f3:	c3                   	ret    

000062f4 <i2a>:
    62f4:	55                   	push   %ebp
    62f5:	89 e5                	mov    %esp,%ebp
    62f7:	53                   	push   %ebx
    62f8:	83 ec 14             	sub    $0x14,%esp
    62fb:	8b 45 08             	mov    0x8(%ebp),%eax
    62fe:	99                   	cltd   
    62ff:	f7 7d 0c             	idivl  0xc(%ebp)
    6302:	89 55 f4             	mov    %edx,-0xc(%ebp)
    6305:	8b 45 08             	mov    0x8(%ebp),%eax
    6308:	99                   	cltd   
    6309:	f7 7d 0c             	idivl  0xc(%ebp)
    630c:	89 45 f0             	mov    %eax,-0x10(%ebp)
    630f:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    6313:	74 14                	je     6329 <i2a+0x35>
    6315:	83 ec 04             	sub    $0x4,%esp
    6318:	ff 75 10             	pushl  0x10(%ebp)
    631b:	ff 75 0c             	pushl  0xc(%ebp)
    631e:	ff 75 f0             	pushl  -0x10(%ebp)
    6321:	e8 ce ff ff ff       	call   62f4 <i2a>
    6326:	83 c4 10             	add    $0x10,%esp
    6329:	83 7d f4 09          	cmpl   $0x9,-0xc(%ebp)
    632d:	7f 0a                	jg     6339 <i2a+0x45>
    632f:	8b 45 f4             	mov    -0xc(%ebp),%eax
    6332:	83 c0 30             	add    $0x30,%eax
    6335:	89 c3                	mov    %eax,%ebx
    6337:	eb 08                	jmp    6341 <i2a+0x4d>
    6339:	8b 45 f4             	mov    -0xc(%ebp),%eax
    633c:	83 c0 37             	add    $0x37,%eax
    633f:	89 c3                	mov    %eax,%ebx
    6341:	8b 45 10             	mov    0x10(%ebp),%eax
    6344:	8b 00                	mov    (%eax),%eax
    6346:	8d 48 01             	lea    0x1(%eax),%ecx
    6349:	8b 55 10             	mov    0x10(%ebp),%edx
    634c:	89 0a                	mov    %ecx,(%edx)
    634e:	88 18                	mov    %bl,(%eax)
    6350:	8b 45 10             	mov    0x10(%ebp),%eax
    6353:	8b 00                	mov    (%eax),%eax
    6355:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    6358:	c9                   	leave  
    6359:	c3                   	ret    

0000635a <vsprintf>:
    635a:	55                   	push   %ebp
    635b:	89 e5                	mov    %esp,%ebp
    635d:	81 ec 28 04 00 00    	sub    $0x428,%esp
    6363:	8b 45 10             	mov    0x10(%ebp),%eax
    6366:	89 45 f0             	mov    %eax,-0x10(%ebp)
    6369:	8b 45 08             	mov    0x8(%ebp),%eax
    636c:	89 45 f4             	mov    %eax,-0xc(%ebp)
    636f:	e9 47 02 00 00       	jmp    65bb <vsprintf+0x261>
    6374:	8b 45 0c             	mov    0xc(%ebp),%eax
    6377:	0f b6 00             	movzbl (%eax),%eax
    637a:	3c 25                	cmp    $0x25,%al
    637c:	74 16                	je     6394 <vsprintf+0x3a>
    637e:	8b 45 f4             	mov    -0xc(%ebp),%eax
    6381:	8d 50 01             	lea    0x1(%eax),%edx
    6384:	89 55 f4             	mov    %edx,-0xc(%ebp)
    6387:	8b 55 0c             	mov    0xc(%ebp),%edx
    638a:	0f b6 12             	movzbl (%edx),%edx
    638d:	88 10                	mov    %dl,(%eax)
    638f:	e9 23 02 00 00       	jmp    65b7 <vsprintf+0x25d>
    6394:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    639b:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
    639f:	8b 45 0c             	mov    0xc(%ebp),%eax
    63a2:	0f b6 00             	movzbl (%eax),%eax
    63a5:	3c 25                	cmp    $0x25,%al
    63a7:	75 16                	jne    63bf <vsprintf+0x65>
    63a9:	8b 45 f4             	mov    -0xc(%ebp),%eax
    63ac:	8d 50 01             	lea    0x1(%eax),%edx
    63af:	89 55 f4             	mov    %edx,-0xc(%ebp)
    63b2:	8b 55 0c             	mov    0xc(%ebp),%edx
    63b5:	0f b6 12             	movzbl (%edx),%edx
    63b8:	88 10                	mov    %dl,(%eax)
    63ba:	e9 f8 01 00 00       	jmp    65b7 <vsprintf+0x25d>
    63bf:	8b 45 0c             	mov    0xc(%ebp),%eax
    63c2:	0f b6 00             	movzbl (%eax),%eax
    63c5:	3c 30                	cmp    $0x30,%al
    63c7:	75 0a                	jne    63d3 <vsprintf+0x79>
    63c9:	c6 45 eb 30          	movb   $0x30,-0x15(%ebp)
    63cd:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
    63d1:	eb 28                	jmp    63fb <vsprintf+0xa1>
    63d3:	c6 45 eb 20          	movb   $0x20,-0x15(%ebp)
    63d7:	eb 22                	jmp    63fb <vsprintf+0xa1>
    63d9:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    63dc:	89 d0                	mov    %edx,%eax
    63de:	c1 e0 02             	shl    $0x2,%eax
    63e1:	01 d0                	add    %edx,%eax
    63e3:	01 c0                	add    %eax,%eax
    63e5:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    63e8:	8b 45 0c             	mov    0xc(%ebp),%eax
    63eb:	0f b6 00             	movzbl (%eax),%eax
    63ee:	0f be c0             	movsbl %al,%eax
    63f1:	83 e8 30             	sub    $0x30,%eax
    63f4:	01 45 e4             	add    %eax,-0x1c(%ebp)
    63f7:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
    63fb:	8b 45 0c             	mov    0xc(%ebp),%eax
    63fe:	0f b6 00             	movzbl (%eax),%eax
    6401:	3c 2f                	cmp    $0x2f,%al
    6403:	76 0a                	jbe    640f <vsprintf+0xb5>
    6405:	8b 45 0c             	mov    0xc(%ebp),%eax
    6408:	0f b6 00             	movzbl (%eax),%eax
    640b:	3c 39                	cmp    $0x39,%al
    640d:	76 ca                	jbe    63d9 <vsprintf+0x7f>
    640f:	8d 85 e0 fb ff ff    	lea    -0x420(%ebp),%eax
    6415:	89 85 dc fb ff ff    	mov    %eax,-0x424(%ebp)
    641b:	8b 85 dc fb ff ff    	mov    -0x424(%ebp),%eax
    6421:	83 ec 04             	sub    $0x4,%esp
    6424:	68 00 04 00 00       	push   $0x400
    6429:	6a 00                	push   $0x0
    642b:	50                   	push   %eax
    642c:	e8 b8 04 00 00       	call   68e9 <memset>
    6431:	83 c4 10             	add    $0x10,%esp
    6434:	8b 45 0c             	mov    0xc(%ebp),%eax
    6437:	0f b6 00             	movzbl (%eax),%eax
    643a:	0f be c0             	movsbl %al,%eax
    643d:	83 f8 64             	cmp    $0x64,%eax
    6440:	74 67                	je     64a9 <vsprintf+0x14f>
    6442:	83 f8 64             	cmp    $0x64,%eax
    6445:	7f 0a                	jg     6451 <vsprintf+0xf7>
    6447:	83 f8 63             	cmp    $0x63,%eax
    644a:	74 18                	je     6464 <vsprintf+0x10a>
    644c:	e9 d6 00 00 00       	jmp    6527 <vsprintf+0x1cd>
    6451:	83 f8 73             	cmp    $0x73,%eax
    6454:	0f 84 8f 00 00 00    	je     64e9 <vsprintf+0x18f>
    645a:	83 f8 78             	cmp    $0x78,%eax
    645d:	74 25                	je     6484 <vsprintf+0x12a>
    645f:	e9 c3 00 00 00       	jmp    6527 <vsprintf+0x1cd>
    6464:	8b 85 dc fb ff ff    	mov    -0x424(%ebp),%eax
    646a:	8d 50 01             	lea    0x1(%eax),%edx
    646d:	89 95 dc fb ff ff    	mov    %edx,-0x424(%ebp)
    6473:	8b 55 f0             	mov    -0x10(%ebp),%edx
    6476:	0f b6 12             	movzbl (%edx),%edx
    6479:	88 10                	mov    %dl,(%eax)
    647b:	83 45 f0 04          	addl   $0x4,-0x10(%ebp)
    647f:	e9 a3 00 00 00       	jmp    6527 <vsprintf+0x1cd>
    6484:	8b 45 f0             	mov    -0x10(%ebp),%eax
    6487:	8b 00                	mov    (%eax),%eax
    6489:	89 45 ec             	mov    %eax,-0x14(%ebp)
    648c:	83 ec 04             	sub    $0x4,%esp
    648f:	8d 85 dc fb ff ff    	lea    -0x424(%ebp),%eax
    6495:	50                   	push   %eax
    6496:	6a 10                	push   $0x10
    6498:	ff 75 ec             	pushl  -0x14(%ebp)
    649b:	e8 54 fe ff ff       	call   62f4 <i2a>
    64a0:	83 c4 10             	add    $0x10,%esp
    64a3:	83 45 f0 04          	addl   $0x4,-0x10(%ebp)
    64a7:	eb 7e                	jmp    6527 <vsprintf+0x1cd>
    64a9:	8b 45 f0             	mov    -0x10(%ebp),%eax
    64ac:	8b 00                	mov    (%eax),%eax
    64ae:	89 45 ec             	mov    %eax,-0x14(%ebp)
    64b1:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
    64b5:	79 15                	jns    64cc <vsprintf+0x172>
    64b7:	f7 5d ec             	negl   -0x14(%ebp)
    64ba:	8b 85 dc fb ff ff    	mov    -0x424(%ebp),%eax
    64c0:	8d 50 01             	lea    0x1(%eax),%edx
    64c3:	89 95 dc fb ff ff    	mov    %edx,-0x424(%ebp)
    64c9:	c6 00 2d             	movb   $0x2d,(%eax)
    64cc:	83 ec 04             	sub    $0x4,%esp
    64cf:	8d 85 dc fb ff ff    	lea    -0x424(%ebp),%eax
    64d5:	50                   	push   %eax
    64d6:	6a 0a                	push   $0xa
    64d8:	ff 75 ec             	pushl  -0x14(%ebp)
    64db:	e8 14 fe ff ff       	call   62f4 <i2a>
    64e0:	83 c4 10             	add    $0x10,%esp
    64e3:	83 45 f0 04          	addl   $0x4,-0x10(%ebp)
    64e7:	eb 3e                	jmp    6527 <vsprintf+0x1cd>
    64e9:	8b 45 f0             	mov    -0x10(%ebp),%eax
    64ec:	8b 10                	mov    (%eax),%edx
    64ee:	8b 85 dc fb ff ff    	mov    -0x424(%ebp),%eax
    64f4:	83 ec 08             	sub    $0x8,%esp
    64f7:	52                   	push   %edx
    64f8:	50                   	push   %eax
    64f9:	e8 0c 04 00 00       	call   690a <strcpy>
    64fe:	83 c4 10             	add    $0x10,%esp
    6501:	8b 45 f0             	mov    -0x10(%ebp),%eax
    6504:	8b 00                	mov    (%eax),%eax
    6506:	83 ec 0c             	sub    $0xc,%esp
    6509:	50                   	push   %eax
    650a:	e8 13 04 00 00       	call   6922 <strlen>
    650f:	83 c4 10             	add    $0x10,%esp
    6512:	89 c2                	mov    %eax,%edx
    6514:	8b 85 dc fb ff ff    	mov    -0x424(%ebp),%eax
    651a:	01 d0                	add    %edx,%eax
    651c:	89 85 dc fb ff ff    	mov    %eax,-0x424(%ebp)
    6522:	83 45 f0 04          	addl   $0x4,-0x10(%ebp)
    6526:	90                   	nop
    6527:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
    652e:	eb 13                	jmp    6543 <vsprintf+0x1e9>
    6530:	8b 45 f4             	mov    -0xc(%ebp),%eax
    6533:	8d 50 01             	lea    0x1(%eax),%edx
    6536:	89 55 f4             	mov    %edx,-0xc(%ebp)
    6539:	0f b6 55 eb          	movzbl -0x15(%ebp),%edx
    653d:	88 10                	mov    %dl,(%eax)
    653f:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
    6543:	83 ec 0c             	sub    $0xc,%esp
    6546:	8d 85 e0 fb ff ff    	lea    -0x420(%ebp),%eax
    654c:	50                   	push   %eax
    654d:	e8 d0 03 00 00       	call   6922 <strlen>
    6552:	83 c4 10             	add    $0x10,%esp
    6555:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
    6558:	7e 1b                	jle    6575 <vsprintf+0x21b>
    655a:	83 ec 0c             	sub    $0xc,%esp
    655d:	8d 85 e0 fb ff ff    	lea    -0x420(%ebp),%eax
    6563:	50                   	push   %eax
    6564:	e8 b9 03 00 00       	call   6922 <strlen>
    6569:	83 c4 10             	add    $0x10,%esp
    656c:	89 c2                	mov    %eax,%edx
    656e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    6571:	29 d0                	sub    %edx,%eax
    6573:	eb 05                	jmp    657a <vsprintf+0x220>
    6575:	b8 00 00 00 00       	mov    $0x0,%eax
    657a:	3b 45 e0             	cmp    -0x20(%ebp),%eax
    657d:	7f b1                	jg     6530 <vsprintf+0x1d6>
    657f:	8d 85 e0 fb ff ff    	lea    -0x420(%ebp),%eax
    6585:	89 85 dc fb ff ff    	mov    %eax,-0x424(%ebp)
    658b:	eb 1d                	jmp    65aa <vsprintf+0x250>
    658d:	8b 95 dc fb ff ff    	mov    -0x424(%ebp),%edx
    6593:	8d 42 01             	lea    0x1(%edx),%eax
    6596:	89 85 dc fb ff ff    	mov    %eax,-0x424(%ebp)
    659c:	8b 45 f4             	mov    -0xc(%ebp),%eax
    659f:	8d 48 01             	lea    0x1(%eax),%ecx
    65a2:	89 4d f4             	mov    %ecx,-0xc(%ebp)
    65a5:	0f b6 12             	movzbl (%edx),%edx
    65a8:	88 10                	mov    %dl,(%eax)
    65aa:	8b 85 dc fb ff ff    	mov    -0x424(%ebp),%eax
    65b0:	0f b6 00             	movzbl (%eax),%eax
    65b3:	84 c0                	test   %al,%al
    65b5:	75 d6                	jne    658d <vsprintf+0x233>
    65b7:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
    65bb:	8b 45 0c             	mov    0xc(%ebp),%eax
    65be:	0f b6 00             	movzbl (%eax),%eax
    65c1:	84 c0                	test   %al,%al
    65c3:	0f 85 ab fd ff ff    	jne    6374 <vsprintf+0x1a>
    65c9:	8b 45 f4             	mov    -0xc(%ebp),%eax
    65cc:	c6 00 00             	movb   $0x0,(%eax)
    65cf:	8b 45 f4             	mov    -0xc(%ebp),%eax
    65d2:	2b 45 08             	sub    0x8(%ebp),%eax
    65d5:	c9                   	leave  
    65d6:	c3                   	ret    

000065d7 <sprintf>:
    65d7:	55                   	push   %ebp
    65d8:	89 e5                	mov    %esp,%ebp
    65da:	83 ec 18             	sub    $0x18,%esp
    65dd:	8d 45 0c             	lea    0xc(%ebp),%eax
    65e0:	83 c0 04             	add    $0x4,%eax
    65e3:	89 45 f4             	mov    %eax,-0xc(%ebp)
    65e6:	8b 45 0c             	mov    0xc(%ebp),%eax
    65e9:	83 ec 04             	sub    $0x4,%esp
    65ec:	ff 75 f4             	pushl  -0xc(%ebp)
    65ef:	50                   	push   %eax
    65f0:	ff 75 08             	pushl  0x8(%ebp)
    65f3:	e8 62 fd ff ff       	call   635a <vsprintf>
    65f8:	83 c4 10             	add    $0x10,%esp
    65fb:	c9                   	leave  
    65fc:	c3                   	ret    
    65fd:	66 90                	xchg   %ax,%ax
    65ff:	90                   	nop

00006600 <disp_str>:
    6600:	55                   	push   %ebp
    6601:	89 e5                	mov    %esp,%ebp
    6603:	8b 75 08             	mov    0x8(%ebp),%esi
    6606:	8b 3d 24 a8 04 00    	mov    0x4a824,%edi
    660c:	b4 0f                	mov    $0xf,%ah

0000660e <disp_str.1>:
    660e:	ac                   	lods   %ds:(%esi),%al
    660f:	84 c0                	test   %al,%al
    6611:	74 23                	je     6636 <disp_str.2>
    6613:	3c 0a                	cmp    $0xa,%al
    6615:	75 16                	jne    662d <disp_str.3>
    6617:	50                   	push   %eax
    6618:	89 f8                	mov    %edi,%eax
    661a:	b3 a0                	mov    $0xa0,%bl
    661c:	f6 f3                	div    %bl
    661e:	25 ff 00 00 00       	and    $0xff,%eax
    6623:	40                   	inc    %eax
    6624:	b3 a0                	mov    $0xa0,%bl
    6626:	f6 e3                	mul    %bl
    6628:	89 c7                	mov    %eax,%edi
    662a:	58                   	pop    %eax
    662b:	eb e1                	jmp    660e <disp_str.1>

0000662d <disp_str.3>:
    662d:	65 66 89 07          	mov    %ax,%gs:(%edi)
    6631:	83 c7 02             	add    $0x2,%edi
    6634:	eb d8                	jmp    660e <disp_str.1>

00006636 <disp_str.2>:
    6636:	89 3d 24 a8 04 00    	mov    %edi,0x4a824
    663c:	5d                   	pop    %ebp
    663d:	c3                   	ret    

0000663e <disp_color_str>:
    663e:	55                   	push   %ebp
    663f:	89 e5                	mov    %esp,%ebp
    6641:	8b 75 08             	mov    0x8(%ebp),%esi
    6644:	8b 3d 24 a8 04 00    	mov    0x4a824,%edi
    664a:	8a 65 0c             	mov    0xc(%ebp),%ah

0000664d <disp_color_str.1>:
    664d:	ac                   	lods   %ds:(%esi),%al
    664e:	84 c0                	test   %al,%al
    6650:	74 23                	je     6675 <disp_color_str.2>
    6652:	3c 0a                	cmp    $0xa,%al
    6654:	75 16                	jne    666c <disp_color_str.3>
    6656:	50                   	push   %eax
    6657:	89 f8                	mov    %edi,%eax
    6659:	b3 a0                	mov    $0xa0,%bl
    665b:	f6 f3                	div    %bl
    665d:	25 ff 00 00 00       	and    $0xff,%eax
    6662:	40                   	inc    %eax
    6663:	b3 a0                	mov    $0xa0,%bl
    6665:	f6 e3                	mul    %bl
    6667:	89 c7                	mov    %eax,%edi
    6669:	58                   	pop    %eax
    666a:	eb e1                	jmp    664d <disp_color_str.1>

0000666c <disp_color_str.3>:
    666c:	65 66 89 07          	mov    %ax,%gs:(%edi)
    6670:	83 c7 02             	add    $0x2,%edi
    6673:	eb d8                	jmp    664d <disp_color_str.1>

00006675 <disp_color_str.2>:
    6675:	89 3d 24 a8 04 00    	mov    %edi,0x4a824
    667b:	5d                   	pop    %ebp
    667c:	c3                   	ret    

0000667d <out_byte>:
    667d:	8b 54 24 04          	mov    0x4(%esp),%edx
    6681:	8a 44 24 08          	mov    0x8(%esp),%al
    6685:	ee                   	out    %al,(%dx)
    6686:	90                   	nop
    6687:	90                   	nop
    6688:	c3                   	ret    

00006689 <in_byte>:
    6689:	8b 54 24 04          	mov    0x4(%esp),%edx
    668d:	31 c0                	xor    %eax,%eax
    668f:	ec                   	in     (%dx),%al
    6690:	90                   	nop
    6691:	90                   	nop
    6692:	c3                   	ret    

00006693 <port_read>:
    6693:	8b 54 24 04          	mov    0x4(%esp),%edx
    6697:	8b 7c 24 08          	mov    0x8(%esp),%edi
    669b:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
    669f:	d1 e9                	shr    %ecx
    66a1:	fc                   	cld    
    66a2:	f3 66 6d             	rep insw (%dx),%es:(%edi)
    66a5:	c3                   	ret    

000066a6 <port_write>:
    66a6:	8b 54 24 04          	mov    0x4(%esp),%edx
    66aa:	8b 74 24 08          	mov    0x8(%esp),%esi
    66ae:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
    66b2:	d1 e9                	shr    %ecx
    66b4:	fc                   	cld    
    66b5:	f3 66 6f             	rep outsw %ds:(%esi),(%dx)
    66b8:	c3                   	ret    

000066b9 <disable_irq>:
    66b9:	8b 4c 24 04          	mov    0x4(%esp),%ecx
    66bd:	9c                   	pushf  
    66be:	fa                   	cli    
    66bf:	b4 01                	mov    $0x1,%ah
    66c1:	d2 c4                	rol    %cl,%ah
    66c3:	80 f9 08             	cmp    $0x8,%cl
    66c6:	73 11                	jae    66d9 <disable_8>

000066c8 <disable_0>:
    66c8:	e4 21                	in     $0x21,%al
    66ca:	84 e0                	test   %ah,%al
    66cc:	75 1c                	jne    66ea <dis_already>
    66ce:	08 e0                	or     %ah,%al
    66d0:	e6 21                	out    %al,$0x21
    66d2:	9d                   	popf   
    66d3:	b8 01 00 00 00       	mov    $0x1,%eax
    66d8:	c3                   	ret    

000066d9 <disable_8>:
    66d9:	e4 a1                	in     $0xa1,%al
    66db:	84 e0                	test   %ah,%al
    66dd:	75 0b                	jne    66ea <dis_already>
    66df:	08 e0                	or     %ah,%al
    66e1:	e6 a1                	out    %al,$0xa1
    66e3:	9d                   	popf   
    66e4:	b8 01 00 00 00       	mov    $0x1,%eax
    66e9:	c3                   	ret    

000066ea <dis_already>:
    66ea:	9d                   	popf   
    66eb:	31 c0                	xor    %eax,%eax
    66ed:	c3                   	ret    

000066ee <enable_irq>:
    66ee:	8b 4c 24 04          	mov    0x4(%esp),%ecx
    66f2:	9c                   	pushf  
    66f3:	fa                   	cli    
    66f4:	b4 fe                	mov    $0xfe,%ah
    66f6:	d2 c4                	rol    %cl,%ah
    66f8:	80 f9 08             	cmp    $0x8,%cl
    66fb:	73 08                	jae    6705 <enable_8>

000066fd <enable_0>:
    66fd:	e4 21                	in     $0x21,%al
    66ff:	20 e0                	and    %ah,%al
    6701:	e6 21                	out    %al,$0x21
    6703:	9d                   	popf   
    6704:	c3                   	ret    

00006705 <enable_8>:
    6705:	e4 a1                	in     $0xa1,%al
    6707:	20 e0                	and    %ah,%al
    6709:	e6 a1                	out    %al,$0xa1
    670b:	9d                   	popf   
    670c:	c3                   	ret    

0000670d <disable_int>:
    670d:	fa                   	cli    
    670e:	c3                   	ret    

0000670f <enable_int>:
    670f:	fb                   	sti    
    6710:	c3                   	ret    

00006711 <glitter>:
    6711:	50                   	push   %eax
    6712:	53                   	push   %ebx
    6713:	52                   	push   %edx
    6714:	a1 50 67 00 00       	mov    0x6750,%eax
    6719:	40                   	inc    %eax
    671a:	83 f8 42             	cmp    $0x42,%eax
    671d:	74 02                	je     6721 <glitter.1>
    671f:	eb 02                	jmp    6723 <glitter.2>

00006721 <glitter.1>:
    6721:	31 c0                	xor    %eax,%eax

00006723 <glitter.2>:
    6723:	a3 50 67 00 00       	mov    %eax,0x6750
    6728:	8a 90 54 67 00 00    	mov    0x6754(%eax),%dl
    672e:	31 c0                	xor    %eax,%eax
    6730:	8a 44 24 10          	mov    0x10(%esp),%al
    6734:	b3 50                	mov    $0x50,%bl
    6736:	f6 e3                	mul    %bl
    6738:	66 8b 5c 24 14       	mov    0x14(%esp),%bx
    673d:	66 01 d8             	add    %bx,%ax
    6740:	66 d1 e0             	shl    %ax
    6743:	0f b7 c0             	movzwl %ax,%eax
    6746:	65 88 10             	mov    %dl,%gs:(%eax)
    6749:	40                   	inc    %eax
    674a:	65 c6 00 04          	movb   $0x4,%gs:(%eax)
    674e:	eb 46                	jmp    6796 <glitter.end>

00006750 <glitter.current_char>:
    6750:	00 00                	add    %al,(%eax)
	...

00006754 <glitter.glitter_str>:
    6754:	2d 5c 7c 2f 31       	sub    $0x312f7c5c,%eax
    6759:	32 33                	xor    (%ebx),%dh
    675b:	34 35                	xor    $0x35,%al
    675d:	36 37                	ss aaa 
    675f:	38 39                	cmp    %bh,(%ecx)
    6761:	30 61 62             	xor    %ah,0x62(%ecx)
    6764:	63 64 65 66          	arpl   %sp,0x66(%ebp,%eiz,2)
    6768:	67 68 69 6a 6b 6c    	addr16 push $0x6c6b6a69
    676e:	6d                   	insl   (%dx),%es:(%edi)
    676f:	6e                   	outsb  %ds:(%esi),(%dx)
    6770:	6f                   	outsl  %ds:(%esi),(%dx)
    6771:	70 71                	jo     67e4 <itoa+0x4a>
    6773:	72 73                	jb     67e8 <itoa+0x4e>
    6775:	74 75                	je     67ec <itoa+0x52>
    6777:	76 77                	jbe    67f0 <itoa+0x56>
    6779:	78 79                	js     67f4 <itoa+0x5a>
    677b:	7a 41                	jp     67be <itoa+0x24>
    677d:	42                   	inc    %edx
    677e:	43                   	inc    %ebx
    677f:	44                   	inc    %esp
    6780:	45                   	inc    %ebp
    6781:	46                   	inc    %esi
    6782:	47                   	inc    %edi
    6783:	48                   	dec    %eax
    6784:	49                   	dec    %ecx
    6785:	4a                   	dec    %edx
    6786:	4b                   	dec    %ebx
    6787:	4c                   	dec    %esp
    6788:	4d                   	dec    %ebp
    6789:	4e                   	dec    %esi
    678a:	4f                   	dec    %edi
    678b:	50                   	push   %eax
    678c:	51                   	push   %ecx
    678d:	52                   	push   %edx
    678e:	53                   	push   %ebx
    678f:	54                   	push   %esp
    6790:	55                   	push   %ebp
    6791:	56                   	push   %esi
    6792:	57                   	push   %edi
    6793:	58                   	pop    %eax
    6794:	59                   	pop    %ecx
    6795:	5a                   	pop    %edx

00006796 <glitter.end>:
    6796:	5a                   	pop    %edx
    6797:	5b                   	pop    %ebx
    6798:	58                   	pop    %eax
    6799:	c3                   	ret    

0000679a <itoa>:
    679a:	55                   	push   %ebp
    679b:	89 e5                	mov    %esp,%ebp
    679d:	83 ec 10             	sub    $0x10,%esp
    67a0:	8b 45 08             	mov    0x8(%ebp),%eax
    67a3:	89 45 fc             	mov    %eax,-0x4(%ebp)
    67a6:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    67ad:	8b 45 fc             	mov    -0x4(%ebp),%eax
    67b0:	8d 50 01             	lea    0x1(%eax),%edx
    67b3:	89 55 fc             	mov    %edx,-0x4(%ebp)
    67b6:	c6 00 30             	movb   $0x30,(%eax)
    67b9:	8b 45 fc             	mov    -0x4(%ebp),%eax
    67bc:	8d 50 01             	lea    0x1(%eax),%edx
    67bf:	89 55 fc             	mov    %edx,-0x4(%ebp)
    67c2:	c6 00 78             	movb   $0x78,(%eax)
    67c5:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    67c9:	75 0e                	jne    67d9 <itoa+0x3f>
    67cb:	8b 45 fc             	mov    -0x4(%ebp),%eax
    67ce:	8d 50 01             	lea    0x1(%eax),%edx
    67d1:	89 55 fc             	mov    %edx,-0x4(%ebp)
    67d4:	c6 00 30             	movb   $0x30,(%eax)
    67d7:	eb 61                	jmp    683a <itoa+0xa0>
    67d9:	c7 45 f4 1c 00 00 00 	movl   $0x1c,-0xc(%ebp)
    67e0:	eb 52                	jmp    6834 <itoa+0x9a>
    67e2:	8b 45 f4             	mov    -0xc(%ebp),%eax
    67e5:	8b 55 0c             	mov    0xc(%ebp),%edx
    67e8:	89 c1                	mov    %eax,%ecx
    67ea:	d3 fa                	sar    %cl,%edx
    67ec:	89 d0                	mov    %edx,%eax
    67ee:	83 e0 0f             	and    $0xf,%eax
    67f1:	88 45 fb             	mov    %al,-0x5(%ebp)
    67f4:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    67f8:	75 06                	jne    6800 <itoa+0x66>
    67fa:	80 7d fb 00          	cmpb   $0x0,-0x5(%ebp)
    67fe:	7e 30                	jle    6830 <itoa+0x96>
    6800:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
    6807:	0f b6 45 fb          	movzbl -0x5(%ebp),%eax
    680b:	83 c0 30             	add    $0x30,%eax
    680e:	88 45 fb             	mov    %al,-0x5(%ebp)
    6811:	80 7d fb 39          	cmpb   $0x39,-0x5(%ebp)
    6815:	7e 0a                	jle    6821 <itoa+0x87>
    6817:	0f b6 45 fb          	movzbl -0x5(%ebp),%eax
    681b:	83 c0 07             	add    $0x7,%eax
    681e:	88 45 fb             	mov    %al,-0x5(%ebp)
    6821:	8b 45 fc             	mov    -0x4(%ebp),%eax
    6824:	8d 50 01             	lea    0x1(%eax),%edx
    6827:	89 55 fc             	mov    %edx,-0x4(%ebp)
    682a:	0f b6 55 fb          	movzbl -0x5(%ebp),%edx
    682e:	88 10                	mov    %dl,(%eax)
    6830:	83 6d f4 04          	subl   $0x4,-0xc(%ebp)
    6834:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    6838:	79 a8                	jns    67e2 <itoa+0x48>
    683a:	8b 45 fc             	mov    -0x4(%ebp),%eax
    683d:	c6 00 00             	movb   $0x0,(%eax)
    6840:	8b 45 08             	mov    0x8(%ebp),%eax
    6843:	c9                   	leave  
    6844:	c3                   	ret    

00006845 <disp_int>:
    6845:	55                   	push   %ebp
    6846:	89 e5                	mov    %esp,%ebp
    6848:	83 ec 18             	sub    $0x18,%esp
    684b:	ff 75 08             	pushl  0x8(%ebp)
    684e:	8d 45 e8             	lea    -0x18(%ebp),%eax
    6851:	50                   	push   %eax
    6852:	e8 43 ff ff ff       	call   679a <itoa>
    6857:	83 c4 08             	add    $0x8,%esp
    685a:	83 ec 0c             	sub    $0xc,%esp
    685d:	8d 45 e8             	lea    -0x18(%ebp),%eax
    6860:	50                   	push   %eax
    6861:	e8 9a fd ff ff       	call   6600 <disp_str>
    6866:	83 c4 10             	add    $0x10,%esp
    6869:	90                   	nop
    686a:	c9                   	leave  
    686b:	c3                   	ret    

0000686c <delay>:
    686c:	55                   	push   %ebp
    686d:	89 e5                	mov    %esp,%ebp
    686f:	83 ec 10             	sub    $0x10,%esp
    6872:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    6879:	eb 2d                	jmp    68a8 <delay+0x3c>
    687b:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
    6882:	eb 1a                	jmp    689e <delay+0x32>
    6884:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
    688b:	eb 04                	jmp    6891 <delay+0x25>
    688d:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
    6891:	81 7d f8 0f 27 00 00 	cmpl   $0x270f,-0x8(%ebp)
    6898:	7e f3                	jle    688d <delay+0x21>
    689a:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
    689e:	83 7d fc 09          	cmpl   $0x9,-0x4(%ebp)
    68a2:	7e e0                	jle    6884 <delay+0x18>
    68a4:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    68a8:	8b 45 f4             	mov    -0xc(%ebp),%eax
    68ab:	3b 45 08             	cmp    0x8(%ebp),%eax
    68ae:	7c cb                	jl     687b <delay+0xf>
    68b0:	90                   	nop
    68b1:	c9                   	leave  
    68b2:	c3                   	ret    
    68b3:	66 90                	xchg   %ax,%ax
    68b5:	66 90                	xchg   %ax,%ax
    68b7:	66 90                	xchg   %ax,%ax
    68b9:	66 90                	xchg   %ax,%ax
    68bb:	66 90                	xchg   %ax,%ax
    68bd:	66 90                	xchg   %ax,%ax
    68bf:	90                   	nop

000068c0 <memcpy>:
    68c0:	55                   	push   %ebp
    68c1:	89 e5                	mov    %esp,%ebp
    68c3:	56                   	push   %esi
    68c4:	57                   	push   %edi
    68c5:	51                   	push   %ecx
    68c6:	8b 7d 08             	mov    0x8(%ebp),%edi
    68c9:	8b 75 0c             	mov    0xc(%ebp),%esi
    68cc:	8b 4d 10             	mov    0x10(%ebp),%ecx

000068cf <memcpy.1>:
    68cf:	83 f9 00             	cmp    $0x0,%ecx
    68d2:	74 0b                	je     68df <memcpy.2>
    68d4:	3e 8a 06             	mov    %ds:(%esi),%al
    68d7:	46                   	inc    %esi
    68d8:	26 88 07             	mov    %al,%es:(%edi)
    68db:	47                   	inc    %edi
    68dc:	49                   	dec    %ecx
    68dd:	eb f0                	jmp    68cf <memcpy.1>

000068df <memcpy.2>:
    68df:	8b 45 08             	mov    0x8(%ebp),%eax
    68e2:	59                   	pop    %ecx
    68e3:	5f                   	pop    %edi
    68e4:	5e                   	pop    %esi
    68e5:	89 ec                	mov    %ebp,%esp
    68e7:	5d                   	pop    %ebp
    68e8:	c3                   	ret    

000068e9 <memset>:
    68e9:	55                   	push   %ebp
    68ea:	89 e5                	mov    %esp,%ebp
    68ec:	56                   	push   %esi
    68ed:	57                   	push   %edi
    68ee:	51                   	push   %ecx
    68ef:	8b 7d 08             	mov    0x8(%ebp),%edi
    68f2:	8b 55 0c             	mov    0xc(%ebp),%edx
    68f5:	8b 4d 10             	mov    0x10(%ebp),%ecx

000068f8 <memset.1>:
    68f8:	83 f9 00             	cmp    $0x0,%ecx
    68fb:	74 06                	je     6903 <memset.2>
    68fd:	88 17                	mov    %dl,(%edi)
    68ff:	47                   	inc    %edi
    6900:	49                   	dec    %ecx
    6901:	eb f5                	jmp    68f8 <memset.1>

00006903 <memset.2>:
    6903:	59                   	pop    %ecx
    6904:	5f                   	pop    %edi
    6905:	5e                   	pop    %esi
    6906:	89 ec                	mov    %ebp,%esp
    6908:	5d                   	pop    %ebp
    6909:	c3                   	ret    

0000690a <strcpy>:
    690a:	55                   	push   %ebp
    690b:	89 e5                	mov    %esp,%ebp
    690d:	8b 75 0c             	mov    0xc(%ebp),%esi
    6910:	8b 7d 08             	mov    0x8(%ebp),%edi

00006913 <strcpy.1>:
    6913:	8a 06                	mov    (%esi),%al
    6915:	46                   	inc    %esi
    6916:	88 07                	mov    %al,(%edi)
    6918:	47                   	inc    %edi
    6919:	3c 00                	cmp    $0x0,%al
    691b:	75 f6                	jne    6913 <strcpy.1>
    691d:	8b 45 08             	mov    0x8(%ebp),%eax
    6920:	5d                   	pop    %ebp
    6921:	c3                   	ret    

00006922 <strlen>:
    6922:	55                   	push   %ebp
    6923:	89 e5                	mov    %esp,%ebp
    6925:	b8 00 00 00 00       	mov    $0x0,%eax
    692a:	8b 75 08             	mov    0x8(%ebp),%esi

0000692d <strlen.1>:
    692d:	80 3e 00             	cmpb   $0x0,(%esi)
    6930:	74 04                	je     6936 <strlen.2>
    6932:	46                   	inc    %esi
    6933:	40                   	inc    %eax
    6934:	eb f7                	jmp    692d <strlen.1>

00006936 <strlen.2>:
    6936:	5d                   	pop    %ebp
    6937:	c3                   	ret    

00006938 <memcmp>:
    6938:	55                   	push   %ebp
    6939:	89 e5                	mov    %esp,%ebp
    693b:	83 ec 10             	sub    $0x10,%esp
    693e:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
    6942:	74 06                	je     694a <memcmp+0x12>
    6944:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    6948:	75 08                	jne    6952 <memcmp+0x1a>
    694a:	8b 45 08             	mov    0x8(%ebp),%eax
    694d:	2b 45 0c             	sub    0xc(%ebp),%eax
    6950:	eb 56                	jmp    69a8 <memcmp+0x70>
    6952:	8b 45 08             	mov    0x8(%ebp),%eax
    6955:	89 45 fc             	mov    %eax,-0x4(%ebp)
    6958:	8b 45 0c             	mov    0xc(%ebp),%eax
    695b:	89 45 f8             	mov    %eax,-0x8(%ebp)
    695e:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    6965:	eb 34                	jmp    699b <memcmp+0x63>
    6967:	8b 45 fc             	mov    -0x4(%ebp),%eax
    696a:	0f b6 10             	movzbl (%eax),%edx
    696d:	8b 45 f8             	mov    -0x8(%ebp),%eax
    6970:	0f b6 00             	movzbl (%eax),%eax
    6973:	38 c2                	cmp    %al,%dl
    6975:	74 18                	je     698f <memcmp+0x57>
    6977:	8b 45 fc             	mov    -0x4(%ebp),%eax
    697a:	0f b6 00             	movzbl (%eax),%eax
    697d:	0f be d0             	movsbl %al,%edx
    6980:	8b 45 f8             	mov    -0x8(%ebp),%eax
    6983:	0f b6 00             	movzbl (%eax),%eax
    6986:	0f be c0             	movsbl %al,%eax
    6989:	29 c2                	sub    %eax,%edx
    698b:	89 d0                	mov    %edx,%eax
    698d:	eb 19                	jmp    69a8 <memcmp+0x70>
    698f:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    6993:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
    6997:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
    699b:	8b 45 f4             	mov    -0xc(%ebp),%eax
    699e:	3b 45 10             	cmp    0x10(%ebp),%eax
    69a1:	7c c4                	jl     6967 <memcmp+0x2f>
    69a3:	b8 00 00 00 00       	mov    $0x0,%eax
    69a8:	c9                   	leave  
    69a9:	c3                   	ret    

000069aa <strcmp>:
    69aa:	55                   	push   %ebp
    69ab:	89 e5                	mov    %esp,%ebp
    69ad:	83 ec 10             	sub    $0x10,%esp
    69b0:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
    69b4:	74 06                	je     69bc <strcmp+0x12>
    69b6:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    69ba:	75 08                	jne    69c4 <strcmp+0x1a>
    69bc:	8b 45 08             	mov    0x8(%ebp),%eax
    69bf:	2b 45 0c             	sub    0xc(%ebp),%eax
    69c2:	eb 53                	jmp    6a17 <strcmp+0x6d>
    69c4:	8b 45 08             	mov    0x8(%ebp),%eax
    69c7:	89 45 fc             	mov    %eax,-0x4(%ebp)
    69ca:	8b 45 0c             	mov    0xc(%ebp),%eax
    69cd:	89 45 f8             	mov    %eax,-0x8(%ebp)
    69d0:	eb 18                	jmp    69ea <strcmp+0x40>
    69d2:	8b 45 fc             	mov    -0x4(%ebp),%eax
    69d5:	0f b6 10             	movzbl (%eax),%edx
    69d8:	8b 45 f8             	mov    -0x8(%ebp),%eax
    69db:	0f b6 00             	movzbl (%eax),%eax
    69de:	38 c2                	cmp    %al,%dl
    69e0:	75 1e                	jne    6a00 <strcmp+0x56>
    69e2:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
    69e6:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
    69ea:	8b 45 fc             	mov    -0x4(%ebp),%eax
    69ed:	0f b6 00             	movzbl (%eax),%eax
    69f0:	84 c0                	test   %al,%al
    69f2:	74 0d                	je     6a01 <strcmp+0x57>
    69f4:	8b 45 f8             	mov    -0x8(%ebp),%eax
    69f7:	0f b6 00             	movzbl (%eax),%eax
    69fa:	84 c0                	test   %al,%al
    69fc:	75 d4                	jne    69d2 <strcmp+0x28>
    69fe:	eb 01                	jmp    6a01 <strcmp+0x57>
    6a00:	90                   	nop
    6a01:	8b 45 fc             	mov    -0x4(%ebp),%eax
    6a04:	0f b6 00             	movzbl (%eax),%eax
    6a07:	0f be d0             	movsbl %al,%edx
    6a0a:	8b 45 f8             	mov    -0x8(%ebp),%eax
    6a0d:	0f b6 00             	movzbl (%eax),%eax
    6a10:	0f be c0             	movsbl %al,%eax
    6a13:	29 c2                	sub    %eax,%edx
    6a15:	89 d0                	mov    %edx,%eax
    6a17:	c9                   	leave  
    6a18:	c3                   	ret    

00006a19 <strcat>:
    6a19:	55                   	push   %ebp
    6a1a:	89 e5                	mov    %esp,%ebp
    6a1c:	83 ec 10             	sub    $0x10,%esp
    6a1f:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
    6a23:	74 06                	je     6a2b <strcat+0x12>
    6a25:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    6a29:	75 07                	jne    6a32 <strcat+0x19>
    6a2b:	b8 00 00 00 00       	mov    $0x0,%eax
    6a30:	eb 44                	jmp    6a76 <strcat+0x5d>
    6a32:	8b 45 08             	mov    0x8(%ebp),%eax
    6a35:	89 45 fc             	mov    %eax,-0x4(%ebp)
    6a38:	eb 04                	jmp    6a3e <strcat+0x25>
    6a3a:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
    6a3e:	8b 45 fc             	mov    -0x4(%ebp),%eax
    6a41:	0f b6 00             	movzbl (%eax),%eax
    6a44:	84 c0                	test   %al,%al
    6a46:	75 f2                	jne    6a3a <strcat+0x21>
    6a48:	8b 45 0c             	mov    0xc(%ebp),%eax
    6a4b:	89 45 f8             	mov    %eax,-0x8(%ebp)
    6a4e:	eb 13                	jmp    6a63 <strcat+0x4a>
    6a50:	8b 45 f8             	mov    -0x8(%ebp),%eax
    6a53:	0f b6 10             	movzbl (%eax),%edx
    6a56:	8b 45 fc             	mov    -0x4(%ebp),%eax
    6a59:	88 10                	mov    %dl,(%eax)
    6a5b:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
    6a5f:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
    6a63:	8b 45 f8             	mov    -0x8(%ebp),%eax
    6a66:	0f b6 00             	movzbl (%eax),%eax
    6a69:	84 c0                	test   %al,%al
    6a6b:	75 e3                	jne    6a50 <strcat+0x37>
    6a6d:	8b 45 fc             	mov    -0x4(%ebp),%eax
    6a70:	c6 00 00             	movb   $0x0,(%eax)
    6a73:	8b 45 08             	mov    0x8(%ebp),%eax
    6a76:	c9                   	leave  
    6a77:	c3                   	ret    

00006a78 <spin>:
    6a78:	55                   	push   %ebp
    6a79:	89 e5                	mov    %esp,%ebp
    6a7b:	83 ec 08             	sub    $0x8,%esp
    6a7e:	83 ec 08             	sub    $0x8,%esp
    6a81:	ff 75 08             	pushl  0x8(%ebp)
    6a84:	68 5c b8 00 00       	push   $0xb85c
    6a89:	e8 16 f8 ff ff       	call   62a4 <printf>
    6a8e:	83 c4 10             	add    $0x10,%esp
    6a91:	eb fe                	jmp    6a91 <spin+0x19>

00006a93 <assertion_failure>:
    6a93:	55                   	push   %ebp
    6a94:	89 e5                	mov    %esp,%ebp
    6a96:	83 ec 08             	sub    $0x8,%esp
    6a99:	83 ec 08             	sub    $0x8,%esp
    6a9c:	ff 75 14             	pushl  0x14(%ebp)
    6a9f:	ff 75 10             	pushl  0x10(%ebp)
    6aa2:	ff 75 0c             	pushl  0xc(%ebp)
    6aa5:	ff 75 08             	pushl  0x8(%ebp)
    6aa8:	6a 03                	push   $0x3
    6aaa:	68 74 b8 00 00       	push   $0xb874
    6aaf:	e8 f0 f7 ff ff       	call   62a4 <printf>
    6ab4:	83 c4 20             	add    $0x20,%esp
    6ab7:	83 ec 0c             	sub    $0xc,%esp
    6aba:	68 a9 b8 00 00       	push   $0xb8a9
    6abf:	e8 b4 ff ff ff       	call   6a78 <spin>
    6ac4:	83 c4 10             	add    $0x10,%esp
    6ac7:	0f 0b                	ud2    
    6ac9:	90                   	nop
    6aca:	c9                   	leave  
    6acb:	c3                   	ret    

00006acc <open>:
    6acc:	55                   	push   %ebp
    6acd:	89 e5                	mov    %esp,%ebp
    6acf:	83 ec 38             	sub    $0x38,%esp
    6ad2:	c7 45 cc 04 00 00 00 	movl   $0x4,-0x34(%ebp)
    6ad9:	8b 45 08             	mov    0x8(%ebp),%eax
    6adc:	89 45 f0             	mov    %eax,-0x10(%ebp)
    6adf:	8b 45 0c             	mov    0xc(%ebp),%eax
    6ae2:	89 45 d0             	mov    %eax,-0x30(%ebp)
    6ae5:	83 ec 0c             	sub    $0xc,%esp
    6ae8:	ff 75 08             	pushl  0x8(%ebp)
    6aeb:	e8 32 fe ff ff       	call   6922 <strlen>
    6af0:	83 c4 10             	add    $0x10,%esp
    6af3:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    6af6:	83 ec 04             	sub    $0x4,%esp
    6af9:	8d 45 c8             	lea    -0x38(%ebp),%eax
    6afc:	50                   	push   %eax
    6afd:	6a 03                	push   $0x3
    6aff:	6a 03                	push   $0x3
    6b01:	e8 b1 d3 ff ff       	call   3eb7 <send_recv>
    6b06:	83 c4 10             	add    $0x10,%esp
    6b09:	8b 45 cc             	mov    -0x34(%ebp),%eax
    6b0c:	83 f8 0d             	cmp    $0xd,%eax
    6b0f:	74 19                	je     6b2a <open+0x5e>
    6b11:	6a 2c                	push   $0x2c
    6b13:	68 bd b8 00 00       	push   $0xb8bd
    6b18:	68 bd b8 00 00       	push   $0xb8bd
    6b1d:	68 c8 b8 00 00       	push   $0xb8c8
    6b22:	e8 6c ff ff ff       	call   6a93 <assertion_failure>
    6b27:	83 c4 10             	add    $0x10,%esp
    6b2a:	8b 45 d0             	mov    -0x30(%ebp),%eax
    6b2d:	c9                   	leave  
    6b2e:	c3                   	ret    

00006b2f <read>:
    6b2f:	55                   	push   %ebp
    6b30:	89 e5                	mov    %esp,%ebp
    6b32:	83 ec 38             	sub    $0x38,%esp
    6b35:	c7 45 cc 06 00 00 00 	movl   $0x6,-0x34(%ebp)
    6b3c:	8b 45 08             	mov    0x8(%ebp),%eax
    6b3f:	89 45 d0             	mov    %eax,-0x30(%ebp)
    6b42:	8b 45 0c             	mov    0xc(%ebp),%eax
    6b45:	89 45 f4             	mov    %eax,-0xc(%ebp)
    6b48:	8b 45 10             	mov    0x10(%ebp),%eax
    6b4b:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    6b4e:	83 ec 04             	sub    $0x4,%esp
    6b51:	8d 45 c8             	lea    -0x38(%ebp),%eax
    6b54:	50                   	push   %eax
    6b55:	6a 03                	push   $0x3
    6b57:	6a 03                	push   $0x3
    6b59:	e8 59 d3 ff ff       	call   3eb7 <send_recv>
    6b5e:	83 c4 10             	add    $0x10,%esp
    6b61:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    6b64:	c9                   	leave  
    6b65:	c3                   	ret    

00006b66 <write>:
    6b66:	55                   	push   %ebp
    6b67:	89 e5                	mov    %esp,%ebp
    6b69:	83 ec 38             	sub    $0x38,%esp
    6b6c:	c7 45 cc 07 00 00 00 	movl   $0x7,-0x34(%ebp)
    6b73:	8b 45 08             	mov    0x8(%ebp),%eax
    6b76:	89 45 d0             	mov    %eax,-0x30(%ebp)
    6b79:	8b 45 0c             	mov    0xc(%ebp),%eax
    6b7c:	89 45 f4             	mov    %eax,-0xc(%ebp)
    6b7f:	8b 45 10             	mov    0x10(%ebp),%eax
    6b82:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    6b85:	83 ec 04             	sub    $0x4,%esp
    6b88:	8d 45 c8             	lea    -0x38(%ebp),%eax
    6b8b:	50                   	push   %eax
    6b8c:	6a 03                	push   $0x3
    6b8e:	6a 03                	push   $0x3
    6b90:	e8 22 d3 ff ff       	call   3eb7 <send_recv>
    6b95:	83 c4 10             	add    $0x10,%esp
    6b98:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    6b9b:	c9                   	leave  
    6b9c:	c3                   	ret    

00006b9d <close>:
    6b9d:	55                   	push   %ebp
    6b9e:	89 e5                	mov    %esp,%ebp
    6ba0:	83 ec 38             	sub    $0x38,%esp
    6ba3:	c7 45 cc 05 00 00 00 	movl   $0x5,-0x34(%ebp)
    6baa:	8b 45 08             	mov    0x8(%ebp),%eax
    6bad:	89 45 d0             	mov    %eax,-0x30(%ebp)
    6bb0:	83 ec 04             	sub    $0x4,%esp
    6bb3:	8d 45 c8             	lea    -0x38(%ebp),%eax
    6bb6:	50                   	push   %eax
    6bb7:	6a 03                	push   $0x3
    6bb9:	6a 03                	push   $0x3
    6bbb:	e8 f7 d2 ff ff       	call   3eb7 <send_recv>
    6bc0:	83 c4 10             	add    $0x10,%esp
    6bc3:	8b 45 d0             	mov    -0x30(%ebp),%eax
    6bc6:	c9                   	leave  
    6bc7:	c3                   	ret    

00006bc8 <unlink>:
    6bc8:	55                   	push   %ebp
    6bc9:	89 e5                	mov    %esp,%ebp
    6bcb:	83 ec 38             	sub    $0x38,%esp
    6bce:	c7 45 cc 0a 00 00 00 	movl   $0xa,-0x34(%ebp)
    6bd5:	8b 45 08             	mov    0x8(%ebp),%eax
    6bd8:	89 45 f0             	mov    %eax,-0x10(%ebp)
    6bdb:	83 ec 0c             	sub    $0xc,%esp
    6bde:	ff 75 08             	pushl  0x8(%ebp)
    6be1:	e8 3c fd ff ff       	call   6922 <strlen>
    6be6:	83 c4 10             	add    $0x10,%esp
    6be9:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    6bec:	83 ec 04             	sub    $0x4,%esp
    6bef:	8d 45 c8             	lea    -0x38(%ebp),%eax
    6bf2:	50                   	push   %eax
    6bf3:	6a 03                	push   $0x3
    6bf5:	6a 03                	push   $0x3
    6bf7:	e8 bb d2 ff ff       	call   3eb7 <send_recv>
    6bfc:	83 c4 10             	add    $0x10,%esp
    6bff:	8b 45 d0             	mov    -0x30(%ebp),%eax
    6c02:	c9                   	leave  
    6c03:	c3                   	ret    

00006c04 <getpid>:
    6c04:	55                   	push   %ebp
    6c05:	89 e5                	mov    %esp,%ebp
    6c07:	83 ec 38             	sub    $0x38,%esp
    6c0a:	c7 45 cc 03 00 00 00 	movl   $0x3,-0x34(%ebp)
    6c11:	83 ec 04             	sub    $0x4,%esp
    6c14:	8d 45 c8             	lea    -0x38(%ebp),%eax
    6c17:	50                   	push   %eax
    6c18:	6a 01                	push   $0x1
    6c1a:	6a 03                	push   $0x3
    6c1c:	e8 96 d2 ff ff       	call   3eb7 <send_recv>
    6c21:	83 c4 10             	add    $0x10,%esp
    6c24:	8b 45 cc             	mov    -0x34(%ebp),%eax
    6c27:	83 f8 0d             	cmp    $0xd,%eax
    6c2a:	74 19                	je     6c45 <getpid+0x41>
    6c2c:	6a 25                	push   $0x25
    6c2e:	68 e0 b8 00 00       	push   $0xb8e0
    6c33:	68 e0 b8 00 00       	push   $0xb8e0
    6c38:	68 ed b8 00 00       	push   $0xb8ed
    6c3d:	e8 51 fe ff ff       	call   6a93 <assertion_failure>
    6c42:	83 c4 10             	add    $0x10,%esp
    6c45:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    6c48:	c9                   	leave  
    6c49:	c3                   	ret    

00006c4a <syslog>:
    6c4a:	55                   	push   %ebp
    6c4b:	89 e5                	mov    %esp,%ebp
    6c4d:	81 ec 48 04 00 00    	sub    $0x448,%esp
    6c53:	8d 45 0c             	lea    0xc(%ebp),%eax
    6c56:	89 45 f4             	mov    %eax,-0xc(%ebp)
    6c59:	8b 45 08             	mov    0x8(%ebp),%eax
    6c5c:	83 ec 04             	sub    $0x4,%esp
    6c5f:	ff 75 f4             	pushl  -0xc(%ebp)
    6c62:	50                   	push   %eax
    6c63:	8d 85 f0 fb ff ff    	lea    -0x410(%ebp),%eax
    6c69:	50                   	push   %eax
    6c6a:	e8 eb f6 ff ff       	call   635a <vsprintf>
    6c6f:	83 c4 10             	add    $0x10,%esp
    6c72:	89 45 f0             	mov    %eax,-0x10(%ebp)
    6c75:	83 ec 0c             	sub    $0xc,%esp
    6c78:	8d 85 f0 fb ff ff    	lea    -0x410(%ebp),%eax
    6c7e:	50                   	push   %eax
    6c7f:	e8 9e fc ff ff       	call   6922 <strlen>
    6c84:	83 c4 10             	add    $0x10,%esp
    6c87:	39 45 f0             	cmp    %eax,-0x10(%ebp)
    6c8a:	74 19                	je     6ca5 <syslog+0x5b>
    6c8c:	6a 2b                	push   $0x2b
    6c8e:	68 05 b9 00 00       	push   $0xb905
    6c93:	68 05 b9 00 00       	push   $0xb905
    6c98:	68 12 b9 00 00       	push   $0xb912
    6c9d:	e8 f1 fd ff ff       	call   6a93 <assertion_failure>
    6ca2:	83 c4 10             	add    $0x10,%esp
    6ca5:	e8 5a ff ff ff       	call   6c04 <getpid>
    6caa:	83 f8 03             	cmp    $0x3,%eax
    6cad:	75 14                	jne    6cc3 <syslog+0x79>
    6caf:	83 ec 0c             	sub    $0xc,%esp
    6cb2:	8d 85 f0 fb ff ff    	lea    -0x410(%ebp),%eax
    6cb8:	50                   	push   %eax
    6cb9:	e8 1b 27 00 00       	call   93d9 <disklog>
    6cbe:	83 c4 10             	add    $0x10,%esp
    6cc1:	eb 56                	jmp    6d19 <syslog+0xcf>
    6cc3:	c7 85 c4 fb ff ff ee 	movl   $0x3ee,-0x43c(%ebp)
    6cca:	03 00 00 
    6ccd:	8d 85 f0 fb ff ff    	lea    -0x410(%ebp),%eax
    6cd3:	89 85 ec fb ff ff    	mov    %eax,-0x414(%ebp)
    6cd9:	8b 45 f0             	mov    -0x10(%ebp),%eax
    6cdc:	89 85 cc fb ff ff    	mov    %eax,-0x434(%ebp)
    6ce2:	83 ec 04             	sub    $0x4,%esp
    6ce5:	8d 85 c0 fb ff ff    	lea    -0x440(%ebp),%eax
    6ceb:	50                   	push   %eax
    6cec:	6a 03                	push   $0x3
    6cee:	6a 03                	push   $0x3
    6cf0:	e8 c2 d1 ff ff       	call   3eb7 <send_recv>
    6cf5:	83 c4 10             	add    $0x10,%esp
    6cf8:	8b 85 cc fb ff ff    	mov    -0x434(%ebp),%eax
    6cfe:	39 45 f0             	cmp    %eax,-0x10(%ebp)
    6d01:	74 10                	je     6d13 <syslog+0xc9>
    6d03:	83 ec 0c             	sub    $0xc,%esp
    6d06:	68 23 b9 00 00       	push   $0xb923
    6d0b:	e8 ff ae ff ff       	call   1c0f <panic>
    6d10:	83 c4 10             	add    $0x10,%esp
    6d13:	8b 85 c8 fb ff ff    	mov    -0x438(%ebp),%eax
    6d19:	c9                   	leave  
    6d1a:	c3                   	ret    

00006d1b <task_fs>:
    6d1b:	55                   	push   %ebp
    6d1c:	89 e5                	mov    %esp,%ebp
    6d1e:	81 ec 18 02 00 00    	sub    $0x218,%esp
    6d24:	83 ec 0c             	sub    $0xc,%esp
    6d27:	68 38 b9 00 00       	push   $0xb938
    6d2c:	e8 73 f5 ff ff       	call   62a4 <printf>
    6d31:	83 c4 10             	add    $0x10,%esp
    6d34:	e8 69 01 00 00       	call   6ea2 <init_fs>
    6d39:	83 ec 04             	sub    $0x4,%esp
    6d3c:	68 e0 a4 04 00       	push   $0x4a4e0
    6d41:	6a 11                	push   $0x11
    6d43:	6a 02                	push   $0x2
    6d45:	e8 6d d1 ff ff       	call   3eb7 <send_recv>
    6d4a:	83 c4 10             	add    $0x10,%esp
    6d4d:	a1 e4 a4 04 00       	mov    0x4a4e4,%eax
    6d52:	89 45 f0             	mov    %eax,-0x10(%ebp)
    6d55:	a1 e0 a4 04 00       	mov    0x4a4e0,%eax
    6d5a:	89 45 f4             	mov    %eax,-0xc(%ebp)
    6d5d:	8b 45 f4             	mov    -0xc(%ebp),%eax
    6d60:	69 c0 94 01 00 00    	imul   $0x194,%eax,%eax
    6d66:	05 e0 b2 04 00       	add    $0x4b2e0,%eax
    6d6b:	a3 c4 97 04 00       	mov    %eax,0x497c4
    6d70:	8b 45 f0             	mov    -0x10(%ebp),%eax
    6d73:	83 e8 04             	sub    $0x4,%eax
    6d76:	83 f8 08             	cmp    $0x8,%eax
    6d79:	77 43                	ja     6dbe <task_fs+0xa3>
    6d7b:	8b 04 85 90 b9 00 00 	mov    0xb990(,%eax,4),%eax
    6d82:	ff e0                	jmp    *%eax
    6d84:	e8 a1 0c 00 00       	call   7a2a <do_open>
    6d89:	a3 e8 a4 04 00       	mov    %eax,0x4a4e8
    6d8e:	eb 5d                	jmp    6ded <task_fs+0xd2>
    6d90:	e8 d9 10 00 00       	call   7e6e <do_close>
    6d95:	a3 e8 a4 04 00       	mov    %eax,0x4a4e8
    6d9a:	eb 51                	jmp    6ded <task_fs+0xd2>
    6d9c:	e8 f5 18 00 00       	call   8696 <do_rdwt>
    6da1:	a3 ec a4 04 00       	mov    %eax,0x4a4ec
    6da6:	eb 45                	jmp    6ded <task_fs+0xd2>
    6da8:	e8 7f 1d 00 00       	call   8b2c <do_unlink>
    6dad:	a3 e8 a4 04 00       	mov    %eax,0x4a4e8
    6db2:	eb 39                	jmp    6ded <task_fs+0xd2>
    6db4:	a1 f0 a4 04 00       	mov    0x4a4f0,%eax
    6db9:	89 45 f4             	mov    %eax,-0xc(%ebp)
    6dbc:	eb 2f                	jmp    6ded <task_fs+0xd2>
    6dbe:	83 ec 08             	sub    $0x8,%esp
    6dc1:	68 e0 a4 04 00       	push   $0x4a4e0
    6dc6:	68 49 b9 00 00       	push   $0xb949
    6dcb:	e8 31 e5 ff ff       	call   5301 <dump_msg>
    6dd0:	83 c4 10             	add    $0x10,%esp
    6dd3:	6a 50                	push   $0x50
    6dd5:	68 5e b9 00 00       	push   $0xb95e
    6dda:	68 5e b9 00 00       	push   $0xb95e
    6ddf:	68 68 b9 00 00       	push   $0xb968
    6de4:	e8 aa fc ff ff       	call   6a93 <assertion_failure>
    6de9:	83 c4 10             	add    $0x10,%esp
    6dec:	90                   	nop
    6ded:	c7 85 00 fe ff ff 6a 	movl   $0xb96a,-0x200(%ebp)
    6df4:	b9 00 00 
    6df7:	c7 85 04 fe ff ff 6f 	movl   $0xb96f,-0x1fc(%ebp)
    6dfe:	b9 00 00 
    6e01:	c7 85 08 fe ff ff 75 	movl   $0xb975,-0x1f8(%ebp)
    6e08:	b9 00 00 
    6e0b:	c7 85 0c fe ff ff 7a 	movl   $0xb97a,-0x1f4(%ebp)
    6e12:	b9 00 00 
    6e15:	c7 85 10 fe ff ff 80 	movl   $0xb980,-0x1f0(%ebp)
    6e1c:	b9 00 00 
    6e1f:	c7 85 18 fe ff ff 86 	movl   $0xb986,-0x1e8(%ebp)
    6e26:	b9 00 00 
    6e29:	83 7d f0 0a          	cmpl   $0xa,-0x10(%ebp)
    6e2d:	74 3d                	je     6e6c <task_fs+0x151>
    6e2f:	83 7d f0 0a          	cmpl   $0xa,-0x10(%ebp)
    6e33:	7f 0d                	jg     6e42 <task_fs+0x127>
    6e35:	8b 45 f0             	mov    -0x10(%ebp),%eax
    6e38:	83 e8 04             	sub    $0x4,%eax
    6e3b:	83 f8 03             	cmp    $0x3,%eax
    6e3e:	77 11                	ja     6e51 <task_fs+0x136>
    6e40:	eb 2a                	jmp    6e6c <task_fs+0x151>
    6e42:	83 7d f0 0c          	cmpl   $0xc,-0x10(%ebp)
    6e46:	74 27                	je     6e6f <task_fs+0x154>
    6e48:	81 7d f0 ee 03 00 00 	cmpl   $0x3ee,-0x10(%ebp)
    6e4f:	74 1e                	je     6e6f <task_fs+0x154>
    6e51:	6a 71                	push   $0x71
    6e53:	68 5e b9 00 00       	push   $0xb95e
    6e58:	68 5e b9 00 00       	push   $0xb95e
    6e5d:	68 68 b9 00 00       	push   $0xb968
    6e62:	e8 2c fc ff ff       	call   6a93 <assertion_failure>
    6e67:	83 c4 10             	add    $0x10,%esp
    6e6a:	eb 04                	jmp    6e70 <task_fs+0x155>
    6e6c:	90                   	nop
    6e6d:	eb 01                	jmp    6e70 <task_fs+0x155>
    6e6f:	90                   	nop
    6e70:	a1 e4 a4 04 00       	mov    0x4a4e4,%eax
    6e75:	83 f8 0b             	cmp    $0xb,%eax
    6e78:	0f 84 bb fe ff ff    	je     6d39 <task_fs+0x1e>
    6e7e:	c7 05 e4 a4 04 00 0d 	movl   $0xd,0x4a4e4
    6e85:	00 00 00 
    6e88:	83 ec 04             	sub    $0x4,%esp
    6e8b:	68 e0 a4 04 00       	push   $0x4a4e0
    6e90:	ff 75 f4             	pushl  -0xc(%ebp)
    6e93:	6a 01                	push   $0x1
    6e95:	e8 1d d0 ff ff       	call   3eb7 <send_recv>
    6e9a:	83 c4 10             	add    $0x10,%esp
    6e9d:	e9 97 fe ff ff       	jmp    6d39 <task_fs+0x1e>

00006ea2 <init_fs>:
    6ea2:	55                   	push   %ebp
    6ea3:	89 e5                	mov    %esp,%ebp
    6ea5:	83 ec 48             	sub    $0x48,%esp
    6ea8:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    6eaf:	eb 25                	jmp    6ed6 <init_fs+0x34>
    6eb1:	8b 55 f4             	mov    -0xc(%ebp),%edx
    6eb4:	89 d0                	mov    %edx,%eax
    6eb6:	01 c0                	add    %eax,%eax
    6eb8:	01 d0                	add    %edx,%eax
    6eba:	c1 e0 02             	shl    $0x2,%eax
    6ebd:	05 20 a5 04 00       	add    $0x4a520,%eax
    6ec2:	83 ec 04             	sub    $0x4,%esp
    6ec5:	6a 0c                	push   $0xc
    6ec7:	6a 00                	push   $0x0
    6ec9:	50                   	push   %eax
    6eca:	e8 1a fa ff ff       	call   68e9 <memset>
    6ecf:	83 c4 10             	add    $0x10,%esp
    6ed2:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    6ed6:	83 7d f4 3f          	cmpl   $0x3f,-0xc(%ebp)
    6eda:	7e d5                	jle    6eb1 <init_fs+0xf>
    6edc:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    6ee3:	eb 1f                	jmp    6f04 <init_fs+0x62>
    6ee5:	8b 45 f4             	mov    -0xc(%ebp),%eax
    6ee8:	6b c0 2c             	imul   $0x2c,%eax,%eax
    6eeb:	05 a0 08 01 00       	add    $0x108a0,%eax
    6ef0:	83 ec 04             	sub    $0x4,%esp
    6ef3:	6a 2c                	push   $0x2c
    6ef5:	6a 00                	push   $0x0
    6ef7:	50                   	push   %eax
    6ef8:	e8 ec f9 ff ff       	call   68e9 <memset>
    6efd:	83 c4 10             	add    $0x10,%esp
    6f00:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    6f04:	83 7d f4 3f          	cmpl   $0x3f,-0xc(%ebp)
    6f08:	7e db                	jle    6ee5 <init_fs+0x43>
    6f0a:	c7 45 f0 40 b0 04 00 	movl   $0x4b040,-0x10(%ebp)
    6f11:	eb 0e                	jmp    6f21 <init_fs+0x7f>
    6f13:	8b 45 f0             	mov    -0x10(%ebp),%eax
    6f16:	c7 40 38 00 00 00 00 	movl   $0x0,0x38(%eax)
    6f1d:	83 45 f0 3c          	addl   $0x3c,-0x10(%ebp)
    6f21:	81 7d f0 20 b2 04 00 	cmpl   $0x4b220,-0x10(%ebp)
    6f28:	72 e9                	jb     6f13 <init_fs+0x71>
    6f2a:	c7 45 c4 e9 03 00 00 	movl   $0x3e9,-0x3c(%ebp)
    6f31:	c7 45 d4 20 00 00 00 	movl   $0x20,-0x2c(%ebp)
    6f38:	a1 90 f7 00 00       	mov    0xf790,%eax
    6f3d:	83 f8 ec             	cmp    $0xffffffec,%eax
    6f40:	75 1c                	jne    6f5e <init_fs+0xbc>
    6f42:	68 99 00 00 00       	push   $0x99
    6f47:	68 5e b9 00 00       	push   $0xb95e
    6f4c:	68 5e b9 00 00       	push   $0xb95e
    6f51:	68 b4 b9 00 00       	push   $0xb9b4
    6f56:	e8 38 fb ff ff       	call   6a93 <assertion_failure>
    6f5b:	83 c4 10             	add    $0x10,%esp
    6f5e:	a1 90 f7 00 00       	mov    0xf790,%eax
    6f63:	83 ec 04             	sub    $0x4,%esp
    6f66:	8d 55 c0             	lea    -0x40(%ebp),%edx
    6f69:	52                   	push   %edx
    6f6a:	50                   	push   %eax
    6f6b:	6a 03                	push   $0x3
    6f6d:	e8 45 cf ff ff       	call   3eb7 <send_recv>
    6f72:	83 c4 10             	add    $0x10,%esp
    6f75:	e8 65 00 00 00       	call   6fdf <mkfs>
    6f7a:	83 ec 0c             	sub    $0xc,%esp
    6f7d:	68 20 03 00 00       	push   $0x320
    6f82:	e8 4e 06 00 00       	call   75d5 <read_super_block>
    6f87:	83 c4 10             	add    $0x10,%esp
    6f8a:	83 ec 0c             	sub    $0xc,%esp
    6f8d:	68 20 03 00 00       	push   $0x320
    6f92:	e8 ad 07 00 00       	call   7744 <get_super_block>
    6f97:	83 c4 10             	add    $0x10,%esp
    6f9a:	89 45 f0             	mov    %eax,-0x10(%ebp)
    6f9d:	8b 45 f0             	mov    -0x10(%ebp),%eax
    6fa0:	8b 00                	mov    (%eax),%eax
    6fa2:	3d 11 01 00 00       	cmp    $0x111,%eax
    6fa7:	74 1c                	je     6fc5 <init_fs+0x123>
    6fa9:	68 a3 00 00 00       	push   $0xa3
    6fae:	68 5e b9 00 00       	push   $0xb95e
    6fb3:	68 5e b9 00 00       	push   $0xb95e
    6fb8:	68 e8 b9 00 00       	push   $0xb9e8
    6fbd:	e8 d1 fa ff ff       	call   6a93 <assertion_failure>
    6fc2:	83 c4 10             	add    $0x10,%esp
    6fc5:	83 ec 08             	sub    $0x8,%esp
    6fc8:	6a 01                	push   $0x1
    6fca:	68 20 03 00 00       	push   $0x320
    6fcf:	e8 b6 07 00 00       	call   778a <get_inode>
    6fd4:	83 c4 10             	add    $0x10,%esp
    6fd7:	a3 20 a8 04 00       	mov    %eax,0x4a820
    6fdc:	90                   	nop
    6fdd:	c9                   	leave  
    6fde:	c3                   	ret    

00006fdf <mkfs>:
    6fdf:	55                   	push   %ebp
    6fe0:	89 e5                	mov    %esp,%ebp
    6fe2:	57                   	push   %edi
    6fe3:	56                   	push   %esi
    6fe4:	53                   	push   %ebx
    6fe5:	81 ec dc 00 00 00    	sub    $0xdc,%esp
    6feb:	c7 45 d8 00 10 00 00 	movl   $0x1000,-0x28(%ebp)
    6ff2:	c7 45 a4 ed 03 00 00 	movl   $0x3ed,-0x5c(%ebp)
    6ff9:	c7 45 b4 20 00 00 00 	movl   $0x20,-0x4c(%ebp)
    7000:	c7 45 ac 01 00 00 00 	movl   $0x1,-0x54(%ebp)
    7007:	8d 45 98             	lea    -0x68(%ebp),%eax
    700a:	89 45 cc             	mov    %eax,-0x34(%ebp)
    700d:	c7 45 b0 03 00 00 00 	movl   $0x3,-0x50(%ebp)
    7014:	a1 90 f7 00 00       	mov    0xf790,%eax
    7019:	83 f8 ec             	cmp    $0xffffffec,%eax
    701c:	75 1c                	jne    703a <mkfs+0x5b>
    701e:	68 c2 00 00 00       	push   $0xc2
    7023:	68 5e b9 00 00       	push   $0xb95e
    7028:	68 5e b9 00 00       	push   $0xb95e
    702d:	68 b4 b9 00 00       	push   $0xb9b4
    7032:	e8 5c fa ff ff       	call   6a93 <assertion_failure>
    7037:	83 c4 10             	add    $0x10,%esp
    703a:	a1 90 f7 00 00       	mov    0xf790,%eax
    703f:	83 ec 04             	sub    $0x4,%esp
    7042:	8d 55 a0             	lea    -0x60(%ebp),%edx
    7045:	52                   	push   %edx
    7046:	50                   	push   %eax
    7047:	6a 03                	push   $0x3
    7049:	e8 69 ce ff ff       	call   3eb7 <send_recv>
    704e:	83 c4 10             	add    $0x10,%esp
    7051:	8b 45 9c             	mov    -0x64(%ebp),%eax
    7054:	83 ec 08             	sub    $0x8,%esp
    7057:	50                   	push   %eax
    7058:	68 fe b9 00 00       	push   $0xb9fe
    705d:	e8 42 f2 ff ff       	call   62a4 <printf>
    7062:	83 c4 10             	add    $0x10,%esp
    7065:	c7 85 5c ff ff ff 11 	movl   $0x111,-0xa4(%ebp)
    706c:	01 00 00 
    706f:	8b 45 d8             	mov    -0x28(%ebp),%eax
    7072:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
    7078:	8b 85 60 ff ff ff    	mov    -0xa0(%ebp),%eax
    707e:	c1 e0 05             	shl    $0x5,%eax
    7081:	c1 e8 09             	shr    $0x9,%eax
    7084:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
    708a:	8b 45 9c             	mov    -0x64(%ebp),%eax
    708d:	89 85 64 ff ff ff    	mov    %eax,-0x9c(%ebp)
    7093:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%ebp)
    709a:	00 00 00 
    709d:	8b 85 64 ff ff ff    	mov    -0x9c(%ebp),%eax
    70a3:	8b 75 d8             	mov    -0x28(%ebp),%esi
    70a6:	ba 00 00 00 00       	mov    $0x0,%edx
    70ab:	f7 f6                	div    %esi
    70ad:	83 c0 01             	add    $0x1,%eax
    70b0:	89 85 6c ff ff ff    	mov    %eax,-0x94(%ebp)
    70b6:	8b 95 68 ff ff ff    	mov    -0x98(%ebp),%edx
    70bc:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
    70c2:	01 c2                	add    %eax,%edx
    70c4:	8b 85 74 ff ff ff    	mov    -0x8c(%ebp),%eax
    70ca:	01 d0                	add    %edx,%eax
    70cc:	83 c0 02             	add    $0x2,%eax
    70cf:	89 85 70 ff ff ff    	mov    %eax,-0x90(%ebp)
    70d5:	c7 85 78 ff ff ff 01 	movl   $0x1,-0x88(%ebp)
    70dc:	00 00 00 
    70df:	c7 85 7c ff ff ff 20 	movl   $0x20,-0x84(%ebp)
    70e6:	00 00 00 
    70e9:	c7 45 80 04 00 00 00 	movl   $0x4,-0x80(%ebp)
    70f0:	c7 45 84 08 00 00 00 	movl   $0x8,-0x7c(%ebp)
    70f7:	c7 45 88 10 00 00 00 	movl   $0x10,-0x78(%ebp)
    70fe:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
    7105:	c7 45 90 04 00 00 00 	movl   $0x4,-0x70(%ebp)
    710c:	a1 9c f7 00 00       	mov    0xf79c,%eax
    7111:	83 ec 04             	sub    $0x4,%esp
    7114:	68 00 02 00 00       	push   $0x200
    7119:	6a 90                	push   $0xffffff90
    711b:	50                   	push   %eax
    711c:	e8 c8 f7 ff ff       	call   68e9 <memset>
    7121:	83 c4 10             	add    $0x10,%esp
    7124:	a1 9c f7 00 00       	mov    0xf79c,%eax
    7129:	83 ec 04             	sub    $0x4,%esp
    712c:	6a 38                	push   $0x38
    712e:	8d 95 5c ff ff ff    	lea    -0xa4(%ebp),%edx
    7134:	52                   	push   %edx
    7135:	50                   	push   %eax
    7136:	e8 85 f7 ff ff       	call   68c0 <memcpy>
    713b:	83 c4 10             	add    $0x10,%esp
    713e:	a1 9c f7 00 00       	mov    0xf79c,%eax
    7143:	83 ec 04             	sub    $0x4,%esp
    7146:	50                   	push   %eax
    7147:	6a 03                	push   $0x3
    7149:	68 00 02 00 00       	push   $0x200
    714e:	6a 00                	push   $0x0
    7150:	68 00 02 00 00       	push   $0x200
    7155:	68 20 03 00 00       	push   $0x320
    715a:	68 ec 03 00 00       	push   $0x3ec
    715f:	e8 d8 03 00 00       	call   753c <rw_sector>
    7164:	83 c4 20             	add    $0x20,%esp
    7167:	8b 55 98             	mov    -0x68(%ebp),%edx
    716a:	8b 85 70 ff ff ff    	mov    -0x90(%ebp),%eax
    7170:	01 d0                	add    %edx,%eax
    7172:	8d 3c 00             	lea    (%eax,%eax,1),%edi
    7175:	8b 55 98             	mov    -0x68(%ebp),%edx
    7178:	8b 85 68 ff ff ff    	mov    -0x98(%ebp),%eax
    717e:	01 c2                	add    %eax,%edx
    7180:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
    7186:	01 d0                	add    %edx,%eax
    7188:	83 c0 02             	add    $0x2,%eax
    718b:	8d 34 00             	lea    (%eax,%eax,1),%esi
    718e:	8b 55 98             	mov    -0x68(%ebp),%edx
    7191:	8b 85 68 ff ff ff    	mov    -0x98(%ebp),%eax
    7197:	01 d0                	add    %edx,%eax
    7199:	83 c0 02             	add    $0x2,%eax
    719c:	8d 1c 00             	lea    (%eax,%eax,1),%ebx
    719f:	8b 45 98             	mov    -0x68(%ebp),%eax
    71a2:	83 c0 02             	add    $0x2,%eax
    71a5:	8d 0c 00             	lea    (%eax,%eax,1),%ecx
    71a8:	8b 45 98             	mov    -0x68(%ebp),%eax
    71ab:	83 c0 01             	add    $0x1,%eax
    71ae:	8d 14 00             	lea    (%eax,%eax,1),%edx
    71b1:	8b 45 98             	mov    -0x68(%ebp),%eax
    71b4:	01 c0                	add    %eax,%eax
    71b6:	83 ec 04             	sub    $0x4,%esp
    71b9:	57                   	push   %edi
    71ba:	56                   	push   %esi
    71bb:	53                   	push   %ebx
    71bc:	51                   	push   %ecx
    71bd:	52                   	push   %edx
    71be:	50                   	push   %eax
    71bf:	68 18 ba 00 00       	push   $0xba18
    71c4:	e8 db f0 ff ff       	call   62a4 <printf>
    71c9:	83 c4 20             	add    $0x20,%esp
    71cc:	a1 9c f7 00 00       	mov    0xf79c,%eax
    71d1:	83 ec 04             	sub    $0x4,%esp
    71d4:	68 00 02 00 00       	push   $0x200
    71d9:	6a 00                	push   $0x0
    71db:	50                   	push   %eax
    71dc:	e8 08 f7 ff ff       	call   68e9 <memset>
    71e1:	83 c4 10             	add    $0x10,%esp
    71e4:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    71eb:	eb 27                	jmp    7214 <mkfs+0x235>
    71ed:	a1 9c f7 00 00       	mov    0xf79c,%eax
    71f2:	0f b6 00             	movzbl (%eax),%eax
    71f5:	89 c3                	mov    %eax,%ebx
    71f7:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    71fa:	ba 01 00 00 00       	mov    $0x1,%edx
    71ff:	89 c1                	mov    %eax,%ecx
    7201:	d3 e2                	shl    %cl,%edx
    7203:	89 d0                	mov    %edx,%eax
    7205:	09 c3                	or     %eax,%ebx
    7207:	89 da                	mov    %ebx,%edx
    7209:	a1 9c f7 00 00       	mov    0xf79c,%eax
    720e:	88 10                	mov    %dl,(%eax)
    7210:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    7214:	83 7d e4 04          	cmpl   $0x4,-0x1c(%ebp)
    7218:	7e d3                	jle    71ed <mkfs+0x20e>
    721a:	a1 9c f7 00 00       	mov    0xf79c,%eax
    721f:	0f b6 00             	movzbl (%eax),%eax
    7222:	3c 1f                	cmp    $0x1f,%al
    7224:	74 1c                	je     7242 <mkfs+0x263>
    7226:	68 f3 00 00 00       	push   $0xf3
    722b:	68 5e b9 00 00       	push   $0xb95e
    7230:	68 5e b9 00 00       	push   $0xb95e
    7235:	68 76 ba 00 00       	push   $0xba76
    723a:	e8 54 f8 ff ff       	call   6a93 <assertion_failure>
    723f:	83 c4 10             	add    $0x10,%esp
    7242:	a1 9c f7 00 00       	mov    0xf79c,%eax
    7247:	83 ec 04             	sub    $0x4,%esp
    724a:	50                   	push   %eax
    724b:	6a 03                	push   $0x3
    724d:	68 00 02 00 00       	push   $0x200
    7252:	6a 00                	push   $0x0
    7254:	68 00 04 00 00       	push   $0x400
    7259:	68 20 03 00 00       	push   $0x320
    725e:	68 ec 03 00 00       	push   $0x3ec
    7263:	e8 d4 02 00 00       	call   753c <rw_sector>
    7268:	83 c4 20             	add    $0x20,%esp
    726b:	a1 9c f7 00 00       	mov    0xf79c,%eax
    7270:	83 ec 04             	sub    $0x4,%esp
    7273:	68 00 02 00 00       	push   $0x200
    7278:	6a 00                	push   $0x0
    727a:	50                   	push   %eax
    727b:	e8 69 f6 ff ff       	call   68e9 <memset>
    7280:	83 c4 10             	add    $0x10,%esp
    7283:	c7 45 d4 01 08 00 00 	movl   $0x801,-0x2c(%ebp)
    728a:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    7291:	eb 12                	jmp    72a5 <mkfs+0x2c6>
    7293:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    7299:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    729c:	01 d0                	add    %edx,%eax
    729e:	c6 00 ff             	movb   $0xff,(%eax)
    72a1:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    72a5:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    72a8:	8d 50 07             	lea    0x7(%eax),%edx
    72ab:	85 c0                	test   %eax,%eax
    72ad:	0f 48 c2             	cmovs  %edx,%eax
    72b0:	c1 f8 03             	sar    $0x3,%eax
    72b3:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
    72b6:	7c db                	jl     7293 <mkfs+0x2b4>
    72b8:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
    72bf:	eb 35                	jmp    72f6 <mkfs+0x317>
    72c1:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    72c7:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    72ca:	01 d0                	add    %edx,%eax
    72cc:	0f b6 00             	movzbl (%eax),%eax
    72cf:	89 c3                	mov    %eax,%ebx
    72d1:	8b 45 e0             	mov    -0x20(%ebp),%eax
    72d4:	ba 01 00 00 00       	mov    $0x1,%edx
    72d9:	89 c1                	mov    %eax,%ecx
    72db:	d3 e2                	shl    %cl,%edx
    72dd:	89 d0                	mov    %edx,%eax
    72df:	09 c3                	or     %eax,%ebx
    72e1:	89 d9                	mov    %ebx,%ecx
    72e3:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    72e9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    72ec:	01 d0                	add    %edx,%eax
    72ee:	89 ca                	mov    %ecx,%edx
    72f0:	88 10                	mov    %dl,(%eax)
    72f2:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
    72f6:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    72f9:	99                   	cltd   
    72fa:	c1 ea 1d             	shr    $0x1d,%edx
    72fd:	01 d0                	add    %edx,%eax
    72ff:	83 e0 07             	and    $0x7,%eax
    7302:	29 d0                	sub    %edx,%eax
    7304:	39 45 e0             	cmp    %eax,-0x20(%ebp)
    7307:	7c b8                	jl     72c1 <mkfs+0x2e2>
    7309:	8b 0d 9c f7 00 00    	mov    0xf79c,%ecx
    730f:	8b 85 68 ff ff ff    	mov    -0x98(%ebp),%eax
    7315:	83 c0 02             	add    $0x2,%eax
    7318:	c1 e0 09             	shl    $0x9,%eax
    731b:	ba 00 00 00 00       	mov    $0x0,%edx
    7320:	83 ec 04             	sub    $0x4,%esp
    7323:	51                   	push   %ecx
    7324:	6a 03                	push   $0x3
    7326:	68 00 02 00 00       	push   $0x200
    732b:	52                   	push   %edx
    732c:	50                   	push   %eax
    732d:	68 20 03 00 00       	push   $0x320
    7332:	68 ec 03 00 00       	push   $0x3ec
    7337:	e8 00 02 00 00       	call   753c <rw_sector>
    733c:	83 c4 20             	add    $0x20,%esp
    733f:	a1 9c f7 00 00       	mov    0xf79c,%eax
    7344:	83 ec 04             	sub    $0x4,%esp
    7347:	68 00 02 00 00       	push   $0x200
    734c:	6a 00                	push   $0x0
    734e:	50                   	push   %eax
    734f:	e8 95 f5 ff ff       	call   68e9 <memset>
    7354:	83 c4 10             	add    $0x10,%esp
    7357:	c7 45 e4 01 00 00 00 	movl   $0x1,-0x1c(%ebp)
    735e:	eb 3f                	jmp    739f <mkfs+0x3c0>
    7360:	8b 0d 9c f7 00 00    	mov    0xf79c,%ecx
    7366:	8b 95 68 ff ff ff    	mov    -0x98(%ebp),%edx
    736c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    736f:	01 d0                	add    %edx,%eax
    7371:	83 c0 02             	add    $0x2,%eax
    7374:	c1 e0 09             	shl    $0x9,%eax
    7377:	ba 00 00 00 00       	mov    $0x0,%edx
    737c:	83 ec 04             	sub    $0x4,%esp
    737f:	51                   	push   %ecx
    7380:	6a 03                	push   $0x3
    7382:	68 00 02 00 00       	push   $0x200
    7387:	52                   	push   %edx
    7388:	50                   	push   %eax
    7389:	68 20 03 00 00       	push   $0x320
    738e:	68 ec 03 00 00       	push   $0x3ec
    7393:	e8 a4 01 00 00       	call   753c <rw_sector>
    7398:	83 c4 20             	add    $0x20,%esp
    739b:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    739f:	8b 95 6c ff ff ff    	mov    -0x94(%ebp),%edx
    73a5:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    73a8:	39 c2                	cmp    %eax,%edx
    73aa:	77 b4                	ja     7360 <mkfs+0x381>
    73ac:	a1 9c f7 00 00       	mov    0xf79c,%eax
    73b1:	83 ec 04             	sub    $0x4,%esp
    73b4:	68 00 02 00 00       	push   $0x200
    73b9:	6a 00                	push   $0x0
    73bb:	50                   	push   %eax
    73bc:	e8 28 f5 ff ff       	call   68e9 <memset>
    73c1:	83 c4 10             	add    $0x10,%esp
    73c4:	a1 9c f7 00 00       	mov    0xf79c,%eax
    73c9:	89 45 d0             	mov    %eax,-0x30(%ebp)
    73cc:	8b 45 d0             	mov    -0x30(%ebp),%eax
    73cf:	c7 00 00 40 00 00    	movl   $0x4000,(%eax)
    73d5:	8b 45 d0             	mov    -0x30(%ebp),%eax
    73d8:	c7 40 04 40 00 00 00 	movl   $0x40,0x4(%eax)
    73df:	8b 95 70 ff ff ff    	mov    -0x90(%ebp),%edx
    73e5:	8b 45 d0             	mov    -0x30(%ebp),%eax
    73e8:	89 50 08             	mov    %edx,0x8(%eax)
    73eb:	8b 45 d0             	mov    -0x30(%ebp),%eax
    73ee:	c7 40 0c 00 08 00 00 	movl   $0x800,0xc(%eax)
    73f5:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    73fc:	eb 42                	jmp    7440 <mkfs+0x461>
    73fe:	a1 9c f7 00 00       	mov    0xf79c,%eax
    7403:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    7406:	83 c2 01             	add    $0x1,%edx
    7409:	c1 e2 05             	shl    $0x5,%edx
    740c:	01 d0                	add    %edx,%eax
    740e:	89 45 d0             	mov    %eax,-0x30(%ebp)
    7411:	8b 45 d0             	mov    -0x30(%ebp),%eax
    7414:	c7 00 00 20 00 00    	movl   $0x2000,(%eax)
    741a:	8b 45 d0             	mov    -0x30(%ebp),%eax
    741d:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
    7424:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    7427:	80 cc 04             	or     $0x4,%ah
    742a:	89 c2                	mov    %eax,%edx
    742c:	8b 45 d0             	mov    -0x30(%ebp),%eax
    742f:	89 50 08             	mov    %edx,0x8(%eax)
    7432:	8b 45 d0             	mov    -0x30(%ebp),%eax
    7435:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
    743c:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    7440:	83 7d e4 02          	cmpl   $0x2,-0x1c(%ebp)
    7444:	7e b8                	jle    73fe <mkfs+0x41f>
    7446:	8b 0d 9c f7 00 00    	mov    0xf79c,%ecx
    744c:	8b 95 68 ff ff ff    	mov    -0x98(%ebp),%edx
    7452:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
    7458:	01 d0                	add    %edx,%eax
    745a:	83 c0 02             	add    $0x2,%eax
    745d:	c1 e0 09             	shl    $0x9,%eax
    7460:	ba 00 00 00 00       	mov    $0x0,%edx
    7465:	83 ec 04             	sub    $0x4,%esp
    7468:	51                   	push   %ecx
    7469:	6a 03                	push   $0x3
    746b:	68 00 02 00 00       	push   $0x200
    7470:	52                   	push   %edx
    7471:	50                   	push   %eax
    7472:	68 20 03 00 00       	push   $0x320
    7477:	68 ec 03 00 00       	push   $0x3ec
    747c:	e8 bb 00 00 00       	call   753c <rw_sector>
    7481:	83 c4 20             	add    $0x20,%esp
    7484:	a1 9c f7 00 00       	mov    0xf79c,%eax
    7489:	83 ec 04             	sub    $0x4,%esp
    748c:	68 00 02 00 00       	push   $0x200
    7491:	6a 00                	push   $0x0
    7493:	50                   	push   %eax
    7494:	e8 50 f4 ff ff       	call   68e9 <memset>
    7499:	83 c4 10             	add    $0x10,%esp
    749c:	a1 9c f7 00 00       	mov    0xf79c,%eax
    74a1:	89 45 dc             	mov    %eax,-0x24(%ebp)
    74a4:	8b 45 dc             	mov    -0x24(%ebp),%eax
    74a7:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
    74ad:	8b 45 dc             	mov    -0x24(%ebp),%eax
    74b0:	83 c0 04             	add    $0x4,%eax
    74b3:	83 ec 08             	sub    $0x8,%esp
    74b6:	68 87 ba 00 00       	push   $0xba87
    74bb:	50                   	push   %eax
    74bc:	e8 49 f4 ff ff       	call   690a <strcpy>
    74c1:	83 c4 10             	add    $0x10,%esp
    74c4:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    74cb:	eb 2d                	jmp    74fa <mkfs+0x51b>
    74cd:	83 45 dc 10          	addl   $0x10,-0x24(%ebp)
    74d1:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    74d4:	8d 50 02             	lea    0x2(%eax),%edx
    74d7:	8b 45 dc             	mov    -0x24(%ebp),%eax
    74da:	89 10                	mov    %edx,(%eax)
    74dc:	8b 45 dc             	mov    -0x24(%ebp),%eax
    74df:	83 c0 04             	add    $0x4,%eax
    74e2:	83 ec 04             	sub    $0x4,%esp
    74e5:	ff 75 e4             	pushl  -0x1c(%ebp)
    74e8:	68 89 ba 00 00       	push   $0xba89
    74ed:	50                   	push   %eax
    74ee:	e8 e4 f0 ff ff       	call   65d7 <sprintf>
    74f3:	83 c4 10             	add    $0x10,%esp
    74f6:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    74fa:	83 7d e4 02          	cmpl   $0x2,-0x1c(%ebp)
    74fe:	7e cd                	jle    74cd <mkfs+0x4ee>
    7500:	8b 0d 9c f7 00 00    	mov    0xf79c,%ecx
    7506:	8b 85 70 ff ff ff    	mov    -0x90(%ebp),%eax
    750c:	c1 e0 09             	shl    $0x9,%eax
    750f:	ba 00 00 00 00       	mov    $0x0,%edx
    7514:	83 ec 04             	sub    $0x4,%esp
    7517:	51                   	push   %ecx
    7518:	6a 03                	push   $0x3
    751a:	68 00 02 00 00       	push   $0x200
    751f:	52                   	push   %edx
    7520:	50                   	push   %eax
    7521:	68 20 03 00 00       	push   $0x320
    7526:	68 ec 03 00 00       	push   $0x3ec
    752b:	e8 0c 00 00 00       	call   753c <rw_sector>
    7530:	83 c4 20             	add    $0x20,%esp
    7533:	90                   	nop
    7534:	8d 65 f4             	lea    -0xc(%ebp),%esp
    7537:	5b                   	pop    %ebx
    7538:	5e                   	pop    %esi
    7539:	5f                   	pop    %edi
    753a:	5d                   	pop    %ebp
    753b:	c3                   	ret    

0000753c <rw_sector>:
    753c:	55                   	push   %ebp
    753d:	89 e5                	mov    %esp,%ebp
    753f:	83 ec 48             	sub    $0x48,%esp
    7542:	8b 45 10             	mov    0x10(%ebp),%eax
    7545:	89 45 c0             	mov    %eax,-0x40(%ebp)
    7548:	8b 45 14             	mov    0x14(%ebp),%eax
    754b:	89 45 c4             	mov    %eax,-0x3c(%ebp)
    754e:	8b 45 08             	mov    0x8(%ebp),%eax
    7551:	89 45 cc             	mov    %eax,-0x34(%ebp)
    7554:	8b 45 0c             	mov    0xc(%ebp),%eax
    7557:	0f b6 c0             	movzbl %al,%eax
    755a:	89 45 dc             	mov    %eax,-0x24(%ebp)
    755d:	8b 45 c0             	mov    -0x40(%ebp),%eax
    7560:	8b 55 c4             	mov    -0x3c(%ebp),%edx
    7563:	89 45 e0             	mov    %eax,-0x20(%ebp)
    7566:	89 55 e4             	mov    %edx,-0x1c(%ebp)
    7569:	8b 45 20             	mov    0x20(%ebp),%eax
    756c:	89 45 f4             	mov    %eax,-0xc(%ebp)
    756f:	8b 45 18             	mov    0x18(%ebp),%eax
    7572:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    7575:	8b 45 1c             	mov    0x1c(%ebp),%eax
    7578:	89 45 d8             	mov    %eax,-0x28(%ebp)
    757b:	8b 45 0c             	mov    0xc(%ebp),%eax
    757e:	c1 f8 08             	sar    $0x8,%eax
    7581:	0f b6 c0             	movzbl %al,%eax
    7584:	8b 04 85 84 f7 00 00 	mov    0xf784(,%eax,4),%eax
    758b:	83 f8 ec             	cmp    $0xffffffec,%eax
    758e:	75 1c                	jne    75ac <rw_sector+0x70>
    7590:	68 57 01 00 00       	push   $0x157
    7595:	68 5e b9 00 00       	push   $0xb95e
    759a:	68 5e b9 00 00       	push   $0xb95e
    759f:	68 94 ba 00 00       	push   $0xba94
    75a4:	e8 ea f4 ff ff       	call   6a93 <assertion_failure>
    75a9:	83 c4 10             	add    $0x10,%esp
    75ac:	8b 45 0c             	mov    0xc(%ebp),%eax
    75af:	c1 f8 08             	sar    $0x8,%eax
    75b2:	0f b6 c0             	movzbl %al,%eax
    75b5:	8b 04 85 84 f7 00 00 	mov    0xf784(,%eax,4),%eax
    75bc:	83 ec 04             	sub    $0x4,%esp
    75bf:	8d 55 c8             	lea    -0x38(%ebp),%edx
    75c2:	52                   	push   %edx
    75c3:	50                   	push   %eax
    75c4:	6a 03                	push   $0x3
    75c6:	e8 ec c8 ff ff       	call   3eb7 <send_recv>
    75cb:	83 c4 10             	add    $0x10,%esp
    75ce:	b8 00 00 00 00       	mov    $0x0,%eax
    75d3:	c9                   	leave  
    75d4:	c3                   	ret    

000075d5 <read_super_block>:
    75d5:	55                   	push   %ebp
    75d6:	89 e5                	mov    %esp,%ebp
    75d8:	83 ec 48             	sub    $0x48,%esp
    75db:	c7 45 c4 eb 03 00 00 	movl   $0x3eb,-0x3c(%ebp)
    75e2:	8b 45 08             	mov    0x8(%ebp),%eax
    75e5:	0f b6 c0             	movzbl %al,%eax
    75e8:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    75eb:	c7 45 d8 00 02 00 00 	movl   $0x200,-0x28(%ebp)
    75f2:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
    75f9:	a1 9c f7 00 00       	mov    0xf79c,%eax
    75fe:	89 45 ec             	mov    %eax,-0x14(%ebp)
    7601:	c7 45 cc 00 02 00 00 	movl   $0x200,-0x34(%ebp)
    7608:	c7 45 d0 03 00 00 00 	movl   $0x3,-0x30(%ebp)
    760f:	8b 45 08             	mov    0x8(%ebp),%eax
    7612:	c1 f8 08             	sar    $0x8,%eax
    7615:	0f b6 c0             	movzbl %al,%eax
    7618:	8b 04 85 84 f7 00 00 	mov    0xf784(,%eax,4),%eax
    761f:	83 f8 ec             	cmp    $0xffffffec,%eax
    7622:	75 1c                	jne    7640 <read_super_block+0x6b>
    7624:	68 72 01 00 00       	push   $0x172
    7629:	68 5e b9 00 00       	push   $0xb95e
    762e:	68 5e b9 00 00       	push   $0xb95e
    7633:	68 94 ba 00 00       	push   $0xba94
    7638:	e8 56 f4 ff ff       	call   6a93 <assertion_failure>
    763d:	83 c4 10             	add    $0x10,%esp
    7640:	8b 45 08             	mov    0x8(%ebp),%eax
    7643:	c1 f8 08             	sar    $0x8,%eax
    7646:	0f b6 c0             	movzbl %al,%eax
    7649:	8b 04 85 84 f7 00 00 	mov    0xf784(,%eax,4),%eax
    7650:	83 ec 04             	sub    $0x4,%esp
    7653:	8d 55 c0             	lea    -0x40(%ebp),%edx
    7656:	52                   	push   %edx
    7657:	50                   	push   %eax
    7658:	6a 03                	push   $0x3
    765a:	e8 58 c8 ff ff       	call   3eb7 <send_recv>
    765f:	83 c4 10             	add    $0x10,%esp
    7662:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    7669:	eb 15                	jmp    7680 <read_super_block+0xab>
    766b:	8b 45 f4             	mov    -0xc(%ebp),%eax
    766e:	6b c0 3c             	imul   $0x3c,%eax,%eax
    7671:	05 78 b0 04 00       	add    $0x4b078,%eax
    7676:	8b 00                	mov    (%eax),%eax
    7678:	85 c0                	test   %eax,%eax
    767a:	74 0c                	je     7688 <read_super_block+0xb3>
    767c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    7680:	83 7d f4 07          	cmpl   $0x7,-0xc(%ebp)
    7684:	7e e5                	jle    766b <read_super_block+0x96>
    7686:	eb 01                	jmp    7689 <read_super_block+0xb4>
    7688:	90                   	nop
    7689:	83 7d f4 08          	cmpl   $0x8,-0xc(%ebp)
    768d:	75 10                	jne    769f <read_super_block+0xca>
    768f:	83 ec 0c             	sub    $0xc,%esp
    7692:	68 c3 ba 00 00       	push   $0xbac3
    7697:	e8 73 a5 ff ff       	call   1c0f <panic>
    769c:	83 c4 10             	add    $0x10,%esp
    769f:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    76a3:	74 1c                	je     76c1 <read_super_block+0xec>
    76a5:	68 7c 01 00 00       	push   $0x17c
    76aa:	68 5e b9 00 00       	push   $0xb95e
    76af:	68 5e b9 00 00       	push   $0xb95e
    76b4:	68 dd ba 00 00       	push   $0xbadd
    76b9:	e8 d5 f3 ff ff       	call   6a93 <assertion_failure>
    76be:	83 c4 10             	add    $0x10,%esp
    76c1:	a1 9c f7 00 00       	mov    0xf79c,%eax
    76c6:	89 45 f0             	mov    %eax,-0x10(%ebp)
    76c9:	8b 45 f4             	mov    -0xc(%ebp),%eax
    76cc:	6b c0 3c             	imul   $0x3c,%eax,%eax
    76cf:	8d 90 40 b0 04 00    	lea    0x4b040(%eax),%edx
    76d5:	8b 45 f0             	mov    -0x10(%ebp),%eax
    76d8:	8b 08                	mov    (%eax),%ecx
    76da:	89 0a                	mov    %ecx,(%edx)
    76dc:	8b 48 04             	mov    0x4(%eax),%ecx
    76df:	89 4a 04             	mov    %ecx,0x4(%edx)
    76e2:	8b 48 08             	mov    0x8(%eax),%ecx
    76e5:	89 4a 08             	mov    %ecx,0x8(%edx)
    76e8:	8b 48 0c             	mov    0xc(%eax),%ecx
    76eb:	89 4a 0c             	mov    %ecx,0xc(%edx)
    76ee:	8b 48 10             	mov    0x10(%eax),%ecx
    76f1:	89 4a 10             	mov    %ecx,0x10(%edx)
    76f4:	8b 48 14             	mov    0x14(%eax),%ecx
    76f7:	89 4a 14             	mov    %ecx,0x14(%edx)
    76fa:	8b 48 18             	mov    0x18(%eax),%ecx
    76fd:	89 4a 18             	mov    %ecx,0x18(%edx)
    7700:	8b 48 1c             	mov    0x1c(%eax),%ecx
    7703:	89 4a 1c             	mov    %ecx,0x1c(%edx)
    7706:	8b 48 20             	mov    0x20(%eax),%ecx
    7709:	89 4a 20             	mov    %ecx,0x20(%edx)
    770c:	8b 48 24             	mov    0x24(%eax),%ecx
    770f:	89 4a 24             	mov    %ecx,0x24(%edx)
    7712:	8b 48 28             	mov    0x28(%eax),%ecx
    7715:	89 4a 28             	mov    %ecx,0x28(%edx)
    7718:	8b 48 2c             	mov    0x2c(%eax),%ecx
    771b:	89 4a 2c             	mov    %ecx,0x2c(%edx)
    771e:	8b 48 30             	mov    0x30(%eax),%ecx
    7721:	89 4a 30             	mov    %ecx,0x30(%edx)
    7724:	8b 48 34             	mov    0x34(%eax),%ecx
    7727:	89 4a 34             	mov    %ecx,0x34(%edx)
    772a:	8b 40 38             	mov    0x38(%eax),%eax
    772d:	89 42 38             	mov    %eax,0x38(%edx)
    7730:	8b 45 f4             	mov    -0xc(%ebp),%eax
    7733:	6b c0 3c             	imul   $0x3c,%eax,%eax
    7736:	8d 90 78 b0 04 00    	lea    0x4b078(%eax),%edx
    773c:	8b 45 08             	mov    0x8(%ebp),%eax
    773f:	89 02                	mov    %eax,(%edx)
    7741:	90                   	nop
    7742:	c9                   	leave  
    7743:	c3                   	ret    

00007744 <get_super_block>:
    7744:	55                   	push   %ebp
    7745:	89 e5                	mov    %esp,%ebp
    7747:	83 ec 18             	sub    $0x18,%esp
    774a:	c7 45 f4 40 b0 04 00 	movl   $0x4b040,-0xc(%ebp)
    7751:	eb 14                	jmp    7767 <get_super_block+0x23>
    7753:	8b 45 f4             	mov    -0xc(%ebp),%eax
    7756:	8b 40 38             	mov    0x38(%eax),%eax
    7759:	39 45 08             	cmp    %eax,0x8(%ebp)
    775c:	75 05                	jne    7763 <get_super_block+0x1f>
    775e:	8b 45 f4             	mov    -0xc(%ebp),%eax
    7761:	eb 25                	jmp    7788 <get_super_block+0x44>
    7763:	83 45 f4 3c          	addl   $0x3c,-0xc(%ebp)
    7767:	81 7d f4 20 b2 04 00 	cmpl   $0x4b220,-0xc(%ebp)
    776e:	72 e3                	jb     7753 <get_super_block+0xf>
    7770:	83 ec 08             	sub    $0x8,%esp
    7773:	ff 75 08             	pushl  0x8(%ebp)
    7776:	68 e4 ba 00 00       	push   $0xbae4
    777b:	e8 8f a4 ff ff       	call   1c0f <panic>
    7780:	83 c4 10             	add    $0x10,%esp
    7783:	b8 00 00 00 00       	mov    $0x0,%eax
    7788:	c9                   	leave  
    7789:	c3                   	ret    

0000778a <get_inode>:
    778a:	55                   	push   %ebp
    778b:	89 e5                	mov    %esp,%ebp
    778d:	83 ec 28             	sub    $0x28,%esp
    7790:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    7794:	75 0a                	jne    77a0 <get_inode+0x16>
    7796:	b8 00 00 00 00       	mov    $0x0,%eax
    779b:	e9 4b 01 00 00       	jmp    78eb <get_inode+0x161>
    77a0:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    77a7:	c7 45 f4 a0 08 01 00 	movl   $0x108a0,-0xc(%ebp)
    77ae:	eb 47                	jmp    77f7 <get_inode+0x6d>
    77b0:	8b 45 f4             	mov    -0xc(%ebp),%eax
    77b3:	8b 40 24             	mov    0x24(%eax),%eax
    77b6:	85 c0                	test   %eax,%eax
    77b8:	74 2d                	je     77e7 <get_inode+0x5d>
    77ba:	8b 45 f4             	mov    -0xc(%ebp),%eax
    77bd:	8b 40 20             	mov    0x20(%eax),%eax
    77c0:	39 45 08             	cmp    %eax,0x8(%ebp)
    77c3:	75 2e                	jne    77f3 <get_inode+0x69>
    77c5:	8b 45 f4             	mov    -0xc(%ebp),%eax
    77c8:	8b 40 28             	mov    0x28(%eax),%eax
    77cb:	39 45 0c             	cmp    %eax,0xc(%ebp)
    77ce:	75 23                	jne    77f3 <get_inode+0x69>
    77d0:	8b 45 f4             	mov    -0xc(%ebp),%eax
    77d3:	8b 40 24             	mov    0x24(%eax),%eax
    77d6:	8d 50 01             	lea    0x1(%eax),%edx
    77d9:	8b 45 f4             	mov    -0xc(%ebp),%eax
    77dc:	89 50 24             	mov    %edx,0x24(%eax)
    77df:	8b 45 f4             	mov    -0xc(%ebp),%eax
    77e2:	e9 04 01 00 00       	jmp    78eb <get_inode+0x161>
    77e7:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    77eb:	75 06                	jne    77f3 <get_inode+0x69>
    77ed:	8b 45 f4             	mov    -0xc(%ebp),%eax
    77f0:	89 45 f0             	mov    %eax,-0x10(%ebp)
    77f3:	83 45 f4 2c          	addl   $0x2c,-0xc(%ebp)
    77f7:	81 7d f4 a0 13 01 00 	cmpl   $0x113a0,-0xc(%ebp)
    77fe:	72 b0                	jb     77b0 <get_inode+0x26>
    7800:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    7804:	75 10                	jne    7816 <get_inode+0x8c>
    7806:	83 ec 0c             	sub    $0xc,%esp
    7809:	68 08 bb 00 00       	push   $0xbb08
    780e:	e8 fc a3 ff ff       	call   1c0f <panic>
    7813:	83 c4 10             	add    $0x10,%esp
    7816:	8b 45 f0             	mov    -0x10(%ebp),%eax
    7819:	8b 55 08             	mov    0x8(%ebp),%edx
    781c:	89 50 20             	mov    %edx,0x20(%eax)
    781f:	8b 45 f0             	mov    -0x10(%ebp),%eax
    7822:	8b 55 0c             	mov    0xc(%ebp),%edx
    7825:	89 50 28             	mov    %edx,0x28(%eax)
    7828:	8b 45 f0             	mov    -0x10(%ebp),%eax
    782b:	c7 40 24 01 00 00 00 	movl   $0x1,0x24(%eax)
    7832:	83 ec 0c             	sub    $0xc,%esp
    7835:	ff 75 08             	pushl  0x8(%ebp)
    7838:	e8 07 ff ff ff       	call   7744 <get_super_block>
    783d:	83 c4 10             	add    $0x10,%esp
    7840:	89 45 ec             	mov    %eax,-0x14(%ebp)
    7843:	8b 45 ec             	mov    -0x14(%ebp),%eax
    7846:	8b 50 0c             	mov    0xc(%eax),%edx
    7849:	8b 45 ec             	mov    -0x14(%ebp),%eax
    784c:	8b 40 10             	mov    0x10(%eax),%eax
    784f:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
    7852:	8b 45 0c             	mov    0xc(%ebp),%eax
    7855:	83 e8 01             	sub    $0x1,%eax
    7858:	8d 50 0f             	lea    0xf(%eax),%edx
    785b:	85 c0                	test   %eax,%eax
    785d:	0f 48 c2             	cmovs  %edx,%eax
    7860:	c1 f8 04             	sar    $0x4,%eax
    7863:	01 c8                	add    %ecx,%eax
    7865:	83 c0 02             	add    $0x2,%eax
    7868:	89 45 e8             	mov    %eax,-0x18(%ebp)
    786b:	8b 0d 9c f7 00 00    	mov    0xf79c,%ecx
    7871:	8b 45 e8             	mov    -0x18(%ebp),%eax
    7874:	c1 e0 09             	shl    $0x9,%eax
    7877:	99                   	cltd   
    7878:	83 ec 04             	sub    $0x4,%esp
    787b:	51                   	push   %ecx
    787c:	6a 03                	push   $0x3
    787e:	68 00 02 00 00       	push   $0x200
    7883:	52                   	push   %edx
    7884:	50                   	push   %eax
    7885:	ff 75 08             	pushl  0x8(%ebp)
    7888:	68 eb 03 00 00       	push   $0x3eb
    788d:	e8 aa fc ff ff       	call   753c <rw_sector>
    7892:	83 c4 20             	add    $0x20,%esp
    7895:	8b 0d 9c f7 00 00    	mov    0xf79c,%ecx
    789b:	8b 45 0c             	mov    0xc(%ebp),%eax
    789e:	8d 50 ff             	lea    -0x1(%eax),%edx
    78a1:	89 d0                	mov    %edx,%eax
    78a3:	c1 f8 1f             	sar    $0x1f,%eax
    78a6:	c1 e8 1c             	shr    $0x1c,%eax
    78a9:	01 c2                	add    %eax,%edx
    78ab:	83 e2 0f             	and    $0xf,%edx
    78ae:	29 c2                	sub    %eax,%edx
    78b0:	89 d0                	mov    %edx,%eax
    78b2:	c1 e0 05             	shl    $0x5,%eax
    78b5:	01 c8                	add    %ecx,%eax
    78b7:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    78ba:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    78bd:	8b 10                	mov    (%eax),%edx
    78bf:	8b 45 f0             	mov    -0x10(%ebp),%eax
    78c2:	89 10                	mov    %edx,(%eax)
    78c4:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    78c7:	8b 50 04             	mov    0x4(%eax),%edx
    78ca:	8b 45 f0             	mov    -0x10(%ebp),%eax
    78cd:	89 50 04             	mov    %edx,0x4(%eax)
    78d0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    78d3:	8b 50 08             	mov    0x8(%eax),%edx
    78d6:	8b 45 f0             	mov    -0x10(%ebp),%eax
    78d9:	89 50 08             	mov    %edx,0x8(%eax)
    78dc:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    78df:	8b 50 0c             	mov    0xc(%eax),%edx
    78e2:	8b 45 f0             	mov    -0x10(%ebp),%eax
    78e5:	89 50 0c             	mov    %edx,0xc(%eax)
    78e8:	8b 45 f0             	mov    -0x10(%ebp),%eax
    78eb:	c9                   	leave  
    78ec:	c3                   	ret    

000078ed <put_inode>:
    78ed:	55                   	push   %ebp
    78ee:	89 e5                	mov    %esp,%ebp
    78f0:	83 ec 08             	sub    $0x8,%esp
    78f3:	8b 45 08             	mov    0x8(%ebp),%eax
    78f6:	8b 40 24             	mov    0x24(%eax),%eax
    78f9:	85 c0                	test   %eax,%eax
    78fb:	7f 1c                	jg     7919 <put_inode+0x2c>
    78fd:	68 e0 01 00 00       	push   $0x1e0
    7902:	68 5e b9 00 00       	push   $0xb95e
    7907:	68 5e b9 00 00       	push   $0xb95e
    790c:	68 20 bb 00 00       	push   $0xbb20
    7911:	e8 7d f1 ff ff       	call   6a93 <assertion_failure>
    7916:	83 c4 10             	add    $0x10,%esp
    7919:	8b 45 08             	mov    0x8(%ebp),%eax
    791c:	8b 40 24             	mov    0x24(%eax),%eax
    791f:	8d 50 ff             	lea    -0x1(%eax),%edx
    7922:	8b 45 08             	mov    0x8(%ebp),%eax
    7925:	89 50 24             	mov    %edx,0x24(%eax)
    7928:	90                   	nop
    7929:	c9                   	leave  
    792a:	c3                   	ret    

0000792b <sync_inode>:
    792b:	55                   	push   %ebp
    792c:	89 e5                	mov    %esp,%ebp
    792e:	53                   	push   %ebx
    792f:	83 ec 14             	sub    $0x14,%esp
    7932:	8b 45 08             	mov    0x8(%ebp),%eax
    7935:	8b 40 20             	mov    0x20(%eax),%eax
    7938:	83 ec 0c             	sub    $0xc,%esp
    793b:	50                   	push   %eax
    793c:	e8 03 fe ff ff       	call   7744 <get_super_block>
    7941:	83 c4 10             	add    $0x10,%esp
    7944:	89 45 f4             	mov    %eax,-0xc(%ebp)
    7947:	8b 45 f4             	mov    -0xc(%ebp),%eax
    794a:	8b 50 0c             	mov    0xc(%eax),%edx
    794d:	8b 45 f4             	mov    -0xc(%ebp),%eax
    7950:	8b 40 10             	mov    0x10(%eax),%eax
    7953:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
    7956:	8b 45 08             	mov    0x8(%ebp),%eax
    7959:	8b 40 28             	mov    0x28(%eax),%eax
    795c:	83 e8 01             	sub    $0x1,%eax
    795f:	8d 50 0f             	lea    0xf(%eax),%edx
    7962:	85 c0                	test   %eax,%eax
    7964:	0f 48 c2             	cmovs  %edx,%eax
    7967:	c1 f8 04             	sar    $0x4,%eax
    796a:	01 c8                	add    %ecx,%eax
    796c:	83 c0 02             	add    $0x2,%eax
    796f:	89 45 f0             	mov    %eax,-0x10(%ebp)
    7972:	8b 1d 9c f7 00 00    	mov    0xf79c,%ebx
    7978:	8b 45 f0             	mov    -0x10(%ebp),%eax
    797b:	c1 e0 09             	shl    $0x9,%eax
    797e:	99                   	cltd   
    797f:	8b 4d 08             	mov    0x8(%ebp),%ecx
    7982:	8b 49 20             	mov    0x20(%ecx),%ecx
    7985:	83 ec 04             	sub    $0x4,%esp
    7988:	53                   	push   %ebx
    7989:	6a 03                	push   $0x3
    798b:	68 00 02 00 00       	push   $0x200
    7990:	52                   	push   %edx
    7991:	50                   	push   %eax
    7992:	51                   	push   %ecx
    7993:	68 eb 03 00 00       	push   $0x3eb
    7998:	e8 9f fb ff ff       	call   753c <rw_sector>
    799d:	83 c4 20             	add    $0x20,%esp
    79a0:	8b 0d 9c f7 00 00    	mov    0xf79c,%ecx
    79a6:	8b 45 08             	mov    0x8(%ebp),%eax
    79a9:	8b 40 28             	mov    0x28(%eax),%eax
    79ac:	8d 50 ff             	lea    -0x1(%eax),%edx
    79af:	89 d0                	mov    %edx,%eax
    79b1:	c1 f8 1f             	sar    $0x1f,%eax
    79b4:	c1 e8 1c             	shr    $0x1c,%eax
    79b7:	01 c2                	add    %eax,%edx
    79b9:	83 e2 0f             	and    $0xf,%edx
    79bc:	29 c2                	sub    %eax,%edx
    79be:	89 d0                	mov    %edx,%eax
    79c0:	c1 e0 05             	shl    $0x5,%eax
    79c3:	01 c8                	add    %ecx,%eax
    79c5:	89 45 ec             	mov    %eax,-0x14(%ebp)
    79c8:	8b 45 08             	mov    0x8(%ebp),%eax
    79cb:	8b 10                	mov    (%eax),%edx
    79cd:	8b 45 ec             	mov    -0x14(%ebp),%eax
    79d0:	89 10                	mov    %edx,(%eax)
    79d2:	8b 45 08             	mov    0x8(%ebp),%eax
    79d5:	8b 50 04             	mov    0x4(%eax),%edx
    79d8:	8b 45 ec             	mov    -0x14(%ebp),%eax
    79db:	89 50 04             	mov    %edx,0x4(%eax)
    79de:	8b 45 08             	mov    0x8(%ebp),%eax
    79e1:	8b 50 08             	mov    0x8(%eax),%edx
    79e4:	8b 45 ec             	mov    -0x14(%ebp),%eax
    79e7:	89 50 08             	mov    %edx,0x8(%eax)
    79ea:	8b 45 08             	mov    0x8(%ebp),%eax
    79ed:	8b 50 0c             	mov    0xc(%eax),%edx
    79f0:	8b 45 ec             	mov    -0x14(%ebp),%eax
    79f3:	89 50 0c             	mov    %edx,0xc(%eax)
    79f6:	8b 1d 9c f7 00 00    	mov    0xf79c,%ebx
    79fc:	8b 45 f0             	mov    -0x10(%ebp),%eax
    79ff:	c1 e0 09             	shl    $0x9,%eax
    7a02:	99                   	cltd   
    7a03:	8b 4d 08             	mov    0x8(%ebp),%ecx
    7a06:	8b 49 20             	mov    0x20(%ecx),%ecx
    7a09:	83 ec 04             	sub    $0x4,%esp
    7a0c:	53                   	push   %ebx
    7a0d:	6a 03                	push   $0x3
    7a0f:	68 00 02 00 00       	push   $0x200
    7a14:	52                   	push   %edx
    7a15:	50                   	push   %eax
    7a16:	51                   	push   %ecx
    7a17:	68 ec 03 00 00       	push   $0x3ec
    7a1c:	e8 1b fb ff ff       	call   753c <rw_sector>
    7a21:	83 c4 20             	add    $0x20,%esp
    7a24:	90                   	nop
    7a25:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    7a28:	c9                   	leave  
    7a29:	c3                   	ret    

00007a2a <do_open>:
    7a2a:	55                   	push   %ebp
    7a2b:	89 e5                	mov    %esp,%ebp
    7a2d:	53                   	push   %ebx
    7a2e:	81 ec 34 01 00 00    	sub    $0x134,%esp
    7a34:	c7 45 f4 ff ff ff ff 	movl   $0xffffffff,-0xc(%ebp)
    7a3b:	a1 e8 a4 04 00       	mov    0x4a4e8,%eax
    7a40:	89 45 e8             	mov    %eax,-0x18(%ebp)
    7a43:	a1 ec a4 04 00       	mov    0x4a4ec,%eax
    7a48:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    7a4b:	a1 e0 a4 04 00       	mov    0x4a4e0,%eax
    7a50:	89 45 e0             	mov    %eax,-0x20(%ebp)
    7a53:	83 7d e4 7f          	cmpl   $0x7f,-0x1c(%ebp)
    7a57:	7e 19                	jle    7a72 <do_open+0x48>
    7a59:	6a 33                	push   $0x33
    7a5b:	68 34 bb 00 00       	push   $0xbb34
    7a60:	68 34 bb 00 00       	push   $0xbb34
    7a65:	68 3e bb 00 00       	push   $0xbb3e
    7a6a:	e8 24 f0 ff ff       	call   6a93 <assertion_failure>
    7a6f:	83 c4 10             	add    $0x10,%esp
    7a72:	a1 08 a5 04 00       	mov    0x4a508,%eax
    7a77:	83 ec 08             	sub    $0x8,%esp
    7a7a:	50                   	push   %eax
    7a7b:	ff 75 e0             	pushl  -0x20(%ebp)
    7a7e:	e8 3b c5 ff ff       	call   3fbe <va2la>
    7a83:	83 c4 10             	add    $0x10,%esp
    7a86:	89 c3                	mov    %eax,%ebx
    7a88:	83 ec 08             	sub    $0x8,%esp
    7a8b:	8d 85 54 ff ff ff    	lea    -0xac(%ebp),%eax
    7a91:	50                   	push   %eax
    7a92:	6a 03                	push   $0x3
    7a94:	e8 25 c5 ff ff       	call   3fbe <va2la>
    7a99:	83 c4 10             	add    $0x10,%esp
    7a9c:	83 ec 04             	sub    $0x4,%esp
    7a9f:	ff 75 e4             	pushl  -0x1c(%ebp)
    7aa2:	53                   	push   %ebx
    7aa3:	50                   	push   %eax
    7aa4:	e8 17 ee ff ff       	call   68c0 <memcpy>
    7aa9:	83 c4 10             	add    $0x10,%esp
    7aac:	8d 95 54 ff ff ff    	lea    -0xac(%ebp),%edx
    7ab2:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    7ab5:	01 d0                	add    %edx,%eax
    7ab7:	c6 00 00             	movb   $0x0,(%eax)
    7aba:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    7ac1:	eb 1f                	jmp    7ae2 <do_open+0xb8>
    7ac3:	a1 c4 97 04 00       	mov    0x497c4,%eax
    7ac8:	8b 55 f0             	mov    -0x10(%ebp),%edx
    7acb:	83 c2 24             	add    $0x24,%edx
    7ace:	8b 44 90 04          	mov    0x4(%eax,%edx,4),%eax
    7ad2:	85 c0                	test   %eax,%eax
    7ad4:	75 08                	jne    7ade <do_open+0xb4>
    7ad6:	8b 45 f0             	mov    -0x10(%ebp),%eax
    7ad9:	89 45 f4             	mov    %eax,-0xc(%ebp)
    7adc:	eb 0a                	jmp    7ae8 <do_open+0xbe>
    7ade:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    7ae2:	83 7d f0 3f          	cmpl   $0x3f,-0x10(%ebp)
    7ae6:	7e db                	jle    7ac3 <do_open+0x99>
    7ae8:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    7aec:	78 06                	js     7af4 <do_open+0xca>
    7aee:	83 7d f4 3f          	cmpl   $0x3f,-0xc(%ebp)
    7af2:	7e 24                	jle    7b18 <do_open+0xee>
    7af4:	a1 c4 97 04 00       	mov    0x497c4,%eax
    7af9:	2d e0 b2 04 00       	sub    $0x4b2e0,%eax
    7afe:	c1 f8 02             	sar    $0x2,%eax
    7b01:	69 c0 6d b1 32 7c    	imul   $0x7c32b16d,%eax,%eax
    7b07:	83 ec 08             	sub    $0x8,%esp
    7b0a:	50                   	push   %eax
    7b0b:	68 52 bb 00 00       	push   $0xbb52
    7b10:	e8 fa a0 ff ff       	call   1c0f <panic>
    7b15:	83 c4 10             	add    $0x10,%esp
    7b18:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    7b1f:	eb 1b                	jmp    7b3c <do_open+0x112>
    7b21:	8b 55 f0             	mov    -0x10(%ebp),%edx
    7b24:	89 d0                	mov    %edx,%eax
    7b26:	01 c0                	add    %eax,%eax
    7b28:	01 d0                	add    %edx,%eax
    7b2a:	c1 e0 02             	shl    $0x2,%eax
    7b2d:	05 28 a5 04 00       	add    $0x4a528,%eax
    7b32:	8b 00                	mov    (%eax),%eax
    7b34:	85 c0                	test   %eax,%eax
    7b36:	74 0c                	je     7b44 <do_open+0x11a>
    7b38:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    7b3c:	83 7d f0 3f          	cmpl   $0x3f,-0x10(%ebp)
    7b40:	7e df                	jle    7b21 <do_open+0xf7>
    7b42:	eb 01                	jmp    7b45 <do_open+0x11b>
    7b44:	90                   	nop
    7b45:	83 7d f0 3f          	cmpl   $0x3f,-0x10(%ebp)
    7b49:	7e 24                	jle    7b6f <do_open+0x145>
    7b4b:	a1 c4 97 04 00       	mov    0x497c4,%eax
    7b50:	2d e0 b2 04 00       	sub    $0x4b2e0,%eax
    7b55:	c1 f8 02             	sar    $0x2,%eax
    7b58:	69 c0 6d b1 32 7c    	imul   $0x7c32b16d,%eax,%eax
    7b5e:	83 ec 08             	sub    $0x8,%esp
    7b61:	50                   	push   %eax
    7b62:	68 6c bb 00 00       	push   $0xbb6c
    7b67:	e8 a3 a0 ff ff       	call   1c0f <panic>
    7b6c:	83 c4 10             	add    $0x10,%esp
    7b6f:	83 ec 0c             	sub    $0xc,%esp
    7b72:	8d 85 54 ff ff ff    	lea    -0xac(%ebp),%eax
    7b78:	50                   	push   %eax
    7b79:	e8 3b 09 00 00       	call   84b9 <search_file>
    7b7e:	83 c4 10             	add    $0x10,%esp
    7b81:	89 45 dc             	mov    %eax,-0x24(%ebp)
    7b84:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    7b8b:	8b 45 e8             	mov    -0x18(%ebp),%eax
    7b8e:	83 e0 01             	and    $0x1,%eax
    7b91:	85 c0                	test   %eax,%eax
    7b93:	74 3a                	je     7bcf <do_open+0x1a5>
    7b95:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
    7b99:	74 1a                	je     7bb5 <do_open+0x18b>
    7b9b:	83 ec 0c             	sub    $0xc,%esp
    7b9e:	68 8c bb 00 00       	push   $0xbb8c
    7ba3:	e8 fc e6 ff ff       	call   62a4 <printf>
    7ba8:	83 c4 10             	add    $0x10,%esp
    7bab:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    7bb0:	e9 0c 02 00 00       	jmp    7dc1 <do_open+0x397>
    7bb5:	83 ec 08             	sub    $0x8,%esp
    7bb8:	ff 75 e8             	pushl  -0x18(%ebp)
    7bbb:	8d 85 54 ff ff ff    	lea    -0xac(%ebp),%eax
    7bc1:	50                   	push   %eax
    7bc2:	e8 ff 01 00 00       	call   7dc6 <create_file>
    7bc7:	83 c4 10             	add    $0x10,%esp
    7bca:	89 45 ec             	mov    %eax,-0x14(%ebp)
    7bcd:	eb 6c                	jmp    7c3b <do_open+0x211>
    7bcf:	8b 45 e8             	mov    -0x18(%ebp),%eax
    7bd2:	83 e0 02             	and    $0x2,%eax
    7bd5:	85 c0                	test   %eax,%eax
    7bd7:	75 19                	jne    7bf2 <do_open+0x1c8>
    7bd9:	6a 58                	push   $0x58
    7bdb:	68 34 bb 00 00       	push   $0xbb34
    7be0:	68 34 bb 00 00       	push   $0xbb34
    7be5:	68 9a bb 00 00       	push   $0xbb9a
    7bea:	e8 a4 ee ff ff       	call   6a93 <assertion_failure>
    7bef:	83 c4 10             	add    $0x10,%esp
    7bf2:	83 ec 04             	sub    $0x4,%esp
    7bf5:	8d 85 50 ff ff ff    	lea    -0xb0(%ebp),%eax
    7bfb:	50                   	push   %eax
    7bfc:	8d 85 54 ff ff ff    	lea    -0xac(%ebp),%eax
    7c02:	50                   	push   %eax
    7c03:	8d 85 d0 fe ff ff    	lea    -0x130(%ebp),%eax
    7c09:	50                   	push   %eax
    7c0a:	e8 00 0a 00 00       	call   860f <strip_path>
    7c0f:	83 c4 10             	add    $0x10,%esp
    7c12:	85 c0                	test   %eax,%eax
    7c14:	74 0a                	je     7c20 <do_open+0x1f6>
    7c16:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    7c1b:	e9 a1 01 00 00       	jmp    7dc1 <do_open+0x397>
    7c20:	8b 85 50 ff ff ff    	mov    -0xb0(%ebp),%eax
    7c26:	8b 40 20             	mov    0x20(%eax),%eax
    7c29:	83 ec 08             	sub    $0x8,%esp
    7c2c:	ff 75 dc             	pushl  -0x24(%ebp)
    7c2f:	50                   	push   %eax
    7c30:	e8 55 fb ff ff       	call   778a <get_inode>
    7c35:	83 c4 10             	add    $0x10,%esp
    7c38:	89 45 ec             	mov    %eax,-0x14(%ebp)
    7c3b:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
    7c3f:	0f 84 72 01 00 00    	je     7db7 <do_open+0x38d>
    7c45:	8b 0d c4 97 04 00    	mov    0x497c4,%ecx
    7c4b:	8b 55 f0             	mov    -0x10(%ebp),%edx
    7c4e:	89 d0                	mov    %edx,%eax
    7c50:	01 c0                	add    %eax,%eax
    7c52:	01 d0                	add    %edx,%eax
    7c54:	c1 e0 02             	shl    $0x2,%eax
    7c57:	8d 90 20 a5 04 00    	lea    0x4a520(%eax),%edx
    7c5d:	8b 45 f4             	mov    -0xc(%ebp),%eax
    7c60:	83 c0 24             	add    $0x24,%eax
    7c63:	89 54 81 04          	mov    %edx,0x4(%ecx,%eax,4)
    7c67:	8b 55 f0             	mov    -0x10(%ebp),%edx
    7c6a:	89 d0                	mov    %edx,%eax
    7c6c:	01 c0                	add    %eax,%eax
    7c6e:	01 d0                	add    %edx,%eax
    7c70:	c1 e0 02             	shl    $0x2,%eax
    7c73:	8d 90 28 a5 04 00    	lea    0x4a528(%eax),%edx
    7c79:	8b 45 ec             	mov    -0x14(%ebp),%eax
    7c7c:	89 02                	mov    %eax,(%edx)
    7c7e:	8b 55 f0             	mov    -0x10(%ebp),%edx
    7c81:	89 d0                	mov    %edx,%eax
    7c83:	01 c0                	add    %eax,%eax
    7c85:	01 d0                	add    %edx,%eax
    7c87:	c1 e0 02             	shl    $0x2,%eax
    7c8a:	8d 90 20 a5 04 00    	lea    0x4a520(%eax),%edx
    7c90:	8b 45 e8             	mov    -0x18(%ebp),%eax
    7c93:	89 02                	mov    %eax,(%edx)
    7c95:	8b 55 f0             	mov    -0x10(%ebp),%edx
    7c98:	89 d0                	mov    %edx,%eax
    7c9a:	01 c0                	add    %eax,%eax
    7c9c:	01 d0                	add    %edx,%eax
    7c9e:	c1 e0 02             	shl    $0x2,%eax
    7ca1:	05 24 a5 04 00       	add    $0x4a524,%eax
    7ca6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
    7cac:	8b 45 ec             	mov    -0x14(%ebp),%eax
    7caf:	8b 00                	mov    (%eax),%eax
    7cb1:	25 00 f0 00 00       	and    $0xf000,%eax
    7cb6:	89 45 d8             	mov    %eax,-0x28(%ebp)
    7cb9:	81 7d d8 00 20 00 00 	cmpl   $0x2000,-0x28(%ebp)
    7cc0:	0f 85 9b 00 00 00    	jne    7d61 <do_open+0x337>
    7cc6:	c7 85 d4 fe ff ff e9 	movl   $0x3e9,-0x12c(%ebp)
    7ccd:	03 00 00 
    7cd0:	8b 45 ec             	mov    -0x14(%ebp),%eax
    7cd3:	8b 40 08             	mov    0x8(%eax),%eax
    7cd6:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    7cd9:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    7cdc:	0f b6 c0             	movzbl %al,%eax
    7cdf:	89 85 e4 fe ff ff    	mov    %eax,-0x11c(%ebp)
    7ce5:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    7ce8:	c1 f8 08             	sar    $0x8,%eax
    7ceb:	0f b6 c0             	movzbl %al,%eax
    7cee:	83 f8 04             	cmp    $0x4,%eax
    7cf1:	74 19                	je     7d0c <do_open+0x2e2>
    7cf3:	6a 73                	push   $0x73
    7cf5:	68 34 bb 00 00       	push   $0xbb34
    7cfa:	68 34 bb 00 00       	push   $0xbb34
    7cff:	68 a9 bb 00 00       	push   $0xbba9
    7d04:	e8 8a ed ff ff       	call   6a93 <assertion_failure>
    7d09:	83 c4 10             	add    $0x10,%esp
    7d0c:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    7d0f:	c1 f8 08             	sar    $0x8,%eax
    7d12:	0f b6 c0             	movzbl %al,%eax
    7d15:	8b 04 85 84 f7 00 00 	mov    0xf784(,%eax,4),%eax
    7d1c:	83 f8 ec             	cmp    $0xffffffec,%eax
    7d1f:	75 19                	jne    7d3a <do_open+0x310>
    7d21:	6a 74                	push   $0x74
    7d23:	68 34 bb 00 00       	push   $0xbb34
    7d28:	68 34 bb 00 00       	push   $0xbb34
    7d2d:	68 bc bb 00 00       	push   $0xbbbc
    7d32:	e8 5c ed ff ff       	call   6a93 <assertion_failure>
    7d37:	83 c4 10             	add    $0x10,%esp
    7d3a:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    7d3d:	c1 f8 08             	sar    $0x8,%eax
    7d40:	0f b6 c0             	movzbl %al,%eax
    7d43:	8b 04 85 84 f7 00 00 	mov    0xf784(,%eax,4),%eax
    7d4a:	83 ec 04             	sub    $0x4,%esp
    7d4d:	8d 95 d0 fe ff ff    	lea    -0x130(%ebp),%edx
    7d53:	52                   	push   %edx
    7d54:	50                   	push   %eax
    7d55:	6a 03                	push   $0x3
    7d57:	e8 5b c1 ff ff       	call   3eb7 <send_recv>
    7d5c:	83 c4 10             	add    $0x10,%esp
    7d5f:	eb 5d                	jmp    7dbe <do_open+0x394>
    7d61:	81 7d d8 00 40 00 00 	cmpl   $0x4000,-0x28(%ebp)
    7d68:	75 26                	jne    7d90 <do_open+0x366>
    7d6a:	8b 45 ec             	mov    -0x14(%ebp),%eax
    7d6d:	8b 40 28             	mov    0x28(%eax),%eax
    7d70:	83 f8 01             	cmp    $0x1,%eax
    7d73:	74 49                	je     7dbe <do_open+0x394>
    7d75:	6a 7a                	push   $0x7a
    7d77:	68 34 bb 00 00       	push   $0xbb34
    7d7c:	68 34 bb 00 00       	push   $0xbb34
    7d81:	68 eb bb 00 00       	push   $0xbbeb
    7d86:	e8 08 ed ff ff       	call   6a93 <assertion_failure>
    7d8b:	83 c4 10             	add    $0x10,%esp
    7d8e:	eb 2e                	jmp    7dbe <do_open+0x394>
    7d90:	8b 45 ec             	mov    -0x14(%ebp),%eax
    7d93:	8b 00                	mov    (%eax),%eax
    7d95:	3d 00 80 00 00       	cmp    $0x8000,%eax
    7d9a:	74 22                	je     7dbe <do_open+0x394>
    7d9c:	6a 7d                	push   $0x7d
    7d9e:	68 34 bb 00 00       	push   $0xbb34
    7da3:	68 34 bb 00 00       	push   $0xbb34
    7da8:	68 04 bc 00 00       	push   $0xbc04
    7dad:	e8 e1 ec ff ff       	call   6a93 <assertion_failure>
    7db2:	83 c4 10             	add    $0x10,%esp
    7db5:	eb 07                	jmp    7dbe <do_open+0x394>
    7db7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    7dbc:	eb 03                	jmp    7dc1 <do_open+0x397>
    7dbe:	8b 45 f4             	mov    -0xc(%ebp),%eax
    7dc1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    7dc4:	c9                   	leave  
    7dc5:	c3                   	ret    

00007dc6 <create_file>:
    7dc6:	55                   	push   %ebp
    7dc7:	89 e5                	mov    %esp,%ebp
    7dc9:	81 ec 98 00 00 00    	sub    $0x98,%esp
    7dcf:	83 ec 04             	sub    $0x4,%esp
    7dd2:	8d 85 68 ff ff ff    	lea    -0x98(%ebp),%eax
    7dd8:	50                   	push   %eax
    7dd9:	ff 75 08             	pushl  0x8(%ebp)
    7ddc:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
    7de2:	50                   	push   %eax
    7de3:	e8 27 08 00 00       	call   860f <strip_path>
    7de8:	83 c4 10             	add    $0x10,%esp
    7deb:	85 c0                	test   %eax,%eax
    7ded:	74 07                	je     7df6 <create_file+0x30>
    7def:	b8 00 00 00 00       	mov    $0x0,%eax
    7df4:	eb 76                	jmp    7e6c <create_file+0xa6>
    7df6:	8b 85 68 ff ff ff    	mov    -0x98(%ebp),%eax
    7dfc:	8b 40 20             	mov    0x20(%eax),%eax
    7dff:	83 ec 0c             	sub    $0xc,%esp
    7e02:	50                   	push   %eax
    7e03:	e8 72 01 00 00       	call   7f7a <alloc_imap_bit>
    7e08:	83 c4 10             	add    $0x10,%esp
    7e0b:	89 45 f4             	mov    %eax,-0xc(%ebp)
    7e0e:	8b 85 68 ff ff ff    	mov    -0x98(%ebp),%eax
    7e14:	8b 40 20             	mov    0x20(%eax),%eax
    7e17:	83 ec 08             	sub    $0x8,%esp
    7e1a:	68 00 08 00 00       	push   $0x800
    7e1f:	50                   	push   %eax
    7e20:	e8 c2 02 00 00       	call   80e7 <alloc_smap_bit>
    7e25:	83 c4 10             	add    $0x10,%esp
    7e28:	89 45 f0             	mov    %eax,-0x10(%ebp)
    7e2b:	8b 85 68 ff ff ff    	mov    -0x98(%ebp),%eax
    7e31:	8b 40 20             	mov    0x20(%eax),%eax
    7e34:	83 ec 04             	sub    $0x4,%esp
    7e37:	ff 75 f0             	pushl  -0x10(%ebp)
    7e3a:	ff 75 f4             	pushl  -0xc(%ebp)
    7e3d:	50                   	push   %eax
    7e3e:	e8 af 04 00 00       	call   82f2 <new_inode>
    7e43:	83 c4 10             	add    $0x10,%esp
    7e46:	89 45 ec             	mov    %eax,-0x14(%ebp)
    7e49:	8b 45 ec             	mov    -0x14(%ebp),%eax
    7e4c:	8b 50 28             	mov    0x28(%eax),%edx
    7e4f:	8b 85 68 ff ff ff    	mov    -0x98(%ebp),%eax
    7e55:	83 ec 04             	sub    $0x4,%esp
    7e58:	8d 8d 6c ff ff ff    	lea    -0x94(%ebp),%ecx
    7e5e:	51                   	push   %ecx
    7e5f:	52                   	push   %edx
    7e60:	50                   	push   %eax
    7e61:	e8 fb 04 00 00       	call   8361 <new_dir_entry>
    7e66:	83 c4 10             	add    $0x10,%esp
    7e69:	8b 45 ec             	mov    -0x14(%ebp),%eax
    7e6c:	c9                   	leave  
    7e6d:	c3                   	ret    

00007e6e <do_close>:
    7e6e:	55                   	push   %ebp
    7e6f:	89 e5                	mov    %esp,%ebp
    7e71:	83 ec 18             	sub    $0x18,%esp
    7e74:	a1 e8 a4 04 00       	mov    0x4a4e8,%eax
    7e79:	89 45 f4             	mov    %eax,-0xc(%ebp)
    7e7c:	a1 c4 97 04 00       	mov    0x497c4,%eax
    7e81:	8b 55 f4             	mov    -0xc(%ebp),%edx
    7e84:	83 c2 24             	add    $0x24,%edx
    7e87:	8b 44 90 04          	mov    0x4(%eax,%edx,4),%eax
    7e8b:	8b 40 08             	mov    0x8(%eax),%eax
    7e8e:	83 ec 0c             	sub    $0xc,%esp
    7e91:	50                   	push   %eax
    7e92:	e8 56 fa ff ff       	call   78ed <put_inode>
    7e97:	83 c4 10             	add    $0x10,%esp
    7e9a:	a1 c4 97 04 00       	mov    0x497c4,%eax
    7e9f:	8b 55 f4             	mov    -0xc(%ebp),%edx
    7ea2:	83 c2 24             	add    $0x24,%edx
    7ea5:	8b 44 90 04          	mov    0x4(%eax,%edx,4),%eax
    7ea9:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
    7eb0:	a1 c4 97 04 00       	mov    0x497c4,%eax
    7eb5:	8b 55 f4             	mov    -0xc(%ebp),%edx
    7eb8:	83 c2 24             	add    $0x24,%edx
    7ebb:	c7 44 90 04 00 00 00 	movl   $0x0,0x4(%eax,%edx,4)
    7ec2:	00 
    7ec3:	b8 00 00 00 00       	mov    $0x0,%eax
    7ec8:	c9                   	leave  
    7ec9:	c3                   	ret    

00007eca <do_lseek>:
    7eca:	55                   	push   %ebp
    7ecb:	89 e5                	mov    %esp,%ebp
    7ecd:	83 ec 20             	sub    $0x20,%esp
    7ed0:	a1 e8 a4 04 00       	mov    0x4a4e8,%eax
    7ed5:	89 45 f8             	mov    %eax,-0x8(%ebp)
    7ed8:	a1 ec a4 04 00       	mov    0x4a4ec,%eax
    7edd:	89 45 f4             	mov    %eax,-0xc(%ebp)
    7ee0:	a1 f0 a4 04 00       	mov    0x4a4f0,%eax
    7ee5:	89 45 f0             	mov    %eax,-0x10(%ebp)
    7ee8:	a1 c4 97 04 00       	mov    0x497c4,%eax
    7eed:	8b 55 f8             	mov    -0x8(%ebp),%edx
    7ef0:	83 c2 24             	add    $0x24,%edx
    7ef3:	8b 44 90 04          	mov    0x4(%eax,%edx,4),%eax
    7ef7:	8b 40 04             	mov    0x4(%eax),%eax
    7efa:	89 45 fc             	mov    %eax,-0x4(%ebp)
    7efd:	a1 c4 97 04 00       	mov    0x497c4,%eax
    7f02:	8b 55 f8             	mov    -0x8(%ebp),%edx
    7f05:	83 c2 24             	add    $0x24,%edx
    7f08:	8b 44 90 04          	mov    0x4(%eax,%edx,4),%eax
    7f0c:	8b 40 08             	mov    0x8(%eax),%eax
    7f0f:	8b 40 04             	mov    0x4(%eax),%eax
    7f12:	89 45 ec             	mov    %eax,-0x14(%ebp)
    7f15:	83 7d f0 02          	cmpl   $0x2,-0x10(%ebp)
    7f19:	74 14                	je     7f2f <do_lseek+0x65>
    7f1b:	83 7d f0 03          	cmpl   $0x3,-0x10(%ebp)
    7f1f:	74 16                	je     7f37 <do_lseek+0x6d>
    7f21:	83 7d f0 01          	cmpl   $0x1,-0x10(%ebp)
    7f25:	75 1d                	jne    7f44 <do_lseek+0x7a>
    7f27:	8b 45 f4             	mov    -0xc(%ebp),%eax
    7f2a:	89 45 fc             	mov    %eax,-0x4(%ebp)
    7f2d:	eb 1c                	jmp    7f4b <do_lseek+0x81>
    7f2f:	8b 45 f4             	mov    -0xc(%ebp),%eax
    7f32:	01 45 fc             	add    %eax,-0x4(%ebp)
    7f35:	eb 14                	jmp    7f4b <do_lseek+0x81>
    7f37:	8b 55 ec             	mov    -0x14(%ebp),%edx
    7f3a:	8b 45 f4             	mov    -0xc(%ebp),%eax
    7f3d:	01 d0                	add    %edx,%eax
    7f3f:	89 45 fc             	mov    %eax,-0x4(%ebp)
    7f42:	eb 07                	jmp    7f4b <do_lseek+0x81>
    7f44:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    7f49:	eb 2d                	jmp    7f78 <do_lseek+0xae>
    7f4b:	8b 45 fc             	mov    -0x4(%ebp),%eax
    7f4e:	3b 45 ec             	cmp    -0x14(%ebp),%eax
    7f51:	7f 06                	jg     7f59 <do_lseek+0x8f>
    7f53:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
    7f57:	79 07                	jns    7f60 <do_lseek+0x96>
    7f59:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    7f5e:	eb 18                	jmp    7f78 <do_lseek+0xae>
    7f60:	a1 c4 97 04 00       	mov    0x497c4,%eax
    7f65:	8b 55 f8             	mov    -0x8(%ebp),%edx
    7f68:	83 c2 24             	add    $0x24,%edx
    7f6b:	8b 44 90 04          	mov    0x4(%eax,%edx,4),%eax
    7f6f:	8b 55 fc             	mov    -0x4(%ebp),%edx
    7f72:	89 50 04             	mov    %edx,0x4(%eax)
    7f75:	8b 45 fc             	mov    -0x4(%ebp),%eax
    7f78:	c9                   	leave  
    7f79:	c3                   	ret    

00007f7a <alloc_imap_bit>:
    7f7a:	55                   	push   %ebp
    7f7b:	89 e5                	mov    %esp,%ebp
    7f7d:	53                   	push   %ebx
    7f7e:	83 ec 24             	sub    $0x24,%esp
    7f81:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    7f88:	c7 45 e8 02 00 00 00 	movl   $0x2,-0x18(%ebp)
    7f8f:	83 ec 0c             	sub    $0xc,%esp
    7f92:	ff 75 08             	pushl  0x8(%ebp)
    7f95:	e8 aa f7 ff ff       	call   7744 <get_super_block>
    7f9a:	83 c4 10             	add    $0x10,%esp
    7f9d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    7fa0:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
    7fa7:	90                   	nop
    7fa8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    7fab:	8b 50 0c             	mov    0xc(%eax),%edx
    7fae:	8b 45 e0             	mov    -0x20(%ebp),%eax
    7fb1:	39 c2                	cmp    %eax,%edx
    7fb3:	0f 86 14 01 00 00    	jbe    80cd <alloc_imap_bit+0x153>
    7fb9:	8b 0d 9c f7 00 00    	mov    0xf79c,%ecx
    7fbf:	8b 55 e8             	mov    -0x18(%ebp),%edx
    7fc2:	8b 45 e0             	mov    -0x20(%ebp),%eax
    7fc5:	01 d0                	add    %edx,%eax
    7fc7:	c1 e0 09             	shl    $0x9,%eax
    7fca:	99                   	cltd   
    7fcb:	83 ec 04             	sub    $0x4,%esp
    7fce:	51                   	push   %ecx
    7fcf:	6a 03                	push   $0x3
    7fd1:	68 00 02 00 00       	push   $0x200
    7fd6:	52                   	push   %edx
    7fd7:	50                   	push   %eax
    7fd8:	ff 75 08             	pushl  0x8(%ebp)
    7fdb:	68 eb 03 00 00       	push   $0x3eb
    7fe0:	e8 57 f5 ff ff       	call   753c <rw_sector>
    7fe5:	83 c4 20             	add    $0x20,%esp
    7fe8:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    7fef:	e9 c7 00 00 00       	jmp    80bb <alloc_imap_bit+0x141>
    7ff4:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    7ffa:	8b 45 f0             	mov    -0x10(%ebp),%eax
    7ffd:	01 d0                	add    %edx,%eax
    7fff:	0f b6 00             	movzbl (%eax),%eax
    8002:	3c ff                	cmp    $0xff,%al
    8004:	75 09                	jne    800f <alloc_imap_bit+0x95>
    8006:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    800a:	e9 ac 00 00 00       	jmp    80bb <alloc_imap_bit+0x141>
    800f:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    8016:	eb 04                	jmp    801c <alloc_imap_bit+0xa2>
    8018:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
    801c:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    8022:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8025:	01 d0                	add    %edx,%eax
    8027:	0f b6 00             	movzbl (%eax),%eax
    802a:	0f b6 d0             	movzbl %al,%edx
    802d:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8030:	89 c1                	mov    %eax,%ecx
    8032:	d3 fa                	sar    %cl,%edx
    8034:	89 d0                	mov    %edx,%eax
    8036:	83 e0 01             	and    $0x1,%eax
    8039:	85 c0                	test   %eax,%eax
    803b:	75 db                	jne    8018 <alloc_imap_bit+0x9e>
    803d:	8b 45 e0             	mov    -0x20(%ebp),%eax
    8040:	c1 e0 09             	shl    $0x9,%eax
    8043:	89 c2                	mov    %eax,%edx
    8045:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8048:	01 d0                	add    %edx,%eax
    804a:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    8051:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8054:	01 d0                	add    %edx,%eax
    8056:	89 45 f4             	mov    %eax,-0xc(%ebp)
    8059:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    805f:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8062:	01 d0                	add    %edx,%eax
    8064:	0f b6 00             	movzbl (%eax),%eax
    8067:	89 c3                	mov    %eax,%ebx
    8069:	8b 45 ec             	mov    -0x14(%ebp),%eax
    806c:	ba 01 00 00 00       	mov    $0x1,%edx
    8071:	89 c1                	mov    %eax,%ecx
    8073:	d3 e2                	shl    %cl,%edx
    8075:	89 d0                	mov    %edx,%eax
    8077:	09 c3                	or     %eax,%ebx
    8079:	89 d9                	mov    %ebx,%ecx
    807b:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    8081:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8084:	01 d0                	add    %edx,%eax
    8086:	89 ca                	mov    %ecx,%edx
    8088:	88 10                	mov    %dl,(%eax)
    808a:	8b 0d 9c f7 00 00    	mov    0xf79c,%ecx
    8090:	8b 55 e8             	mov    -0x18(%ebp),%edx
    8093:	8b 45 e0             	mov    -0x20(%ebp),%eax
    8096:	01 d0                	add    %edx,%eax
    8098:	c1 e0 09             	shl    $0x9,%eax
    809b:	99                   	cltd   
    809c:	83 ec 04             	sub    $0x4,%esp
    809f:	51                   	push   %ecx
    80a0:	6a 03                	push   $0x3
    80a2:	68 00 02 00 00       	push   $0x200
    80a7:	52                   	push   %edx
    80a8:	50                   	push   %eax
    80a9:	ff 75 08             	pushl  0x8(%ebp)
    80ac:	68 ec 03 00 00       	push   $0x3ec
    80b1:	e8 86 f4 ff ff       	call   753c <rw_sector>
    80b6:	83 c4 20             	add    $0x20,%esp
    80b9:	eb 0d                	jmp    80c8 <alloc_imap_bit+0x14e>
    80bb:	81 7d f0 ff 01 00 00 	cmpl   $0x1ff,-0x10(%ebp)
    80c2:	0f 8e 2c ff ff ff    	jle    7ff4 <alloc_imap_bit+0x7a>
    80c8:	8b 45 f4             	mov    -0xc(%ebp),%eax
    80cb:	eb 15                	jmp    80e2 <alloc_imap_bit+0x168>
    80cd:	83 ec 0c             	sub    $0xc,%esp
    80d0:	68 1d bc 00 00       	push   $0xbc1d
    80d5:	e8 35 9b ff ff       	call   1c0f <panic>
    80da:	83 c4 10             	add    $0x10,%esp
    80dd:	b8 00 00 00 00       	mov    $0x0,%eax
    80e2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    80e5:	c9                   	leave  
    80e6:	c3                   	ret    

000080e7 <alloc_smap_bit>:
    80e7:	55                   	push   %ebp
    80e8:	89 e5                	mov    %esp,%ebp
    80ea:	53                   	push   %ebx
    80eb:	83 ec 24             	sub    $0x24,%esp
    80ee:	83 ec 0c             	sub    $0xc,%esp
    80f1:	ff 75 08             	pushl  0x8(%ebp)
    80f4:	e8 4b f6 ff ff       	call   7744 <get_super_block>
    80f9:	83 c4 10             	add    $0x10,%esp
    80fc:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    80ff:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    8102:	8b 40 0c             	mov    0xc(%eax),%eax
    8105:	83 c0 02             	add    $0x2,%eax
    8108:	89 45 e0             	mov    %eax,-0x20(%ebp)
    810b:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
    8112:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    8119:	e9 96 01 00 00       	jmp    82b4 <alloc_smap_bit+0x1cd>
    811e:	8b 0d 9c f7 00 00    	mov    0xf79c,%ecx
    8124:	8b 55 e0             	mov    -0x20(%ebp),%edx
    8127:	8b 45 f4             	mov    -0xc(%ebp),%eax
    812a:	01 d0                	add    %edx,%eax
    812c:	c1 e0 09             	shl    $0x9,%eax
    812f:	99                   	cltd   
    8130:	83 ec 04             	sub    $0x4,%esp
    8133:	51                   	push   %ecx
    8134:	6a 03                	push   $0x3
    8136:	68 00 02 00 00       	push   $0x200
    813b:	52                   	push   %edx
    813c:	50                   	push   %eax
    813d:	ff 75 08             	pushl  0x8(%ebp)
    8140:	68 eb 03 00 00       	push   $0x3eb
    8145:	e8 f2 f3 ff ff       	call   753c <rw_sector>
    814a:	83 c4 20             	add    $0x20,%esp
    814d:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    8154:	e9 09 01 00 00       	jmp    8262 <alloc_smap_bit+0x17b>
    8159:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    8160:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
    8164:	0f 85 e4 00 00 00    	jne    824e <alloc_smap_bit+0x167>
    816a:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    8170:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8173:	01 d0                	add    %edx,%eax
    8175:	0f b6 00             	movzbl (%eax),%eax
    8178:	3c ff                	cmp    $0xff,%al
    817a:	0f 84 da 00 00 00    	je     825a <alloc_smap_bit+0x173>
    8180:	eb 04                	jmp    8186 <alloc_smap_bit+0x9f>
    8182:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
    8186:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    818c:	8b 45 f0             	mov    -0x10(%ebp),%eax
    818f:	01 d0                	add    %edx,%eax
    8191:	0f b6 00             	movzbl (%eax),%eax
    8194:	0f b6 d0             	movzbl %al,%edx
    8197:	8b 45 ec             	mov    -0x14(%ebp),%eax
    819a:	89 c1                	mov    %eax,%ecx
    819c:	d3 fa                	sar    %cl,%edx
    819e:	89 d0                	mov    %edx,%eax
    81a0:	83 e0 01             	and    $0x1,%eax
    81a3:	85 c0                	test   %eax,%eax
    81a5:	75 db                	jne    8182 <alloc_smap_bit+0x9b>
    81a7:	8b 45 f4             	mov    -0xc(%ebp),%eax
    81aa:	c1 e0 09             	shl    $0x9,%eax
    81ad:	89 c2                	mov    %eax,%edx
    81af:	8b 45 f0             	mov    -0x10(%ebp),%eax
    81b2:	01 d0                	add    %edx,%eax
    81b4:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    81bb:	8b 45 ec             	mov    -0x14(%ebp),%eax
    81be:	01 d0                	add    %edx,%eax
    81c0:	89 c2                	mov    %eax,%edx
    81c2:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    81c5:	8b 40 14             	mov    0x14(%eax),%eax
    81c8:	01 d0                	add    %edx,%eax
    81ca:	83 e8 01             	sub    $0x1,%eax
    81cd:	89 45 e8             	mov    %eax,-0x18(%ebp)
    81d0:	eb 7c                	jmp    824e <alloc_smap_bit+0x167>
    81d2:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    81d8:	8b 45 f0             	mov    -0x10(%ebp),%eax
    81db:	01 d0                	add    %edx,%eax
    81dd:	0f b6 00             	movzbl (%eax),%eax
    81e0:	0f b6 d0             	movzbl %al,%edx
    81e3:	8b 45 ec             	mov    -0x14(%ebp),%eax
    81e6:	89 c1                	mov    %eax,%ecx
    81e8:	d3 fa                	sar    %cl,%edx
    81ea:	89 d0                	mov    %edx,%eax
    81ec:	83 e0 01             	and    $0x1,%eax
    81ef:	85 c0                	test   %eax,%eax
    81f1:	74 1c                	je     820f <alloc_smap_bit+0x128>
    81f3:	68 36 01 00 00       	push   $0x136
    81f8:	68 34 bb 00 00       	push   $0xbb34
    81fd:	68 34 bb 00 00       	push   $0xbb34
    8202:	68 3a bc 00 00       	push   $0xbc3a
    8207:	e8 87 e8 ff ff       	call   6a93 <assertion_failure>
    820c:	83 c4 10             	add    $0x10,%esp
    820f:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    8215:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8218:	01 d0                	add    %edx,%eax
    821a:	0f b6 00             	movzbl (%eax),%eax
    821d:	89 c3                	mov    %eax,%ebx
    821f:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8222:	ba 01 00 00 00       	mov    $0x1,%edx
    8227:	89 c1                	mov    %eax,%ecx
    8229:	d3 e2                	shl    %cl,%edx
    822b:	89 d0                	mov    %edx,%eax
    822d:	09 c3                	or     %eax,%ebx
    822f:	89 d9                	mov    %ebx,%ecx
    8231:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    8237:	8b 45 f0             	mov    -0x10(%ebp),%eax
    823a:	01 d0                	add    %edx,%eax
    823c:	89 ca                	mov    %ecx,%edx
    823e:	88 10                	mov    %dl,(%eax)
    8240:	83 6d 0c 01          	subl   $0x1,0xc(%ebp)
    8244:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    8248:	74 13                	je     825d <alloc_smap_bit+0x176>
    824a:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
    824e:	83 7d ec 07          	cmpl   $0x7,-0x14(%ebp)
    8252:	0f 8e 7a ff ff ff    	jle    81d2 <alloc_smap_bit+0xeb>
    8258:	eb 04                	jmp    825e <alloc_smap_bit+0x177>
    825a:	90                   	nop
    825b:	eb 01                	jmp    825e <alloc_smap_bit+0x177>
    825d:	90                   	nop
    825e:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    8262:	81 7d f0 ff 01 00 00 	cmpl   $0x1ff,-0x10(%ebp)
    8269:	7f 0a                	jg     8275 <alloc_smap_bit+0x18e>
    826b:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    826f:	0f 8f e4 fe ff ff    	jg     8159 <alloc_smap_bit+0x72>
    8275:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
    8279:	74 2f                	je     82aa <alloc_smap_bit+0x1c3>
    827b:	8b 0d 9c f7 00 00    	mov    0xf79c,%ecx
    8281:	8b 55 e0             	mov    -0x20(%ebp),%edx
    8284:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8287:	01 d0                	add    %edx,%eax
    8289:	c1 e0 09             	shl    $0x9,%eax
    828c:	99                   	cltd   
    828d:	83 ec 04             	sub    $0x4,%esp
    8290:	51                   	push   %ecx
    8291:	6a 03                	push   $0x3
    8293:	68 00 02 00 00       	push   $0x200
    8298:	52                   	push   %edx
    8299:	50                   	push   %eax
    829a:	ff 75 08             	pushl  0x8(%ebp)
    829d:	68 ec 03 00 00       	push   $0x3ec
    82a2:	e8 95 f2 ff ff       	call   753c <rw_sector>
    82a7:	83 c4 20             	add    $0x20,%esp
    82aa:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    82ae:	74 17                	je     82c7 <alloc_smap_bit+0x1e0>
    82b0:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    82b4:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    82b7:	8b 50 10             	mov    0x10(%eax),%edx
    82ba:	8b 45 f4             	mov    -0xc(%ebp),%eax
    82bd:	39 c2                	cmp    %eax,%edx
    82bf:	0f 87 59 fe ff ff    	ja     811e <alloc_smap_bit+0x37>
    82c5:	eb 01                	jmp    82c8 <alloc_smap_bit+0x1e1>
    82c7:	90                   	nop
    82c8:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    82cc:	74 1c                	je     82ea <alloc_smap_bit+0x203>
    82ce:	68 44 01 00 00       	push   $0x144
    82d3:	68 34 bb 00 00       	push   $0xbb34
    82d8:	68 34 bb 00 00       	push   $0xbb34
    82dd:	68 55 bc 00 00       	push   $0xbc55
    82e2:	e8 ac e7 ff ff       	call   6a93 <assertion_failure>
    82e7:	83 c4 10             	add    $0x10,%esp
    82ea:	8b 45 e8             	mov    -0x18(%ebp),%eax
    82ed:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    82f0:	c9                   	leave  
    82f1:	c3                   	ret    

000082f2 <new_inode>:
    82f2:	55                   	push   %ebp
    82f3:	89 e5                	mov    %esp,%ebp
    82f5:	83 ec 18             	sub    $0x18,%esp
    82f8:	83 ec 08             	sub    $0x8,%esp
    82fb:	ff 75 0c             	pushl  0xc(%ebp)
    82fe:	ff 75 08             	pushl  0x8(%ebp)
    8301:	e8 84 f4 ff ff       	call   778a <get_inode>
    8306:	83 c4 10             	add    $0x10,%esp
    8309:	89 45 f4             	mov    %eax,-0xc(%ebp)
    830c:	8b 45 f4             	mov    -0xc(%ebp),%eax
    830f:	c7 00 00 80 00 00    	movl   $0x8000,(%eax)
    8315:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8318:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
    831f:	8b 55 10             	mov    0x10(%ebp),%edx
    8322:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8325:	89 50 08             	mov    %edx,0x8(%eax)
    8328:	8b 45 f4             	mov    -0xc(%ebp),%eax
    832b:	c7 40 0c 00 08 00 00 	movl   $0x800,0xc(%eax)
    8332:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8335:	8b 55 08             	mov    0x8(%ebp),%edx
    8338:	89 50 20             	mov    %edx,0x20(%eax)
    833b:	8b 45 f4             	mov    -0xc(%ebp),%eax
    833e:	c7 40 24 01 00 00 00 	movl   $0x1,0x24(%eax)
    8345:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8348:	8b 55 0c             	mov    0xc(%ebp),%edx
    834b:	89 50 28             	mov    %edx,0x28(%eax)
    834e:	83 ec 0c             	sub    $0xc,%esp
    8351:	ff 75 f4             	pushl  -0xc(%ebp)
    8354:	e8 d2 f5 ff ff       	call   792b <sync_inode>
    8359:	83 c4 10             	add    $0x10,%esp
    835c:	8b 45 f4             	mov    -0xc(%ebp),%eax
    835f:	c9                   	leave  
    8360:	c3                   	ret    

00008361 <new_dir_entry>:
    8361:	55                   	push   %ebp
    8362:	89 e5                	mov    %esp,%ebp
    8364:	53                   	push   %ebx
    8365:	83 ec 24             	sub    $0x24,%esp
    8368:	8b 45 08             	mov    0x8(%ebp),%eax
    836b:	8b 40 08             	mov    0x8(%eax),%eax
    836e:	89 45 e0             	mov    %eax,-0x20(%ebp)
    8371:	8b 45 08             	mov    0x8(%ebp),%eax
    8374:	8b 40 04             	mov    0x4(%eax),%eax
    8377:	05 00 02 00 00       	add    $0x200,%eax
    837c:	c1 e8 09             	shr    $0x9,%eax
    837f:	89 45 dc             	mov    %eax,-0x24(%ebp)
    8382:	8b 45 08             	mov    0x8(%ebp),%eax
    8385:	8b 40 04             	mov    0x4(%eax),%eax
    8388:	c1 e8 04             	shr    $0x4,%eax
    838b:	89 45 d8             	mov    %eax,-0x28(%ebp)
    838e:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    8395:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    839c:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
    83a3:	e9 86 00 00 00       	jmp    842e <new_dir_entry+0xcd>
    83a8:	8b 1d 9c f7 00 00    	mov    0xf79c,%ebx
    83ae:	8b 55 e0             	mov    -0x20(%ebp),%edx
    83b1:	8b 45 e8             	mov    -0x18(%ebp),%eax
    83b4:	01 d0                	add    %edx,%eax
    83b6:	c1 e0 09             	shl    $0x9,%eax
    83b9:	99                   	cltd   
    83ba:	8b 4d 08             	mov    0x8(%ebp),%ecx
    83bd:	8b 49 20             	mov    0x20(%ecx),%ecx
    83c0:	83 ec 04             	sub    $0x4,%esp
    83c3:	53                   	push   %ebx
    83c4:	6a 03                	push   $0x3
    83c6:	68 00 02 00 00       	push   $0x200
    83cb:	52                   	push   %edx
    83cc:	50                   	push   %eax
    83cd:	51                   	push   %ecx
    83ce:	68 eb 03 00 00       	push   $0x3eb
    83d3:	e8 64 f1 ff ff       	call   753c <rw_sector>
    83d8:	83 c4 20             	add    $0x20,%esp
    83db:	a1 9c f7 00 00       	mov    0xf79c,%eax
    83e0:	89 45 f0             	mov    %eax,-0x10(%ebp)
    83e3:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    83ea:	eb 25                	jmp    8411 <new_dir_entry+0xb0>
    83ec:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    83f0:	8b 45 f4             	mov    -0xc(%ebp),%eax
    83f3:	3b 45 d8             	cmp    -0x28(%ebp),%eax
    83f6:	7f 23                	jg     841b <new_dir_entry+0xba>
    83f8:	8b 45 f0             	mov    -0x10(%ebp),%eax
    83fb:	8b 00                	mov    (%eax),%eax
    83fd:	85 c0                	test   %eax,%eax
    83ff:	75 08                	jne    8409 <new_dir_entry+0xa8>
    8401:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8404:	89 45 ec             	mov    %eax,-0x14(%ebp)
    8407:	eb 13                	jmp    841c <new_dir_entry+0xbb>
    8409:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    840d:	83 45 f0 10          	addl   $0x10,-0x10(%ebp)
    8411:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    8414:	83 f8 1f             	cmp    $0x1f,%eax
    8417:	76 d3                	jbe    83ec <new_dir_entry+0x8b>
    8419:	eb 01                	jmp    841c <new_dir_entry+0xbb>
    841b:	90                   	nop
    841c:	8b 45 f4             	mov    -0xc(%ebp),%eax
    841f:	3b 45 d8             	cmp    -0x28(%ebp),%eax
    8422:	7f 16                	jg     843a <new_dir_entry+0xd9>
    8424:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
    8428:	75 10                	jne    843a <new_dir_entry+0xd9>
    842a:	83 45 e8 01          	addl   $0x1,-0x18(%ebp)
    842e:	8b 45 e8             	mov    -0x18(%ebp),%eax
    8431:	3b 45 dc             	cmp    -0x24(%ebp),%eax
    8434:	0f 8c 6e ff ff ff    	jl     83a8 <new_dir_entry+0x47>
    843a:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
    843e:	75 15                	jne    8455 <new_dir_entry+0xf4>
    8440:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8443:	89 45 ec             	mov    %eax,-0x14(%ebp)
    8446:	8b 45 08             	mov    0x8(%ebp),%eax
    8449:	8b 40 04             	mov    0x4(%eax),%eax
    844c:	8d 50 10             	lea    0x10(%eax),%edx
    844f:	8b 45 08             	mov    0x8(%ebp),%eax
    8452:	89 50 04             	mov    %edx,0x4(%eax)
    8455:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8458:	8b 55 0c             	mov    0xc(%ebp),%edx
    845b:	89 10                	mov    %edx,(%eax)
    845d:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8460:	83 c0 04             	add    $0x4,%eax
    8463:	83 ec 08             	sub    $0x8,%esp
    8466:	ff 75 10             	pushl  0x10(%ebp)
    8469:	50                   	push   %eax
    846a:	e8 9b e4 ff ff       	call   690a <strcpy>
    846f:	83 c4 10             	add    $0x10,%esp
    8472:	8b 1d 9c f7 00 00    	mov    0xf79c,%ebx
    8478:	8b 55 e0             	mov    -0x20(%ebp),%edx
    847b:	8b 45 e8             	mov    -0x18(%ebp),%eax
    847e:	01 d0                	add    %edx,%eax
    8480:	c1 e0 09             	shl    $0x9,%eax
    8483:	99                   	cltd   
    8484:	8b 4d 08             	mov    0x8(%ebp),%ecx
    8487:	8b 49 20             	mov    0x20(%ecx),%ecx
    848a:	83 ec 04             	sub    $0x4,%esp
    848d:	53                   	push   %ebx
    848e:	6a 03                	push   $0x3
    8490:	68 00 02 00 00       	push   $0x200
    8495:	52                   	push   %edx
    8496:	50                   	push   %eax
    8497:	51                   	push   %ecx
    8498:	68 ec 03 00 00       	push   $0x3ec
    849d:	e8 9a f0 ff ff       	call   753c <rw_sector>
    84a2:	83 c4 20             	add    $0x20,%esp
    84a5:	83 ec 0c             	sub    $0xc,%esp
    84a8:	ff 75 08             	pushl  0x8(%ebp)
    84ab:	e8 7b f4 ff ff       	call   792b <sync_inode>
    84b0:	83 c4 10             	add    $0x10,%esp
    84b3:	90                   	nop
    84b4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    84b7:	c9                   	leave  
    84b8:	c3                   	ret    

000084b9 <search_file>:
    84b9:	55                   	push   %ebp
    84ba:	89 e5                	mov    %esp,%ebp
    84bc:	53                   	push   %ebx
    84bd:	81 ec a4 00 00 00    	sub    $0xa4,%esp
    84c3:	83 ec 04             	sub    $0x4,%esp
    84c6:	6a 0c                	push   $0xc
    84c8:	6a 00                	push   $0x0
    84ca:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
    84d0:	50                   	push   %eax
    84d1:	e8 13 e4 ff ff       	call   68e9 <memset>
    84d6:	83 c4 10             	add    $0x10,%esp
    84d9:	83 ec 04             	sub    $0x4,%esp
    84dc:	8d 85 58 ff ff ff    	lea    -0xa8(%ebp),%eax
    84e2:	50                   	push   %eax
    84e3:	ff 75 08             	pushl  0x8(%ebp)
    84e6:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
    84ec:	50                   	push   %eax
    84ed:	e8 1d 01 00 00       	call   860f <strip_path>
    84f2:	83 c4 10             	add    $0x10,%esp
    84f5:	85 c0                	test   %eax,%eax
    84f7:	74 0a                	je     8503 <search_file+0x4a>
    84f9:	b8 00 00 00 00       	mov    $0x0,%eax
    84fe:	e9 07 01 00 00       	jmp    860a <search_file+0x151>
    8503:	0f b6 85 5c ff ff ff 	movzbl -0xa4(%ebp),%eax
    850a:	84 c0                	test   %al,%al
    850c:	75 0e                	jne    851c <search_file+0x63>
    850e:	8b 85 58 ff ff ff    	mov    -0xa8(%ebp),%eax
    8514:	8b 40 28             	mov    0x28(%eax),%eax
    8517:	e9 ee 00 00 00       	jmp    860a <search_file+0x151>
    851c:	8b 85 58 ff ff ff    	mov    -0xa8(%ebp),%eax
    8522:	8b 40 08             	mov    0x8(%eax),%eax
    8525:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    8528:	8b 85 58 ff ff ff    	mov    -0xa8(%ebp),%eax
    852e:	8b 40 04             	mov    0x4(%eax),%eax
    8531:	05 ff 01 00 00       	add    $0x1ff,%eax
    8536:	c1 e8 09             	shr    $0x9,%eax
    8539:	89 45 e0             	mov    %eax,-0x20(%ebp)
    853c:	8b 85 58 ff ff ff    	mov    -0xa8(%ebp),%eax
    8542:	8b 40 04             	mov    0x4(%eax),%eax
    8545:	c1 e8 04             	shr    $0x4,%eax
    8548:	89 45 dc             	mov    %eax,-0x24(%ebp)
    854b:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    8552:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    8559:	e9 98 00 00 00       	jmp    85f6 <search_file+0x13d>
    855e:	8b 1d 9c f7 00 00    	mov    0xf79c,%ebx
    8564:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    8567:	8b 45 f4             	mov    -0xc(%ebp),%eax
    856a:	01 d0                	add    %edx,%eax
    856c:	c1 e0 09             	shl    $0x9,%eax
    856f:	99                   	cltd   
    8570:	8b 8d 58 ff ff ff    	mov    -0xa8(%ebp),%ecx
    8576:	8b 49 20             	mov    0x20(%ecx),%ecx
    8579:	83 ec 04             	sub    $0x4,%esp
    857c:	53                   	push   %ebx
    857d:	6a 03                	push   $0x3
    857f:	68 00 02 00 00       	push   $0x200
    8584:	52                   	push   %edx
    8585:	50                   	push   %eax
    8586:	51                   	push   %ecx
    8587:	68 eb 03 00 00       	push   $0x3eb
    858c:	e8 ab ef ff ff       	call   753c <rw_sector>
    8591:	83 c4 20             	add    $0x20,%esp
    8594:	a1 9c f7 00 00       	mov    0xf79c,%eax
    8599:	89 45 e8             	mov    %eax,-0x18(%ebp)
    859c:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    85a3:	eb 3a                	jmp    85df <search_file+0x126>
    85a5:	8b 45 e8             	mov    -0x18(%ebp),%eax
    85a8:	83 c0 04             	add    $0x4,%eax
    85ab:	83 ec 04             	sub    $0x4,%esp
    85ae:	6a 0c                	push   $0xc
    85b0:	50                   	push   %eax
    85b1:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
    85b7:	50                   	push   %eax
    85b8:	e8 7b e3 ff ff       	call   6938 <memcmp>
    85bd:	83 c4 10             	add    $0x10,%esp
    85c0:	85 c0                	test   %eax,%eax
    85c2:	75 07                	jne    85cb <search_file+0x112>
    85c4:	8b 45 e8             	mov    -0x18(%ebp),%eax
    85c7:	8b 00                	mov    (%eax),%eax
    85c9:	eb 3f                	jmp    860a <search_file+0x151>
    85cb:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
    85cf:	8b 45 ec             	mov    -0x14(%ebp),%eax
    85d2:	3b 45 dc             	cmp    -0x24(%ebp),%eax
    85d5:	7f 12                	jg     85e9 <search_file+0x130>
    85d7:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    85db:	83 45 e8 10          	addl   $0x10,-0x18(%ebp)
    85df:	8b 45 f0             	mov    -0x10(%ebp),%eax
    85e2:	83 f8 1f             	cmp    $0x1f,%eax
    85e5:	76 be                	jbe    85a5 <search_file+0xec>
    85e7:	eb 01                	jmp    85ea <search_file+0x131>
    85e9:	90                   	nop
    85ea:	8b 45 ec             	mov    -0x14(%ebp),%eax
    85ed:	3b 45 dc             	cmp    -0x24(%ebp),%eax
    85f0:	7f 12                	jg     8604 <search_file+0x14b>
    85f2:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    85f6:	8b 45 f4             	mov    -0xc(%ebp),%eax
    85f9:	3b 45 e0             	cmp    -0x20(%ebp),%eax
    85fc:	0f 8c 5c ff ff ff    	jl     855e <search_file+0xa5>
    8602:	eb 01                	jmp    8605 <search_file+0x14c>
    8604:	90                   	nop
    8605:	b8 00 00 00 00       	mov    $0x0,%eax
    860a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    860d:	c9                   	leave  
    860e:	c3                   	ret    

0000860f <strip_path>:
    860f:	55                   	push   %ebp
    8610:	89 e5                	mov    %esp,%ebp
    8612:	83 ec 10             	sub    $0x10,%esp
    8615:	8b 45 0c             	mov    0xc(%ebp),%eax
    8618:	89 45 fc             	mov    %eax,-0x4(%ebp)
    861b:	8b 45 08             	mov    0x8(%ebp),%eax
    861e:	89 45 f8             	mov    %eax,-0x8(%ebp)
    8621:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
    8625:	75 07                	jne    862e <strip_path+0x1f>
    8627:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    862c:	eb 66                	jmp    8694 <strip_path+0x85>
    862e:	8b 45 fc             	mov    -0x4(%ebp),%eax
    8631:	0f b6 00             	movzbl (%eax),%eax
    8634:	3c 2f                	cmp    $0x2f,%al
    8636:	75 39                	jne    8671 <strip_path+0x62>
    8638:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
    863c:	eb 33                	jmp    8671 <strip_path+0x62>
    863e:	8b 45 fc             	mov    -0x4(%ebp),%eax
    8641:	0f b6 00             	movzbl (%eax),%eax
    8644:	3c 2f                	cmp    $0x2f,%al
    8646:	75 07                	jne    864f <strip_path+0x40>
    8648:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    864d:	eb 45                	jmp    8694 <strip_path+0x85>
    864f:	8b 55 fc             	mov    -0x4(%ebp),%edx
    8652:	8d 42 01             	lea    0x1(%edx),%eax
    8655:	89 45 fc             	mov    %eax,-0x4(%ebp)
    8658:	8b 45 f8             	mov    -0x8(%ebp),%eax
    865b:	8d 48 01             	lea    0x1(%eax),%ecx
    865e:	89 4d f8             	mov    %ecx,-0x8(%ebp)
    8661:	0f b6 12             	movzbl (%edx),%edx
    8664:	88 10                	mov    %dl,(%eax)
    8666:	8b 45 f8             	mov    -0x8(%ebp),%eax
    8669:	2b 45 08             	sub    0x8(%ebp),%eax
    866c:	83 f8 0b             	cmp    $0xb,%eax
    866f:	7f 0c                	jg     867d <strip_path+0x6e>
    8671:	8b 45 fc             	mov    -0x4(%ebp),%eax
    8674:	0f b6 00             	movzbl (%eax),%eax
    8677:	84 c0                	test   %al,%al
    8679:	75 c3                	jne    863e <strip_path+0x2f>
    867b:	eb 01                	jmp    867e <strip_path+0x6f>
    867d:	90                   	nop
    867e:	8b 45 f8             	mov    -0x8(%ebp),%eax
    8681:	c6 00 00             	movb   $0x0,(%eax)
    8684:	8b 15 20 a8 04 00    	mov    0x4a820,%edx
    868a:	8b 45 10             	mov    0x10(%ebp),%eax
    868d:	89 10                	mov    %edx,(%eax)
    868f:	b8 00 00 00 00       	mov    $0x0,%eax
    8694:	c9                   	leave  
    8695:	c3                   	ret    

00008696 <do_rdwt>:
    8696:	55                   	push   %ebp
    8697:	89 e5                	mov    %esp,%ebp
    8699:	56                   	push   %esi
    869a:	53                   	push   %ebx
    869b:	83 ec 50             	sub    $0x50,%esp
    869e:	a1 e8 a4 04 00       	mov    0x4a4e8,%eax
    86a3:	89 45 e0             	mov    %eax,-0x20(%ebp)
    86a6:	a1 0c a5 04 00       	mov    0x4a50c,%eax
    86ab:	89 45 dc             	mov    %eax,-0x24(%ebp)
    86ae:	a1 ec a4 04 00       	mov    0x4a4ec,%eax
    86b3:	89 45 d8             	mov    %eax,-0x28(%ebp)
    86b6:	a1 e0 a4 04 00       	mov    0x4a4e0,%eax
    86bb:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    86be:	a1 c4 97 04 00       	mov    0x497c4,%eax
    86c3:	8b 55 e0             	mov    -0x20(%ebp),%edx
    86c6:	83 c2 24             	add    $0x24,%edx
    86c9:	8b 44 90 04          	mov    0x4(%eax,%edx,4),%eax
    86cd:	3d 20 a5 04 00       	cmp    $0x4a520,%eax
    86d2:	72 16                	jb     86ea <do_rdwt+0x54>
    86d4:	a1 c4 97 04 00       	mov    0x497c4,%eax
    86d9:	8b 55 e0             	mov    -0x20(%ebp),%edx
    86dc:	83 c2 24             	add    $0x24,%edx
    86df:	8b 44 90 04          	mov    0x4(%eax,%edx,4),%eax
    86e3:	3d 20 a8 04 00       	cmp    $0x4a820,%eax
    86e8:	72 19                	jb     8703 <do_rdwt+0x6d>
    86ea:	6a 2c                	push   $0x2c
    86ec:	68 6c bc 00 00       	push   $0xbc6c
    86f1:	68 6c bc 00 00       	push   $0xbc6c
    86f6:	68 7c bc 00 00       	push   $0xbc7c
    86fb:	e8 93 e3 ff ff       	call   6a93 <assertion_failure>
    8700:	83 c4 10             	add    $0x10,%esp
    8703:	a1 c4 97 04 00       	mov    0x497c4,%eax
    8708:	8b 55 e0             	mov    -0x20(%ebp),%edx
    870b:	83 c2 24             	add    $0x24,%edx
    870e:	8b 44 90 04          	mov    0x4(%eax,%edx,4),%eax
    8712:	8b 00                	mov    (%eax),%eax
    8714:	83 e0 02             	and    $0x2,%eax
    8717:	85 c0                	test   %eax,%eax
    8719:	75 0a                	jne    8725 <do_rdwt+0x8f>
    871b:	b8 00 00 00 00       	mov    $0x0,%eax
    8720:	e9 00 04 00 00       	jmp    8b25 <do_rdwt+0x48f>
    8725:	a1 c4 97 04 00       	mov    0x497c4,%eax
    872a:	8b 55 e0             	mov    -0x20(%ebp),%edx
    872d:	83 c2 24             	add    $0x24,%edx
    8730:	8b 44 90 04          	mov    0x4(%eax,%edx,4),%eax
    8734:	8b 40 04             	mov    0x4(%eax),%eax
    8737:	89 45 d0             	mov    %eax,-0x30(%ebp)
    873a:	a1 c4 97 04 00       	mov    0x497c4,%eax
    873f:	8b 55 e0             	mov    -0x20(%ebp),%edx
    8742:	83 c2 24             	add    $0x24,%edx
    8745:	8b 44 90 04          	mov    0x4(%eax,%edx,4),%eax
    8749:	8b 40 08             	mov    0x8(%eax),%eax
    874c:	89 45 cc             	mov    %eax,-0x34(%ebp)
    874f:	81 7d cc a0 08 01 00 	cmpl   $0x108a0,-0x34(%ebp)
    8756:	72 09                	jb     8761 <do_rdwt+0xcb>
    8758:	81 7d cc a0 13 01 00 	cmpl   $0x113a0,-0x34(%ebp)
    875f:	72 19                	jb     877a <do_rdwt+0xe4>
    8761:	6a 35                	push   $0x35
    8763:	68 6c bc 00 00       	push   $0xbc6c
    8768:	68 6c bc 00 00       	push   $0xbc6c
    876d:	68 dc bc 00 00       	push   $0xbcdc
    8772:	e8 1c e3 ff ff       	call   6a93 <assertion_failure>
    8777:	83 c4 10             	add    $0x10,%esp
    877a:	8b 45 cc             	mov    -0x34(%ebp),%eax
    877d:	8b 00                	mov    (%eax),%eax
    877f:	25 00 f0 00 00       	and    $0xf000,%eax
    8784:	89 45 c8             	mov    %eax,-0x38(%ebp)
    8787:	81 7d c8 00 20 00 00 	cmpl   $0x2000,-0x38(%ebp)
    878e:	0f 85 f2 00 00 00    	jne    8886 <do_rdwt+0x1f0>
    8794:	a1 e4 a4 04 00       	mov    0x4a4e4,%eax
    8799:	83 f8 06             	cmp    $0x6,%eax
    879c:	75 07                	jne    87a5 <do_rdwt+0x10f>
    879e:	b8 eb 03 00 00       	mov    $0x3eb,%eax
    87a3:	eb 05                	jmp    87aa <do_rdwt+0x114>
    87a5:	b8 ec 03 00 00       	mov    $0x3ec,%eax
    87aa:	89 45 c4             	mov    %eax,-0x3c(%ebp)
    87ad:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    87b0:	a3 e4 a4 04 00       	mov    %eax,0x4a4e4
    87b5:	8b 45 cc             	mov    -0x34(%ebp),%eax
    87b8:	8b 40 08             	mov    0x8(%eax),%eax
    87bb:	89 45 c0             	mov    %eax,-0x40(%ebp)
    87be:	8b 45 c0             	mov    -0x40(%ebp),%eax
    87c1:	c1 f8 08             	sar    $0x8,%eax
    87c4:	0f b6 c0             	movzbl %al,%eax
    87c7:	83 f8 04             	cmp    $0x4,%eax
    87ca:	74 19                	je     87e5 <do_rdwt+0x14f>
    87cc:	6a 3e                	push   $0x3e
    87ce:	68 6c bc 00 00       	push   $0xbc6c
    87d3:	68 6c bc 00 00       	push   $0xbc6c
    87d8:	68 13 bd 00 00       	push   $0xbd13
    87dd:	e8 b1 e2 ff ff       	call   6a93 <assertion_failure>
    87e2:	83 c4 10             	add    $0x10,%esp
    87e5:	8b 45 c0             	mov    -0x40(%ebp),%eax
    87e8:	0f b6 c0             	movzbl %al,%eax
    87eb:	a3 f4 a4 04 00       	mov    %eax,0x4a4f4
    87f0:	8b 45 dc             	mov    -0x24(%ebp),%eax
    87f3:	a3 0c a5 04 00       	mov    %eax,0x4a50c
    87f8:	8b 45 d8             	mov    -0x28(%ebp),%eax
    87fb:	a3 ec a4 04 00       	mov    %eax,0x4a4ec
    8800:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    8803:	a3 f0 a4 04 00       	mov    %eax,0x4a4f0
    8808:	8b 45 c0             	mov    -0x40(%ebp),%eax
    880b:	c1 f8 08             	sar    $0x8,%eax
    880e:	0f b6 c0             	movzbl %al,%eax
    8811:	8b 04 85 84 f7 00 00 	mov    0xf784(,%eax,4),%eax
    8818:	83 f8 ec             	cmp    $0xffffffec,%eax
    881b:	75 19                	jne    8836 <do_rdwt+0x1a0>
    881d:	6a 44                	push   $0x44
    881f:	68 6c bc 00 00       	push   $0xbc6c
    8824:	68 6c bc 00 00       	push   $0xbc6c
    8829:	68 24 bd 00 00       	push   $0xbd24
    882e:	e8 60 e2 ff ff       	call   6a93 <assertion_failure>
    8833:	83 c4 10             	add    $0x10,%esp
    8836:	8b 45 c0             	mov    -0x40(%ebp),%eax
    8839:	c1 f8 08             	sar    $0x8,%eax
    883c:	0f b6 c0             	movzbl %al,%eax
    883f:	8b 04 85 84 f7 00 00 	mov    0xf784(,%eax,4),%eax
    8846:	83 ec 04             	sub    $0x4,%esp
    8849:	68 e0 a4 04 00       	push   $0x4a4e0
    884e:	50                   	push   %eax
    884f:	6a 03                	push   $0x3
    8851:	e8 61 b6 ff ff       	call   3eb7 <send_recv>
    8856:	83 c4 10             	add    $0x10,%esp
    8859:	a1 ec a4 04 00       	mov    0x4a4ec,%eax
    885e:	39 45 d8             	cmp    %eax,-0x28(%ebp)
    8861:	74 19                	je     887c <do_rdwt+0x1e6>
    8863:	6a 46                	push   $0x46
    8865:	68 6c bc 00 00       	push   $0xbc6c
    886a:	68 6c bc 00 00       	push   $0xbc6c
    886f:	68 53 bd 00 00       	push   $0xbd53
    8874:	e8 1a e2 ff ff       	call   6a93 <assertion_failure>
    8879:	83 c4 10             	add    $0x10,%esp
    887c:	a1 ec a4 04 00       	mov    0x4a4ec,%eax
    8881:	e9 9f 02 00 00       	jmp    8b25 <do_rdwt+0x48f>
    8886:	8b 45 cc             	mov    -0x34(%ebp),%eax
    8889:	8b 00                	mov    (%eax),%eax
    888b:	3d 00 80 00 00       	cmp    $0x8000,%eax
    8890:	74 25                	je     88b7 <do_rdwt+0x221>
    8892:	8b 45 cc             	mov    -0x34(%ebp),%eax
    8895:	8b 00                	mov    (%eax),%eax
    8897:	3d 00 40 00 00       	cmp    $0x4000,%eax
    889c:	74 19                	je     88b7 <do_rdwt+0x221>
    889e:	6a 4b                	push   $0x4b
    88a0:	68 6c bc 00 00       	push   $0xbc6c
    88a5:	68 6c bc 00 00       	push   $0xbc6c
    88aa:	68 68 bd 00 00       	push   $0xbd68
    88af:	e8 df e1 ff ff       	call   6a93 <assertion_failure>
    88b4:	83 c4 10             	add    $0x10,%esp
    88b7:	a1 e4 a4 04 00       	mov    0x4a4e4,%eax
    88bc:	83 f8 06             	cmp    $0x6,%eax
    88bf:	74 23                	je     88e4 <do_rdwt+0x24e>
    88c1:	a1 e4 a4 04 00       	mov    0x4a4e4,%eax
    88c6:	83 f8 07             	cmp    $0x7,%eax
    88c9:	74 19                	je     88e4 <do_rdwt+0x24e>
    88cb:	6a 4c                	push   $0x4c
    88cd:	68 6c bc 00 00       	push   $0xbc6c
    88d2:	68 6c bc 00 00       	push   $0xbc6c
    88d7:	68 a0 bd 00 00       	push   $0xbda0
    88dc:	e8 b2 e1 ff ff       	call   6a93 <assertion_failure>
    88e1:	83 c4 10             	add    $0x10,%esp
    88e4:	a1 e4 a4 04 00       	mov    0x4a4e4,%eax
    88e9:	83 f8 06             	cmp    $0x6,%eax
    88ec:	75 18                	jne    8906 <do_rdwt+0x270>
    88ee:	8b 45 cc             	mov    -0x34(%ebp),%eax
    88f1:	8b 40 04             	mov    0x4(%eax),%eax
    88f4:	8b 4d d0             	mov    -0x30(%ebp),%ecx
    88f7:	8b 55 d8             	mov    -0x28(%ebp),%edx
    88fa:	01 ca                	add    %ecx,%edx
    88fc:	39 d0                	cmp    %edx,%eax
    88fe:	0f 47 c2             	cmova  %edx,%eax
    8901:	89 45 f4             	mov    %eax,-0xc(%ebp)
    8904:	eb 19                	jmp    891f <do_rdwt+0x289>
    8906:	8b 45 cc             	mov    -0x34(%ebp),%eax
    8909:	8b 40 0c             	mov    0xc(%eax),%eax
    890c:	c1 e0 09             	shl    $0x9,%eax
    890f:	8b 4d d0             	mov    -0x30(%ebp),%ecx
    8912:	8b 55 d8             	mov    -0x28(%ebp),%edx
    8915:	01 ca                	add    %ecx,%edx
    8917:	39 d0                	cmp    %edx,%eax
    8919:	0f 47 c2             	cmova  %edx,%eax
    891c:	89 45 f4             	mov    %eax,-0xc(%ebp)
    891f:	8b 45 d0             	mov    -0x30(%ebp),%eax
    8922:	99                   	cltd   
    8923:	c1 ea 17             	shr    $0x17,%edx
    8926:	01 d0                	add    %edx,%eax
    8928:	25 ff 01 00 00       	and    $0x1ff,%eax
    892d:	29 d0                	sub    %edx,%eax
    892f:	89 45 f0             	mov    %eax,-0x10(%ebp)
    8932:	8b 45 cc             	mov    -0x34(%ebp),%eax
    8935:	8b 40 08             	mov    0x8(%eax),%eax
    8938:	8b 55 d0             	mov    -0x30(%ebp),%edx
    893b:	c1 fa 09             	sar    $0x9,%edx
    893e:	01 d0                	add    %edx,%eax
    8940:	89 45 bc             	mov    %eax,-0x44(%ebp)
    8943:	8b 45 cc             	mov    -0x34(%ebp),%eax
    8946:	8b 40 08             	mov    0x8(%eax),%eax
    8949:	8b 55 f4             	mov    -0xc(%ebp),%edx
    894c:	c1 fa 09             	sar    $0x9,%edx
    894f:	01 d0                	add    %edx,%eax
    8951:	89 45 b8             	mov    %eax,-0x48(%ebp)
    8954:	a1 1c ab 00 00       	mov    0xab1c,%eax
    8959:	c1 f8 09             	sar    $0x9,%eax
    895c:	89 c2                	mov    %eax,%edx
    895e:	8b 45 b8             	mov    -0x48(%ebp),%eax
    8961:	2b 45 bc             	sub    -0x44(%ebp),%eax
    8964:	83 c0 01             	add    $0x1,%eax
    8967:	39 c2                	cmp    %eax,%edx
    8969:	0f 4e c2             	cmovle %edx,%eax
    896c:	89 45 b4             	mov    %eax,-0x4c(%ebp)
    896f:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    8976:	8b 45 d8             	mov    -0x28(%ebp),%eax
    8979:	89 45 e8             	mov    %eax,-0x18(%ebp)
    897c:	8b 45 bc             	mov    -0x44(%ebp),%eax
    897f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    8982:	e9 49 01 00 00       	jmp    8ad0 <do_rdwt+0x43a>
    8987:	8b 45 b4             	mov    -0x4c(%ebp),%eax
    898a:	c1 e0 09             	shl    $0x9,%eax
    898d:	2b 45 f0             	sub    -0x10(%ebp),%eax
    8990:	39 45 e8             	cmp    %eax,-0x18(%ebp)
    8993:	0f 4e 45 e8          	cmovle -0x18(%ebp),%eax
    8997:	89 45 b0             	mov    %eax,-0x50(%ebp)
    899a:	8b 1d 9c f7 00 00    	mov    0xf79c,%ebx
    89a0:	8b 45 b4             	mov    -0x4c(%ebp),%eax
    89a3:	c1 e0 09             	shl    $0x9,%eax
    89a6:	89 c6                	mov    %eax,%esi
    89a8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    89ab:	c1 e0 09             	shl    $0x9,%eax
    89ae:	99                   	cltd   
    89af:	8b 4d cc             	mov    -0x34(%ebp),%ecx
    89b2:	8b 49 20             	mov    0x20(%ecx),%ecx
    89b5:	83 ec 04             	sub    $0x4,%esp
    89b8:	53                   	push   %ebx
    89b9:	6a 03                	push   $0x3
    89bb:	56                   	push   %esi
    89bc:	52                   	push   %edx
    89bd:	50                   	push   %eax
    89be:	51                   	push   %ecx
    89bf:	68 eb 03 00 00       	push   $0x3eb
    89c4:	e8 73 eb ff ff       	call   753c <rw_sector>
    89c9:	83 c4 20             	add    $0x20,%esp
    89cc:	a1 e4 a4 04 00       	mov    0x4a4e4,%eax
    89d1:	83 f8 06             	cmp    $0x6,%eax
    89d4:	75 44                	jne    8a1a <do_rdwt+0x384>
    89d6:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    89dc:	8b 45 f0             	mov    -0x10(%ebp),%eax
    89df:	01 d0                	add    %edx,%eax
    89e1:	83 ec 08             	sub    $0x8,%esp
    89e4:	50                   	push   %eax
    89e5:	6a 03                	push   $0x3
    89e7:	e8 d2 b5 ff ff       	call   3fbe <va2la>
    89ec:	83 c4 10             	add    $0x10,%esp
    89ef:	89 c3                	mov    %eax,%ebx
    89f1:	8b 55 ec             	mov    -0x14(%ebp),%edx
    89f4:	8b 45 dc             	mov    -0x24(%ebp),%eax
    89f7:	01 d0                	add    %edx,%eax
    89f9:	83 ec 08             	sub    $0x8,%esp
    89fc:	50                   	push   %eax
    89fd:	ff 75 d4             	pushl  -0x2c(%ebp)
    8a00:	e8 b9 b5 ff ff       	call   3fbe <va2la>
    8a05:	83 c4 10             	add    $0x10,%esp
    8a08:	83 ec 04             	sub    $0x4,%esp
    8a0b:	ff 75 b0             	pushl  -0x50(%ebp)
    8a0e:	53                   	push   %ebx
    8a0f:	50                   	push   %eax
    8a10:	e8 ab de ff ff       	call   68c0 <memcpy>
    8a15:	83 c4 10             	add    $0x10,%esp
    8a18:	eb 74                	jmp    8a8e <do_rdwt+0x3f8>
    8a1a:	8b 55 ec             	mov    -0x14(%ebp),%edx
    8a1d:	8b 45 dc             	mov    -0x24(%ebp),%eax
    8a20:	01 d0                	add    %edx,%eax
    8a22:	83 ec 08             	sub    $0x8,%esp
    8a25:	50                   	push   %eax
    8a26:	ff 75 d4             	pushl  -0x2c(%ebp)
    8a29:	e8 90 b5 ff ff       	call   3fbe <va2la>
    8a2e:	83 c4 10             	add    $0x10,%esp
    8a31:	89 c3                	mov    %eax,%ebx
    8a33:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    8a39:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8a3c:	01 d0                	add    %edx,%eax
    8a3e:	83 ec 08             	sub    $0x8,%esp
    8a41:	50                   	push   %eax
    8a42:	6a 03                	push   $0x3
    8a44:	e8 75 b5 ff ff       	call   3fbe <va2la>
    8a49:	83 c4 10             	add    $0x10,%esp
    8a4c:	83 ec 04             	sub    $0x4,%esp
    8a4f:	ff 75 b0             	pushl  -0x50(%ebp)
    8a52:	53                   	push   %ebx
    8a53:	50                   	push   %eax
    8a54:	e8 67 de ff ff       	call   68c0 <memcpy>
    8a59:	83 c4 10             	add    $0x10,%esp
    8a5c:	8b 1d 9c f7 00 00    	mov    0xf79c,%ebx
    8a62:	8b 45 b4             	mov    -0x4c(%ebp),%eax
    8a65:	c1 e0 09             	shl    $0x9,%eax
    8a68:	89 c6                	mov    %eax,%esi
    8a6a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    8a6d:	c1 e0 09             	shl    $0x9,%eax
    8a70:	99                   	cltd   
    8a71:	8b 4d cc             	mov    -0x34(%ebp),%ecx
    8a74:	8b 49 20             	mov    0x20(%ecx),%ecx
    8a77:	83 ec 04             	sub    $0x4,%esp
    8a7a:	53                   	push   %ebx
    8a7b:	6a 03                	push   $0x3
    8a7d:	56                   	push   %esi
    8a7e:	52                   	push   %edx
    8a7f:	50                   	push   %eax
    8a80:	51                   	push   %ecx
    8a81:	68 ec 03 00 00       	push   $0x3ec
    8a86:	e8 b1 ea ff ff       	call   753c <rw_sector>
    8a8b:	83 c4 20             	add    $0x20,%esp
    8a8e:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    8a95:	8b 45 b0             	mov    -0x50(%ebp),%eax
    8a98:	01 45 ec             	add    %eax,-0x14(%ebp)
    8a9b:	a1 c4 97 04 00       	mov    0x497c4,%eax
    8aa0:	8b 55 e0             	mov    -0x20(%ebp),%edx
    8aa3:	83 c2 24             	add    $0x24,%edx
    8aa6:	8b 44 90 04          	mov    0x4(%eax,%edx,4),%eax
    8aaa:	8b 48 04             	mov    0x4(%eax),%ecx
    8aad:	a1 c4 97 04 00       	mov    0x497c4,%eax
    8ab2:	8b 55 e0             	mov    -0x20(%ebp),%edx
    8ab5:	83 c2 24             	add    $0x24,%edx
    8ab8:	8b 44 90 04          	mov    0x4(%eax,%edx,4),%eax
    8abc:	8b 55 b0             	mov    -0x50(%ebp),%edx
    8abf:	01 ca                	add    %ecx,%edx
    8ac1:	89 50 04             	mov    %edx,0x4(%eax)
    8ac4:	8b 45 b0             	mov    -0x50(%ebp),%eax
    8ac7:	29 45 e8             	sub    %eax,-0x18(%ebp)
    8aca:	8b 45 b4             	mov    -0x4c(%ebp),%eax
    8acd:	01 45 e4             	add    %eax,-0x1c(%ebp)
    8ad0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    8ad3:	3b 45 b8             	cmp    -0x48(%ebp),%eax
    8ad6:	0f 8e ab fe ff ff    	jle    8987 <do_rdwt+0x2f1>
    8adc:	a1 c4 97 04 00       	mov    0x497c4,%eax
    8ae1:	8b 55 e0             	mov    -0x20(%ebp),%edx
    8ae4:	83 c2 24             	add    $0x24,%edx
    8ae7:	8b 44 90 04          	mov    0x4(%eax,%edx,4),%eax
    8aeb:	8b 40 04             	mov    0x4(%eax),%eax
    8aee:	89 c2                	mov    %eax,%edx
    8af0:	8b 45 cc             	mov    -0x34(%ebp),%eax
    8af3:	8b 40 04             	mov    0x4(%eax),%eax
    8af6:	39 c2                	cmp    %eax,%edx
    8af8:	76 28                	jbe    8b22 <do_rdwt+0x48c>
    8afa:	a1 c4 97 04 00       	mov    0x497c4,%eax
    8aff:	8b 55 e0             	mov    -0x20(%ebp),%edx
    8b02:	83 c2 24             	add    $0x24,%edx
    8b05:	8b 44 90 04          	mov    0x4(%eax,%edx,4),%eax
    8b09:	8b 40 04             	mov    0x4(%eax),%eax
    8b0c:	89 c2                	mov    %eax,%edx
    8b0e:	8b 45 cc             	mov    -0x34(%ebp),%eax
    8b11:	89 50 04             	mov    %edx,0x4(%eax)
    8b14:	83 ec 0c             	sub    $0xc,%esp
    8b17:	ff 75 cc             	pushl  -0x34(%ebp)
    8b1a:	e8 0c ee ff ff       	call   792b <sync_inode>
    8b1f:	83 c4 10             	add    $0x10,%esp
    8b22:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8b25:	8d 65 f8             	lea    -0x8(%ebp),%esp
    8b28:	5b                   	pop    %ebx
    8b29:	5e                   	pop    %esi
    8b2a:	5d                   	pop    %ebp
    8b2b:	c3                   	ret    

00008b2c <do_unlink>:
    8b2c:	55                   	push   %ebp
    8b2d:	89 e5                	mov    %esp,%ebp
    8b2f:	56                   	push   %esi
    8b30:	53                   	push   %ebx
    8b31:	81 ec 60 01 00 00    	sub    $0x160,%esp
    8b37:	a1 ec a4 04 00       	mov    0x4a4ec,%eax
    8b3c:	89 45 d0             	mov    %eax,-0x30(%ebp)
    8b3f:	a1 e0 a4 04 00       	mov    0x4a4e0,%eax
    8b44:	89 45 cc             	mov    %eax,-0x34(%ebp)
    8b47:	83 7d d0 7f          	cmpl   $0x7f,-0x30(%ebp)
    8b4b:	7e 19                	jle    8b66 <do_unlink+0x3a>
    8b4d:	6a 2a                	push   $0x2a
    8b4f:	68 d0 bd 00 00       	push   $0xbdd0
    8b54:	68 d0 bd 00 00       	push   $0xbdd0
    8b59:	68 da bd 00 00       	push   $0xbdda
    8b5e:	e8 30 df ff ff       	call   6a93 <assertion_failure>
    8b63:	83 c4 10             	add    $0x10,%esp
    8b66:	a1 08 a5 04 00       	mov    0x4a508,%eax
    8b6b:	83 ec 08             	sub    $0x8,%esp
    8b6e:	50                   	push   %eax
    8b6f:	ff 75 cc             	pushl  -0x34(%ebp)
    8b72:	e8 47 b4 ff ff       	call   3fbe <va2la>
    8b77:	83 c4 10             	add    $0x10,%esp
    8b7a:	89 c3                	mov    %eax,%ebx
    8b7c:	83 ec 08             	sub    $0x8,%esp
    8b7f:	8d 85 24 ff ff ff    	lea    -0xdc(%ebp),%eax
    8b85:	50                   	push   %eax
    8b86:	6a 03                	push   $0x3
    8b88:	e8 31 b4 ff ff       	call   3fbe <va2la>
    8b8d:	83 c4 10             	add    $0x10,%esp
    8b90:	83 ec 04             	sub    $0x4,%esp
    8b93:	ff 75 d0             	pushl  -0x30(%ebp)
    8b96:	53                   	push   %ebx
    8b97:	50                   	push   %eax
    8b98:	e8 23 dd ff ff       	call   68c0 <memcpy>
    8b9d:	83 c4 10             	add    $0x10,%esp
    8ba0:	8d 95 24 ff ff ff    	lea    -0xdc(%ebp),%edx
    8ba6:	8b 45 d0             	mov    -0x30(%ebp),%eax
    8ba9:	01 d0                	add    %edx,%eax
    8bab:	c6 00 00             	movb   $0x0,(%eax)
    8bae:	83 ec 08             	sub    $0x8,%esp
    8bb1:	68 ee bd 00 00       	push   $0xbdee
    8bb6:	8d 85 24 ff ff ff    	lea    -0xdc(%ebp),%eax
    8bbc:	50                   	push   %eax
    8bbd:	e8 e8 dd ff ff       	call   69aa <strcmp>
    8bc2:	83 c4 10             	add    $0x10,%esp
    8bc5:	85 c0                	test   %eax,%eax
    8bc7:	75 1a                	jne    8be3 <do_unlink+0xb7>
    8bc9:	83 ec 0c             	sub    $0xc,%esp
    8bcc:	68 f0 bd 00 00       	push   $0xbdf0
    8bd1:	e8 ce d6 ff ff       	call   62a4 <printf>
    8bd6:	83 c4 10             	add    $0x10,%esp
    8bd9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    8bde:	e9 54 07 00 00       	jmp    9337 <do_unlink+0x80b>
    8be3:	83 ec 0c             	sub    $0xc,%esp
    8be6:	8d 85 24 ff ff ff    	lea    -0xdc(%ebp),%eax
    8bec:	50                   	push   %eax
    8bed:	e8 c7 f8 ff ff       	call   84b9 <search_file>
    8bf2:	83 c4 10             	add    $0x10,%esp
    8bf5:	89 45 c8             	mov    %eax,-0x38(%ebp)
    8bf8:	83 7d c8 00          	cmpl   $0x0,-0x38(%ebp)
    8bfc:	75 21                	jne    8c1f <do_unlink+0xf3>
    8bfe:	83 ec 08             	sub    $0x8,%esp
    8c01:	8d 85 24 ff ff ff    	lea    -0xdc(%ebp),%eax
    8c07:	50                   	push   %eax
    8c08:	68 1c be 00 00       	push   $0xbe1c
    8c0d:	e8 92 d6 ff ff       	call   62a4 <printf>
    8c12:	83 c4 10             	add    $0x10,%esp
    8c15:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    8c1a:	e9 18 07 00 00       	jmp    9337 <do_unlink+0x80b>
    8c1f:	83 ec 04             	sub    $0x4,%esp
    8c22:	8d 85 a0 fe ff ff    	lea    -0x160(%ebp),%eax
    8c28:	50                   	push   %eax
    8c29:	8d 85 24 ff ff ff    	lea    -0xdc(%ebp),%eax
    8c2f:	50                   	push   %eax
    8c30:	8d 85 a4 fe ff ff    	lea    -0x15c(%ebp),%eax
    8c36:	50                   	push   %eax
    8c37:	e8 d3 f9 ff ff       	call   860f <strip_path>
    8c3c:	83 c4 10             	add    $0x10,%esp
    8c3f:	85 c0                	test   %eax,%eax
    8c41:	74 0a                	je     8c4d <do_unlink+0x121>
    8c43:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    8c48:	e9 ea 06 00 00       	jmp    9337 <do_unlink+0x80b>
    8c4d:	8b 85 a0 fe ff ff    	mov    -0x160(%ebp),%eax
    8c53:	8b 40 20             	mov    0x20(%eax),%eax
    8c56:	83 ec 08             	sub    $0x8,%esp
    8c59:	ff 75 c8             	pushl  -0x38(%ebp)
    8c5c:	50                   	push   %eax
    8c5d:	e8 28 eb ff ff       	call   778a <get_inode>
    8c62:	83 c4 10             	add    $0x10,%esp
    8c65:	89 45 c4             	mov    %eax,-0x3c(%ebp)
    8c68:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    8c6b:	8b 00                	mov    (%eax),%eax
    8c6d:	3d 00 80 00 00       	cmp    $0x8000,%eax
    8c72:	74 21                	je     8c95 <do_unlink+0x169>
    8c74:	83 ec 08             	sub    $0x8,%esp
    8c77:	8d 85 24 ff ff ff    	lea    -0xdc(%ebp),%eax
    8c7d:	50                   	push   %eax
    8c7e:	68 58 be 00 00       	push   $0xbe58
    8c83:	e8 1c d6 ff ff       	call   62a4 <printf>
    8c88:	83 c4 10             	add    $0x10,%esp
    8c8b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    8c90:	e9 a2 06 00 00       	jmp    9337 <do_unlink+0x80b>
    8c95:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    8c98:	8b 40 24             	mov    0x24(%eax),%eax
    8c9b:	83 f8 01             	cmp    $0x1,%eax
    8c9e:	7e 28                	jle    8cc8 <do_unlink+0x19c>
    8ca0:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    8ca3:	8b 40 24             	mov    0x24(%eax),%eax
    8ca6:	83 ec 04             	sub    $0x4,%esp
    8ca9:	50                   	push   %eax
    8caa:	8d 85 24 ff ff ff    	lea    -0xdc(%ebp),%eax
    8cb0:	50                   	push   %eax
    8cb1:	68 94 be 00 00       	push   $0xbe94
    8cb6:	e8 e9 d5 ff ff       	call   62a4 <printf>
    8cbb:	83 c4 10             	add    $0x10,%esp
    8cbe:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    8cc3:	e9 6f 06 00 00       	jmp    9337 <do_unlink+0x80b>
    8cc8:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    8ccb:	8b 40 20             	mov    0x20(%eax),%eax
    8cce:	83 ec 0c             	sub    $0xc,%esp
    8cd1:	50                   	push   %eax
    8cd2:	e8 6d ea ff ff       	call   7744 <get_super_block>
    8cd7:	83 c4 10             	add    $0x10,%esp
    8cda:	89 45 c0             	mov    %eax,-0x40(%ebp)
    8cdd:	8b 45 c8             	mov    -0x38(%ebp),%eax
    8ce0:	8d 50 07             	lea    0x7(%eax),%edx
    8ce3:	85 c0                	test   %eax,%eax
    8ce5:	0f 48 c2             	cmovs  %edx,%eax
    8ce8:	c1 f8 03             	sar    $0x3,%eax
    8ceb:	89 45 bc             	mov    %eax,-0x44(%ebp)
    8cee:	8b 45 c8             	mov    -0x38(%ebp),%eax
    8cf1:	99                   	cltd   
    8cf2:	c1 ea 1d             	shr    $0x1d,%edx
    8cf5:	01 d0                	add    %edx,%eax
    8cf7:	83 e0 07             	and    $0x7,%eax
    8cfa:	29 d0                	sub    %edx,%eax
    8cfc:	89 45 b8             	mov    %eax,-0x48(%ebp)
    8cff:	81 7d bc ff 01 00 00 	cmpl   $0x1ff,-0x44(%ebp)
    8d06:	7e 19                	jle    8d21 <do_unlink+0x1f5>
    8d08:	6a 57                	push   $0x57
    8d0a:	68 d0 bd 00 00       	push   $0xbdd0
    8d0f:	68 d0 bd 00 00       	push   $0xbdd0
    8d14:	68 c6 be 00 00       	push   $0xbec6
    8d19:	e8 75 dd ff ff       	call   6a93 <assertion_failure>
    8d1e:	83 c4 10             	add    $0x10,%esp
    8d21:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    8d27:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    8d2a:	8b 40 20             	mov    0x20(%eax),%eax
    8d2d:	83 ec 04             	sub    $0x4,%esp
    8d30:	52                   	push   %edx
    8d31:	6a 03                	push   $0x3
    8d33:	68 00 02 00 00       	push   $0x200
    8d38:	6a 00                	push   $0x0
    8d3a:	68 00 04 00 00       	push   $0x400
    8d3f:	50                   	push   %eax
    8d40:	68 eb 03 00 00       	push   $0x3eb
    8d45:	e8 f2 e7 ff ff       	call   753c <rw_sector>
    8d4a:	83 c4 20             	add    $0x20,%esp
    8d4d:	8b 0d 9c f7 00 00    	mov    0xf79c,%ecx
    8d53:	8b 45 bc             	mov    -0x44(%ebp),%eax
    8d56:	99                   	cltd   
    8d57:	c1 ea 17             	shr    $0x17,%edx
    8d5a:	01 d0                	add    %edx,%eax
    8d5c:	25 ff 01 00 00       	and    $0x1ff,%eax
    8d61:	29 d0                	sub    %edx,%eax
    8d63:	01 c8                	add    %ecx,%eax
    8d65:	0f b6 00             	movzbl (%eax),%eax
    8d68:	0f b6 d0             	movzbl %al,%edx
    8d6b:	8b 45 b8             	mov    -0x48(%ebp),%eax
    8d6e:	89 c1                	mov    %eax,%ecx
    8d70:	d3 fa                	sar    %cl,%edx
    8d72:	89 d0                	mov    %edx,%eax
    8d74:	83 e0 01             	and    $0x1,%eax
    8d77:	85 c0                	test   %eax,%eax
    8d79:	75 19                	jne    8d94 <do_unlink+0x268>
    8d7b:	6a 5a                	push   $0x5a
    8d7d:	68 d0 bd 00 00       	push   $0xbdd0
    8d82:	68 d0 bd 00 00       	push   $0xbdd0
    8d87:	68 e0 be 00 00       	push   $0xbee0
    8d8c:	e8 02 dd ff ff       	call   6a93 <assertion_failure>
    8d91:	83 c4 10             	add    $0x10,%esp
    8d94:	8b 0d 9c f7 00 00    	mov    0xf79c,%ecx
    8d9a:	8b 45 bc             	mov    -0x44(%ebp),%eax
    8d9d:	99                   	cltd   
    8d9e:	c1 ea 17             	shr    $0x17,%edx
    8da1:	01 d0                	add    %edx,%eax
    8da3:	25 ff 01 00 00       	and    $0x1ff,%eax
    8da8:	29 d0                	sub    %edx,%eax
    8daa:	89 c2                	mov    %eax,%edx
    8dac:	89 d0                	mov    %edx,%eax
    8dae:	01 c8                	add    %ecx,%eax
    8db0:	0f b6 00             	movzbl (%eax),%eax
    8db3:	89 c3                	mov    %eax,%ebx
    8db5:	8b 45 b8             	mov    -0x48(%ebp),%eax
    8db8:	be 01 00 00 00       	mov    $0x1,%esi
    8dbd:	89 c1                	mov    %eax,%ecx
    8dbf:	d3 e6                	shl    %cl,%esi
    8dc1:	89 f0                	mov    %esi,%eax
    8dc3:	f7 d0                	not    %eax
    8dc5:	21 c3                	and    %eax,%ebx
    8dc7:	89 d9                	mov    %ebx,%ecx
    8dc9:	a1 9c f7 00 00       	mov    0xf79c,%eax
    8dce:	01 d0                	add    %edx,%eax
    8dd0:	89 ca                	mov    %ecx,%edx
    8dd2:	88 10                	mov    %dl,(%eax)
    8dd4:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    8dda:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    8ddd:	8b 40 20             	mov    0x20(%eax),%eax
    8de0:	83 ec 04             	sub    $0x4,%esp
    8de3:	52                   	push   %edx
    8de4:	6a 03                	push   $0x3
    8de6:	68 00 02 00 00       	push   $0x200
    8deb:	6a 00                	push   $0x0
    8ded:	68 00 04 00 00       	push   $0x400
    8df2:	50                   	push   %eax
    8df3:	68 ec 03 00 00       	push   $0x3ec
    8df8:	e8 3f e7 ff ff       	call   753c <rw_sector>
    8dfd:	83 c4 20             	add    $0x20,%esp
    8e00:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    8e03:	8b 50 08             	mov    0x8(%eax),%edx
    8e06:	8b 45 c0             	mov    -0x40(%ebp),%eax
    8e09:	8b 40 14             	mov    0x14(%eax),%eax
    8e0c:	29 c2                	sub    %eax,%edx
    8e0e:	89 d0                	mov    %edx,%eax
    8e10:	83 c0 01             	add    $0x1,%eax
    8e13:	89 45 b8             	mov    %eax,-0x48(%ebp)
    8e16:	8b 45 b8             	mov    -0x48(%ebp),%eax
    8e19:	8d 50 07             	lea    0x7(%eax),%edx
    8e1c:	85 c0                	test   %eax,%eax
    8e1e:	0f 48 c2             	cmovs  %edx,%eax
    8e21:	c1 f8 03             	sar    $0x3,%eax
    8e24:	89 45 bc             	mov    %eax,-0x44(%ebp)
    8e27:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    8e2a:	8b 40 0c             	mov    0xc(%eax),%eax
    8e2d:	89 45 f4             	mov    %eax,-0xc(%ebp)
    8e30:	8b 45 b8             	mov    -0x48(%ebp),%eax
    8e33:	99                   	cltd   
    8e34:	c1 ea 1d             	shr    $0x1d,%edx
    8e37:	01 d0                	add    %edx,%eax
    8e39:	83 e0 07             	and    $0x7,%eax
    8e3c:	29 d0                	sub    %edx,%eax
    8e3e:	ba 08 00 00 00       	mov    $0x8,%edx
    8e43:	29 c2                	sub    %eax,%edx
    8e45:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8e48:	29 d0                	sub    %edx,%eax
    8e4a:	8d 50 07             	lea    0x7(%eax),%edx
    8e4d:	85 c0                	test   %eax,%eax
    8e4f:	0f 48 c2             	cmovs  %edx,%eax
    8e52:	c1 f8 03             	sar    $0x3,%eax
    8e55:	89 45 b4             	mov    %eax,-0x4c(%ebp)
    8e58:	8b 45 c0             	mov    -0x40(%ebp),%eax
    8e5b:	8b 50 0c             	mov    0xc(%eax),%edx
    8e5e:	8b 45 bc             	mov    -0x44(%ebp),%eax
    8e61:	8d 88 ff 01 00 00    	lea    0x1ff(%eax),%ecx
    8e67:	85 c0                	test   %eax,%eax
    8e69:	0f 48 c1             	cmovs  %ecx,%eax
    8e6c:	c1 f8 09             	sar    $0x9,%eax
    8e6f:	01 d0                	add    %edx,%eax
    8e71:	83 c0 02             	add    $0x2,%eax
    8e74:	89 45 f0             	mov    %eax,-0x10(%ebp)
    8e77:	8b 1d 9c f7 00 00    	mov    0xf79c,%ebx
    8e7d:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8e80:	c1 e0 09             	shl    $0x9,%eax
    8e83:	99                   	cltd   
    8e84:	8b 4d c4             	mov    -0x3c(%ebp),%ecx
    8e87:	8b 49 20             	mov    0x20(%ecx),%ecx
    8e8a:	83 ec 04             	sub    $0x4,%esp
    8e8d:	53                   	push   %ebx
    8e8e:	6a 03                	push   $0x3
    8e90:	68 00 02 00 00       	push   $0x200
    8e95:	52                   	push   %edx
    8e96:	50                   	push   %eax
    8e97:	51                   	push   %ecx
    8e98:	68 eb 03 00 00       	push   $0x3eb
    8e9d:	e8 9a e6 ff ff       	call   753c <rw_sector>
    8ea2:	83 c4 20             	add    $0x20,%esp
    8ea5:	8b 45 b8             	mov    -0x48(%ebp),%eax
    8ea8:	99                   	cltd   
    8ea9:	c1 ea 1d             	shr    $0x1d,%edx
    8eac:	01 d0                	add    %edx,%eax
    8eae:	83 e0 07             	and    $0x7,%eax
    8eb1:	29 d0                	sub    %edx,%eax
    8eb3:	89 45 ec             	mov    %eax,-0x14(%ebp)
    8eb6:	e9 8f 00 00 00       	jmp    8f4a <do_unlink+0x41e>
    8ebb:	8b 0d 9c f7 00 00    	mov    0xf79c,%ecx
    8ec1:	8b 45 bc             	mov    -0x44(%ebp),%eax
    8ec4:	99                   	cltd   
    8ec5:	c1 ea 17             	shr    $0x17,%edx
    8ec8:	01 d0                	add    %edx,%eax
    8eca:	25 ff 01 00 00       	and    $0x1ff,%eax
    8ecf:	29 d0                	sub    %edx,%eax
    8ed1:	01 c8                	add    %ecx,%eax
    8ed3:	0f b6 00             	movzbl (%eax),%eax
    8ed6:	0f b6 d0             	movzbl %al,%edx
    8ed9:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8edc:	89 c1                	mov    %eax,%ecx
    8ede:	d3 fa                	sar    %cl,%edx
    8ee0:	89 d0                	mov    %edx,%eax
    8ee2:	83 e0 01             	and    $0x1,%eax
    8ee5:	85 c0                	test   %eax,%eax
    8ee7:	75 19                	jne    8f02 <do_unlink+0x3d6>
    8ee9:	6a 7b                	push   $0x7b
    8eeb:	68 d0 bd 00 00       	push   $0xbdd0
    8ef0:	68 d0 bd 00 00       	push   $0xbdd0
    8ef5:	68 10 bf 00 00       	push   $0xbf10
    8efa:	e8 94 db ff ff       	call   6a93 <assertion_failure>
    8eff:	83 c4 10             	add    $0x10,%esp
    8f02:	8b 0d 9c f7 00 00    	mov    0xf79c,%ecx
    8f08:	8b 45 bc             	mov    -0x44(%ebp),%eax
    8f0b:	99                   	cltd   
    8f0c:	c1 ea 17             	shr    $0x17,%edx
    8f0f:	01 d0                	add    %edx,%eax
    8f11:	25 ff 01 00 00       	and    $0x1ff,%eax
    8f16:	29 d0                	sub    %edx,%eax
    8f18:	89 c2                	mov    %eax,%edx
    8f1a:	89 d0                	mov    %edx,%eax
    8f1c:	01 c8                	add    %ecx,%eax
    8f1e:	0f b6 00             	movzbl (%eax),%eax
    8f21:	89 c3                	mov    %eax,%ebx
    8f23:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8f26:	be 01 00 00 00       	mov    $0x1,%esi
    8f2b:	89 c1                	mov    %eax,%ecx
    8f2d:	d3 e6                	shl    %cl,%esi
    8f2f:	89 f0                	mov    %esi,%eax
    8f31:	f7 d0                	not    %eax
    8f33:	21 c3                	and    %eax,%ebx
    8f35:	89 d9                	mov    %ebx,%ecx
    8f37:	a1 9c f7 00 00       	mov    0xf79c,%eax
    8f3c:	01 d0                	add    %edx,%eax
    8f3e:	89 ca                	mov    %ecx,%edx
    8f40:	88 10                	mov    %dl,(%eax)
    8f42:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
    8f46:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
    8f4a:	83 7d ec 07          	cmpl   $0x7,-0x14(%ebp)
    8f4e:	7f 0a                	jg     8f5a <do_unlink+0x42e>
    8f50:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    8f54:	0f 85 61 ff ff ff    	jne    8ebb <do_unlink+0x38f>
    8f5a:	8b 45 bc             	mov    -0x44(%ebp),%eax
    8f5d:	99                   	cltd   
    8f5e:	c1 ea 17             	shr    $0x17,%edx
    8f61:	01 d0                	add    %edx,%eax
    8f63:	25 ff 01 00 00       	and    $0x1ff,%eax
    8f68:	29 d0                	sub    %edx,%eax
    8f6a:	83 c0 01             	add    $0x1,%eax
    8f6d:	89 45 ec             	mov    %eax,-0x14(%ebp)
    8f70:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
    8f77:	e9 b8 00 00 00       	jmp    9034 <do_unlink+0x508>
    8f7c:	81 7d ec 00 02 00 00 	cmpl   $0x200,-0x14(%ebp)
    8f83:	75 67                	jne    8fec <do_unlink+0x4c0>
    8f85:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    8f8c:	8b 1d 9c f7 00 00    	mov    0xf79c,%ebx
    8f92:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8f95:	c1 e0 09             	shl    $0x9,%eax
    8f98:	99                   	cltd   
    8f99:	8b 4d c4             	mov    -0x3c(%ebp),%ecx
    8f9c:	8b 49 20             	mov    0x20(%ecx),%ecx
    8f9f:	83 ec 04             	sub    $0x4,%esp
    8fa2:	53                   	push   %ebx
    8fa3:	6a 03                	push   $0x3
    8fa5:	68 00 02 00 00       	push   $0x200
    8faa:	52                   	push   %edx
    8fab:	50                   	push   %eax
    8fac:	51                   	push   %ecx
    8fad:	68 ec 03 00 00       	push   $0x3ec
    8fb2:	e8 85 e5 ff ff       	call   753c <rw_sector>
    8fb7:	83 c4 20             	add    $0x20,%esp
    8fba:	8b 1d 9c f7 00 00    	mov    0xf79c,%ebx
    8fc0:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    8fc4:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8fc7:	c1 e0 09             	shl    $0x9,%eax
    8fca:	99                   	cltd   
    8fcb:	8b 4d c4             	mov    -0x3c(%ebp),%ecx
    8fce:	8b 49 20             	mov    0x20(%ecx),%ecx
    8fd1:	83 ec 04             	sub    $0x4,%esp
    8fd4:	53                   	push   %ebx
    8fd5:	6a 03                	push   $0x3
    8fd7:	68 00 02 00 00       	push   $0x200
    8fdc:	52                   	push   %edx
    8fdd:	50                   	push   %eax
    8fde:	51                   	push   %ecx
    8fdf:	68 eb 03 00 00       	push   $0x3eb
    8fe4:	e8 53 e5 ff ff       	call   753c <rw_sector>
    8fe9:	83 c4 20             	add    $0x20,%esp
    8fec:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    8ff2:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8ff5:	01 d0                	add    %edx,%eax
    8ff7:	0f b6 00             	movzbl (%eax),%eax
    8ffa:	3c ff                	cmp    $0xff,%al
    8ffc:	74 1c                	je     901a <do_unlink+0x4ee>
    8ffe:	68 88 00 00 00       	push   $0x88
    9003:	68 d0 bd 00 00       	push   $0xbdd0
    9008:	68 d0 bd 00 00       	push   $0xbdd0
    900d:	68 3e bf 00 00       	push   $0xbf3e
    9012:	e8 7c da ff ff       	call   6a93 <assertion_failure>
    9017:	83 c4 10             	add    $0x10,%esp
    901a:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    9020:	8b 45 ec             	mov    -0x14(%ebp),%eax
    9023:	01 d0                	add    %edx,%eax
    9025:	c6 00 00             	movb   $0x0,(%eax)
    9028:	83 45 e8 01          	addl   $0x1,-0x18(%ebp)
    902c:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
    9030:	83 6d f4 08          	subl   $0x8,-0xc(%ebp)
    9034:	8b 45 e8             	mov    -0x18(%ebp),%eax
    9037:	3b 45 b4             	cmp    -0x4c(%ebp),%eax
    903a:	0f 8c 3c ff ff ff    	jl     8f7c <do_unlink+0x450>
    9040:	81 7d ec 00 02 00 00 	cmpl   $0x200,-0x14(%ebp)
    9047:	75 67                	jne    90b0 <do_unlink+0x584>
    9049:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    9050:	8b 1d 9c f7 00 00    	mov    0xf79c,%ebx
    9056:	8b 45 f0             	mov    -0x10(%ebp),%eax
    9059:	c1 e0 09             	shl    $0x9,%eax
    905c:	99                   	cltd   
    905d:	8b 4d c4             	mov    -0x3c(%ebp),%ecx
    9060:	8b 49 20             	mov    0x20(%ecx),%ecx
    9063:	83 ec 04             	sub    $0x4,%esp
    9066:	53                   	push   %ebx
    9067:	6a 03                	push   $0x3
    9069:	68 00 02 00 00       	push   $0x200
    906e:	52                   	push   %edx
    906f:	50                   	push   %eax
    9070:	51                   	push   %ecx
    9071:	68 ec 03 00 00       	push   $0x3ec
    9076:	e8 c1 e4 ff ff       	call   753c <rw_sector>
    907b:	83 c4 20             	add    $0x20,%esp
    907e:	8b 1d 9c f7 00 00    	mov    0xf79c,%ebx
    9084:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    9088:	8b 45 f0             	mov    -0x10(%ebp),%eax
    908b:	c1 e0 09             	shl    $0x9,%eax
    908e:	99                   	cltd   
    908f:	8b 4d c4             	mov    -0x3c(%ebp),%ecx
    9092:	8b 49 20             	mov    0x20(%ecx),%ecx
    9095:	83 ec 04             	sub    $0x4,%esp
    9098:	53                   	push   %ebx
    9099:	6a 03                	push   $0x3
    909b:	68 00 02 00 00       	push   $0x200
    90a0:	52                   	push   %edx
    90a1:	50                   	push   %eax
    90a2:	51                   	push   %ecx
    90a3:	68 eb 03 00 00       	push   $0x3eb
    90a8:	e8 8f e4 ff ff       	call   753c <rw_sector>
    90ad:	83 c4 20             	add    $0x20,%esp
    90b0:	8b 45 f4             	mov    -0xc(%ebp),%eax
    90b3:	ba ff 00 00 00       	mov    $0xff,%edx
    90b8:	89 c1                	mov    %eax,%ecx
    90ba:	d3 e2                	shl    %cl,%edx
    90bc:	89 d0                	mov    %edx,%eax
    90be:	f7 d0                	not    %eax
    90c0:	88 45 b3             	mov    %al,-0x4d(%ebp)
    90c3:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    90c9:	8b 45 ec             	mov    -0x14(%ebp),%eax
    90cc:	01 d0                	add    %edx,%eax
    90ce:	0f b6 00             	movzbl (%eax),%eax
    90d1:	22 45 b3             	and    -0x4d(%ebp),%al
    90d4:	38 45 b3             	cmp    %al,-0x4d(%ebp)
    90d7:	74 1c                	je     90f5 <do_unlink+0x5c9>
    90d9:	68 93 00 00 00       	push   $0x93
    90de:	68 d0 bd 00 00       	push   $0xbdd0
    90e3:	68 d0 bd 00 00       	push   $0xbdd0
    90e8:	68 4f bf 00 00       	push   $0xbf4f
    90ed:	e8 a1 d9 ff ff       	call   6a93 <assertion_failure>
    90f2:	83 c4 10             	add    $0x10,%esp
    90f5:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    90fb:	8b 45 ec             	mov    -0x14(%ebp),%eax
    90fe:	01 d0                	add    %edx,%eax
    9100:	0f b6 00             	movzbl (%eax),%eax
    9103:	89 c2                	mov    %eax,%edx
    9105:	8b 45 f4             	mov    -0xc(%ebp),%eax
    9108:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
    910d:	89 c1                	mov    %eax,%ecx
    910f:	d3 e3                	shl    %cl,%ebx
    9111:	89 d8                	mov    %ebx,%eax
    9113:	89 d1                	mov    %edx,%ecx
    9115:	21 c1                	and    %eax,%ecx
    9117:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    911d:	8b 45 ec             	mov    -0x14(%ebp),%eax
    9120:	01 d0                	add    %edx,%eax
    9122:	89 ca                	mov    %ecx,%edx
    9124:	88 10                	mov    %dl,(%eax)
    9126:	8b 1d 9c f7 00 00    	mov    0xf79c,%ebx
    912c:	8b 45 f0             	mov    -0x10(%ebp),%eax
    912f:	c1 e0 09             	shl    $0x9,%eax
    9132:	99                   	cltd   
    9133:	8b 4d c4             	mov    -0x3c(%ebp),%ecx
    9136:	8b 49 20             	mov    0x20(%ecx),%ecx
    9139:	83 ec 04             	sub    $0x4,%esp
    913c:	53                   	push   %ebx
    913d:	6a 03                	push   $0x3
    913f:	68 00 02 00 00       	push   $0x200
    9144:	52                   	push   %edx
    9145:	50                   	push   %eax
    9146:	51                   	push   %ecx
    9147:	68 ec 03 00 00       	push   $0x3ec
    914c:	e8 eb e3 ff ff       	call   753c <rw_sector>
    9151:	83 c4 20             	add    $0x20,%esp
    9154:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    9157:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
    915d:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    9160:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
    9167:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    916a:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
    9171:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    9174:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
    917b:	83 ec 0c             	sub    $0xc,%esp
    917e:	ff 75 c4             	pushl  -0x3c(%ebp)
    9181:	e8 a5 e7 ff ff       	call   792b <sync_inode>
    9186:	83 c4 10             	add    $0x10,%esp
    9189:	83 ec 0c             	sub    $0xc,%esp
    918c:	ff 75 c4             	pushl  -0x3c(%ebp)
    918f:	e8 59 e7 ff ff       	call   78ed <put_inode>
    9194:	83 c4 10             	add    $0x10,%esp
    9197:	8b 85 a0 fe ff ff    	mov    -0x160(%ebp),%eax
    919d:	8b 40 08             	mov    0x8(%eax),%eax
    91a0:	89 45 ac             	mov    %eax,-0x54(%ebp)
    91a3:	8b 85 a0 fe ff ff    	mov    -0x160(%ebp),%eax
    91a9:	8b 40 04             	mov    0x4(%eax),%eax
    91ac:	05 00 02 00 00       	add    $0x200,%eax
    91b1:	c1 e8 09             	shr    $0x9,%eax
    91b4:	89 45 a8             	mov    %eax,-0x58(%ebp)
    91b7:	8b 85 a0 fe ff ff    	mov    -0x160(%ebp),%eax
    91bd:	8b 40 04             	mov    0x4(%eax),%eax
    91c0:	c1 e8 04             	shr    $0x4,%eax
    91c3:	89 45 a4             	mov    %eax,-0x5c(%ebp)
    91c6:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    91cd:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
    91d4:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
    91db:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
    91e2:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    91e9:	e9 f0 00 00 00       	jmp    92de <do_unlink+0x7b2>
    91ee:	8b 1d 9c f7 00 00    	mov    0xf79c,%ebx
    91f4:	8b 55 ac             	mov    -0x54(%ebp),%edx
    91f7:	8b 45 ec             	mov    -0x14(%ebp),%eax
    91fa:	01 d0                	add    %edx,%eax
    91fc:	c1 e0 09             	shl    $0x9,%eax
    91ff:	99                   	cltd   
    9200:	8b 8d a0 fe ff ff    	mov    -0x160(%ebp),%ecx
    9206:	8b 49 20             	mov    0x20(%ecx),%ecx
    9209:	83 ec 04             	sub    $0x4,%esp
    920c:	53                   	push   %ebx
    920d:	6a 03                	push   $0x3
    920f:	68 00 02 00 00       	push   $0x200
    9214:	52                   	push   %edx
    9215:	50                   	push   %eax
    9216:	51                   	push   %ecx
    9217:	68 eb 03 00 00       	push   $0x3eb
    921c:	e8 1b e3 ff ff       	call   753c <rw_sector>
    9221:	83 c4 20             	add    $0x20,%esp
    9224:	a1 9c f7 00 00       	mov    0xf79c,%eax
    9229:	89 45 e0             	mov    %eax,-0x20(%ebp)
    922c:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
    9233:	e9 85 00 00 00       	jmp    92bd <do_unlink+0x791>
    9238:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    923c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    923f:	3b 45 a4             	cmp    -0x5c(%ebp),%eax
    9242:	0f 8f 83 00 00 00    	jg     92cb <do_unlink+0x79f>
    9248:	8b 45 e0             	mov    -0x20(%ebp),%eax
    924b:	8b 00                	mov    (%eax),%eax
    924d:	39 45 c8             	cmp    %eax,-0x38(%ebp)
    9250:	75 51                	jne    92a3 <do_unlink+0x777>
    9252:	83 ec 04             	sub    $0x4,%esp
    9255:	6a 10                	push   $0x10
    9257:	6a 00                	push   $0x0
    9259:	ff 75 e0             	pushl  -0x20(%ebp)
    925c:	e8 88 d6 ff ff       	call   68e9 <memset>
    9261:	83 c4 10             	add    $0x10,%esp
    9264:	8b 1d 9c f7 00 00    	mov    0xf79c,%ebx
    926a:	8b 55 ac             	mov    -0x54(%ebp),%edx
    926d:	8b 45 ec             	mov    -0x14(%ebp),%eax
    9270:	01 d0                	add    %edx,%eax
    9272:	c1 e0 09             	shl    $0x9,%eax
    9275:	99                   	cltd   
    9276:	8b 8d a0 fe ff ff    	mov    -0x160(%ebp),%ecx
    927c:	8b 49 20             	mov    0x20(%ecx),%ecx
    927f:	83 ec 04             	sub    $0x4,%esp
    9282:	53                   	push   %ebx
    9283:	6a 03                	push   $0x3
    9285:	68 00 02 00 00       	push   $0x200
    928a:	52                   	push   %edx
    928b:	50                   	push   %eax
    928c:	51                   	push   %ecx
    928d:	68 ec 03 00 00       	push   $0x3ec
    9292:	e8 a5 e2 ff ff       	call   753c <rw_sector>
    9297:	83 c4 20             	add    $0x20,%esp
    929a:	c7 45 dc 01 00 00 00 	movl   $0x1,-0x24(%ebp)
    92a1:	eb 29                	jmp    92cc <do_unlink+0x7a0>
    92a3:	8b 45 e0             	mov    -0x20(%ebp),%eax
    92a6:	8b 00                	mov    (%eax),%eax
    92a8:	85 c0                	test   %eax,%eax
    92aa:	74 09                	je     92b5 <do_unlink+0x789>
    92ac:	8b 45 d8             	mov    -0x28(%ebp),%eax
    92af:	83 c0 10             	add    $0x10,%eax
    92b2:	89 45 d8             	mov    %eax,-0x28(%ebp)
    92b5:	83 45 d4 01          	addl   $0x1,-0x2c(%ebp)
    92b9:	83 45 e0 10          	addl   $0x10,-0x20(%ebp)
    92bd:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    92c0:	83 f8 1f             	cmp    $0x1f,%eax
    92c3:	0f 86 6f ff ff ff    	jbe    9238 <do_unlink+0x70c>
    92c9:	eb 01                	jmp    92cc <do_unlink+0x7a0>
    92cb:	90                   	nop
    92cc:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    92cf:	3b 45 a4             	cmp    -0x5c(%ebp),%eax
    92d2:	7f 16                	jg     92ea <do_unlink+0x7be>
    92d4:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
    92d8:	75 10                	jne    92ea <do_unlink+0x7be>
    92da:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
    92de:	8b 45 ec             	mov    -0x14(%ebp),%eax
    92e1:	3b 45 a8             	cmp    -0x58(%ebp),%eax
    92e4:	0f 8c 04 ff ff ff    	jl     91ee <do_unlink+0x6c2>
    92ea:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
    92ee:	75 1c                	jne    930c <do_unlink+0x7e0>
    92f0:	68 cb 00 00 00       	push   $0xcb
    92f5:	68 d0 bd 00 00       	push   $0xbdd0
    92fa:	68 d0 bd 00 00       	push   $0xbdd0
    92ff:	68 69 bf 00 00       	push   $0xbf69
    9304:	e8 8a d7 ff ff       	call   6a93 <assertion_failure>
    9309:	83 c4 10             	add    $0x10,%esp
    930c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    930f:	3b 45 a4             	cmp    -0x5c(%ebp),%eax
    9312:	75 1e                	jne    9332 <do_unlink+0x806>
    9314:	8b 85 a0 fe ff ff    	mov    -0x160(%ebp),%eax
    931a:	8b 55 d8             	mov    -0x28(%ebp),%edx
    931d:	89 50 04             	mov    %edx,0x4(%eax)
    9320:	8b 85 a0 fe ff ff    	mov    -0x160(%ebp),%eax
    9326:	83 ec 0c             	sub    $0xc,%esp
    9329:	50                   	push   %eax
    932a:	e8 fc e5 ff ff       	call   792b <sync_inode>
    932f:	83 c4 10             	add    $0x10,%esp
    9332:	b8 00 00 00 00       	mov    $0x0,%eax
    9337:	8d 65 f8             	lea    -0x8(%ebp),%esp
    933a:	5b                   	pop    %ebx
    933b:	5e                   	pop    %esi
    933c:	5d                   	pop    %ebp
    933d:	c3                   	ret    

0000933e <do_disklog>:
    933e:	55                   	push   %ebp
    933f:	89 e5                	mov    %esp,%ebp
    9341:	53                   	push   %ebx
    9342:	81 ec 14 04 00 00    	sub    $0x414,%esp
    9348:	a1 ec a4 04 00       	mov    0x4a4ec,%eax
    934d:	89 45 f4             	mov    %eax,-0xc(%ebp)
    9350:	a1 e0 a4 04 00       	mov    0x4a4e0,%eax
    9355:	89 45 f0             	mov    %eax,-0x10(%ebp)
    9358:	81 7d f4 ff 03 00 00 	cmpl   $0x3ff,-0xc(%ebp)
    935f:	7e 19                	jle    937a <do_disklog+0x3c>
    9361:	6a 2b                	push   $0x2b
    9363:	68 70 bf 00 00       	push   $0xbf70
    9368:	68 70 bf 00 00       	push   $0xbf70
    936d:	68 7d bf 00 00       	push   $0xbf7d
    9372:	e8 1c d7 ff ff       	call   6a93 <assertion_failure>
    9377:	83 c4 10             	add    $0x10,%esp
    937a:	a1 0c a5 04 00       	mov    0x4a50c,%eax
    937f:	83 ec 08             	sub    $0x8,%esp
    9382:	50                   	push   %eax
    9383:	ff 75 f0             	pushl  -0x10(%ebp)
    9386:	e8 33 ac ff ff       	call   3fbe <va2la>
    938b:	83 c4 10             	add    $0x10,%esp
    938e:	89 c3                	mov    %eax,%ebx
    9390:	83 ec 08             	sub    $0x8,%esp
    9393:	8d 85 f0 fb ff ff    	lea    -0x410(%ebp),%eax
    9399:	50                   	push   %eax
    939a:	6a 03                	push   $0x3
    939c:	e8 1d ac ff ff       	call   3fbe <va2la>
    93a1:	83 c4 10             	add    $0x10,%esp
    93a4:	83 ec 04             	sub    $0x4,%esp
    93a7:	ff 75 f4             	pushl  -0xc(%ebp)
    93aa:	53                   	push   %ebx
    93ab:	50                   	push   %eax
    93ac:	e8 0f d5 ff ff       	call   68c0 <memcpy>
    93b1:	83 c4 10             	add    $0x10,%esp
    93b4:	8d 95 f0 fb ff ff    	lea    -0x410(%ebp),%edx
    93ba:	8b 45 f4             	mov    -0xc(%ebp),%eax
    93bd:	01 d0                	add    %edx,%eax
    93bf:	c6 00 00             	movb   $0x0,(%eax)
    93c2:	83 ec 0c             	sub    $0xc,%esp
    93c5:	8d 85 f0 fb ff ff    	lea    -0x410(%ebp),%eax
    93cb:	50                   	push   %eax
    93cc:	e8 08 00 00 00       	call   93d9 <disklog>
    93d1:	83 c4 10             	add    $0x10,%esp
    93d4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    93d7:	c9                   	leave  
    93d8:	c3                   	ret    

000093d9 <disklog>:
    93d9:	55                   	push   %ebp
    93da:	89 e5                	mov    %esp,%ebp
    93dc:	53                   	push   %ebx
    93dd:	83 ec 54             	sub    $0x54,%esp
    93e0:	a1 20 a8 04 00       	mov    0x4a820,%eax
    93e5:	8b 40 20             	mov    0x20(%eax),%eax
    93e8:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    93eb:	83 ec 0c             	sub    $0xc,%esp
    93ee:	ff 75 d4             	pushl  -0x2c(%ebp)
    93f1:	e8 4e e3 ff ff       	call   7744 <get_super_block>
    93f6:	83 c4 10             	add    $0x10,%esp
    93f9:	89 45 d0             	mov    %eax,-0x30(%ebp)
    93fc:	8b 45 d0             	mov    -0x30(%ebp),%eax
    93ff:	8b 40 08             	mov    0x8(%eax),%eax
    9402:	2d 00 08 00 00       	sub    $0x800,%eax
    9407:	89 45 cc             	mov    %eax,-0x34(%ebp)
    940a:	a1 60 08 01 00       	mov    0x10860,%eax
    940f:	85 c0                	test   %eax,%eax
    9411:	0f 85 8c 02 00 00    	jne    96a3 <disklog+0x2ca>
    9417:	c7 45 c8 00 10 00 00 	movl   $0x1000,-0x38(%ebp)
    941e:	8b 45 d0             	mov    -0x30(%ebp),%eax
    9421:	8b 40 0c             	mov    0xc(%eax),%eax
    9424:	83 c0 02             	add    $0x2,%eax
    9427:	89 45 c4             	mov    %eax,-0x3c(%ebp)
    942a:	8b 45 cc             	mov    -0x34(%ebp),%eax
    942d:	99                   	cltd   
    942e:	f7 7d c8             	idivl  -0x38(%ebp)
    9431:	89 c2                	mov    %eax,%edx
    9433:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    9436:	01 d0                	add    %edx,%eax
    9438:	89 45 c0             	mov    %eax,-0x40(%ebp)
    943b:	8b 45 cc             	mov    -0x34(%ebp),%eax
    943e:	99                   	cltd   
    943f:	f7 7d c8             	idivl  -0x38(%ebp)
    9442:	89 d0                	mov    %edx,%eax
    9444:	8d 50 07             	lea    0x7(%eax),%edx
    9447:	85 c0                	test   %eax,%eax
    9449:	0f 48 c2             	cmovs  %edx,%eax
    944c:	c1 f8 03             	sar    $0x3,%eax
    944f:	89 45 f4             	mov    %eax,-0xc(%ebp)
    9452:	8b 45 cc             	mov    -0x34(%ebp),%eax
    9455:	99                   	cltd   
    9456:	f7 7d c8             	idivl  -0x38(%ebp)
    9459:	89 d0                	mov    %edx,%eax
    945b:	c1 f8 1f             	sar    $0x1f,%eax
    945e:	c1 e8 1d             	shr    $0x1d,%eax
    9461:	01 c2                	add    %eax,%edx
    9463:	83 e2 07             	and    $0x7,%edx
    9466:	29 c2                	sub    %eax,%edx
    9468:	89 d0                	mov    %edx,%eax
    946a:	89 45 f0             	mov    %eax,-0x10(%ebp)
    946d:	b8 00 08 00 00       	mov    $0x800,%eax
    9472:	99                   	cltd   
    9473:	f7 7d c8             	idivl  -0x38(%ebp)
    9476:	83 c0 02             	add    $0x2,%eax
    9479:	89 45 bc             	mov    %eax,-0x44(%ebp)
    947c:	c7 45 ec 00 08 00 00 	movl   $0x800,-0x14(%ebp)
    9483:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
    948a:	e9 17 01 00 00       	jmp    95a6 <disklog+0x1cd>
    948f:	8b 0d 9c f7 00 00    	mov    0xf79c,%ecx
    9495:	8b 55 c0             	mov    -0x40(%ebp),%edx
    9498:	8b 45 e8             	mov    -0x18(%ebp),%eax
    949b:	01 d0                	add    %edx,%eax
    949d:	c1 e0 09             	shl    $0x9,%eax
    94a0:	99                   	cltd   
    94a1:	83 ec 04             	sub    $0x4,%esp
    94a4:	51                   	push   %ecx
    94a5:	6a 03                	push   $0x3
    94a7:	68 00 02 00 00       	push   $0x200
    94ac:	52                   	push   %edx
    94ad:	50                   	push   %eax
    94ae:	ff 75 d4             	pushl  -0x2c(%ebp)
    94b1:	68 eb 03 00 00       	push   $0x3eb
    94b6:	e8 81 e0 ff ff       	call   753c <rw_sector>
    94bb:	83 c4 20             	add    $0x20,%esp
    94be:	e9 8d 00 00 00       	jmp    9550 <disklog+0x177>
    94c3:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    94c9:	8b 45 f4             	mov    -0xc(%ebp),%eax
    94cc:	01 d0                	add    %edx,%eax
    94ce:	0f b6 00             	movzbl (%eax),%eax
    94d1:	0f b6 d0             	movzbl %al,%edx
    94d4:	8b 45 f0             	mov    -0x10(%ebp),%eax
    94d7:	89 c1                	mov    %eax,%ecx
    94d9:	d3 fa                	sar    %cl,%edx
    94db:	89 d0                	mov    %edx,%eax
    94dd:	83 e0 01             	and    $0x1,%eax
    94e0:	85 c0                	test   %eax,%eax
    94e2:	74 19                	je     94fd <disklog+0x124>
    94e4:	6a 59                	push   $0x59
    94e6:	68 70 bf 00 00       	push   $0xbf70
    94eb:	68 70 bf 00 00       	push   $0xbf70
    94f0:	68 98 bf 00 00       	push   $0xbf98
    94f5:	e8 99 d5 ff ff       	call   6a93 <assertion_failure>
    94fa:	83 c4 10             	add    $0x10,%esp
    94fd:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    9503:	8b 45 f4             	mov    -0xc(%ebp),%eax
    9506:	01 d0                	add    %edx,%eax
    9508:	0f b6 00             	movzbl (%eax),%eax
    950b:	89 c3                	mov    %eax,%ebx
    950d:	8b 45 f0             	mov    -0x10(%ebp),%eax
    9510:	ba 01 00 00 00       	mov    $0x1,%edx
    9515:	89 c1                	mov    %eax,%ecx
    9517:	d3 e2                	shl    %cl,%edx
    9519:	89 d0                	mov    %edx,%eax
    951b:	09 c3                	or     %eax,%ebx
    951d:	89 d9                	mov    %ebx,%ecx
    951f:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    9525:	8b 45 f4             	mov    -0xc(%ebp),%eax
    9528:	01 d0                	add    %edx,%eax
    952a:	89 ca                	mov    %ecx,%edx
    952c:	88 10                	mov    %dl,(%eax)
    952e:	83 6d ec 01          	subl   $0x1,-0x14(%ebp)
    9532:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
    9536:	74 0c                	je     9544 <disklog+0x16b>
    9538:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    953c:	83 7d f0 07          	cmpl   $0x7,-0x10(%ebp)
    9540:	7e 81                	jle    94c3 <disklog+0xea>
    9542:	eb 01                	jmp    9545 <disklog+0x16c>
    9544:	90                   	nop
    9545:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    954c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    9550:	81 7d f4 ff 01 00 00 	cmpl   $0x1ff,-0xc(%ebp)
    9557:	7f 06                	jg     955f <disklog+0x186>
    9559:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
    955d:	7f dd                	jg     953c <disklog+0x163>
    955f:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    9566:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    956d:	8b 0d 9c f7 00 00    	mov    0xf79c,%ecx
    9573:	8b 55 c0             	mov    -0x40(%ebp),%edx
    9576:	8b 45 e8             	mov    -0x18(%ebp),%eax
    9579:	01 d0                	add    %edx,%eax
    957b:	c1 e0 09             	shl    $0x9,%eax
    957e:	99                   	cltd   
    957f:	83 ec 04             	sub    $0x4,%esp
    9582:	51                   	push   %ecx
    9583:	6a 03                	push   $0x3
    9585:	68 00 02 00 00       	push   $0x200
    958a:	52                   	push   %edx
    958b:	50                   	push   %eax
    958c:	ff 75 d4             	pushl  -0x2c(%ebp)
    958f:	68 ec 03 00 00       	push   $0x3ec
    9594:	e8 a3 df ff ff       	call   753c <rw_sector>
    9599:	83 c4 20             	add    $0x20,%esp
    959c:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
    95a0:	74 12                	je     95b4 <disklog+0x1db>
    95a2:	83 45 e8 01          	addl   $0x1,-0x18(%ebp)
    95a6:	8b 45 e8             	mov    -0x18(%ebp),%eax
    95a9:	3b 45 bc             	cmp    -0x44(%ebp),%eax
    95ac:	0f 8c dd fe ff ff    	jl     948f <disklog+0xb6>
    95b2:	eb 01                	jmp    95b5 <disklog+0x1dc>
    95b4:	90                   	nop
    95b5:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
    95b9:	74 19                	je     95d4 <disklog+0x1fb>
    95bb:	6a 68                	push   $0x68
    95bd:	68 70 bf 00 00       	push   $0xbf70
    95c2:	68 70 bf 00 00       	push   $0xbf70
    95c7:	68 c0 bf 00 00       	push   $0xbfc0
    95cc:	e8 c2 d4 ff ff       	call   6a93 <assertion_failure>
    95d1:	83 c4 10             	add    $0x10,%esp
    95d4:	c7 05 60 08 01 00 40 	movl   $0x40,0x10860
    95db:	00 00 00 
    95de:	a1 1c ab 00 00       	mov    0xab1c,%eax
    95e3:	c1 f8 09             	sar    $0x9,%eax
    95e6:	ba 00 01 00 00       	mov    $0x100,%edx
    95eb:	3d 00 01 00 00       	cmp    $0x100,%eax
    95f0:	0f 4f c2             	cmovg  %edx,%eax
    95f3:	89 45 b8             	mov    %eax,-0x48(%ebp)
    95f6:	81 7d b8 00 01 00 00 	cmpl   $0x100,-0x48(%ebp)
    95fd:	74 19                	je     9618 <disklog+0x23f>
    95ff:	6a 70                	push   $0x70
    9601:	68 70 bf 00 00       	push   $0xbf70
    9606:	68 70 bf 00 00       	push   $0xbf70
    960b:	68 cf bf 00 00       	push   $0xbfcf
    9610:	e8 7e d4 ff ff       	call   6a93 <assertion_failure>
    9615:	83 c4 10             	add    $0x10,%esp
    9618:	c7 45 e4 00 08 00 00 	movl   $0x800,-0x1c(%ebp)
    961f:	8b 45 cc             	mov    -0x34(%ebp),%eax
    9622:	89 45 e8             	mov    %eax,-0x18(%ebp)
    9625:	eb 56                	jmp    967d <disklog+0x2a4>
    9627:	8b 45 b8             	mov    -0x48(%ebp),%eax
    962a:	c1 e0 09             	shl    $0x9,%eax
    962d:	89 c2                	mov    %eax,%edx
    962f:	a1 9c f7 00 00       	mov    0xf79c,%eax
    9634:	83 ec 04             	sub    $0x4,%esp
    9637:	52                   	push   %edx
    9638:	6a 20                	push   $0x20
    963a:	50                   	push   %eax
    963b:	e8 a9 d2 ff ff       	call   68e9 <memset>
    9640:	83 c4 10             	add    $0x10,%esp
    9643:	8b 0d 9c f7 00 00    	mov    0xf79c,%ecx
    9649:	8b 45 b8             	mov    -0x48(%ebp),%eax
    964c:	c1 e0 09             	shl    $0x9,%eax
    964f:	89 c3                	mov    %eax,%ebx
    9651:	8b 45 e8             	mov    -0x18(%ebp),%eax
    9654:	c1 e0 09             	shl    $0x9,%eax
    9657:	99                   	cltd   
    9658:	83 ec 04             	sub    $0x4,%esp
    965b:	51                   	push   %ecx
    965c:	6a 03                	push   $0x3
    965e:	53                   	push   %ebx
    965f:	52                   	push   %edx
    9660:	50                   	push   %eax
    9661:	ff 75 d4             	pushl  -0x2c(%ebp)
    9664:	68 ec 03 00 00       	push   $0x3ec
    9669:	e8 ce de ff ff       	call   753c <rw_sector>
    966e:	83 c4 20             	add    $0x20,%esp
    9671:	8b 45 b8             	mov    -0x48(%ebp),%eax
    9674:	29 45 e4             	sub    %eax,-0x1c(%ebp)
    9677:	8b 45 b8             	mov    -0x48(%ebp),%eax
    967a:	01 45 e8             	add    %eax,-0x18(%ebp)
    967d:	8b 45 cc             	mov    -0x34(%ebp),%eax
    9680:	05 ff 07 00 00       	add    $0x7ff,%eax
    9685:	39 45 e8             	cmp    %eax,-0x18(%ebp)
    9688:	7e 9d                	jle    9627 <disklog+0x24e>
    968a:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
    968e:	74 13                	je     96a3 <disklog+0x2ca>
    9690:	83 ec 08             	sub    $0x8,%esp
    9693:	ff 75 e4             	pushl  -0x1c(%ebp)
    9696:	68 dc bf 00 00       	push   $0xbfdc
    969b:	e8 6f 85 ff ff       	call   1c0f <panic>
    96a0:	83 c4 10             	add    $0x10,%esp
    96a3:	8b 45 08             	mov    0x8(%ebp),%eax
    96a6:	89 45 e0             	mov    %eax,-0x20(%ebp)
    96a9:	83 ec 0c             	sub    $0xc,%esp
    96ac:	ff 75 08             	pushl  0x8(%ebp)
    96af:	e8 6e d2 ff ff       	call   6922 <strlen>
    96b4:	83 c4 10             	add    $0x10,%esp
    96b7:	89 45 dc             	mov    %eax,-0x24(%ebp)
    96ba:	a1 60 08 01 00       	mov    0x10860,%eax
    96bf:	c1 f8 09             	sar    $0x9,%eax
    96c2:	89 c2                	mov    %eax,%edx
    96c4:	8b 45 cc             	mov    -0x34(%ebp),%eax
    96c7:	01 d0                	add    %edx,%eax
    96c9:	89 45 d8             	mov    %eax,-0x28(%ebp)
    96cc:	e9 be 00 00 00       	jmp    978f <disklog+0x3b6>
    96d1:	8b 0d 9c f7 00 00    	mov    0xf79c,%ecx
    96d7:	8b 45 d8             	mov    -0x28(%ebp),%eax
    96da:	c1 e0 09             	shl    $0x9,%eax
    96dd:	99                   	cltd   
    96de:	83 ec 04             	sub    $0x4,%esp
    96e1:	51                   	push   %ecx
    96e2:	6a 03                	push   $0x3
    96e4:	68 00 02 00 00       	push   $0x200
    96e9:	52                   	push   %edx
    96ea:	50                   	push   %eax
    96eb:	ff 75 d4             	pushl  -0x2c(%ebp)
    96ee:	68 eb 03 00 00       	push   $0x3eb
    96f3:	e8 44 de ff ff       	call   753c <rw_sector>
    96f8:	83 c4 20             	add    $0x20,%esp
    96fb:	a1 60 08 01 00       	mov    0x10860,%eax
    9700:	99                   	cltd   
    9701:	c1 ea 17             	shr    $0x17,%edx
    9704:	01 d0                	add    %edx,%eax
    9706:	25 ff 01 00 00       	and    $0x1ff,%eax
    970b:	29 d0                	sub    %edx,%eax
    970d:	89 45 b4             	mov    %eax,-0x4c(%ebp)
    9710:	b8 00 02 00 00       	mov    $0x200,%eax
    9715:	2b 45 b4             	sub    -0x4c(%ebp),%eax
    9718:	39 45 dc             	cmp    %eax,-0x24(%ebp)
    971b:	0f 4e 45 dc          	cmovle -0x24(%ebp),%eax
    971f:	89 45 b0             	mov    %eax,-0x50(%ebp)
    9722:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    9728:	8b 45 b4             	mov    -0x4c(%ebp),%eax
    972b:	01 d0                	add    %edx,%eax
    972d:	83 ec 04             	sub    $0x4,%esp
    9730:	ff 75 b0             	pushl  -0x50(%ebp)
    9733:	ff 75 e0             	pushl  -0x20(%ebp)
    9736:	50                   	push   %eax
    9737:	e8 84 d1 ff ff       	call   68c0 <memcpy>
    973c:	83 c4 10             	add    $0x10,%esp
    973f:	8b 45 b0             	mov    -0x50(%ebp),%eax
    9742:	01 45 b4             	add    %eax,-0x4c(%ebp)
    9745:	8b 45 b0             	mov    -0x50(%ebp),%eax
    9748:	29 45 dc             	sub    %eax,-0x24(%ebp)
    974b:	8b 0d 9c f7 00 00    	mov    0xf79c,%ecx
    9751:	8b 45 d8             	mov    -0x28(%ebp),%eax
    9754:	c1 e0 09             	shl    $0x9,%eax
    9757:	99                   	cltd   
    9758:	83 ec 04             	sub    $0x4,%esp
    975b:	51                   	push   %ecx
    975c:	6a 03                	push   $0x3
    975e:	68 00 02 00 00       	push   $0x200
    9763:	52                   	push   %edx
    9764:	50                   	push   %eax
    9765:	ff 75 d4             	pushl  -0x2c(%ebp)
    9768:	68 ec 03 00 00       	push   $0x3ec
    976d:	e8 ca dd ff ff       	call   753c <rw_sector>
    9772:	83 c4 20             	add    $0x20,%esp
    9775:	83 45 d8 01          	addl   $0x1,-0x28(%ebp)
    9779:	8b 15 60 08 01 00    	mov    0x10860,%edx
    977f:	8b 45 b0             	mov    -0x50(%ebp),%eax
    9782:	01 d0                	add    %edx,%eax
    9784:	a3 60 08 01 00       	mov    %eax,0x10860
    9789:	8b 45 b0             	mov    -0x50(%ebp),%eax
    978c:	01 45 e0             	add    %eax,-0x20(%ebp)
    978f:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
    9793:	0f 85 38 ff ff ff    	jne    96d1 <disklog+0x2f8>
    9799:	8b 0d 9c f7 00 00    	mov    0xf79c,%ecx
    979f:	8b 45 cc             	mov    -0x34(%ebp),%eax
    97a2:	c1 e0 09             	shl    $0x9,%eax
    97a5:	99                   	cltd   
    97a6:	83 ec 04             	sub    $0x4,%esp
    97a9:	51                   	push   %ecx
    97aa:	6a 03                	push   $0x3
    97ac:	68 00 02 00 00       	push   $0x200
    97b1:	52                   	push   %edx
    97b2:	50                   	push   %eax
    97b3:	ff 75 d4             	pushl  -0x2c(%ebp)
    97b6:	68 eb 03 00 00       	push   $0x3eb
    97bb:	e8 7c dd ff ff       	call   753c <rw_sector>
    97c0:	83 c4 20             	add    $0x20,%esp
    97c3:	8b 15 60 08 01 00    	mov    0x10860,%edx
    97c9:	a1 9c f7 00 00       	mov    0xf79c,%eax
    97ce:	83 ec 04             	sub    $0x4,%esp
    97d1:	52                   	push   %edx
    97d2:	68 01 c0 00 00       	push   $0xc001
    97d7:	50                   	push   %eax
    97d8:	e8 fa cd ff ff       	call   65d7 <sprintf>
    97dd:	83 c4 10             	add    $0x10,%esp
    97e0:	a1 9c f7 00 00       	mov    0xf79c,%eax
    97e5:	83 c0 09             	add    $0x9,%eax
    97e8:	83 ec 04             	sub    $0x4,%esp
    97eb:	6a 16                	push   $0x16
    97ed:	6a 20                	push   $0x20
    97ef:	50                   	push   %eax
    97f0:	e8 f4 d0 ff ff       	call   68e9 <memset>
    97f5:	83 c4 10             	add    $0x10,%esp
    97f8:	a1 9c f7 00 00       	mov    0xf79c,%eax
    97fd:	83 c0 1f             	add    $0x1f,%eax
    9800:	c6 00 0a             	movb   $0xa,(%eax)
    9803:	a1 9c f7 00 00       	mov    0xf79c,%eax
    9808:	83 c0 20             	add    $0x20,%eax
    980b:	83 ec 04             	sub    $0x4,%esp
    980e:	6a 1f                	push   $0x1f
    9810:	6a 20                	push   $0x20
    9812:	50                   	push   %eax
    9813:	e8 d1 d0 ff ff       	call   68e9 <memset>
    9818:	83 c4 10             	add    $0x10,%esp
    981b:	a1 9c f7 00 00       	mov    0xf79c,%eax
    9820:	83 c0 3f             	add    $0x3f,%eax
    9823:	c6 00 0a             	movb   $0xa,(%eax)
    9826:	8b 0d 9c f7 00 00    	mov    0xf79c,%ecx
    982c:	8b 45 cc             	mov    -0x34(%ebp),%eax
    982f:	c1 e0 09             	shl    $0x9,%eax
    9832:	99                   	cltd   
    9833:	83 ec 04             	sub    $0x4,%esp
    9836:	51                   	push   %ecx
    9837:	6a 03                	push   $0x3
    9839:	68 00 02 00 00       	push   $0x200
    983e:	52                   	push   %edx
    983f:	50                   	push   %eax
    9840:	ff 75 d4             	pushl  -0x2c(%ebp)
    9843:	68 ec 03 00 00       	push   $0x3ec
    9848:	e8 ef dc ff ff       	call   753c <rw_sector>
    984d:	83 c4 20             	add    $0x20,%esp
    9850:	a1 9c f7 00 00       	mov    0xf79c,%eax
    9855:	83 c0 33             	add    $0x33,%eax
    9858:	0f b6 00             	movzbl (%eax),%eax
    985b:	0f be c0             	movsbl %al,%eax
    985e:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    9864:	83 c2 40             	add    $0x40,%edx
    9867:	83 ec 04             	sub    $0x4,%esp
    986a:	68 c0 01 00 00       	push   $0x1c0
    986f:	50                   	push   %eax
    9870:	52                   	push   %edx
    9871:	e8 73 d0 ff ff       	call   68e9 <memset>
    9876:	83 c4 10             	add    $0x10,%esp
    9879:	8b 0d 9c f7 00 00    	mov    0xf79c,%ecx
    987f:	8b 45 cc             	mov    -0x34(%ebp),%eax
    9882:	05 ff 07 00 00       	add    $0x7ff,%eax
    9887:	c1 e0 09             	shl    $0x9,%eax
    988a:	99                   	cltd   
    988b:	83 ec 04             	sub    $0x4,%esp
    988e:	51                   	push   %ecx
    988f:	6a 03                	push   $0x3
    9891:	68 00 02 00 00       	push   $0x200
    9896:	52                   	push   %edx
    9897:	50                   	push   %eax
    9898:	ff 75 d4             	pushl  -0x2c(%ebp)
    989b:	68 ec 03 00 00       	push   $0x3ec
    98a0:	e8 97 dc ff ff       	call   753c <rw_sector>
    98a5:	83 c4 20             	add    $0x20,%esp
    98a8:	a1 60 08 01 00       	mov    0x10860,%eax
    98ad:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    98b0:	c9                   	leave  
    98b1:	c3                   	ret    

000098b2 <dump_fd_graph>:
    98b2:	55                   	push   %ebp
    98b3:	89 e5                	mov    %esp,%ebp
    98b5:	57                   	push   %edi
    98b6:	56                   	push   %esi
    98b7:	53                   	push   %ebx
    98b8:	81 ec 1c 19 00 00    	sub    $0x191c,%esp
    98be:	8d 45 0c             	lea    0xc(%ebp),%eax
    98c1:	89 45 b8             	mov    %eax,-0x48(%ebp)
    98c4:	8b 45 08             	mov    0x8(%ebp),%eax
    98c7:	83 ec 04             	sub    $0x4,%esp
    98ca:	ff 75 b8             	pushl  -0x48(%ebp)
    98cd:	50                   	push   %eax
    98ce:	8d 85 7c fb ff ff    	lea    -0x484(%ebp),%eax
    98d4:	50                   	push   %eax
    98d5:	e8 80 ca ff ff       	call   635a <vsprintf>
    98da:	83 c4 10             	add    $0x10,%esp
    98dd:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    98e0:	83 ec 0c             	sub    $0xc,%esp
    98e3:	8d 85 7c fb ff ff    	lea    -0x484(%ebp),%eax
    98e9:	50                   	push   %eax
    98ea:	e8 33 d0 ff ff       	call   6922 <strlen>
    98ef:	83 c4 10             	add    $0x10,%esp
    98f2:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
    98f5:	74 1c                	je     9913 <dump_fd_graph+0x61>
    98f7:	68 bb 00 00 00       	push   $0xbb
    98fc:	68 70 bf 00 00       	push   $0xbf70
    9901:	68 70 bf 00 00       	push   $0xbf70
    9906:	68 06 c0 00 00       	push   $0xc006
    990b:	e8 83 d1 ff ff       	call   6a93 <assertion_failure>
    9910:	83 c4 10             	add    $0x10,%esp
    9913:	c7 85 f4 fa ff ff 19 	movl   $0xc019,-0x50c(%ebp)
    991a:	c0 00 00 
    991d:	c7 85 fc fa ff ff 21 	movl   $0xc021,-0x504(%ebp)
    9924:	c0 00 00 
    9927:	c7 85 0c fb ff ff 2b 	movl   $0xc02b,-0x4f4(%ebp)
    992e:	c0 00 00 
    9931:	c7 85 2c fb ff ff 33 	movl   $0xc033,-0x4d4(%ebp)
    9938:	c0 00 00 
    993b:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
    9942:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
    9949:	a1 64 08 01 00       	mov    0x10864,%eax
    994e:	8d 50 01             	lea    0x1(%eax),%edx
    9951:	89 15 64 08 01 00    	mov    %edx,0x10864
    9957:	83 ec 08             	sub    $0x8,%esp
    995a:	50                   	push   %eax
    995b:	68 3d c0 00 00       	push   $0xc03d
    9960:	e8 e5 d2 ff ff       	call   6c4a <syslog>
    9965:	83 c4 10             	add    $0x10,%esp
    9968:	83 ec 0c             	sub    $0xc,%esp
    996b:	68 55 c0 00 00       	push   $0xc055
    9970:	e8 d5 d2 ff ff       	call   6c4a <syslog>
    9975:	83 c4 10             	add    $0x10,%esp
    9978:	83 ec 0c             	sub    $0xc,%esp
    997b:	68 5f c0 00 00       	push   $0xc05f
    9980:	e8 c5 d2 ff ff       	call   6c4a <syslog>
    9985:	83 c4 10             	add    $0x10,%esp
    9988:	83 ec 0c             	sub    $0xc,%esp
    998b:	68 71 c0 00 00       	push   $0xc071
    9990:	e8 b5 d2 ff ff       	call   6c4a <syslog>
    9995:	83 c4 10             	add    $0x10,%esp
    9998:	83 ec 0c             	sub    $0xc,%esp
    999b:	68 76 c0 00 00       	push   $0xc076
    99a0:	e8 a5 d2 ff ff       	call   6c4a <syslog>
    99a5:	83 c4 10             	add    $0x10,%esp
    99a8:	83 ec 0c             	sub    $0xc,%esp
    99ab:	68 7f c0 00 00       	push   $0xc07f
    99b0:	e8 95 d2 ff ff       	call   6c4a <syslog>
    99b5:	83 c4 10             	add    $0x10,%esp
    99b8:	83 ec 0c             	sub    $0xc,%esp
    99bb:	68 92 c0 00 00       	push   $0xc092
    99c0:	e8 85 d2 ff ff       	call   6c4a <syslog>
    99c5:	83 c4 10             	add    $0x10,%esp
    99c8:	83 ec 0c             	sub    $0xc,%esp
    99cb:	68 71 c0 00 00       	push   $0xc071
    99d0:	e8 75 d2 ff ff       	call   6c4a <syslog>
    99d5:	83 c4 10             	add    $0x10,%esp
    99d8:	83 ec 0c             	sub    $0xc,%esp
    99db:	68 a7 c0 00 00       	push   $0xc0a7
    99e0:	e8 65 d2 ff ff       	call   6c4a <syslog>
    99e5:	83 c4 10             	add    $0x10,%esp
    99e8:	83 ec 0c             	sub    $0xc,%esp
    99eb:	68 71 c0 00 00       	push   $0xc071
    99f0:	e8 55 d2 ff ff       	call   6c4a <syslog>
    99f5:	83 c4 10             	add    $0x10,%esp
    99f8:	c7 45 d4 e0 b2 04 00 	movl   $0x4b2e0,-0x2c(%ebp)
    99ff:	83 ec 0c             	sub    $0xc,%esp
    9a02:	68 b0 c0 00 00       	push   $0xc0b0
    9a07:	e8 3e d2 ff ff       	call   6c4a <syslog>
    9a0c:	83 c4 10             	add    $0x10,%esp
    9a0f:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    9a16:	e9 7a 01 00 00       	jmp    9b95 <dump_fd_graph+0x2e3>
    9a1b:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
    9a22:	eb 15                	jmp    9a39 <dump_fd_graph+0x187>
    9a24:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    9a27:	8b 55 d8             	mov    -0x28(%ebp),%edx
    9a2a:	83 c2 24             	add    $0x24,%edx
    9a2d:	8b 44 90 04          	mov    0x4(%eax,%edx,4),%eax
    9a31:	85 c0                	test   %eax,%eax
    9a33:	75 0c                	jne    9a41 <dump_fd_graph+0x18f>
    9a35:	83 45 d8 01          	addl   $0x1,-0x28(%ebp)
    9a39:	83 7d d8 3f          	cmpl   $0x3f,-0x28(%ebp)
    9a3d:	7e e5                	jle    9a24 <dump_fd_graph+0x172>
    9a3f:	eb 01                	jmp    9a42 <dump_fd_graph+0x190>
    9a41:	90                   	nop
    9a42:	83 7d d8 40          	cmpl   $0x40,-0x28(%ebp)
    9a46:	0f 84 3d 01 00 00    	je     9b89 <dump_fd_graph+0x2d7>
    9a4c:	83 ec 08             	sub    $0x8,%esp
    9a4f:	ff 75 e4             	pushl  -0x1c(%ebp)
    9a52:	68 c8 c0 00 00       	push   $0xc0c8
    9a57:	e8 ee d1 ff ff       	call   6c4a <syslog>
    9a5c:	83 c4 10             	add    $0x10,%esp
    9a5f:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    9a62:	8b 40 78             	mov    0x78(%eax),%eax
    9a65:	8b 94 85 ec fa ff ff 	mov    -0x514(%ebp,%eax,4),%edx
    9a6c:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    9a6f:	8b 40 78             	mov    0x78(%eax),%eax
    9a72:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
    9a75:	83 c1 68             	add    $0x68,%ecx
    9a78:	83 ec 0c             	sub    $0xc,%esp
    9a7b:	52                   	push   %edx
    9a7c:	50                   	push   %eax
    9a7d:	ff 75 e4             	pushl  -0x1c(%ebp)
    9a80:	51                   	push   %ecx
    9a81:	68 d8 c0 00 00       	push   $0xc0d8
    9a86:	e8 bf d1 ff ff       	call   6c4a <syslog>
    9a8b:	83 c4 20             	add    $0x20,%esp
    9a8e:	c7 45 d0 03 00 00 00 	movl   $0x3,-0x30(%ebp)
    9a95:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
    9a9c:	e9 ac 00 00 00       	jmp    9b4d <dump_fd_graph+0x29b>
    9aa1:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    9aa4:	8b 55 d8             	mov    -0x28(%ebp),%edx
    9aa7:	83 c2 24             	add    $0x24,%edx
    9aaa:	8b 44 90 04          	mov    0x4(%eax,%edx,4),%eax
    9aae:	85 c0                	test   %eax,%eax
    9ab0:	0f 84 92 00 00 00    	je     9b48 <dump_fd_graph+0x296>
    9ab6:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    9ab9:	8b 55 d8             	mov    -0x28(%ebp),%edx
    9abc:	83 c2 24             	add    $0x24,%edx
    9abf:	8b 44 90 04          	mov    0x4(%eax,%edx,4),%eax
    9ac3:	2d 20 a5 04 00       	sub    $0x4a520,%eax
    9ac8:	c1 f8 02             	sar    $0x2,%eax
    9acb:	69 c0 ab aa aa aa    	imul   $0xaaaaaaab,%eax,%eax
    9ad1:	89 45 b4             	mov    %eax,-0x4c(%ebp)
    9ad4:	ff 75 b4             	pushl  -0x4c(%ebp)
    9ad7:	ff 75 d8             	pushl  -0x28(%ebp)
    9ada:	ff 75 d0             	pushl  -0x30(%ebp)
    9add:	68 05 c1 00 00       	push   $0xc105
    9ae2:	e8 63 d1 ff ff       	call   6c4a <syslog>
    9ae7:	83 c4 10             	add    $0x10,%esp
    9aea:	8b 55 e0             	mov    -0x20(%ebp),%edx
    9aed:	89 d0                	mov    %edx,%eax
    9aef:	01 c0                	add    %eax,%eax
    9af1:	01 d0                	add    %edx,%eax
    9af3:	c1 e0 02             	shl    $0x2,%eax
    9af6:	8d 75 e8             	lea    -0x18(%ebp),%esi
    9af9:	01 f0                	add    %esi,%eax
    9afb:	8d 90 04 ef ff ff    	lea    -0x10fc(%eax),%edx
    9b01:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    9b04:	89 02                	mov    %eax,(%edx)
    9b06:	8b 55 e0             	mov    -0x20(%ebp),%edx
    9b09:	89 d0                	mov    %edx,%eax
    9b0b:	01 c0                	add    %eax,%eax
    9b0d:	01 d0                	add    %edx,%eax
    9b0f:	c1 e0 02             	shl    $0x2,%eax
    9b12:	8d 7d e8             	lea    -0x18(%ebp),%edi
    9b15:	01 f8                	add    %edi,%eax
    9b17:	8d 90 08 ef ff ff    	lea    -0x10f8(%eax),%edx
    9b1d:	8b 45 d0             	mov    -0x30(%ebp),%eax
    9b20:	89 02                	mov    %eax,(%edx)
    9b22:	8b 55 e0             	mov    -0x20(%ebp),%edx
    9b25:	89 d0                	mov    %edx,%eax
    9b27:	01 c0                	add    %eax,%eax
    9b29:	01 d0                	add    %edx,%eax
    9b2b:	c1 e0 02             	shl    $0x2,%eax
    9b2e:	8d 75 e8             	lea    -0x18(%ebp),%esi
    9b31:	01 f0                	add    %esi,%eax
    9b33:	8d 90 0c ef ff ff    	lea    -0x10f4(%eax),%edx
    9b39:	8b 45 b4             	mov    -0x4c(%ebp),%eax
    9b3c:	89 02                	mov    %eax,(%edx)
    9b3e:	83 45 d0 01          	addl   $0x1,-0x30(%ebp)
    9b42:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
    9b46:	eb 01                	jmp    9b49 <dump_fd_graph+0x297>
    9b48:	90                   	nop
    9b49:	83 45 d8 01          	addl   $0x1,-0x28(%ebp)
    9b4d:	83 7d d8 3f          	cmpl   $0x3f,-0x28(%ebp)
    9b51:	0f 8e 4a ff ff ff    	jle    9aa1 <dump_fd_graph+0x1ef>
    9b57:	83 ec 0c             	sub    $0xc,%esp
    9b5a:	68 1a c1 00 00       	push   $0xc11a
    9b5f:	e8 e6 d0 ff ff       	call   6c4a <syslog>
    9b64:	83 c4 10             	add    $0x10,%esp
    9b67:	83 ec 0c             	sub    $0xc,%esp
    9b6a:	68 1e c1 00 00       	push   $0xc11e
    9b6f:	e8 d6 d0 ff ff       	call   6c4a <syslog>
    9b74:	83 c4 10             	add    $0x10,%esp
    9b77:	83 ec 0c             	sub    $0xc,%esp
    9b7a:	68 33 c1 00 00       	push   $0xc133
    9b7f:	e8 c6 d0 ff ff       	call   6c4a <syslog>
    9b84:	83 c4 10             	add    $0x10,%esp
    9b87:	eb 01                	jmp    9b8a <dump_fd_graph+0x2d8>
    9b89:	90                   	nop
    9b8a:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    9b8e:	81 45 d4 94 01 00 00 	addl   $0x194,-0x2c(%ebp)
    9b95:	83 7d e4 06          	cmpl   $0x6,-0x1c(%ebp)
    9b99:	0f 8e 7c fe ff ff    	jle    9a1b <dump_fd_graph+0x169>
    9b9f:	83 ec 0c             	sub    $0xc,%esp
    9ba2:	68 39 c1 00 00       	push   $0xc139
    9ba7:	e8 9e d0 ff ff       	call   6c4a <syslog>
    9bac:	83 c4 10             	add    $0x10,%esp
    9baf:	83 ec 0c             	sub    $0xc,%esp
    9bb2:	68 4d c1 00 00       	push   $0xc14d
    9bb7:	e8 8e d0 ff ff       	call   6c4a <syslog>
    9bbc:	83 c4 10             	add    $0x10,%esp
    9bbf:	83 ec 0c             	sub    $0xc,%esp
    9bc2:	68 51 c1 00 00       	push   $0xc151
    9bc7:	e8 7e d0 ff ff       	call   6c4a <syslog>
    9bcc:	83 c4 10             	add    $0x10,%esp
    9bcf:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    9bd6:	e9 e5 00 00 00       	jmp    9cc0 <dump_fd_graph+0x40e>
    9bdb:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    9bde:	89 d0                	mov    %edx,%eax
    9be0:	01 c0                	add    %eax,%eax
    9be2:	01 d0                	add    %edx,%eax
    9be4:	c1 e0 02             	shl    $0x2,%eax
    9be7:	05 28 a5 04 00       	add    $0x4a528,%eax
    9bec:	8b 00                	mov    (%eax),%eax
    9bee:	85 c0                	test   %eax,%eax
    9bf0:	0f 84 c5 00 00 00    	je     9cbb <dump_fd_graph+0x409>
    9bf6:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    9bf9:	89 d0                	mov    %edx,%eax
    9bfb:	01 c0                	add    %eax,%eax
    9bfd:	01 d0                	add    %edx,%eax
    9bff:	c1 e0 02             	shl    $0x2,%eax
    9c02:	05 28 a5 04 00       	add    $0x4a528,%eax
    9c07:	8b 00                	mov    (%eax),%eax
    9c09:	2d a0 08 01 00       	sub    $0x108a0,%eax
    9c0e:	c1 f8 02             	sar    $0x2,%eax
    9c11:	69 c0 a3 8b 2e ba    	imul   $0xba2e8ba3,%eax,%eax
    9c17:	89 45 b0             	mov    %eax,-0x50(%ebp)
    9c1a:	83 ec 08             	sub    $0x8,%esp
    9c1d:	ff 75 e4             	pushl  -0x1c(%ebp)
    9c20:	68 69 c1 00 00       	push   $0xc169
    9c25:	e8 20 d0 ff ff       	call   6c4a <syslog>
    9c2a:	83 c4 10             	add    $0x10,%esp
    9c2d:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    9c30:	89 d0                	mov    %edx,%eax
    9c32:	01 c0                	add    %eax,%eax
    9c34:	01 d0                	add    %edx,%eax
    9c36:	c1 e0 02             	shl    $0x2,%eax
    9c39:	05 24 a5 04 00       	add    $0x4a524,%eax
    9c3e:	8b 08                	mov    (%eax),%ecx
    9c40:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    9c43:	89 d0                	mov    %edx,%eax
    9c45:	01 c0                	add    %eax,%eax
    9c47:	01 d0                	add    %edx,%eax
    9c49:	c1 e0 02             	shl    $0x2,%eax
    9c4c:	05 20 a5 04 00       	add    $0x4a520,%eax
    9c51:	8b 00                	mov    (%eax),%eax
    9c53:	83 ec 0c             	sub    $0xc,%esp
    9c56:	ff 75 b0             	pushl  -0x50(%ebp)
    9c59:	51                   	push   %ecx
    9c5a:	50                   	push   %eax
    9c5b:	ff 75 e4             	pushl  -0x1c(%ebp)
    9c5e:	68 7c c1 00 00       	push   $0xc17c
    9c63:	e8 e2 cf ff ff       	call   6c4a <syslog>
    9c68:	83 c4 20             	add    $0x20,%esp
    9c6b:	8b 45 dc             	mov    -0x24(%ebp),%eax
    9c6e:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    9c71:	89 94 c5 ec e6 ff ff 	mov    %edx,-0x1914(%ebp,%eax,8)
    9c78:	8b 45 dc             	mov    -0x24(%ebp),%eax
    9c7b:	8b 55 b0             	mov    -0x50(%ebp),%edx
    9c7e:	89 94 c5 f0 e6 ff ff 	mov    %edx,-0x1910(%ebp,%eax,8)
    9c85:	83 45 dc 01          	addl   $0x1,-0x24(%ebp)
    9c89:	83 ec 0c             	sub    $0xc,%esp
    9c8c:	68 1a c1 00 00       	push   $0xc11a
    9c91:	e8 b4 cf ff ff       	call   6c4a <syslog>
    9c96:	83 c4 10             	add    $0x10,%esp
    9c99:	83 ec 0c             	sub    $0xc,%esp
    9c9c:	68 1e c1 00 00       	push   $0xc11e
    9ca1:	e8 a4 cf ff ff       	call   6c4a <syslog>
    9ca6:	83 c4 10             	add    $0x10,%esp
    9ca9:	83 ec 0c             	sub    $0xc,%esp
    9cac:	68 33 c1 00 00       	push   $0xc133
    9cb1:	e8 94 cf ff ff       	call   6c4a <syslog>
    9cb6:	83 c4 10             	add    $0x10,%esp
    9cb9:	eb 01                	jmp    9cbc <dump_fd_graph+0x40a>
    9cbb:	90                   	nop
    9cbc:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    9cc0:	83 7d e4 3f          	cmpl   $0x3f,-0x1c(%ebp)
    9cc4:	0f 8e 11 ff ff ff    	jle    9bdb <dump_fd_graph+0x329>
    9cca:	83 ec 0c             	sub    $0xc,%esp
    9ccd:	68 c8 c1 00 00       	push   $0xc1c8
    9cd2:	e8 73 cf ff ff       	call   6c4a <syslog>
    9cd7:	83 c4 10             	add    $0x10,%esp
    9cda:	83 ec 0c             	sub    $0xc,%esp
    9cdd:	68 4d c1 00 00       	push   $0xc14d
    9ce2:	e8 63 cf ff ff       	call   6c4a <syslog>
    9ce7:	83 c4 10             	add    $0x10,%esp
    9cea:	83 ec 0c             	sub    $0xc,%esp
    9ced:	68 e0 c1 00 00       	push   $0xc1e0
    9cf2:	e8 53 cf ff ff       	call   6c4a <syslog>
    9cf7:	83 c4 10             	add    $0x10,%esp
    9cfa:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    9d01:	e9 f5 00 00 00       	jmp    9dfb <dump_fd_graph+0x549>
    9d06:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    9d09:	6b c0 2c             	imul   $0x2c,%eax,%eax
    9d0c:	05 c4 08 01 00       	add    $0x108c4,%eax
    9d11:	8b 00                	mov    (%eax),%eax
    9d13:	85 c0                	test   %eax,%eax
    9d15:	0f 84 db 00 00 00    	je     9df6 <dump_fd_graph+0x544>
    9d1b:	83 ec 08             	sub    $0x8,%esp
    9d1e:	ff 75 e4             	pushl  -0x1c(%ebp)
    9d21:	68 f8 c1 00 00       	push   $0xc1f8
    9d26:	e8 1f cf ff ff       	call   6c4a <syslog>
    9d2b:	83 c4 10             	add    $0x10,%esp
    9d2e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    9d31:	6b c0 2c             	imul   $0x2c,%eax,%eax
    9d34:	05 c8 08 01 00       	add    $0x108c8,%eax
    9d39:	8b 08                	mov    (%eax),%ecx
    9d3b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    9d3e:	6b c0 2c             	imul   $0x2c,%eax,%eax
    9d41:	05 c4 08 01 00       	add    $0x108c4,%eax
    9d46:	8b 00                	mov    (%eax),%eax
    9d48:	89 85 e4 e6 ff ff    	mov    %eax,-0x191c(%ebp)
    9d4e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    9d51:	6b c0 2c             	imul   $0x2c,%eax,%eax
    9d54:	05 c0 08 01 00       	add    $0x108c0,%eax
    9d59:	8b 38                	mov    (%eax),%edi
    9d5b:	89 bd e0 e6 ff ff    	mov    %edi,-0x1920(%ebp)
    9d61:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    9d64:	6b c0 2c             	imul   $0x2c,%eax,%eax
    9d67:	05 ac 08 01 00       	add    $0x108ac,%eax
    9d6c:	8b 38                	mov    (%eax),%edi
    9d6e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    9d71:	6b c0 2c             	imul   $0x2c,%eax,%eax
    9d74:	05 a8 08 01 00       	add    $0x108a8,%eax
    9d79:	8b 30                	mov    (%eax),%esi
    9d7b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    9d7e:	6b c0 2c             	imul   $0x2c,%eax,%eax
    9d81:	05 a4 08 01 00       	add    $0x108a4,%eax
    9d86:	8b 18                	mov    (%eax),%ebx
    9d88:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    9d8b:	6b c0 2c             	imul   $0x2c,%eax,%eax
    9d8e:	05 a0 08 01 00       	add    $0x108a0,%eax
    9d93:	8b 10                	mov    (%eax),%edx
    9d95:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    9d98:	6b c0 2c             	imul   $0x2c,%eax,%eax
    9d9b:	05 c8 08 01 00       	add    $0x108c8,%eax
    9da0:	8b 00                	mov    (%eax),%eax
    9da2:	83 ec 0c             	sub    $0xc,%esp
    9da5:	51                   	push   %ecx
    9da6:	ff b5 e4 e6 ff ff    	pushl  -0x191c(%ebp)
    9dac:	ff b5 e0 e6 ff ff    	pushl  -0x1920(%ebp)
    9db2:	57                   	push   %edi
    9db3:	56                   	push   %esi
    9db4:	53                   	push   %ebx
    9db5:	52                   	push   %edx
    9db6:	50                   	push   %eax
    9db7:	68 08 c2 00 00       	push   $0xc208
    9dbc:	e8 89 ce ff ff       	call   6c4a <syslog>
    9dc1:	83 c4 30             	add    $0x30,%esp
    9dc4:	83 ec 0c             	sub    $0xc,%esp
    9dc7:	68 1a c1 00 00       	push   $0xc11a
    9dcc:	e8 79 ce ff ff       	call   6c4a <syslog>
    9dd1:	83 c4 10             	add    $0x10,%esp
    9dd4:	83 ec 0c             	sub    $0xc,%esp
    9dd7:	68 1e c1 00 00       	push   $0xc11e
    9ddc:	e8 69 ce ff ff       	call   6c4a <syslog>
    9de1:	83 c4 10             	add    $0x10,%esp
    9de4:	83 ec 0c             	sub    $0xc,%esp
    9de7:	68 33 c1 00 00       	push   $0xc133
    9dec:	e8 59 ce ff ff       	call   6c4a <syslog>
    9df1:	83 c4 10             	add    $0x10,%esp
    9df4:	eb 01                	jmp    9df7 <dump_fd_graph+0x545>
    9df6:	90                   	nop
    9df7:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    9dfb:	83 7d e4 3f          	cmpl   $0x3f,-0x1c(%ebp)
    9dff:	0f 8e 01 ff ff ff    	jle    9d06 <dump_fd_graph+0x454>
    9e05:	83 ec 0c             	sub    $0xc,%esp
    9e08:	68 9b c2 00 00       	push   $0xc29b
    9e0d:	e8 38 ce ff ff       	call   6c4a <syslog>
    9e12:	83 c4 10             	add    $0x10,%esp
    9e15:	83 ec 0c             	sub    $0xc,%esp
    9e18:	68 4d c1 00 00       	push   $0xc14d
    9e1d:	e8 28 ce ff ff       	call   6c4a <syslog>
    9e22:	83 c4 10             	add    $0x10,%esp
    9e25:	83 ec 0c             	sub    $0xc,%esp
    9e28:	68 b0 c2 00 00       	push   $0xc2b0
    9e2d:	e8 18 ce ff ff       	call   6c4a <syslog>
    9e32:	83 c4 10             	add    $0x10,%esp
    9e35:	83 ec 0c             	sub    $0xc,%esp
    9e38:	68 c8 c2 00 00       	push   $0xc2c8
    9e3d:	e8 08 ce ff ff       	call   6c4a <syslog>
    9e42:	83 c4 10             	add    $0x10,%esp
    9e45:	83 ec 0c             	sub    $0xc,%esp
    9e48:	68 da c2 00 00       	push   $0xc2da
    9e4d:	e8 f8 cd ff ff       	call   6c4a <syslog>
    9e52:	83 c4 10             	add    $0x10,%esp
    9e55:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%ebp)
    9e5c:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%ebp)
    9e63:	a1 20 a8 04 00       	mov    0x4a820,%eax
    9e68:	8b 40 20             	mov    0x20(%eax),%eax
    9e6b:	83 ec 0c             	sub    $0xc,%esp
    9e6e:	50                   	push   %eax
    9e6f:	e8 d0 d8 ff ff       	call   7744 <get_super_block>
    9e74:	83 c4 10             	add    $0x10,%esp
    9e77:	89 45 ac             	mov    %eax,-0x54(%ebp)
    9e7a:	8b 45 ac             	mov    -0x54(%ebp),%eax
    9e7d:	8b 40 0c             	mov    0xc(%eax),%eax
    9e80:	83 c0 02             	add    $0x2,%eax
    9e83:	89 45 a8             	mov    %eax,-0x58(%ebp)
    9e86:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    9e8d:	e9 83 01 00 00       	jmp    a015 <dump_fd_graph+0x763>
    9e92:	8b 1d 9c f7 00 00    	mov    0xf79c,%ebx
    9e98:	8b 55 a8             	mov    -0x58(%ebp),%edx
    9e9b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    9e9e:	01 d0                	add    %edx,%eax
    9ea0:	c1 e0 09             	shl    $0x9,%eax
    9ea3:	99                   	cltd   
    9ea4:	8b 0d 20 a8 04 00    	mov    0x4a820,%ecx
    9eaa:	8b 49 20             	mov    0x20(%ecx),%ecx
    9ead:	83 ec 04             	sub    $0x4,%esp
    9eb0:	53                   	push   %ebx
    9eb1:	6a 03                	push   $0x3
    9eb3:	68 00 02 00 00       	push   $0x200
    9eb8:	52                   	push   %edx
    9eb9:	50                   	push   %eax
    9eba:	51                   	push   %ecx
    9ebb:	68 eb 03 00 00       	push   $0x3eb
    9ec0:	e8 77 d6 ff ff       	call   753c <rw_sector>
    9ec5:	83 c4 20             	add    $0x20,%esp
    9ec8:	a1 9c f7 00 00       	mov    0xf79c,%eax
    9ecd:	83 ec 04             	sub    $0x4,%esp
    9ed0:	68 00 02 00 00       	push   $0x200
    9ed5:	50                   	push   %eax
    9ed6:	68 60 06 01 00       	push   $0x10660
    9edb:	e8 e0 c9 ff ff       	call   68c0 <memcpy>
    9ee0:	83 c4 10             	add    $0x10,%esp
    9ee3:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    9eea:	e9 15 01 00 00       	jmp    a004 <dump_fd_graph+0x752>
    9eef:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
    9ef6:	e9 fb 00 00 00       	jmp    9ff6 <dump_fd_graph+0x744>
    9efb:	83 7d cc 00          	cmpl   $0x0,-0x34(%ebp)
    9eff:	75 4a                	jne    9f4b <dump_fd_graph+0x699>
    9f01:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    9f04:	05 60 06 01 00       	add    $0x10660,%eax
    9f09:	0f b6 00             	movzbl (%eax),%eax
    9f0c:	0f be d0             	movsbl %al,%edx
    9f0f:	8b 45 d8             	mov    -0x28(%ebp),%eax
    9f12:	89 c1                	mov    %eax,%ecx
    9f14:	d3 fa                	sar    %cl,%edx
    9f16:	89 d0                	mov    %edx,%eax
    9f18:	83 e0 01             	and    $0x1,%eax
    9f1b:	85 c0                	test   %eax,%eax
    9f1d:	0f 84 cb 00 00 00    	je     9fee <dump_fd_graph+0x73c>
    9f23:	c7 45 cc 01 00 00 00 	movl   $0x1,-0x34(%ebp)
    9f2a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    9f2d:	c1 e0 09             	shl    $0x9,%eax
    9f30:	89 c2                	mov    %eax,%edx
    9f32:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    9f35:	01 d0                	add    %edx,%eax
    9f37:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    9f3e:	8b 45 d8             	mov    -0x28(%ebp),%eax
    9f41:	01 d0                	add    %edx,%eax
    9f43:	89 45 c8             	mov    %eax,-0x38(%ebp)
    9f46:	e9 a7 00 00 00       	jmp    9ff2 <dump_fd_graph+0x740>
    9f4b:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    9f4e:	05 60 06 01 00       	add    $0x10660,%eax
    9f53:	0f b6 00             	movzbl (%eax),%eax
    9f56:	0f be d0             	movsbl %al,%edx
    9f59:	8b 45 d8             	mov    -0x28(%ebp),%eax
    9f5c:	89 c1                	mov    %eax,%ecx
    9f5e:	d3 fa                	sar    %cl,%edx
    9f60:	89 d0                	mov    %edx,%eax
    9f62:	83 e0 01             	and    $0x1,%eax
    9f65:	85 c0                	test   %eax,%eax
    9f67:	0f 85 84 00 00 00    	jne    9ff1 <dump_fd_graph+0x73f>
    9f6d:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%ebp)
    9f74:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    9f77:	c1 e0 09             	shl    $0x9,%eax
    9f7a:	89 c2                	mov    %eax,%edx
    9f7c:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    9f7f:	01 d0                	add    %edx,%eax
    9f81:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    9f88:	8b 45 d8             	mov    -0x28(%ebp),%eax
    9f8b:	01 d0                	add    %edx,%eax
    9f8d:	83 e8 01             	sub    $0x1,%eax
    9f90:	89 45 a4             	mov    %eax,-0x5c(%ebp)
    9f93:	83 ec 08             	sub    $0x8,%esp
    9f96:	ff 75 c8             	pushl  -0x38(%ebp)
    9f99:	68 ef c2 00 00       	push   $0xc2ef
    9f9e:	e8 a7 cc ff ff       	call   6c4a <syslog>
    9fa3:	83 c4 10             	add    $0x10,%esp
    9fa6:	83 ec 04             	sub    $0x4,%esp
    9fa9:	ff 75 a4             	pushl  -0x5c(%ebp)
    9fac:	ff 75 c8             	pushl  -0x38(%ebp)
    9faf:	68 01 c3 00 00       	push   $0xc301
    9fb4:	e8 91 cc ff ff       	call   6c4a <syslog>
    9fb9:	83 c4 10             	add    $0x10,%esp
    9fbc:	83 ec 0c             	sub    $0xc,%esp
    9fbf:	68 1a c1 00 00       	push   $0xc11a
    9fc4:	e8 81 cc ff ff       	call   6c4a <syslog>
    9fc9:	83 c4 10             	add    $0x10,%esp
    9fcc:	83 ec 0c             	sub    $0xc,%esp
    9fcf:	68 1e c1 00 00       	push   $0xc11e
    9fd4:	e8 71 cc ff ff       	call   6c4a <syslog>
    9fd9:	83 c4 10             	add    $0x10,%esp
    9fdc:	83 ec 0c             	sub    $0xc,%esp
    9fdf:	68 33 c1 00 00       	push   $0xc133
    9fe4:	e8 61 cc ff ff       	call   6c4a <syslog>
    9fe9:	83 c4 10             	add    $0x10,%esp
    9fec:	eb 04                	jmp    9ff2 <dump_fd_graph+0x740>
    9fee:	90                   	nop
    9fef:	eb 01                	jmp    9ff2 <dump_fd_graph+0x740>
    9ff1:	90                   	nop
    9ff2:	83 45 d8 01          	addl   $0x1,-0x28(%ebp)
    9ff6:	83 7d d8 07          	cmpl   $0x7,-0x28(%ebp)
    9ffa:	0f 8e fb fe ff ff    	jle    9efb <dump_fd_graph+0x649>
    a000:	83 45 c4 01          	addl   $0x1,-0x3c(%ebp)
    a004:	81 7d c4 ff 01 00 00 	cmpl   $0x1ff,-0x3c(%ebp)
    a00b:	0f 8e de fe ff ff    	jle    9eef <dump_fd_graph+0x63d>
    a011:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    a015:	8b 45 ac             	mov    -0x54(%ebp),%eax
    a018:	8b 50 10             	mov    0x10(%eax),%edx
    a01b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a01e:	39 c2                	cmp    %eax,%edx
    a020:	0f 87 6c fe ff ff    	ja     9e92 <dump_fd_graph+0x5e0>
    a026:	8b 45 ac             	mov    -0x54(%ebp),%eax
    a029:	8b 40 08             	mov    0x8(%eax),%eax
    a02c:	83 ec 08             	sub    $0x8,%esp
    a02f:	50                   	push   %eax
    a030:	68 20 c3 00 00       	push   $0xc320
    a035:	e8 10 cc ff ff       	call   6c4a <syslog>
    a03a:	83 c4 10             	add    $0x10,%esp
    a03d:	83 ec 0c             	sub    $0xc,%esp
    a040:	68 4d c1 00 00       	push   $0xc14d
    a045:	e8 00 cc ff ff       	call   6c4a <syslog>
    a04a:	83 c4 10             	add    $0x10,%esp
    a04d:	83 ec 0c             	sub    $0xc,%esp
    a050:	68 49 c3 00 00       	push   $0xc349
    a055:	e8 f0 cb ff ff       	call   6c4a <syslog>
    a05a:	83 c4 10             	add    $0x10,%esp
    a05d:	83 ec 0c             	sub    $0xc,%esp
    a060:	68 c8 c2 00 00       	push   $0xc2c8
    a065:	e8 e0 cb ff ff       	call   6c4a <syslog>
    a06a:	83 c4 10             	add    $0x10,%esp
    a06d:	83 ec 0c             	sub    $0xc,%esp
    a070:	68 da c2 00 00       	push   $0xc2da
    a075:	e8 d0 cb ff ff       	call   6c4a <syslog>
    a07a:	83 c4 10             	add    $0x10,%esp
    a07d:	83 ec 0c             	sub    $0xc,%esp
    a080:	68 61 c3 00 00       	push   $0xc361
    a085:	e8 c0 cb ff ff       	call   6c4a <syslog>
    a08a:	83 c4 10             	add    $0x10,%esp
    a08d:	83 ec 0c             	sub    $0xc,%esp
    a090:	68 6d c3 00 00       	push   $0xc36d
    a095:	e8 b0 cb ff ff       	call   6c4a <syslog>
    a09a:	83 c4 10             	add    $0x10,%esp
    a09d:	c7 45 a0 02 00 00 00 	movl   $0x2,-0x60(%ebp)
    a0a4:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    a0ab:	e9 cb 00 00 00       	jmp    a17b <dump_fd_graph+0x8c9>
    a0b0:	8b 1d 9c f7 00 00    	mov    0xf79c,%ebx
    a0b6:	8b 55 a0             	mov    -0x60(%ebp),%edx
    a0b9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a0bc:	01 d0                	add    %edx,%eax
    a0be:	c1 e0 09             	shl    $0x9,%eax
    a0c1:	99                   	cltd   
    a0c2:	8b 0d 20 a8 04 00    	mov    0x4a820,%ecx
    a0c8:	8b 49 20             	mov    0x20(%ecx),%ecx
    a0cb:	83 ec 04             	sub    $0x4,%esp
    a0ce:	53                   	push   %ebx
    a0cf:	6a 03                	push   $0x3
    a0d1:	68 00 02 00 00       	push   $0x200
    a0d6:	52                   	push   %edx
    a0d7:	50                   	push   %eax
    a0d8:	51                   	push   %ecx
    a0d9:	68 eb 03 00 00       	push   $0x3eb
    a0de:	e8 59 d4 ff ff       	call   753c <rw_sector>
    a0e3:	83 c4 20             	add    $0x20,%esp
    a0e6:	a1 9c f7 00 00       	mov    0xf79c,%eax
    a0eb:	83 ec 04             	sub    $0x4,%esp
    a0ee:	68 00 02 00 00       	push   $0x200
    a0f3:	50                   	push   %eax
    a0f4:	68 60 06 01 00       	push   $0x10660
    a0f9:	e8 c2 c7 ff ff       	call   68c0 <memcpy>
    a0fe:	83 c4 10             	add    $0x10,%esp
    a101:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    a108:	eb 64                	jmp    a16e <dump_fd_graph+0x8bc>
    a10a:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
    a111:	eb 51                	jmp    a164 <dump_fd_graph+0x8b2>
    a113:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    a116:	05 60 06 01 00       	add    $0x10660,%eax
    a11b:	0f b6 00             	movzbl (%eax),%eax
    a11e:	0f be d0             	movsbl %al,%edx
    a121:	8b 45 d8             	mov    -0x28(%ebp),%eax
    a124:	89 c1                	mov    %eax,%ecx
    a126:	d3 fa                	sar    %cl,%edx
    a128:	89 d0                	mov    %edx,%eax
    a12a:	83 e0 01             	and    $0x1,%eax
    a12d:	85 c0                	test   %eax,%eax
    a12f:	74 2f                	je     a160 <dump_fd_graph+0x8ae>
    a131:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a134:	c1 e0 09             	shl    $0x9,%eax
    a137:	89 c2                	mov    %eax,%edx
    a139:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    a13c:	01 d0                	add    %edx,%eax
    a13e:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    a145:	8b 45 d8             	mov    -0x28(%ebp),%eax
    a148:	01 d0                	add    %edx,%eax
    a14a:	89 45 9c             	mov    %eax,-0x64(%ebp)
    a14d:	83 ec 08             	sub    $0x8,%esp
    a150:	ff 75 9c             	pushl  -0x64(%ebp)
    a153:	68 82 c3 00 00       	push   $0xc382
    a158:	e8 ed ca ff ff       	call   6c4a <syslog>
    a15d:	83 c4 10             	add    $0x10,%esp
    a160:	83 45 d8 01          	addl   $0x1,-0x28(%ebp)
    a164:	83 7d d8 07          	cmpl   $0x7,-0x28(%ebp)
    a168:	7e a9                	jle    a113 <dump_fd_graph+0x861>
    a16a:	83 45 c4 01          	addl   $0x1,-0x3c(%ebp)
    a16e:	81 7d c4 ff 01 00 00 	cmpl   $0x1ff,-0x3c(%ebp)
    a175:	7e 93                	jle    a10a <dump_fd_graph+0x858>
    a177:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    a17b:	8b 45 ac             	mov    -0x54(%ebp),%eax
    a17e:	8b 50 0c             	mov    0xc(%eax),%edx
    a181:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a184:	39 c2                	cmp    %eax,%edx
    a186:	0f 87 24 ff ff ff    	ja     a0b0 <dump_fd_graph+0x7fe>
    a18c:	83 ec 0c             	sub    $0xc,%esp
    a18f:	68 1a c1 00 00       	push   $0xc11a
    a194:	e8 b1 ca ff ff       	call   6c4a <syslog>
    a199:	83 c4 10             	add    $0x10,%esp
    a19c:	83 ec 0c             	sub    $0xc,%esp
    a19f:	68 1e c1 00 00       	push   $0xc11e
    a1a4:	e8 a1 ca ff ff       	call   6c4a <syslog>
    a1a9:	83 c4 10             	add    $0x10,%esp
    a1ac:	83 ec 0c             	sub    $0xc,%esp
    a1af:	68 33 c1 00 00       	push   $0xc133
    a1b4:	e8 91 ca ff ff       	call   6c4a <syslog>
    a1b9:	83 c4 10             	add    $0x10,%esp
    a1bc:	83 ec 0c             	sub    $0xc,%esp
    a1bf:	68 89 c3 00 00       	push   $0xc389
    a1c4:	e8 81 ca ff ff       	call   6c4a <syslog>
    a1c9:	83 c4 10             	add    $0x10,%esp
    a1cc:	83 ec 0c             	sub    $0xc,%esp
    a1cf:	68 4d c1 00 00       	push   $0xc14d
    a1d4:	e8 71 ca ff ff       	call   6c4a <syslog>
    a1d9:	83 c4 10             	add    $0x10,%esp
    a1dc:	83 ec 0c             	sub    $0xc,%esp
    a1df:	68 a1 c3 00 00       	push   $0xc3a1
    a1e4:	e8 61 ca ff ff       	call   6c4a <syslog>
    a1e9:	83 c4 10             	add    $0x10,%esp
    a1ec:	83 ec 0c             	sub    $0xc,%esp
    a1ef:	68 c8 c2 00 00       	push   $0xc2c8
    a1f4:	e8 51 ca ff ff       	call   6c4a <syslog>
    a1f9:	83 c4 10             	add    $0x10,%esp
    a1fc:	83 ec 0c             	sub    $0xc,%esp
    a1ff:	68 da c2 00 00       	push   $0xc2da
    a204:	e8 41 ca ff ff       	call   6c4a <syslog>
    a209:	83 c4 10             	add    $0x10,%esp
    a20c:	a1 20 a8 04 00       	mov    0x4a820,%eax
    a211:	8b 40 20             	mov    0x20(%eax),%eax
    a214:	83 ec 0c             	sub    $0xc,%esp
    a217:	50                   	push   %eax
    a218:	e8 27 d5 ff ff       	call   7744 <get_super_block>
    a21d:	83 c4 10             	add    $0x10,%esp
    a220:	89 45 ac             	mov    %eax,-0x54(%ebp)
    a223:	8b 45 ac             	mov    -0x54(%ebp),%eax
    a226:	8b 50 0c             	mov    0xc(%eax),%edx
    a229:	8b 45 ac             	mov    -0x54(%ebp),%eax
    a22c:	8b 40 10             	mov    0x10(%eax),%eax
    a22f:	01 d0                	add    %edx,%eax
    a231:	83 c0 02             	add    $0x2,%eax
    a234:	89 45 98             	mov    %eax,-0x68(%ebp)
    a237:	8b 1d 9c f7 00 00    	mov    0xf79c,%ebx
    a23d:	8b 45 98             	mov    -0x68(%ebp),%eax
    a240:	c1 e0 09             	shl    $0x9,%eax
    a243:	99                   	cltd   
    a244:	8b 0d 20 a8 04 00    	mov    0x4a820,%ecx
    a24a:	8b 49 20             	mov    0x20(%ecx),%ecx
    a24d:	83 ec 04             	sub    $0x4,%esp
    a250:	53                   	push   %ebx
    a251:	6a 03                	push   $0x3
    a253:	68 00 02 00 00       	push   $0x200
    a258:	52                   	push   %edx
    a259:	50                   	push   %eax
    a25a:	51                   	push   %ecx
    a25b:	68 eb 03 00 00       	push   $0x3eb
    a260:	e8 d7 d2 ff ff       	call   753c <rw_sector>
    a265:	83 c4 20             	add    $0x20,%esp
    a268:	a1 9c f7 00 00       	mov    0xf79c,%eax
    a26d:	83 ec 04             	sub    $0x4,%esp
    a270:	68 00 02 00 00       	push   $0x200
    a275:	50                   	push   %eax
    a276:	68 60 06 01 00       	push   $0x10660
    a27b:	e8 40 c6 ff ff       	call   68c0 <memcpy>
    a280:	83 c4 10             	add    $0x10,%esp
    a283:	c7 45 c0 60 06 01 00 	movl   $0x10660,-0x40(%ebp)
    a28a:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    a291:	e9 7e 01 00 00       	jmp    a414 <dump_fd_graph+0xb62>
    a296:	8b 45 c0             	mov    -0x40(%ebp),%eax
    a299:	89 45 94             	mov    %eax,-0x6c(%ebp)
    a29c:	8b 45 94             	mov    -0x6c(%ebp),%eax
    a29f:	8b 40 08             	mov    0x8(%eax),%eax
    a2a2:	85 c0                	test   %eax,%eax
    a2a4:	0f 84 61 01 00 00    	je     a40b <dump_fd_graph+0xb59>
    a2aa:	8b 45 94             	mov    -0x6c(%ebp),%eax
    a2ad:	8b 00                	mov    (%eax),%eax
    a2af:	3d 00 20 00 00       	cmp    $0x2000,%eax
    a2b4:	0f 84 c5 00 00 00    	je     a37f <dump_fd_graph+0xacd>
    a2ba:	8b 45 94             	mov    -0x6c(%ebp),%eax
    a2bd:	8b 50 08             	mov    0x8(%eax),%edx
    a2c0:	8b 45 ac             	mov    -0x54(%ebp),%eax
    a2c3:	8b 40 14             	mov    0x14(%eax),%eax
    a2c6:	39 c2                	cmp    %eax,%edx
    a2c8:	73 1e                	jae    a2e8 <dump_fd_graph+0xa36>
    a2ca:	8b 45 ac             	mov    -0x54(%ebp),%eax
    a2cd:	8b 50 14             	mov    0x14(%eax),%edx
    a2d0:	8b 45 94             	mov    -0x6c(%ebp),%eax
    a2d3:	8b 40 08             	mov    0x8(%eax),%eax
    a2d6:	83 ec 04             	sub    $0x4,%esp
    a2d9:	52                   	push   %edx
    a2da:	50                   	push   %eax
    a2db:	68 b9 c3 00 00       	push   $0xc3b9
    a2e0:	e8 2a 79 ff ff       	call   1c0f <panic>
    a2e5:	83 c4 10             	add    $0x10,%esp
    a2e8:	8b 45 94             	mov    -0x6c(%ebp),%eax
    a2eb:	8b 50 08             	mov    0x8(%eax),%edx
    a2ee:	8b 45 ac             	mov    -0x54(%ebp),%eax
    a2f1:	8b 40 14             	mov    0x14(%eax),%eax
    a2f4:	29 c2                	sub    %eax,%edx
    a2f6:	89 d0                	mov    %edx,%eax
    a2f8:	83 c0 01             	add    $0x1,%eax
    a2fb:	89 45 90             	mov    %eax,-0x70(%ebp)
    a2fe:	8b 45 94             	mov    -0x6c(%ebp),%eax
    a301:	8b 50 0c             	mov    0xc(%eax),%edx
    a304:	8b 45 90             	mov    -0x70(%ebp),%eax
    a307:	01 d0                	add    %edx,%eax
    a309:	83 e8 01             	sub    $0x1,%eax
    a30c:	89 45 8c             	mov    %eax,-0x74(%ebp)
    a30f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a312:	83 c0 01             	add    $0x1,%eax
    a315:	83 ec 08             	sub    $0x8,%esp
    a318:	50                   	push   %eax
    a319:	68 d5 c3 00 00       	push   $0xc3d5
    a31e:	e8 27 c9 ff ff       	call   6c4a <syslog>
    a323:	83 c4 10             	add    $0x10,%esp
    a326:	8b 45 94             	mov    -0x6c(%ebp),%eax
    a329:	8b 40 04             	mov    0x4(%eax),%eax
    a32c:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    a32f:	83 c2 01             	add    $0x1,%edx
    a332:	83 ec 0c             	sub    $0xc,%esp
    a335:	ff 75 8c             	pushl  -0x74(%ebp)
    a338:	ff 75 90             	pushl  -0x70(%ebp)
    a33b:	50                   	push   %eax
    a33c:	52                   	push   %edx
    a33d:	68 ec c3 00 00       	push   $0xc3ec
    a342:	e8 03 c9 ff ff       	call   6c4a <syslog>
    a347:	83 c4 20             	add    $0x20,%esp
    a34a:	83 ec 0c             	sub    $0xc,%esp
    a34d:	68 1a c1 00 00       	push   $0xc11a
    a352:	e8 f3 c8 ff ff       	call   6c4a <syslog>
    a357:	83 c4 10             	add    $0x10,%esp
    a35a:	83 ec 0c             	sub    $0xc,%esp
    a35d:	68 1e c1 00 00       	push   $0xc11e
    a362:	e8 e3 c8 ff ff       	call   6c4a <syslog>
    a367:	83 c4 10             	add    $0x10,%esp
    a36a:	83 ec 0c             	sub    $0xc,%esp
    a36d:	68 33 c1 00 00       	push   $0xc133
    a372:	e8 d3 c8 ff ff       	call   6c4a <syslog>
    a377:	83 c4 10             	add    $0x10,%esp
    a37a:	e9 8d 00 00 00       	jmp    a40c <dump_fd_graph+0xb5a>
    a37f:	8b 45 94             	mov    -0x6c(%ebp),%eax
    a382:	8b 40 08             	mov    0x8(%eax),%eax
    a385:	c1 e8 08             	shr    $0x8,%eax
    a388:	25 ff 00 00 00       	and    $0xff,%eax
    a38d:	89 45 90             	mov    %eax,-0x70(%ebp)
    a390:	8b 45 94             	mov    -0x6c(%ebp),%eax
    a393:	8b 40 08             	mov    0x8(%eax),%eax
    a396:	25 ff 00 00 00       	and    $0xff,%eax
    a39b:	89 45 8c             	mov    %eax,-0x74(%ebp)
    a39e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a3a1:	83 c0 01             	add    $0x1,%eax
    a3a4:	83 ec 08             	sub    $0x8,%esp
    a3a7:	50                   	push   %eax
    a3a8:	68 d5 c3 00 00       	push   $0xc3d5
    a3ad:	e8 98 c8 ff ff       	call   6c4a <syslog>
    a3b2:	83 c4 10             	add    $0x10,%esp
    a3b5:	8b 45 94             	mov    -0x6c(%ebp),%eax
    a3b8:	8b 40 04             	mov    0x4(%eax),%eax
    a3bb:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    a3be:	83 c2 01             	add    $0x1,%edx
    a3c1:	83 ec 0c             	sub    $0xc,%esp
    a3c4:	ff 75 8c             	pushl  -0x74(%ebp)
    a3c7:	ff 75 90             	pushl  -0x70(%ebp)
    a3ca:	50                   	push   %eax
    a3cb:	52                   	push   %edx
    a3cc:	68 24 c4 00 00       	push   $0xc424
    a3d1:	e8 74 c8 ff ff       	call   6c4a <syslog>
    a3d6:	83 c4 20             	add    $0x20,%esp
    a3d9:	83 ec 0c             	sub    $0xc,%esp
    a3dc:	68 1a c1 00 00       	push   $0xc11a
    a3e1:	e8 64 c8 ff ff       	call   6c4a <syslog>
    a3e6:	83 c4 10             	add    $0x10,%esp
    a3e9:	83 ec 0c             	sub    $0xc,%esp
    a3ec:	68 1e c1 00 00       	push   $0xc11e
    a3f1:	e8 54 c8 ff ff       	call   6c4a <syslog>
    a3f6:	83 c4 10             	add    $0x10,%esp
    a3f9:	83 ec 0c             	sub    $0xc,%esp
    a3fc:	68 33 c1 00 00       	push   $0xc133
    a401:	e8 44 c8 ff ff       	call   6c4a <syslog>
    a406:	83 c4 10             	add    $0x10,%esp
    a409:	eb 01                	jmp    a40c <dump_fd_graph+0xb5a>
    a40b:	90                   	nop
    a40c:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    a410:	83 45 c0 20          	addl   $0x20,-0x40(%ebp)
    a414:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a417:	83 f8 0a             	cmp    $0xa,%eax
    a41a:	0f 86 76 fe ff ff    	jbe    a296 <dump_fd_graph+0x9e4>
    a420:	83 ec 0c             	sub    $0xc,%esp
    a423:	68 60 c4 00 00       	push   $0xc460
    a428:	e8 1d c8 ff ff       	call   6c4a <syslog>
    a42d:	83 c4 10             	add    $0x10,%esp
    a430:	83 ec 0c             	sub    $0xc,%esp
    a433:	68 4d c1 00 00       	push   $0xc14d
    a438:	e8 0d c8 ff ff       	call   6c4a <syslog>
    a43d:	83 c4 10             	add    $0x10,%esp
    a440:	83 ec 0c             	sub    $0xc,%esp
    a443:	68 7a c4 00 00       	push   $0xc47a
    a448:	e8 fd c7 ff ff       	call   6c4a <syslog>
    a44d:	83 c4 10             	add    $0x10,%esp
    a450:	83 ec 0c             	sub    $0xc,%esp
    a453:	68 c8 c2 00 00       	push   $0xc2c8
    a458:	e8 ed c7 ff ff       	call   6c4a <syslog>
    a45d:	83 c4 10             	add    $0x10,%esp
    a460:	83 ec 0c             	sub    $0xc,%esp
    a463:	68 da c2 00 00       	push   $0xc2da
    a468:	e8 dd c7 ff ff       	call   6c4a <syslog>
    a46d:	83 c4 10             	add    $0x10,%esp
    a470:	a1 20 a8 04 00       	mov    0x4a820,%eax
    a475:	8b 40 20             	mov    0x20(%eax),%eax
    a478:	83 ec 0c             	sub    $0xc,%esp
    a47b:	50                   	push   %eax
    a47c:	e8 c3 d2 ff ff       	call   7744 <get_super_block>
    a481:	83 c4 10             	add    $0x10,%esp
    a484:	89 45 ac             	mov    %eax,-0x54(%ebp)
    a487:	a1 20 a8 04 00       	mov    0x4a820,%eax
    a48c:	8b 40 08             	mov    0x8(%eax),%eax
    a48f:	89 45 88             	mov    %eax,-0x78(%ebp)
    a492:	a1 20 a8 04 00       	mov    0x4a820,%eax
    a497:	8b 40 04             	mov    0x4(%eax),%eax
    a49a:	05 ff 01 00 00       	add    $0x1ff,%eax
    a49f:	c1 e8 09             	shr    $0x9,%eax
    a4a2:	89 45 84             	mov    %eax,-0x7c(%ebp)
    a4a5:	a1 20 a8 04 00       	mov    0x4a820,%eax
    a4aa:	8b 40 04             	mov    0x4(%eax),%eax
    a4ad:	c1 e8 04             	shr    $0x4,%eax
    a4b0:	89 45 80             	mov    %eax,-0x80(%ebp)
    a4b3:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
    a4ba:	00 00 00 
    a4bd:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    a4c4:	e9 40 01 00 00       	jmp    a609 <dump_fd_graph+0xd57>
    a4c9:	8b 1d 9c f7 00 00    	mov    0xf79c,%ebx
    a4cf:	8b 55 88             	mov    -0x78(%ebp),%edx
    a4d2:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a4d5:	01 d0                	add    %edx,%eax
    a4d7:	c1 e0 09             	shl    $0x9,%eax
    a4da:	99                   	cltd   
    a4db:	8b 0d 20 a8 04 00    	mov    0x4a820,%ecx
    a4e1:	8b 49 20             	mov    0x20(%ecx),%ecx
    a4e4:	83 ec 04             	sub    $0x4,%esp
    a4e7:	53                   	push   %ebx
    a4e8:	6a 03                	push   $0x3
    a4ea:	68 00 02 00 00       	push   $0x200
    a4ef:	52                   	push   %edx
    a4f0:	50                   	push   %eax
    a4f1:	51                   	push   %ecx
    a4f2:	68 eb 03 00 00       	push   $0x3eb
    a4f7:	e8 40 d0 ff ff       	call   753c <rw_sector>
    a4fc:	83 c4 20             	add    $0x20,%esp
    a4ff:	a1 9c f7 00 00       	mov    0xf79c,%eax
    a504:	83 ec 04             	sub    $0x4,%esp
    a507:	68 00 02 00 00       	push   $0x200
    a50c:	50                   	push   %eax
    a50d:	68 60 06 01 00       	push   $0x10660
    a512:	e8 a9 c3 ff ff       	call   68c0 <memcpy>
    a517:	83 c4 10             	add    $0x10,%esp
    a51a:	c7 45 bc 60 06 01 00 	movl   $0x10660,-0x44(%ebp)
    a521:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    a528:	e9 c1 00 00 00       	jmp    a5ee <dump_fd_graph+0xd3c>
    a52d:	8b 45 bc             	mov    -0x44(%ebp),%eax
    a530:	8b 00                	mov    (%eax),%eax
    a532:	85 c0                	test   %eax,%eax
    a534:	0f 84 ac 00 00 00    	je     a5e6 <dump_fd_graph+0xd34>
    a53a:	8b 45 bc             	mov    -0x44(%ebp),%eax
    a53d:	83 c0 04             	add    $0x4,%eax
    a540:	83 ec 04             	sub    $0x4,%esp
    a543:	6a 0c                	push   $0xc
    a545:	50                   	push   %eax
    a546:	8d 85 6f fb ff ff    	lea    -0x491(%ebp),%eax
    a54c:	50                   	push   %eax
    a54d:	e8 6e c3 ff ff       	call   68c0 <memcpy>
    a552:	83 c4 10             	add    $0x10,%esp
    a555:	0f b6 85 6f fb ff ff 	movzbl -0x491(%ebp),%eax
    a55c:	3c 2e                	cmp    $0x2e,%al
    a55e:	75 07                	jne    a567 <dump_fd_graph+0xcb5>
    a560:	c6 85 6f fb ff ff 2f 	movb   $0x2f,-0x491(%ebp)
    a567:	8b 45 bc             	mov    -0x44(%ebp),%eax
    a56a:	8b 00                	mov    (%eax),%eax
    a56c:	83 ec 08             	sub    $0x8,%esp
    a56f:	50                   	push   %eax
    a570:	68 92 c4 00 00       	push   $0xc492
    a575:	e8 d0 c6 ff ff       	call   6c4a <syslog>
    a57a:	83 c4 10             	add    $0x10,%esp
    a57d:	8b 45 bc             	mov    -0x44(%ebp),%eax
    a580:	8b 00                	mov    (%eax),%eax
    a582:	83 ec 04             	sub    $0x4,%esp
    a585:	8d 95 6f fb ff ff    	lea    -0x491(%ebp),%edx
    a58b:	52                   	push   %edx
    a58c:	50                   	push   %eax
    a58d:	68 a6 c4 00 00       	push   $0xc4a6
    a592:	e8 b3 c6 ff ff       	call   6c4a <syslog>
    a597:	83 c4 10             	add    $0x10,%esp
    a59a:	83 ec 0c             	sub    $0xc,%esp
    a59d:	68 1a c1 00 00       	push   $0xc11a
    a5a2:	e8 a3 c6 ff ff       	call   6c4a <syslog>
    a5a7:	83 c4 10             	add    $0x10,%esp
    a5aa:	83 ec 0c             	sub    $0xc,%esp
    a5ad:	68 1e c1 00 00       	push   $0xc11e
    a5b2:	e8 93 c6 ff ff       	call   6c4a <syslog>
    a5b7:	83 c4 10             	add    $0x10,%esp
    a5ba:	83 ec 0c             	sub    $0xc,%esp
    a5bd:	68 33 c1 00 00       	push   $0xc133
    a5c2:	e8 83 c6 ff ff       	call   6c4a <syslog>
    a5c7:	83 c4 10             	add    $0x10,%esp
    a5ca:	8b 45 bc             	mov    -0x44(%ebp),%eax
    a5cd:	8b 10                	mov    (%eax),%edx
    a5cf:	8b 45 bc             	mov    -0x44(%ebp),%eax
    a5d2:	8b 00                	mov    (%eax),%eax
    a5d4:	83 ec 04             	sub    $0x4,%esp
    a5d7:	52                   	push   %edx
    a5d8:	50                   	push   %eax
    a5d9:	68 c4 c4 00 00       	push   $0xc4c4
    a5de:	e8 67 c6 ff ff       	call   6c4a <syslog>
    a5e3:	83 c4 10             	add    $0x10,%esp
    a5e6:	83 45 c4 01          	addl   $0x1,-0x3c(%ebp)
    a5ea:	83 45 bc 10          	addl   $0x10,-0x44(%ebp)
    a5ee:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    a5f1:	83 f8 1f             	cmp    $0x1f,%eax
    a5f4:	0f 86 33 ff ff ff    	jbe    a52d <dump_fd_graph+0xc7b>
    a5fa:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
    a600:	3b 45 80             	cmp    -0x80(%ebp),%eax
    a603:	7f 12                	jg     a617 <dump_fd_graph+0xd65>
    a605:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    a609:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a60c:	3b 45 84             	cmp    -0x7c(%ebp),%eax
    a60f:	0f 8c b4 fe ff ff    	jl     a4c9 <dump_fd_graph+0xc17>
    a615:	eb 01                	jmp    a618 <dump_fd_graph+0xd66>
    a617:	90                   	nop
    a618:	83 ec 0c             	sub    $0xc,%esp
    a61b:	68 ee c4 00 00       	push   $0xc4ee
    a620:	e8 25 c6 ff ff       	call   6c4a <syslog>
    a625:	83 c4 10             	add    $0x10,%esp
    a628:	83 ec 0c             	sub    $0xc,%esp
    a62b:	68 4d c1 00 00       	push   $0xc14d
    a630:	e8 15 c6 ff ff       	call   6c4a <syslog>
    a635:	83 c4 10             	add    $0x10,%esp
    a638:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    a63f:	eb 5c                	jmp    a69d <dump_fd_graph+0xdeb>
    a641:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    a644:	89 d0                	mov    %edx,%eax
    a646:	01 c0                	add    %eax,%eax
    a648:	01 d0                	add    %edx,%eax
    a64a:	c1 e0 02             	shl    $0x2,%eax
    a64d:	8d 75 e8             	lea    -0x18(%ebp),%esi
    a650:	01 f0                	add    %esi,%eax
    a652:	2d f4 10 00 00       	sub    $0x10f4,%eax
    a657:	8b 18                	mov    (%eax),%ebx
    a659:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    a65c:	89 d0                	mov    %edx,%eax
    a65e:	01 c0                	add    %eax,%eax
    a660:	01 d0                	add    %edx,%eax
    a662:	c1 e0 02             	shl    $0x2,%eax
    a665:	8d 7d e8             	lea    -0x18(%ebp),%edi
    a668:	01 f8                	add    %edi,%eax
    a66a:	2d f8 10 00 00       	sub    $0x10f8,%eax
    a66f:	8b 08                	mov    (%eax),%ecx
    a671:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    a674:	89 d0                	mov    %edx,%eax
    a676:	01 c0                	add    %eax,%eax
    a678:	01 d0                	add    %edx,%eax
    a67a:	c1 e0 02             	shl    $0x2,%eax
    a67d:	8d 75 e8             	lea    -0x18(%ebp),%esi
    a680:	01 f0                	add    %esi,%eax
    a682:	2d fc 10 00 00       	sub    $0x10fc,%eax
    a687:	8b 00                	mov    (%eax),%eax
    a689:	53                   	push   %ebx
    a68a:	51                   	push   %ecx
    a68b:	50                   	push   %eax
    a68c:	68 08 c5 00 00       	push   $0xc508
    a691:	e8 b4 c5 ff ff       	call   6c4a <syslog>
    a696:	83 c4 10             	add    $0x10,%esp
    a699:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    a69d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a6a0:	3b 45 e0             	cmp    -0x20(%ebp),%eax
    a6a3:	7c 9c                	jl     a641 <dump_fd_graph+0xd8f>
    a6a5:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    a6ac:	eb 2a                	jmp    a6d8 <dump_fd_graph+0xe26>
    a6ae:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a6b1:	8b 94 c5 f0 e6 ff ff 	mov    -0x1910(%ebp,%eax,8),%edx
    a6b8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a6bb:	8b 84 c5 ec e6 ff ff 	mov    -0x1914(%ebp,%eax,8),%eax
    a6c2:	83 ec 04             	sub    $0x4,%esp
    a6c5:	52                   	push   %edx
    a6c6:	50                   	push   %eax
    a6c7:	68 2c c5 00 00       	push   $0xc52c
    a6cc:	e8 79 c5 ff ff       	call   6c4a <syslog>
    a6d1:	83 c4 10             	add    $0x10,%esp
    a6d4:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    a6d8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a6db:	3b 45 dc             	cmp    -0x24(%ebp),%eax
    a6de:	7c ce                	jl     a6ae <dump_fd_graph+0xdfc>
    a6e0:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    a6e7:	eb 36                	jmp    a71f <dump_fd_graph+0xe6d>
    a6e9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a6ec:	6b c0 2c             	imul   $0x2c,%eax,%eax
    a6ef:	05 c4 08 01 00       	add    $0x108c4,%eax
    a6f4:	8b 00                	mov    (%eax),%eax
    a6f6:	85 c0                	test   %eax,%eax
    a6f8:	74 21                	je     a71b <dump_fd_graph+0xe69>
    a6fa:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a6fd:	6b c0 2c             	imul   $0x2c,%eax,%eax
    a700:	05 c8 08 01 00       	add    $0x108c8,%eax
    a705:	8b 00                	mov    (%eax),%eax
    a707:	83 ec 04             	sub    $0x4,%esp
    a70a:	50                   	push   %eax
    a70b:	ff 75 e4             	pushl  -0x1c(%ebp)
    a70e:	68 50 c5 00 00       	push   $0xc550
    a713:	e8 32 c5 ff ff       	call   6c4a <syslog>
    a718:	83 c4 10             	add    $0x10,%esp
    a71b:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    a71f:	83 7d e4 3f          	cmpl   $0x3f,-0x1c(%ebp)
    a723:	7e c4                	jle    a6e9 <dump_fd_graph+0xe37>
    a725:	83 ec 08             	sub    $0x8,%esp
    a728:	8d 85 7c fb ff ff    	lea    -0x484(%ebp),%eax
    a72e:	50                   	push   %eax
    a72f:	68 75 c5 00 00       	push   $0xc575
    a734:	e8 11 c5 ff ff       	call   6c4a <syslog>
    a739:	83 c4 10             	add    $0x10,%esp
    a73c:	83 ec 0c             	sub    $0xc,%esp
    a73f:	68 85 c5 00 00       	push   $0xc585
    a744:	e8 01 c5 ff ff       	call   6c4a <syslog>
    a749:	83 c4 10             	add    $0x10,%esp
    a74c:	83 ec 0c             	sub    $0xc,%esp
    a74f:	68 88 c5 00 00       	push   $0xc588
    a754:	e8 f1 c4 ff ff       	call   6c4a <syslog>
    a759:	83 c4 10             	add    $0x10,%esp
    a75c:	90                   	nop
    a75d:	8d 65 f4             	lea    -0xc(%ebp),%esp
    a760:	5b                   	pop    %ebx
    a761:	5e                   	pop    %esi
    a762:	5f                   	pop    %edi
    a763:	5d                   	pop    %ebp
    a764:	c3                   	ret    
