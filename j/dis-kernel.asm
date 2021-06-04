
kernel.bin:     file format elf32-i386


Disassembly of section .text:

00001000 <_start>:
    1000:	66 87 db             	xchg   %bx,%bx
    1003:	bc a0 ff 00 00       	mov    $0xffa0,%esp
    1008:	c7 05 24 a8 04 00 00 	movl   $0x0,0x4a824
    100f:	00 00 00 
    1012:	0f 01 05 2c a8 04 00 	sgdtl  0x4a82c
    1019:	e8 2a 04 00 00       	call   1448 <cstart>
    101e:	0f 01 15 2c a8 04 00 	lgdtl  0x4a82c
    1025:	0f 01 1d 80 08 01 00 	lidtl  0x10880
    102c:	ea 33 10 00 00 08 00 	ljmp   $0x8,$0x1033

00001033 <csinit>:
    1033:	31 c0                	xor    %eax,%eax
    1035:	66 b8 20 00          	mov    $0x20,%ax
    1039:	0f 00 d8             	ltr    %ax
    103c:	e9 9c 04 00 00       	jmp    14dd <kernel_main>
    1041:	90                   	nop
    1042:	90                   	nop
    1043:	90                   	nop
    1044:	90                   	nop
    1045:	90                   	nop
    1046:	90                   	nop
    1047:	90                   	nop
    1048:	90                   	nop
    1049:	90                   	nop
    104a:	90                   	nop
    104b:	90                   	nop
    104c:	90                   	nop
    104d:	90                   	nop
    104e:	90                   	nop
    104f:	90                   	nop

00001050 <hwint00>:
    1050:	e8 4c 03 00 00       	call   13a1 <save>
    1055:	e4 21                	in     $0x21,%al
    1057:	0c 01                	or     $0x1,%al
    1059:	e6 21                	out    %al,$0x21
    105b:	b0 20                	mov    $0x20,%al
    105d:	e6 20                	out    %al,$0x20
    105f:	fb                   	sti    
    1060:	6a 00                	push   $0x0
    1062:	ff 15 80 b2 04 00    	call   *0x4b280
    1068:	59                   	pop    %ecx
    1069:	fa                   	cli    
    106a:	e4 21                	in     $0x21,%al
    106c:	24 fe                	and    $0xfe,%al
    106e:	e6 21                	out    %al,$0x21
    1070:	c3                   	ret    
    1071:	90                   	nop
    1072:	90                   	nop
    1073:	90                   	nop
    1074:	90                   	nop
    1075:	90                   	nop
    1076:	90                   	nop
    1077:	90                   	nop
    1078:	90                   	nop
    1079:	90                   	nop
    107a:	90                   	nop
    107b:	90                   	nop
    107c:	90                   	nop
    107d:	90                   	nop
    107e:	90                   	nop
    107f:	90                   	nop

00001080 <hwint01>:
    1080:	e8 1c 03 00 00       	call   13a1 <save>
    1085:	e4 21                	in     $0x21,%al
    1087:	0c 02                	or     $0x2,%al
    1089:	e6 21                	out    %al,$0x21
    108b:	b0 20                	mov    $0x20,%al
    108d:	e6 20                	out    %al,$0x20
    108f:	fb                   	sti    
    1090:	6a 01                	push   $0x1
    1092:	ff 15 84 b2 04 00    	call   *0x4b284
    1098:	59                   	pop    %ecx
    1099:	fa                   	cli    
    109a:	e4 21                	in     $0x21,%al
    109c:	24 fd                	and    $0xfd,%al
    109e:	e6 21                	out    %al,$0x21
    10a0:	c3                   	ret    
    10a1:	90                   	nop
    10a2:	90                   	nop
    10a3:	90                   	nop
    10a4:	90                   	nop
    10a5:	90                   	nop
    10a6:	90                   	nop
    10a7:	90                   	nop
    10a8:	90                   	nop
    10a9:	90                   	nop
    10aa:	90                   	nop
    10ab:	90                   	nop
    10ac:	90                   	nop
    10ad:	90                   	nop
    10ae:	90                   	nop
    10af:	90                   	nop

000010b0 <hwint02>:
    10b0:	e8 ec 02 00 00       	call   13a1 <save>
    10b5:	e4 21                	in     $0x21,%al
    10b7:	0c 04                	or     $0x4,%al
    10b9:	e6 21                	out    %al,$0x21
    10bb:	b0 20                	mov    $0x20,%al
    10bd:	e6 20                	out    %al,$0x20
    10bf:	fb                   	sti    
    10c0:	6a 02                	push   $0x2
    10c2:	ff 15 88 b2 04 00    	call   *0x4b288
    10c8:	59                   	pop    %ecx
    10c9:	fa                   	cli    
    10ca:	e4 21                	in     $0x21,%al
    10cc:	24 fb                	and    $0xfb,%al
    10ce:	e6 21                	out    %al,$0x21
    10d0:	c3                   	ret    
    10d1:	90                   	nop
    10d2:	90                   	nop
    10d3:	90                   	nop
    10d4:	90                   	nop
    10d5:	90                   	nop
    10d6:	90                   	nop
    10d7:	90                   	nop
    10d8:	90                   	nop
    10d9:	90                   	nop
    10da:	90                   	nop
    10db:	90                   	nop
    10dc:	90                   	nop
    10dd:	90                   	nop
    10de:	90                   	nop
    10df:	90                   	nop

000010e0 <hwint03>:
    10e0:	e8 bc 02 00 00       	call   13a1 <save>
    10e5:	e4 21                	in     $0x21,%al
    10e7:	0c 08                	or     $0x8,%al
    10e9:	e6 21                	out    %al,$0x21
    10eb:	b0 20                	mov    $0x20,%al
    10ed:	e6 20                	out    %al,$0x20
    10ef:	fb                   	sti    
    10f0:	6a 03                	push   $0x3
    10f2:	ff 15 8c b2 04 00    	call   *0x4b28c
    10f8:	59                   	pop    %ecx
    10f9:	fa                   	cli    
    10fa:	e4 21                	in     $0x21,%al
    10fc:	24 f7                	and    $0xf7,%al
    10fe:	e6 21                	out    %al,$0x21
    1100:	c3                   	ret    
    1101:	90                   	nop
    1102:	90                   	nop
    1103:	90                   	nop
    1104:	90                   	nop
    1105:	90                   	nop
    1106:	90                   	nop
    1107:	90                   	nop
    1108:	90                   	nop
    1109:	90                   	nop
    110a:	90                   	nop
    110b:	90                   	nop
    110c:	90                   	nop
    110d:	90                   	nop
    110e:	90                   	nop
    110f:	90                   	nop

00001110 <hwint04>:
    1110:	e8 8c 02 00 00       	call   13a1 <save>
    1115:	e4 21                	in     $0x21,%al
    1117:	0c 10                	or     $0x10,%al
    1119:	e6 21                	out    %al,$0x21
    111b:	b0 20                	mov    $0x20,%al
    111d:	e6 20                	out    %al,$0x20
    111f:	fb                   	sti    
    1120:	6a 04                	push   $0x4
    1122:	ff 15 90 b2 04 00    	call   *0x4b290
    1128:	59                   	pop    %ecx
    1129:	fa                   	cli    
    112a:	e4 21                	in     $0x21,%al
    112c:	24 ef                	and    $0xef,%al
    112e:	e6 21                	out    %al,$0x21
    1130:	c3                   	ret    
    1131:	90                   	nop
    1132:	90                   	nop
    1133:	90                   	nop
    1134:	90                   	nop
    1135:	90                   	nop
    1136:	90                   	nop
    1137:	90                   	nop
    1138:	90                   	nop
    1139:	90                   	nop
    113a:	90                   	nop
    113b:	90                   	nop
    113c:	90                   	nop
    113d:	90                   	nop
    113e:	90                   	nop
    113f:	90                   	nop

00001140 <hwint05>:
    1140:	e8 5c 02 00 00       	call   13a1 <save>
    1145:	e4 21                	in     $0x21,%al
    1147:	0c 20                	or     $0x20,%al
    1149:	e6 21                	out    %al,$0x21
    114b:	b0 20                	mov    $0x20,%al
    114d:	e6 20                	out    %al,$0x20
    114f:	fb                   	sti    
    1150:	6a 05                	push   $0x5
    1152:	ff 15 94 b2 04 00    	call   *0x4b294
    1158:	59                   	pop    %ecx
    1159:	fa                   	cli    
    115a:	e4 21                	in     $0x21,%al
    115c:	24 df                	and    $0xdf,%al
    115e:	e6 21                	out    %al,$0x21
    1160:	c3                   	ret    
    1161:	90                   	nop
    1162:	90                   	nop
    1163:	90                   	nop
    1164:	90                   	nop
    1165:	90                   	nop
    1166:	90                   	nop
    1167:	90                   	nop
    1168:	90                   	nop
    1169:	90                   	nop
    116a:	90                   	nop
    116b:	90                   	nop
    116c:	90                   	nop
    116d:	90                   	nop
    116e:	90                   	nop
    116f:	90                   	nop

00001170 <hwint06>:
    1170:	e8 2c 02 00 00       	call   13a1 <save>
    1175:	e4 21                	in     $0x21,%al
    1177:	0c 40                	or     $0x40,%al
    1179:	e6 21                	out    %al,$0x21
    117b:	b0 20                	mov    $0x20,%al
    117d:	e6 20                	out    %al,$0x20
    117f:	fb                   	sti    
    1180:	6a 06                	push   $0x6
    1182:	ff 15 98 b2 04 00    	call   *0x4b298
    1188:	59                   	pop    %ecx
    1189:	fa                   	cli    
    118a:	e4 21                	in     $0x21,%al
    118c:	24 bf                	and    $0xbf,%al
    118e:	e6 21                	out    %al,$0x21
    1190:	c3                   	ret    
    1191:	90                   	nop
    1192:	90                   	nop
    1193:	90                   	nop
    1194:	90                   	nop
    1195:	90                   	nop
    1196:	90                   	nop
    1197:	90                   	nop
    1198:	90                   	nop
    1199:	90                   	nop
    119a:	90                   	nop
    119b:	90                   	nop
    119c:	90                   	nop
    119d:	90                   	nop
    119e:	90                   	nop
    119f:	90                   	nop

000011a0 <hwint07>:
    11a0:	e8 fc 01 00 00       	call   13a1 <save>
    11a5:	e4 21                	in     $0x21,%al
    11a7:	0c 80                	or     $0x80,%al
    11a9:	e6 21                	out    %al,$0x21
    11ab:	b0 20                	mov    $0x20,%al
    11ad:	e6 20                	out    %al,$0x20
    11af:	fb                   	sti    
    11b0:	6a 07                	push   $0x7
    11b2:	ff 15 9c b2 04 00    	call   *0x4b29c
    11b8:	59                   	pop    %ecx
    11b9:	fa                   	cli    
    11ba:	e4 21                	in     $0x21,%al
    11bc:	24 7f                	and    $0x7f,%al
    11be:	e6 21                	out    %al,$0x21
    11c0:	c3                   	ret    
    11c1:	90                   	nop
    11c2:	90                   	nop
    11c3:	90                   	nop
    11c4:	90                   	nop
    11c5:	90                   	nop
    11c6:	90                   	nop
    11c7:	90                   	nop
    11c8:	90                   	nop
    11c9:	90                   	nop
    11ca:	90                   	nop
    11cb:	90                   	nop
    11cc:	90                   	nop
    11cd:	90                   	nop
    11ce:	90                   	nop
    11cf:	90                   	nop

000011d0 <hwint08>:
    11d0:	e8 cc 01 00 00       	call   13a1 <save>
    11d5:	e4 a1                	in     $0xa1,%al
    11d7:	0c 01                	or     $0x1,%al
    11d9:	e6 a1                	out    %al,$0xa1
    11db:	b0 20                	mov    $0x20,%al
    11dd:	e6 20                	out    %al,$0x20
    11df:	90                   	nop
    11e0:	e6 a0                	out    %al,$0xa0
    11e2:	fb                   	sti    
    11e3:	6a 08                	push   $0x8
    11e5:	ff 15 a0 b2 04 00    	call   *0x4b2a0
    11eb:	59                   	pop    %ecx
    11ec:	fa                   	cli    
    11ed:	e4 a1                	in     $0xa1,%al
    11ef:	24 fe                	and    $0xfe,%al
    11f1:	e6 a1                	out    %al,$0xa1
    11f3:	c3                   	ret    
    11f4:	90                   	nop
    11f5:	90                   	nop
    11f6:	90                   	nop
    11f7:	90                   	nop
    11f8:	90                   	nop
    11f9:	90                   	nop
    11fa:	90                   	nop
    11fb:	90                   	nop
    11fc:	90                   	nop
    11fd:	90                   	nop
    11fe:	90                   	nop
    11ff:	90                   	nop

00001200 <hwint09>:
    1200:	e8 9c 01 00 00       	call   13a1 <save>
    1205:	e4 a1                	in     $0xa1,%al
    1207:	0c 02                	or     $0x2,%al
    1209:	e6 a1                	out    %al,$0xa1
    120b:	b0 20                	mov    $0x20,%al
    120d:	e6 20                	out    %al,$0x20
    120f:	90                   	nop
    1210:	e6 a0                	out    %al,$0xa0
    1212:	fb                   	sti    
    1213:	6a 09                	push   $0x9
    1215:	ff 15 a4 b2 04 00    	call   *0x4b2a4
    121b:	59                   	pop    %ecx
    121c:	fa                   	cli    
    121d:	e4 a1                	in     $0xa1,%al
    121f:	24 fd                	and    $0xfd,%al
    1221:	e6 a1                	out    %al,$0xa1
    1223:	c3                   	ret    
    1224:	90                   	nop
    1225:	90                   	nop
    1226:	90                   	nop
    1227:	90                   	nop
    1228:	90                   	nop
    1229:	90                   	nop
    122a:	90                   	nop
    122b:	90                   	nop
    122c:	90                   	nop
    122d:	90                   	nop
    122e:	90                   	nop
    122f:	90                   	nop

00001230 <hwint10>:
    1230:	e8 6c 01 00 00       	call   13a1 <save>
    1235:	e4 a1                	in     $0xa1,%al
    1237:	0c 04                	or     $0x4,%al
    1239:	e6 a1                	out    %al,$0xa1
    123b:	b0 20                	mov    $0x20,%al
    123d:	e6 20                	out    %al,$0x20
    123f:	90                   	nop
    1240:	e6 a0                	out    %al,$0xa0
    1242:	fb                   	sti    
    1243:	6a 0a                	push   $0xa
    1245:	ff 15 a8 b2 04 00    	call   *0x4b2a8
    124b:	59                   	pop    %ecx
    124c:	fa                   	cli    
    124d:	e4 a1                	in     $0xa1,%al
    124f:	24 fb                	and    $0xfb,%al
    1251:	e6 a1                	out    %al,$0xa1
    1253:	c3                   	ret    
    1254:	90                   	nop
    1255:	90                   	nop
    1256:	90                   	nop
    1257:	90                   	nop
    1258:	90                   	nop
    1259:	90                   	nop
    125a:	90                   	nop
    125b:	90                   	nop
    125c:	90                   	nop
    125d:	90                   	nop
    125e:	90                   	nop
    125f:	90                   	nop

00001260 <hwint11>:
    1260:	e8 3c 01 00 00       	call   13a1 <save>
    1265:	e4 a1                	in     $0xa1,%al
    1267:	0c 08                	or     $0x8,%al
    1269:	e6 a1                	out    %al,$0xa1
    126b:	b0 20                	mov    $0x20,%al
    126d:	e6 20                	out    %al,$0x20
    126f:	90                   	nop
    1270:	e6 a0                	out    %al,$0xa0
    1272:	fb                   	sti    
    1273:	6a 0b                	push   $0xb
    1275:	ff 15 ac b2 04 00    	call   *0x4b2ac
    127b:	59                   	pop    %ecx
    127c:	fa                   	cli    
    127d:	e4 a1                	in     $0xa1,%al
    127f:	24 f7                	and    $0xf7,%al
    1281:	e6 a1                	out    %al,$0xa1
    1283:	c3                   	ret    
    1284:	90                   	nop
    1285:	90                   	nop
    1286:	90                   	nop
    1287:	90                   	nop
    1288:	90                   	nop
    1289:	90                   	nop
    128a:	90                   	nop
    128b:	90                   	nop
    128c:	90                   	nop
    128d:	90                   	nop
    128e:	90                   	nop
    128f:	90                   	nop

00001290 <hwint12>:
    1290:	e8 0c 01 00 00       	call   13a1 <save>
    1295:	e4 a1                	in     $0xa1,%al
    1297:	0c 10                	or     $0x10,%al
    1299:	e6 a1                	out    %al,$0xa1
    129b:	b0 20                	mov    $0x20,%al
    129d:	e6 20                	out    %al,$0x20
    129f:	90                   	nop
    12a0:	e6 a0                	out    %al,$0xa0
    12a2:	fb                   	sti    
    12a3:	6a 0c                	push   $0xc
    12a5:	ff 15 b0 b2 04 00    	call   *0x4b2b0
    12ab:	59                   	pop    %ecx
    12ac:	fa                   	cli    
    12ad:	e4 a1                	in     $0xa1,%al
    12af:	24 ef                	and    $0xef,%al
    12b1:	e6 a1                	out    %al,$0xa1
    12b3:	c3                   	ret    
    12b4:	90                   	nop
    12b5:	90                   	nop
    12b6:	90                   	nop
    12b7:	90                   	nop
    12b8:	90                   	nop
    12b9:	90                   	nop
    12ba:	90                   	nop
    12bb:	90                   	nop
    12bc:	90                   	nop
    12bd:	90                   	nop
    12be:	90                   	nop
    12bf:	90                   	nop

000012c0 <hwint13>:
    12c0:	e8 dc 00 00 00       	call   13a1 <save>
    12c5:	e4 a1                	in     $0xa1,%al
    12c7:	0c 20                	or     $0x20,%al
    12c9:	e6 a1                	out    %al,$0xa1
    12cb:	b0 20                	mov    $0x20,%al
    12cd:	e6 20                	out    %al,$0x20
    12cf:	90                   	nop
    12d0:	e6 a0                	out    %al,$0xa0
    12d2:	fb                   	sti    
    12d3:	6a 0d                	push   $0xd
    12d5:	ff 15 b4 b2 04 00    	call   *0x4b2b4
    12db:	59                   	pop    %ecx
    12dc:	fa                   	cli    
    12dd:	e4 a1                	in     $0xa1,%al
    12df:	24 df                	and    $0xdf,%al
    12e1:	e6 a1                	out    %al,$0xa1
    12e3:	c3                   	ret    
    12e4:	90                   	nop
    12e5:	90                   	nop
    12e6:	90                   	nop
    12e7:	90                   	nop
    12e8:	90                   	nop
    12e9:	90                   	nop
    12ea:	90                   	nop
    12eb:	90                   	nop
    12ec:	90                   	nop
    12ed:	90                   	nop
    12ee:	90                   	nop
    12ef:	90                   	nop

000012f0 <hwint14>:
    12f0:	e8 ac 00 00 00       	call   13a1 <save>
    12f5:	e4 a1                	in     $0xa1,%al
    12f7:	0c 40                	or     $0x40,%al
    12f9:	e6 a1                	out    %al,$0xa1
    12fb:	b0 20                	mov    $0x20,%al
    12fd:	e6 20                	out    %al,$0x20
    12ff:	90                   	nop
    1300:	e6 a0                	out    %al,$0xa0
    1302:	fb                   	sti    
    1303:	6a 0e                	push   $0xe
    1305:	ff 15 b8 b2 04 00    	call   *0x4b2b8
    130b:	59                   	pop    %ecx
    130c:	fa                   	cli    
    130d:	e4 a1                	in     $0xa1,%al
    130f:	24 bf                	and    $0xbf,%al
    1311:	e6 a1                	out    %al,$0xa1
    1313:	c3                   	ret    
    1314:	90                   	nop
    1315:	90                   	nop
    1316:	90                   	nop
    1317:	90                   	nop
    1318:	90                   	nop
    1319:	90                   	nop
    131a:	90                   	nop
    131b:	90                   	nop
    131c:	90                   	nop
    131d:	90                   	nop
    131e:	90                   	nop
    131f:	90                   	nop

00001320 <hwint15>:
    1320:	e8 7c 00 00 00       	call   13a1 <save>
    1325:	e4 a1                	in     $0xa1,%al
    1327:	0c 80                	or     $0x80,%al
    1329:	e6 a1                	out    %al,$0xa1
    132b:	b0 20                	mov    $0x20,%al
    132d:	e6 20                	out    %al,$0x20
    132f:	90                   	nop
    1330:	e6 a0                	out    %al,$0xa0
    1332:	fb                   	sti    
    1333:	6a 0f                	push   $0xf
    1335:	ff 15 bc b2 04 00    	call   *0x4b2bc
    133b:	59                   	pop    %ecx
    133c:	fa                   	cli    
    133d:	e4 a1                	in     $0xa1,%al
    133f:	24 7f                	and    $0x7f,%al
    1341:	e6 a1                	out    %al,$0xa1
    1343:	c3                   	ret    

00001344 <divide_error>:
    1344:	6a ff                	push   $0xffffffff
    1346:	6a 00                	push   $0x0
    1348:	eb 4e                	jmp    1398 <exception>

0000134a <single_step_exception>:
    134a:	6a ff                	push   $0xffffffff
    134c:	6a 01                	push   $0x1
    134e:	eb 48                	jmp    1398 <exception>

00001350 <nmi>:
    1350:	6a ff                	push   $0xffffffff
    1352:	6a 02                	push   $0x2
    1354:	eb 42                	jmp    1398 <exception>

00001356 <breakpoint_exception>:
    1356:	6a ff                	push   $0xffffffff
    1358:	6a 03                	push   $0x3
    135a:	eb 3c                	jmp    1398 <exception>

0000135c <overflow>:
    135c:	6a ff                	push   $0xffffffff
    135e:	6a 04                	push   $0x4
    1360:	eb 36                	jmp    1398 <exception>

00001362 <bounds_check>:
    1362:	6a ff                	push   $0xffffffff
    1364:	6a 05                	push   $0x5
    1366:	eb 30                	jmp    1398 <exception>

00001368 <inval_opcode>:
    1368:	6a ff                	push   $0xffffffff
    136a:	6a 06                	push   $0x6
    136c:	eb 2a                	jmp    1398 <exception>

0000136e <copr_not_available>:
    136e:	6a ff                	push   $0xffffffff
    1370:	6a 07                	push   $0x7
    1372:	eb 24                	jmp    1398 <exception>

00001374 <double_fault>:
    1374:	6a 08                	push   $0x8
    1376:	eb 20                	jmp    1398 <exception>

00001378 <copr_seg_overrun>:
    1378:	6a ff                	push   $0xffffffff
    137a:	6a 09                	push   $0x9
    137c:	eb 1a                	jmp    1398 <exception>

0000137e <inval_tss>:
    137e:	6a 0a                	push   $0xa
    1380:	eb 16                	jmp    1398 <exception>

00001382 <segment_not_present>:
    1382:	6a 0b                	push   $0xb
    1384:	eb 12                	jmp    1398 <exception>

00001386 <stack_exception>:
    1386:	6a 0c                	push   $0xc
    1388:	eb 0e                	jmp    1398 <exception>

0000138a <general_protection>:
    138a:	6a 0d                	push   $0xd
    138c:	eb 0a                	jmp    1398 <exception>

0000138e <page_fault>:
    138e:	6a 0e                	push   $0xe
    1390:	eb 06                	jmp    1398 <exception>

00001392 <copr_error>:
    1392:	6a ff                	push   $0xffffffff
    1394:	6a 10                	push   $0x10
    1396:	eb 00                	jmp    1398 <exception>

00001398 <exception>:
    1398:	e8 ed 27 00 00       	call   3b8a <exception_handler>
    139d:	83 c4 08             	add    $0x8,%esp
    13a0:	f4                   	hlt    

000013a1 <save>:
    13a1:	60                   	pusha  
    13a2:	1e                   	push   %ds
    13a3:	06                   	push   %es
    13a4:	0f a0                	push   %fs
    13a6:	0f a8                	push   %gs
    13a8:	89 d6                	mov    %edx,%esi
    13aa:	66 8c d2             	mov    %ss,%dx
    13ad:	8e da                	mov    %edx,%ds
    13af:	8e c2                	mov    %edx,%es
    13b1:	8e e2                	mov    %edx,%fs
    13b3:	89 f2                	mov    %esi,%edx
    13b5:	89 e6                	mov    %esp,%esi
    13b7:	ff 05 a0 93 04 00    	incl   0x493a0
    13bd:	83 3d a0 93 04 00 00 	cmpl   $0x0,0x493a0
    13c4:	75 0d                	jne    13d3 <save.1>
    13c6:	bc a0 ff 00 00       	mov    $0xffa0,%esp
    13cb:	68 fb 13 00 00       	push   $0x13fb
    13d0:	ff 66 30             	jmp    *0x30(%esi)

000013d3 <save.1>:
    13d3:	68 0f 14 00 00       	push   $0x140f
    13d8:	ff 66 30             	jmp    *0x30(%esi)

000013db <sys_call>:
    13db:	e8 c1 ff ff ff       	call   13a1 <save>
    13e0:	fb                   	sti    
    13e1:	56                   	push   %esi
    13e2:	ff 35 c0 b2 04 00    	pushl  0x4b2c0
    13e8:	52                   	push   %edx
    13e9:	51                   	push   %ecx
    13ea:	53                   	push   %ebx
    13eb:	ff 14 85 78 f7 00 00 	call   *0xf778(,%eax,4)
    13f2:	83 c4 10             	add    $0x10,%esp
    13f5:	5e                   	pop    %esi
    13f6:	89 46 2c             	mov    %eax,0x2c(%esi)
    13f9:	fa                   	cli    
    13fa:	c3                   	ret    

000013fb <restart>:
    13fb:	8b 25 c0 b2 04 00    	mov    0x4b2c0,%esp
    1401:	0f 00 54 24 48       	lldt   0x48(%esp)
    1406:	8d 44 24 48          	lea    0x48(%esp),%eax
    140a:	a3 64 a4 04 00       	mov    %eax,0x4a464

0000140f <restart_reenter>:
    140f:	ff 0d a0 93 04 00    	decl   0x493a0
    1415:	0f a9                	pop    %gs
    1417:	0f a1                	pop    %fs
    1419:	07                   	pop    %es
    141a:	1f                   	pop    %ds
    141b:	61                   	popa   
    141c:	83 c4 04             	add    $0x4,%esp
    141f:	cf                   	iret   

00001420 <sendrec>:
    1420:	53                   	push   %ebx
    1421:	51                   	push   %ecx
    1422:	52                   	push   %edx
    1423:	b8 01 00 00 00       	mov    $0x1,%eax
    1428:	8b 5c 24 10          	mov    0x10(%esp),%ebx
    142c:	8b 4c 24 14          	mov    0x14(%esp),%ecx
    1430:	8b 54 24 18          	mov    0x18(%esp),%edx
    1434:	cd 90                	int    $0x90
    1436:	5a                   	pop    %edx
    1437:	59                   	pop    %ecx
    1438:	5b                   	pop    %ebx
    1439:	c3                   	ret    

0000143a <printx>:
    143a:	52                   	push   %edx
    143b:	b8 00 00 00 00       	mov    $0x0,%eax
    1440:	8b 54 24 08          	mov    0x8(%esp),%edx
    1444:	cd 90                	int    $0x90
    1446:	5a                   	pop    %edx
    1447:	c3                   	ret    

00001448 <cstart>:
    1448:	55                   	push   %ebp
    1449:	89 e5                	mov    %esp,%ebp
    144b:	83 ec 18             	sub    $0x18,%esp
    144e:	83 ec 0c             	sub    $0xc,%esp
    1451:	68 a0 a7 00 00       	push   $0xa7a0
    1456:	e8 c5 51 00 00       	call   6620 <disp_str>
    145b:	83 c4 10             	add    $0x10,%esp
    145e:	b8 2c a8 04 00       	mov    $0x4a82c,%eax
    1463:	0f b7 00             	movzwl (%eax),%eax
    1466:	0f b7 c0             	movzwl %ax,%eax
    1469:	83 c0 01             	add    $0x1,%eax
    146c:	ba 2e a8 04 00       	mov    $0x4a82e,%edx
    1471:	8b 12                	mov    (%edx),%edx
    1473:	83 ec 04             	sub    $0x4,%esp
    1476:	50                   	push   %eax
    1477:	52                   	push   %edx
    1478:	68 c0 93 04 00       	push   $0x493c0
    147d:	e8 5e 54 00 00       	call   68e0 <memcpy>
    1482:	83 c4 10             	add    $0x10,%esp
    1485:	c7 45 f4 2c a8 04 00 	movl   $0x4a82c,-0xc(%ebp)
    148c:	c7 45 f0 2e a8 04 00 	movl   $0x4a82e,-0x10(%ebp)
    1493:	8b 45 f4             	mov    -0xc(%ebp),%eax
    1496:	66 c7 00 ff 03       	movw   $0x3ff,(%eax)
    149b:	ba c0 93 04 00       	mov    $0x493c0,%edx
    14a0:	8b 45 f0             	mov    -0x10(%ebp),%eax
    14a3:	89 10                	mov    %edx,(%eax)
    14a5:	c7 45 ec 80 08 01 00 	movl   $0x10880,-0x14(%ebp)
    14ac:	c7 45 e8 82 08 01 00 	movl   $0x10882,-0x18(%ebp)
    14b3:	8b 45 ec             	mov    -0x14(%ebp),%eax
    14b6:	66 c7 00 ff 07       	movw   $0x7ff,(%eax)
    14bb:	ba 40 a8 04 00       	mov    $0x4a840,%edx
    14c0:	8b 45 e8             	mov    -0x18(%ebp),%eax
    14c3:	89 10                	mov    %edx,(%eax)
    14c5:	e8 e7 21 00 00       	call   36b1 <init_prot>
    14ca:	83 ec 0c             	sub    $0xc,%esp
    14cd:	68 ca a7 00 00       	push   $0xa7ca
    14d2:	e8 49 51 00 00       	call   6620 <disp_str>
    14d7:	83 c4 10             	add    $0x10,%esp
    14da:	90                   	nop
    14db:	c9                   	leave  
    14dc:	c3                   	ret    

000014dd <kernel_main>:
    14dd:	55                   	push   %ebp
    14de:	89 e5                	mov    %esp,%ebp
    14e0:	83 ec 28             	sub    $0x28,%esp
    14e3:	83 ec 0c             	sub    $0xc,%esp
    14e6:	68 e8 a7 00 00       	push   $0xa7e8
    14eb:	e8 30 51 00 00       	call   6620 <disp_str>
    14f0:	83 c4 10             	add    $0x10,%esp
    14f3:	c7 45 f0 e0 b2 04 00 	movl   $0x4b2e0,-0x10(%ebp)
    14fa:	c7 45 ec a0 93 04 00 	movl   $0x493a0,-0x14(%ebp)
    1501:	66 c7 45 ea 28 00    	movw   $0x28,-0x16(%ebp)
    1507:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
    150e:	e9 11 02 00 00       	jmp    1724 <kernel_main+0x247>
    1513:	83 7d e0 03          	cmpl   $0x3,-0x20(%ebp)
    1517:	7f 2d                	jg     1546 <kernel_main+0x69>
    1519:	8b 55 e0             	mov    -0x20(%ebp),%edx
    151c:	89 d0                	mov    %edx,%eax
    151e:	c1 e0 02             	shl    $0x2,%eax
    1521:	01 d0                	add    %edx,%eax
    1523:	c1 e0 03             	shl    $0x3,%eax
    1526:	05 60 f6 00 00       	add    $0xf660,%eax
    152b:	89 45 f4             	mov    %eax,-0xc(%ebp)
    152e:	c6 45 e9 01          	movb   $0x1,-0x17(%ebp)
    1532:	c6 45 e8 01          	movb   $0x1,-0x18(%ebp)
    1536:	c7 45 e4 02 12 00 00 	movl   $0x1202,-0x1c(%ebp)
    153d:	c7 45 d8 0f 00 00 00 	movl   $0xf,-0x28(%ebp)
    1544:	eb 30                	jmp    1576 <kernel_main+0x99>
    1546:	8b 55 e0             	mov    -0x20(%ebp),%edx
    1549:	89 d0                	mov    %edx,%eax
    154b:	c1 e0 02             	shl    $0x2,%eax
    154e:	01 d0                	add    %edx,%eax
    1550:	c1 e0 03             	shl    $0x3,%eax
    1553:	2d a0 00 00 00       	sub    $0xa0,%eax
    1558:	05 00 f7 00 00       	add    $0xf700,%eax
    155d:	89 45 f4             	mov    %eax,-0xc(%ebp)
    1560:	c6 45 e9 03          	movb   $0x3,-0x17(%ebp)
    1564:	c6 45 e8 03          	movb   $0x3,-0x18(%ebp)
    1568:	c7 45 e4 02 02 00 00 	movl   $0x202,-0x1c(%ebp)
    156f:	c7 45 d8 05 00 00 00 	movl   $0x5,-0x28(%ebp)
    1576:	8b 45 f4             	mov    -0xc(%ebp),%eax
    1579:	8d 50 08             	lea    0x8(%eax),%edx
    157c:	8b 45 f0             	mov    -0x10(%ebp),%eax
    157f:	83 c0 68             	add    $0x68,%eax
    1582:	83 ec 08             	sub    $0x8,%esp
    1585:	52                   	push   %edx
    1586:	50                   	push   %eax
    1587:	e8 9e 53 00 00       	call   692a <strcpy>
    158c:	83 c4 10             	add    $0x10,%esp
    158f:	8b 55 e0             	mov    -0x20(%ebp),%edx
    1592:	8b 45 f0             	mov    -0x10(%ebp),%eax
    1595:	89 50 64             	mov    %edx,0x64(%eax)
    1598:	8b 45 f0             	mov    -0x10(%ebp),%eax
    159b:	0f b7 55 ea          	movzwl -0x16(%ebp),%edx
    159f:	66 89 50 48          	mov    %dx,0x48(%eax)
    15a3:	8b 45 f0             	mov    -0x10(%ebp),%eax
    15a6:	83 c0 4a             	add    $0x4a,%eax
    15a9:	83 ec 04             	sub    $0x4,%esp
    15ac:	6a 08                	push   $0x8
    15ae:	68 c8 93 04 00       	push   $0x493c8
    15b3:	50                   	push   %eax
    15b4:	e8 27 53 00 00       	call   68e0 <memcpy>
    15b9:	83 c4 10             	add    $0x10,%esp
    15bc:	0f b6 45 e9          	movzbl -0x17(%ebp),%eax
    15c0:	c1 e0 05             	shl    $0x5,%eax
    15c3:	83 c8 98             	or     $0xffffff98,%eax
    15c6:	89 c2                	mov    %eax,%edx
    15c8:	8b 45 f0             	mov    -0x10(%ebp),%eax
    15cb:	88 50 4f             	mov    %dl,0x4f(%eax)
    15ce:	8b 45 f0             	mov    -0x10(%ebp),%eax
    15d1:	83 c0 52             	add    $0x52,%eax
    15d4:	83 ec 04             	sub    $0x4,%esp
    15d7:	6a 08                	push   $0x8
    15d9:	68 d0 93 04 00       	push   $0x493d0
    15de:	50                   	push   %eax
    15df:	e8 fc 52 00 00       	call   68e0 <memcpy>
    15e4:	83 c4 10             	add    $0x10,%esp
    15e7:	0f b6 45 e9          	movzbl -0x17(%ebp),%eax
    15eb:	c1 e0 05             	shl    $0x5,%eax
    15ee:	83 c8 92             	or     $0xffffff92,%eax
    15f1:	89 c2                	mov    %eax,%edx
    15f3:	8b 45 f0             	mov    -0x10(%ebp),%eax
    15f6:	88 50 57             	mov    %dl,0x57(%eax)
    15f9:	0f b6 45 e8          	movzbl -0x18(%ebp),%eax
    15fd:	83 c8 04             	or     $0x4,%eax
    1600:	0f b6 d0             	movzbl %al,%edx
    1603:	8b 45 f0             	mov    -0x10(%ebp),%eax
    1606:	89 50 38             	mov    %edx,0x38(%eax)
    1609:	0f b6 45 e8          	movzbl -0x18(%ebp),%eax
    160d:	83 c8 0c             	or     $0xc,%eax
    1610:	0f b6 d0             	movzbl %al,%edx
    1613:	8b 45 f0             	mov    -0x10(%ebp),%eax
    1616:	89 50 0c             	mov    %edx,0xc(%eax)
    1619:	0f b6 45 e8          	movzbl -0x18(%ebp),%eax
    161d:	83 c8 0c             	or     $0xc,%eax
    1620:	0f b6 d0             	movzbl %al,%edx
    1623:	8b 45 f0             	mov    -0x10(%ebp),%eax
    1626:	89 50 08             	mov    %edx,0x8(%eax)
    1629:	0f b6 45 e8          	movzbl -0x18(%ebp),%eax
    162d:	83 c8 0c             	or     $0xc,%eax
    1630:	0f b6 d0             	movzbl %al,%edx
    1633:	8b 45 f0             	mov    -0x10(%ebp),%eax
    1636:	89 50 04             	mov    %edx,0x4(%eax)
    1639:	0f b6 45 e8          	movzbl -0x18(%ebp),%eax
    163d:	83 c8 0c             	or     $0xc,%eax
    1640:	0f b6 d0             	movzbl %al,%edx
    1643:	8b 45 f0             	mov    -0x10(%ebp),%eax
    1646:	89 50 44             	mov    %edx,0x44(%eax)
    1649:	0f b6 45 e8          	movzbl -0x18(%ebp),%eax
    164d:	83 c8 18             	or     $0x18,%eax
    1650:	0f b6 d0             	movzbl %al,%edx
    1653:	8b 45 f0             	mov    -0x10(%ebp),%eax
    1656:	89 10                	mov    %edx,(%eax)
    1658:	8b 45 f4             	mov    -0xc(%ebp),%eax
    165b:	8b 00                	mov    (%eax),%eax
    165d:	89 c2                	mov    %eax,%edx
    165f:	8b 45 f0             	mov    -0x10(%ebp),%eax
    1662:	89 50 34             	mov    %edx,0x34(%eax)
    1665:	8b 55 ec             	mov    -0x14(%ebp),%edx
    1668:	8b 45 f0             	mov    -0x10(%ebp),%eax
    166b:	89 50 40             	mov    %edx,0x40(%eax)
    166e:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    1671:	8b 45 f0             	mov    -0x10(%ebp),%eax
    1674:	89 50 3c             	mov    %edx,0x3c(%eax)
    1677:	8b 45 f0             	mov    -0x10(%ebp),%eax
    167a:	c7 40 78 00 00 00 00 	movl   $0x0,0x78(%eax)
    1681:	8b 45 f0             	mov    -0x10(%ebp),%eax
    1684:	c7 40 7c 00 00 00 00 	movl   $0x0,0x7c(%eax)
    168b:	8b 45 f0             	mov    -0x10(%ebp),%eax
    168e:	c7 80 80 00 00 00 1b 	movl   $0x1b,0x80(%eax)
    1695:	00 00 00 
    1698:	8b 45 f0             	mov    -0x10(%ebp),%eax
    169b:	c7 80 84 00 00 00 1b 	movl   $0x1b,0x84(%eax)
    16a2:	00 00 00 
    16a5:	8b 45 f0             	mov    -0x10(%ebp),%eax
    16a8:	c7 80 88 00 00 00 00 	movl   $0x0,0x88(%eax)
    16af:	00 00 00 
    16b2:	8b 45 f0             	mov    -0x10(%ebp),%eax
    16b5:	c7 80 8c 00 00 00 00 	movl   $0x0,0x8c(%eax)
    16bc:	00 00 00 
    16bf:	8b 45 f0             	mov    -0x10(%ebp),%eax
    16c2:	c7 80 90 00 00 00 00 	movl   $0x0,0x90(%eax)
    16c9:	00 00 00 
    16cc:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
    16d3:	eb 15                	jmp    16ea <kernel_main+0x20d>
    16d5:	8b 45 f0             	mov    -0x10(%ebp),%eax
    16d8:	8b 55 dc             	mov    -0x24(%ebp),%edx
    16db:	83 c2 24             	add    $0x24,%edx
    16de:	c7 44 90 04 00 00 00 	movl   $0x0,0x4(%eax,%edx,4)
    16e5:	00 
    16e6:	83 45 dc 01          	addl   $0x1,-0x24(%ebp)
    16ea:	83 7d dc 3f          	cmpl   $0x3f,-0x24(%ebp)
    16ee:	7e e5                	jle    16d5 <kernel_main+0x1f8>
    16f0:	8b 45 f0             	mov    -0x10(%ebp),%eax
    16f3:	8b 55 d8             	mov    -0x28(%ebp),%edx
    16f6:	89 50 60             	mov    %edx,0x60(%eax)
    16f9:	8b 45 f0             	mov    -0x10(%ebp),%eax
    16fc:	8b 50 60             	mov    0x60(%eax),%edx
    16ff:	8b 45 f0             	mov    -0x10(%ebp),%eax
    1702:	89 50 5c             	mov    %edx,0x5c(%eax)
    1705:	8b 45 f4             	mov    -0xc(%ebp),%eax
    1708:	8b 40 04             	mov    0x4(%eax),%eax
    170b:	f7 d8                	neg    %eax
    170d:	01 45 ec             	add    %eax,-0x14(%ebp)
    1710:	81 45 f0 94 01 00 00 	addl   $0x194,-0x10(%ebp)
    1717:	83 45 f4 28          	addl   $0x28,-0xc(%ebp)
    171b:	66 83 45 ea 08       	addw   $0x8,-0x16(%ebp)
    1720:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
    1724:	83 7d e0 06          	cmpl   $0x6,-0x20(%ebp)
    1728:	0f 8e e5 fd ff ff    	jle    1513 <kernel_main+0x36>
    172e:	c7 05 a0 93 04 00 00 	movl   $0x0,0x493a0
    1735:	00 00 00 
    1738:	c7 05 20 b2 04 00 00 	movl   $0x0,0x4b220
    173f:	00 00 00 
    1742:	c7 05 c0 b2 04 00 e0 	movl   $0x4b2e0,0x4b2c0
    1749:	b2 04 00 
    174c:	e8 64 05 00 00       	call   1cb5 <init_clock>
    1751:	e8 21 06 00 00       	call   1d77 <init_keyboard>
    1756:	e8 a0 fc ff ff       	call   13fb <restart>
    175b:	eb fe                	jmp    175b <kernel_main+0x27e>

0000175d <get_ticks>:
    175d:	55                   	push   %ebp
    175e:	89 e5                	mov    %esp,%ebp
    1760:	83 ec 38             	sub    $0x38,%esp
    1763:	83 ec 0c             	sub    $0xc,%esp
    1766:	8d 45 c8             	lea    -0x38(%ebp),%eax
    1769:	50                   	push   %eax
    176a:	e8 68 28 00 00       	call   3fd7 <reset_msg>
    176f:	83 c4 10             	add    $0x10,%esp
    1772:	c7 45 cc 02 00 00 00 	movl   $0x2,-0x34(%ebp)
    1779:	83 ec 04             	sub    $0x4,%esp
    177c:	8d 45 c8             	lea    -0x38(%ebp),%eax
    177f:	50                   	push   %eax
    1780:	6a 01                	push   $0x1
    1782:	6a 03                	push   $0x3
    1784:	e8 e6 26 00 00       	call   3e6f <send_recv>
    1789:	83 c4 10             	add    $0x10,%esp
    178c:	8b 45 d0             	mov    -0x30(%ebp),%eax
    178f:	c9                   	leave  
    1790:	c3                   	ret    

00001791 <TestA>:
    1791:	55                   	push   %ebp
    1792:	89 e5                	mov    %esp,%ebp
    1794:	53                   	push   %ebx
    1795:	83 ec 54             	sub    $0x54,%esp
    1798:	89 e0                	mov    %esp,%eax
    179a:	89 c3                	mov    %eax,%ebx
    179c:	c7 45 d3 62 6c 61 68 	movl   $0x68616c62,-0x2d(%ebp)
    17a3:	c7 45 d7 00 00 00 00 	movl   $0x0,-0x29(%ebp)
    17aa:	c7 45 db 00 00 00 00 	movl   $0x0,-0x25(%ebp)
    17b1:	c6 45 df 00          	movb   $0x0,-0x21(%ebp)
    17b5:	c7 45 cd 61 62 63 64 	movl   $0x64636261,-0x33(%ebp)
    17bc:	66 c7 45 d1 65 00    	movw   $0x65,-0x2f(%ebp)
    17c2:	c7 45 f0 03 00 00 00 	movl   $0x3,-0x10(%ebp)
    17c9:	8b 45 f0             	mov    -0x10(%ebp),%eax
    17cc:	83 e8 01             	sub    $0x1,%eax
    17cf:	89 45 ec             	mov    %eax,-0x14(%ebp)
    17d2:	8b 45 f0             	mov    -0x10(%ebp),%eax
    17d5:	ba 10 00 00 00       	mov    $0x10,%edx
    17da:	83 ea 01             	sub    $0x1,%edx
    17dd:	01 d0                	add    %edx,%eax
    17df:	b9 10 00 00 00       	mov    $0x10,%ecx
    17e4:	ba 00 00 00 00       	mov    $0x0,%edx
    17e9:	f7 f1                	div    %ecx
    17eb:	6b c0 10             	imul   $0x10,%eax,%eax
    17ee:	29 c4                	sub    %eax,%esp
    17f0:	89 e0                	mov    %esp,%eax
    17f2:	83 c0 00             	add    $0x0,%eax
    17f5:	89 45 e8             	mov    %eax,-0x18(%ebp)
    17f8:	83 ec 0c             	sub    $0xc,%esp
    17fb:	8d 45 cd             	lea    -0x33(%ebp),%eax
    17fe:	50                   	push   %eax
    17ff:	e8 3e 51 00 00       	call   6942 <strlen>
    1804:	83 c4 10             	add    $0x10,%esp
    1807:	39 45 f0             	cmp    %eax,-0x10(%ebp)
    180a:	7e 1c                	jle    1828 <TestA+0x97>
    180c:	68 8c 00 00 00       	push   $0x8c
    1811:	68 08 a8 00 00       	push   $0xa808
    1816:	68 08 a8 00 00       	push   $0xa808
    181b:	68 16 a8 00 00       	push   $0xa816
    1820:	e8 8e 52 00 00       	call   6ab3 <assertion_failure>
    1825:	83 c4 10             	add    $0x10,%esp
    1828:	83 ec 08             	sub    $0x8,%esp
    182b:	6a 03                	push   $0x3
    182d:	8d 45 d3             	lea    -0x2d(%ebp),%eax
    1830:	50                   	push   %eax
    1831:	e8 b6 52 00 00       	call   6aec <open>
    1836:	83 c4 10             	add    $0x10,%esp
    1839:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    183c:	83 7d e4 ff          	cmpl   $0xffffffff,-0x1c(%ebp)
    1840:	75 1c                	jne    185e <TestA+0xcd>
    1842:	68 90 00 00 00       	push   $0x90
    1847:	68 08 a8 00 00       	push   $0xa808
    184c:	68 08 a8 00 00       	push   $0xa808
    1851:	68 2f a8 00 00       	push   $0xa82f
    1856:	e8 58 52 00 00       	call   6ab3 <assertion_failure>
    185b:	83 c4 10             	add    $0x10,%esp
    185e:	83 ec 04             	sub    $0x4,%esp
    1861:	ff 75 e4             	pushl  -0x1c(%ebp)
    1864:	8d 45 d3             	lea    -0x2d(%ebp),%eax
    1867:	50                   	push   %eax
    1868:	68 38 a8 00 00       	push   $0xa838
    186d:	e8 55 4a 00 00       	call   62c7 <printl>
    1872:	83 c4 10             	add    $0x10,%esp
    1875:	83 ec 0c             	sub    $0xc,%esp
    1878:	8d 45 cd             	lea    -0x33(%ebp),%eax
    187b:	50                   	push   %eax
    187c:	e8 c1 50 00 00       	call   6942 <strlen>
    1881:	83 c4 10             	add    $0x10,%esp
    1884:	83 ec 04             	sub    $0x4,%esp
    1887:	50                   	push   %eax
    1888:	8d 45 cd             	lea    -0x33(%ebp),%eax
    188b:	50                   	push   %eax
    188c:	ff 75 e4             	pushl  -0x1c(%ebp)
    188f:	e8 f2 52 00 00       	call   6b86 <write>
    1894:	83 c4 10             	add    $0x10,%esp
    1897:	89 45 e0             	mov    %eax,-0x20(%ebp)
    189a:	83 ec 0c             	sub    $0xc,%esp
    189d:	8d 45 cd             	lea    -0x33(%ebp),%eax
    18a0:	50                   	push   %eax
    18a1:	e8 9c 50 00 00       	call   6942 <strlen>
    18a6:	83 c4 10             	add    $0x10,%esp
    18a9:	39 45 e0             	cmp    %eax,-0x20(%ebp)
    18ac:	74 1c                	je     18ca <TestA+0x139>
    18ae:	68 95 00 00 00       	push   $0x95
    18b3:	68 08 a8 00 00       	push   $0xa808
    18b8:	68 08 a8 00 00       	push   $0xa808
    18bd:	68 52 a8 00 00       	push   $0xa852
    18c2:	e8 ec 51 00 00       	call   6ab3 <assertion_failure>
    18c7:	83 c4 10             	add    $0x10,%esp
    18ca:	83 ec 0c             	sub    $0xc,%esp
    18cd:	ff 75 e4             	pushl  -0x1c(%ebp)
    18d0:	e8 e8 52 00 00       	call   6bbd <close>
    18d5:	83 c4 10             	add    $0x10,%esp
    18d8:	83 ec 08             	sub    $0x8,%esp
    18db:	6a 02                	push   $0x2
    18dd:	8d 45 d3             	lea    -0x2d(%ebp),%eax
    18e0:	50                   	push   %eax
    18e1:	e8 06 52 00 00       	call   6aec <open>
    18e6:	83 c4 10             	add    $0x10,%esp
    18e9:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    18ec:	83 7d e4 ff          	cmpl   $0xffffffff,-0x1c(%ebp)
    18f0:	75 1c                	jne    190e <TestA+0x17d>
    18f2:	68 9c 00 00 00       	push   $0x9c
    18f7:	68 08 a8 00 00       	push   $0xa808
    18fc:	68 08 a8 00 00       	push   $0xa808
    1901:	68 2f a8 00 00       	push   $0xa82f
    1906:	e8 a8 51 00 00       	call   6ab3 <assertion_failure>
    190b:	83 c4 10             	add    $0x10,%esp
    190e:	83 ec 08             	sub    $0x8,%esp
    1911:	ff 75 e4             	pushl  -0x1c(%ebp)
    1914:	68 64 a8 00 00       	push   $0xa864
    1919:	e8 a9 49 00 00       	call   62c7 <printl>
    191e:	83 c4 10             	add    $0x10,%esp
    1921:	8b 45 e8             	mov    -0x18(%ebp),%eax
    1924:	83 ec 04             	sub    $0x4,%esp
    1927:	ff 75 f0             	pushl  -0x10(%ebp)
    192a:	50                   	push   %eax
    192b:	ff 75 e4             	pushl  -0x1c(%ebp)
    192e:	e8 1c 52 00 00       	call   6b4f <read>
    1933:	83 c4 10             	add    $0x10,%esp
    1936:	89 45 e0             	mov    %eax,-0x20(%ebp)
    1939:	8b 45 e0             	mov    -0x20(%ebp),%eax
    193c:	3b 45 f0             	cmp    -0x10(%ebp),%eax
    193f:	74 1c                	je     195d <TestA+0x1cc>
    1941:	68 a1 00 00 00       	push   $0xa1
    1946:	68 08 a8 00 00       	push   $0xa808
    194b:	68 08 a8 00 00       	push   $0xa808
    1950:	68 79 a8 00 00       	push   $0xa879
    1955:	e8 59 51 00 00       	call   6ab3 <assertion_failure>
    195a:	83 c4 10             	add    $0x10,%esp
    195d:	8b 55 e8             	mov    -0x18(%ebp),%edx
    1960:	8b 45 e0             	mov    -0x20(%ebp),%eax
    1963:	01 d0                	add    %edx,%eax
    1965:	c6 00 00             	movb   $0x0,(%eax)
    1968:	8b 45 e8             	mov    -0x18(%ebp),%eax
    196b:	83 ec 04             	sub    $0x4,%esp
    196e:	50                   	push   %eax
    196f:	ff 75 e0             	pushl  -0x20(%ebp)
    1972:	68 87 a8 00 00       	push   $0xa887
    1977:	e8 4b 49 00 00       	call   62c7 <printl>
    197c:	83 c4 10             	add    $0x10,%esp
    197f:	83 ec 0c             	sub    $0xc,%esp
    1982:	ff 75 e4             	pushl  -0x1c(%ebp)
    1985:	e8 33 52 00 00       	call   6bbd <close>
    198a:	83 c4 10             	add    $0x10,%esp
    198d:	c7 45 c0 9a a8 00 00 	movl   $0xa89a,-0x40(%ebp)
    1994:	c7 45 c4 9f a8 00 00 	movl   $0xa89f,-0x3c(%ebp)
    199b:	c7 45 c8 a4 a8 00 00 	movl   $0xa8a4,-0x38(%ebp)
    19a2:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    19a9:	eb 67                	jmp    1a12 <TestA+0x281>
    19ab:	8b 45 f4             	mov    -0xc(%ebp),%eax
    19ae:	8b 44 85 c0          	mov    -0x40(%ebp,%eax,4),%eax
    19b2:	83 ec 08             	sub    $0x8,%esp
    19b5:	6a 03                	push   $0x3
    19b7:	50                   	push   %eax
    19b8:	e8 2f 51 00 00       	call   6aec <open>
    19bd:	83 c4 10             	add    $0x10,%esp
    19c0:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    19c3:	83 7d e4 ff          	cmpl   $0xffffffff,-0x1c(%ebp)
    19c7:	75 1c                	jne    19e5 <TestA+0x254>
    19c9:	68 ad 00 00 00       	push   $0xad
    19ce:	68 08 a8 00 00       	push   $0xa808
    19d3:	68 08 a8 00 00       	push   $0xa808
    19d8:	68 2f a8 00 00       	push   $0xa82f
    19dd:	e8 d1 50 00 00       	call   6ab3 <assertion_failure>
    19e2:	83 c4 10             	add    $0x10,%esp
    19e5:	8b 45 f4             	mov    -0xc(%ebp),%eax
    19e8:	8b 44 85 c0          	mov    -0x40(%ebp,%eax,4),%eax
    19ec:	83 ec 04             	sub    $0x4,%esp
    19ef:	ff 75 e4             	pushl  -0x1c(%ebp)
    19f2:	50                   	push   %eax
    19f3:	68 38 a8 00 00       	push   $0xa838
    19f8:	e8 ca 48 00 00       	call   62c7 <printl>
    19fd:	83 c4 10             	add    $0x10,%esp
    1a00:	83 ec 0c             	sub    $0xc,%esp
    1a03:	ff 75 e4             	pushl  -0x1c(%ebp)
    1a06:	e8 b2 51 00 00       	call   6bbd <close>
    1a0b:	83 c4 10             	add    $0x10,%esp
    1a0e:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    1a12:	8b 45 f4             	mov    -0xc(%ebp),%eax
    1a15:	83 f8 02             	cmp    $0x2,%eax
    1a18:	76 91                	jbe    19ab <TestA+0x21a>
    1a1a:	c7 45 b0 9f a8 00 00 	movl   $0xa89f,-0x50(%ebp)
    1a21:	c7 45 b4 9a a8 00 00 	movl   $0xa89a,-0x4c(%ebp)
    1a28:	c7 45 b8 a4 a8 00 00 	movl   $0xa8a4,-0x48(%ebp)
    1a2f:	c7 45 bc a9 a8 00 00 	movl   $0xa8a9,-0x44(%ebp)
    1a36:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    1a3d:	eb 4d                	jmp    1a8c <TestA+0x2fb>
    1a3f:	8b 45 f4             	mov    -0xc(%ebp),%eax
    1a42:	8b 44 85 b0          	mov    -0x50(%ebp,%eax,4),%eax
    1a46:	83 ec 0c             	sub    $0xc,%esp
    1a49:	50                   	push   %eax
    1a4a:	e8 99 51 00 00       	call   6be8 <unlink>
    1a4f:	83 c4 10             	add    $0x10,%esp
    1a52:	85 c0                	test   %eax,%eax
    1a54:	75 1a                	jne    1a70 <TestA+0x2df>
    1a56:	8b 45 f4             	mov    -0xc(%ebp),%eax
    1a59:	8b 44 85 b0          	mov    -0x50(%ebp,%eax,4),%eax
    1a5d:	83 ec 08             	sub    $0x8,%esp
    1a60:	50                   	push   %eax
    1a61:	68 b3 a8 00 00       	push   $0xa8b3
    1a66:	e8 5c 48 00 00       	call   62c7 <printl>
    1a6b:	83 c4 10             	add    $0x10,%esp
    1a6e:	eb 18                	jmp    1a88 <TestA+0x2f7>
    1a70:	8b 45 f4             	mov    -0xc(%ebp),%eax
    1a73:	8b 44 85 b0          	mov    -0x50(%ebp,%eax,4),%eax
    1a77:	83 ec 08             	sub    $0x8,%esp
    1a7a:	50                   	push   %eax
    1a7b:	68 c5 a8 00 00       	push   $0xa8c5
    1a80:	e8 42 48 00 00       	call   62c7 <printl>
    1a85:	83 c4 10             	add    $0x10,%esp
    1a88:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    1a8c:	8b 45 f4             	mov    -0xc(%ebp),%eax
    1a8f:	83 f8 03             	cmp    $0x3,%eax
    1a92:	76 ab                	jbe    1a3f <TestA+0x2ae>
    1a94:	83 ec 0c             	sub    $0xc,%esp
    1a97:	68 e0 a8 00 00       	push   $0xa8e0
    1a9c:	e8 f7 4f 00 00       	call   6a98 <spin>
    1aa1:	83 c4 10             	add    $0x10,%esp
    1aa4:	89 dc                	mov    %ebx,%esp
    1aa6:	90                   	nop
    1aa7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1aaa:	c9                   	leave  
    1aab:	c3                   	ret    

00001aac <TestB>:
    1aac:	55                   	push   %ebp
    1aad:	89 e5                	mov    %esp,%ebp
    1aaf:	81 ec a8 00 00 00    	sub    $0xa8,%esp
    1ab5:	c7 45 e2 2f 64 65 76 	movl   $0x7665642f,-0x1e(%ebp)
    1abc:	c7 45 e6 5f 74 74 79 	movl   $0x7974745f,-0x1a(%ebp)
    1ac3:	66 c7 45 ea 31 00    	movw   $0x31,-0x16(%ebp)
    1ac9:	83 ec 08             	sub    $0x8,%esp
    1acc:	6a 02                	push   $0x2
    1ace:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    1ad1:	50                   	push   %eax
    1ad2:	e8 15 50 00 00       	call   6aec <open>
    1ad7:	83 c4 10             	add    $0x10,%esp
    1ada:	89 45 f4             	mov    %eax,-0xc(%ebp)
    1add:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    1ae1:	74 1c                	je     1aff <TestB+0x53>
    1ae3:	68 c7 00 00 00       	push   $0xc7
    1ae8:	68 08 a8 00 00       	push   $0xa808
    1aed:	68 08 a8 00 00       	push   $0xa808
    1af2:	68 e6 a8 00 00       	push   $0xa8e6
    1af7:	e8 b7 4f 00 00       	call   6ab3 <assertion_failure>
    1afc:	83 c4 10             	add    $0x10,%esp
    1aff:	83 ec 08             	sub    $0x8,%esp
    1b02:	6a 02                	push   $0x2
    1b04:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    1b07:	50                   	push   %eax
    1b08:	e8 df 4f 00 00       	call   6aec <open>
    1b0d:	83 c4 10             	add    $0x10,%esp
    1b10:	89 45 f0             	mov    %eax,-0x10(%ebp)
    1b13:	83 7d f0 01          	cmpl   $0x1,-0x10(%ebp)
    1b17:	74 1c                	je     1b35 <TestB+0x89>
    1b19:	68 c9 00 00 00       	push   $0xc9
    1b1e:	68 08 a8 00 00       	push   $0xa808
    1b23:	68 08 a8 00 00       	push   $0xa808
    1b28:	68 f4 a8 00 00       	push   $0xa8f4
    1b2d:	e8 81 4f 00 00       	call   6ab3 <assertion_failure>
    1b32:	83 c4 10             	add    $0x10,%esp
    1b35:	83 ec 0c             	sub    $0xc,%esp
    1b38:	68 03 a9 00 00       	push   $0xa903
    1b3d:	e8 1a 47 00 00       	call   625c <printf>
    1b42:	83 c4 10             	add    $0x10,%esp
    1b45:	83 ec 04             	sub    $0x4,%esp
    1b48:	6a 46                	push   $0x46
    1b4a:	8d 85 62 ff ff ff    	lea    -0x9e(%ebp),%eax
    1b50:	50                   	push   %eax
    1b51:	ff 75 f4             	pushl  -0xc(%ebp)
    1b54:	e8 f6 4f 00 00       	call   6b4f <read>
    1b59:	83 c4 10             	add    $0x10,%esp
    1b5c:	89 45 ec             	mov    %eax,-0x14(%ebp)
    1b5f:	8d 95 62 ff ff ff    	lea    -0x9e(%ebp),%edx
    1b65:	8b 45 ec             	mov    -0x14(%ebp),%eax
    1b68:	01 d0                	add    %edx,%eax
    1b6a:	c6 00 00             	movb   $0x0,(%eax)
    1b6d:	83 ec 08             	sub    $0x8,%esp
    1b70:	68 06 a9 00 00       	push   $0xa906
    1b75:	8d 85 62 ff ff ff    	lea    -0x9e(%ebp),%eax
    1b7b:	50                   	push   %eax
    1b7c:	e8 49 4e 00 00       	call   69ca <strcmp>
    1b81:	83 c4 10             	add    $0x10,%esp
    1b84:	85 c0                	test   %eax,%eax
    1b86:	75 12                	jne    1b9a <TestB+0xee>
    1b88:	83 ec 0c             	sub    $0xc,%esp
    1b8b:	68 0c a9 00 00       	push   $0xa90c
    1b90:	e8 c7 46 00 00       	call   625c <printf>
    1b95:	83 c4 10             	add    $0x10,%esp
    1b98:	eb 9b                	jmp    1b35 <TestB+0x89>
    1b9a:	0f b6 85 62 ff ff ff 	movzbl -0x9e(%ebp),%eax
    1ba1:	84 c0                	test   %al,%al
    1ba3:	74 90                	je     1b35 <TestB+0x89>
    1ba5:	83 ec 08             	sub    $0x8,%esp
    1ba8:	8d 85 62 ff ff ff    	lea    -0x9e(%ebp),%eax
    1bae:	50                   	push   %eax
    1baf:	68 1a a9 00 00       	push   $0xa91a
    1bb4:	e8 a3 46 00 00       	call   625c <printf>
    1bb9:	83 c4 10             	add    $0x10,%esp
    1bbc:	e9 74 ff ff ff       	jmp    1b35 <TestB+0x89>

00001bc1 <TestC>:
    1bc1:	55                   	push   %ebp
    1bc2:	89 e5                	mov    %esp,%ebp
    1bc4:	90                   	nop
    1bc5:	5d                   	pop    %ebp
    1bc6:	c3                   	ret    

00001bc7 <panic>:
    1bc7:	55                   	push   %ebp
    1bc8:	89 e5                	mov    %esp,%ebp
    1bca:	81 ec 18 01 00 00    	sub    $0x118,%esp
    1bd0:	8d 45 0c             	lea    0xc(%ebp),%eax
    1bd3:	89 45 f4             	mov    %eax,-0xc(%ebp)
    1bd6:	8b 45 08             	mov    0x8(%ebp),%eax
    1bd9:	83 ec 04             	sub    $0x4,%esp
    1bdc:	ff 75 f4             	pushl  -0xc(%ebp)
    1bdf:	50                   	push   %eax
    1be0:	8d 85 f0 fe ff ff    	lea    -0x110(%ebp),%eax
    1be6:	50                   	push   %eax
    1be7:	e8 83 47 00 00       	call   636f <vsprintf>
    1bec:	83 c4 10             	add    $0x10,%esp
    1bef:	89 45 f0             	mov    %eax,-0x10(%ebp)
    1bf2:	83 ec 04             	sub    $0x4,%esp
    1bf5:	8d 85 f0 fe ff ff    	lea    -0x110(%ebp),%eax
    1bfb:	50                   	push   %eax
    1bfc:	6a 02                	push   $0x2
    1bfe:	68 20 a9 00 00       	push   $0xa920
    1c03:	e8 bf 46 00 00       	call   62c7 <printl>
    1c08:	83 c4 10             	add    $0x10,%esp
    1c0b:	0f 0b                	ud2    
    1c0d:	90                   	nop
    1c0e:	c9                   	leave  
    1c0f:	c3                   	ret    

00001c10 <clock_handler>:
    1c10:	55                   	push   %ebp
    1c11:	89 e5                	mov    %esp,%ebp
    1c13:	83 ec 08             	sub    $0x8,%esp
    1c16:	a1 20 b2 04 00       	mov    0x4b220,%eax
    1c1b:	83 c0 01             	add    $0x1,%eax
    1c1e:	a3 20 b2 04 00       	mov    %eax,0x4b220
    1c23:	a1 20 b2 04 00       	mov    0x4b220,%eax
    1c28:	3d cc ab ff 7f       	cmp    $0x7fffabcc,%eax
    1c2d:	7e 0a                	jle    1c39 <clock_handler+0x29>
    1c2f:	c7 05 20 b2 04 00 00 	movl   $0x0,0x4b220
    1c36:	00 00 00 
    1c39:	a1 c0 b2 04 00       	mov    0x4b2c0,%eax
    1c3e:	8b 40 5c             	mov    0x5c(%eax),%eax
    1c41:	85 c0                	test   %eax,%eax
    1c43:	74 0e                	je     1c53 <clock_handler+0x43>
    1c45:	a1 c0 b2 04 00       	mov    0x4b2c0,%eax
    1c4a:	8b 50 5c             	mov    0x5c(%eax),%edx
    1c4d:	83 ea 01             	sub    $0x1,%edx
    1c50:	89 50 5c             	mov    %edx,0x5c(%eax)
    1c53:	a1 28 a8 04 00       	mov    0x4a828,%eax
    1c58:	85 c0                	test   %eax,%eax
    1c5a:	74 0d                	je     1c69 <clock_handler+0x59>
    1c5c:	83 ec 0c             	sub    $0xc,%esp
    1c5f:	6a 00                	push   $0x0
    1c61:	e8 67 31 00 00       	call   4dcd <inform_int>
    1c66:	83 c4 10             	add    $0x10,%esp
    1c69:	a1 a0 93 04 00       	mov    0x493a0,%eax
    1c6e:	85 c0                	test   %eax,%eax
    1c70:	75 13                	jne    1c85 <clock_handler+0x75>
    1c72:	a1 c0 b2 04 00       	mov    0x4b2c0,%eax
    1c77:	8b 40 5c             	mov    0x5c(%eax),%eax
    1c7a:	85 c0                	test   %eax,%eax
    1c7c:	7f 0a                	jg     1c88 <clock_handler+0x78>
    1c7e:	e8 42 20 00 00       	call   3cc5 <schedule>
    1c83:	eb 04                	jmp    1c89 <clock_handler+0x79>
    1c85:	90                   	nop
    1c86:	eb 01                	jmp    1c89 <clock_handler+0x79>
    1c88:	90                   	nop
    1c89:	c9                   	leave  
    1c8a:	c3                   	ret    

00001c8b <milli_delay>:
    1c8b:	55                   	push   %ebp
    1c8c:	89 e5                	mov    %esp,%ebp
    1c8e:	83 ec 18             	sub    $0x18,%esp
    1c91:	e8 c7 fa ff ff       	call   175d <get_ticks>
    1c96:	89 45 f4             	mov    %eax,-0xc(%ebp)
    1c99:	90                   	nop
    1c9a:	e8 be fa ff ff       	call   175d <get_ticks>
    1c9f:	2b 45 f4             	sub    -0xc(%ebp),%eax
    1ca2:	89 c2                	mov    %eax,%edx
    1ca4:	89 d0                	mov    %edx,%eax
    1ca6:	c1 e0 02             	shl    $0x2,%eax
    1ca9:	01 d0                	add    %edx,%eax
    1cab:	01 c0                	add    %eax,%eax
    1cad:	39 45 08             	cmp    %eax,0x8(%ebp)
    1cb0:	7f e8                	jg     1c9a <milli_delay+0xf>
    1cb2:	90                   	nop
    1cb3:	c9                   	leave  
    1cb4:	c3                   	ret    

00001cb5 <init_clock>:
    1cb5:	55                   	push   %ebp
    1cb6:	89 e5                	mov    %esp,%ebp
    1cb8:	83 ec 08             	sub    $0x8,%esp
    1cbb:	83 ec 08             	sub    $0x8,%esp
    1cbe:	6a 34                	push   $0x34
    1cc0:	6a 43                	push   $0x43
    1cc2:	e8 d6 49 00 00       	call   669d <out_byte>
    1cc7:	83 c4 10             	add    $0x10,%esp
    1cca:	83 ec 08             	sub    $0x8,%esp
    1ccd:	68 9b 00 00 00       	push   $0x9b
    1cd2:	6a 40                	push   $0x40
    1cd4:	e8 c4 49 00 00       	call   669d <out_byte>
    1cd9:	83 c4 10             	add    $0x10,%esp
    1cdc:	83 ec 08             	sub    $0x8,%esp
    1cdf:	6a 2e                	push   $0x2e
    1ce1:	6a 40                	push   $0x40
    1ce3:	e8 b5 49 00 00       	call   669d <out_byte>
    1ce8:	83 c4 10             	add    $0x10,%esp
    1ceb:	83 ec 08             	sub    $0x8,%esp
    1cee:	68 10 1c 00 00       	push   $0x1c10
    1cf3:	6a 00                	push   $0x0
    1cf5:	e8 93 19 00 00       	call   368d <put_irq_handler>
    1cfa:	83 c4 10             	add    $0x10,%esp
    1cfd:	83 ec 0c             	sub    $0xc,%esp
    1d00:	6a 00                	push   $0x0
    1d02:	e8 07 4a 00 00       	call   670e <enable_irq>
    1d07:	83 c4 10             	add    $0x10,%esp
    1d0a:	90                   	nop
    1d0b:	c9                   	leave  
    1d0c:	c3                   	ret    

00001d0d <keyboard_handler>:
    1d0d:	55                   	push   %ebp
    1d0e:	89 e5                	mov    %esp,%ebp
    1d10:	83 ec 18             	sub    $0x18,%esp
    1d13:	83 ec 0c             	sub    $0xc,%esp
    1d16:	6a 60                	push   $0x60
    1d18:	e8 8c 49 00 00       	call   66a9 <in_byte>
    1d1d:	83 c4 10             	add    $0x10,%esp
    1d20:	88 45 f7             	mov    %al,-0x9(%ebp)
    1d23:	a1 a8 ff 00 00       	mov    0xffa8,%eax
    1d28:	83 f8 1f             	cmp    $0x1f,%eax
    1d2b:	7f 3d                	jg     1d6a <keyboard_handler+0x5d>
    1d2d:	a1 a0 ff 00 00       	mov    0xffa0,%eax
    1d32:	0f b6 55 f7          	movzbl -0x9(%ebp),%edx
    1d36:	88 10                	mov    %dl,(%eax)
    1d38:	a1 a0 ff 00 00       	mov    0xffa0,%eax
    1d3d:	83 c0 01             	add    $0x1,%eax
    1d40:	a3 a0 ff 00 00       	mov    %eax,0xffa0
    1d45:	a1 a0 ff 00 00       	mov    0xffa0,%eax
    1d4a:	ba cc ff 00 00       	mov    $0xffcc,%edx
    1d4f:	39 d0                	cmp    %edx,%eax
    1d51:	75 0a                	jne    1d5d <keyboard_handler+0x50>
    1d53:	c7 05 a0 ff 00 00 ac 	movl   $0xffac,0xffa0
    1d5a:	ff 00 00 
    1d5d:	a1 a8 ff 00 00       	mov    0xffa8,%eax
    1d62:	83 c0 01             	add    $0x1,%eax
    1d65:	a3 a8 ff 00 00       	mov    %eax,0xffa8
    1d6a:	c7 05 28 a8 04 00 01 	movl   $0x1,0x4a828
    1d71:	00 00 00 
    1d74:	90                   	nop
    1d75:	c9                   	leave  
    1d76:	c3                   	ret    

00001d77 <init_keyboard>:
    1d77:	55                   	push   %ebp
    1d78:	89 e5                	mov    %esp,%ebp
    1d7a:	83 ec 08             	sub    $0x8,%esp
    1d7d:	c7 05 a8 ff 00 00 00 	movl   $0x0,0xffa8
    1d84:	00 00 00 
    1d87:	c7 05 a4 ff 00 00 ac 	movl   $0xffac,0xffa4
    1d8e:	ff 00 00 
    1d91:	a1 a4 ff 00 00       	mov    0xffa4,%eax
    1d96:	a3 a0 ff 00 00       	mov    %eax,0xffa0
    1d9b:	c7 05 d4 ff 00 00 00 	movl   $0x0,0xffd4
    1da2:	00 00 00 
    1da5:	a1 d4 ff 00 00       	mov    0xffd4,%eax
    1daa:	a3 d0 ff 00 00       	mov    %eax,0xffd0
    1daf:	c7 05 dc ff 00 00 00 	movl   $0x0,0xffdc
    1db6:	00 00 00 
    1db9:	a1 dc ff 00 00       	mov    0xffdc,%eax
    1dbe:	a3 d8 ff 00 00       	mov    %eax,0xffd8
    1dc3:	c7 05 e4 ff 00 00 00 	movl   $0x0,0xffe4
    1dca:	00 00 00 
    1dcd:	a1 e4 ff 00 00       	mov    0xffe4,%eax
    1dd2:	a3 e0 ff 00 00       	mov    %eax,0xffe0
    1dd7:	c7 05 e8 ff 00 00 00 	movl   $0x0,0xffe8
    1dde:	00 00 00 
    1de1:	c7 05 ec ff 00 00 01 	movl   $0x1,0xffec
    1de8:	00 00 00 
    1deb:	c7 05 f0 ff 00 00 00 	movl   $0x0,0xfff0
    1df2:	00 00 00 
    1df5:	c7 05 f4 ff 00 00 00 	movl   $0x0,0xfff4
    1dfc:	00 00 00 
    1dff:	e8 8d 05 00 00       	call   2391 <set_leds>
    1e04:	83 ec 08             	sub    $0x8,%esp
    1e07:	68 0d 1d 00 00       	push   $0x1d0d
    1e0c:	6a 01                	push   $0x1
    1e0e:	e8 7a 18 00 00       	call   368d <put_irq_handler>
    1e13:	83 c4 10             	add    $0x10,%esp
    1e16:	83 ec 0c             	sub    $0xc,%esp
    1e19:	6a 01                	push   $0x1
    1e1b:	e8 ee 48 00 00       	call   670e <enable_irq>
    1e20:	83 c4 10             	add    $0x10,%esp
    1e23:	90                   	nop
    1e24:	c9                   	leave  
    1e25:	c3                   	ret    

00001e26 <keyboard_read>:
    1e26:	55                   	push   %ebp
    1e27:	89 e5                	mov    %esp,%ebp
    1e29:	83 ec 38             	sub    $0x38,%esp
    1e2c:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    1e33:	e9 a9 04 00 00       	jmp    22e1 <keyboard_read+0x4bb>
    1e38:	c7 05 cc ff 00 00 00 	movl   $0x0,0xffcc
    1e3f:	00 00 00 
    1e42:	e8 aa 04 00 00       	call   22f1 <get_byte_from_kb_buf>
    1e47:	88 45 f7             	mov    %al,-0x9(%ebp)
    1e4a:	80 7d f7 e1          	cmpb   $0xe1,-0x9(%ebp)
    1e4e:	75 67                	jne    1eb7 <keyboard_read+0x91>
    1e50:	c6 45 d2 e1          	movb   $0xe1,-0x2e(%ebp)
    1e54:	c6 45 d3 1d          	movb   $0x1d,-0x2d(%ebp)
    1e58:	c6 45 d4 45          	movb   $0x45,-0x2c(%ebp)
    1e5c:	c6 45 d5 e1          	movb   $0xe1,-0x2b(%ebp)
    1e60:	c6 45 d6 9d          	movb   $0x9d,-0x2a(%ebp)
    1e64:	c6 45 d7 c5          	movb   $0xc5,-0x29(%ebp)
    1e68:	c7 45 e4 01 00 00 00 	movl   $0x1,-0x1c(%ebp)
    1e6f:	c7 45 e8 01 00 00 00 	movl   $0x1,-0x18(%ebp)
    1e76:	eb 23                	jmp    1e9b <keyboard_read+0x75>
    1e78:	e8 74 04 00 00       	call   22f1 <get_byte_from_kb_buf>
    1e7d:	89 c1                	mov    %eax,%ecx
    1e7f:	8d 55 d2             	lea    -0x2e(%ebp),%edx
    1e82:	8b 45 e8             	mov    -0x18(%ebp),%eax
    1e85:	01 d0                	add    %edx,%eax
    1e87:	0f b6 00             	movzbl (%eax),%eax
    1e8a:	38 c1                	cmp    %al,%cl
    1e8c:	74 09                	je     1e97 <keyboard_read+0x71>
    1e8e:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    1e95:	eb 0a                	jmp    1ea1 <keyboard_read+0x7b>
    1e97:	83 45 e8 01          	addl   $0x1,-0x18(%ebp)
    1e9b:	83 7d e8 05          	cmpl   $0x5,-0x18(%ebp)
    1e9f:	7e d7                	jle    1e78 <keyboard_read+0x52>
    1ea1:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
    1ea5:	0f 84 b2 00 00 00    	je     1f5d <keyboard_read+0x137>
    1eab:	c7 45 ec 1e 01 00 00 	movl   $0x11e,-0x14(%ebp)
    1eb2:	e9 a6 00 00 00       	jmp    1f5d <keyboard_read+0x137>
    1eb7:	80 7d f7 e0          	cmpb   $0xe0,-0x9(%ebp)
    1ebb:	0f 85 9c 00 00 00    	jne    1f5d <keyboard_read+0x137>
    1ec1:	c7 05 cc ff 00 00 01 	movl   $0x1,0xffcc
    1ec8:	00 00 00 
    1ecb:	e8 21 04 00 00       	call   22f1 <get_byte_from_kb_buf>
    1ed0:	88 45 f7             	mov    %al,-0x9(%ebp)
    1ed3:	80 7d f7 2a          	cmpb   $0x2a,-0x9(%ebp)
    1ed7:	75 40                	jne    1f19 <keyboard_read+0xf3>
    1ed9:	c7 05 cc ff 00 00 00 	movl   $0x0,0xffcc
    1ee0:	00 00 00 
    1ee3:	e8 09 04 00 00       	call   22f1 <get_byte_from_kb_buf>
    1ee8:	88 45 f7             	mov    %al,-0x9(%ebp)
    1eeb:	80 7d f7 e0          	cmpb   $0xe0,-0x9(%ebp)
    1eef:	75 6c                	jne    1f5d <keyboard_read+0x137>
    1ef1:	c7 05 cc ff 00 00 01 	movl   $0x1,0xffcc
    1ef8:	00 00 00 
    1efb:	e8 f1 03 00 00       	call   22f1 <get_byte_from_kb_buf>
    1f00:	88 45 f7             	mov    %al,-0x9(%ebp)
    1f03:	80 7d f7 37          	cmpb   $0x37,-0x9(%ebp)
    1f07:	75 54                	jne    1f5d <keyboard_read+0x137>
    1f09:	c7 45 ec 1d 01 00 00 	movl   $0x11d,-0x14(%ebp)
    1f10:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
    1f17:	eb 44                	jmp    1f5d <keyboard_read+0x137>
    1f19:	80 7d f7 b7          	cmpb   $0xb7,-0x9(%ebp)
    1f1d:	75 3e                	jne    1f5d <keyboard_read+0x137>
    1f1f:	c7 05 cc ff 00 00 00 	movl   $0x0,0xffcc
    1f26:	00 00 00 
    1f29:	e8 c3 03 00 00       	call   22f1 <get_byte_from_kb_buf>
    1f2e:	88 45 f7             	mov    %al,-0x9(%ebp)
    1f31:	80 7d f7 e0          	cmpb   $0xe0,-0x9(%ebp)
    1f35:	75 26                	jne    1f5d <keyboard_read+0x137>
    1f37:	c7 05 cc ff 00 00 01 	movl   $0x1,0xffcc
    1f3e:	00 00 00 
    1f41:	e8 ab 03 00 00       	call   22f1 <get_byte_from_kb_buf>
    1f46:	88 45 f7             	mov    %al,-0x9(%ebp)
    1f49:	80 7d f7 aa          	cmpb   $0xaa,-0x9(%ebp)
    1f4d:	75 0e                	jne    1f5d <keyboard_read+0x137>
    1f4f:	c7 45 ec 1d 01 00 00 	movl   $0x11d,-0x14(%ebp)
    1f56:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    1f5d:	81 7d ec 1e 01 00 00 	cmpl   $0x11e,-0x14(%ebp)
    1f64:	0f 84 80 01 00 00    	je     20ea <keyboard_read+0x2c4>
    1f6a:	81 7d ec 1d 01 00 00 	cmpl   $0x11d,-0x14(%ebp)
    1f71:	0f 84 73 01 00 00    	je     20ea <keyboard_read+0x2c4>
    1f77:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
    1f7b:	f7 d0                	not    %eax
    1f7d:	c0 e8 07             	shr    $0x7,%al
    1f80:	0f b6 c0             	movzbl %al,%eax
    1f83:	89 45 f0             	mov    %eax,-0x10(%ebp)
    1f86:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
    1f8a:	83 e0 7f             	and    $0x7f,%eax
    1f8d:	89 c2                	mov    %eax,%edx
    1f8f:	89 d0                	mov    %edx,%eax
    1f91:	01 c0                	add    %eax,%eax
    1f93:	01 d0                	add    %edx,%eax
    1f95:	c1 e0 02             	shl    $0x2,%eax
    1f98:	05 20 f0 00 00       	add    $0xf020,%eax
    1f9d:	89 45 d8             	mov    %eax,-0x28(%ebp)
    1fa0:	c7 05 f4 ff 00 00 00 	movl   $0x0,0xfff4
    1fa7:	00 00 00 
    1faa:	a1 d0 ff 00 00       	mov    0xffd0,%eax
    1faf:	85 c0                	test   %eax,%eax
    1fb1:	75 09                	jne    1fbc <keyboard_read+0x196>
    1fb3:	a1 d4 ff 00 00       	mov    0xffd4,%eax
    1fb8:	85 c0                	test   %eax,%eax
    1fba:	74 07                	je     1fc3 <keyboard_read+0x19d>
    1fbc:	b8 01 00 00 00       	mov    $0x1,%eax
    1fc1:	eb 05                	jmp    1fc8 <keyboard_read+0x1a2>
    1fc3:	b8 00 00 00 00       	mov    $0x0,%eax
    1fc8:	89 45 e0             	mov    %eax,-0x20(%ebp)
    1fcb:	a1 e8 ff 00 00       	mov    0xffe8,%eax
    1fd0:	85 c0                	test   %eax,%eax
    1fd2:	74 21                	je     1ff5 <keyboard_read+0x1cf>
    1fd4:	8b 45 d8             	mov    -0x28(%ebp),%eax
    1fd7:	8b 00                	mov    (%eax),%eax
    1fd9:	83 f8 60             	cmp    $0x60,%eax
    1fdc:	76 17                	jbe    1ff5 <keyboard_read+0x1cf>
    1fde:	8b 45 d8             	mov    -0x28(%ebp),%eax
    1fe1:	8b 00                	mov    (%eax),%eax
    1fe3:	83 f8 7a             	cmp    $0x7a,%eax
    1fe6:	77 0d                	ja     1ff5 <keyboard_read+0x1cf>
    1fe8:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
    1fec:	0f 94 c0             	sete   %al
    1fef:	0f b6 c0             	movzbl %al,%eax
    1ff2:	89 45 e0             	mov    %eax,-0x20(%ebp)
    1ff5:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
    1ff9:	74 0a                	je     2005 <keyboard_read+0x1df>
    1ffb:	c7 05 f4 ff 00 00 01 	movl   $0x1,0xfff4
    2002:	00 00 00 
    2005:	a1 cc ff 00 00       	mov    0xffcc,%eax
    200a:	85 c0                	test   %eax,%eax
    200c:	74 0a                	je     2018 <keyboard_read+0x1f2>
    200e:	c7 05 f4 ff 00 00 02 	movl   $0x2,0xfff4
    2015:	00 00 00 
    2018:	a1 f4 ff 00 00       	mov    0xfff4,%eax
    201d:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
    2024:	8b 45 d8             	mov    -0x28(%ebp),%eax
    2027:	01 d0                	add    %edx,%eax
    2029:	8b 00                	mov    (%eax),%eax
    202b:	89 45 ec             	mov    %eax,-0x14(%ebp)
    202e:	8b 45 ec             	mov    -0x14(%ebp),%eax
    2031:	2d 08 01 00 00       	sub    $0x108,%eax
    2036:	83 f8 08             	cmp    $0x8,%eax
    2039:	0f 87 ae 00 00 00    	ja     20ed <keyboard_read+0x2c7>
    203f:	8b 04 85 30 a9 00 00 	mov    0xa930(,%eax,4),%eax
    2046:	ff e0                	jmp    *%eax
    2048:	8b 45 f0             	mov    -0x10(%ebp),%eax
    204b:	a3 d0 ff 00 00       	mov    %eax,0xffd0
    2050:	e9 a2 00 00 00       	jmp    20f7 <keyboard_read+0x2d1>
    2055:	8b 45 f0             	mov    -0x10(%ebp),%eax
    2058:	a3 d4 ff 00 00       	mov    %eax,0xffd4
    205d:	e9 95 00 00 00       	jmp    20f7 <keyboard_read+0x2d1>
    2062:	8b 45 f0             	mov    -0x10(%ebp),%eax
    2065:	a3 e0 ff 00 00       	mov    %eax,0xffe0
    206a:	e9 88 00 00 00       	jmp    20f7 <keyboard_read+0x2d1>
    206f:	8b 45 f0             	mov    -0x10(%ebp),%eax
    2072:	a3 e4 ff 00 00       	mov    %eax,0xffe4
    2077:	eb 7e                	jmp    20f7 <keyboard_read+0x2d1>
    2079:	8b 45 f0             	mov    -0x10(%ebp),%eax
    207c:	a3 d8 ff 00 00       	mov    %eax,0xffd8
    2081:	eb 74                	jmp    20f7 <keyboard_read+0x2d1>
    2083:	8b 45 f0             	mov    -0x10(%ebp),%eax
    2086:	a3 d8 ff 00 00       	mov    %eax,0xffd8
    208b:	eb 6a                	jmp    20f7 <keyboard_read+0x2d1>
    208d:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    2091:	74 5d                	je     20f0 <keyboard_read+0x2ca>
    2093:	a1 e8 ff 00 00       	mov    0xffe8,%eax
    2098:	85 c0                	test   %eax,%eax
    209a:	0f 94 c0             	sete   %al
    209d:	0f b6 c0             	movzbl %al,%eax
    20a0:	a3 e8 ff 00 00       	mov    %eax,0xffe8
    20a5:	e8 e7 02 00 00       	call   2391 <set_leds>
    20aa:	eb 44                	jmp    20f0 <keyboard_read+0x2ca>
    20ac:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    20b0:	74 41                	je     20f3 <keyboard_read+0x2cd>
    20b2:	a1 ec ff 00 00       	mov    0xffec,%eax
    20b7:	85 c0                	test   %eax,%eax
    20b9:	0f 94 c0             	sete   %al
    20bc:	0f b6 c0             	movzbl %al,%eax
    20bf:	a3 ec ff 00 00       	mov    %eax,0xffec
    20c4:	e8 c8 02 00 00       	call   2391 <set_leds>
    20c9:	eb 28                	jmp    20f3 <keyboard_read+0x2cd>
    20cb:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    20cf:	74 25                	je     20f6 <keyboard_read+0x2d0>
    20d1:	a1 f0 ff 00 00       	mov    0xfff0,%eax
    20d6:	85 c0                	test   %eax,%eax
    20d8:	0f 94 c0             	sete   %al
    20db:	0f b6 c0             	movzbl %al,%eax
    20de:	a3 f0 ff 00 00       	mov    %eax,0xfff0
    20e3:	e8 a9 02 00 00       	call   2391 <set_leds>
    20e8:	eb 0c                	jmp    20f6 <keyboard_read+0x2d0>
    20ea:	90                   	nop
    20eb:	eb 0a                	jmp    20f7 <keyboard_read+0x2d1>
    20ed:	90                   	nop
    20ee:	eb 07                	jmp    20f7 <keyboard_read+0x2d1>
    20f0:	90                   	nop
    20f1:	eb 04                	jmp    20f7 <keyboard_read+0x2d1>
    20f3:	90                   	nop
    20f4:	eb 01                	jmp    20f7 <keyboard_read+0x2d1>
    20f6:	90                   	nop
    20f7:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    20fb:	0f 84 e0 01 00 00    	je     22e1 <keyboard_read+0x4bb>
    2101:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
    2108:	81 7d ec 2b 01 00 00 	cmpl   $0x12b,-0x14(%ebp)
    210f:	0f 86 12 01 00 00    	jbe    2227 <keyboard_read+0x401>
    2115:	81 7d ec 3b 01 00 00 	cmpl   $0x13b,-0x14(%ebp)
    211c:	0f 87 05 01 00 00    	ja     2227 <keyboard_read+0x401>
    2122:	c7 45 dc 01 00 00 00 	movl   $0x1,-0x24(%ebp)
    2129:	8b 45 ec             	mov    -0x14(%ebp),%eax
    212c:	2d 2c 01 00 00       	sub    $0x12c,%eax
    2131:	83 f8 04             	cmp    $0x4,%eax
    2134:	77 45                	ja     217b <keyboard_read+0x355>
    2136:	8b 04 85 54 a9 00 00 	mov    0xa954(,%eax,4),%eax
    213d:	ff e0                	jmp    *%eax
    213f:	c7 45 ec 2f 00 00 00 	movl   $0x2f,-0x14(%ebp)
    2146:	e9 e0 00 00 00       	jmp    222b <keyboard_read+0x405>
    214b:	c7 45 ec 2a 00 00 00 	movl   $0x2a,-0x14(%ebp)
    2152:	e9 d4 00 00 00       	jmp    222b <keyboard_read+0x405>
    2157:	c7 45 ec 2d 00 00 00 	movl   $0x2d,-0x14(%ebp)
    215e:	e9 c8 00 00 00       	jmp    222b <keyboard_read+0x405>
    2163:	c7 45 ec 2b 00 00 00 	movl   $0x2b,-0x14(%ebp)
    216a:	e9 bc 00 00 00       	jmp    222b <keyboard_read+0x405>
    216f:	c7 45 ec 03 01 00 00 	movl   $0x103,-0x14(%ebp)
    2176:	e9 b0 00 00 00       	jmp    222b <keyboard_read+0x405>
    217b:	a1 ec ff 00 00       	mov    0xffec,%eax
    2180:	85 c0                	test   %eax,%eax
    2182:	74 30                	je     21b4 <keyboard_read+0x38e>
    2184:	81 7d ec 31 01 00 00 	cmpl   $0x131,-0x14(%ebp)
    218b:	76 15                	jbe    21a2 <keyboard_read+0x37c>
    218d:	81 7d ec 3b 01 00 00 	cmpl   $0x13b,-0x14(%ebp)
    2194:	77 0c                	ja     21a2 <keyboard_read+0x37c>
    2196:	81 6d ec 02 01 00 00 	subl   $0x102,-0x14(%ebp)
    219d:	e9 83 00 00 00       	jmp    2225 <keyboard_read+0x3ff>
    21a2:	81 7d ec 31 01 00 00 	cmpl   $0x131,-0x14(%ebp)
    21a9:	75 7f                	jne    222a <keyboard_read+0x404>
    21ab:	c7 45 ec 2e 00 00 00 	movl   $0x2e,-0x14(%ebp)
    21b2:	eb 76                	jmp    222a <keyboard_read+0x404>
    21b4:	8b 45 ec             	mov    -0x14(%ebp),%eax
    21b7:	2d 31 01 00 00       	sub    $0x131,%eax
    21bc:	83 f8 0a             	cmp    $0xa,%eax
    21bf:	77 63                	ja     2224 <keyboard_read+0x3fe>
    21c1:	8b 04 85 68 a9 00 00 	mov    0xa968(,%eax,4),%eax
    21c8:	ff e0                	jmp    *%eax
    21ca:	c7 45 ec 21 01 00 00 	movl   $0x121,-0x14(%ebp)
    21d1:	eb 52                	jmp    2225 <keyboard_read+0x3ff>
    21d3:	c7 45 ec 22 01 00 00 	movl   $0x122,-0x14(%ebp)
    21da:	eb 49                	jmp    2225 <keyboard_read+0x3ff>
    21dc:	c7 45 ec 23 01 00 00 	movl   $0x123,-0x14(%ebp)
    21e3:	eb 40                	jmp    2225 <keyboard_read+0x3ff>
    21e5:	c7 45 ec 24 01 00 00 	movl   $0x124,-0x14(%ebp)
    21ec:	eb 37                	jmp    2225 <keyboard_read+0x3ff>
    21ee:	c7 45 ec 1f 01 00 00 	movl   $0x11f,-0x14(%ebp)
    21f5:	eb 2e                	jmp    2225 <keyboard_read+0x3ff>
    21f7:	c7 45 ec 25 01 00 00 	movl   $0x125,-0x14(%ebp)
    21fe:	eb 25                	jmp    2225 <keyboard_read+0x3ff>
    2200:	c7 45 ec 26 01 00 00 	movl   $0x126,-0x14(%ebp)
    2207:	eb 1c                	jmp    2225 <keyboard_read+0x3ff>
    2209:	c7 45 ec 27 01 00 00 	movl   $0x127,-0x14(%ebp)
    2210:	eb 13                	jmp    2225 <keyboard_read+0x3ff>
    2212:	c7 45 ec 28 01 00 00 	movl   $0x128,-0x14(%ebp)
    2219:	eb 0a                	jmp    2225 <keyboard_read+0x3ff>
    221b:	c7 45 ec 20 01 00 00 	movl   $0x120,-0x14(%ebp)
    2222:	eb 01                	jmp    2225 <keyboard_read+0x3ff>
    2224:	90                   	nop
    2225:	eb 03                	jmp    222a <keyboard_read+0x404>
    2227:	90                   	nop
    2228:	eb 01                	jmp    222b <keyboard_read+0x405>
    222a:	90                   	nop
    222b:	a1 d0 ff 00 00       	mov    0xffd0,%eax
    2230:	85 c0                	test   %eax,%eax
    2232:	74 07                	je     223b <keyboard_read+0x415>
    2234:	b8 00 02 00 00       	mov    $0x200,%eax
    2239:	eb 05                	jmp    2240 <keyboard_read+0x41a>
    223b:	b8 00 00 00 00       	mov    $0x0,%eax
    2240:	09 45 ec             	or     %eax,-0x14(%ebp)
    2243:	a1 d4 ff 00 00       	mov    0xffd4,%eax
    2248:	85 c0                	test   %eax,%eax
    224a:	74 07                	je     2253 <keyboard_read+0x42d>
    224c:	b8 00 04 00 00       	mov    $0x400,%eax
    2251:	eb 05                	jmp    2258 <keyboard_read+0x432>
    2253:	b8 00 00 00 00       	mov    $0x0,%eax
    2258:	09 45 ec             	or     %eax,-0x14(%ebp)
    225b:	a1 e0 ff 00 00       	mov    0xffe0,%eax
    2260:	85 c0                	test   %eax,%eax
    2262:	74 07                	je     226b <keyboard_read+0x445>
    2264:	b8 00 08 00 00       	mov    $0x800,%eax
    2269:	eb 05                	jmp    2270 <keyboard_read+0x44a>
    226b:	b8 00 00 00 00       	mov    $0x0,%eax
    2270:	09 45 ec             	or     %eax,-0x14(%ebp)
    2273:	a1 e4 ff 00 00       	mov    0xffe4,%eax
    2278:	85 c0                	test   %eax,%eax
    227a:	74 07                	je     2283 <keyboard_read+0x45d>
    227c:	b8 00 10 00 00       	mov    $0x1000,%eax
    2281:	eb 05                	jmp    2288 <keyboard_read+0x462>
    2283:	b8 00 00 00 00       	mov    $0x0,%eax
    2288:	09 45 ec             	or     %eax,-0x14(%ebp)
    228b:	a1 d8 ff 00 00       	mov    0xffd8,%eax
    2290:	85 c0                	test   %eax,%eax
    2292:	74 07                	je     229b <keyboard_read+0x475>
    2294:	b8 00 20 00 00       	mov    $0x2000,%eax
    2299:	eb 05                	jmp    22a0 <keyboard_read+0x47a>
    229b:	b8 00 00 00 00       	mov    $0x0,%eax
    22a0:	09 45 ec             	or     %eax,-0x14(%ebp)
    22a3:	a1 dc ff 00 00       	mov    0xffdc,%eax
    22a8:	85 c0                	test   %eax,%eax
    22aa:	74 07                	je     22b3 <keyboard_read+0x48d>
    22ac:	b8 00 40 00 00       	mov    $0x4000,%eax
    22b1:	eb 05                	jmp    22b8 <keyboard_read+0x492>
    22b3:	b8 00 00 00 00       	mov    $0x0,%eax
    22b8:	09 45 ec             	or     %eax,-0x14(%ebp)
    22bb:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
    22bf:	74 07                	je     22c8 <keyboard_read+0x4a2>
    22c1:	b8 00 80 00 00       	mov    $0x8000,%eax
    22c6:	eb 05                	jmp    22cd <keyboard_read+0x4a7>
    22c8:	b8 00 00 00 00       	mov    $0x0,%eax
    22cd:	09 45 ec             	or     %eax,-0x14(%ebp)
    22d0:	83 ec 08             	sub    $0x8,%esp
    22d3:	ff 75 ec             	pushl  -0x14(%ebp)
    22d6:	ff 75 08             	pushl  0x8(%ebp)
    22d9:	e8 c1 02 00 00       	call   259f <in_process>
    22de:	83 c4 10             	add    $0x10,%esp
    22e1:	a1 a8 ff 00 00       	mov    0xffa8,%eax
    22e6:	85 c0                	test   %eax,%eax
    22e8:	0f 8f 4a fb ff ff    	jg     1e38 <keyboard_read+0x12>
    22ee:	90                   	nop
    22ef:	c9                   	leave  
    22f0:	c3                   	ret    

000022f1 <get_byte_from_kb_buf>:
    22f1:	55                   	push   %ebp
    22f2:	89 e5                	mov    %esp,%ebp
    22f4:	83 ec 18             	sub    $0x18,%esp
    22f7:	90                   	nop
    22f8:	a1 a8 ff 00 00       	mov    0xffa8,%eax
    22fd:	85 c0                	test   %eax,%eax
    22ff:	7e f7                	jle    22f8 <get_byte_from_kb_buf+0x7>
    2301:	e8 27 44 00 00       	call   672d <disable_int>
    2306:	a1 a4 ff 00 00       	mov    0xffa4,%eax
    230b:	0f b6 00             	movzbl (%eax),%eax
    230e:	88 45 f7             	mov    %al,-0x9(%ebp)
    2311:	a1 a4 ff 00 00       	mov    0xffa4,%eax
    2316:	83 c0 01             	add    $0x1,%eax
    2319:	a3 a4 ff 00 00       	mov    %eax,0xffa4
    231e:	a1 a4 ff 00 00       	mov    0xffa4,%eax
    2323:	ba cc ff 00 00       	mov    $0xffcc,%edx
    2328:	39 d0                	cmp    %edx,%eax
    232a:	75 0a                	jne    2336 <get_byte_from_kb_buf+0x45>
    232c:	c7 05 a4 ff 00 00 ac 	movl   $0xffac,0xffa4
    2333:	ff 00 00 
    2336:	a1 a8 ff 00 00       	mov    0xffa8,%eax
    233b:	83 e8 01             	sub    $0x1,%eax
    233e:	a3 a8 ff 00 00       	mov    %eax,0xffa8
    2343:	e8 e7 43 00 00       	call   672f <enable_int>
    2348:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
    234c:	c9                   	leave  
    234d:	c3                   	ret    

0000234e <kb_wait>:
    234e:	55                   	push   %ebp
    234f:	89 e5                	mov    %esp,%ebp
    2351:	83 ec 18             	sub    $0x18,%esp
    2354:	83 ec 0c             	sub    $0xc,%esp
    2357:	6a 64                	push   $0x64
    2359:	e8 4b 43 00 00       	call   66a9 <in_byte>
    235e:	83 c4 10             	add    $0x10,%esp
    2361:	88 45 f7             	mov    %al,-0x9(%ebp)
    2364:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
    2368:	83 e0 02             	and    $0x2,%eax
    236b:	85 c0                	test   %eax,%eax
    236d:	75 e5                	jne    2354 <kb_wait+0x6>
    236f:	90                   	nop
    2370:	c9                   	leave  
    2371:	c3                   	ret    

00002372 <kb_ack>:
    2372:	55                   	push   %ebp
    2373:	89 e5                	mov    %esp,%ebp
    2375:	83 ec 18             	sub    $0x18,%esp
    2378:	83 ec 0c             	sub    $0xc,%esp
    237b:	6a 60                	push   $0x60
    237d:	e8 27 43 00 00       	call   66a9 <in_byte>
    2382:	83 c4 10             	add    $0x10,%esp
    2385:	88 45 f7             	mov    %al,-0x9(%ebp)
    2388:	80 7d f7 fa          	cmpb   $0xfa,-0x9(%ebp)
    238c:	75 ea                	jne    2378 <kb_ack+0x6>
    238e:	90                   	nop
    238f:	c9                   	leave  
    2390:	c3                   	ret    

00002391 <set_leds>:
    2391:	55                   	push   %ebp
    2392:	89 e5                	mov    %esp,%ebp
    2394:	83 ec 18             	sub    $0x18,%esp
    2397:	a1 e8 ff 00 00       	mov    0xffe8,%eax
    239c:	c1 e0 02             	shl    $0x2,%eax
    239f:	89 c2                	mov    %eax,%edx
    23a1:	a1 ec ff 00 00       	mov    0xffec,%eax
    23a6:	01 c0                	add    %eax,%eax
    23a8:	09 c2                	or     %eax,%edx
    23aa:	a1 f0 ff 00 00       	mov    0xfff0,%eax
    23af:	09 d0                	or     %edx,%eax
    23b1:	88 45 f7             	mov    %al,-0x9(%ebp)
    23b4:	e8 95 ff ff ff       	call   234e <kb_wait>
    23b9:	83 ec 08             	sub    $0x8,%esp
    23bc:	68 ed 00 00 00       	push   $0xed
    23c1:	6a 60                	push   $0x60
    23c3:	e8 d5 42 00 00       	call   669d <out_byte>
    23c8:	83 c4 10             	add    $0x10,%esp
    23cb:	e8 a2 ff ff ff       	call   2372 <kb_ack>
    23d0:	e8 79 ff ff ff       	call   234e <kb_wait>
    23d5:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
    23d9:	83 ec 08             	sub    $0x8,%esp
    23dc:	50                   	push   %eax
    23dd:	6a 60                	push   $0x60
    23df:	e8 b9 42 00 00       	call   669d <out_byte>
    23e4:	83 c4 10             	add    $0x10,%esp
    23e7:	e8 86 ff ff ff       	call   2372 <kb_ack>
    23ec:	90                   	nop
    23ed:	c9                   	leave  
    23ee:	c3                   	ret    

000023ef <task_tty>:
    23ef:	55                   	push   %ebp
    23f0:	89 e5                	mov    %esp,%ebp
    23f2:	83 ec 48             	sub    $0x48,%esp
    23f5:	e8 7d f9 ff ff       	call   1d77 <init_keyboard>
    23fa:	c7 45 f4 e0 97 04 00 	movl   $0x497e0,-0xc(%ebp)
    2401:	eb 15                	jmp    2418 <task_tty+0x29>
    2403:	83 ec 0c             	sub    $0xc,%esp
    2406:	ff 75 f4             	pushl  -0xc(%ebp)
    2409:	e8 4f 01 00 00       	call   255d <init_tty>
    240e:	83 c4 10             	add    $0x10,%esp
    2411:	81 45 f4 24 04 00 00 	addl   $0x424,-0xc(%ebp)
    2418:	b8 4c a4 04 00       	mov    $0x4a44c,%eax
    241d:	39 45 f4             	cmp    %eax,-0xc(%ebp)
    2420:	72 e1                	jb     2403 <task_tty+0x14>
    2422:	83 ec 0c             	sub    $0xc,%esp
    2425:	6a 00                	push   $0x0
    2427:	e8 c2 0e 00 00       	call   32ee <select_console>
    242c:	83 c4 10             	add    $0x10,%esp
    242f:	c7 45 f4 e0 97 04 00 	movl   $0x497e0,-0xc(%ebp)
    2436:	eb 30                	jmp    2468 <task_tty+0x79>
    2438:	83 ec 0c             	sub    $0xc,%esp
    243b:	ff 75 f4             	pushl  -0xc(%ebp)
    243e:	e8 e0 02 00 00       	call   2723 <tty_dev_read>
    2443:	83 c4 10             	add    $0x10,%esp
    2446:	83 ec 0c             	sub    $0xc,%esp
    2449:	ff 75 f4             	pushl  -0xc(%ebp)
    244c:	e8 02 03 00 00       	call   2753 <tty_dev_write>
    2451:	83 c4 10             	add    $0x10,%esp
    2454:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2457:	8b 80 08 04 00 00    	mov    0x408(%eax),%eax
    245d:	85 c0                	test   %eax,%eax
    245f:	75 d7                	jne    2438 <task_tty+0x49>
    2461:	81 45 f4 24 04 00 00 	addl   $0x424,-0xc(%ebp)
    2468:	b8 4c a4 04 00       	mov    $0x4a44c,%eax
    246d:	39 45 f4             	cmp    %eax,-0xc(%ebp)
    2470:	72 c6                	jb     2438 <task_tty+0x49>
    2472:	83 ec 04             	sub    $0x4,%esp
    2475:	8d 45 bc             	lea    -0x44(%ebp),%eax
    2478:	50                   	push   %eax
    2479:	6a 11                	push   $0x11
    247b:	6a 02                	push   $0x2
    247d:	e8 ed 19 00 00       	call   3e6f <send_recv>
    2482:	83 c4 10             	add    $0x10,%esp
    2485:	8b 45 bc             	mov    -0x44(%ebp),%eax
    2488:	89 45 f0             	mov    %eax,-0x10(%ebp)
    248b:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    248f:	75 19                	jne    24aa <task_tty+0xbb>
    2491:	6a 5e                	push   $0x5e
    2493:	68 94 a9 00 00       	push   $0xa994
    2498:	68 94 a9 00 00       	push   $0xa994
    249d:	68 a1 a9 00 00       	push   $0xa9a1
    24a2:	e8 0c 46 00 00       	call   6ab3 <assertion_failure>
    24a7:	83 c4 10             	add    $0x10,%esp
    24aa:	8b 45 d0             	mov    -0x30(%ebp),%eax
    24ad:	69 c0 24 04 00 00    	imul   $0x424,%eax,%eax
    24b3:	05 e0 97 04 00       	add    $0x497e0,%eax
    24b8:	89 45 ec             	mov    %eax,-0x14(%ebp)
    24bb:	8b 45 c0             	mov    -0x40(%ebp),%eax
    24be:	3d e9 03 00 00       	cmp    $0x3e9,%eax
    24c3:	74 1e                	je     24e3 <task_tty+0xf4>
    24c5:	3d e9 03 00 00       	cmp    $0x3e9,%eax
    24ca:	7f 07                	jg     24d3 <task_tty+0xe4>
    24cc:	83 f8 01             	cmp    $0x1,%eax
    24cf:	74 66                	je     2537 <task_tty+0x148>
    24d1:	eb 70                	jmp    2543 <task_tty+0x154>
    24d3:	3d eb 03 00 00       	cmp    $0x3eb,%eax
    24d8:	74 35                	je     250f <task_tty+0x120>
    24da:	3d ec 03 00 00       	cmp    $0x3ec,%eax
    24df:	74 42                	je     2523 <task_tty+0x134>
    24e1:	eb 60                	jmp    2543 <task_tty+0x154>
    24e3:	83 ec 0c             	sub    $0xc,%esp
    24e6:	8d 45 bc             	lea    -0x44(%ebp),%eax
    24e9:	50                   	push   %eax
    24ea:	e8 e8 1a 00 00       	call   3fd7 <reset_msg>
    24ef:	83 c4 10             	add    $0x10,%esp
    24f2:	c7 45 c0 0d 00 00 00 	movl   $0xd,-0x40(%ebp)
    24f9:	83 ec 04             	sub    $0x4,%esp
    24fc:	8d 45 bc             	lea    -0x44(%ebp),%eax
    24ff:	50                   	push   %eax
    2500:	ff 75 f0             	pushl  -0x10(%ebp)
    2503:	6a 01                	push   $0x1
    2505:	e8 65 19 00 00       	call   3e6f <send_recv>
    250a:	83 c4 10             	add    $0x10,%esp
    250d:	eb 49                	jmp    2558 <task_tty+0x169>
    250f:	83 ec 08             	sub    $0x8,%esp
    2512:	8d 45 bc             	lea    -0x44(%ebp),%eax
    2515:	50                   	push   %eax
    2516:	ff 75 ec             	pushl  -0x14(%ebp)
    2519:	e8 28 04 00 00       	call   2946 <tty_do_read>
    251e:	83 c4 10             	add    $0x10,%esp
    2521:	eb 35                	jmp    2558 <task_tty+0x169>
    2523:	83 ec 08             	sub    $0x8,%esp
    2526:	8d 45 bc             	lea    -0x44(%ebp),%eax
    2529:	50                   	push   %eax
    252a:	ff 75 ec             	pushl  -0x14(%ebp)
    252d:	e8 b0 04 00 00       	call   29e2 <tty_do_write>
    2532:	83 c4 10             	add    $0x10,%esp
    2535:	eb 21                	jmp    2558 <task_tty+0x169>
    2537:	c7 05 28 a8 04 00 00 	movl   $0x0,0x4a828
    253e:	00 00 00 
    2541:	eb 15                	jmp    2558 <task_tty+0x169>
    2543:	83 ec 08             	sub    $0x8,%esp
    2546:	8d 45 bc             	lea    -0x44(%ebp),%eax
    2549:	50                   	push   %eax
    254a:	68 b1 a9 00 00       	push   $0xa9b1
    254f:	e8 65 2d 00 00       	call   52b9 <dump_msg>
    2554:	83 c4 10             	add    $0x10,%esp
    2557:	90                   	nop
    2558:	e9 d2 fe ff ff       	jmp    242f <task_tty+0x40>

0000255d <init_tty>:
    255d:	55                   	push   %ebp
    255e:	89 e5                	mov    %esp,%ebp
    2560:	83 ec 08             	sub    $0x8,%esp
    2563:	8b 45 08             	mov    0x8(%ebp),%eax
    2566:	c7 80 08 04 00 00 00 	movl   $0x0,0x408(%eax)
    256d:	00 00 00 
    2570:	8b 55 08             	mov    0x8(%ebp),%edx
    2573:	8b 45 08             	mov    0x8(%ebp),%eax
    2576:	89 90 04 04 00 00    	mov    %edx,0x404(%eax)
    257c:	8b 45 08             	mov    0x8(%ebp),%eax
    257f:	8b 90 04 04 00 00    	mov    0x404(%eax),%edx
    2585:	8b 45 08             	mov    0x8(%ebp),%eax
    2588:	89 90 00 04 00 00    	mov    %edx,0x400(%eax)
    258e:	83 ec 0c             	sub    $0xc,%esp
    2591:	ff 75 08             	pushl  0x8(%ebp)
    2594:	e8 11 08 00 00       	call   2daa <init_screen>
    2599:	83 c4 10             	add    $0x10,%esp
    259c:	90                   	nop
    259d:	c9                   	leave  
    259e:	c3                   	ret    

0000259f <in_process>:
    259f:	55                   	push   %ebp
    25a0:	89 e5                	mov    %esp,%ebp
    25a2:	83 ec 18             	sub    $0x18,%esp
    25a5:	8b 45 0c             	mov    0xc(%ebp),%eax
    25a8:	25 00 01 00 00       	and    $0x100,%eax
    25ad:	85 c0                	test   %eax,%eax
    25af:	75 16                	jne    25c7 <in_process+0x28>
    25b1:	83 ec 08             	sub    $0x8,%esp
    25b4:	ff 75 0c             	pushl  0xc(%ebp)
    25b7:	ff 75 08             	pushl  0x8(%ebp)
    25ba:	e8 f4 00 00 00       	call   26b3 <put_key>
    25bf:	83 c4 10             	add    $0x10,%esp
    25c2:	e9 e9 00 00 00       	jmp    26b0 <in_process+0x111>
    25c7:	8b 45 0c             	mov    0xc(%ebp),%eax
    25ca:	25 ff 01 00 00       	and    $0x1ff,%eax
    25cf:	89 45 f4             	mov    %eax,-0xc(%ebp)
    25d2:	8b 45 f4             	mov    -0xc(%ebp),%eax
    25d5:	2d 03 01 00 00       	sub    $0x103,%eax
    25da:	83 f8 23             	cmp    $0x23,%eax
    25dd:	0f 87 c3 00 00 00    	ja     26a6 <in_process+0x107>
    25e3:	8b 04 85 c4 a9 00 00 	mov    0xa9c4(,%eax,4),%eax
    25ea:	ff e0                	jmp    *%eax
    25ec:	83 ec 08             	sub    $0x8,%esp
    25ef:	6a 0a                	push   $0xa
    25f1:	ff 75 08             	pushl  0x8(%ebp)
    25f4:	e8 ba 00 00 00       	call   26b3 <put_key>
    25f9:	83 c4 10             	add    $0x10,%esp
    25fc:	e9 af 00 00 00       	jmp    26b0 <in_process+0x111>
    2601:	83 ec 08             	sub    $0x8,%esp
    2604:	6a 08                	push   $0x8
    2606:	ff 75 08             	pushl  0x8(%ebp)
    2609:	e8 a5 00 00 00       	call   26b3 <put_key>
    260e:	83 c4 10             	add    $0x10,%esp
    2611:	e9 9a 00 00 00       	jmp    26b0 <in_process+0x111>
    2616:	8b 45 0c             	mov    0xc(%ebp),%eax
    2619:	25 00 02 00 00       	and    $0x200,%eax
    261e:	85 c0                	test   %eax,%eax
    2620:	75 0c                	jne    262e <in_process+0x8f>
    2622:	8b 45 0c             	mov    0xc(%ebp),%eax
    2625:	25 00 04 00 00       	and    $0x400,%eax
    262a:	85 c0                	test   %eax,%eax
    262c:	74 7b                	je     26a9 <in_process+0x10a>
    262e:	8b 45 08             	mov    0x8(%ebp),%eax
    2631:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    2637:	83 ec 08             	sub    $0x8,%esp
    263a:	6a ff                	push   $0xffffffff
    263c:	50                   	push   %eax
    263d:	e8 ec 0c 00 00       	call   332e <scroll_screen>
    2642:	83 c4 10             	add    $0x10,%esp
    2645:	eb 62                	jmp    26a9 <in_process+0x10a>
    2647:	8b 45 0c             	mov    0xc(%ebp),%eax
    264a:	25 00 02 00 00       	and    $0x200,%eax
    264f:	85 c0                	test   %eax,%eax
    2651:	75 0c                	jne    265f <in_process+0xc0>
    2653:	8b 45 0c             	mov    0xc(%ebp),%eax
    2656:	25 00 04 00 00       	and    $0x400,%eax
    265b:	85 c0                	test   %eax,%eax
    265d:	74 4d                	je     26ac <in_process+0x10d>
    265f:	8b 45 08             	mov    0x8(%ebp),%eax
    2662:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    2668:	83 ec 08             	sub    $0x8,%esp
    266b:	6a 01                	push   $0x1
    266d:	50                   	push   %eax
    266e:	e8 bb 0c 00 00       	call   332e <scroll_screen>
    2673:	83 c4 10             	add    $0x10,%esp
    2676:	eb 34                	jmp    26ac <in_process+0x10d>
    2678:	8b 45 0c             	mov    0xc(%ebp),%eax
    267b:	25 00 20 00 00       	and    $0x2000,%eax
    2680:	85 c0                	test   %eax,%eax
    2682:	75 0c                	jne    2690 <in_process+0xf1>
    2684:	8b 45 0c             	mov    0xc(%ebp),%eax
    2687:	25 00 40 00 00       	and    $0x4000,%eax
    268c:	85 c0                	test   %eax,%eax
    268e:	74 1f                	je     26af <in_process+0x110>
    2690:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2693:	2d 11 01 00 00       	sub    $0x111,%eax
    2698:	83 ec 0c             	sub    $0xc,%esp
    269b:	50                   	push   %eax
    269c:	e8 4d 0c 00 00       	call   32ee <select_console>
    26a1:	83 c4 10             	add    $0x10,%esp
    26a4:	eb 09                	jmp    26af <in_process+0x110>
    26a6:	90                   	nop
    26a7:	eb 07                	jmp    26b0 <in_process+0x111>
    26a9:	90                   	nop
    26aa:	eb 04                	jmp    26b0 <in_process+0x111>
    26ac:	90                   	nop
    26ad:	eb 01                	jmp    26b0 <in_process+0x111>
    26af:	90                   	nop
    26b0:	90                   	nop
    26b1:	c9                   	leave  
    26b2:	c3                   	ret    

000026b3 <put_key>:
    26b3:	55                   	push   %ebp
    26b4:	89 e5                	mov    %esp,%ebp
    26b6:	8b 45 08             	mov    0x8(%ebp),%eax
    26b9:	8b 80 08 04 00 00    	mov    0x408(%eax),%eax
    26bf:	3d ff 00 00 00       	cmp    $0xff,%eax
    26c4:	7f 5a                	jg     2720 <put_key+0x6d>
    26c6:	8b 45 08             	mov    0x8(%ebp),%eax
    26c9:	8b 80 00 04 00 00    	mov    0x400(%eax),%eax
    26cf:	8b 55 0c             	mov    0xc(%ebp),%edx
    26d2:	89 10                	mov    %edx,(%eax)
    26d4:	8b 45 08             	mov    0x8(%ebp),%eax
    26d7:	8b 80 00 04 00 00    	mov    0x400(%eax),%eax
    26dd:	8d 50 04             	lea    0x4(%eax),%edx
    26e0:	8b 45 08             	mov    0x8(%ebp),%eax
    26e3:	89 90 00 04 00 00    	mov    %edx,0x400(%eax)
    26e9:	8b 45 08             	mov    0x8(%ebp),%eax
    26ec:	8b 80 00 04 00 00    	mov    0x400(%eax),%eax
    26f2:	8b 55 08             	mov    0x8(%ebp),%edx
    26f5:	81 c2 00 04 00 00    	add    $0x400,%edx
    26fb:	39 d0                	cmp    %edx,%eax
    26fd:	75 0c                	jne    270b <put_key+0x58>
    26ff:	8b 55 08             	mov    0x8(%ebp),%edx
    2702:	8b 45 08             	mov    0x8(%ebp),%eax
    2705:	89 90 00 04 00 00    	mov    %edx,0x400(%eax)
    270b:	8b 45 08             	mov    0x8(%ebp),%eax
    270e:	8b 80 08 04 00 00    	mov    0x408(%eax),%eax
    2714:	8d 50 01             	lea    0x1(%eax),%edx
    2717:	8b 45 08             	mov    0x8(%ebp),%eax
    271a:	89 90 08 04 00 00    	mov    %edx,0x408(%eax)
    2720:	90                   	nop
    2721:	5d                   	pop    %ebp
    2722:	c3                   	ret    

00002723 <tty_dev_read>:
    2723:	55                   	push   %ebp
    2724:	89 e5                	mov    %esp,%ebp
    2726:	83 ec 08             	sub    $0x8,%esp
    2729:	8b 45 08             	mov    0x8(%ebp),%eax
    272c:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    2732:	83 ec 0c             	sub    $0xc,%esp
    2735:	50                   	push   %eax
    2736:	e8 c0 0a 00 00       	call   31fb <is_current_console>
    273b:	83 c4 10             	add    $0x10,%esp
    273e:	85 c0                	test   %eax,%eax
    2740:	74 0e                	je     2750 <tty_dev_read+0x2d>
    2742:	83 ec 0c             	sub    $0xc,%esp
    2745:	ff 75 08             	pushl  0x8(%ebp)
    2748:	e8 d9 f6 ff ff       	call   1e26 <keyboard_read>
    274d:	83 c4 10             	add    $0x10,%esp
    2750:	90                   	nop
    2751:	c9                   	leave  
    2752:	c3                   	ret    

00002753 <tty_dev_write>:
    2753:	55                   	push   %ebp
    2754:	89 e5                	mov    %esp,%ebp
    2756:	83 ec 48             	sub    $0x48,%esp
    2759:	e9 d4 01 00 00       	jmp    2932 <tty_dev_write+0x1df>
    275e:	8b 45 08             	mov    0x8(%ebp),%eax
    2761:	8b 80 04 04 00 00    	mov    0x404(%eax),%eax
    2767:	8b 00                	mov    (%eax),%eax
    2769:	88 45 f3             	mov    %al,-0xd(%ebp)
    276c:	8b 45 08             	mov    0x8(%ebp),%eax
    276f:	8b 80 04 04 00 00    	mov    0x404(%eax),%eax
    2775:	8d 50 04             	lea    0x4(%eax),%edx
    2778:	8b 45 08             	mov    0x8(%ebp),%eax
    277b:	89 90 04 04 00 00    	mov    %edx,0x404(%eax)
    2781:	8b 45 08             	mov    0x8(%ebp),%eax
    2784:	8b 80 04 04 00 00    	mov    0x404(%eax),%eax
    278a:	8b 55 08             	mov    0x8(%ebp),%edx
    278d:	81 c2 00 04 00 00    	add    $0x400,%edx
    2793:	39 d0                	cmp    %edx,%eax
    2795:	75 0c                	jne    27a3 <tty_dev_write+0x50>
    2797:	8b 55 08             	mov    0x8(%ebp),%edx
    279a:	8b 45 08             	mov    0x8(%ebp),%eax
    279d:	89 90 04 04 00 00    	mov    %edx,0x404(%eax)
    27a3:	8b 45 08             	mov    0x8(%ebp),%eax
    27a6:	8b 80 08 04 00 00    	mov    0x408(%eax),%eax
    27ac:	8d 50 ff             	lea    -0x1(%eax),%edx
    27af:	8b 45 08             	mov    0x8(%ebp),%eax
    27b2:	89 90 08 04 00 00    	mov    %edx,0x408(%eax)
    27b8:	8b 45 08             	mov    0x8(%ebp),%eax
    27bb:	8b 80 18 04 00 00    	mov    0x418(%eax),%eax
    27c1:	85 c0                	test   %eax,%eax
    27c3:	0f 84 69 01 00 00    	je     2932 <tty_dev_write+0x1df>
    27c9:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
    27cd:	3c 1f                	cmp    $0x1f,%al
    27cf:	0f 8e 8e 00 00 00    	jle    2863 <tty_dev_write+0x110>
    27d5:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
    27d9:	3c 7f                	cmp    $0x7f,%al
    27db:	0f 84 82 00 00 00    	je     2863 <tty_dev_write+0x110>
    27e1:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
    27e5:	0f be d0             	movsbl %al,%edx
    27e8:	8b 45 08             	mov    0x8(%ebp),%eax
    27eb:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    27f1:	83 ec 08             	sub    $0x8,%esp
    27f4:	52                   	push   %edx
    27f5:	50                   	push   %eax
    27f6:	e8 23 07 00 00       	call   2f1e <out_char>
    27fb:	83 c4 10             	add    $0x10,%esp
    27fe:	8b 45 08             	mov    0x8(%ebp),%eax
    2801:	8b 90 14 04 00 00    	mov    0x414(%eax),%edx
    2807:	8b 45 08             	mov    0x8(%ebp),%eax
    280a:	8b 80 1c 04 00 00    	mov    0x41c(%eax),%eax
    2810:	01 d0                	add    %edx,%eax
    2812:	89 45 f4             	mov    %eax,-0xc(%ebp)
    2815:	83 ec 08             	sub    $0x8,%esp
    2818:	8d 45 f3             	lea    -0xd(%ebp),%eax
    281b:	50                   	push   %eax
    281c:	6a 00                	push   $0x0
    281e:	e8 53 17 00 00       	call   3f76 <va2la>
    2823:	83 c4 10             	add    $0x10,%esp
    2826:	83 ec 04             	sub    $0x4,%esp
    2829:	6a 01                	push   $0x1
    282b:	50                   	push   %eax
    282c:	ff 75 f4             	pushl  -0xc(%ebp)
    282f:	e8 ac 40 00 00       	call   68e0 <memcpy>
    2834:	83 c4 10             	add    $0x10,%esp
    2837:	8b 45 08             	mov    0x8(%ebp),%eax
    283a:	8b 80 1c 04 00 00    	mov    0x41c(%eax),%eax
    2840:	8d 50 01             	lea    0x1(%eax),%edx
    2843:	8b 45 08             	mov    0x8(%ebp),%eax
    2846:	89 90 1c 04 00 00    	mov    %edx,0x41c(%eax)
    284c:	8b 45 08             	mov    0x8(%ebp),%eax
    284f:	8b 80 18 04 00 00    	mov    0x418(%eax),%eax
    2855:	8d 50 ff             	lea    -0x1(%eax),%edx
    2858:	8b 45 08             	mov    0x8(%ebp),%eax
    285b:	89 90 18 04 00 00    	mov    %edx,0x418(%eax)
    2861:	eb 5c                	jmp    28bf <tty_dev_write+0x16c>
    2863:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
    2867:	3c 08                	cmp    $0x8,%al
    2869:	75 54                	jne    28bf <tty_dev_write+0x16c>
    286b:	8b 45 08             	mov    0x8(%ebp),%eax
    286e:	8b 80 1c 04 00 00    	mov    0x41c(%eax),%eax
    2874:	85 c0                	test   %eax,%eax
    2876:	74 47                	je     28bf <tty_dev_write+0x16c>
    2878:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
    287c:	0f be d0             	movsbl %al,%edx
    287f:	8b 45 08             	mov    0x8(%ebp),%eax
    2882:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    2888:	83 ec 08             	sub    $0x8,%esp
    288b:	52                   	push   %edx
    288c:	50                   	push   %eax
    288d:	e8 8c 06 00 00       	call   2f1e <out_char>
    2892:	83 c4 10             	add    $0x10,%esp
    2895:	8b 45 08             	mov    0x8(%ebp),%eax
    2898:	8b 80 1c 04 00 00    	mov    0x41c(%eax),%eax
    289e:	8d 50 ff             	lea    -0x1(%eax),%edx
    28a1:	8b 45 08             	mov    0x8(%ebp),%eax
    28a4:	89 90 1c 04 00 00    	mov    %edx,0x41c(%eax)
    28aa:	8b 45 08             	mov    0x8(%ebp),%eax
    28ad:	8b 80 18 04 00 00    	mov    0x418(%eax),%eax
    28b3:	8d 50 01             	lea    0x1(%eax),%edx
    28b6:	8b 45 08             	mov    0x8(%ebp),%eax
    28b9:	89 90 18 04 00 00    	mov    %edx,0x418(%eax)
    28bf:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
    28c3:	3c 0a                	cmp    $0xa,%al
    28c5:	74 0d                	je     28d4 <tty_dev_write+0x181>
    28c7:	8b 45 08             	mov    0x8(%ebp),%eax
    28ca:	8b 80 18 04 00 00    	mov    0x418(%eax),%eax
    28d0:	85 c0                	test   %eax,%eax
    28d2:	75 5e                	jne    2932 <tty_dev_write+0x1df>
    28d4:	8b 45 08             	mov    0x8(%ebp),%eax
    28d7:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    28dd:	83 ec 08             	sub    $0x8,%esp
    28e0:	6a 0a                	push   $0xa
    28e2:	50                   	push   %eax
    28e3:	e8 36 06 00 00       	call   2f1e <out_char>
    28e8:	83 c4 10             	add    $0x10,%esp
    28eb:	c7 45 c4 0c 00 00 00 	movl   $0xc,-0x3c(%ebp)
    28f2:	8b 45 08             	mov    0x8(%ebp),%eax
    28f5:	8b 80 10 04 00 00    	mov    0x410(%eax),%eax
    28fb:	89 45 d0             	mov    %eax,-0x30(%ebp)
    28fe:	8b 45 08             	mov    0x8(%ebp),%eax
    2901:	8b 80 1c 04 00 00    	mov    0x41c(%eax),%eax
    2907:	89 45 cc             	mov    %eax,-0x34(%ebp)
    290a:	8b 45 08             	mov    0x8(%ebp),%eax
    290d:	8b 80 0c 04 00 00    	mov    0x40c(%eax),%eax
    2913:	83 ec 04             	sub    $0x4,%esp
    2916:	8d 55 c0             	lea    -0x40(%ebp),%edx
    2919:	52                   	push   %edx
    291a:	50                   	push   %eax
    291b:	6a 01                	push   $0x1
    291d:	e8 4d 15 00 00       	call   3e6f <send_recv>
    2922:	83 c4 10             	add    $0x10,%esp
    2925:	8b 45 08             	mov    0x8(%ebp),%eax
    2928:	c7 80 18 04 00 00 00 	movl   $0x0,0x418(%eax)
    292f:	00 00 00 
    2932:	8b 45 08             	mov    0x8(%ebp),%eax
    2935:	8b 80 08 04 00 00    	mov    0x408(%eax),%eax
    293b:	85 c0                	test   %eax,%eax
    293d:	0f 85 1b fe ff ff    	jne    275e <tty_dev_write+0xb>
    2943:	90                   	nop
    2944:	c9                   	leave  
    2945:	c3                   	ret    

00002946 <tty_do_read>:
    2946:	55                   	push   %ebp
    2947:	89 e5                	mov    %esp,%ebp
    2949:	83 ec 08             	sub    $0x8,%esp
    294c:	8b 45 0c             	mov    0xc(%ebp),%eax
    294f:	8b 10                	mov    (%eax),%edx
    2951:	8b 45 08             	mov    0x8(%ebp),%eax
    2954:	89 90 0c 04 00 00    	mov    %edx,0x40c(%eax)
    295a:	8b 45 0c             	mov    0xc(%ebp),%eax
    295d:	8b 50 10             	mov    0x10(%eax),%edx
    2960:	8b 45 08             	mov    0x8(%ebp),%eax
    2963:	89 90 10 04 00 00    	mov    %edx,0x410(%eax)
    2969:	8b 45 0c             	mov    0xc(%ebp),%eax
    296c:	8b 50 2c             	mov    0x2c(%eax),%edx
    296f:	8b 45 08             	mov    0x8(%ebp),%eax
    2972:	8b 80 10 04 00 00    	mov    0x410(%eax),%eax
    2978:	83 ec 08             	sub    $0x8,%esp
    297b:	52                   	push   %edx
    297c:	50                   	push   %eax
    297d:	e8 f4 15 00 00       	call   3f76 <va2la>
    2982:	83 c4 10             	add    $0x10,%esp
    2985:	89 c2                	mov    %eax,%edx
    2987:	8b 45 08             	mov    0x8(%ebp),%eax
    298a:	89 90 14 04 00 00    	mov    %edx,0x414(%eax)
    2990:	8b 45 0c             	mov    0xc(%ebp),%eax
    2993:	8b 50 0c             	mov    0xc(%eax),%edx
    2996:	8b 45 08             	mov    0x8(%ebp),%eax
    2999:	89 90 18 04 00 00    	mov    %edx,0x418(%eax)
    299f:	8b 45 08             	mov    0x8(%ebp),%eax
    29a2:	c7 80 1c 04 00 00 00 	movl   $0x0,0x41c(%eax)
    29a9:	00 00 00 
    29ac:	8b 45 0c             	mov    0xc(%ebp),%eax
    29af:	c7 40 04 0b 00 00 00 	movl   $0xb,0x4(%eax)
    29b6:	8b 45 08             	mov    0x8(%ebp),%eax
    29b9:	8b 90 18 04 00 00    	mov    0x418(%eax),%edx
    29bf:	8b 45 0c             	mov    0xc(%ebp),%eax
    29c2:	89 50 0c             	mov    %edx,0xc(%eax)
    29c5:	8b 45 08             	mov    0x8(%ebp),%eax
    29c8:	8b 80 0c 04 00 00    	mov    0x40c(%eax),%eax
    29ce:	83 ec 04             	sub    $0x4,%esp
    29d1:	ff 75 0c             	pushl  0xc(%ebp)
    29d4:	50                   	push   %eax
    29d5:	6a 01                	push   $0x1
    29d7:	e8 93 14 00 00       	call   3e6f <send_recv>
    29dc:	83 c4 10             	add    $0x10,%esp
    29df:	90                   	nop
    29e0:	c9                   	leave  
    29e1:	c3                   	ret    

000029e2 <tty_do_write>:
    29e2:	55                   	push   %ebp
    29e3:	89 e5                	mov    %esp,%ebp
    29e5:	83 ec 28             	sub    $0x28,%esp
    29e8:	8b 45 0c             	mov    0xc(%ebp),%eax
    29eb:	8b 50 2c             	mov    0x2c(%eax),%edx
    29ee:	8b 45 0c             	mov    0xc(%ebp),%eax
    29f1:	8b 40 10             	mov    0x10(%eax),%eax
    29f4:	83 ec 08             	sub    $0x8,%esp
    29f7:	52                   	push   %edx
    29f8:	50                   	push   %eax
    29f9:	e8 78 15 00 00       	call   3f76 <va2la>
    29fe:	83 c4 10             	add    $0x10,%esp
    2a01:	89 45 f4             	mov    %eax,-0xc(%ebp)
    2a04:	8b 45 0c             	mov    0xc(%ebp),%eax
    2a07:	8b 40 0c             	mov    0xc(%eax),%eax
    2a0a:	89 45 f0             	mov    %eax,-0x10(%ebp)
    2a0d:	eb 78                	jmp    2a87 <tty_do_write+0xa5>
    2a0f:	b8 02 00 00 00       	mov    $0x2,%eax
    2a14:	83 7d f0 02          	cmpl   $0x2,-0x10(%ebp)
    2a18:	0f 4e 45 f0          	cmovle -0x10(%ebp),%eax
    2a1c:	89 45 e8             	mov    %eax,-0x18(%ebp)
    2a1f:	83 ec 08             	sub    $0x8,%esp
    2a22:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    2a25:	50                   	push   %eax
    2a26:	6a 00                	push   $0x0
    2a28:	e8 49 15 00 00       	call   3f76 <va2la>
    2a2d:	83 c4 10             	add    $0x10,%esp
    2a30:	83 ec 04             	sub    $0x4,%esp
    2a33:	ff 75 e8             	pushl  -0x18(%ebp)
    2a36:	ff 75 f4             	pushl  -0xc(%ebp)
    2a39:	50                   	push   %eax
    2a3a:	e8 a1 3e 00 00       	call   68e0 <memcpy>
    2a3f:	83 c4 10             	add    $0x10,%esp
    2a42:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    2a49:	eb 28                	jmp    2a73 <tty_do_write+0x91>
    2a4b:	8d 55 e6             	lea    -0x1a(%ebp),%edx
    2a4e:	8b 45 ec             	mov    -0x14(%ebp),%eax
    2a51:	01 d0                	add    %edx,%eax
    2a53:	0f b6 00             	movzbl (%eax),%eax
    2a56:	0f be d0             	movsbl %al,%edx
    2a59:	8b 45 08             	mov    0x8(%ebp),%eax
    2a5c:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    2a62:	83 ec 08             	sub    $0x8,%esp
    2a65:	52                   	push   %edx
    2a66:	50                   	push   %eax
    2a67:	e8 b2 04 00 00       	call   2f1e <out_char>
    2a6c:	83 c4 10             	add    $0x10,%esp
    2a6f:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
    2a73:	8b 45 ec             	mov    -0x14(%ebp),%eax
    2a76:	3b 45 e8             	cmp    -0x18(%ebp),%eax
    2a79:	7c d0                	jl     2a4b <tty_do_write+0x69>
    2a7b:	8b 45 e8             	mov    -0x18(%ebp),%eax
    2a7e:	29 45 f0             	sub    %eax,-0x10(%ebp)
    2a81:	8b 45 e8             	mov    -0x18(%ebp),%eax
    2a84:	01 45 f4             	add    %eax,-0xc(%ebp)
    2a87:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    2a8b:	75 82                	jne    2a0f <tty_do_write+0x2d>
    2a8d:	8b 45 0c             	mov    0xc(%ebp),%eax
    2a90:	c7 40 04 0d 00 00 00 	movl   $0xd,0x4(%eax)
    2a97:	8b 45 0c             	mov    0xc(%ebp),%eax
    2a9a:	8b 00                	mov    (%eax),%eax
    2a9c:	83 ec 04             	sub    $0x4,%esp
    2a9f:	ff 75 0c             	pushl  0xc(%ebp)
    2aa2:	50                   	push   %eax
    2aa3:	6a 01                	push   $0x1
    2aa5:	e8 c5 13 00 00       	call   3e6f <send_recv>
    2aaa:	83 c4 10             	add    $0x10,%esp
    2aad:	90                   	nop
    2aae:	c9                   	leave  
    2aaf:	c3                   	ret    

00002ab0 <sys_printx>:
    2ab0:	55                   	push   %ebp
    2ab1:	89 e5                	mov    %esp,%ebp
    2ab3:	83 ec 48             	sub    $0x48,%esp
    2ab6:	c7 45 bf 3f 20 6b 5f 	movl   $0x5f6b203f,-0x41(%ebp)
    2abd:	c7 45 c3 72 65 65 6e 	movl   $0x6e656572,-0x3d(%ebp)
    2ac4:	c7 45 c7 74 65 72 20 	movl   $0x20726574,-0x39(%ebp)
    2acb:	c7 45 cb 69 73 20 69 	movl   $0x69207369,-0x35(%ebp)
    2ad2:	c7 45 cf 6e 63 6f 72 	movl   $0x726f636e,-0x31(%ebp)
    2ad9:	c7 45 d3 72 65 63 74 	movl   $0x74636572,-0x2d(%ebp)
    2ae0:	c7 45 d7 20 66 6f 72 	movl   $0x726f6620,-0x29(%ebp)
    2ae7:	c7 45 db 20 75 6e 6b 	movl   $0x6b6e7520,-0x25(%ebp)
    2aee:	c7 45 df 6e 6f 77 6e 	movl   $0x6e776f6e,-0x21(%ebp)
    2af5:	c7 45 e3 20 72 65 61 	movl   $0x61657220,-0x1d(%ebp)
    2afc:	c7 45 e7 73 6f 6e 00 	movl   $0x6e6f73,-0x19(%ebp)
    2b03:	c6 45 bf 02          	movb   $0x2,-0x41(%ebp)
    2b07:	a1 a0 93 04 00       	mov    0x493a0,%eax
    2b0c:	85 c0                	test   %eax,%eax
    2b0e:	75 25                	jne    2b35 <sys_printx+0x85>
    2b10:	8b 45 14             	mov    0x14(%ebp),%eax
    2b13:	2d e0 b2 04 00       	sub    $0x4b2e0,%eax
    2b18:	c1 f8 02             	sar    $0x2,%eax
    2b1b:	69 c0 6d b1 32 7c    	imul   $0x7c32b16d,%eax,%eax
    2b21:	83 ec 08             	sub    $0x8,%esp
    2b24:	ff 75 10             	pushl  0x10(%ebp)
    2b27:	50                   	push   %eax
    2b28:	e8 49 14 00 00       	call   3f76 <va2la>
    2b2d:	83 c4 10             	add    $0x10,%esp
    2b30:	89 45 f4             	mov    %eax,-0xc(%ebp)
    2b33:	eb 17                	jmp    2b4c <sys_printx+0x9c>
    2b35:	a1 a0 93 04 00       	mov    0x493a0,%eax
    2b3a:	85 c0                	test   %eax,%eax
    2b3c:	74 08                	je     2b46 <sys_printx+0x96>
    2b3e:	8b 45 10             	mov    0x10(%ebp),%eax
    2b41:	89 45 f4             	mov    %eax,-0xc(%ebp)
    2b44:	eb 06                	jmp    2b4c <sys_printx+0x9c>
    2b46:	8d 45 bf             	lea    -0x41(%ebp),%eax
    2b49:	89 45 f4             	mov    %eax,-0xc(%ebp)
    2b4c:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2b4f:	0f b6 00             	movzbl (%eax),%eax
    2b52:	3c 02                	cmp    $0x2,%al
    2b54:	74 1e                	je     2b74 <sys_printx+0xc4>
    2b56:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2b59:	0f b6 00             	movzbl (%eax),%eax
    2b5c:	3c 03                	cmp    $0x3,%al
    2b5e:	0f 85 cd 00 00 00    	jne    2c31 <sys_printx+0x181>
    2b64:	a1 c0 b2 04 00       	mov    0x4b2c0,%eax
    2b69:	3d 30 b9 04 00       	cmp    $0x4b930,%eax
    2b6e:	0f 83 bd 00 00 00    	jae    2c31 <sys_printx+0x181>
    2b74:	e8 b4 3b 00 00       	call   672d <disable_int>
    2b79:	c7 45 f0 00 80 0b 00 	movl   $0xb8000,-0x10(%ebp)
    2b80:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2b83:	83 c0 01             	add    $0x1,%eax
    2b86:	89 45 ec             	mov    %eax,-0x14(%ebp)
    2b89:	eb 76                	jmp    2c01 <sys_printx+0x151>
    2b8b:	8b 55 ec             	mov    -0x14(%ebp),%edx
    2b8e:	8d 42 01             	lea    0x1(%edx),%eax
    2b91:	89 45 ec             	mov    %eax,-0x14(%ebp)
    2b94:	8b 45 f0             	mov    -0x10(%ebp),%eax
    2b97:	8d 48 01             	lea    0x1(%eax),%ecx
    2b9a:	89 4d f0             	mov    %ecx,-0x10(%ebp)
    2b9d:	0f b6 12             	movzbl (%edx),%edx
    2ba0:	88 10                	mov    %dl,(%eax)
    2ba2:	8b 45 f0             	mov    -0x10(%ebp),%eax
    2ba5:	8d 50 01             	lea    0x1(%eax),%edx
    2ba8:	89 55 f0             	mov    %edx,-0x10(%ebp)
    2bab:	c6 00 1c             	movb   $0x1c,(%eax)
    2bae:	8b 45 ec             	mov    -0x14(%ebp),%eax
    2bb1:	0f b6 00             	movzbl (%eax),%eax
    2bb4:	84 c0                	test   %al,%al
    2bb6:	75 49                	jne    2c01 <sys_printx+0x151>
    2bb8:	eb 10                	jmp    2bca <sys_printx+0x11a>
    2bba:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    2bbe:	8b 45 f0             	mov    -0x10(%ebp),%eax
    2bc1:	8d 50 01             	lea    0x1(%eax),%edx
    2bc4:	89 55 f0             	mov    %edx,-0x10(%ebp)
    2bc7:	c6 00 08             	movb   $0x8,(%eax)
    2bca:	8b 45 f0             	mov    -0x10(%ebp),%eax
    2bcd:	8d 88 00 80 f4 ff    	lea    -0xb8000(%eax),%ecx
    2bd3:	ba 67 66 66 66       	mov    $0x66666667,%edx
    2bd8:	89 c8                	mov    %ecx,%eax
    2bda:	f7 ea                	imul   %edx
    2bdc:	c1 fa 09             	sar    $0x9,%edx
    2bdf:	89 c8                	mov    %ecx,%eax
    2be1:	c1 f8 1f             	sar    $0x1f,%eax
    2be4:	29 c2                	sub    %eax,%edx
    2be6:	89 d0                	mov    %edx,%eax
    2be8:	c1 e0 02             	shl    $0x2,%eax
    2beb:	01 d0                	add    %edx,%eax
    2bed:	c1 e0 08             	shl    $0x8,%eax
    2bf0:	29 c1                	sub    %eax,%ecx
    2bf2:	89 ca                	mov    %ecx,%edx
    2bf4:	85 d2                	test   %edx,%edx
    2bf6:	75 c2                	jne    2bba <sys_printx+0x10a>
    2bf8:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2bfb:	83 c0 01             	add    $0x1,%eax
    2bfe:	89 45 ec             	mov    %eax,-0x14(%ebp)
    2c01:	81 7d f0 ff ff 0b 00 	cmpl   $0xbffff,-0x10(%ebp)
    2c08:	76 81                	jbe    2b8b <sys_printx+0xdb>
    2c0a:	f4                   	hlt    
    2c0b:	eb 24                	jmp    2c31 <sys_printx+0x181>
    2c0d:	80 7d eb 02          	cmpb   $0x2,-0x15(%ebp)
    2c11:	74 1e                	je     2c31 <sys_printx+0x181>
    2c13:	80 7d eb 03          	cmpb   $0x3,-0x15(%ebp)
    2c17:	75 02                	jne    2c1b <sys_printx+0x16b>
    2c19:	eb 16                	jmp    2c31 <sys_printx+0x181>
    2c1b:	0f be 55 eb          	movsbl -0x15(%ebp),%edx
    2c1f:	a1 00 9c 04 00       	mov    0x49c00,%eax
    2c24:	83 ec 08             	sub    $0x8,%esp
    2c27:	52                   	push   %edx
    2c28:	50                   	push   %eax
    2c29:	e8 f0 02 00 00       	call   2f1e <out_char>
    2c2e:	83 c4 10             	add    $0x10,%esp
    2c31:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2c34:	8d 50 01             	lea    0x1(%eax),%edx
    2c37:	89 55 f4             	mov    %edx,-0xc(%ebp)
    2c3a:	0f b6 00             	movzbl (%eax),%eax
    2c3d:	88 45 eb             	mov    %al,-0x15(%ebp)
    2c40:	80 7d eb 00          	cmpb   $0x0,-0x15(%ebp)
    2c44:	75 c7                	jne    2c0d <sys_printx+0x15d>
    2c46:	b8 00 00 00 00       	mov    $0x0,%eax
    2c4b:	c9                   	leave  
    2c4c:	c3                   	ret    

00002c4d <dump_tty_buf>:
    2c4d:	55                   	push   %ebp
    2c4e:	89 e5                	mov    %esp,%ebp
    2c50:	83 ec 18             	sub    $0x18,%esp
    2c53:	c7 45 f4 04 9c 04 00 	movl   $0x49c04,-0xc(%ebp)
    2c5a:	83 ec 0c             	sub    $0xc,%esp
    2c5d:	68 20 f6 00 00       	push   $0xf620
    2c62:	e8 60 36 00 00       	call   62c7 <printl>
    2c67:	83 c4 10             	add    $0x10,%esp
    2c6a:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2c6d:	8b 90 00 04 00 00    	mov    0x400(%eax),%edx
    2c73:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2c76:	29 c2                	sub    %eax,%edx
    2c78:	89 d0                	mov    %edx,%eax
    2c7a:	c1 f8 02             	sar    $0x2,%eax
    2c7d:	83 ec 08             	sub    $0x8,%esp
    2c80:	50                   	push   %eax
    2c81:	68 54 aa 00 00       	push   $0xaa54
    2c86:	e8 3c 36 00 00       	call   62c7 <printl>
    2c8b:	83 c4 10             	add    $0x10,%esp
    2c8e:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2c91:	8b 90 04 04 00 00    	mov    0x404(%eax),%edx
    2c97:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2c9a:	29 c2                	sub    %eax,%edx
    2c9c:	89 d0                	mov    %edx,%eax
    2c9e:	c1 f8 02             	sar    $0x2,%eax
    2ca1:	83 ec 08             	sub    $0x8,%esp
    2ca4:	50                   	push   %eax
    2ca5:	68 5e aa 00 00       	push   $0xaa5e
    2caa:	e8 18 36 00 00       	call   62c7 <printl>
    2caf:	83 c4 10             	add    $0x10,%esp
    2cb2:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2cb5:	8b 80 08 04 00 00    	mov    0x408(%eax),%eax
    2cbb:	83 ec 08             	sub    $0x8,%esp
    2cbe:	50                   	push   %eax
    2cbf:	68 68 aa 00 00       	push   $0xaa68
    2cc4:	e8 fe 35 00 00       	call   62c7 <printl>
    2cc9:	83 c4 10             	add    $0x10,%esp
    2ccc:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2ccf:	8b 80 0c 04 00 00    	mov    0x40c(%eax),%eax
    2cd5:	89 45 f0             	mov    %eax,-0x10(%ebp)
    2cd8:	8b 45 f0             	mov    -0x10(%ebp),%eax
    2cdb:	69 c0 94 01 00 00    	imul   $0x194,%eax,%eax
    2ce1:	83 c0 60             	add    $0x60,%eax
    2ce4:	05 e0 b2 04 00       	add    $0x4b2e0,%eax
    2ce9:	83 c0 08             	add    $0x8,%eax
    2cec:	83 ec 04             	sub    $0x4,%esp
    2cef:	ff 75 f0             	pushl  -0x10(%ebp)
    2cf2:	50                   	push   %eax
    2cf3:	68 71 aa 00 00       	push   $0xaa71
    2cf8:	e8 ca 35 00 00       	call   62c7 <printl>
    2cfd:	83 c4 10             	add    $0x10,%esp
    2d00:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2d03:	8b 80 10 04 00 00    	mov    0x410(%eax),%eax
    2d09:	89 45 f0             	mov    %eax,-0x10(%ebp)
    2d0c:	8b 45 f0             	mov    -0x10(%ebp),%eax
    2d0f:	69 c0 94 01 00 00    	imul   $0x194,%eax,%eax
    2d15:	83 c0 60             	add    $0x60,%eax
    2d18:	05 e0 b2 04 00       	add    $0x4b2e0,%eax
    2d1d:	83 c0 08             	add    $0x8,%eax
    2d20:	83 ec 04             	sub    $0x4,%esp
    2d23:	ff 75 f0             	pushl  -0x10(%ebp)
    2d26:	50                   	push   %eax
    2d27:	68 71 aa 00 00       	push   $0xaa71
    2d2c:	e8 96 35 00 00       	call   62c7 <printl>
    2d31:	83 c4 10             	add    $0x10,%esp
    2d34:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2d37:	8b 80 14 04 00 00    	mov    0x414(%eax),%eax
    2d3d:	83 ec 08             	sub    $0x8,%esp
    2d40:	50                   	push   %eax
    2d41:	68 82 aa 00 00       	push   $0xaa82
    2d46:	e8 7c 35 00 00       	call   62c7 <printl>
    2d4b:	83 c4 10             	add    $0x10,%esp
    2d4e:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2d51:	8b 80 18 04 00 00    	mov    0x418(%eax),%eax
    2d57:	83 ec 08             	sub    $0x8,%esp
    2d5a:	50                   	push   %eax
    2d5b:	68 8f aa 00 00       	push   $0xaa8f
    2d60:	e8 62 35 00 00       	call   62c7 <printl>
    2d65:	83 c4 10             	add    $0x10,%esp
    2d68:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2d6b:	8b 80 1c 04 00 00    	mov    0x41c(%eax),%eax
    2d71:	83 ec 08             	sub    $0x8,%esp
    2d74:	50                   	push   %eax
    2d75:	68 9d aa 00 00       	push   $0xaa9d
    2d7a:	e8 48 35 00 00       	call   62c7 <printl>
    2d7f:	83 c4 10             	add    $0x10,%esp
    2d82:	83 ec 0c             	sub    $0xc,%esp
    2d85:	68 ac aa 00 00       	push   $0xaaac
    2d8a:	e8 38 35 00 00       	call   62c7 <printl>
    2d8f:	83 c4 10             	add    $0x10,%esp
    2d92:	83 ec 08             	sub    $0x8,%esp
    2d95:	68 ce aa 00 00       	push   $0xaace
    2d9a:	68 20 f6 00 00       	push   $0xf620
    2d9f:	e8 86 3b 00 00       	call   692a <strcpy>
    2da4:	83 c4 10             	add    $0x10,%esp
    2da7:	90                   	nop
    2da8:	c9                   	leave  
    2da9:	c3                   	ret    

00002daa <init_screen>:
    2daa:	55                   	push   %ebp
    2dab:	89 e5                	mov    %esp,%ebp
    2dad:	83 ec 28             	sub    $0x28,%esp
    2db0:	8b 45 08             	mov    0x8(%ebp),%eax
    2db3:	2d e0 97 04 00       	sub    $0x497e0,%eax
    2db8:	c1 f8 02             	sar    $0x2,%eax
    2dbb:	69 c0 39 dd 03 1c    	imul   $0x1c03dd39,%eax,%eax
    2dc1:	89 45 f0             	mov    %eax,-0x10(%ebp)
    2dc4:	8b 55 f0             	mov    -0x10(%ebp),%edx
    2dc7:	89 d0                	mov    %edx,%eax
    2dc9:	c1 e0 02             	shl    $0x2,%eax
    2dcc:	01 d0                	add    %edx,%eax
    2dce:	c1 e0 02             	shl    $0x2,%eax
    2dd1:	8d 90 40 b2 04 00    	lea    0x4b240(%eax),%edx
    2dd7:	8b 45 08             	mov    0x8(%ebp),%eax
    2dda:	89 90 20 04 00 00    	mov    %edx,0x420(%eax)
    2de0:	c7 45 ec 00 40 00 00 	movl   $0x4000,-0x14(%ebp)
    2de7:	8b 4d ec             	mov    -0x14(%ebp),%ecx
    2dea:	ba 56 55 55 55       	mov    $0x55555556,%edx
    2def:	89 c8                	mov    %ecx,%eax
    2df1:	f7 ea                	imul   %edx
    2df3:	89 c8                	mov    %ecx,%eax
    2df5:	c1 f8 1f             	sar    $0x1f,%eax
    2df8:	29 c2                	sub    %eax,%edx
    2dfa:	89 d0                	mov    %edx,%eax
    2dfc:	89 45 e8             	mov    %eax,-0x18(%ebp)
    2dff:	8b 45 f0             	mov    -0x10(%ebp),%eax
    2e02:	0f af 45 e8          	imul   -0x18(%ebp),%eax
    2e06:	89 c2                	mov    %eax,%edx
    2e08:	8b 45 08             	mov    0x8(%ebp),%eax
    2e0b:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    2e11:	89 50 04             	mov    %edx,0x4(%eax)
    2e14:	8b 4d e8             	mov    -0x18(%ebp),%ecx
    2e17:	ba 67 66 66 66       	mov    $0x66666667,%edx
    2e1c:	89 c8                	mov    %ecx,%eax
    2e1e:	f7 ea                	imul   %edx
    2e20:	c1 fa 05             	sar    $0x5,%edx
    2e23:	89 c8                	mov    %ecx,%eax
    2e25:	c1 f8 1f             	sar    $0x1f,%eax
    2e28:	29 c2                	sub    %eax,%edx
    2e2a:	89 d0                	mov    %edx,%eax
    2e2c:	c1 e0 02             	shl    $0x2,%eax
    2e2f:	01 d0                	add    %edx,%eax
    2e31:	c1 e0 04             	shl    $0x4,%eax
    2e34:	89 c2                	mov    %eax,%edx
    2e36:	8b 45 08             	mov    0x8(%ebp),%eax
    2e39:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    2e3f:	89 50 08             	mov    %edx,0x8(%eax)
    2e42:	8b 45 08             	mov    0x8(%ebp),%eax
    2e45:	8b 90 20 04 00 00    	mov    0x420(%eax),%edx
    2e4b:	8b 45 08             	mov    0x8(%ebp),%eax
    2e4e:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    2e54:	8b 52 04             	mov    0x4(%edx),%edx
    2e57:	89 10                	mov    %edx,(%eax)
    2e59:	8b 55 08             	mov    0x8(%ebp),%edx
    2e5c:	8b 92 20 04 00 00    	mov    0x420(%edx),%edx
    2e62:	8b 00                	mov    (%eax),%eax
    2e64:	89 42 0c             	mov    %eax,0xc(%edx)
    2e67:	8b 45 08             	mov    0x8(%ebp),%eax
    2e6a:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    2e70:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
    2e77:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    2e7b:	75 28                	jne    2ea5 <init_screen+0xfb>
    2e7d:	a1 24 a8 04 00       	mov    0x4a824,%eax
    2e82:	89 c2                	mov    %eax,%edx
    2e84:	c1 ea 1f             	shr    $0x1f,%edx
    2e87:	01 d0                	add    %edx,%eax
    2e89:	d1 f8                	sar    %eax
    2e8b:	89 c2                	mov    %eax,%edx
    2e8d:	8b 45 08             	mov    0x8(%ebp),%eax
    2e90:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    2e96:	89 50 0c             	mov    %edx,0xc(%eax)
    2e99:	c7 05 24 a8 04 00 00 	movl   $0x0,0x4a824
    2ea0:	00 00 00 
    2ea3:	eb 5e                	jmp    2f03 <init_screen+0x159>
    2ea5:	c7 45 de 5b 54 54 59 	movl   $0x5954545b,-0x22(%ebp)
    2eac:	c7 45 e2 20 23 3f 5d 	movl   $0x5d3f2320,-0x1e(%ebp)
    2eb3:	66 c7 45 e6 0a 00    	movw   $0xa,-0x1a(%ebp)
    2eb9:	8d 45 de             	lea    -0x22(%ebp),%eax
    2ebc:	89 45 f4             	mov    %eax,-0xc(%ebp)
    2ebf:	eb 38                	jmp    2ef9 <init_screen+0x14f>
    2ec1:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2ec4:	0f b6 00             	movzbl (%eax),%eax
    2ec7:	3c 3f                	cmp    $0x3f,%al
    2ec9:	75 0b                	jne    2ed6 <init_screen+0x12c>
    2ecb:	8b 45 f0             	mov    -0x10(%ebp),%eax
    2ece:	83 c0 30             	add    $0x30,%eax
    2ed1:	0f be c0             	movsbl %al,%eax
    2ed4:	eb 09                	jmp    2edf <init_screen+0x135>
    2ed6:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2ed9:	0f b6 00             	movzbl (%eax),%eax
    2edc:	0f be c0             	movsbl %al,%eax
    2edf:	8b 55 08             	mov    0x8(%ebp),%edx
    2ee2:	8b 92 20 04 00 00    	mov    0x420(%edx),%edx
    2ee8:	83 ec 08             	sub    $0x8,%esp
    2eeb:	50                   	push   %eax
    2eec:	52                   	push   %edx
    2eed:	e8 2c 00 00 00       	call   2f1e <out_char>
    2ef2:	83 c4 10             	add    $0x10,%esp
    2ef5:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    2ef9:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2efc:	0f b6 00             	movzbl (%eax),%eax
    2eff:	84 c0                	test   %al,%al
    2f01:	75 be                	jne    2ec1 <init_screen+0x117>
    2f03:	8b 45 08             	mov    0x8(%ebp),%eax
    2f06:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    2f0c:	8b 40 0c             	mov    0xc(%eax),%eax
    2f0f:	83 ec 0c             	sub    $0xc,%esp
    2f12:	50                   	push   %eax
    2f13:	e8 06 03 00 00       	call   321e <set_cursor>
    2f18:	83 c4 10             	add    $0x10,%esp
    2f1b:	90                   	nop
    2f1c:	c9                   	leave  
    2f1d:	c3                   	ret    

00002f1e <out_char>:
    2f1e:	55                   	push   %ebp
    2f1f:	89 e5                	mov    %esp,%ebp
    2f21:	83 ec 28             	sub    $0x28,%esp
    2f24:	8b 45 0c             	mov    0xc(%ebp),%eax
    2f27:	88 45 e4             	mov    %al,-0x1c(%ebp)
    2f2a:	8b 45 08             	mov    0x8(%ebp),%eax
    2f2d:	8b 40 0c             	mov    0xc(%eax),%eax
    2f30:	05 00 c0 05 00       	add    $0x5c000,%eax
    2f35:	01 c0                	add    %eax,%eax
    2f37:	89 45 f4             	mov    %eax,-0xc(%ebp)
    2f3a:	8b 45 08             	mov    0x8(%ebp),%eax
    2f3d:	8b 50 0c             	mov    0xc(%eax),%edx
    2f40:	8b 45 08             	mov    0x8(%ebp),%eax
    2f43:	8b 40 04             	mov    0x4(%eax),%eax
    2f46:	29 c2                	sub    %eax,%edx
    2f48:	8b 45 08             	mov    0x8(%ebp),%eax
    2f4b:	8b 40 08             	mov    0x8(%eax),%eax
    2f4e:	39 c2                	cmp    %eax,%edx
    2f50:	72 19                	jb     2f6b <out_char+0x4d>
    2f52:	6a 59                	push   $0x59
    2f54:	68 d0 aa 00 00       	push   $0xaad0
    2f59:	68 d0 aa 00 00       	push   $0xaad0
    2f5e:	68 e4 aa 00 00       	push   $0xaae4
    2f63:	e8 4b 3b 00 00       	call   6ab3 <assertion_failure>
    2f68:	83 c4 10             	add    $0x10,%esp
    2f6b:	8b 45 08             	mov    0x8(%ebp),%eax
    2f6e:	8b 50 0c             	mov    0xc(%eax),%edx
    2f71:	8b 45 08             	mov    0x8(%ebp),%eax
    2f74:	8b 40 04             	mov    0x4(%eax),%eax
    2f77:	89 d1                	mov    %edx,%ecx
    2f79:	29 c1                	sub    %eax,%ecx
    2f7b:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
    2f80:	89 c8                	mov    %ecx,%eax
    2f82:	f7 e2                	mul    %edx
    2f84:	c1 ea 06             	shr    $0x6,%edx
    2f87:	89 d0                	mov    %edx,%eax
    2f89:	c1 e0 02             	shl    $0x2,%eax
    2f8c:	01 d0                	add    %edx,%eax
    2f8e:	c1 e0 04             	shl    $0x4,%eax
    2f91:	29 c1                	sub    %eax,%ecx
    2f93:	89 ca                	mov    %ecx,%edx
    2f95:	89 55 f0             	mov    %edx,-0x10(%ebp)
    2f98:	8b 45 08             	mov    0x8(%ebp),%eax
    2f9b:	8b 50 0c             	mov    0xc(%eax),%edx
    2f9e:	8b 45 08             	mov    0x8(%ebp),%eax
    2fa1:	8b 40 04             	mov    0x4(%eax),%eax
    2fa4:	29 c2                	sub    %eax,%edx
    2fa6:	89 d0                	mov    %edx,%eax
    2fa8:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
    2fad:	f7 e2                	mul    %edx
    2faf:	89 d0                	mov    %edx,%eax
    2fb1:	c1 e8 06             	shr    $0x6,%eax
    2fb4:	89 45 ec             	mov    %eax,-0x14(%ebp)
    2fb7:	0f be 45 e4          	movsbl -0x1c(%ebp),%eax
    2fbb:	83 f8 08             	cmp    $0x8,%eax
    2fbe:	74 26                	je     2fe6 <out_char+0xc8>
    2fc0:	83 f8 0a             	cmp    $0xa,%eax
    2fc3:	75 54                	jne    3019 <out_char+0xfb>
    2fc5:	8b 45 08             	mov    0x8(%ebp),%eax
    2fc8:	8b 48 04             	mov    0x4(%eax),%ecx
    2fcb:	8b 45 ec             	mov    -0x14(%ebp),%eax
    2fce:	8d 50 01             	lea    0x1(%eax),%edx
    2fd1:	89 d0                	mov    %edx,%eax
    2fd3:	c1 e0 02             	shl    $0x2,%eax
    2fd6:	01 d0                	add    %edx,%eax
    2fd8:	c1 e0 04             	shl    $0x4,%eax
    2fdb:	8d 14 01             	lea    (%ecx,%eax,1),%edx
    2fde:	8b 45 08             	mov    0x8(%ebp),%eax
    2fe1:	89 50 0c             	mov    %edx,0xc(%eax)
    2fe4:	eb 60                	jmp    3046 <out_char+0x128>
    2fe6:	8b 45 08             	mov    0x8(%ebp),%eax
    2fe9:	8b 50 0c             	mov    0xc(%eax),%edx
    2fec:	8b 45 08             	mov    0x8(%ebp),%eax
    2fef:	8b 40 04             	mov    0x4(%eax),%eax
    2ff2:	39 c2                	cmp    %eax,%edx
    2ff4:	76 4f                	jbe    3045 <out_char+0x127>
    2ff6:	8b 45 08             	mov    0x8(%ebp),%eax
    2ff9:	8b 40 0c             	mov    0xc(%eax),%eax
    2ffc:	8d 50 ff             	lea    -0x1(%eax),%edx
    2fff:	8b 45 08             	mov    0x8(%ebp),%eax
    3002:	89 50 0c             	mov    %edx,0xc(%eax)
    3005:	8b 45 f4             	mov    -0xc(%ebp),%eax
    3008:	83 e8 02             	sub    $0x2,%eax
    300b:	c6 00 20             	movb   $0x20,(%eax)
    300e:	8b 45 f4             	mov    -0xc(%ebp),%eax
    3011:	83 e8 01             	sub    $0x1,%eax
    3014:	c6 00 07             	movb   $0x7,(%eax)
    3017:	eb 2c                	jmp    3045 <out_char+0x127>
    3019:	8b 45 f4             	mov    -0xc(%ebp),%eax
    301c:	8d 50 01             	lea    0x1(%eax),%edx
    301f:	89 55 f4             	mov    %edx,-0xc(%ebp)
    3022:	0f b6 55 e4          	movzbl -0x1c(%ebp),%edx
    3026:	88 10                	mov    %dl,(%eax)
    3028:	8b 45 f4             	mov    -0xc(%ebp),%eax
    302b:	8d 50 01             	lea    0x1(%eax),%edx
    302e:	89 55 f4             	mov    %edx,-0xc(%ebp)
    3031:	c6 00 07             	movb   $0x7,(%eax)
    3034:	8b 45 08             	mov    0x8(%ebp),%eax
    3037:	8b 40 0c             	mov    0xc(%eax),%eax
    303a:	8d 50 01             	lea    0x1(%eax),%edx
    303d:	8b 45 08             	mov    0x8(%ebp),%eax
    3040:	89 50 0c             	mov    %edx,0xc(%eax)
    3043:	eb 01                	jmp    3046 <out_char+0x128>
    3045:	90                   	nop
    3046:	8b 45 08             	mov    0x8(%ebp),%eax
    3049:	8b 50 0c             	mov    0xc(%eax),%edx
    304c:	8b 45 08             	mov    0x8(%ebp),%eax
    304f:	8b 40 04             	mov    0x4(%eax),%eax
    3052:	29 c2                	sub    %eax,%edx
    3054:	8b 45 08             	mov    0x8(%ebp),%eax
    3057:	8b 40 08             	mov    0x8(%eax),%eax
    305a:	39 c2                	cmp    %eax,%edx
    305c:	0f 82 d1 00 00 00    	jb     3133 <out_char+0x215>
    3062:	8b 45 08             	mov    0x8(%ebp),%eax
    3065:	8b 50 0c             	mov    0xc(%eax),%edx
    3068:	8b 45 08             	mov    0x8(%ebp),%eax
    306b:	8b 40 04             	mov    0x4(%eax),%eax
    306e:	89 d1                	mov    %edx,%ecx
    3070:	29 c1                	sub    %eax,%ecx
    3072:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
    3077:	89 c8                	mov    %ecx,%eax
    3079:	f7 e2                	mul    %edx
    307b:	c1 ea 06             	shr    $0x6,%edx
    307e:	89 d0                	mov    %edx,%eax
    3080:	c1 e0 02             	shl    $0x2,%eax
    3083:	01 d0                	add    %edx,%eax
    3085:	c1 e0 04             	shl    $0x4,%eax
    3088:	29 c1                	sub    %eax,%ecx
    308a:	89 ca                	mov    %ecx,%edx
    308c:	89 55 f0             	mov    %edx,-0x10(%ebp)
    308f:	8b 45 08             	mov    0x8(%ebp),%eax
    3092:	8b 50 0c             	mov    0xc(%eax),%edx
    3095:	8b 45 08             	mov    0x8(%ebp),%eax
    3098:	8b 40 04             	mov    0x4(%eax),%eax
    309b:	29 c2                	sub    %eax,%edx
    309d:	89 d0                	mov    %edx,%eax
    309f:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
    30a4:	f7 e2                	mul    %edx
    30a6:	89 d0                	mov    %edx,%eax
    30a8:	c1 e8 06             	shr    $0x6,%eax
    30ab:	89 45 ec             	mov    %eax,-0x14(%ebp)
    30ae:	8b 45 08             	mov    0x8(%ebp),%eax
    30b1:	8b 48 04             	mov    0x4(%eax),%ecx
    30b4:	8b 45 ec             	mov    -0x14(%ebp),%eax
    30b7:	8d 50 01             	lea    0x1(%eax),%edx
    30ba:	89 d0                	mov    %edx,%eax
    30bc:	c1 e0 02             	shl    $0x2,%eax
    30bf:	01 d0                	add    %edx,%eax
    30c1:	c1 e0 04             	shl    $0x4,%eax
    30c4:	01 c8                	add    %ecx,%eax
    30c6:	2d d0 07 00 00       	sub    $0x7d0,%eax
    30cb:	89 45 e8             	mov    %eax,-0x18(%ebp)
    30ce:	8b 55 e8             	mov    -0x18(%ebp),%edx
    30d1:	8b 45 08             	mov    0x8(%ebp),%eax
    30d4:	8b 40 04             	mov    0x4(%eax),%eax
    30d7:	83 ec 04             	sub    $0x4,%esp
    30da:	68 80 07 00 00       	push   $0x780
    30df:	52                   	push   %edx
    30e0:	50                   	push   %eax
    30e1:	e8 67 04 00 00       	call   354d <w_copy>
    30e6:	83 c4 10             	add    $0x10,%esp
    30e9:	8b 45 08             	mov    0x8(%ebp),%eax
    30ec:	8b 50 04             	mov    0x4(%eax),%edx
    30ef:	8b 45 08             	mov    0x8(%ebp),%eax
    30f2:	89 10                	mov    %edx,(%eax)
    30f4:	8b 45 08             	mov    0x8(%ebp),%eax
    30f7:	8b 50 04             	mov    0x4(%eax),%edx
    30fa:	8b 45 f0             	mov    -0x10(%ebp),%eax
    30fd:	01 d0                	add    %edx,%eax
    30ff:	8d 90 80 07 00 00    	lea    0x780(%eax),%edx
    3105:	8b 45 08             	mov    0x8(%ebp),%eax
    3108:	89 50 0c             	mov    %edx,0xc(%eax)
    310b:	8b 45 08             	mov    0x8(%ebp),%eax
    310e:	8b 40 0c             	mov    0xc(%eax),%eax
    3111:	83 ec 08             	sub    $0x8,%esp
    3114:	6a 50                	push   $0x50
    3116:	50                   	push   %eax
    3117:	e8 a5 00 00 00       	call   31c1 <clear_screen>
    311c:	83 c4 10             	add    $0x10,%esp
    311f:	8b 45 08             	mov    0x8(%ebp),%eax
    3122:	8b 40 10             	mov    0x10(%eax),%eax
    3125:	85 c0                	test   %eax,%eax
    3127:	75 0a                	jne    3133 <out_char+0x215>
    3129:	8b 45 08             	mov    0x8(%ebp),%eax
    312c:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
    3133:	8b 45 08             	mov    0x8(%ebp),%eax
    3136:	8b 50 0c             	mov    0xc(%eax),%edx
    3139:	8b 45 08             	mov    0x8(%ebp),%eax
    313c:	8b 40 04             	mov    0x4(%eax),%eax
    313f:	29 c2                	sub    %eax,%edx
    3141:	8b 45 08             	mov    0x8(%ebp),%eax
    3144:	8b 40 08             	mov    0x8(%eax),%eax
    3147:	39 c2                	cmp    %eax,%edx
    3149:	72 42                	jb     318d <out_char+0x26f>
    314b:	68 80 00 00 00       	push   $0x80
    3150:	68 d0 aa 00 00       	push   $0xaad0
    3155:	68 d0 aa 00 00       	push   $0xaad0
    315a:	68 e4 aa 00 00       	push   $0xaae4
    315f:	e8 4f 39 00 00       	call   6ab3 <assertion_failure>
    3164:	83 c4 10             	add    $0x10,%esp
    3167:	eb 24                	jmp    318d <out_char+0x26f>
    3169:	83 ec 08             	sub    $0x8,%esp
    316c:	6a 01                	push   $0x1
    316e:	ff 75 08             	pushl  0x8(%ebp)
    3171:	e8 b8 01 00 00       	call   332e <scroll_screen>
    3176:	83 c4 10             	add    $0x10,%esp
    3179:	8b 45 08             	mov    0x8(%ebp),%eax
    317c:	8b 40 0c             	mov    0xc(%eax),%eax
    317f:	83 ec 08             	sub    $0x8,%esp
    3182:	6a 50                	push   $0x50
    3184:	50                   	push   %eax
    3185:	e8 37 00 00 00       	call   31c1 <clear_screen>
    318a:	83 c4 10             	add    $0x10,%esp
    318d:	8b 45 08             	mov    0x8(%ebp),%eax
    3190:	8b 50 0c             	mov    0xc(%eax),%edx
    3193:	8b 45 08             	mov    0x8(%ebp),%eax
    3196:	8b 00                	mov    (%eax),%eax
    3198:	05 d0 07 00 00       	add    $0x7d0,%eax
    319d:	39 c2                	cmp    %eax,%edx
    319f:	73 c8                	jae    3169 <out_char+0x24b>
    31a1:	8b 45 08             	mov    0x8(%ebp),%eax
    31a4:	8b 50 0c             	mov    0xc(%eax),%edx
    31a7:	8b 45 08             	mov    0x8(%ebp),%eax
    31aa:	8b 00                	mov    (%eax),%eax
    31ac:	39 c2                	cmp    %eax,%edx
    31ae:	72 b9                	jb     3169 <out_char+0x24b>
    31b0:	83 ec 0c             	sub    $0xc,%esp
    31b3:	ff 75 08             	pushl  0x8(%ebp)
    31b6:	e8 57 03 00 00       	call   3512 <flush>
    31bb:	83 c4 10             	add    $0x10,%esp
    31be:	90                   	nop
    31bf:	c9                   	leave  
    31c0:	c3                   	ret    

000031c1 <clear_screen>:
    31c1:	55                   	push   %ebp
    31c2:	89 e5                	mov    %esp,%ebp
    31c4:	83 ec 10             	sub    $0x10,%esp
    31c7:	8b 45 08             	mov    0x8(%ebp),%eax
    31ca:	05 00 c0 05 00       	add    $0x5c000,%eax
    31cf:	01 c0                	add    %eax,%eax
    31d1:	89 45 fc             	mov    %eax,-0x4(%ebp)
    31d4:	eb 18                	jmp    31ee <clear_screen+0x2d>
    31d6:	8b 45 fc             	mov    -0x4(%ebp),%eax
    31d9:	8d 50 01             	lea    0x1(%eax),%edx
    31dc:	89 55 fc             	mov    %edx,-0x4(%ebp)
    31df:	c6 00 20             	movb   $0x20,(%eax)
    31e2:	8b 45 fc             	mov    -0x4(%ebp),%eax
    31e5:	8d 50 01             	lea    0x1(%eax),%edx
    31e8:	89 55 fc             	mov    %edx,-0x4(%ebp)
    31eb:	c6 00 07             	movb   $0x7,(%eax)
    31ee:	83 6d 0c 01          	subl   $0x1,0xc(%ebp)
    31f2:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    31f6:	79 de                	jns    31d6 <clear_screen+0x15>
    31f8:	90                   	nop
    31f9:	c9                   	leave  
    31fa:	c3                   	ret    

000031fb <is_current_console>:
    31fb:	55                   	push   %ebp
    31fc:	89 e5                	mov    %esp,%ebp
    31fe:	8b 15 c0 97 04 00    	mov    0x497c0,%edx
    3204:	89 d0                	mov    %edx,%eax
    3206:	c1 e0 02             	shl    $0x2,%eax
    3209:	01 d0                	add    %edx,%eax
    320b:	c1 e0 02             	shl    $0x2,%eax
    320e:	05 40 b2 04 00       	add    $0x4b240,%eax
    3213:	39 45 08             	cmp    %eax,0x8(%ebp)
    3216:	0f 94 c0             	sete   %al
    3219:	0f b6 c0             	movzbl %al,%eax
    321c:	5d                   	pop    %ebp
    321d:	c3                   	ret    

0000321e <set_cursor>:
    321e:	55                   	push   %ebp
    321f:	89 e5                	mov    %esp,%ebp
    3221:	83 ec 08             	sub    $0x8,%esp
    3224:	e8 04 35 00 00       	call   672d <disable_int>
    3229:	83 ec 08             	sub    $0x8,%esp
    322c:	6a 0e                	push   $0xe
    322e:	68 d4 03 00 00       	push   $0x3d4
    3233:	e8 65 34 00 00       	call   669d <out_byte>
    3238:	83 c4 10             	add    $0x10,%esp
    323b:	8b 45 08             	mov    0x8(%ebp),%eax
    323e:	c1 e8 08             	shr    $0x8,%eax
    3241:	0f b6 c0             	movzbl %al,%eax
    3244:	83 ec 08             	sub    $0x8,%esp
    3247:	50                   	push   %eax
    3248:	68 d5 03 00 00       	push   $0x3d5
    324d:	e8 4b 34 00 00       	call   669d <out_byte>
    3252:	83 c4 10             	add    $0x10,%esp
    3255:	83 ec 08             	sub    $0x8,%esp
    3258:	6a 0f                	push   $0xf
    325a:	68 d4 03 00 00       	push   $0x3d4
    325f:	e8 39 34 00 00       	call   669d <out_byte>
    3264:	83 c4 10             	add    $0x10,%esp
    3267:	8b 45 08             	mov    0x8(%ebp),%eax
    326a:	0f b6 c0             	movzbl %al,%eax
    326d:	83 ec 08             	sub    $0x8,%esp
    3270:	50                   	push   %eax
    3271:	68 d5 03 00 00       	push   $0x3d5
    3276:	e8 22 34 00 00       	call   669d <out_byte>
    327b:	83 c4 10             	add    $0x10,%esp
    327e:	e8 ac 34 00 00       	call   672f <enable_int>
    3283:	90                   	nop
    3284:	c9                   	leave  
    3285:	c3                   	ret    

00003286 <set_video_start_addr>:
    3286:	55                   	push   %ebp
    3287:	89 e5                	mov    %esp,%ebp
    3289:	83 ec 08             	sub    $0x8,%esp
    328c:	e8 9c 34 00 00       	call   672d <disable_int>
    3291:	83 ec 08             	sub    $0x8,%esp
    3294:	6a 0c                	push   $0xc
    3296:	68 d4 03 00 00       	push   $0x3d4
    329b:	e8 fd 33 00 00       	call   669d <out_byte>
    32a0:	83 c4 10             	add    $0x10,%esp
    32a3:	8b 45 08             	mov    0x8(%ebp),%eax
    32a6:	c1 e8 08             	shr    $0x8,%eax
    32a9:	0f b6 c0             	movzbl %al,%eax
    32ac:	83 ec 08             	sub    $0x8,%esp
    32af:	50                   	push   %eax
    32b0:	68 d5 03 00 00       	push   $0x3d5
    32b5:	e8 e3 33 00 00       	call   669d <out_byte>
    32ba:	83 c4 10             	add    $0x10,%esp
    32bd:	83 ec 08             	sub    $0x8,%esp
    32c0:	6a 0d                	push   $0xd
    32c2:	68 d4 03 00 00       	push   $0x3d4
    32c7:	e8 d1 33 00 00       	call   669d <out_byte>
    32cc:	83 c4 10             	add    $0x10,%esp
    32cf:	8b 45 08             	mov    0x8(%ebp),%eax
    32d2:	0f b6 c0             	movzbl %al,%eax
    32d5:	83 ec 08             	sub    $0x8,%esp
    32d8:	50                   	push   %eax
    32d9:	68 d5 03 00 00       	push   $0x3d5
    32de:	e8 ba 33 00 00       	call   669d <out_byte>
    32e3:	83 c4 10             	add    $0x10,%esp
    32e6:	e8 44 34 00 00       	call   672f <enable_int>
    32eb:	90                   	nop
    32ec:	c9                   	leave  
    32ed:	c3                   	ret    

000032ee <select_console>:
    32ee:	55                   	push   %ebp
    32ef:	89 e5                	mov    %esp,%ebp
    32f1:	83 ec 08             	sub    $0x8,%esp
    32f4:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
    32f8:	78 31                	js     332b <select_console+0x3d>
    32fa:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
    32fe:	7f 2b                	jg     332b <select_console+0x3d>
    3300:	8b 45 08             	mov    0x8(%ebp),%eax
    3303:	a3 c0 97 04 00       	mov    %eax,0x497c0
    3308:	8b 15 c0 97 04 00    	mov    0x497c0,%edx
    330e:	89 d0                	mov    %edx,%eax
    3310:	c1 e0 02             	shl    $0x2,%eax
    3313:	01 d0                	add    %edx,%eax
    3315:	c1 e0 02             	shl    $0x2,%eax
    3318:	05 40 b2 04 00       	add    $0x4b240,%eax
    331d:	83 ec 0c             	sub    $0xc,%esp
    3320:	50                   	push   %eax
    3321:	e8 ec 01 00 00       	call   3512 <flush>
    3326:	83 c4 10             	add    $0x10,%esp
    3329:	eb 01                	jmp    332c <select_console+0x3e>
    332b:	90                   	nop
    332c:	c9                   	leave  
    332d:	c3                   	ret    

0000332e <scroll_screen>:
    332e:	55                   	push   %ebp
    332f:	89 e5                	mov    %esp,%ebp
    3331:	83 ec 18             	sub    $0x18,%esp
    3334:	8b 45 08             	mov    0x8(%ebp),%eax
    3337:	8b 50 0c             	mov    0xc(%eax),%edx
    333a:	8b 45 08             	mov    0x8(%ebp),%eax
    333d:	8b 40 04             	mov    0x4(%eax),%eax
    3340:	29 c2                	sub    %eax,%edx
    3342:	89 d0                	mov    %edx,%eax
    3344:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
    3349:	f7 e2                	mul    %edx
    334b:	c1 ea 06             	shr    $0x6,%edx
    334e:	89 d0                	mov    %edx,%eax
    3350:	c1 e0 02             	shl    $0x2,%eax
    3353:	01 d0                	add    %edx,%eax
    3355:	c1 e0 04             	shl    $0x4,%eax
    3358:	89 45 f4             	mov    %eax,-0xc(%ebp)
    335b:	8b 45 08             	mov    0x8(%ebp),%eax
    335e:	8b 40 10             	mov    0x10(%eax),%eax
    3361:	85 c0                	test   %eax,%eax
    3363:	74 1b                	je     3380 <scroll_screen+0x52>
    3365:	8b 45 f4             	mov    -0xc(%ebp),%eax
    3368:	83 c0 50             	add    $0x50,%eax
    336b:	89 c2                	mov    %eax,%edx
    336d:	8b 45 08             	mov    0x8(%ebp),%eax
    3370:	8b 48 08             	mov    0x8(%eax),%ecx
    3373:	89 d0                	mov    %edx,%eax
    3375:	ba 00 00 00 00       	mov    $0x0,%edx
    337a:	f7 f1                	div    %ecx
    337c:	89 d0                	mov    %edx,%eax
    337e:	eb 05                	jmp    3385 <scroll_screen+0x57>
    3380:	b8 00 00 00 00       	mov    $0x0,%eax
    3385:	89 45 f0             	mov    %eax,-0x10(%ebp)
    3388:	8b 45 08             	mov    0x8(%ebp),%eax
    338b:	8b 10                	mov    (%eax),%edx
    338d:	8b 45 08             	mov    0x8(%ebp),%eax
    3390:	8b 40 04             	mov    0x4(%eax),%eax
    3393:	29 c2                	sub    %eax,%edx
    3395:	89 d0                	mov    %edx,%eax
    3397:	89 45 ec             	mov    %eax,-0x14(%ebp)
    339a:	83 7d 0c ff          	cmpl   $0xffffffff,0xc(%ebp)
    339e:	0f 85 c2 00 00 00    	jne    3466 <scroll_screen+0x138>
    33a4:	8b 45 08             	mov    0x8(%ebp),%eax
    33a7:	8b 40 10             	mov    0x10(%eax),%eax
    33aa:	85 c0                	test   %eax,%eax
    33ac:	75 18                	jne    33c6 <scroll_screen+0x98>
    33ae:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
    33b2:	7e 12                	jle    33c6 <scroll_screen+0x98>
    33b4:	8b 45 08             	mov    0x8(%ebp),%eax
    33b7:	8b 00                	mov    (%eax),%eax
    33b9:	8d 50 b0             	lea    -0x50(%eax),%edx
    33bc:	8b 45 08             	mov    0x8(%ebp),%eax
    33bf:	89 10                	mov    %edx,(%eax)
    33c1:	e9 3b 01 00 00       	jmp    3501 <scroll_screen+0x1d3>
    33c6:	8b 45 08             	mov    0x8(%ebp),%eax
    33c9:	8b 40 10             	mov    0x10(%eax),%eax
    33cc:	85 c0                	test   %eax,%eax
    33ce:	0f 84 2d 01 00 00    	je     3501 <scroll_screen+0x1d3>
    33d4:	8b 45 ec             	mov    -0x14(%ebp),%eax
    33d7:	3b 45 f0             	cmp    -0x10(%ebp),%eax
    33da:	0f 84 21 01 00 00    	je     3501 <scroll_screen+0x1d3>
    33e0:	8b 45 08             	mov    0x8(%ebp),%eax
    33e3:	8b 50 0c             	mov    0xc(%eax),%edx
    33e6:	8b 45 08             	mov    0x8(%ebp),%eax
    33e9:	8b 40 04             	mov    0x4(%eax),%eax
    33ec:	29 c2                	sub    %eax,%edx
    33ee:	8b 45 08             	mov    0x8(%ebp),%eax
    33f1:	8b 40 08             	mov    0x8(%eax),%eax
    33f4:	2d d0 07 00 00       	sub    $0x7d0,%eax
    33f9:	39 c2                	cmp    %eax,%edx
    33fb:	72 25                	jb     3422 <scroll_screen+0xf4>
    33fd:	8b 45 08             	mov    0x8(%ebp),%eax
    3400:	8b 10                	mov    (%eax),%edx
    3402:	8b 45 08             	mov    0x8(%ebp),%eax
    3405:	8b 40 04             	mov    0x4(%eax),%eax
    3408:	39 c2                	cmp    %eax,%edx
    340a:	0f 84 f1 00 00 00    	je     3501 <scroll_screen+0x1d3>
    3410:	8b 45 08             	mov    0x8(%ebp),%eax
    3413:	8b 00                	mov    (%eax),%eax
    3415:	8d 50 b0             	lea    -0x50(%eax),%edx
    3418:	8b 45 08             	mov    0x8(%ebp),%eax
    341b:	89 10                	mov    %edx,(%eax)
    341d:	e9 df 00 00 00       	jmp    3501 <scroll_screen+0x1d3>
    3422:	8b 45 08             	mov    0x8(%ebp),%eax
    3425:	8b 10                	mov    (%eax),%edx
    3427:	8b 45 08             	mov    0x8(%ebp),%eax
    342a:	8b 40 04             	mov    0x4(%eax),%eax
    342d:	39 c2                	cmp    %eax,%edx
    342f:	75 23                	jne    3454 <scroll_screen+0x126>
    3431:	8b 45 08             	mov    0x8(%ebp),%eax
    3434:	8b 40 08             	mov    0x8(%eax),%eax
    3437:	2d d0 07 00 00       	sub    $0x7d0,%eax
    343c:	89 45 ec             	mov    %eax,-0x14(%ebp)
    343f:	8b 45 08             	mov    0x8(%ebp),%eax
    3442:	8b 50 04             	mov    0x4(%eax),%edx
    3445:	8b 45 ec             	mov    -0x14(%ebp),%eax
    3448:	01 c2                	add    %eax,%edx
    344a:	8b 45 08             	mov    0x8(%ebp),%eax
    344d:	89 10                	mov    %edx,(%eax)
    344f:	e9 ad 00 00 00       	jmp    3501 <scroll_screen+0x1d3>
    3454:	8b 45 08             	mov    0x8(%ebp),%eax
    3457:	8b 00                	mov    (%eax),%eax
    3459:	8d 50 b0             	lea    -0x50(%eax),%edx
    345c:	8b 45 08             	mov    0x8(%ebp),%eax
    345f:	89 10                	mov    %edx,(%eax)
    3461:	e9 9b 00 00 00       	jmp    3501 <scroll_screen+0x1d3>
    3466:	83 7d 0c 01          	cmpl   $0x1,0xc(%ebp)
    346a:	75 6d                	jne    34d9 <scroll_screen+0x1ab>
    346c:	8b 45 08             	mov    0x8(%ebp),%eax
    346f:	8b 40 10             	mov    0x10(%eax),%eax
    3472:	85 c0                	test   %eax,%eax
    3474:	75 1c                	jne    3492 <scroll_screen+0x164>
    3476:	8b 45 ec             	mov    -0x14(%ebp),%eax
    3479:	05 cf 07 00 00       	add    $0x7cf,%eax
    347e:	39 45 f4             	cmp    %eax,-0xc(%ebp)
    3481:	7e 0f                	jle    3492 <scroll_screen+0x164>
    3483:	8b 45 08             	mov    0x8(%ebp),%eax
    3486:	8b 00                	mov    (%eax),%eax
    3488:	8d 50 50             	lea    0x50(%eax),%edx
    348b:	8b 45 08             	mov    0x8(%ebp),%eax
    348e:	89 10                	mov    %edx,(%eax)
    3490:	eb 6f                	jmp    3501 <scroll_screen+0x1d3>
    3492:	8b 45 08             	mov    0x8(%ebp),%eax
    3495:	8b 40 10             	mov    0x10(%eax),%eax
    3498:	85 c0                	test   %eax,%eax
    349a:	74 65                	je     3501 <scroll_screen+0x1d3>
    349c:	8b 45 ec             	mov    -0x14(%ebp),%eax
    349f:	05 80 07 00 00       	add    $0x780,%eax
    34a4:	39 45 f4             	cmp    %eax,-0xc(%ebp)
    34a7:	74 58                	je     3501 <scroll_screen+0x1d3>
    34a9:	8b 45 ec             	mov    -0x14(%ebp),%eax
    34ac:	05 d0 07 00 00       	add    $0x7d0,%eax
    34b1:	89 c2                	mov    %eax,%edx
    34b3:	8b 45 08             	mov    0x8(%ebp),%eax
    34b6:	8b 40 08             	mov    0x8(%eax),%eax
    34b9:	39 c2                	cmp    %eax,%edx
    34bb:	75 0d                	jne    34ca <scroll_screen+0x19c>
    34bd:	8b 45 08             	mov    0x8(%ebp),%eax
    34c0:	8b 50 04             	mov    0x4(%eax),%edx
    34c3:	8b 45 08             	mov    0x8(%ebp),%eax
    34c6:	89 10                	mov    %edx,(%eax)
    34c8:	eb 37                	jmp    3501 <scroll_screen+0x1d3>
    34ca:	8b 45 08             	mov    0x8(%ebp),%eax
    34cd:	8b 00                	mov    (%eax),%eax
    34cf:	8d 50 50             	lea    0x50(%eax),%edx
    34d2:	8b 45 08             	mov    0x8(%ebp),%eax
    34d5:	89 10                	mov    %edx,(%eax)
    34d7:	eb 28                	jmp    3501 <scroll_screen+0x1d3>
    34d9:	83 7d 0c ff          	cmpl   $0xffffffff,0xc(%ebp)
    34dd:	74 22                	je     3501 <scroll_screen+0x1d3>
    34df:	83 7d 0c 01          	cmpl   $0x1,0xc(%ebp)
    34e3:	74 1c                	je     3501 <scroll_screen+0x1d3>
    34e5:	68 24 01 00 00       	push   $0x124
    34ea:	68 d0 aa 00 00       	push   $0xaad0
    34ef:	68 d0 aa 00 00       	push   $0xaad0
    34f4:	68 0c ab 00 00       	push   $0xab0c
    34f9:	e8 b5 35 00 00       	call   6ab3 <assertion_failure>
    34fe:	83 c4 10             	add    $0x10,%esp
    3501:	83 ec 0c             	sub    $0xc,%esp
    3504:	ff 75 08             	pushl  0x8(%ebp)
    3507:	e8 06 00 00 00       	call   3512 <flush>
    350c:	83 c4 10             	add    $0x10,%esp
    350f:	90                   	nop
    3510:	c9                   	leave  
    3511:	c3                   	ret    

00003512 <flush>:
    3512:	55                   	push   %ebp
    3513:	89 e5                	mov    %esp,%ebp
    3515:	83 ec 08             	sub    $0x8,%esp
    3518:	ff 75 08             	pushl  0x8(%ebp)
    351b:	e8 db fc ff ff       	call   31fb <is_current_console>
    3520:	83 c4 04             	add    $0x4,%esp
    3523:	85 c0                	test   %eax,%eax
    3525:	74 23                	je     354a <flush+0x38>
    3527:	8b 45 08             	mov    0x8(%ebp),%eax
    352a:	8b 40 0c             	mov    0xc(%eax),%eax
    352d:	83 ec 0c             	sub    $0xc,%esp
    3530:	50                   	push   %eax
    3531:	e8 e8 fc ff ff       	call   321e <set_cursor>
    3536:	83 c4 10             	add    $0x10,%esp
    3539:	8b 45 08             	mov    0x8(%ebp),%eax
    353c:	8b 00                	mov    (%eax),%eax
    353e:	83 ec 0c             	sub    $0xc,%esp
    3541:	50                   	push   %eax
    3542:	e8 3f fd ff ff       	call   3286 <set_video_start_addr>
    3547:	83 c4 10             	add    $0x10,%esp
    354a:	90                   	nop
    354b:	c9                   	leave  
    354c:	c3                   	ret    

0000354d <w_copy>:
    354d:	55                   	push   %ebp
    354e:	89 e5                	mov    %esp,%ebp
    3550:	83 ec 08             	sub    $0x8,%esp
    3553:	8b 45 10             	mov    0x10(%ebp),%eax
    3556:	01 c0                	add    %eax,%eax
    3558:	8b 55 0c             	mov    0xc(%ebp),%edx
    355b:	01 d2                	add    %edx,%edx
    355d:	81 c2 00 80 0b 00    	add    $0xb8000,%edx
    3563:	89 d1                	mov    %edx,%ecx
    3565:	8b 55 08             	mov    0x8(%ebp),%edx
    3568:	01 d2                	add    %edx,%edx
    356a:	81 c2 00 80 0b 00    	add    $0xb8000,%edx
    3570:	83 ec 04             	sub    $0x4,%esp
    3573:	50                   	push   %eax
    3574:	51                   	push   %ecx
    3575:	52                   	push   %edx
    3576:	e8 65 33 00 00       	call   68e0 <memcpy>
    357b:	83 c4 10             	add    $0x10,%esp
    357e:	90                   	nop
    357f:	c9                   	leave  
    3580:	c3                   	ret    

00003581 <init_8259A>:
    3581:	55                   	push   %ebp
    3582:	89 e5                	mov    %esp,%ebp
    3584:	83 ec 18             	sub    $0x18,%esp
    3587:	83 ec 08             	sub    $0x8,%esp
    358a:	6a 11                	push   $0x11
    358c:	6a 20                	push   $0x20
    358e:	e8 0a 31 00 00       	call   669d <out_byte>
    3593:	83 c4 10             	add    $0x10,%esp
    3596:	83 ec 08             	sub    $0x8,%esp
    3599:	6a 11                	push   $0x11
    359b:	68 a0 00 00 00       	push   $0xa0
    35a0:	e8 f8 30 00 00       	call   669d <out_byte>
    35a5:	83 c4 10             	add    $0x10,%esp
    35a8:	83 ec 08             	sub    $0x8,%esp
    35ab:	6a 20                	push   $0x20
    35ad:	6a 21                	push   $0x21
    35af:	e8 e9 30 00 00       	call   669d <out_byte>
    35b4:	83 c4 10             	add    $0x10,%esp
    35b7:	83 ec 08             	sub    $0x8,%esp
    35ba:	6a 28                	push   $0x28
    35bc:	68 a1 00 00 00       	push   $0xa1
    35c1:	e8 d7 30 00 00       	call   669d <out_byte>
    35c6:	83 c4 10             	add    $0x10,%esp
    35c9:	83 ec 08             	sub    $0x8,%esp
    35cc:	6a 04                	push   $0x4
    35ce:	6a 21                	push   $0x21
    35d0:	e8 c8 30 00 00       	call   669d <out_byte>
    35d5:	83 c4 10             	add    $0x10,%esp
    35d8:	83 ec 08             	sub    $0x8,%esp
    35db:	6a 02                	push   $0x2
    35dd:	68 a1 00 00 00       	push   $0xa1
    35e2:	e8 b6 30 00 00       	call   669d <out_byte>
    35e7:	83 c4 10             	add    $0x10,%esp
    35ea:	83 ec 08             	sub    $0x8,%esp
    35ed:	6a 01                	push   $0x1
    35ef:	6a 21                	push   $0x21
    35f1:	e8 a7 30 00 00       	call   669d <out_byte>
    35f6:	83 c4 10             	add    $0x10,%esp
    35f9:	83 ec 08             	sub    $0x8,%esp
    35fc:	6a 01                	push   $0x1
    35fe:	68 a1 00 00 00       	push   $0xa1
    3603:	e8 95 30 00 00       	call   669d <out_byte>
    3608:	83 c4 10             	add    $0x10,%esp
    360b:	83 ec 08             	sub    $0x8,%esp
    360e:	68 ff 00 00 00       	push   $0xff
    3613:	6a 21                	push   $0x21
    3615:	e8 83 30 00 00       	call   669d <out_byte>
    361a:	83 c4 10             	add    $0x10,%esp
    361d:	83 ec 08             	sub    $0x8,%esp
    3620:	68 ff 00 00 00       	push   $0xff
    3625:	68 a1 00 00 00       	push   $0xa1
    362a:	e8 6e 30 00 00       	call   669d <out_byte>
    362f:	83 c4 10             	add    $0x10,%esp
    3632:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    3639:	eb 12                	jmp    364d <init_8259A+0xcc>
    363b:	8b 45 f4             	mov    -0xc(%ebp),%eax
    363e:	c7 04 85 80 b2 04 00 	movl   $0x3656,0x4b280(,%eax,4)
    3645:	56 36 00 00 
    3649:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    364d:	83 7d f4 0f          	cmpl   $0xf,-0xc(%ebp)
    3651:	7e e8                	jle    363b <init_8259A+0xba>
    3653:	90                   	nop
    3654:	c9                   	leave  
    3655:	c3                   	ret    

00003656 <spurious_irq>:
    3656:	55                   	push   %ebp
    3657:	89 e5                	mov    %esp,%ebp
    3659:	83 ec 08             	sub    $0x8,%esp
    365c:	83 ec 0c             	sub    $0xc,%esp
    365f:	68 2b ab 00 00       	push   $0xab2b
    3664:	e8 b7 2f 00 00       	call   6620 <disp_str>
    3669:	83 c4 10             	add    $0x10,%esp
    366c:	83 ec 0c             	sub    $0xc,%esp
    366f:	ff 75 08             	pushl  0x8(%ebp)
    3672:	e8 ee 31 00 00       	call   6865 <disp_int>
    3677:	83 c4 10             	add    $0x10,%esp
    367a:	83 ec 0c             	sub    $0xc,%esp
    367d:	68 3a ab 00 00       	push   $0xab3a
    3682:	e8 99 2f 00 00       	call   6620 <disp_str>
    3687:	83 c4 10             	add    $0x10,%esp
    368a:	90                   	nop
    368b:	c9                   	leave  
    368c:	c3                   	ret    

0000368d <put_irq_handler>:
    368d:	55                   	push   %ebp
    368e:	89 e5                	mov    %esp,%ebp
    3690:	83 ec 08             	sub    $0x8,%esp
    3693:	83 ec 0c             	sub    $0xc,%esp
    3696:	ff 75 08             	pushl  0x8(%ebp)
    3699:	e8 3b 30 00 00       	call   66d9 <disable_irq>
    369e:	83 c4 10             	add    $0x10,%esp
    36a1:	8b 45 08             	mov    0x8(%ebp),%eax
    36a4:	8b 55 0c             	mov    0xc(%ebp),%edx
    36a7:	89 14 85 80 b2 04 00 	mov    %edx,0x4b280(,%eax,4)
    36ae:	90                   	nop
    36af:	c9                   	leave  
    36b0:	c3                   	ret    

000036b1 <init_prot>:
    36b1:	55                   	push   %ebp
    36b2:	89 e5                	mov    %esp,%ebp
    36b4:	83 ec 18             	sub    $0x18,%esp
    36b7:	e8 c5 fe ff ff       	call   3581 <init_8259A>
    36bc:	6a 00                	push   $0x0
    36be:	68 44 13 00 00       	push   $0x1344
    36c3:	68 8e 00 00 00       	push   $0x8e
    36c8:	6a 00                	push   $0x0
    36ca:	e8 8e 03 00 00       	call   3a5d <init_idt_desc>
    36cf:	83 c4 10             	add    $0x10,%esp
    36d2:	6a 00                	push   $0x0
    36d4:	68 4a 13 00 00       	push   $0x134a
    36d9:	68 8e 00 00 00       	push   $0x8e
    36de:	6a 01                	push   $0x1
    36e0:	e8 78 03 00 00       	call   3a5d <init_idt_desc>
    36e5:	83 c4 10             	add    $0x10,%esp
    36e8:	6a 00                	push   $0x0
    36ea:	68 50 13 00 00       	push   $0x1350
    36ef:	68 8e 00 00 00       	push   $0x8e
    36f4:	6a 02                	push   $0x2
    36f6:	e8 62 03 00 00       	call   3a5d <init_idt_desc>
    36fb:	83 c4 10             	add    $0x10,%esp
    36fe:	6a 03                	push   $0x3
    3700:	68 56 13 00 00       	push   $0x1356
    3705:	68 8e 00 00 00       	push   $0x8e
    370a:	6a 03                	push   $0x3
    370c:	e8 4c 03 00 00       	call   3a5d <init_idt_desc>
    3711:	83 c4 10             	add    $0x10,%esp
    3714:	6a 03                	push   $0x3
    3716:	68 5c 13 00 00       	push   $0x135c
    371b:	68 8e 00 00 00       	push   $0x8e
    3720:	6a 04                	push   $0x4
    3722:	e8 36 03 00 00       	call   3a5d <init_idt_desc>
    3727:	83 c4 10             	add    $0x10,%esp
    372a:	6a 00                	push   $0x0
    372c:	68 62 13 00 00       	push   $0x1362
    3731:	68 8e 00 00 00       	push   $0x8e
    3736:	6a 05                	push   $0x5
    3738:	e8 20 03 00 00       	call   3a5d <init_idt_desc>
    373d:	83 c4 10             	add    $0x10,%esp
    3740:	6a 00                	push   $0x0
    3742:	68 68 13 00 00       	push   $0x1368
    3747:	68 8e 00 00 00       	push   $0x8e
    374c:	6a 06                	push   $0x6
    374e:	e8 0a 03 00 00       	call   3a5d <init_idt_desc>
    3753:	83 c4 10             	add    $0x10,%esp
    3756:	6a 00                	push   $0x0
    3758:	68 6e 13 00 00       	push   $0x136e
    375d:	68 8e 00 00 00       	push   $0x8e
    3762:	6a 07                	push   $0x7
    3764:	e8 f4 02 00 00       	call   3a5d <init_idt_desc>
    3769:	83 c4 10             	add    $0x10,%esp
    376c:	6a 00                	push   $0x0
    376e:	68 74 13 00 00       	push   $0x1374
    3773:	68 8e 00 00 00       	push   $0x8e
    3778:	6a 08                	push   $0x8
    377a:	e8 de 02 00 00       	call   3a5d <init_idt_desc>
    377f:	83 c4 10             	add    $0x10,%esp
    3782:	6a 00                	push   $0x0
    3784:	68 78 13 00 00       	push   $0x1378
    3789:	68 8e 00 00 00       	push   $0x8e
    378e:	6a 09                	push   $0x9
    3790:	e8 c8 02 00 00       	call   3a5d <init_idt_desc>
    3795:	83 c4 10             	add    $0x10,%esp
    3798:	6a 00                	push   $0x0
    379a:	68 7e 13 00 00       	push   $0x137e
    379f:	68 8e 00 00 00       	push   $0x8e
    37a4:	6a 0a                	push   $0xa
    37a6:	e8 b2 02 00 00       	call   3a5d <init_idt_desc>
    37ab:	83 c4 10             	add    $0x10,%esp
    37ae:	6a 00                	push   $0x0
    37b0:	68 82 13 00 00       	push   $0x1382
    37b5:	68 8e 00 00 00       	push   $0x8e
    37ba:	6a 0b                	push   $0xb
    37bc:	e8 9c 02 00 00       	call   3a5d <init_idt_desc>
    37c1:	83 c4 10             	add    $0x10,%esp
    37c4:	6a 00                	push   $0x0
    37c6:	68 86 13 00 00       	push   $0x1386
    37cb:	68 8e 00 00 00       	push   $0x8e
    37d0:	6a 0c                	push   $0xc
    37d2:	e8 86 02 00 00       	call   3a5d <init_idt_desc>
    37d7:	83 c4 10             	add    $0x10,%esp
    37da:	6a 00                	push   $0x0
    37dc:	68 8a 13 00 00       	push   $0x138a
    37e1:	68 8e 00 00 00       	push   $0x8e
    37e6:	6a 0d                	push   $0xd
    37e8:	e8 70 02 00 00       	call   3a5d <init_idt_desc>
    37ed:	83 c4 10             	add    $0x10,%esp
    37f0:	6a 00                	push   $0x0
    37f2:	68 8e 13 00 00       	push   $0x138e
    37f7:	68 8e 00 00 00       	push   $0x8e
    37fc:	6a 0e                	push   $0xe
    37fe:	e8 5a 02 00 00       	call   3a5d <init_idt_desc>
    3803:	83 c4 10             	add    $0x10,%esp
    3806:	6a 00                	push   $0x0
    3808:	68 92 13 00 00       	push   $0x1392
    380d:	68 8e 00 00 00       	push   $0x8e
    3812:	6a 10                	push   $0x10
    3814:	e8 44 02 00 00       	call   3a5d <init_idt_desc>
    3819:	83 c4 10             	add    $0x10,%esp
    381c:	6a 00                	push   $0x0
    381e:	68 50 10 00 00       	push   $0x1050
    3823:	68 8e 00 00 00       	push   $0x8e
    3828:	6a 20                	push   $0x20
    382a:	e8 2e 02 00 00       	call   3a5d <init_idt_desc>
    382f:	83 c4 10             	add    $0x10,%esp
    3832:	6a 00                	push   $0x0
    3834:	68 80 10 00 00       	push   $0x1080
    3839:	68 8e 00 00 00       	push   $0x8e
    383e:	6a 21                	push   $0x21
    3840:	e8 18 02 00 00       	call   3a5d <init_idt_desc>
    3845:	83 c4 10             	add    $0x10,%esp
    3848:	6a 00                	push   $0x0
    384a:	68 b0 10 00 00       	push   $0x10b0
    384f:	68 8e 00 00 00       	push   $0x8e
    3854:	6a 22                	push   $0x22
    3856:	e8 02 02 00 00       	call   3a5d <init_idt_desc>
    385b:	83 c4 10             	add    $0x10,%esp
    385e:	6a 00                	push   $0x0
    3860:	68 e0 10 00 00       	push   $0x10e0
    3865:	68 8e 00 00 00       	push   $0x8e
    386a:	6a 23                	push   $0x23
    386c:	e8 ec 01 00 00       	call   3a5d <init_idt_desc>
    3871:	83 c4 10             	add    $0x10,%esp
    3874:	6a 00                	push   $0x0
    3876:	68 10 11 00 00       	push   $0x1110
    387b:	68 8e 00 00 00       	push   $0x8e
    3880:	6a 24                	push   $0x24
    3882:	e8 d6 01 00 00       	call   3a5d <init_idt_desc>
    3887:	83 c4 10             	add    $0x10,%esp
    388a:	6a 00                	push   $0x0
    388c:	68 40 11 00 00       	push   $0x1140
    3891:	68 8e 00 00 00       	push   $0x8e
    3896:	6a 25                	push   $0x25
    3898:	e8 c0 01 00 00       	call   3a5d <init_idt_desc>
    389d:	83 c4 10             	add    $0x10,%esp
    38a0:	6a 00                	push   $0x0
    38a2:	68 70 11 00 00       	push   $0x1170
    38a7:	68 8e 00 00 00       	push   $0x8e
    38ac:	6a 26                	push   $0x26
    38ae:	e8 aa 01 00 00       	call   3a5d <init_idt_desc>
    38b3:	83 c4 10             	add    $0x10,%esp
    38b6:	6a 00                	push   $0x0
    38b8:	68 a0 11 00 00       	push   $0x11a0
    38bd:	68 8e 00 00 00       	push   $0x8e
    38c2:	6a 27                	push   $0x27
    38c4:	e8 94 01 00 00       	call   3a5d <init_idt_desc>
    38c9:	83 c4 10             	add    $0x10,%esp
    38cc:	6a 00                	push   $0x0
    38ce:	68 d0 11 00 00       	push   $0x11d0
    38d3:	68 8e 00 00 00       	push   $0x8e
    38d8:	6a 28                	push   $0x28
    38da:	e8 7e 01 00 00       	call   3a5d <init_idt_desc>
    38df:	83 c4 10             	add    $0x10,%esp
    38e2:	6a 00                	push   $0x0
    38e4:	68 00 12 00 00       	push   $0x1200
    38e9:	68 8e 00 00 00       	push   $0x8e
    38ee:	6a 29                	push   $0x29
    38f0:	e8 68 01 00 00       	call   3a5d <init_idt_desc>
    38f5:	83 c4 10             	add    $0x10,%esp
    38f8:	6a 00                	push   $0x0
    38fa:	68 30 12 00 00       	push   $0x1230
    38ff:	68 8e 00 00 00       	push   $0x8e
    3904:	6a 2a                	push   $0x2a
    3906:	e8 52 01 00 00       	call   3a5d <init_idt_desc>
    390b:	83 c4 10             	add    $0x10,%esp
    390e:	6a 00                	push   $0x0
    3910:	68 60 12 00 00       	push   $0x1260
    3915:	68 8e 00 00 00       	push   $0x8e
    391a:	6a 2b                	push   $0x2b
    391c:	e8 3c 01 00 00       	call   3a5d <init_idt_desc>
    3921:	83 c4 10             	add    $0x10,%esp
    3924:	6a 00                	push   $0x0
    3926:	68 90 12 00 00       	push   $0x1290
    392b:	68 8e 00 00 00       	push   $0x8e
    3930:	6a 2c                	push   $0x2c
    3932:	e8 26 01 00 00       	call   3a5d <init_idt_desc>
    3937:	83 c4 10             	add    $0x10,%esp
    393a:	6a 00                	push   $0x0
    393c:	68 c0 12 00 00       	push   $0x12c0
    3941:	68 8e 00 00 00       	push   $0x8e
    3946:	6a 2d                	push   $0x2d
    3948:	e8 10 01 00 00       	call   3a5d <init_idt_desc>
    394d:	83 c4 10             	add    $0x10,%esp
    3950:	6a 00                	push   $0x0
    3952:	68 f0 12 00 00       	push   $0x12f0
    3957:	68 8e 00 00 00       	push   $0x8e
    395c:	6a 2e                	push   $0x2e
    395e:	e8 fa 00 00 00       	call   3a5d <init_idt_desc>
    3963:	83 c4 10             	add    $0x10,%esp
    3966:	6a 00                	push   $0x0
    3968:	68 20 13 00 00       	push   $0x1320
    396d:	68 8e 00 00 00       	push   $0x8e
    3972:	6a 2f                	push   $0x2f
    3974:	e8 e4 00 00 00       	call   3a5d <init_idt_desc>
    3979:	83 c4 10             	add    $0x10,%esp
    397c:	6a 03                	push   $0x3
    397e:	68 db 13 00 00       	push   $0x13db
    3983:	68 8e 00 00 00       	push   $0x8e
    3988:	68 90 00 00 00       	push   $0x90
    398d:	e8 cb 00 00 00       	call   3a5d <init_idt_desc>
    3992:	83 c4 10             	add    $0x10,%esp
    3995:	83 ec 04             	sub    $0x4,%esp
    3998:	6a 68                	push   $0x68
    399a:	6a 00                	push   $0x0
    399c:	68 60 a4 04 00       	push   $0x4a460
    39a1:	e8 63 2f 00 00       	call   6909 <memset>
    39a6:	83 c4 10             	add    $0x10,%esp
    39a9:	c7 05 68 a4 04 00 10 	movl   $0x10,0x4a468
    39b0:	00 00 00 
    39b3:	83 ec 0c             	sub    $0xc,%esp
    39b6:	6a 10                	push   $0x10
    39b8:	e8 11 01 00 00       	call   3ace <seg2phys>
    39bd:	83 c4 10             	add    $0x10,%esp
    39c0:	ba 60 a4 04 00       	mov    $0x4a460,%edx
    39c5:	01 d0                	add    %edx,%eax
    39c7:	68 89 00 00 00       	push   $0x89
    39cc:	6a 67                	push   $0x67
    39ce:	50                   	push   %eax
    39cf:	68 e0 93 04 00       	push   $0x493e0
    39d4:	e8 44 01 00 00       	call   3b1d <init_descriptor>
    39d9:	83 c4 10             	add    $0x10,%esp
    39dc:	66 c7 05 c6 a4 04 00 	movw   $0x68,0x4a4c6
    39e3:	68 00 
    39e5:	c7 45 f0 e0 b2 04 00 	movl   $0x4b2e0,-0x10(%ebp)
    39ec:	66 c7 45 ee 28 00    	movw   $0x28,-0x12(%ebp)
    39f2:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    39f9:	eb 59                	jmp    3a54 <init_prot+0x3a3>
    39fb:	83 ec 0c             	sub    $0xc,%esp
    39fe:	6a 10                	push   $0x10
    3a00:	e8 c9 00 00 00       	call   3ace <seg2phys>
    3a05:	83 c4 10             	add    $0x10,%esp
    3a08:	89 c2                	mov    %eax,%edx
    3a0a:	8b 45 f4             	mov    -0xc(%ebp),%eax
    3a0d:	69 c0 94 01 00 00    	imul   $0x194,%eax,%eax
    3a13:	83 c0 40             	add    $0x40,%eax
    3a16:	05 e0 b2 04 00       	add    $0x4b2e0,%eax
    3a1b:	83 c0 0a             	add    $0xa,%eax
    3a1e:	01 c2                	add    %eax,%edx
    3a20:	0f b7 45 ee          	movzwl -0x12(%ebp),%eax
    3a24:	66 c1 e8 03          	shr    $0x3,%ax
    3a28:	0f b7 c0             	movzwl %ax,%eax
    3a2b:	c1 e0 03             	shl    $0x3,%eax
    3a2e:	05 c0 93 04 00       	add    $0x493c0,%eax
    3a33:	68 82 00 00 00       	push   $0x82
    3a38:	6a 0f                	push   $0xf
    3a3a:	52                   	push   %edx
    3a3b:	50                   	push   %eax
    3a3c:	e8 dc 00 00 00       	call   3b1d <init_descriptor>
    3a41:	83 c4 10             	add    $0x10,%esp
    3a44:	81 45 f0 94 01 00 00 	addl   $0x194,-0x10(%ebp)
    3a4b:	66 83 45 ee 08       	addw   $0x8,-0x12(%ebp)
    3a50:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    3a54:	83 7d f4 06          	cmpl   $0x6,-0xc(%ebp)
    3a58:	7e a1                	jle    39fb <init_prot+0x34a>
    3a5a:	90                   	nop
    3a5b:	c9                   	leave  
    3a5c:	c3                   	ret    

00003a5d <init_idt_desc>:
    3a5d:	55                   	push   %ebp
    3a5e:	89 e5                	mov    %esp,%ebp
    3a60:	83 ec 1c             	sub    $0x1c,%esp
    3a63:	8b 4d 08             	mov    0x8(%ebp),%ecx
    3a66:	8b 55 0c             	mov    0xc(%ebp),%edx
    3a69:	8b 45 14             	mov    0x14(%ebp),%eax
    3a6c:	88 4d ec             	mov    %cl,-0x14(%ebp)
    3a6f:	88 55 e8             	mov    %dl,-0x18(%ebp)
    3a72:	88 45 e4             	mov    %al,-0x1c(%ebp)
    3a75:	0f b6 45 ec          	movzbl -0x14(%ebp),%eax
    3a79:	c1 e0 03             	shl    $0x3,%eax
    3a7c:	05 40 a8 04 00       	add    $0x4a840,%eax
    3a81:	89 45 fc             	mov    %eax,-0x4(%ebp)
    3a84:	8b 45 10             	mov    0x10(%ebp),%eax
    3a87:	89 45 f8             	mov    %eax,-0x8(%ebp)
    3a8a:	8b 45 f8             	mov    -0x8(%ebp),%eax
    3a8d:	89 c2                	mov    %eax,%edx
    3a8f:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3a92:	66 89 10             	mov    %dx,(%eax)
    3a95:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3a98:	66 c7 40 02 08 00    	movw   $0x8,0x2(%eax)
    3a9e:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3aa1:	c6 40 04 00          	movb   $0x0,0x4(%eax)
    3aa5:	0f b6 45 e4          	movzbl -0x1c(%ebp),%eax
    3aa9:	c1 e0 05             	shl    $0x5,%eax
    3aac:	89 c2                	mov    %eax,%edx
    3aae:	0f b6 45 e8          	movzbl -0x18(%ebp),%eax
    3ab2:	09 d0                	or     %edx,%eax
    3ab4:	89 c2                	mov    %eax,%edx
    3ab6:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3ab9:	88 50 05             	mov    %dl,0x5(%eax)
    3abc:	8b 45 f8             	mov    -0x8(%ebp),%eax
    3abf:	c1 e8 10             	shr    $0x10,%eax
    3ac2:	89 c2                	mov    %eax,%edx
    3ac4:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3ac7:	66 89 50 06          	mov    %dx,0x6(%eax)
    3acb:	90                   	nop
    3acc:	c9                   	leave  
    3acd:	c3                   	ret    

00003ace <seg2phys>:
    3ace:	55                   	push   %ebp
    3acf:	89 e5                	mov    %esp,%ebp
    3ad1:	83 ec 14             	sub    $0x14,%esp
    3ad4:	8b 45 08             	mov    0x8(%ebp),%eax
    3ad7:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
    3adb:	0f b7 45 ec          	movzwl -0x14(%ebp),%eax
    3adf:	66 c1 e8 03          	shr    $0x3,%ax
    3ae3:	0f b7 c0             	movzwl %ax,%eax
    3ae6:	c1 e0 03             	shl    $0x3,%eax
    3ae9:	05 c0 93 04 00       	add    $0x493c0,%eax
    3aee:	89 45 fc             	mov    %eax,-0x4(%ebp)
    3af1:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3af4:	0f b6 40 07          	movzbl 0x7(%eax),%eax
    3af8:	0f b6 c0             	movzbl %al,%eax
    3afb:	c1 e0 18             	shl    $0x18,%eax
    3afe:	89 c2                	mov    %eax,%edx
    3b00:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3b03:	0f b6 40 04          	movzbl 0x4(%eax),%eax
    3b07:	0f b6 c0             	movzbl %al,%eax
    3b0a:	c1 e0 10             	shl    $0x10,%eax
    3b0d:	09 c2                	or     %eax,%edx
    3b0f:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3b12:	0f b7 40 02          	movzwl 0x2(%eax),%eax
    3b16:	0f b7 c0             	movzwl %ax,%eax
    3b19:	09 d0                	or     %edx,%eax
    3b1b:	c9                   	leave  
    3b1c:	c3                   	ret    

00003b1d <init_descriptor>:
    3b1d:	55                   	push   %ebp
    3b1e:	89 e5                	mov    %esp,%ebp
    3b20:	83 ec 04             	sub    $0x4,%esp
    3b23:	8b 45 14             	mov    0x14(%ebp),%eax
    3b26:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
    3b2a:	8b 45 10             	mov    0x10(%ebp),%eax
    3b2d:	89 c2                	mov    %eax,%edx
    3b2f:	8b 45 08             	mov    0x8(%ebp),%eax
    3b32:	66 89 10             	mov    %dx,(%eax)
    3b35:	8b 45 0c             	mov    0xc(%ebp),%eax
    3b38:	89 c2                	mov    %eax,%edx
    3b3a:	8b 45 08             	mov    0x8(%ebp),%eax
    3b3d:	66 89 50 02          	mov    %dx,0x2(%eax)
    3b41:	8b 45 0c             	mov    0xc(%ebp),%eax
    3b44:	c1 e8 10             	shr    $0x10,%eax
    3b47:	89 c2                	mov    %eax,%edx
    3b49:	8b 45 08             	mov    0x8(%ebp),%eax
    3b4c:	88 50 04             	mov    %dl,0x4(%eax)
    3b4f:	0f b7 45 fc          	movzwl -0x4(%ebp),%eax
    3b53:	89 c2                	mov    %eax,%edx
    3b55:	8b 45 08             	mov    0x8(%ebp),%eax
    3b58:	88 50 05             	mov    %dl,0x5(%eax)
    3b5b:	8b 45 10             	mov    0x10(%ebp),%eax
    3b5e:	c1 e8 10             	shr    $0x10,%eax
    3b61:	83 e0 0f             	and    $0xf,%eax
    3b64:	89 c2                	mov    %eax,%edx
    3b66:	0f b7 45 fc          	movzwl -0x4(%ebp),%eax
    3b6a:	66 c1 e8 08          	shr    $0x8,%ax
    3b6e:	83 e0 f0             	and    $0xfffffff0,%eax
    3b71:	09 c2                	or     %eax,%edx
    3b73:	8b 45 08             	mov    0x8(%ebp),%eax
    3b76:	88 50 06             	mov    %dl,0x6(%eax)
    3b79:	8b 45 0c             	mov    0xc(%ebp),%eax
    3b7c:	c1 e8 18             	shr    $0x18,%eax
    3b7f:	89 c2                	mov    %eax,%edx
    3b81:	8b 45 08             	mov    0x8(%ebp),%eax
    3b84:	88 50 07             	mov    %dl,0x7(%eax)
    3b87:	90                   	nop
    3b88:	c9                   	leave  
    3b89:	c3                   	ret    

00003b8a <exception_handler>:
    3b8a:	55                   	push   %ebp
    3b8b:	89 e5                	mov    %esp,%ebp
    3b8d:	57                   	push   %edi
    3b8e:	56                   	push   %esi
    3b8f:	53                   	push   %ebx
    3b90:	81 ec 1c 05 00 00    	sub    $0x51c,%esp
    3b96:	c7 45 e0 74 00 00 00 	movl   $0x74,-0x20(%ebp)
    3b9d:	8d 85 e0 fa ff ff    	lea    -0x520(%ebp),%eax
    3ba3:	bb 80 ab 00 00       	mov    $0xab80,%ebx
    3ba8:	ba 40 01 00 00       	mov    $0x140,%edx
    3bad:	89 c7                	mov    %eax,%edi
    3baf:	89 de                	mov    %ebx,%esi
    3bb1:	89 d1                	mov    %edx,%ecx
    3bb3:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
    3bb5:	c7 05 24 a8 04 00 00 	movl   $0x0,0x4a824
    3bbc:	00 00 00 
    3bbf:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    3bc6:	eb 14                	jmp    3bdc <exception_handler+0x52>
    3bc8:	83 ec 0c             	sub    $0xc,%esp
    3bcb:	68 40 ab 00 00       	push   $0xab40
    3bd0:	e8 4b 2a 00 00       	call   6620 <disp_str>
    3bd5:	83 c4 10             	add    $0x10,%esp
    3bd8:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    3bdc:	81 7d e4 8f 01 00 00 	cmpl   $0x18f,-0x1c(%ebp)
    3be3:	7e e3                	jle    3bc8 <exception_handler+0x3e>
    3be5:	c7 05 24 a8 04 00 00 	movl   $0x0,0x4a824
    3bec:	00 00 00 
    3bef:	83 ec 08             	sub    $0x8,%esp
    3bf2:	ff 75 e0             	pushl  -0x20(%ebp)
    3bf5:	68 42 ab 00 00       	push   $0xab42
    3bfa:	e8 5f 2a 00 00       	call   665e <disp_color_str>
    3bff:	83 c4 10             	add    $0x10,%esp
    3c02:	8d 85 e0 fa ff ff    	lea    -0x520(%ebp),%eax
    3c08:	8b 55 08             	mov    0x8(%ebp),%edx
    3c0b:	c1 e2 06             	shl    $0x6,%edx
    3c0e:	01 d0                	add    %edx,%eax
    3c10:	83 ec 08             	sub    $0x8,%esp
    3c13:	ff 75 e0             	pushl  -0x20(%ebp)
    3c16:	50                   	push   %eax
    3c17:	e8 42 2a 00 00       	call   665e <disp_color_str>
    3c1c:	83 c4 10             	add    $0x10,%esp
    3c1f:	83 ec 08             	sub    $0x8,%esp
    3c22:	ff 75 e0             	pushl  -0x20(%ebp)
    3c25:	68 52 ab 00 00       	push   $0xab52
    3c2a:	e8 2f 2a 00 00       	call   665e <disp_color_str>
    3c2f:	83 c4 10             	add    $0x10,%esp
    3c32:	83 ec 08             	sub    $0x8,%esp
    3c35:	ff 75 e0             	pushl  -0x20(%ebp)
    3c38:	68 55 ab 00 00       	push   $0xab55
    3c3d:	e8 1c 2a 00 00       	call   665e <disp_color_str>
    3c42:	83 c4 10             	add    $0x10,%esp
    3c45:	83 ec 0c             	sub    $0xc,%esp
    3c48:	ff 75 18             	pushl  0x18(%ebp)
    3c4b:	e8 15 2c 00 00       	call   6865 <disp_int>
    3c50:	83 c4 10             	add    $0x10,%esp
    3c53:	83 ec 08             	sub    $0x8,%esp
    3c56:	ff 75 e0             	pushl  -0x20(%ebp)
    3c59:	68 5d ab 00 00       	push   $0xab5d
    3c5e:	e8 fb 29 00 00       	call   665e <disp_color_str>
    3c63:	83 c4 10             	add    $0x10,%esp
    3c66:	83 ec 0c             	sub    $0xc,%esp
    3c69:	ff 75 14             	pushl  0x14(%ebp)
    3c6c:	e8 f4 2b 00 00       	call   6865 <disp_int>
    3c71:	83 c4 10             	add    $0x10,%esp
    3c74:	83 ec 08             	sub    $0x8,%esp
    3c77:	ff 75 e0             	pushl  -0x20(%ebp)
    3c7a:	68 61 ab 00 00       	push   $0xab61
    3c7f:	e8 da 29 00 00       	call   665e <disp_color_str>
    3c84:	83 c4 10             	add    $0x10,%esp
    3c87:	83 ec 0c             	sub    $0xc,%esp
    3c8a:	ff 75 10             	pushl  0x10(%ebp)
    3c8d:	e8 d3 2b 00 00       	call   6865 <disp_int>
    3c92:	83 c4 10             	add    $0x10,%esp
    3c95:	83 7d 0c ff          	cmpl   $0xffffffff,0xc(%ebp)
    3c99:	74 21                	je     3cbc <exception_handler+0x132>
    3c9b:	83 ec 08             	sub    $0x8,%esp
    3c9e:	ff 75 e0             	pushl  -0x20(%ebp)
    3ca1:	68 66 ab 00 00       	push   $0xab66
    3ca6:	e8 b3 29 00 00       	call   665e <disp_color_str>
    3cab:	83 c4 10             	add    $0x10,%esp
    3cae:	83 ec 0c             	sub    $0xc,%esp
    3cb1:	ff 75 0c             	pushl  0xc(%ebp)
    3cb4:	e8 ac 2b 00 00       	call   6865 <disp_int>
    3cb9:	83 c4 10             	add    $0x10,%esp
    3cbc:	90                   	nop
    3cbd:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3cc0:	5b                   	pop    %ebx
    3cc1:	5e                   	pop    %esi
    3cc2:	5f                   	pop    %edi
    3cc3:	5d                   	pop    %ebp
    3cc4:	c3                   	ret    

00003cc5 <schedule>:
    3cc5:	55                   	push   %ebp
    3cc6:	89 e5                	mov    %esp,%ebp
    3cc8:	83 ec 10             	sub    $0x10,%esp
    3ccb:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
    3cd2:	eb 74                	jmp    3d48 <schedule+0x83>
    3cd4:	c7 45 fc e0 b2 04 00 	movl   $0x4b2e0,-0x4(%ebp)
    3cdb:	eb 2d                	jmp    3d0a <schedule+0x45>
    3cdd:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3ce0:	8b 40 78             	mov    0x78(%eax),%eax
    3ce3:	85 c0                	test   %eax,%eax
    3ce5:	75 1c                	jne    3d03 <schedule+0x3e>
    3ce7:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3cea:	8b 40 5c             	mov    0x5c(%eax),%eax
    3ced:	39 45 f8             	cmp    %eax,-0x8(%ebp)
    3cf0:	7d 11                	jge    3d03 <schedule+0x3e>
    3cf2:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3cf5:	8b 40 5c             	mov    0x5c(%eax),%eax
    3cf8:	89 45 f8             	mov    %eax,-0x8(%ebp)
    3cfb:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3cfe:	a3 c0 b2 04 00       	mov    %eax,0x4b2c0
    3d03:	81 45 fc 94 01 00 00 	addl   $0x194,-0x4(%ebp)
    3d0a:	81 7d fc 58 bc 04 00 	cmpl   $0x4bc58,-0x4(%ebp)
    3d11:	76 ca                	jbe    3cdd <schedule+0x18>
    3d13:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
    3d17:	75 2f                	jne    3d48 <schedule+0x83>
    3d19:	c7 45 fc e0 b2 04 00 	movl   $0x4b2e0,-0x4(%ebp)
    3d20:	eb 1d                	jmp    3d3f <schedule+0x7a>
    3d22:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3d25:	8b 40 78             	mov    0x78(%eax),%eax
    3d28:	85 c0                	test   %eax,%eax
    3d2a:	75 0c                	jne    3d38 <schedule+0x73>
    3d2c:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3d2f:	8b 50 60             	mov    0x60(%eax),%edx
    3d32:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3d35:	89 50 5c             	mov    %edx,0x5c(%eax)
    3d38:	81 45 fc 94 01 00 00 	addl   $0x194,-0x4(%ebp)
    3d3f:	81 7d fc 58 bc 04 00 	cmpl   $0x4bc58,-0x4(%ebp)
    3d46:	76 da                	jbe    3d22 <schedule+0x5d>
    3d48:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
    3d4c:	74 86                	je     3cd4 <schedule+0xf>
    3d4e:	90                   	nop
    3d4f:	c9                   	leave  
    3d50:	c3                   	ret    

00003d51 <sys_sendrec>:
    3d51:	55                   	push   %ebp
    3d52:	89 e5                	mov    %esp,%ebp
    3d54:	83 ec 18             	sub    $0x18,%esp
    3d57:	a1 a0 93 04 00       	mov    0x493a0,%eax
    3d5c:	85 c0                	test   %eax,%eax
    3d5e:	74 19                	je     3d79 <sys_sendrec+0x28>
    3d60:	6a 46                	push   $0x46
    3d62:	68 80 b0 00 00       	push   $0xb080
    3d67:	68 80 b0 00 00       	push   $0xb080
    3d6c:	68 8e b0 00 00       	push   $0xb08e
    3d71:	e8 3d 2d 00 00       	call   6ab3 <assertion_failure>
    3d76:	83 c4 10             	add    $0x10,%esp
    3d79:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    3d7d:	78 06                	js     3d85 <sys_sendrec+0x34>
    3d7f:	83 7d 0c 06          	cmpl   $0x6,0xc(%ebp)
    3d83:	7e 25                	jle    3daa <sys_sendrec+0x59>
    3d85:	83 7d 0c 11          	cmpl   $0x11,0xc(%ebp)
    3d89:	74 1f                	je     3daa <sys_sendrec+0x59>
    3d8b:	83 7d 0c f6          	cmpl   $0xfffffff6,0xc(%ebp)
    3d8f:	74 19                	je     3daa <sys_sendrec+0x59>
    3d91:	6a 49                	push   $0x49
    3d93:	68 80 b0 00 00       	push   $0xb080
    3d98:	68 80 b0 00 00       	push   $0xb080
    3d9d:	68 a0 b0 00 00       	push   $0xb0a0
    3da2:	e8 0c 2d 00 00       	call   6ab3 <assertion_failure>
    3da7:	83 c4 10             	add    $0x10,%esp
    3daa:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    3db1:	8b 45 14             	mov    0x14(%ebp),%eax
    3db4:	2d e0 b2 04 00       	sub    $0x4b2e0,%eax
    3db9:	c1 f8 02             	sar    $0x2,%eax
    3dbc:	69 c0 6d b1 32 7c    	imul   $0x7c32b16d,%eax,%eax
    3dc2:	89 45 f0             	mov    %eax,-0x10(%ebp)
    3dc5:	83 ec 08             	sub    $0x8,%esp
    3dc8:	ff 75 10             	pushl  0x10(%ebp)
    3dcb:	ff 75 f0             	pushl  -0x10(%ebp)
    3dce:	e8 a3 01 00 00       	call   3f76 <va2la>
    3dd3:	83 c4 10             	add    $0x10,%esp
    3dd6:	89 45 ec             	mov    %eax,-0x14(%ebp)
    3dd9:	8b 45 ec             	mov    -0x14(%ebp),%eax
    3ddc:	8b 55 f0             	mov    -0x10(%ebp),%edx
    3ddf:	89 10                	mov    %edx,(%eax)
    3de1:	8b 45 ec             	mov    -0x14(%ebp),%eax
    3de4:	8b 00                	mov    (%eax),%eax
    3de6:	39 45 0c             	cmp    %eax,0xc(%ebp)
    3de9:	75 19                	jne    3e04 <sys_sendrec+0xb3>
    3deb:	6a 50                	push   $0x50
    3ded:	68 80 b0 00 00       	push   $0xb080
    3df2:	68 80 b0 00 00       	push   $0xb080
    3df7:	68 fe b0 00 00       	push   $0xb0fe
    3dfc:	e8 b2 2c 00 00       	call   6ab3 <assertion_failure>
    3e01:	83 c4 10             	add    $0x10,%esp
    3e04:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
    3e08:	75 22                	jne    3e2c <sys_sendrec+0xdb>
    3e0a:	83 ec 04             	sub    $0x4,%esp
    3e0d:	ff 75 10             	pushl  0x10(%ebp)
    3e10:	ff 75 0c             	pushl  0xc(%ebp)
    3e13:	ff 75 14             	pushl  0x14(%ebp)
    3e16:	e8 3e 03 00 00       	call   4159 <msg_send>
    3e1b:	83 c4 10             	add    $0x10,%esp
    3e1e:	89 45 f4             	mov    %eax,-0xc(%ebp)
    3e21:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    3e25:	74 41                	je     3e68 <sys_sendrec+0x117>
    3e27:	8b 45 f4             	mov    -0xc(%ebp),%eax
    3e2a:	eb 41                	jmp    3e6d <sys_sendrec+0x11c>
    3e2c:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
    3e30:	75 22                	jne    3e54 <sys_sendrec+0x103>
    3e32:	83 ec 04             	sub    $0x4,%esp
    3e35:	ff 75 10             	pushl  0x10(%ebp)
    3e38:	ff 75 0c             	pushl  0xc(%ebp)
    3e3b:	ff 75 14             	pushl  0x14(%ebp)
    3e3e:	e8 58 07 00 00       	call   459b <msg_receive>
    3e43:	83 c4 10             	add    $0x10,%esp
    3e46:	89 45 f4             	mov    %eax,-0xc(%ebp)
    3e49:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    3e4d:	74 19                	je     3e68 <sys_sendrec+0x117>
    3e4f:	8b 45 f4             	mov    -0xc(%ebp),%eax
    3e52:	eb 19                	jmp    3e6d <sys_sendrec+0x11c>
    3e54:	6a 02                	push   $0x2
    3e56:	6a 01                	push   $0x1
    3e58:	ff 75 08             	pushl  0x8(%ebp)
    3e5b:	68 18 b1 00 00       	push   $0xb118
    3e60:	e8 62 dd ff ff       	call   1bc7 <panic>
    3e65:	83 c4 10             	add    $0x10,%esp
    3e68:	b8 00 00 00 00       	mov    $0x0,%eax
    3e6d:	c9                   	leave  
    3e6e:	c3                   	ret    

00003e6f <send_recv>:
    3e6f:	55                   	push   %ebp
    3e70:	89 e5                	mov    %esp,%ebp
    3e72:	83 ec 18             	sub    $0x18,%esp
    3e75:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    3e7c:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
    3e80:	75 12                	jne    3e94 <send_recv+0x25>
    3e82:	83 ec 04             	sub    $0x4,%esp
    3e85:	6a 30                	push   $0x30
    3e87:	6a 00                	push   $0x0
    3e89:	ff 75 10             	pushl  0x10(%ebp)
    3e8c:	e8 78 2a 00 00       	call   6909 <memset>
    3e91:	83 c4 10             	add    $0x10,%esp
    3e94:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
    3e98:	7e 59                	jle    3ef3 <send_recv+0x84>
    3e9a:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
    3e9e:	7e 3a                	jle    3eda <send_recv+0x6b>
    3ea0:	83 7d 08 03          	cmpl   $0x3,0x8(%ebp)
    3ea4:	75 4d                	jne    3ef3 <send_recv+0x84>
    3ea6:	83 ec 04             	sub    $0x4,%esp
    3ea9:	ff 75 10             	pushl  0x10(%ebp)
    3eac:	ff 75 0c             	pushl  0xc(%ebp)
    3eaf:	6a 01                	push   $0x1
    3eb1:	e8 6a d5 ff ff       	call   1420 <sendrec>
    3eb6:	83 c4 10             	add    $0x10,%esp
    3eb9:	89 45 f4             	mov    %eax,-0xc(%ebp)
    3ebc:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    3ec0:	75 61                	jne    3f23 <send_recv+0xb4>
    3ec2:	83 ec 04             	sub    $0x4,%esp
    3ec5:	ff 75 10             	pushl  0x10(%ebp)
    3ec8:	ff 75 0c             	pushl  0xc(%ebp)
    3ecb:	6a 02                	push   $0x2
    3ecd:	e8 4e d5 ff ff       	call   1420 <sendrec>
    3ed2:	83 c4 10             	add    $0x10,%esp
    3ed5:	89 45 f4             	mov    %eax,-0xc(%ebp)
    3ed8:	eb 49                	jmp    3f23 <send_recv+0xb4>
    3eda:	83 ec 04             	sub    $0x4,%esp
    3edd:	ff 75 10             	pushl  0x10(%ebp)
    3ee0:	ff 75 0c             	pushl  0xc(%ebp)
    3ee3:	ff 75 08             	pushl  0x8(%ebp)
    3ee6:	e8 35 d5 ff ff       	call   1420 <sendrec>
    3eeb:	83 c4 10             	add    $0x10,%esp
    3eee:	89 45 f4             	mov    %eax,-0xc(%ebp)
    3ef1:	eb 34                	jmp    3f27 <send_recv+0xb8>
    3ef3:	83 7d 08 03          	cmpl   $0x3,0x8(%ebp)
    3ef7:	74 2d                	je     3f26 <send_recv+0xb7>
    3ef9:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
    3efd:	74 27                	je     3f26 <send_recv+0xb7>
    3eff:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
    3f03:	74 21                	je     3f26 <send_recv+0xb7>
    3f05:	68 8c 00 00 00       	push   $0x8c
    3f0a:	68 80 b0 00 00       	push   $0xb080
    3f0f:	68 80 b0 00 00       	push   $0xb080
    3f14:	68 54 b1 00 00       	push   $0xb154
    3f19:	e8 95 2b 00 00       	call   6ab3 <assertion_failure>
    3f1e:	83 c4 10             	add    $0x10,%esp
    3f21:	eb 03                	jmp    3f26 <send_recv+0xb7>
    3f23:	90                   	nop
    3f24:	eb 01                	jmp    3f27 <send_recv+0xb8>
    3f26:	90                   	nop
    3f27:	8b 45 f4             	mov    -0xc(%ebp),%eax
    3f2a:	c9                   	leave  
    3f2b:	c3                   	ret    

00003f2c <ldt_seg_linear>:
    3f2c:	55                   	push   %ebp
    3f2d:	89 e5                	mov    %esp,%ebp
    3f2f:	83 ec 10             	sub    $0x10,%esp
    3f32:	8b 45 0c             	mov    0xc(%ebp),%eax
    3f35:	83 c0 08             	add    $0x8,%eax
    3f38:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    3f3f:	8b 45 08             	mov    0x8(%ebp),%eax
    3f42:	01 d0                	add    %edx,%eax
    3f44:	83 c0 0a             	add    $0xa,%eax
    3f47:	89 45 fc             	mov    %eax,-0x4(%ebp)
    3f4a:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3f4d:	0f b6 40 07          	movzbl 0x7(%eax),%eax
    3f51:	0f b6 c0             	movzbl %al,%eax
    3f54:	c1 e0 18             	shl    $0x18,%eax
    3f57:	89 c2                	mov    %eax,%edx
    3f59:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3f5c:	0f b6 40 04          	movzbl 0x4(%eax),%eax
    3f60:	0f b6 c0             	movzbl %al,%eax
    3f63:	c1 e0 10             	shl    $0x10,%eax
    3f66:	09 c2                	or     %eax,%edx
    3f68:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3f6b:	0f b7 40 02          	movzwl 0x2(%eax),%eax
    3f6f:	0f b7 c0             	movzwl %ax,%eax
    3f72:	09 d0                	or     %edx,%eax
    3f74:	c9                   	leave  
    3f75:	c3                   	ret    

00003f76 <va2la>:
    3f76:	55                   	push   %ebp
    3f77:	89 e5                	mov    %esp,%ebp
    3f79:	83 ec 18             	sub    $0x18,%esp
    3f7c:	8b 45 08             	mov    0x8(%ebp),%eax
    3f7f:	69 c0 94 01 00 00    	imul   $0x194,%eax,%eax
    3f85:	05 e0 b2 04 00       	add    $0x4b2e0,%eax
    3f8a:	89 45 f4             	mov    %eax,-0xc(%ebp)
    3f8d:	6a 01                	push   $0x1
    3f8f:	ff 75 f4             	pushl  -0xc(%ebp)
    3f92:	e8 95 ff ff ff       	call   3f2c <ldt_seg_linear>
    3f97:	83 c4 08             	add    $0x8,%esp
    3f9a:	89 45 f0             	mov    %eax,-0x10(%ebp)
    3f9d:	8b 55 0c             	mov    0xc(%ebp),%edx
    3fa0:	8b 45 f0             	mov    -0x10(%ebp),%eax
    3fa3:	01 d0                	add    %edx,%eax
    3fa5:	89 45 ec             	mov    %eax,-0x14(%ebp)
    3fa8:	83 7d 08 06          	cmpl   $0x6,0x8(%ebp)
    3fac:	7f 24                	jg     3fd2 <va2la+0x5c>
    3fae:	8b 45 0c             	mov    0xc(%ebp),%eax
    3fb1:	39 45 ec             	cmp    %eax,-0x14(%ebp)
    3fb4:	74 1c                	je     3fd2 <va2la+0x5c>
    3fb6:	68 b9 00 00 00       	push   $0xb9
    3fbb:	68 80 b0 00 00       	push   $0xb080
    3fc0:	68 80 b0 00 00       	push   $0xb080
    3fc5:	68 96 b1 00 00       	push   $0xb196
    3fca:	e8 e4 2a 00 00       	call   6ab3 <assertion_failure>
    3fcf:	83 c4 10             	add    $0x10,%esp
    3fd2:	8b 45 ec             	mov    -0x14(%ebp),%eax
    3fd5:	c9                   	leave  
    3fd6:	c3                   	ret    

00003fd7 <reset_msg>:
    3fd7:	55                   	push   %ebp
    3fd8:	89 e5                	mov    %esp,%ebp
    3fda:	83 ec 08             	sub    $0x8,%esp
    3fdd:	83 ec 04             	sub    $0x4,%esp
    3fe0:	6a 30                	push   $0x30
    3fe2:	6a 00                	push   $0x0
    3fe4:	ff 75 08             	pushl  0x8(%ebp)
    3fe7:	e8 1d 29 00 00       	call   6909 <memset>
    3fec:	83 c4 10             	add    $0x10,%esp
    3fef:	90                   	nop
    3ff0:	c9                   	leave  
    3ff1:	c3                   	ret    

00003ff2 <block>:
    3ff2:	55                   	push   %ebp
    3ff3:	89 e5                	mov    %esp,%ebp
    3ff5:	83 ec 08             	sub    $0x8,%esp
    3ff8:	8b 45 08             	mov    0x8(%ebp),%eax
    3ffb:	8b 40 78             	mov    0x78(%eax),%eax
    3ffe:	85 c0                	test   %eax,%eax
    4000:	75 1c                	jne    401e <block+0x2c>
    4002:	68 da 00 00 00       	push   $0xda
    4007:	68 80 b0 00 00       	push   $0xb080
    400c:	68 80 b0 00 00       	push   $0xb080
    4011:	68 a4 b1 00 00       	push   $0xb1a4
    4016:	e8 98 2a 00 00       	call   6ab3 <assertion_failure>
    401b:	83 c4 10             	add    $0x10,%esp
    401e:	e8 a2 fc ff ff       	call   3cc5 <schedule>
    4023:	90                   	nop
    4024:	c9                   	leave  
    4025:	c3                   	ret    

00004026 <unblock>:
    4026:	55                   	push   %ebp
    4027:	89 e5                	mov    %esp,%ebp
    4029:	83 ec 08             	sub    $0x8,%esp
    402c:	8b 45 08             	mov    0x8(%ebp),%eax
    402f:	8b 40 78             	mov    0x78(%eax),%eax
    4032:	85 c0                	test   %eax,%eax
    4034:	74 1c                	je     4052 <unblock+0x2c>
    4036:	68 e9 00 00 00       	push   $0xe9
    403b:	68 80 b0 00 00       	push   $0xb080
    4040:	68 80 b0 00 00       	push   $0xb080
    4045:	68 af b1 00 00       	push   $0xb1af
    404a:	e8 64 2a 00 00       	call   6ab3 <assertion_failure>
    404f:	83 c4 10             	add    $0x10,%esp
    4052:	90                   	nop
    4053:	c9                   	leave  
    4054:	c3                   	ret    

00004055 <deadlock>:
    4055:	55                   	push   %ebp
    4056:	89 e5                	mov    %esp,%ebp
    4058:	83 ec 18             	sub    $0x18,%esp
    405b:	8b 45 0c             	mov    0xc(%ebp),%eax
    405e:	69 c0 94 01 00 00    	imul   $0x194,%eax,%eax
    4064:	05 e0 b2 04 00       	add    $0x4b2e0,%eax
    4069:	89 45 f4             	mov    %eax,-0xc(%ebp)
    406c:	8b 45 f4             	mov    -0xc(%ebp),%eax
    406f:	8b 40 78             	mov    0x78(%eax),%eax
    4072:	83 e0 02             	and    $0x2,%eax
    4075:	85 c0                	test   %eax,%eax
    4077:	0f 84 d4 00 00 00    	je     4151 <deadlock+0xfc>
    407d:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4080:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
    4086:	39 45 08             	cmp    %eax,0x8(%ebp)
    4089:	0f 85 a6 00 00 00    	jne    4135 <deadlock+0xe0>
    408f:	8b 45 0c             	mov    0xc(%ebp),%eax
    4092:	69 c0 94 01 00 00    	imul   $0x194,%eax,%eax
    4098:	05 e0 b2 04 00       	add    $0x4b2e0,%eax
    409d:	89 45 f4             	mov    %eax,-0xc(%ebp)
    40a0:	8b 45 f4             	mov    -0xc(%ebp),%eax
    40a3:	83 c0 68             	add    $0x68,%eax
    40a6:	83 ec 08             	sub    $0x8,%esp
    40a9:	50                   	push   %eax
    40aa:	68 bf b1 00 00       	push   $0xb1bf
    40af:	e8 13 22 00 00       	call   62c7 <printl>
    40b4:	83 c4 10             	add    $0x10,%esp
    40b7:	8b 45 f4             	mov    -0xc(%ebp),%eax
    40ba:	8b 40 7c             	mov    0x7c(%eax),%eax
    40bd:	85 c0                	test   %eax,%eax
    40bf:	75 1c                	jne    40dd <deadlock+0x88>
    40c1:	68 05 01 00 00       	push   $0x105
    40c6:	68 80 b0 00 00       	push   $0xb080
    40cb:	68 80 b0 00 00       	push   $0xb080
    40d0:	68 c5 b1 00 00       	push   $0xb1c5
    40d5:	e8 d9 29 00 00       	call   6ab3 <assertion_failure>
    40da:	83 c4 10             	add    $0x10,%esp
    40dd:	8b 45 f4             	mov    -0xc(%ebp),%eax
    40e0:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
    40e6:	69 c0 94 01 00 00    	imul   $0x194,%eax,%eax
    40ec:	05 e0 b2 04 00       	add    $0x4b2e0,%eax
    40f1:	89 45 f4             	mov    %eax,-0xc(%ebp)
    40f4:	8b 45 f4             	mov    -0xc(%ebp),%eax
    40f7:	83 c0 68             	add    $0x68,%eax
    40fa:	83 ec 08             	sub    $0x8,%esp
    40fd:	50                   	push   %eax
    40fe:	68 ce b1 00 00       	push   $0xb1ce
    4103:	e8 bf 21 00 00       	call   62c7 <printl>
    4108:	83 c4 10             	add    $0x10,%esp
    410b:	8b 45 08             	mov    0x8(%ebp),%eax
    410e:	69 c0 94 01 00 00    	imul   $0x194,%eax,%eax
    4114:	05 e0 b2 04 00       	add    $0x4b2e0,%eax
    4119:	39 45 f4             	cmp    %eax,-0xc(%ebp)
    411c:	75 99                	jne    40b7 <deadlock+0x62>
    411e:	83 ec 0c             	sub    $0xc,%esp
    4121:	68 d3 b1 00 00       	push   $0xb1d3
    4126:	e8 9c 21 00 00       	call   62c7 <printl>
    412b:	83 c4 10             	add    $0x10,%esp
    412e:	b8 01 00 00 00       	mov    $0x1,%eax
    4133:	eb 22                	jmp    4157 <deadlock+0x102>
    4135:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4138:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
    413e:	69 c0 94 01 00 00    	imul   $0x194,%eax,%eax
    4144:	05 e0 b2 04 00       	add    $0x4b2e0,%eax
    4149:	89 45 f4             	mov    %eax,-0xc(%ebp)
    414c:	e9 1b ff ff ff       	jmp    406c <deadlock+0x17>
    4151:	90                   	nop
    4152:	b8 00 00 00 00       	mov    $0x0,%eax
    4157:	c9                   	leave  
    4158:	c3                   	ret    

00004159 <msg_send>:
    4159:	55                   	push   %ebp
    415a:	89 e5                	mov    %esp,%ebp
    415c:	53                   	push   %ebx
    415d:	83 ec 14             	sub    $0x14,%esp
    4160:	8b 45 08             	mov    0x8(%ebp),%eax
    4163:	89 45 f0             	mov    %eax,-0x10(%ebp)
    4166:	8b 45 0c             	mov    0xc(%ebp),%eax
    4169:	69 c0 94 01 00 00    	imul   $0x194,%eax,%eax
    416f:	05 e0 b2 04 00       	add    $0x4b2e0,%eax
    4174:	89 45 ec             	mov    %eax,-0x14(%ebp)
    4177:	8b 45 f0             	mov    -0x10(%ebp),%eax
    417a:	2d e0 b2 04 00       	sub    $0x4b2e0,%eax
    417f:	c1 f8 02             	sar    $0x2,%eax
    4182:	69 c0 6d b1 32 7c    	imul   $0x7c32b16d,%eax,%eax
    4188:	39 45 0c             	cmp    %eax,0xc(%ebp)
    418b:	75 1c                	jne    41a9 <msg_send+0x50>
    418d:	68 29 01 00 00       	push   $0x129
    4192:	68 80 b0 00 00       	push   $0xb080
    4197:	68 80 b0 00 00       	push   $0xb080
    419c:	68 d7 b1 00 00       	push   $0xb1d7
    41a1:	e8 0d 29 00 00       	call   6ab3 <assertion_failure>
    41a6:	83 c4 10             	add    $0x10,%esp
    41a9:	8b 45 f0             	mov    -0x10(%ebp),%eax
    41ac:	2d e0 b2 04 00       	sub    $0x4b2e0,%eax
    41b1:	c1 f8 02             	sar    $0x2,%eax
    41b4:	69 c0 6d b1 32 7c    	imul   $0x7c32b16d,%eax,%eax
    41ba:	83 ec 08             	sub    $0x8,%esp
    41bd:	ff 75 0c             	pushl  0xc(%ebp)
    41c0:	50                   	push   %eax
    41c1:	e8 8f fe ff ff       	call   4055 <deadlock>
    41c6:	83 c4 10             	add    $0x10,%esp
    41c9:	85 c0                	test   %eax,%eax
    41cb:	74 1e                	je     41eb <msg_send+0x92>
    41cd:	8b 45 ec             	mov    -0x14(%ebp),%eax
    41d0:	8d 50 68             	lea    0x68(%eax),%edx
    41d3:	8b 45 f0             	mov    -0x10(%ebp),%eax
    41d6:	83 c0 68             	add    $0x68,%eax
    41d9:	83 ec 04             	sub    $0x4,%esp
    41dc:	52                   	push   %edx
    41dd:	50                   	push   %eax
    41de:	68 f0 b1 00 00       	push   $0xb1f0
    41e3:	e8 df d9 ff ff       	call   1bc7 <panic>
    41e8:	83 c4 10             	add    $0x10,%esp
    41eb:	8b 45 ec             	mov    -0x14(%ebp),%eax
    41ee:	8b 40 78             	mov    0x78(%eax),%eax
    41f1:	83 e0 04             	and    $0x4,%eax
    41f4:	85 c0                	test   %eax,%eax
    41f6:	0f 84 3e 02 00 00    	je     443a <msg_send+0x2e1>
    41fc:	8b 45 ec             	mov    -0x14(%ebp),%eax
    41ff:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    4205:	8b 55 f0             	mov    -0x10(%ebp),%edx
    4208:	81 ea e0 b2 04 00    	sub    $0x4b2e0,%edx
    420e:	c1 fa 02             	sar    $0x2,%edx
    4211:	69 d2 6d b1 32 7c    	imul   $0x7c32b16d,%edx,%edx
    4217:	39 d0                	cmp    %edx,%eax
    4219:	74 12                	je     422d <msg_send+0xd4>
    421b:	8b 45 ec             	mov    -0x14(%ebp),%eax
    421e:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    4224:	83 f8 11             	cmp    $0x11,%eax
    4227:	0f 85 0d 02 00 00    	jne    443a <msg_send+0x2e1>
    422d:	8b 45 ec             	mov    -0x14(%ebp),%eax
    4230:	8b 40 7c             	mov    0x7c(%eax),%eax
    4233:	85 c0                	test   %eax,%eax
    4235:	75 1c                	jne    4253 <msg_send+0xfa>
    4237:	68 33 01 00 00       	push   $0x133
    423c:	68 80 b0 00 00       	push   $0xb080
    4241:	68 80 b0 00 00       	push   $0xb080
    4246:	68 04 b2 00 00       	push   $0xb204
    424b:	e8 63 28 00 00       	call   6ab3 <assertion_failure>
    4250:	83 c4 10             	add    $0x10,%esp
    4253:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
    4257:	75 1c                	jne    4275 <msg_send+0x11c>
    4259:	68 34 01 00 00       	push   $0x134
    425e:	68 80 b0 00 00       	push   $0xb080
    4263:	68 80 b0 00 00       	push   $0xb080
    4268:	68 12 b2 00 00       	push   $0xb212
    426d:	e8 41 28 00 00       	call   6ab3 <assertion_failure>
    4272:	83 c4 10             	add    $0x10,%esp
    4275:	8b 45 f0             	mov    -0x10(%ebp),%eax
    4278:	2d e0 b2 04 00       	sub    $0x4b2e0,%eax
    427d:	c1 f8 02             	sar    $0x2,%eax
    4280:	69 c0 6d b1 32 7c    	imul   $0x7c32b16d,%eax,%eax
    4286:	83 ec 08             	sub    $0x8,%esp
    4289:	ff 75 10             	pushl  0x10(%ebp)
    428c:	50                   	push   %eax
    428d:	e8 e4 fc ff ff       	call   3f76 <va2la>
    4292:	83 c4 10             	add    $0x10,%esp
    4295:	89 c3                	mov    %eax,%ebx
    4297:	8b 45 ec             	mov    -0x14(%ebp),%eax
    429a:	8b 40 7c             	mov    0x7c(%eax),%eax
    429d:	83 ec 08             	sub    $0x8,%esp
    42a0:	50                   	push   %eax
    42a1:	ff 75 0c             	pushl  0xc(%ebp)
    42a4:	e8 cd fc ff ff       	call   3f76 <va2la>
    42a9:	83 c4 10             	add    $0x10,%esp
    42ac:	83 ec 04             	sub    $0x4,%esp
    42af:	6a 30                	push   $0x30
    42b1:	53                   	push   %ebx
    42b2:	50                   	push   %eax
    42b3:	e8 28 26 00 00       	call   68e0 <memcpy>
    42b8:	83 c4 10             	add    $0x10,%esp
    42bb:	8b 45 ec             	mov    -0x14(%ebp),%eax
    42be:	c7 40 7c 00 00 00 00 	movl   $0x0,0x7c(%eax)
    42c5:	8b 45 ec             	mov    -0x14(%ebp),%eax
    42c8:	8b 40 78             	mov    0x78(%eax),%eax
    42cb:	83 e0 fb             	and    $0xfffffffb,%eax
    42ce:	89 c2                	mov    %eax,%edx
    42d0:	8b 45 ec             	mov    -0x14(%ebp),%eax
    42d3:	89 50 78             	mov    %edx,0x78(%eax)
    42d6:	8b 45 ec             	mov    -0x14(%ebp),%eax
    42d9:	c7 80 80 00 00 00 1b 	movl   $0x1b,0x80(%eax)
    42e0:	00 00 00 
    42e3:	83 ec 0c             	sub    $0xc,%esp
    42e6:	ff 75 ec             	pushl  -0x14(%ebp)
    42e9:	e8 38 fd ff ff       	call   4026 <unblock>
    42ee:	83 c4 10             	add    $0x10,%esp
    42f1:	8b 45 ec             	mov    -0x14(%ebp),%eax
    42f4:	8b 40 78             	mov    0x78(%eax),%eax
    42f7:	85 c0                	test   %eax,%eax
    42f9:	74 1c                	je     4317 <msg_send+0x1be>
    42fb:	68 3e 01 00 00       	push   $0x13e
    4300:	68 80 b0 00 00       	push   $0xb080
    4305:	68 80 b0 00 00       	push   $0xb080
    430a:	68 14 b2 00 00       	push   $0xb214
    430f:	e8 9f 27 00 00       	call   6ab3 <assertion_failure>
    4314:	83 c4 10             	add    $0x10,%esp
    4317:	8b 45 ec             	mov    -0x14(%ebp),%eax
    431a:	8b 40 7c             	mov    0x7c(%eax),%eax
    431d:	85 c0                	test   %eax,%eax
    431f:	74 1c                	je     433d <msg_send+0x1e4>
    4321:	68 3f 01 00 00       	push   $0x13f
    4326:	68 80 b0 00 00       	push   $0xb080
    432b:	68 80 b0 00 00       	push   $0xb080
    4330:	68 29 b2 00 00       	push   $0xb229
    4335:	e8 79 27 00 00       	call   6ab3 <assertion_failure>
    433a:	83 c4 10             	add    $0x10,%esp
    433d:	8b 45 ec             	mov    -0x14(%ebp),%eax
    4340:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    4346:	83 f8 1b             	cmp    $0x1b,%eax
    4349:	74 1c                	je     4367 <msg_send+0x20e>
    434b:	68 40 01 00 00       	push   $0x140
    4350:	68 80 b0 00 00       	push   $0xb080
    4355:	68 80 b0 00 00       	push   $0xb080
    435a:	68 3c b2 00 00       	push   $0xb23c
    435f:	e8 4f 27 00 00       	call   6ab3 <assertion_failure>
    4364:	83 c4 10             	add    $0x10,%esp
    4367:	8b 45 ec             	mov    -0x14(%ebp),%eax
    436a:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
    4370:	83 f8 1b             	cmp    $0x1b,%eax
    4373:	74 1c                	je     4391 <msg_send+0x238>
    4375:	68 41 01 00 00       	push   $0x141
    437a:	68 80 b0 00 00       	push   $0xb080
    437f:	68 80 b0 00 00       	push   $0xb080
    4384:	68 5a b2 00 00       	push   $0xb25a
    4389:	e8 25 27 00 00       	call   6ab3 <assertion_failure>
    438e:	83 c4 10             	add    $0x10,%esp
    4391:	8b 45 f0             	mov    -0x10(%ebp),%eax
    4394:	8b 40 78             	mov    0x78(%eax),%eax
    4397:	85 c0                	test   %eax,%eax
    4399:	74 1c                	je     43b7 <msg_send+0x25e>
    439b:	68 42 01 00 00       	push   $0x142
    43a0:	68 80 b0 00 00       	push   $0xb080
    43a5:	68 80 b0 00 00       	push   $0xb080
    43aa:	68 76 b2 00 00       	push   $0xb276
    43af:	e8 ff 26 00 00       	call   6ab3 <assertion_failure>
    43b4:	83 c4 10             	add    $0x10,%esp
    43b7:	8b 45 f0             	mov    -0x10(%ebp),%eax
    43ba:	8b 40 7c             	mov    0x7c(%eax),%eax
    43bd:	85 c0                	test   %eax,%eax
    43bf:	74 1c                	je     43dd <msg_send+0x284>
    43c1:	68 43 01 00 00       	push   $0x143
    43c6:	68 80 b0 00 00       	push   $0xb080
    43cb:	68 80 b0 00 00       	push   $0xb080
    43d0:	68 8b b2 00 00       	push   $0xb28b
    43d5:	e8 d9 26 00 00       	call   6ab3 <assertion_failure>
    43da:	83 c4 10             	add    $0x10,%esp
    43dd:	8b 45 f0             	mov    -0x10(%ebp),%eax
    43e0:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    43e6:	83 f8 1b             	cmp    $0x1b,%eax
    43e9:	74 1c                	je     4407 <msg_send+0x2ae>
    43eb:	68 44 01 00 00       	push   $0x144
    43f0:	68 80 b0 00 00       	push   $0xb080
    43f5:	68 80 b0 00 00       	push   $0xb080
    43fa:	68 9e b2 00 00       	push   $0xb29e
    43ff:	e8 af 26 00 00       	call   6ab3 <assertion_failure>
    4404:	83 c4 10             	add    $0x10,%esp
    4407:	8b 45 f0             	mov    -0x10(%ebp),%eax
    440a:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
    4410:	83 f8 1b             	cmp    $0x1b,%eax
    4413:	0f 84 78 01 00 00    	je     4591 <msg_send+0x438>
    4419:	68 45 01 00 00       	push   $0x145
    441e:	68 80 b0 00 00       	push   $0xb080
    4423:	68 80 b0 00 00       	push   $0xb080
    4428:	68 bc b2 00 00       	push   $0xb2bc
    442d:	e8 81 26 00 00       	call   6ab3 <assertion_failure>
    4432:	83 c4 10             	add    $0x10,%esp
    4435:	e9 57 01 00 00       	jmp    4591 <msg_send+0x438>
    443a:	8b 45 f0             	mov    -0x10(%ebp),%eax
    443d:	8b 40 78             	mov    0x78(%eax),%eax
    4440:	83 c8 02             	or     $0x2,%eax
    4443:	89 c2                	mov    %eax,%edx
    4445:	8b 45 f0             	mov    -0x10(%ebp),%eax
    4448:	89 50 78             	mov    %edx,0x78(%eax)
    444b:	8b 45 f0             	mov    -0x10(%ebp),%eax
    444e:	8b 40 78             	mov    0x78(%eax),%eax
    4451:	83 f8 02             	cmp    $0x2,%eax
    4454:	74 1c                	je     4472 <msg_send+0x319>
    4456:	68 49 01 00 00       	push   $0x149
    445b:	68 80 b0 00 00       	push   $0xb080
    4460:	68 80 b0 00 00       	push   $0xb080
    4465:	68 d8 b2 00 00       	push   $0xb2d8
    446a:	e8 44 26 00 00       	call   6ab3 <assertion_failure>
    446f:	83 c4 10             	add    $0x10,%esp
    4472:	8b 45 f0             	mov    -0x10(%ebp),%eax
    4475:	8b 55 0c             	mov    0xc(%ebp),%edx
    4478:	89 90 84 00 00 00    	mov    %edx,0x84(%eax)
    447e:	8b 45 f0             	mov    -0x10(%ebp),%eax
    4481:	8b 55 10             	mov    0x10(%ebp),%edx
    4484:	89 50 7c             	mov    %edx,0x7c(%eax)
    4487:	8b 45 ec             	mov    -0x14(%ebp),%eax
    448a:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
    4490:	85 c0                	test   %eax,%eax
    4492:	74 35                	je     44c9 <msg_send+0x370>
    4494:	8b 45 ec             	mov    -0x14(%ebp),%eax
    4497:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
    449d:	89 45 f4             	mov    %eax,-0xc(%ebp)
    44a0:	eb 0c                	jmp    44ae <msg_send+0x355>
    44a2:	8b 45 f4             	mov    -0xc(%ebp),%eax
    44a5:	8b 80 90 00 00 00    	mov    0x90(%eax),%eax
    44ab:	89 45 f4             	mov    %eax,-0xc(%ebp)
    44ae:	8b 45 f4             	mov    -0xc(%ebp),%eax
    44b1:	8b 80 90 00 00 00    	mov    0x90(%eax),%eax
    44b7:	85 c0                	test   %eax,%eax
    44b9:	75 e7                	jne    44a2 <msg_send+0x349>
    44bb:	8b 45 f4             	mov    -0xc(%ebp),%eax
    44be:	8b 55 f0             	mov    -0x10(%ebp),%edx
    44c1:	89 90 90 00 00 00    	mov    %edx,0x90(%eax)
    44c7:	eb 0c                	jmp    44d5 <msg_send+0x37c>
    44c9:	8b 45 ec             	mov    -0x14(%ebp),%eax
    44cc:	8b 55 f0             	mov    -0x10(%ebp),%edx
    44cf:	89 90 8c 00 00 00    	mov    %edx,0x8c(%eax)
    44d5:	8b 45 f0             	mov    -0x10(%ebp),%eax
    44d8:	c7 80 90 00 00 00 00 	movl   $0x0,0x90(%eax)
    44df:	00 00 00 
    44e2:	83 ec 0c             	sub    $0xc,%esp
    44e5:	ff 75 f0             	pushl  -0x10(%ebp)
    44e8:	e8 05 fb ff ff       	call   3ff2 <block>
    44ed:	83 c4 10             	add    $0x10,%esp
    44f0:	8b 45 f0             	mov    -0x10(%ebp),%eax
    44f3:	8b 40 78             	mov    0x78(%eax),%eax
    44f6:	83 f8 02             	cmp    $0x2,%eax
    44f9:	74 1c                	je     4517 <msg_send+0x3be>
    44fb:	68 5c 01 00 00       	push   $0x15c
    4500:	68 80 b0 00 00       	push   $0xb080
    4505:	68 80 b0 00 00       	push   $0xb080
    450a:	68 d8 b2 00 00       	push   $0xb2d8
    450f:	e8 9f 25 00 00       	call   6ab3 <assertion_failure>
    4514:	83 c4 10             	add    $0x10,%esp
    4517:	8b 45 f0             	mov    -0x10(%ebp),%eax
    451a:	8b 40 7c             	mov    0x7c(%eax),%eax
    451d:	85 c0                	test   %eax,%eax
    451f:	75 1c                	jne    453d <msg_send+0x3e4>
    4521:	68 5d 01 00 00       	push   $0x15d
    4526:	68 80 b0 00 00       	push   $0xb080
    452b:	68 80 b0 00 00       	push   $0xb080
    4530:	68 f3 b2 00 00       	push   $0xb2f3
    4535:	e8 79 25 00 00       	call   6ab3 <assertion_failure>
    453a:	83 c4 10             	add    $0x10,%esp
    453d:	8b 45 f0             	mov    -0x10(%ebp),%eax
    4540:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    4546:	83 f8 1b             	cmp    $0x1b,%eax
    4549:	74 1c                	je     4567 <msg_send+0x40e>
    454b:	68 5e 01 00 00       	push   $0x15e
    4550:	68 80 b0 00 00       	push   $0xb080
    4555:	68 80 b0 00 00       	push   $0xb080
    455a:	68 9e b2 00 00       	push   $0xb29e
    455f:	e8 4f 25 00 00       	call   6ab3 <assertion_failure>
    4564:	83 c4 10             	add    $0x10,%esp
    4567:	8b 45 f0             	mov    -0x10(%ebp),%eax
    456a:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
    4570:	39 45 0c             	cmp    %eax,0xc(%ebp)
    4573:	74 1c                	je     4591 <msg_send+0x438>
    4575:	68 5f 01 00 00       	push   $0x15f
    457a:	68 80 b0 00 00       	push   $0xb080
    457f:	68 80 b0 00 00       	push   $0xb080
    4584:	68 06 b3 00 00       	push   $0xb306
    4589:	e8 25 25 00 00       	call   6ab3 <assertion_failure>
    458e:	83 c4 10             	add    $0x10,%esp
    4591:	b8 00 00 00 00       	mov    $0x0,%eax
    4596:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    4599:	c9                   	leave  
    459a:	c3                   	ret    

0000459b <msg_receive>:
    459b:	55                   	push   %ebp
    459c:	89 e5                	mov    %esp,%ebp
    459e:	53                   	push   %ebx
    459f:	83 ec 54             	sub    $0x54,%esp
    45a2:	8b 45 08             	mov    0x8(%ebp),%eax
    45a5:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    45a8:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    45af:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    45b6:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    45bd:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    45c0:	2d e0 b2 04 00       	sub    $0x4b2e0,%eax
    45c5:	c1 f8 02             	sar    $0x2,%eax
    45c8:	69 c0 6d b1 32 7c    	imul   $0x7c32b16d,%eax,%eax
    45ce:	39 45 0c             	cmp    %eax,0xc(%ebp)
    45d1:	75 1c                	jne    45ef <msg_receive+0x54>
    45d3:	68 80 01 00 00       	push   $0x180
    45d8:	68 80 b0 00 00       	push   $0xb080
    45dd:	68 80 b0 00 00       	push   $0xb080
    45e2:	68 20 b3 00 00       	push   $0xb320
    45e7:	e8 c7 24 00 00       	call   6ab3 <assertion_failure>
    45ec:	83 c4 10             	add    $0x10,%esp
    45ef:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    45f2:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
    45f8:	85 c0                	test   %eax,%eax
    45fa:	0f 84 39 01 00 00    	je     4739 <msg_receive+0x19e>
    4600:	83 7d 0c 11          	cmpl   $0x11,0xc(%ebp)
    4604:	74 0a                	je     4610 <msg_receive+0x75>
    4606:	83 7d 0c f6          	cmpl   $0xfffffff6,0xc(%ebp)
    460a:	0f 85 29 01 00 00    	jne    4739 <msg_receive+0x19e>
    4610:	83 ec 0c             	sub    $0xc,%esp
    4613:	8d 45 b4             	lea    -0x4c(%ebp),%eax
    4616:	50                   	push   %eax
    4617:	e8 bb f9 ff ff       	call   3fd7 <reset_msg>
    461c:	83 c4 10             	add    $0x10,%esp
    461f:	c7 45 b4 f6 ff ff ff 	movl   $0xfffffff6,-0x4c(%ebp)
    4626:	c7 45 b8 01 00 00 00 	movl   $0x1,-0x48(%ebp)
    462d:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
    4631:	75 1c                	jne    464f <msg_receive+0xb4>
    4633:	68 8d 01 00 00       	push   $0x18d
    4638:	68 80 b0 00 00       	push   $0xb080
    463d:	68 80 b0 00 00       	push   $0xb080
    4642:	68 12 b2 00 00       	push   $0xb212
    4647:	e8 67 24 00 00       	call   6ab3 <assertion_failure>
    464c:	83 c4 10             	add    $0x10,%esp
    464f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4652:	2d e0 b2 04 00       	sub    $0x4b2e0,%eax
    4657:	c1 f8 02             	sar    $0x2,%eax
    465a:	69 c0 6d b1 32 7c    	imul   $0x7c32b16d,%eax,%eax
    4660:	83 ec 08             	sub    $0x8,%esp
    4663:	ff 75 10             	pushl  0x10(%ebp)
    4666:	50                   	push   %eax
    4667:	e8 0a f9 ff ff       	call   3f76 <va2la>
    466c:	83 c4 10             	add    $0x10,%esp
    466f:	89 c2                	mov    %eax,%edx
    4671:	83 ec 04             	sub    $0x4,%esp
    4674:	6a 30                	push   $0x30
    4676:	8d 45 b4             	lea    -0x4c(%ebp),%eax
    4679:	50                   	push   %eax
    467a:	52                   	push   %edx
    467b:	e8 60 22 00 00       	call   68e0 <memcpy>
    4680:	83 c4 10             	add    $0x10,%esp
    4683:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4686:	c7 80 88 00 00 00 00 	movl   $0x0,0x88(%eax)
    468d:	00 00 00 
    4690:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4693:	8b 40 78             	mov    0x78(%eax),%eax
    4696:	85 c0                	test   %eax,%eax
    4698:	74 1c                	je     46b6 <msg_receive+0x11b>
    469a:	68 94 01 00 00       	push   $0x194
    469f:	68 80 b0 00 00       	push   $0xb080
    46a4:	68 80 b0 00 00       	push   $0xb080
    46a9:	68 44 b3 00 00       	push   $0xb344
    46ae:	e8 00 24 00 00       	call   6ab3 <assertion_failure>
    46b3:	83 c4 10             	add    $0x10,%esp
    46b6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    46b9:	8b 40 7c             	mov    0x7c(%eax),%eax
    46bc:	85 c0                	test   %eax,%eax
    46be:	74 1c                	je     46dc <msg_receive+0x141>
    46c0:	68 95 01 00 00       	push   $0x195
    46c5:	68 80 b0 00 00       	push   $0xb080
    46ca:	68 80 b0 00 00       	push   $0xb080
    46cf:	68 63 b3 00 00       	push   $0xb363
    46d4:	e8 da 23 00 00       	call   6ab3 <assertion_failure>
    46d9:	83 c4 10             	add    $0x10,%esp
    46dc:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    46df:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
    46e5:	83 f8 1b             	cmp    $0x1b,%eax
    46e8:	74 1c                	je     4706 <msg_receive+0x16b>
    46ea:	68 96 01 00 00       	push   $0x196
    46ef:	68 80 b0 00 00       	push   $0xb080
    46f4:	68 80 b0 00 00       	push   $0xb080
    46f9:	68 80 b3 00 00       	push   $0xb380
    46fe:	e8 b0 23 00 00       	call   6ab3 <assertion_failure>
    4703:	83 c4 10             	add    $0x10,%esp
    4706:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4709:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
    470f:	85 c0                	test   %eax,%eax
    4711:	74 1c                	je     472f <msg_receive+0x194>
    4713:	68 97 01 00 00       	push   $0x197
    4718:	68 80 b0 00 00       	push   $0xb080
    471d:	68 80 b0 00 00       	push   $0xb080
    4722:	68 a8 b3 00 00       	push   $0xb3a8
    4727:	e8 87 23 00 00       	call   6ab3 <assertion_failure>
    472c:	83 c4 10             	add    $0x10,%esp
    472f:	b8 00 00 00 00       	mov    $0x0,%eax
    4734:	e9 8f 06 00 00       	jmp    4dc8 <msg_receive+0x82d>
    4739:	83 7d 0c 11          	cmpl   $0x11,0xc(%ebp)
    473d:	0f 85 a8 01 00 00    	jne    48eb <msg_receive+0x350>
    4743:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4746:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
    474c:	85 c0                	test   %eax,%eax
    474e:	0f 84 fc 03 00 00    	je     4b50 <msg_receive+0x5b5>
    4754:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4757:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
    475d:	89 45 f4             	mov    %eax,-0xc(%ebp)
    4760:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%ebp)
    4767:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    476a:	8b 40 78             	mov    0x78(%eax),%eax
    476d:	85 c0                	test   %eax,%eax
    476f:	74 1c                	je     478d <msg_receive+0x1f2>
    4771:	68 a7 01 00 00       	push   $0x1a7
    4776:	68 80 b0 00 00       	push   $0xb080
    477b:	68 80 b0 00 00       	push   $0xb080
    4780:	68 44 b3 00 00       	push   $0xb344
    4785:	e8 29 23 00 00       	call   6ab3 <assertion_failure>
    478a:	83 c4 10             	add    $0x10,%esp
    478d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4790:	8b 40 7c             	mov    0x7c(%eax),%eax
    4793:	85 c0                	test   %eax,%eax
    4795:	74 1c                	je     47b3 <msg_receive+0x218>
    4797:	68 a8 01 00 00       	push   $0x1a8
    479c:	68 80 b0 00 00       	push   $0xb080
    47a1:	68 80 b0 00 00       	push   $0xb080
    47a6:	68 63 b3 00 00       	push   $0xb363
    47ab:	e8 03 23 00 00       	call   6ab3 <assertion_failure>
    47b0:	83 c4 10             	add    $0x10,%esp
    47b3:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    47b6:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    47bc:	83 f8 1b             	cmp    $0x1b,%eax
    47bf:	74 1c                	je     47dd <msg_receive+0x242>
    47c1:	68 a9 01 00 00       	push   $0x1a9
    47c6:	68 80 b0 00 00       	push   $0xb080
    47cb:	68 80 b0 00 00       	push   $0xb080
    47d0:	68 cc b3 00 00       	push   $0xb3cc
    47d5:	e8 d9 22 00 00       	call   6ab3 <assertion_failure>
    47da:	83 c4 10             	add    $0x10,%esp
    47dd:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    47e0:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
    47e6:	83 f8 1b             	cmp    $0x1b,%eax
    47e9:	74 1c                	je     4807 <msg_receive+0x26c>
    47eb:	68 aa 01 00 00       	push   $0x1aa
    47f0:	68 80 b0 00 00       	push   $0xb080
    47f5:	68 80 b0 00 00       	push   $0xb080
    47fa:	68 80 b3 00 00       	push   $0xb380
    47ff:	e8 af 22 00 00       	call   6ab3 <assertion_failure>
    4804:	83 c4 10             	add    $0x10,%esp
    4807:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    480a:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
    4810:	85 c0                	test   %eax,%eax
    4812:	75 1c                	jne    4830 <msg_receive+0x295>
    4814:	68 ab 01 00 00       	push   $0x1ab
    4819:	68 80 b0 00 00       	push   $0xb080
    481e:	68 80 b0 00 00       	push   $0xb080
    4823:	68 f4 b3 00 00       	push   $0xb3f4
    4828:	e8 86 22 00 00       	call   6ab3 <assertion_failure>
    482d:	83 c4 10             	add    $0x10,%esp
    4830:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4833:	8b 40 78             	mov    0x78(%eax),%eax
    4836:	83 f8 02             	cmp    $0x2,%eax
    4839:	74 1c                	je     4857 <msg_receive+0x2bc>
    483b:	68 ac 01 00 00       	push   $0x1ac
    4840:	68 80 b0 00 00       	push   $0xb080
    4845:	68 80 b0 00 00       	push   $0xb080
    484a:	68 15 b4 00 00       	push   $0xb415
    484f:	e8 5f 22 00 00       	call   6ab3 <assertion_failure>
    4854:	83 c4 10             	add    $0x10,%esp
    4857:	8b 45 f4             	mov    -0xc(%ebp),%eax
    485a:	8b 40 7c             	mov    0x7c(%eax),%eax
    485d:	85 c0                	test   %eax,%eax
    485f:	75 1c                	jne    487d <msg_receive+0x2e2>
    4861:	68 ad 01 00 00       	push   $0x1ad
    4866:	68 80 b0 00 00       	push   $0xb080
    486b:	68 80 b0 00 00       	push   $0xb080
    4870:	68 30 b4 00 00       	push   $0xb430
    4875:	e8 39 22 00 00       	call   6ab3 <assertion_failure>
    487a:	83 c4 10             	add    $0x10,%esp
    487d:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4880:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    4886:	83 f8 1b             	cmp    $0x1b,%eax
    4889:	74 1c                	je     48a7 <msg_receive+0x30c>
    488b:	68 ae 01 00 00       	push   $0x1ae
    4890:	68 80 b0 00 00       	push   $0xb080
    4895:	68 80 b0 00 00       	push   $0xb080
    489a:	68 43 b4 00 00       	push   $0xb443
    489f:	e8 0f 22 00 00       	call   6ab3 <assertion_failure>
    48a4:	83 c4 10             	add    $0x10,%esp
    48a7:	8b 45 f4             	mov    -0xc(%ebp),%eax
    48aa:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
    48b0:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    48b3:	81 ea e0 b2 04 00    	sub    $0x4b2e0,%edx
    48b9:	c1 fa 02             	sar    $0x2,%edx
    48bc:	69 d2 6d b1 32 7c    	imul   $0x7c32b16d,%edx,%edx
    48c2:	39 d0                	cmp    %edx,%eax
    48c4:	0f 84 86 02 00 00    	je     4b50 <msg_receive+0x5b5>
    48ca:	68 af 01 00 00       	push   $0x1af
    48cf:	68 80 b0 00 00       	push   $0xb080
    48d4:	68 80 b0 00 00       	push   $0xb080
    48d9:	68 64 b4 00 00       	push   $0xb464
    48de:	e8 d0 21 00 00       	call   6ab3 <assertion_failure>
    48e3:	83 c4 10             	add    $0x10,%esp
    48e6:	e9 65 02 00 00       	jmp    4b50 <msg_receive+0x5b5>
    48eb:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    48ef:	0f 88 5b 02 00 00    	js     4b50 <msg_receive+0x5b5>
    48f5:	83 7d 0c 06          	cmpl   $0x6,0xc(%ebp)
    48f9:	0f 8f 51 02 00 00    	jg     4b50 <msg_receive+0x5b5>
    48ff:	8b 45 0c             	mov    0xc(%ebp),%eax
    4902:	69 c0 94 01 00 00    	imul   $0x194,%eax,%eax
    4908:	05 e0 b2 04 00       	add    $0x4b2e0,%eax
    490d:	89 45 f4             	mov    %eax,-0xc(%ebp)
    4910:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4913:	8b 40 78             	mov    0x78(%eax),%eax
    4916:	83 e0 02             	and    $0x2,%eax
    4919:	85 c0                	test   %eax,%eax
    491b:	0f 84 2f 02 00 00    	je     4b50 <msg_receive+0x5b5>
    4921:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4924:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
    492a:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    492d:	81 ea e0 b2 04 00    	sub    $0x4b2e0,%edx
    4933:	c1 fa 02             	sar    $0x2,%edx
    4936:	69 d2 6d b1 32 7c    	imul   $0x7c32b16d,%edx,%edx
    493c:	39 d0                	cmp    %edx,%eax
    493e:	0f 85 0c 02 00 00    	jne    4b50 <msg_receive+0x5b5>
    4944:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%ebp)
    494b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    494e:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
    4954:	89 45 e8             	mov    %eax,-0x18(%ebp)
    4957:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
    495b:	75 6f                	jne    49cc <msg_receive+0x431>
    495d:	68 c1 01 00 00       	push   $0x1c1
    4962:	68 80 b0 00 00       	push   $0xb080
    4967:	68 80 b0 00 00       	push   $0xb080
    496c:	68 93 b4 00 00       	push   $0xb493
    4971:	e8 3d 21 00 00       	call   6ab3 <assertion_failure>
    4976:	83 c4 10             	add    $0x10,%esp
    4979:	eb 51                	jmp    49cc <msg_receive+0x431>
    497b:	8b 45 f4             	mov    -0xc(%ebp),%eax
    497e:	8b 40 78             	mov    0x78(%eax),%eax
    4981:	83 e0 02             	and    $0x2,%eax
    4984:	85 c0                	test   %eax,%eax
    4986:	75 1c                	jne    49a4 <msg_receive+0x409>
    4988:	68 c6 01 00 00       	push   $0x1c6
    498d:	68 80 b0 00 00       	push   $0xb080
    4992:	68 80 b0 00 00       	push   $0xb080
    4997:	68 95 b4 00 00       	push   $0xb495
    499c:	e8 12 21 00 00       	call   6ab3 <assertion_failure>
    49a1:	83 c4 10             	add    $0x10,%esp
    49a4:	8b 45 e8             	mov    -0x18(%ebp),%eax
    49a7:	2d e0 b2 04 00       	sub    $0x4b2e0,%eax
    49ac:	c1 f8 02             	sar    $0x2,%eax
    49af:	69 c0 6d b1 32 7c    	imul   $0x7c32b16d,%eax,%eax
    49b5:	39 45 0c             	cmp    %eax,0xc(%ebp)
    49b8:	74 1a                	je     49d4 <msg_receive+0x439>
    49ba:	8b 45 e8             	mov    -0x18(%ebp),%eax
    49bd:	89 45 f0             	mov    %eax,-0x10(%ebp)
    49c0:	8b 45 e8             	mov    -0x18(%ebp),%eax
    49c3:	8b 80 90 00 00 00    	mov    0x90(%eax),%eax
    49c9:	89 45 e8             	mov    %eax,-0x18(%ebp)
    49cc:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
    49d0:	75 a9                	jne    497b <msg_receive+0x3e0>
    49d2:	eb 01                	jmp    49d5 <msg_receive+0x43a>
    49d4:	90                   	nop
    49d5:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    49d8:	8b 40 78             	mov    0x78(%eax),%eax
    49db:	85 c0                	test   %eax,%eax
    49dd:	74 1c                	je     49fb <msg_receive+0x460>
    49df:	68 cf 01 00 00       	push   $0x1cf
    49e4:	68 80 b0 00 00       	push   $0xb080
    49e9:	68 80 b0 00 00       	push   $0xb080
    49ee:	68 44 b3 00 00       	push   $0xb344
    49f3:	e8 bb 20 00 00       	call   6ab3 <assertion_failure>
    49f8:	83 c4 10             	add    $0x10,%esp
    49fb:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    49fe:	8b 40 7c             	mov    0x7c(%eax),%eax
    4a01:	85 c0                	test   %eax,%eax
    4a03:	74 1c                	je     4a21 <msg_receive+0x486>
    4a05:	68 d0 01 00 00       	push   $0x1d0
    4a0a:	68 80 b0 00 00       	push   $0xb080
    4a0f:	68 80 b0 00 00       	push   $0xb080
    4a14:	68 63 b3 00 00       	push   $0xb363
    4a19:	e8 95 20 00 00       	call   6ab3 <assertion_failure>
    4a1e:	83 c4 10             	add    $0x10,%esp
    4a21:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4a24:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    4a2a:	83 f8 1b             	cmp    $0x1b,%eax
    4a2d:	74 1c                	je     4a4b <msg_receive+0x4b0>
    4a2f:	68 d1 01 00 00       	push   $0x1d1
    4a34:	68 80 b0 00 00       	push   $0xb080
    4a39:	68 80 b0 00 00       	push   $0xb080
    4a3e:	68 cc b3 00 00       	push   $0xb3cc
    4a43:	e8 6b 20 00 00       	call   6ab3 <assertion_failure>
    4a48:	83 c4 10             	add    $0x10,%esp
    4a4b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4a4e:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
    4a54:	83 f8 1b             	cmp    $0x1b,%eax
    4a57:	74 1c                	je     4a75 <msg_receive+0x4da>
    4a59:	68 d2 01 00 00       	push   $0x1d2
    4a5e:	68 80 b0 00 00       	push   $0xb080
    4a63:	68 80 b0 00 00       	push   $0xb080
    4a68:	68 80 b3 00 00       	push   $0xb380
    4a6d:	e8 41 20 00 00       	call   6ab3 <assertion_failure>
    4a72:	83 c4 10             	add    $0x10,%esp
    4a75:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4a78:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
    4a7e:	85 c0                	test   %eax,%eax
    4a80:	75 1c                	jne    4a9e <msg_receive+0x503>
    4a82:	68 d3 01 00 00       	push   $0x1d3
    4a87:	68 80 b0 00 00       	push   $0xb080
    4a8c:	68 80 b0 00 00       	push   $0xb080
    4a91:	68 f4 b3 00 00       	push   $0xb3f4
    4a96:	e8 18 20 00 00       	call   6ab3 <assertion_failure>
    4a9b:	83 c4 10             	add    $0x10,%esp
    4a9e:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4aa1:	8b 40 78             	mov    0x78(%eax),%eax
    4aa4:	83 f8 02             	cmp    $0x2,%eax
    4aa7:	74 1c                	je     4ac5 <msg_receive+0x52a>
    4aa9:	68 d4 01 00 00       	push   $0x1d4
    4aae:	68 80 b0 00 00       	push   $0xb080
    4ab3:	68 80 b0 00 00       	push   $0xb080
    4ab8:	68 15 b4 00 00       	push   $0xb415
    4abd:	e8 f1 1f 00 00       	call   6ab3 <assertion_failure>
    4ac2:	83 c4 10             	add    $0x10,%esp
    4ac5:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4ac8:	8b 40 7c             	mov    0x7c(%eax),%eax
    4acb:	85 c0                	test   %eax,%eax
    4acd:	75 1c                	jne    4aeb <msg_receive+0x550>
    4acf:	68 d5 01 00 00       	push   $0x1d5
    4ad4:	68 80 b0 00 00       	push   $0xb080
    4ad9:	68 80 b0 00 00       	push   $0xb080
    4ade:	68 30 b4 00 00       	push   $0xb430
    4ae3:	e8 cb 1f 00 00       	call   6ab3 <assertion_failure>
    4ae8:	83 c4 10             	add    $0x10,%esp
    4aeb:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4aee:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    4af4:	83 f8 1b             	cmp    $0x1b,%eax
    4af7:	74 1c                	je     4b15 <msg_receive+0x57a>
    4af9:	68 d6 01 00 00       	push   $0x1d6
    4afe:	68 80 b0 00 00       	push   $0xb080
    4b03:	68 80 b0 00 00       	push   $0xb080
    4b08:	68 43 b4 00 00       	push   $0xb443
    4b0d:	e8 a1 1f 00 00       	call   6ab3 <assertion_failure>
    4b12:	83 c4 10             	add    $0x10,%esp
    4b15:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4b18:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
    4b1e:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    4b21:	81 ea e0 b2 04 00    	sub    $0x4b2e0,%edx
    4b27:	c1 fa 02             	sar    $0x2,%edx
    4b2a:	69 d2 6d b1 32 7c    	imul   $0x7c32b16d,%edx,%edx
    4b30:	39 d0                	cmp    %edx,%eax
    4b32:	74 1c                	je     4b50 <msg_receive+0x5b5>
    4b34:	68 d7 01 00 00       	push   $0x1d7
    4b39:	68 80 b0 00 00       	push   $0xb080
    4b3e:	68 80 b0 00 00       	push   $0xb080
    4b43:	68 64 b4 00 00       	push   $0xb464
    4b48:	e8 66 1f 00 00       	call   6ab3 <assertion_failure>
    4b4d:	83 c4 10             	add    $0x10,%esp
    4b50:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
    4b54:	0f 84 6b 01 00 00    	je     4cc5 <msg_receive+0x72a>
    4b5a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4b5d:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
    4b63:	39 45 f4             	cmp    %eax,-0xc(%ebp)
    4b66:	75 43                	jne    4bab <msg_receive+0x610>
    4b68:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    4b6c:	74 1c                	je     4b8a <msg_receive+0x5ef>
    4b6e:	68 e2 01 00 00       	push   $0x1e2
    4b73:	68 80 b0 00 00       	push   $0xb080
    4b78:	68 80 b0 00 00       	push   $0xb080
    4b7d:	68 af b4 00 00       	push   $0xb4af
    4b82:	e8 2c 1f 00 00       	call   6ab3 <assertion_failure>
    4b87:	83 c4 10             	add    $0x10,%esp
    4b8a:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4b8d:	8b 90 90 00 00 00    	mov    0x90(%eax),%edx
    4b93:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4b96:	89 90 8c 00 00 00    	mov    %edx,0x8c(%eax)
    4b9c:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4b9f:	c7 80 90 00 00 00 00 	movl   $0x0,0x90(%eax)
    4ba6:	00 00 00 
    4ba9:	eb 41                	jmp    4bec <msg_receive+0x651>
    4bab:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    4baf:	75 1c                	jne    4bcd <msg_receive+0x632>
    4bb1:	68 e7 01 00 00       	push   $0x1e7
    4bb6:	68 80 b0 00 00       	push   $0xb080
    4bbb:	68 80 b0 00 00       	push   $0xb080
    4bc0:	68 b9 b4 00 00       	push   $0xb4b9
    4bc5:	e8 e9 1e 00 00       	call   6ab3 <assertion_failure>
    4bca:	83 c4 10             	add    $0x10,%esp
    4bcd:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4bd0:	8b 90 90 00 00 00    	mov    0x90(%eax),%edx
    4bd6:	8b 45 f0             	mov    -0x10(%ebp),%eax
    4bd9:	89 90 90 00 00 00    	mov    %edx,0x90(%eax)
    4bdf:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4be2:	c7 80 90 00 00 00 00 	movl   $0x0,0x90(%eax)
    4be9:	00 00 00 
    4bec:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
    4bf0:	75 1c                	jne    4c0e <msg_receive+0x673>
    4bf2:	68 ec 01 00 00       	push   $0x1ec
    4bf7:	68 80 b0 00 00       	push   $0xb080
    4bfc:	68 80 b0 00 00       	push   $0xb080
    4c01:	68 12 b2 00 00       	push   $0xb212
    4c06:	e8 a8 1e 00 00       	call   6ab3 <assertion_failure>
    4c0b:	83 c4 10             	add    $0x10,%esp
    4c0e:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4c11:	8b 40 7c             	mov    0x7c(%eax),%eax
    4c14:	85 c0                	test   %eax,%eax
    4c16:	75 1c                	jne    4c34 <msg_receive+0x699>
    4c18:	68 ed 01 00 00       	push   $0x1ed
    4c1d:	68 80 b0 00 00       	push   $0xb080
    4c22:	68 80 b0 00 00       	push   $0xb080
    4c27:	68 be b4 00 00       	push   $0xb4be
    4c2c:	e8 82 1e 00 00       	call   6ab3 <assertion_failure>
    4c31:	83 c4 10             	add    $0x10,%esp
    4c34:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4c37:	8b 40 7c             	mov    0x7c(%eax),%eax
    4c3a:	8b 55 f4             	mov    -0xc(%ebp),%edx
    4c3d:	81 ea e0 b2 04 00    	sub    $0x4b2e0,%edx
    4c43:	c1 fa 02             	sar    $0x2,%edx
    4c46:	69 d2 6d b1 32 7c    	imul   $0x7c32b16d,%edx,%edx
    4c4c:	83 ec 08             	sub    $0x8,%esp
    4c4f:	50                   	push   %eax
    4c50:	52                   	push   %edx
    4c51:	e8 20 f3 ff ff       	call   3f76 <va2la>
    4c56:	83 c4 10             	add    $0x10,%esp
    4c59:	89 c3                	mov    %eax,%ebx
    4c5b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4c5e:	2d e0 b2 04 00       	sub    $0x4b2e0,%eax
    4c63:	c1 f8 02             	sar    $0x2,%eax
    4c66:	69 c0 6d b1 32 7c    	imul   $0x7c32b16d,%eax,%eax
    4c6c:	83 ec 08             	sub    $0x8,%esp
    4c6f:	ff 75 10             	pushl  0x10(%ebp)
    4c72:	50                   	push   %eax
    4c73:	e8 fe f2 ff ff       	call   3f76 <va2la>
    4c78:	83 c4 10             	add    $0x10,%esp
    4c7b:	83 ec 04             	sub    $0x4,%esp
    4c7e:	6a 30                	push   $0x30
    4c80:	53                   	push   %ebx
    4c81:	50                   	push   %eax
    4c82:	e8 59 1c 00 00       	call   68e0 <memcpy>
    4c87:	83 c4 10             	add    $0x10,%esp
    4c8a:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4c8d:	c7 40 7c 00 00 00 00 	movl   $0x0,0x7c(%eax)
    4c94:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4c97:	c7 80 84 00 00 00 1b 	movl   $0x1b,0x84(%eax)
    4c9e:	00 00 00 
    4ca1:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4ca4:	8b 40 78             	mov    0x78(%eax),%eax
    4ca7:	83 e0 fd             	and    $0xfffffffd,%eax
    4caa:	89 c2                	mov    %eax,%edx
    4cac:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4caf:	89 50 78             	mov    %edx,0x78(%eax)
    4cb2:	83 ec 0c             	sub    $0xc,%esp
    4cb5:	ff 75 f4             	pushl  -0xc(%ebp)
    4cb8:	e8 69 f3 ff ff       	call   4026 <unblock>
    4cbd:	83 c4 10             	add    $0x10,%esp
    4cc0:	e9 fe 00 00 00       	jmp    4dc3 <msg_receive+0x828>
    4cc5:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4cc8:	8b 40 78             	mov    0x78(%eax),%eax
    4ccb:	83 c8 04             	or     $0x4,%eax
    4cce:	89 c2                	mov    %eax,%edx
    4cd0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4cd3:	89 50 78             	mov    %edx,0x78(%eax)
    4cd6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4cd9:	8b 55 10             	mov    0x10(%ebp),%edx
    4cdc:	89 50 7c             	mov    %edx,0x7c(%eax)
    4cdf:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4ce2:	8b 55 0c             	mov    0xc(%ebp),%edx
    4ce5:	89 90 80 00 00 00    	mov    %edx,0x80(%eax)
    4ceb:	83 ec 0c             	sub    $0xc,%esp
    4cee:	ff 75 e4             	pushl  -0x1c(%ebp)
    4cf1:	e8 fc f2 ff ff       	call   3ff2 <block>
    4cf6:	83 c4 10             	add    $0x10,%esp
    4cf9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4cfc:	8b 40 78             	mov    0x78(%eax),%eax
    4cff:	83 f8 04             	cmp    $0x4,%eax
    4d02:	74 1c                	je     4d20 <msg_receive+0x785>
    4d04:	68 03 02 00 00       	push   $0x203
    4d09:	68 80 b0 00 00       	push   $0xb080
    4d0e:	68 80 b0 00 00       	push   $0xb080
    4d13:	68 cc b4 00 00       	push   $0xb4cc
    4d18:	e8 96 1d 00 00       	call   6ab3 <assertion_failure>
    4d1d:	83 c4 10             	add    $0x10,%esp
    4d20:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4d23:	8b 40 7c             	mov    0x7c(%eax),%eax
    4d26:	85 c0                	test   %eax,%eax
    4d28:	75 1c                	jne    4d46 <msg_receive+0x7ab>
    4d2a:	68 04 02 00 00       	push   $0x204
    4d2f:	68 80 b0 00 00       	push   $0xb080
    4d34:	68 80 b0 00 00       	push   $0xb080
    4d39:	68 f3 b4 00 00       	push   $0xb4f3
    4d3e:	e8 70 1d 00 00       	call   6ab3 <assertion_failure>
    4d43:	83 c4 10             	add    $0x10,%esp
    4d46:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4d49:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    4d4f:	83 f8 1b             	cmp    $0x1b,%eax
    4d52:	75 1c                	jne    4d70 <msg_receive+0x7d5>
    4d54:	68 05 02 00 00       	push   $0x205
    4d59:	68 80 b0 00 00       	push   $0xb080
    4d5e:	68 80 b0 00 00       	push   $0xb080
    4d63:	68 10 b5 00 00       	push   $0xb510
    4d68:	e8 46 1d 00 00       	call   6ab3 <assertion_failure>
    4d6d:	83 c4 10             	add    $0x10,%esp
    4d70:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4d73:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
    4d79:	83 f8 1b             	cmp    $0x1b,%eax
    4d7c:	74 1c                	je     4d9a <msg_receive+0x7ff>
    4d7e:	68 06 02 00 00       	push   $0x206
    4d83:	68 80 b0 00 00       	push   $0xb080
    4d88:	68 80 b0 00 00       	push   $0xb080
    4d8d:	68 80 b3 00 00       	push   $0xb380
    4d92:	e8 1c 1d 00 00       	call   6ab3 <assertion_failure>
    4d97:	83 c4 10             	add    $0x10,%esp
    4d9a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4d9d:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
    4da3:	85 c0                	test   %eax,%eax
    4da5:	74 1c                	je     4dc3 <msg_receive+0x828>
    4da7:	68 07 02 00 00       	push   $0x207
    4dac:	68 80 b0 00 00       	push   $0xb080
    4db1:	68 80 b0 00 00       	push   $0xb080
    4db6:	68 a8 b3 00 00       	push   $0xb3a8
    4dbb:	e8 f3 1c 00 00       	call   6ab3 <assertion_failure>
    4dc0:	83 c4 10             	add    $0x10,%esp
    4dc3:	b8 00 00 00 00       	mov    $0x0,%eax
    4dc8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    4dcb:	c9                   	leave  
    4dcc:	c3                   	ret    

00004dcd <inform_int>:
    4dcd:	55                   	push   %ebp
    4dce:	89 e5                	mov    %esp,%ebp
    4dd0:	83 ec 18             	sub    $0x18,%esp
    4dd3:	8b 45 08             	mov    0x8(%ebp),%eax
    4dd6:	69 c0 94 01 00 00    	imul   $0x194,%eax,%eax
    4ddc:	05 e0 b2 04 00       	add    $0x4b2e0,%eax
    4de1:	89 45 f4             	mov    %eax,-0xc(%ebp)
    4de4:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4de7:	8b 40 78             	mov    0x78(%eax),%eax
    4dea:	83 e0 04             	and    $0x4,%eax
    4ded:	85 c0                	test   %eax,%eax
    4def:	0f 84 44 01 00 00    	je     4f39 <inform_int+0x16c>
    4df5:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4df8:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    4dfe:	83 f8 f6             	cmp    $0xfffffff6,%eax
    4e01:	74 12                	je     4e15 <inform_int+0x48>
    4e03:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4e06:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    4e0c:	83 f8 11             	cmp    $0x11,%eax
    4e0f:	0f 85 24 01 00 00    	jne    4f39 <inform_int+0x16c>
    4e15:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4e18:	8b 40 7c             	mov    0x7c(%eax),%eax
    4e1b:	c7 00 f6 ff ff ff    	movl   $0xfffffff6,(%eax)
    4e21:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4e24:	8b 40 7c             	mov    0x7c(%eax),%eax
    4e27:	c7 40 04 01 00 00 00 	movl   $0x1,0x4(%eax)
    4e2e:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4e31:	c7 40 7c 00 00 00 00 	movl   $0x0,0x7c(%eax)
    4e38:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4e3b:	c7 80 88 00 00 00 00 	movl   $0x0,0x88(%eax)
    4e42:	00 00 00 
    4e45:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4e48:	8b 40 78             	mov    0x78(%eax),%eax
    4e4b:	83 e0 fb             	and    $0xfffffffb,%eax
    4e4e:	89 c2                	mov    %eax,%edx
    4e50:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4e53:	89 50 78             	mov    %edx,0x78(%eax)
    4e56:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4e59:	c7 80 80 00 00 00 1b 	movl   $0x1b,0x80(%eax)
    4e60:	00 00 00 
    4e63:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4e66:	8b 40 78             	mov    0x78(%eax),%eax
    4e69:	85 c0                	test   %eax,%eax
    4e6b:	74 1c                	je     4e89 <inform_int+0xbc>
    4e6d:	68 21 02 00 00       	push   $0x221
    4e72:	68 80 b0 00 00       	push   $0xb080
    4e77:	68 80 b0 00 00       	push   $0xb080
    4e7c:	68 af b1 00 00       	push   $0xb1af
    4e81:	e8 2d 1c 00 00       	call   6ab3 <assertion_failure>
    4e86:	83 c4 10             	add    $0x10,%esp
    4e89:	83 ec 0c             	sub    $0xc,%esp
    4e8c:	ff 75 f4             	pushl  -0xc(%ebp)
    4e8f:	e8 92 f1 ff ff       	call   4026 <unblock>
    4e94:	83 c4 10             	add    $0x10,%esp
    4e97:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4e9a:	8b 40 78             	mov    0x78(%eax),%eax
    4e9d:	85 c0                	test   %eax,%eax
    4e9f:	74 1c                	je     4ebd <inform_int+0xf0>
    4ea1:	68 24 02 00 00       	push   $0x224
    4ea6:	68 80 b0 00 00       	push   $0xb080
    4eab:	68 80 b0 00 00       	push   $0xb080
    4eb0:	68 af b1 00 00       	push   $0xb1af
    4eb5:	e8 f9 1b 00 00       	call   6ab3 <assertion_failure>
    4eba:	83 c4 10             	add    $0x10,%esp
    4ebd:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4ec0:	8b 40 7c             	mov    0x7c(%eax),%eax
    4ec3:	85 c0                	test   %eax,%eax
    4ec5:	74 1c                	je     4ee3 <inform_int+0x116>
    4ec7:	68 25 02 00 00       	push   $0x225
    4ecc:	68 80 b0 00 00       	push   $0xb080
    4ed1:	68 80 b0 00 00       	push   $0xb080
    4ed6:	68 38 b5 00 00       	push   $0xb538
    4edb:	e8 d3 1b 00 00       	call   6ab3 <assertion_failure>
    4ee0:	83 c4 10             	add    $0x10,%esp
    4ee3:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4ee6:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    4eec:	83 f8 1b             	cmp    $0x1b,%eax
    4eef:	74 1c                	je     4f0d <inform_int+0x140>
    4ef1:	68 26 02 00 00       	push   $0x226
    4ef6:	68 80 b0 00 00       	push   $0xb080
    4efb:	68 80 b0 00 00       	push   $0xb080
    4f00:	68 46 b5 00 00       	push   $0xb546
    4f05:	e8 a9 1b 00 00       	call   6ab3 <assertion_failure>
    4f0a:	83 c4 10             	add    $0x10,%esp
    4f0d:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4f10:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
    4f16:	83 f8 1b             	cmp    $0x1b,%eax
    4f19:	74 2b                	je     4f46 <inform_int+0x179>
    4f1b:	68 27 02 00 00       	push   $0x227
    4f20:	68 80 b0 00 00       	push   $0xb080
    4f25:	68 80 b0 00 00       	push   $0xb080
    4f2a:	68 5f b5 00 00       	push   $0xb55f
    4f2f:	e8 7f 1b 00 00       	call   6ab3 <assertion_failure>
    4f34:	83 c4 10             	add    $0x10,%esp
    4f37:	eb 0d                	jmp    4f46 <inform_int+0x179>
    4f39:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4f3c:	c7 80 88 00 00 00 01 	movl   $0x1,0x88(%eax)
    4f43:	00 00 00 
    4f46:	90                   	nop
    4f47:	c9                   	leave  
    4f48:	c3                   	ret    

00004f49 <dump_proc>:
    4f49:	55                   	push   %ebp
    4f4a:	89 e5                	mov    %esp,%ebp
    4f4c:	81 ec 18 04 00 00    	sub    $0x418,%esp
    4f52:	c7 45 f0 24 00 00 00 	movl   $0x24,-0x10(%ebp)
    4f59:	c7 45 ec 94 01 00 00 	movl   $0x194,-0x14(%ebp)
    4f60:	83 ec 08             	sub    $0x8,%esp
    4f63:	6a 0c                	push   $0xc
    4f65:	68 d4 03 00 00       	push   $0x3d4
    4f6a:	e8 2e 17 00 00       	call   669d <out_byte>
    4f6f:	83 c4 10             	add    $0x10,%esp
    4f72:	83 ec 08             	sub    $0x8,%esp
    4f75:	6a 00                	push   $0x0
    4f77:	68 d5 03 00 00       	push   $0x3d5
    4f7c:	e8 1c 17 00 00       	call   669d <out_byte>
    4f81:	83 c4 10             	add    $0x10,%esp
    4f84:	83 ec 08             	sub    $0x8,%esp
    4f87:	6a 0d                	push   $0xd
    4f89:	68 d4 03 00 00       	push   $0x3d4
    4f8e:	e8 0a 17 00 00       	call   669d <out_byte>
    4f93:	83 c4 10             	add    $0x10,%esp
    4f96:	83 ec 08             	sub    $0x8,%esp
    4f99:	6a 00                	push   $0x0
    4f9b:	68 d5 03 00 00       	push   $0x3d5
    4fa0:	e8 f8 16 00 00       	call   669d <out_byte>
    4fa5:	83 c4 10             	add    $0x10,%esp
    4fa8:	8b 45 08             	mov    0x8(%ebp),%eax
    4fab:	2d e0 b2 04 00       	sub    $0x4b2e0,%eax
    4fb0:	c1 f8 02             	sar    $0x2,%eax
    4fb3:	69 c0 6d b1 32 7c    	imul   $0x7c32b16d,%eax,%eax
    4fb9:	83 ec 04             	sub    $0x4,%esp
    4fbc:	50                   	push   %eax
    4fbd:	68 76 b5 00 00       	push   $0xb576
    4fc2:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    4fc8:	50                   	push   %eax
    4fc9:	e8 1e 16 00 00       	call   65ec <sprintf>
    4fce:	83 c4 10             	add    $0x10,%esp
    4fd1:	83 ec 08             	sub    $0x8,%esp
    4fd4:	ff 75 f0             	pushl  -0x10(%ebp)
    4fd7:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    4fdd:	50                   	push   %eax
    4fde:	e8 7b 16 00 00       	call   665e <disp_color_str>
    4fe3:	83 c4 10             	add    $0x10,%esp
    4fe6:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    4fed:	eb 3f                	jmp    502e <dump_proc+0xe5>
    4fef:	8b 55 f4             	mov    -0xc(%ebp),%edx
    4ff2:	8b 45 08             	mov    0x8(%ebp),%eax
    4ff5:	01 d0                	add    %edx,%eax
    4ff7:	0f b6 00             	movzbl (%eax),%eax
    4ffa:	0f b6 c0             	movzbl %al,%eax
    4ffd:	83 ec 04             	sub    $0x4,%esp
    5000:	50                   	push   %eax
    5001:	68 94 b5 00 00       	push   $0xb594
    5006:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    500c:	50                   	push   %eax
    500d:	e8 da 15 00 00       	call   65ec <sprintf>
    5012:	83 c4 10             	add    $0x10,%esp
    5015:	83 ec 08             	sub    $0x8,%esp
    5018:	ff 75 f0             	pushl  -0x10(%ebp)
    501b:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    5021:	50                   	push   %eax
    5022:	e8 37 16 00 00       	call   665e <disp_color_str>
    5027:	83 c4 10             	add    $0x10,%esp
    502a:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    502e:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5031:	3b 45 ec             	cmp    -0x14(%ebp),%eax
    5034:	7c b9                	jl     4fef <dump_proc+0xa6>
    5036:	83 ec 08             	sub    $0x8,%esp
    5039:	ff 75 f0             	pushl  -0x10(%ebp)
    503c:	68 98 b5 00 00       	push   $0xb598
    5041:	e8 18 16 00 00       	call   665e <disp_color_str>
    5046:	83 c4 10             	add    $0x10,%esp
    5049:	83 ec 04             	sub    $0x4,%esp
    504c:	6a 11                	push   $0x11
    504e:	68 9b b5 00 00       	push   $0xb59b
    5053:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    5059:	50                   	push   %eax
    505a:	e8 8d 15 00 00       	call   65ec <sprintf>
    505f:	83 c4 10             	add    $0x10,%esp
    5062:	83 ec 08             	sub    $0x8,%esp
    5065:	ff 75 f0             	pushl  -0x10(%ebp)
    5068:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    506e:	50                   	push   %eax
    506f:	e8 ea 15 00 00       	call   665e <disp_color_str>
    5074:	83 c4 10             	add    $0x10,%esp
    5077:	83 ec 04             	sub    $0x4,%esp
    507a:	6a 1b                	push   $0x1b
    507c:	68 a7 b5 00 00       	push   $0xb5a7
    5081:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    5087:	50                   	push   %eax
    5088:	e8 5f 15 00 00       	call   65ec <sprintf>
    508d:	83 c4 10             	add    $0x10,%esp
    5090:	83 ec 08             	sub    $0x8,%esp
    5093:	ff 75 f0             	pushl  -0x10(%ebp)
    5096:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    509c:	50                   	push   %eax
    509d:	e8 bc 15 00 00       	call   665e <disp_color_str>
    50a2:	83 c4 10             	add    $0x10,%esp
    50a5:	83 ec 08             	sub    $0x8,%esp
    50a8:	ff 75 f0             	pushl  -0x10(%ebp)
    50ab:	68 b7 b5 00 00       	push   $0xb5b7
    50b0:	e8 a9 15 00 00       	call   665e <disp_color_str>
    50b5:	83 c4 10             	add    $0x10,%esp
    50b8:	8b 45 08             	mov    0x8(%ebp),%eax
    50bb:	0f b7 40 48          	movzwl 0x48(%eax),%eax
    50bf:	0f b7 c0             	movzwl %ax,%eax
    50c2:	83 ec 04             	sub    $0x4,%esp
    50c5:	50                   	push   %eax
    50c6:	68 b9 b5 00 00       	push   $0xb5b9
    50cb:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    50d1:	50                   	push   %eax
    50d2:	e8 15 15 00 00       	call   65ec <sprintf>
    50d7:	83 c4 10             	add    $0x10,%esp
    50da:	83 ec 08             	sub    $0x8,%esp
    50dd:	ff 75 f0             	pushl  -0x10(%ebp)
    50e0:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    50e6:	50                   	push   %eax
    50e7:	e8 72 15 00 00       	call   665e <disp_color_str>
    50ec:	83 c4 10             	add    $0x10,%esp
    50ef:	8b 45 08             	mov    0x8(%ebp),%eax
    50f2:	8b 40 5c             	mov    0x5c(%eax),%eax
    50f5:	83 ec 04             	sub    $0x4,%esp
    50f8:	50                   	push   %eax
    50f9:	68 ca b5 00 00       	push   $0xb5ca
    50fe:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    5104:	50                   	push   %eax
    5105:	e8 e2 14 00 00       	call   65ec <sprintf>
    510a:	83 c4 10             	add    $0x10,%esp
    510d:	83 ec 08             	sub    $0x8,%esp
    5110:	ff 75 f0             	pushl  -0x10(%ebp)
    5113:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    5119:	50                   	push   %eax
    511a:	e8 3f 15 00 00       	call   665e <disp_color_str>
    511f:	83 c4 10             	add    $0x10,%esp
    5122:	8b 45 08             	mov    0x8(%ebp),%eax
    5125:	8b 40 60             	mov    0x60(%eax),%eax
    5128:	83 ec 04             	sub    $0x4,%esp
    512b:	50                   	push   %eax
    512c:	68 d9 b5 00 00       	push   $0xb5d9
    5131:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    5137:	50                   	push   %eax
    5138:	e8 af 14 00 00       	call   65ec <sprintf>
    513d:	83 c4 10             	add    $0x10,%esp
    5140:	83 ec 08             	sub    $0x8,%esp
    5143:	ff 75 f0             	pushl  -0x10(%ebp)
    5146:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    514c:	50                   	push   %eax
    514d:	e8 0c 15 00 00       	call   665e <disp_color_str>
    5152:	83 c4 10             	add    $0x10,%esp
    5155:	8b 45 08             	mov    0x8(%ebp),%eax
    5158:	8b 40 64             	mov    0x64(%eax),%eax
    515b:	83 ec 04             	sub    $0x4,%esp
    515e:	50                   	push   %eax
    515f:	68 eb b5 00 00       	push   $0xb5eb
    5164:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    516a:	50                   	push   %eax
    516b:	e8 7c 14 00 00       	call   65ec <sprintf>
    5170:	83 c4 10             	add    $0x10,%esp
    5173:	83 ec 08             	sub    $0x8,%esp
    5176:	ff 75 f0             	pushl  -0x10(%ebp)
    5179:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    517f:	50                   	push   %eax
    5180:	e8 d9 14 00 00       	call   665e <disp_color_str>
    5185:	83 c4 10             	add    $0x10,%esp
    5188:	8b 45 08             	mov    0x8(%ebp),%eax
    518b:	83 c0 68             	add    $0x68,%eax
    518e:	83 ec 04             	sub    $0x4,%esp
    5191:	50                   	push   %eax
    5192:	68 f8 b5 00 00       	push   $0xb5f8
    5197:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    519d:	50                   	push   %eax
    519e:	e8 49 14 00 00       	call   65ec <sprintf>
    51a3:	83 c4 10             	add    $0x10,%esp
    51a6:	83 ec 08             	sub    $0x8,%esp
    51a9:	ff 75 f0             	pushl  -0x10(%ebp)
    51ac:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    51b2:	50                   	push   %eax
    51b3:	e8 a6 14 00 00       	call   665e <disp_color_str>
    51b8:	83 c4 10             	add    $0x10,%esp
    51bb:	83 ec 08             	sub    $0x8,%esp
    51be:	ff 75 f0             	pushl  -0x10(%ebp)
    51c1:	68 b7 b5 00 00       	push   $0xb5b7
    51c6:	e8 93 14 00 00       	call   665e <disp_color_str>
    51cb:	83 c4 10             	add    $0x10,%esp
    51ce:	8b 45 08             	mov    0x8(%ebp),%eax
    51d1:	8b 40 78             	mov    0x78(%eax),%eax
    51d4:	83 ec 04             	sub    $0x4,%esp
    51d7:	50                   	push   %eax
    51d8:	68 04 b6 00 00       	push   $0xb604
    51dd:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    51e3:	50                   	push   %eax
    51e4:	e8 03 14 00 00       	call   65ec <sprintf>
    51e9:	83 c4 10             	add    $0x10,%esp
    51ec:	83 ec 08             	sub    $0x8,%esp
    51ef:	ff 75 f0             	pushl  -0x10(%ebp)
    51f2:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    51f8:	50                   	push   %eax
    51f9:	e8 60 14 00 00       	call   665e <disp_color_str>
    51fe:	83 c4 10             	add    $0x10,%esp
    5201:	8b 45 08             	mov    0x8(%ebp),%eax
    5204:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    520a:	83 ec 04             	sub    $0x4,%esp
    520d:	50                   	push   %eax
    520e:	68 15 b6 00 00       	push   $0xb615
    5213:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    5219:	50                   	push   %eax
    521a:	e8 cd 13 00 00       	call   65ec <sprintf>
    521f:	83 c4 10             	add    $0x10,%esp
    5222:	83 ec 08             	sub    $0x8,%esp
    5225:	ff 75 f0             	pushl  -0x10(%ebp)
    5228:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    522e:	50                   	push   %eax
    522f:	e8 2a 14 00 00       	call   665e <disp_color_str>
    5234:	83 c4 10             	add    $0x10,%esp
    5237:	8b 45 08             	mov    0x8(%ebp),%eax
    523a:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
    5240:	83 ec 04             	sub    $0x4,%esp
    5243:	50                   	push   %eax
    5244:	68 29 b6 00 00       	push   $0xb629
    5249:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    524f:	50                   	push   %eax
    5250:	e8 97 13 00 00       	call   65ec <sprintf>
    5255:	83 c4 10             	add    $0x10,%esp
    5258:	83 ec 08             	sub    $0x8,%esp
    525b:	ff 75 f0             	pushl  -0x10(%ebp)
    525e:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    5264:	50                   	push   %eax
    5265:	e8 f4 13 00 00       	call   665e <disp_color_str>
    526a:	83 c4 10             	add    $0x10,%esp
    526d:	83 ec 08             	sub    $0x8,%esp
    5270:	ff 75 f0             	pushl  -0x10(%ebp)
    5273:	68 b7 b5 00 00       	push   $0xb5b7
    5278:	e8 e1 13 00 00       	call   665e <disp_color_str>
    527d:	83 c4 10             	add    $0x10,%esp
    5280:	8b 45 08             	mov    0x8(%ebp),%eax
    5283:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
    5289:	83 ec 04             	sub    $0x4,%esp
    528c:	50                   	push   %eax
    528d:	68 3b b6 00 00       	push   $0xb63b
    5292:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    5298:	50                   	push   %eax
    5299:	e8 4e 13 00 00       	call   65ec <sprintf>
    529e:	83 c4 10             	add    $0x10,%esp
    52a1:	83 ec 08             	sub    $0x8,%esp
    52a4:	ff 75 f0             	pushl  -0x10(%ebp)
    52a7:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    52ad:	50                   	push   %eax
    52ae:	e8 ab 13 00 00       	call   665e <disp_color_str>
    52b3:	83 c4 10             	add    $0x10,%esp
    52b6:	90                   	nop
    52b7:	c9                   	leave  
    52b8:	c3                   	ret    

000052b9 <dump_msg>:
    52b9:	55                   	push   %ebp
    52ba:	89 e5                	mov    %esp,%ebp
    52bc:	57                   	push   %edi
    52bd:	56                   	push   %esi
    52be:	53                   	push   %ebx
    52bf:	83 ec 4c             	sub    $0x4c,%esp
    52c2:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    52c9:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
    52cd:	74 09                	je     52d8 <dump_msg+0x1f>
    52cf:	c7 45 d4 50 b6 00 00 	movl   $0xb650,-0x2c(%ebp)
    52d6:	eb 07                	jmp    52df <dump_msg+0x26>
    52d8:	c7 45 d4 b7 b5 00 00 	movl   $0xb5b7,-0x2c(%ebp)
    52df:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
    52e3:	74 09                	je     52ee <dump_msg+0x35>
    52e5:	c7 45 d0 50 b6 00 00 	movl   $0xb650,-0x30(%ebp)
    52ec:	eb 07                	jmp    52f5 <dump_msg+0x3c>
    52ee:	c7 45 d0 b7 b5 00 00 	movl   $0xb5b7,-0x30(%ebp)
    52f5:	8b 45 0c             	mov    0xc(%ebp),%eax
    52f8:	8b 40 2c             	mov    0x2c(%eax),%eax
    52fb:	89 45 c4             	mov    %eax,-0x3c(%ebp)
    52fe:	8b 45 0c             	mov    0xc(%ebp),%eax
    5301:	8b 40 28             	mov    0x28(%eax),%eax
    5304:	89 45 c0             	mov    %eax,-0x40(%ebp)
    5307:	8b 45 0c             	mov    0xc(%ebp),%eax
    530a:	8b 40 14             	mov    0x14(%eax),%eax
    530d:	89 45 bc             	mov    %eax,-0x44(%ebp)
    5310:	8b 45 0c             	mov    0xc(%ebp),%eax
    5313:	8b 40 10             	mov    0x10(%eax),%eax
    5316:	89 45 b8             	mov    %eax,-0x48(%ebp)
    5319:	8b 45 0c             	mov    0xc(%ebp),%eax
    531c:	8b 40 0c             	mov    0xc(%eax),%eax
    531f:	89 45 b4             	mov    %eax,-0x4c(%ebp)
    5322:	8b 45 0c             	mov    0xc(%ebp),%eax
    5325:	8b 78 08             	mov    0x8(%eax),%edi
    5328:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
    532c:	74 09                	je     5337 <dump_msg+0x7e>
    532e:	c7 45 cc 51 b6 00 00 	movl   $0xb651,-0x34(%ebp)
    5335:	eb 07                	jmp    533e <dump_msg+0x85>
    5337:	c7 45 cc 53 b6 00 00 	movl   $0xb653,-0x34(%ebp)
    533e:	8b 45 0c             	mov    0xc(%ebp),%eax
    5341:	8b 70 04             	mov    0x4(%eax),%esi
    5344:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
    5348:	74 09                	je     5353 <dump_msg+0x9a>
    534a:	c7 45 c8 51 b6 00 00 	movl   $0xb651,-0x38(%ebp)
    5351:	eb 07                	jmp    535a <dump_msg+0xa1>
    5353:	c7 45 c8 53 b6 00 00 	movl   $0xb653,-0x38(%ebp)
    535a:	8b 45 0c             	mov    0xc(%ebp),%eax
    535d:	8b 18                	mov    (%eax),%ebx
    535f:	8b 45 0c             	mov    0xc(%ebp),%eax
    5362:	8b 00                	mov    (%eax),%eax
    5364:	69 c0 94 01 00 00    	imul   $0x194,%eax,%eax
    536a:	83 c0 60             	add    $0x60,%eax
    536d:	05 e0 b2 04 00       	add    $0x4b2e0,%eax
    5372:	8d 50 08             	lea    0x8(%eax),%edx
    5375:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
    5379:	74 07                	je     5382 <dump_msg+0xc9>
    537b:	b9 50 b6 00 00       	mov    $0xb650,%ecx
    5380:	eb 05                	jmp    5387 <dump_msg+0xce>
    5382:	b9 53 b6 00 00       	mov    $0xb653,%ecx
    5387:	8b 45 0c             	mov    0xc(%ebp),%eax
    538a:	83 ec 0c             	sub    $0xc,%esp
    538d:	ff 75 d4             	pushl  -0x2c(%ebp)
    5390:	ff 75 d0             	pushl  -0x30(%ebp)
    5393:	ff 75 c4             	pushl  -0x3c(%ebp)
    5396:	ff 75 c0             	pushl  -0x40(%ebp)
    5399:	ff 75 bc             	pushl  -0x44(%ebp)
    539c:	ff 75 b8             	pushl  -0x48(%ebp)
    539f:	ff 75 b4             	pushl  -0x4c(%ebp)
    53a2:	57                   	push   %edi
    53a3:	ff 75 cc             	pushl  -0x34(%ebp)
    53a6:	56                   	push   %esi
    53a7:	ff 75 c8             	pushl  -0x38(%ebp)
    53aa:	53                   	push   %ebx
    53ab:	52                   	push   %edx
    53ac:	51                   	push   %ecx
    53ad:	50                   	push   %eax
    53ae:	ff 75 08             	pushl  0x8(%ebp)
    53b1:	68 60 b6 00 00       	push   $0xb660
    53b6:	e8 0c 0f 00 00       	call   62c7 <printl>
    53bb:	83 c4 50             	add    $0x50,%esp
    53be:	90                   	nop
    53bf:	8d 65 f4             	lea    -0xc(%ebp),%esp
    53c2:	5b                   	pop    %ebx
    53c3:	5e                   	pop    %esi
    53c4:	5f                   	pop    %edi
    53c5:	5d                   	pop    %ebp
    53c6:	c3                   	ret    

000053c7 <task_sys>:
    53c7:	55                   	push   %ebp
    53c8:	89 e5                	mov    %esp,%ebp
    53ca:	83 ec 48             	sub    $0x48,%esp
    53cd:	83 ec 04             	sub    $0x4,%esp
    53d0:	8d 45 c4             	lea    -0x3c(%ebp),%eax
    53d3:	50                   	push   %eax
    53d4:	6a 11                	push   $0x11
    53d6:	6a 02                	push   $0x2
    53d8:	e8 92 ea ff ff       	call   3e6f <send_recv>
    53dd:	83 c4 10             	add    $0x10,%esp
    53e0:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    53e3:	89 45 f4             	mov    %eax,-0xc(%ebp)
    53e6:	8b 45 c8             	mov    -0x38(%ebp),%eax
    53e9:	83 f8 02             	cmp    $0x2,%eax
    53ec:	74 07                	je     53f5 <task_sys+0x2e>
    53ee:	83 f8 03             	cmp    $0x3,%eax
    53f1:	74 20                	je     5413 <task_sys+0x4c>
    53f3:	eb 41                	jmp    5436 <task_sys+0x6f>
    53f5:	a1 20 b2 04 00       	mov    0x4b220,%eax
    53fa:	89 45 cc             	mov    %eax,-0x34(%ebp)
    53fd:	83 ec 04             	sub    $0x4,%esp
    5400:	8d 45 c4             	lea    -0x3c(%ebp),%eax
    5403:	50                   	push   %eax
    5404:	ff 75 f4             	pushl  -0xc(%ebp)
    5407:	6a 01                	push   $0x1
    5409:	e8 61 ea ff ff       	call   3e6f <send_recv>
    540e:	83 c4 10             	add    $0x10,%esp
    5411:	eb 34                	jmp    5447 <task_sys+0x80>
    5413:	c7 45 c8 0d 00 00 00 	movl   $0xd,-0x38(%ebp)
    541a:	8b 45 f4             	mov    -0xc(%ebp),%eax
    541d:	89 45 d0             	mov    %eax,-0x30(%ebp)
    5420:	83 ec 04             	sub    $0x4,%esp
    5423:	8d 45 c4             	lea    -0x3c(%ebp),%eax
    5426:	50                   	push   %eax
    5427:	ff 75 f4             	pushl  -0xc(%ebp)
    542a:	6a 01                	push   $0x1
    542c:	e8 3e ea ff ff       	call   3e6f <send_recv>
    5431:	83 c4 10             	add    $0x10,%esp
    5434:	eb 11                	jmp    5447 <task_sys+0x80>
    5436:	83 ec 0c             	sub    $0xc,%esp
    5439:	68 ae b6 00 00       	push   $0xb6ae
    543e:	e8 84 c7 ff ff       	call   1bc7 <panic>
    5443:	83 c4 10             	add    $0x10,%esp
    5446:	90                   	nop
    5447:	eb 84                	jmp    53cd <task_sys+0x6>

00005449 <task_hd>:
    5449:	55                   	push   %ebp
    544a:	89 e5                	mov    %esp,%ebp
    544c:	83 ec 48             	sub    $0x48,%esp
    544f:	e8 b1 00 00 00       	call   5505 <init_hd>
    5454:	83 ec 04             	sub    $0x4,%esp
    5457:	8d 45 c4             	lea    -0x3c(%ebp),%eax
    545a:	50                   	push   %eax
    545b:	6a 11                	push   $0x11
    545d:	6a 02                	push   $0x2
    545f:	e8 0b ea ff ff       	call   3e6f <send_recv>
    5464:	83 c4 10             	add    $0x10,%esp
    5467:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    546a:	89 45 f4             	mov    %eax,-0xc(%ebp)
    546d:	8b 45 c8             	mov    -0x38(%ebp),%eax
    5470:	2d e9 03 00 00       	sub    $0x3e9,%eax
    5475:	83 f8 04             	cmp    $0x4,%eax
    5478:	77 4d                	ja     54c7 <task_hd+0x7e>
    547a:	8b 04 85 fc b6 00 00 	mov    0xb6fc(,%eax,4),%eax
    5481:	ff e0                	jmp    *%eax
    5483:	8b 45 d8             	mov    -0x28(%ebp),%eax
    5486:	83 ec 0c             	sub    $0xc,%esp
    5489:	50                   	push   %eax
    548a:	e8 2d 01 00 00       	call   55bc <hd_open>
    548f:	83 c4 10             	add    $0x10,%esp
    5492:	eb 58                	jmp    54ec <task_hd+0xa3>
    5494:	8b 45 d8             	mov    -0x28(%ebp),%eax
    5497:	83 ec 0c             	sub    $0xc,%esp
    549a:	50                   	push   %eax
    549b:	e8 e2 01 00 00       	call   5682 <hd_close>
    54a0:	83 c4 10             	add    $0x10,%esp
    54a3:	eb 47                	jmp    54ec <task_hd+0xa3>
    54a5:	83 ec 0c             	sub    $0xc,%esp
    54a8:	8d 45 c4             	lea    -0x3c(%ebp),%eax
    54ab:	50                   	push   %eax
    54ac:	e8 52 02 00 00       	call   5703 <hd_rdwt>
    54b1:	83 c4 10             	add    $0x10,%esp
    54b4:	eb 36                	jmp    54ec <task_hd+0xa3>
    54b6:	83 ec 0c             	sub    $0xc,%esp
    54b9:	8d 45 c4             	lea    -0x3c(%ebp),%eax
    54bc:	50                   	push   %eax
    54bd:	e8 ec 04 00 00       	call   59ae <hd_ioctl>
    54c2:	83 c4 10             	add    $0x10,%esp
    54c5:	eb 25                	jmp    54ec <task_hd+0xa3>
    54c7:	83 ec 08             	sub    $0x8,%esp
    54ca:	8d 45 c4             	lea    -0x3c(%ebp),%eax
    54cd:	50                   	push   %eax
    54ce:	68 c0 b6 00 00       	push   $0xb6c0
    54d3:	e8 e1 fd ff ff       	call   52b9 <dump_msg>
    54d8:	83 c4 10             	add    $0x10,%esp
    54db:	83 ec 0c             	sub    $0xc,%esp
    54de:	68 d8 b6 00 00       	push   $0xb6d8
    54e3:	e8 b0 15 00 00       	call   6a98 <spin>
    54e8:	83 c4 10             	add    $0x10,%esp
    54eb:	90                   	nop
    54ec:	83 ec 04             	sub    $0x4,%esp
    54ef:	8d 45 c4             	lea    -0x3c(%ebp),%eax
    54f2:	50                   	push   %eax
    54f3:	ff 75 f4             	pushl  -0xc(%ebp)
    54f6:	6a 01                	push   $0x1
    54f8:	e8 72 e9 ff ff       	call   3e6f <send_recv>
    54fd:	83 c4 10             	add    $0x10,%esp
    5500:	e9 4f ff ff ff       	jmp    5454 <task_hd+0xb>

00005505 <init_hd>:
    5505:	55                   	push   %ebp
    5506:	89 e5                	mov    %esp,%ebp
    5508:	83 ec 18             	sub    $0x18,%esp
    550b:	c7 45 f0 75 04 00 00 	movl   $0x475,-0x10(%ebp)
    5512:	8b 45 f0             	mov    -0x10(%ebp),%eax
    5515:	0f b6 00             	movzbl (%eax),%eax
    5518:	0f b6 c0             	movzbl %al,%eax
    551b:	83 ec 08             	sub    $0x8,%esp
    551e:	50                   	push   %eax
    551f:	68 10 b7 00 00       	push   $0xb710
    5524:	e8 9e 0d 00 00       	call   62c7 <printl>
    5529:	83 c4 10             	add    $0x10,%esp
    552c:	8b 45 f0             	mov    -0x10(%ebp),%eax
    552f:	0f b6 00             	movzbl (%eax),%eax
    5532:	84 c0                	test   %al,%al
    5534:	75 19                	jne    554f <init_hd+0x4a>
    5536:	6a 6b                	push   $0x6b
    5538:	68 1e b7 00 00       	push   $0xb71e
    553d:	68 1e b7 00 00       	push   $0xb71e
    5542:	68 2a b7 00 00       	push   $0xb72a
    5547:	e8 67 15 00 00       	call   6ab3 <assertion_failure>
    554c:	83 c4 10             	add    $0x10,%esp
    554f:	83 ec 08             	sub    $0x8,%esp
    5552:	68 31 62 00 00       	push   $0x6231
    5557:	6a 0e                	push   $0xe
    5559:	e8 2f e1 ff ff       	call   368d <put_irq_handler>
    555e:	83 c4 10             	add    $0x10,%esp
    5561:	83 ec 0c             	sub    $0xc,%esp
    5564:	6a 02                	push   $0x2
    5566:	e8 a3 11 00 00       	call   670e <enable_irq>
    556b:	83 c4 10             	add    $0x10,%esp
    556e:	83 ec 0c             	sub    $0xc,%esp
    5571:	6a 0e                	push   $0xe
    5573:	e8 96 11 00 00       	call   670e <enable_irq>
    5578:	83 c4 10             	add    $0x10,%esp
    557b:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    5582:	eb 25                	jmp    55a9 <init_hd+0xa4>
    5584:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5587:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
    558d:	05 20 04 01 00       	add    $0x10420,%eax
    5592:	83 ec 04             	sub    $0x4,%esp
    5595:	68 2c 02 00 00       	push   $0x22c
    559a:	6a 00                	push   $0x0
    559c:	50                   	push   %eax
    559d:	e8 67 13 00 00       	call   6909 <memset>
    55a2:	83 c4 10             	add    $0x10,%esp
    55a5:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    55a9:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    55ad:	74 d5                	je     5584 <init_hd+0x7f>
    55af:	c7 05 20 04 01 00 00 	movl   $0x0,0x10420
    55b6:	00 00 00 
    55b9:	90                   	nop
    55ba:	c9                   	leave  
    55bb:	c3                   	ret    

000055bc <hd_open>:
    55bc:	55                   	push   %ebp
    55bd:	89 e5                	mov    %esp,%ebp
    55bf:	83 ec 18             	sub    $0x18,%esp
    55c2:	83 7d 08 09          	cmpl   $0x9,0x8(%ebp)
    55c6:	7f 19                	jg     55e1 <hd_open+0x25>
    55c8:	8b 4d 08             	mov    0x8(%ebp),%ecx
    55cb:	ba 67 66 66 66       	mov    $0x66666667,%edx
    55d0:	89 c8                	mov    %ecx,%eax
    55d2:	f7 ea                	imul   %edx
    55d4:	d1 fa                	sar    %edx
    55d6:	89 c8                	mov    %ecx,%eax
    55d8:	c1 f8 1f             	sar    $0x1f,%eax
    55db:	29 c2                	sub    %eax,%edx
    55dd:	89 d0                	mov    %edx,%eax
    55df:	eb 11                	jmp    55f2 <hd_open+0x36>
    55e1:	8b 45 08             	mov    0x8(%ebp),%eax
    55e4:	83 e8 10             	sub    $0x10,%eax
    55e7:	8d 50 3f             	lea    0x3f(%eax),%edx
    55ea:	85 c0                	test   %eax,%eax
    55ec:	0f 48 c2             	cmovs  %edx,%eax
    55ef:	c1 f8 06             	sar    $0x6,%eax
    55f2:	89 45 f4             	mov    %eax,-0xc(%ebp)
    55f5:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    55f9:	74 1c                	je     5617 <hd_open+0x5b>
    55fb:	68 83 00 00 00       	push   $0x83
    5600:	68 1e b7 00 00       	push   $0xb71e
    5605:	68 1e b7 00 00       	push   $0xb71e
    560a:	68 35 b7 00 00       	push   $0xb735
    560f:	e8 9f 14 00 00       	call   6ab3 <assertion_failure>
    5614:	83 c4 10             	add    $0x10,%esp
    5617:	83 ec 0c             	sub    $0xc,%esp
    561a:	ff 75 f4             	pushl  -0xc(%ebp)
    561d:	e8 38 08 00 00       	call   5e5a <hd_identify>
    5622:	83 c4 10             	add    $0x10,%esp
    5625:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5628:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
    562e:	05 20 04 01 00       	add    $0x10420,%eax
    5633:	8b 00                	mov    (%eax),%eax
    5635:	8d 50 01             	lea    0x1(%eax),%edx
    5638:	8b 4d f4             	mov    -0xc(%ebp),%ecx
    563b:	69 c9 2c 02 00 00    	imul   $0x22c,%ecx,%ecx
    5641:	81 c1 20 04 01 00    	add    $0x10420,%ecx
    5647:	89 11                	mov    %edx,(%ecx)
    5649:	85 c0                	test   %eax,%eax
    564b:	75 32                	jne    567f <hd_open+0xc3>
    564d:	8b 55 f4             	mov    -0xc(%ebp),%edx
    5650:	89 d0                	mov    %edx,%eax
    5652:	c1 e0 02             	shl    $0x2,%eax
    5655:	01 d0                	add    %edx,%eax
    5657:	83 ec 08             	sub    $0x8,%esp
    565a:	6a 00                	push   $0x0
    565c:	50                   	push   %eax
    565d:	e8 df 04 00 00       	call   5b41 <partition>
    5662:	83 c4 10             	add    $0x10,%esp
    5665:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5668:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
    566e:	05 20 04 01 00       	add    $0x10420,%eax
    5673:	83 ec 0c             	sub    $0xc,%esp
    5676:	50                   	push   %eax
    5677:	e8 f7 06 00 00       	call   5d73 <print_hdinfo>
    567c:	83 c4 10             	add    $0x10,%esp
    567f:	90                   	nop
    5680:	c9                   	leave  
    5681:	c3                   	ret    

00005682 <hd_close>:
    5682:	55                   	push   %ebp
    5683:	89 e5                	mov    %esp,%ebp
    5685:	83 ec 18             	sub    $0x18,%esp
    5688:	83 7d 08 09          	cmpl   $0x9,0x8(%ebp)
    568c:	7f 19                	jg     56a7 <hd_close+0x25>
    568e:	8b 4d 08             	mov    0x8(%ebp),%ecx
    5691:	ba 67 66 66 66       	mov    $0x66666667,%edx
    5696:	89 c8                	mov    %ecx,%eax
    5698:	f7 ea                	imul   %edx
    569a:	d1 fa                	sar    %edx
    569c:	89 c8                	mov    %ecx,%eax
    569e:	c1 f8 1f             	sar    $0x1f,%eax
    56a1:	29 c2                	sub    %eax,%edx
    56a3:	89 d0                	mov    %edx,%eax
    56a5:	eb 11                	jmp    56b8 <hd_close+0x36>
    56a7:	8b 45 08             	mov    0x8(%ebp),%eax
    56aa:	83 e8 10             	sub    $0x10,%eax
    56ad:	8d 50 3f             	lea    0x3f(%eax),%edx
    56b0:	85 c0                	test   %eax,%eax
    56b2:	0f 48 c2             	cmovs  %edx,%eax
    56b5:	c1 f8 06             	sar    $0x6,%eax
    56b8:	89 45 f4             	mov    %eax,-0xc(%ebp)
    56bb:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    56bf:	74 1c                	je     56dd <hd_close+0x5b>
    56c1:	68 98 00 00 00       	push   $0x98
    56c6:	68 1e b7 00 00       	push   $0xb71e
    56cb:	68 1e b7 00 00       	push   $0xb71e
    56d0:	68 35 b7 00 00       	push   $0xb735
    56d5:	e8 d9 13 00 00       	call   6ab3 <assertion_failure>
    56da:	83 c4 10             	add    $0x10,%esp
    56dd:	8b 45 f4             	mov    -0xc(%ebp),%eax
    56e0:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
    56e6:	05 20 04 01 00       	add    $0x10420,%eax
    56eb:	8b 00                	mov    (%eax),%eax
    56ed:	8d 50 ff             	lea    -0x1(%eax),%edx
    56f0:	8b 45 f4             	mov    -0xc(%ebp),%eax
    56f3:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
    56f9:	05 20 04 01 00       	add    $0x10420,%eax
    56fe:	89 10                	mov    %edx,(%eax)
    5700:	90                   	nop
    5701:	c9                   	leave  
    5702:	c3                   	ret    

00005703 <hd_rdwt>:
    5703:	55                   	push   %ebp
    5704:	89 e5                	mov    %esp,%ebp
    5706:	57                   	push   %edi
    5707:	56                   	push   %esi
    5708:	53                   	push   %ebx
    5709:	83 ec 3c             	sub    $0x3c,%esp
    570c:	8b 45 08             	mov    0x8(%ebp),%eax
    570f:	8b 40 14             	mov    0x14(%eax),%eax
    5712:	83 f8 09             	cmp    $0x9,%eax
    5715:	7f 1c                	jg     5733 <hd_rdwt+0x30>
    5717:	8b 45 08             	mov    0x8(%ebp),%eax
    571a:	8b 48 14             	mov    0x14(%eax),%ecx
    571d:	ba 67 66 66 66       	mov    $0x66666667,%edx
    5722:	89 c8                	mov    %ecx,%eax
    5724:	f7 ea                	imul   %edx
    5726:	d1 fa                	sar    %edx
    5728:	89 c8                	mov    %ecx,%eax
    572a:	c1 f8 1f             	sar    $0x1f,%eax
    572d:	29 c2                	sub    %eax,%edx
    572f:	89 d0                	mov    %edx,%eax
    5731:	eb 14                	jmp    5747 <hd_rdwt+0x44>
    5733:	8b 45 08             	mov    0x8(%ebp),%eax
    5736:	8b 40 14             	mov    0x14(%eax),%eax
    5739:	83 e8 10             	sub    $0x10,%eax
    573c:	8d 50 3f             	lea    0x3f(%eax),%edx
    573f:	85 c0                	test   %eax,%eax
    5741:	0f 48 c2             	cmovs  %edx,%eax
    5744:	c1 f8 06             	sar    $0x6,%eax
    5747:	89 45 dc             	mov    %eax,-0x24(%ebp)
    574a:	8b 45 08             	mov    0x8(%ebp),%eax
    574d:	8b 50 1c             	mov    0x1c(%eax),%edx
    5750:	8b 40 18             	mov    0x18(%eax),%eax
    5753:	89 45 d0             	mov    %eax,-0x30(%ebp)
    5756:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    5759:	8b 45 d0             	mov    -0x30(%ebp),%eax
    575c:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    575f:	0f ac d0 09          	shrd   $0x9,%edx,%eax
    5763:	c1 ea 09             	shr    $0x9,%edx
    5766:	89 c6                	mov    %eax,%esi
    5768:	89 d7                	mov    %edx,%edi
    576a:	bb ff ff ff 7f       	mov    $0x7fffffff,%ebx
    576f:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
    5774:	39 f3                	cmp    %esi,%ebx
    5776:	19 f9                	sbb    %edi,%ecx
    5778:	73 1c                	jae    5796 <hd_rdwt+0x93>
    577a:	68 ab 00 00 00       	push   $0xab
    577f:	68 1e b7 00 00       	push   $0xb71e
    5784:	68 1e b7 00 00       	push   $0xb71e
    5789:	68 40 b7 00 00       	push   $0xb740
    578e:	e8 20 13 00 00       	call   6ab3 <assertion_failure>
    5793:	83 c4 10             	add    $0x10,%esp
    5796:	8b 45 d0             	mov    -0x30(%ebp),%eax
    5799:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    579c:	25 ff 01 00 00       	and    $0x1ff,%eax
    57a1:	ba 00 00 00 00       	mov    $0x0,%edx
    57a6:	09 d0                	or     %edx,%eax
    57a8:	85 c0                	test   %eax,%eax
    57aa:	74 1c                	je     57c8 <hd_rdwt+0xc5>
    57ac:	68 b0 00 00 00       	push   $0xb0
    57b1:	68 1e b7 00 00       	push   $0xb71e
    57b6:	68 1e b7 00 00       	push   $0xb71e
    57bb:	68 67 b7 00 00       	push   $0xb767
    57c0:	e8 ee 12 00 00       	call   6ab3 <assertion_failure>
    57c5:	83 c4 10             	add    $0x10,%esp
    57c8:	8b 45 d0             	mov    -0x30(%ebp),%eax
    57cb:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    57ce:	0f ac d0 09          	shrd   $0x9,%edx,%eax
    57d2:	c1 ea 09             	shr    $0x9,%edx
    57d5:	89 c3                	mov    %eax,%ebx
    57d7:	89 d6                	mov    %edx,%esi
    57d9:	89 5d cc             	mov    %ebx,-0x34(%ebp)
    57dc:	8b 45 08             	mov    0x8(%ebp),%eax
    57df:	8b 40 14             	mov    0x14(%eax),%eax
    57e2:	8d 50 f0             	lea    -0x10(%eax),%edx
    57e5:	89 d0                	mov    %edx,%eax
    57e7:	c1 f8 1f             	sar    $0x1f,%eax
    57ea:	c1 e8 1a             	shr    $0x1a,%eax
    57ed:	01 c2                	add    %eax,%edx
    57ef:	83 e2 3f             	and    $0x3f,%edx
    57f2:	29 c2                	sub    %eax,%edx
    57f4:	89 d0                	mov    %edx,%eax
    57f6:	89 45 c8             	mov    %eax,-0x38(%ebp)
    57f9:	8b 45 08             	mov    0x8(%ebp),%eax
    57fc:	8b 40 14             	mov    0x14(%eax),%eax
    57ff:	83 f8 08             	cmp    $0x8,%eax
    5802:	7f 1d                	jg     5821 <hd_rdwt+0x11e>
    5804:	8b 45 08             	mov    0x8(%ebp),%eax
    5807:	8b 50 14             	mov    0x14(%eax),%edx
    580a:	8b 45 dc             	mov    -0x24(%ebp),%eax
    580d:	c1 e2 03             	shl    $0x3,%edx
    5810:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
    5816:	01 d0                	add    %edx,%eax
    5818:	05 24 04 01 00       	add    $0x10424,%eax
    581d:	8b 00                	mov    (%eax),%eax
    581f:	eb 1b                	jmp    583c <hd_rdwt+0x139>
    5821:	8b 45 c8             	mov    -0x38(%ebp),%eax
    5824:	8d 50 04             	lea    0x4(%eax),%edx
    5827:	8b 45 dc             	mov    -0x24(%ebp),%eax
    582a:	c1 e2 03             	shl    $0x3,%edx
    582d:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
    5833:	01 d0                	add    %edx,%eax
    5835:	05 2c 04 01 00       	add    $0x1042c,%eax
    583a:	8b 00                	mov    (%eax),%eax
    583c:	01 45 cc             	add    %eax,-0x34(%ebp)
    583f:	c6 45 bd 00          	movb   $0x0,-0x43(%ebp)
    5843:	8b 45 08             	mov    0x8(%ebp),%eax
    5846:	8b 40 0c             	mov    0xc(%eax),%eax
    5849:	05 ff 01 00 00       	add    $0x1ff,%eax
    584e:	8d 90 ff 01 00 00    	lea    0x1ff(%eax),%edx
    5854:	85 c0                	test   %eax,%eax
    5856:	0f 48 c2             	cmovs  %edx,%eax
    5859:	c1 f8 09             	sar    $0x9,%eax
    585c:	88 45 be             	mov    %al,-0x42(%ebp)
    585f:	8b 45 cc             	mov    -0x34(%ebp),%eax
    5862:	88 45 bf             	mov    %al,-0x41(%ebp)
    5865:	8b 45 cc             	mov    -0x34(%ebp),%eax
    5868:	c1 e8 08             	shr    $0x8,%eax
    586b:	88 45 c0             	mov    %al,-0x40(%ebp)
    586e:	8b 45 cc             	mov    -0x34(%ebp),%eax
    5871:	c1 e8 10             	shr    $0x10,%eax
    5874:	88 45 c1             	mov    %al,-0x3f(%ebp)
    5877:	8b 45 dc             	mov    -0x24(%ebp),%eax
    587a:	c1 e0 04             	shl    $0x4,%eax
    587d:	89 c2                	mov    %eax,%edx
    587f:	8b 45 cc             	mov    -0x34(%ebp),%eax
    5882:	c1 e8 18             	shr    $0x18,%eax
    5885:	83 e0 0f             	and    $0xf,%eax
    5888:	09 d0                	or     %edx,%eax
    588a:	83 c8 e0             	or     $0xffffffe0,%eax
    588d:	88 45 c2             	mov    %al,-0x3e(%ebp)
    5890:	8b 45 08             	mov    0x8(%ebp),%eax
    5893:	8b 40 04             	mov    0x4(%eax),%eax
    5896:	3d eb 03 00 00       	cmp    $0x3eb,%eax
    589b:	75 07                	jne    58a4 <hd_rdwt+0x1a1>
    589d:	b8 20 00 00 00       	mov    $0x20,%eax
    58a2:	eb 05                	jmp    58a9 <hd_rdwt+0x1a6>
    58a4:	b8 30 00 00 00       	mov    $0x30,%eax
    58a9:	88 45 c3             	mov    %al,-0x3d(%ebp)
    58ac:	83 ec 0c             	sub    $0xc,%esp
    58af:	8d 45 bd             	lea    -0x43(%ebp),%eax
    58b2:	50                   	push   %eax
    58b3:	e8 0a 08 00 00       	call   60c2 <hd_cmd_out>
    58b8:	83 c4 10             	add    $0x10,%esp
    58bb:	8b 45 08             	mov    0x8(%ebp),%eax
    58be:	8b 40 0c             	mov    0xc(%eax),%eax
    58c1:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    58c4:	8b 45 08             	mov    0x8(%ebp),%eax
    58c7:	8b 50 2c             	mov    0x2c(%eax),%edx
    58ca:	8b 45 08             	mov    0x8(%ebp),%eax
    58cd:	8b 40 10             	mov    0x10(%eax),%eax
    58d0:	83 ec 08             	sub    $0x8,%esp
    58d3:	52                   	push   %edx
    58d4:	50                   	push   %eax
    58d5:	e8 9c e6 ff ff       	call   3f76 <va2la>
    58da:	83 c4 10             	add    $0x10,%esp
    58dd:	89 45 e0             	mov    %eax,-0x20(%ebp)
    58e0:	e9 b6 00 00 00       	jmp    599b <hd_rdwt+0x298>
    58e5:	b8 00 02 00 00       	mov    $0x200,%eax
    58ea:	81 7d e4 00 02 00 00 	cmpl   $0x200,-0x1c(%ebp)
    58f1:	0f 4e 45 e4          	cmovle -0x1c(%ebp),%eax
    58f5:	89 45 c4             	mov    %eax,-0x3c(%ebp)
    58f8:	8b 45 08             	mov    0x8(%ebp),%eax
    58fb:	8b 40 04             	mov    0x4(%eax),%eax
    58fe:	3d eb 03 00 00       	cmp    $0x3eb,%eax
    5903:	75 45                	jne    594a <hd_rdwt+0x247>
    5905:	e8 ba 08 00 00       	call   61c4 <interrupt_wait>
    590a:	83 ec 04             	sub    $0x4,%esp
    590d:	68 00 02 00 00       	push   $0x200
    5912:	68 20 00 01 00       	push   $0x10020
    5917:	68 f0 01 00 00       	push   $0x1f0
    591c:	e8 92 0d 00 00       	call   66b3 <port_read>
    5921:	83 c4 10             	add    $0x10,%esp
    5924:	83 ec 08             	sub    $0x8,%esp
    5927:	68 20 00 01 00       	push   $0x10020
    592c:	6a 02                	push   $0x2
    592e:	e8 43 e6 ff ff       	call   3f76 <va2la>
    5933:	83 c4 10             	add    $0x10,%esp
    5936:	83 ec 04             	sub    $0x4,%esp
    5939:	ff 75 c4             	pushl  -0x3c(%ebp)
    593c:	50                   	push   %eax
    593d:	ff 75 e0             	pushl  -0x20(%ebp)
    5940:	e8 9b 0f 00 00       	call   68e0 <memcpy>
    5945:	83 c4 10             	add    $0x10,%esp
    5948:	eb 43                	jmp    598d <hd_rdwt+0x28a>
    594a:	83 ec 04             	sub    $0x4,%esp
    594d:	68 10 27 00 00       	push   $0x2710
    5952:	6a 08                	push   $0x8
    5954:	6a 08                	push   $0x8
    5956:	e8 85 08 00 00       	call   61e0 <waitfor>
    595b:	83 c4 10             	add    $0x10,%esp
    595e:	85 c0                	test   %eax,%eax
    5960:	75 10                	jne    5972 <hd_rdwt+0x26f>
    5962:	83 ec 0c             	sub    $0xc,%esp
    5965:	68 7a b7 00 00       	push   $0xb77a
    596a:	e8 58 c2 ff ff       	call   1bc7 <panic>
    596f:	83 c4 10             	add    $0x10,%esp
    5972:	83 ec 04             	sub    $0x4,%esp
    5975:	ff 75 c4             	pushl  -0x3c(%ebp)
    5978:	ff 75 e0             	pushl  -0x20(%ebp)
    597b:	68 f0 01 00 00       	push   $0x1f0
    5980:	e8 41 0d 00 00       	call   66c6 <port_write>
    5985:	83 c4 10             	add    $0x10,%esp
    5988:	e8 37 08 00 00       	call   61c4 <interrupt_wait>
    598d:	81 6d e4 00 02 00 00 	subl   $0x200,-0x1c(%ebp)
    5994:	81 45 e0 00 02 00 00 	addl   $0x200,-0x20(%ebp)
    599b:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
    599f:	0f 85 40 ff ff ff    	jne    58e5 <hd_rdwt+0x1e2>
    59a5:	90                   	nop
    59a6:	8d 65 f4             	lea    -0xc(%ebp),%esp
    59a9:	5b                   	pop    %ebx
    59aa:	5e                   	pop    %esi
    59ab:	5f                   	pop    %edi
    59ac:	5d                   	pop    %ebp
    59ad:	c3                   	ret    

000059ae <hd_ioctl>:
    59ae:	55                   	push   %ebp
    59af:	89 e5                	mov    %esp,%ebp
    59b1:	83 ec 28             	sub    $0x28,%esp
    59b4:	8b 45 08             	mov    0x8(%ebp),%eax
    59b7:	8b 40 14             	mov    0x14(%eax),%eax
    59ba:	89 45 f4             	mov    %eax,-0xc(%ebp)
    59bd:	83 7d f4 09          	cmpl   $0x9,-0xc(%ebp)
    59c1:	7f 19                	jg     59dc <hd_ioctl+0x2e>
    59c3:	8b 4d f4             	mov    -0xc(%ebp),%ecx
    59c6:	ba 67 66 66 66       	mov    $0x66666667,%edx
    59cb:	89 c8                	mov    %ecx,%eax
    59cd:	f7 ea                	imul   %edx
    59cf:	d1 fa                	sar    %edx
    59d1:	89 c8                	mov    %ecx,%eax
    59d3:	c1 f8 1f             	sar    $0x1f,%eax
    59d6:	29 c2                	sub    %eax,%edx
    59d8:	89 d0                	mov    %edx,%eax
    59da:	eb 11                	jmp    59ed <hd_ioctl+0x3f>
    59dc:	8b 45 f4             	mov    -0xc(%ebp),%eax
    59df:	83 e8 10             	sub    $0x10,%eax
    59e2:	8d 50 3f             	lea    0x3f(%eax),%edx
    59e5:	85 c0                	test   %eax,%eax
    59e7:	0f 48 c2             	cmovs  %edx,%eax
    59ea:	c1 f8 06             	sar    $0x6,%eax
    59ed:	89 45 f0             	mov    %eax,-0x10(%ebp)
    59f0:	8b 45 f0             	mov    -0x10(%ebp),%eax
    59f3:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
    59f9:	05 20 04 01 00       	add    $0x10420,%eax
    59fe:	89 45 ec             	mov    %eax,-0x14(%ebp)
    5a01:	8b 45 08             	mov    0x8(%ebp),%eax
    5a04:	8b 40 0c             	mov    0xc(%eax),%eax
    5a07:	83 f8 01             	cmp    $0x1,%eax
    5a0a:	0f 85 85 00 00 00    	jne    5a95 <hd_ioctl+0xe7>
    5a10:	8b 45 08             	mov    0x8(%ebp),%eax
    5a13:	8b 50 2c             	mov    0x2c(%eax),%edx
    5a16:	8b 45 08             	mov    0x8(%ebp),%eax
    5a19:	8b 40 10             	mov    0x10(%eax),%eax
    5a1c:	83 ec 08             	sub    $0x8,%esp
    5a1f:	52                   	push   %edx
    5a20:	50                   	push   %eax
    5a21:	e8 50 e5 ff ff       	call   3f76 <va2la>
    5a26:	83 c4 10             	add    $0x10,%esp
    5a29:	89 45 e8             	mov    %eax,-0x18(%ebp)
    5a2c:	83 7d f4 08          	cmpl   $0x8,-0xc(%ebp)
    5a30:	7f 14                	jg     5a46 <hd_ioctl+0x98>
    5a32:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5a35:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    5a3c:	8b 45 ec             	mov    -0x14(%ebp),%eax
    5a3f:	01 d0                	add    %edx,%eax
    5a41:	83 c0 04             	add    $0x4,%eax
    5a44:	eb 29                	jmp    5a6f <hd_ioctl+0xc1>
    5a46:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5a49:	8d 50 f0             	lea    -0x10(%eax),%edx
    5a4c:	89 d0                	mov    %edx,%eax
    5a4e:	c1 f8 1f             	sar    $0x1f,%eax
    5a51:	c1 e8 1a             	shr    $0x1a,%eax
    5a54:	01 c2                	add    %eax,%edx
    5a56:	83 e2 3f             	and    $0x3f,%edx
    5a59:	29 c2                	sub    %eax,%edx
    5a5b:	89 d0                	mov    %edx,%eax
    5a5d:	83 c0 04             	add    $0x4,%eax
    5a60:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    5a67:	8b 45 ec             	mov    -0x14(%ebp),%eax
    5a6a:	01 d0                	add    %edx,%eax
    5a6c:	83 c0 0c             	add    $0xc,%eax
    5a6f:	83 ec 08             	sub    $0x8,%esp
    5a72:	50                   	push   %eax
    5a73:	6a 02                	push   $0x2
    5a75:	e8 fc e4 ff ff       	call   3f76 <va2la>
    5a7a:	83 c4 10             	add    $0x10,%esp
    5a7d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    5a80:	83 ec 04             	sub    $0x4,%esp
    5a83:	6a 08                	push   $0x8
    5a85:	ff 75 e4             	pushl  -0x1c(%ebp)
    5a88:	ff 75 e8             	pushl  -0x18(%ebp)
    5a8b:	e8 50 0e 00 00       	call   68e0 <memcpy>
    5a90:	83 c4 10             	add    $0x10,%esp
    5a93:	eb 1c                	jmp    5ab1 <hd_ioctl+0x103>
    5a95:	68 f3 00 00 00       	push   $0xf3
    5a9a:	68 1e b7 00 00       	push   $0xb71e
    5a9f:	68 1e b7 00 00       	push   $0xb71e
    5aa4:	68 8c b7 00 00       	push   $0xb78c
    5aa9:	e8 05 10 00 00       	call   6ab3 <assertion_failure>
    5aae:	83 c4 10             	add    $0x10,%esp
    5ab1:	90                   	nop
    5ab2:	c9                   	leave  
    5ab3:	c3                   	ret    

00005ab4 <get_part_table>:
    5ab4:	55                   	push   %ebp
    5ab5:	89 e5                	mov    %esp,%ebp
    5ab7:	83 ec 18             	sub    $0x18,%esp
    5aba:	c6 45 f1 00          	movb   $0x0,-0xf(%ebp)
    5abe:	c6 45 f2 01          	movb   $0x1,-0xe(%ebp)
    5ac2:	8b 45 0c             	mov    0xc(%ebp),%eax
    5ac5:	88 45 f3             	mov    %al,-0xd(%ebp)
    5ac8:	8b 45 0c             	mov    0xc(%ebp),%eax
    5acb:	c1 f8 08             	sar    $0x8,%eax
    5ace:	88 45 f4             	mov    %al,-0xc(%ebp)
    5ad1:	8b 45 0c             	mov    0xc(%ebp),%eax
    5ad4:	c1 f8 10             	sar    $0x10,%eax
    5ad7:	88 45 f5             	mov    %al,-0xb(%ebp)
    5ada:	8b 45 08             	mov    0x8(%ebp),%eax
    5add:	c1 e0 04             	shl    $0x4,%eax
    5ae0:	83 c8 40             	or     $0x40,%eax
    5ae3:	89 c2                	mov    %eax,%edx
    5ae5:	8b 45 0c             	mov    0xc(%ebp),%eax
    5ae8:	c1 f8 18             	sar    $0x18,%eax
    5aeb:	83 e0 0f             	and    $0xf,%eax
    5aee:	09 d0                	or     %edx,%eax
    5af0:	83 c8 a0             	or     $0xffffffa0,%eax
    5af3:	88 45 f6             	mov    %al,-0xa(%ebp)
    5af6:	c6 45 f7 20          	movb   $0x20,-0x9(%ebp)
    5afa:	83 ec 0c             	sub    $0xc,%esp
    5afd:	8d 45 f1             	lea    -0xf(%ebp),%eax
    5b00:	50                   	push   %eax
    5b01:	e8 bc 05 00 00       	call   60c2 <hd_cmd_out>
    5b06:	83 c4 10             	add    $0x10,%esp
    5b09:	e8 b6 06 00 00       	call   61c4 <interrupt_wait>
    5b0e:	83 ec 04             	sub    $0x4,%esp
    5b11:	68 00 02 00 00       	push   $0x200
    5b16:	68 20 00 01 00       	push   $0x10020
    5b1b:	68 f0 01 00 00       	push   $0x1f0
    5b20:	e8 8e 0b 00 00       	call   66b3 <port_read>
    5b25:	83 c4 10             	add    $0x10,%esp
    5b28:	b8 de 01 01 00       	mov    $0x101de,%eax
    5b2d:	83 ec 04             	sub    $0x4,%esp
    5b30:	6a 40                	push   $0x40
    5b32:	50                   	push   %eax
    5b33:	ff 75 10             	pushl  0x10(%ebp)
    5b36:	e8 a5 0d 00 00       	call   68e0 <memcpy>
    5b3b:	83 c4 10             	add    $0x10,%esp
    5b3e:	90                   	nop
    5b3f:	c9                   	leave  
    5b40:	c3                   	ret    

00005b41 <partition>:
    5b41:	55                   	push   %ebp
    5b42:	89 e5                	mov    %esp,%ebp
    5b44:	81 ec 38 04 00 00    	sub    $0x438,%esp
    5b4a:	83 7d 08 09          	cmpl   $0x9,0x8(%ebp)
    5b4e:	7f 19                	jg     5b69 <partition+0x28>
    5b50:	8b 4d 08             	mov    0x8(%ebp),%ecx
    5b53:	ba 67 66 66 66       	mov    $0x66666667,%edx
    5b58:	89 c8                	mov    %ecx,%eax
    5b5a:	f7 ea                	imul   %edx
    5b5c:	d1 fa                	sar    %edx
    5b5e:	89 c8                	mov    %ecx,%eax
    5b60:	c1 f8 1f             	sar    $0x1f,%eax
    5b63:	29 c2                	sub    %eax,%edx
    5b65:	89 d0                	mov    %edx,%eax
    5b67:	eb 11                	jmp    5b7a <partition+0x39>
    5b69:	8b 45 08             	mov    0x8(%ebp),%eax
    5b6c:	83 e8 10             	sub    $0x10,%eax
    5b6f:	8d 50 3f             	lea    0x3f(%eax),%edx
    5b72:	85 c0                	test   %eax,%eax
    5b74:	0f 48 c2             	cmovs  %edx,%eax
    5b77:	c1 f8 06             	sar    $0x6,%eax
    5b7a:	89 45 e8             	mov    %eax,-0x18(%ebp)
    5b7d:	8b 45 e8             	mov    -0x18(%ebp),%eax
    5b80:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
    5b86:	05 20 04 01 00       	add    $0x10420,%eax
    5b8b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    5b8e:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    5b92:	0f 85 f0 00 00 00    	jne    5c88 <partition+0x147>
    5b98:	83 ec 04             	sub    $0x4,%esp
    5b9b:	8d 85 d0 fb ff ff    	lea    -0x430(%ebp),%eax
    5ba1:	50                   	push   %eax
    5ba2:	ff 75 e8             	pushl  -0x18(%ebp)
    5ba5:	ff 75 e8             	pushl  -0x18(%ebp)
    5ba8:	e8 07 ff ff ff       	call   5ab4 <get_part_table>
    5bad:	83 c4 10             	add    $0x10,%esp
    5bb0:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    5bb7:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    5bbe:	e9 90 00 00 00       	jmp    5c53 <partition+0x112>
    5bc3:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5bc6:	c1 e0 04             	shl    $0x4,%eax
    5bc9:	8d 4d f8             	lea    -0x8(%ebp),%ecx
    5bcc:	01 c8                	add    %ecx,%eax
    5bce:	2d 24 04 00 00       	sub    $0x424,%eax
    5bd3:	0f b6 00             	movzbl (%eax),%eax
    5bd6:	84 c0                	test   %al,%al
    5bd8:	74 74                	je     5c4e <partition+0x10d>
    5bda:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    5bde:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5be1:	83 c0 01             	add    $0x1,%eax
    5be4:	89 45 e0             	mov    %eax,-0x20(%ebp)
    5be7:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5bea:	c1 e0 04             	shl    $0x4,%eax
    5bed:	8d 4d f8             	lea    -0x8(%ebp),%ecx
    5bf0:	01 c8                	add    %ecx,%eax
    5bf2:	2d 20 04 00 00       	sub    $0x420,%eax
    5bf7:	8b 08                	mov    (%eax),%ecx
    5bf9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    5bfc:	8b 55 e0             	mov    -0x20(%ebp),%edx
    5bff:	89 4c d0 04          	mov    %ecx,0x4(%eax,%edx,8)
    5c03:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5c06:	c1 e0 04             	shl    $0x4,%eax
    5c09:	8d 4d f8             	lea    -0x8(%ebp),%ecx
    5c0c:	01 c8                	add    %ecx,%eax
    5c0e:	2d 1c 04 00 00       	sub    $0x41c,%eax
    5c13:	8b 08                	mov    (%eax),%ecx
    5c15:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    5c18:	8b 55 e0             	mov    -0x20(%ebp),%edx
    5c1b:	89 4c d0 08          	mov    %ecx,0x8(%eax,%edx,8)
    5c1f:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5c22:	c1 e0 04             	shl    $0x4,%eax
    5c25:	8d 4d f8             	lea    -0x8(%ebp),%ecx
    5c28:	01 c8                	add    %ecx,%eax
    5c2a:	2d 24 04 00 00       	sub    $0x424,%eax
    5c2f:	0f b6 00             	movzbl (%eax),%eax
    5c32:	3c 05                	cmp    $0x5,%al
    5c34:	75 19                	jne    5c4f <partition+0x10e>
    5c36:	8b 55 08             	mov    0x8(%ebp),%edx
    5c39:	8b 45 e0             	mov    -0x20(%ebp),%eax
    5c3c:	01 d0                	add    %edx,%eax
    5c3e:	83 ec 08             	sub    $0x8,%esp
    5c41:	6a 01                	push   $0x1
    5c43:	50                   	push   %eax
    5c44:	e8 f8 fe ff ff       	call   5b41 <partition>
    5c49:	83 c4 10             	add    $0x10,%esp
    5c4c:	eb 01                	jmp    5c4f <partition+0x10e>
    5c4e:	90                   	nop
    5c4f:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    5c53:	83 7d f4 03          	cmpl   $0x3,-0xc(%ebp)
    5c57:	0f 8e 66 ff ff ff    	jle    5bc3 <partition+0x82>
    5c5d:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    5c61:	0f 85 09 01 00 00    	jne    5d70 <partition+0x22f>
    5c67:	68 38 01 00 00       	push   $0x138
    5c6c:	68 1e b7 00 00       	push   $0xb71e
    5c71:	68 1e b7 00 00       	push   $0xb71e
    5c76:	68 8e b7 00 00       	push   $0xb78e
    5c7b:	e8 33 0e 00 00       	call   6ab3 <assertion_failure>
    5c80:	83 c4 10             	add    $0x10,%esp
    5c83:	e9 e8 00 00 00       	jmp    5d70 <partition+0x22f>
    5c88:	83 7d 0c 01          	cmpl   $0x1,0xc(%ebp)
    5c8c:	0f 85 bf 00 00 00    	jne    5d51 <partition+0x210>
    5c92:	8b 4d 08             	mov    0x8(%ebp),%ecx
    5c95:	ba 67 66 66 66       	mov    $0x66666667,%edx
    5c9a:	89 c8                	mov    %ecx,%eax
    5c9c:	f7 ea                	imul   %edx
    5c9e:	d1 fa                	sar    %edx
    5ca0:	89 c8                	mov    %ecx,%eax
    5ca2:	c1 f8 1f             	sar    $0x1f,%eax
    5ca5:	29 c2                	sub    %eax,%edx
    5ca7:	89 d0                	mov    %edx,%eax
    5ca9:	c1 e0 02             	shl    $0x2,%eax
    5cac:	01 d0                	add    %edx,%eax
    5cae:	29 c1                	sub    %eax,%ecx
    5cb0:	89 c8                	mov    %ecx,%eax
    5cb2:	89 45 dc             	mov    %eax,-0x24(%ebp)
    5cb5:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    5cb8:	8b 55 dc             	mov    -0x24(%ebp),%edx
    5cbb:	8b 44 d0 04          	mov    0x4(%eax,%edx,8),%eax
    5cbf:	89 45 d8             	mov    %eax,-0x28(%ebp)
    5cc2:	8b 45 d8             	mov    -0x28(%ebp),%eax
    5cc5:	89 45 ec             	mov    %eax,-0x14(%ebp)
    5cc8:	8b 45 dc             	mov    -0x24(%ebp),%eax
    5ccb:	83 e8 01             	sub    $0x1,%eax
    5cce:	c1 e0 04             	shl    $0x4,%eax
    5cd1:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    5cd4:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    5cdb:	eb 6c                	jmp    5d49 <partition+0x208>
    5cdd:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    5ce0:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5ce3:	01 d0                	add    %edx,%eax
    5ce5:	89 45 d0             	mov    %eax,-0x30(%ebp)
    5ce8:	83 ec 04             	sub    $0x4,%esp
    5ceb:	8d 85 d0 fb ff ff    	lea    -0x430(%ebp),%eax
    5cf1:	50                   	push   %eax
    5cf2:	ff 75 ec             	pushl  -0x14(%ebp)
    5cf5:	ff 75 e8             	pushl  -0x18(%ebp)
    5cf8:	e8 b7 fd ff ff       	call   5ab4 <get_part_table>
    5cfd:	83 c4 10             	add    $0x10,%esp
    5d00:	8b 95 d8 fb ff ff    	mov    -0x428(%ebp),%edx
    5d06:	8b 45 ec             	mov    -0x14(%ebp),%eax
    5d09:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
    5d0c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    5d0f:	8b 55 d0             	mov    -0x30(%ebp),%edx
    5d12:	83 c2 04             	add    $0x4,%edx
    5d15:	89 4c d0 0c          	mov    %ecx,0xc(%eax,%edx,8)
    5d19:	8b 95 dc fb ff ff    	mov    -0x424(%ebp),%edx
    5d1f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    5d22:	8b 4d d0             	mov    -0x30(%ebp),%ecx
    5d25:	83 c1 04             	add    $0x4,%ecx
    5d28:	89 54 c8 10          	mov    %edx,0x10(%eax,%ecx,8)
    5d2c:	8b 95 e8 fb ff ff    	mov    -0x418(%ebp),%edx
    5d32:	8b 45 d8             	mov    -0x28(%ebp),%eax
    5d35:	01 d0                	add    %edx,%eax
    5d37:	89 45 ec             	mov    %eax,-0x14(%ebp)
    5d3a:	0f b6 85 e4 fb ff ff 	movzbl -0x41c(%ebp),%eax
    5d41:	84 c0                	test   %al,%al
    5d43:	74 2a                	je     5d6f <partition+0x22e>
    5d45:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    5d49:	83 7d f4 0f          	cmpl   $0xf,-0xc(%ebp)
    5d4d:	7e 8e                	jle    5cdd <partition+0x19c>
    5d4f:	eb 1f                	jmp    5d70 <partition+0x22f>
    5d51:	68 51 01 00 00       	push   $0x151
    5d56:	68 1e b7 00 00       	push   $0xb71e
    5d5b:	68 1e b7 00 00       	push   $0xb71e
    5d60:	68 8c b7 00 00       	push   $0xb78c
    5d65:	e8 49 0d 00 00       	call   6ab3 <assertion_failure>
    5d6a:	83 c4 10             	add    $0x10,%esp
    5d6d:	eb 01                	jmp    5d70 <partition+0x22f>
    5d6f:	90                   	nop
    5d70:	90                   	nop
    5d71:	c9                   	leave  
    5d72:	c3                   	ret    

00005d73 <print_hdinfo>:
    5d73:	55                   	push   %ebp
    5d74:	89 e5                	mov    %esp,%ebp
    5d76:	56                   	push   %esi
    5d77:	53                   	push   %ebx
    5d78:	83 ec 10             	sub    $0x10,%esp
    5d7b:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    5d82:	eb 56                	jmp    5dda <print_hdinfo+0x67>
    5d84:	8b 45 08             	mov    0x8(%ebp),%eax
    5d87:	8b 55 f4             	mov    -0xc(%ebp),%edx
    5d8a:	8b 5c d0 08          	mov    0x8(%eax,%edx,8),%ebx
    5d8e:	8b 45 08             	mov    0x8(%ebp),%eax
    5d91:	8b 55 f4             	mov    -0xc(%ebp),%edx
    5d94:	8b 4c d0 08          	mov    0x8(%eax,%edx,8),%ecx
    5d98:	8b 45 08             	mov    0x8(%ebp),%eax
    5d9b:	8b 55 f4             	mov    -0xc(%ebp),%edx
    5d9e:	8b 54 d0 04          	mov    0x4(%eax,%edx,8),%edx
    5da2:	8b 45 08             	mov    0x8(%ebp),%eax
    5da5:	8b 75 f4             	mov    -0xc(%ebp),%esi
    5da8:	8b 44 f0 04          	mov    0x4(%eax,%esi,8),%eax
    5dac:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    5db0:	75 07                	jne    5db9 <print_hdinfo+0x46>
    5db2:	be a1 b7 00 00       	mov    $0xb7a1,%esi
    5db7:	eb 05                	jmp    5dbe <print_hdinfo+0x4b>
    5db9:	be a3 b7 00 00       	mov    $0xb7a3,%esi
    5dbe:	83 ec 04             	sub    $0x4,%esp
    5dc1:	53                   	push   %ebx
    5dc2:	51                   	push   %ecx
    5dc3:	52                   	push   %edx
    5dc4:	50                   	push   %eax
    5dc5:	ff 75 f4             	pushl  -0xc(%ebp)
    5dc8:	56                   	push   %esi
    5dc9:	68 ac b7 00 00       	push   $0xb7ac
    5dce:	e8 f4 04 00 00       	call   62c7 <printl>
    5dd3:	83 c4 20             	add    $0x20,%esp
    5dd6:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    5dda:	83 7d f4 04          	cmpl   $0x4,-0xc(%ebp)
    5dde:	7e a4                	jle    5d84 <print_hdinfo+0x11>
    5de0:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    5de7:	eb 63                	jmp    5e4c <print_hdinfo+0xd9>
    5de9:	8b 45 08             	mov    0x8(%ebp),%eax
    5dec:	8b 55 f4             	mov    -0xc(%ebp),%edx
    5def:	83 c2 04             	add    $0x4,%edx
    5df2:	8b 44 d0 10          	mov    0x10(%eax,%edx,8),%eax
    5df6:	85 c0                	test   %eax,%eax
    5df8:	74 4d                	je     5e47 <print_hdinfo+0xd4>
    5dfa:	8b 45 08             	mov    0x8(%ebp),%eax
    5dfd:	8b 55 f4             	mov    -0xc(%ebp),%edx
    5e00:	83 c2 04             	add    $0x4,%edx
    5e03:	8b 5c d0 10          	mov    0x10(%eax,%edx,8),%ebx
    5e07:	8b 45 08             	mov    0x8(%ebp),%eax
    5e0a:	8b 55 f4             	mov    -0xc(%ebp),%edx
    5e0d:	83 c2 04             	add    $0x4,%edx
    5e10:	8b 4c d0 10          	mov    0x10(%eax,%edx,8),%ecx
    5e14:	8b 45 08             	mov    0x8(%ebp),%eax
    5e17:	8b 55 f4             	mov    -0xc(%ebp),%edx
    5e1a:	83 c2 04             	add    $0x4,%edx
    5e1d:	8b 54 d0 0c          	mov    0xc(%eax,%edx,8),%edx
    5e21:	8b 45 08             	mov    0x8(%ebp),%eax
    5e24:	8b 75 f4             	mov    -0xc(%ebp),%esi
    5e27:	83 c6 04             	add    $0x4,%esi
    5e2a:	8b 44 f0 0c          	mov    0xc(%eax,%esi,8),%eax
    5e2e:	83 ec 08             	sub    $0x8,%esp
    5e31:	53                   	push   %ebx
    5e32:	51                   	push   %ecx
    5e33:	52                   	push   %edx
    5e34:	50                   	push   %eax
    5e35:	ff 75 f4             	pushl  -0xc(%ebp)
    5e38:	68 e4 b7 00 00       	push   $0xb7e4
    5e3d:	e8 85 04 00 00       	call   62c7 <printl>
    5e42:	83 c4 20             	add    $0x20,%esp
    5e45:	eb 01                	jmp    5e48 <print_hdinfo+0xd5>
    5e47:	90                   	nop
    5e48:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    5e4c:	83 7d f4 3f          	cmpl   $0x3f,-0xc(%ebp)
    5e50:	7e 97                	jle    5de9 <print_hdinfo+0x76>
    5e52:	90                   	nop
    5e53:	8d 65 f8             	lea    -0x8(%ebp),%esp
    5e56:	5b                   	pop    %ebx
    5e57:	5e                   	pop    %esi
    5e58:	5d                   	pop    %ebp
    5e59:	c3                   	ret    

00005e5a <hd_identify>:
    5e5a:	55                   	push   %ebp
    5e5b:	89 e5                	mov    %esp,%ebp
    5e5d:	83 ec 18             	sub    $0x18,%esp
    5e60:	8b 45 08             	mov    0x8(%ebp),%eax
    5e63:	c1 e0 04             	shl    $0x4,%eax
    5e66:	83 c8 a0             	or     $0xffffffa0,%eax
    5e69:	88 45 f2             	mov    %al,-0xe(%ebp)
    5e6c:	c6 45 f3 ec          	movb   $0xec,-0xd(%ebp)
    5e70:	83 ec 0c             	sub    $0xc,%esp
    5e73:	8d 45 ed             	lea    -0x13(%ebp),%eax
    5e76:	50                   	push   %eax
    5e77:	e8 46 02 00 00       	call   60c2 <hd_cmd_out>
    5e7c:	83 c4 10             	add    $0x10,%esp
    5e7f:	e8 40 03 00 00       	call   61c4 <interrupt_wait>
    5e84:	83 ec 04             	sub    $0x4,%esp
    5e87:	68 00 02 00 00       	push   $0x200
    5e8c:	68 20 00 01 00       	push   $0x10020
    5e91:	68 f0 01 00 00       	push   $0x1f0
    5e96:	e8 18 08 00 00       	call   66b3 <port_read>
    5e9b:	83 c4 10             	add    $0x10,%esp
    5e9e:	83 ec 0c             	sub    $0xc,%esp
    5ea1:	68 20 00 01 00       	push   $0x10020
    5ea6:	e8 52 00 00 00       	call   5efd <print_identify_info>
    5eab:	83 c4 10             	add    $0x10,%esp
    5eae:	c7 45 f4 20 00 01 00 	movl   $0x10020,-0xc(%ebp)
    5eb5:	8b 45 08             	mov    0x8(%ebp),%eax
    5eb8:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
    5ebe:	05 24 04 01 00       	add    $0x10424,%eax
    5ec3:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
    5ec9:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5ecc:	83 c0 7a             	add    $0x7a,%eax
    5ecf:	0f b7 00             	movzwl (%eax),%eax
    5ed2:	0f b7 c0             	movzwl %ax,%eax
    5ed5:	c1 e0 10             	shl    $0x10,%eax
    5ed8:	89 c2                	mov    %eax,%edx
    5eda:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5edd:	83 c0 78             	add    $0x78,%eax
    5ee0:	0f b7 00             	movzwl (%eax),%eax
    5ee3:	0f b7 c0             	movzwl %ax,%eax
    5ee6:	01 d0                	add    %edx,%eax
    5ee8:	89 c2                	mov    %eax,%edx
    5eea:	8b 45 08             	mov    0x8(%ebp),%eax
    5eed:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
    5ef3:	05 28 04 01 00       	add    $0x10428,%eax
    5ef8:	89 10                	mov    %edx,(%eax)
    5efa:	90                   	nop
    5efb:	c9                   	leave  
    5efc:	c3                   	ret    

00005efd <print_identify_info>:
    5efd:	55                   	push   %ebp
    5efe:	89 e5                	mov    %esp,%ebp
    5f00:	83 ec 78             	sub    $0x78,%esp
    5f03:	c7 45 88 0a 00 00 00 	movl   $0xa,-0x78(%ebp)
    5f0a:	c7 45 8c 14 00 00 00 	movl   $0x14,-0x74(%ebp)
    5f11:	c7 45 90 1b b8 00 00 	movl   $0xb81b,-0x70(%ebp)
    5f18:	c7 45 94 1b 00 00 00 	movl   $0x1b,-0x6c(%ebp)
    5f1f:	c7 45 98 28 00 00 00 	movl   $0x28,-0x68(%ebp)
    5f26:	c7 45 9c 21 b8 00 00 	movl   $0xb821,-0x64(%ebp)
    5f2d:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    5f34:	e9 b8 00 00 00       	jmp    5ff1 <print_identify_info+0xf4>
    5f39:	8b 55 f0             	mov    -0x10(%ebp),%edx
    5f3c:	89 d0                	mov    %edx,%eax
    5f3e:	01 c0                	add    %eax,%eax
    5f40:	01 d0                	add    %edx,%eax
    5f42:	c1 e0 02             	shl    $0x2,%eax
    5f45:	8d 4d f8             	lea    -0x8(%ebp),%ecx
    5f48:	01 c8                	add    %ecx,%eax
    5f4a:	83 e8 70             	sub    $0x70,%eax
    5f4d:	8b 00                	mov    (%eax),%eax
    5f4f:	8d 14 00             	lea    (%eax,%eax,1),%edx
    5f52:	8b 45 08             	mov    0x8(%ebp),%eax
    5f55:	01 d0                	add    %edx,%eax
    5f57:	89 45 ec             	mov    %eax,-0x14(%ebp)
    5f5a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    5f61:	eb 31                	jmp    5f94 <print_identify_info+0x97>
    5f63:	8b 45 ec             	mov    -0x14(%ebp),%eax
    5f66:	8d 50 01             	lea    0x1(%eax),%edx
    5f69:	89 55 ec             	mov    %edx,-0x14(%ebp)
    5f6c:	8b 55 f4             	mov    -0xc(%ebp),%edx
    5f6f:	01 d2                	add    %edx,%edx
    5f71:	83 c2 01             	add    $0x1,%edx
    5f74:	0f b6 00             	movzbl (%eax),%eax
    5f77:	88 44 15 a0          	mov    %al,-0x60(%ebp,%edx,1)
    5f7b:	8b 45 ec             	mov    -0x14(%ebp),%eax
    5f7e:	8d 50 01             	lea    0x1(%eax),%edx
    5f81:	89 55 ec             	mov    %edx,-0x14(%ebp)
    5f84:	8b 55 f4             	mov    -0xc(%ebp),%edx
    5f87:	01 d2                	add    %edx,%edx
    5f89:	0f b6 00             	movzbl (%eax),%eax
    5f8c:	88 44 15 a0          	mov    %al,-0x60(%ebp,%edx,1)
    5f90:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    5f94:	8b 55 f0             	mov    -0x10(%ebp),%edx
    5f97:	89 d0                	mov    %edx,%eax
    5f99:	01 c0                	add    %eax,%eax
    5f9b:	01 d0                	add    %edx,%eax
    5f9d:	c1 e0 02             	shl    $0x2,%eax
    5fa0:	8d 4d f8             	lea    -0x8(%ebp),%ecx
    5fa3:	01 c8                	add    %ecx,%eax
    5fa5:	83 e8 6c             	sub    $0x6c,%eax
    5fa8:	8b 00                	mov    (%eax),%eax
    5faa:	89 c2                	mov    %eax,%edx
    5fac:	c1 ea 1f             	shr    $0x1f,%edx
    5faf:	01 d0                	add    %edx,%eax
    5fb1:	d1 f8                	sar    %eax
    5fb3:	39 45 f4             	cmp    %eax,-0xc(%ebp)
    5fb6:	7c ab                	jl     5f63 <print_identify_info+0x66>
    5fb8:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5fbb:	01 c0                	add    %eax,%eax
    5fbd:	c6 44 05 a0 00       	movb   $0x0,-0x60(%ebp,%eax,1)
    5fc2:	8b 55 f0             	mov    -0x10(%ebp),%edx
    5fc5:	89 d0                	mov    %edx,%eax
    5fc7:	01 c0                	add    %eax,%eax
    5fc9:	01 d0                	add    %edx,%eax
    5fcb:	c1 e0 02             	shl    $0x2,%eax
    5fce:	8d 4d f8             	lea    -0x8(%ebp),%ecx
    5fd1:	01 c8                	add    %ecx,%eax
    5fd3:	83 e8 68             	sub    $0x68,%eax
    5fd6:	8b 00                	mov    (%eax),%eax
    5fd8:	83 ec 04             	sub    $0x4,%esp
    5fdb:	8d 55 a0             	lea    -0x60(%ebp),%edx
    5fde:	52                   	push   %edx
    5fdf:	50                   	push   %eax
    5fe0:	68 2a b8 00 00       	push   $0xb82a
    5fe5:	e8 dd 02 00 00       	call   62c7 <printl>
    5fea:	83 c4 10             	add    $0x10,%esp
    5fed:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    5ff1:	8b 45 f0             	mov    -0x10(%ebp),%eax
    5ff4:	83 f8 01             	cmp    $0x1,%eax
    5ff7:	0f 86 3c ff ff ff    	jbe    5f39 <print_identify_info+0x3c>
    5ffd:	8b 45 08             	mov    0x8(%ebp),%eax
    6000:	83 c0 62             	add    $0x62,%eax
    6003:	0f b7 00             	movzwl (%eax),%eax
    6006:	0f b7 c0             	movzwl %ax,%eax
    6009:	89 45 e8             	mov    %eax,-0x18(%ebp)
    600c:	8b 45 e8             	mov    -0x18(%ebp),%eax
    600f:	25 00 02 00 00       	and    $0x200,%eax
    6014:	85 c0                	test   %eax,%eax
    6016:	74 07                	je     601f <print_identify_info+0x122>
    6018:	b8 32 b8 00 00       	mov    $0xb832,%eax
    601d:	eb 05                	jmp    6024 <print_identify_info+0x127>
    601f:	b8 36 b8 00 00       	mov    $0xb836,%eax
    6024:	83 ec 08             	sub    $0x8,%esp
    6027:	50                   	push   %eax
    6028:	68 39 b8 00 00       	push   $0xb839
    602d:	e8 95 02 00 00       	call   62c7 <printl>
    6032:	83 c4 10             	add    $0x10,%esp
    6035:	8b 45 08             	mov    0x8(%ebp),%eax
    6038:	05 a6 00 00 00       	add    $0xa6,%eax
    603d:	0f b7 00             	movzwl (%eax),%eax
    6040:	0f b7 c0             	movzwl %ax,%eax
    6043:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    6046:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    6049:	25 00 04 00 00       	and    $0x400,%eax
    604e:	85 c0                	test   %eax,%eax
    6050:	74 07                	je     6059 <print_identify_info+0x15c>
    6052:	b8 32 b8 00 00       	mov    $0xb832,%eax
    6057:	eb 05                	jmp    605e <print_identify_info+0x161>
    6059:	b8 36 b8 00 00       	mov    $0xb836,%eax
    605e:	83 ec 08             	sub    $0x8,%esp
    6061:	50                   	push   %eax
    6062:	68 4c b8 00 00       	push   $0xb84c
    6067:	e8 5b 02 00 00       	call   62c7 <printl>
    606c:	83 c4 10             	add    $0x10,%esp
    606f:	8b 45 08             	mov    0x8(%ebp),%eax
    6072:	83 c0 7a             	add    $0x7a,%eax
    6075:	0f b7 00             	movzwl (%eax),%eax
    6078:	0f b7 c0             	movzwl %ax,%eax
    607b:	c1 e0 10             	shl    $0x10,%eax
    607e:	89 c2                	mov    %eax,%edx
    6080:	8b 45 08             	mov    0x8(%ebp),%eax
    6083:	83 c0 78             	add    $0x78,%eax
    6086:	0f b7 00             	movzwl (%eax),%eax
    6089:	0f b7 c0             	movzwl %ax,%eax
    608c:	01 d0                	add    %edx,%eax
    608e:	89 45 e0             	mov    %eax,-0x20(%ebp)
    6091:	8b 45 e0             	mov    -0x20(%ebp),%eax
    6094:	c1 e0 09             	shl    $0x9,%eax
    6097:	89 c1                	mov    %eax,%ecx
    6099:	ba 83 de 1b 43       	mov    $0x431bde83,%edx
    609e:	89 c8                	mov    %ecx,%eax
    60a0:	f7 ea                	imul   %edx
    60a2:	c1 fa 12             	sar    $0x12,%edx
    60a5:	89 c8                	mov    %ecx,%eax
    60a7:	c1 f8 1f             	sar    $0x1f,%eax
    60aa:	29 c2                	sub    %eax,%edx
    60ac:	89 d0                	mov    %edx,%eax
    60ae:	83 ec 08             	sub    $0x8,%esp
    60b1:	50                   	push   %eax
    60b2:	68 61 b8 00 00       	push   $0xb861
    60b7:	e8 0b 02 00 00       	call   62c7 <printl>
    60bc:	83 c4 10             	add    $0x10,%esp
    60bf:	90                   	nop
    60c0:	c9                   	leave  
    60c1:	c3                   	ret    

000060c2 <hd_cmd_out>:
    60c2:	55                   	push   %ebp
    60c3:	89 e5                	mov    %esp,%ebp
    60c5:	83 ec 08             	sub    $0x8,%esp
    60c8:	83 ec 04             	sub    $0x4,%esp
    60cb:	68 10 27 00 00       	push   $0x2710
    60d0:	6a 00                	push   $0x0
    60d2:	68 80 00 00 00       	push   $0x80
    60d7:	e8 04 01 00 00       	call   61e0 <waitfor>
    60dc:	83 c4 10             	add    $0x10,%esp
    60df:	85 c0                	test   %eax,%eax
    60e1:	75 10                	jne    60f3 <hd_cmd_out+0x31>
    60e3:	83 ec 0c             	sub    $0xc,%esp
    60e6:	68 70 b8 00 00       	push   $0xb870
    60eb:	e8 d7 ba ff ff       	call   1bc7 <panic>
    60f0:	83 c4 10             	add    $0x10,%esp
    60f3:	83 ec 08             	sub    $0x8,%esp
    60f6:	6a 00                	push   $0x0
    60f8:	68 f6 03 00 00       	push   $0x3f6
    60fd:	e8 9b 05 00 00       	call   669d <out_byte>
    6102:	83 c4 10             	add    $0x10,%esp
    6105:	8b 45 08             	mov    0x8(%ebp),%eax
    6108:	0f b6 00             	movzbl (%eax),%eax
    610b:	0f b6 c0             	movzbl %al,%eax
    610e:	83 ec 08             	sub    $0x8,%esp
    6111:	50                   	push   %eax
    6112:	68 f1 01 00 00       	push   $0x1f1
    6117:	e8 81 05 00 00       	call   669d <out_byte>
    611c:	83 c4 10             	add    $0x10,%esp
    611f:	8b 45 08             	mov    0x8(%ebp),%eax
    6122:	0f b6 40 01          	movzbl 0x1(%eax),%eax
    6126:	0f b6 c0             	movzbl %al,%eax
    6129:	83 ec 08             	sub    $0x8,%esp
    612c:	50                   	push   %eax
    612d:	68 f2 01 00 00       	push   $0x1f2
    6132:	e8 66 05 00 00       	call   669d <out_byte>
    6137:	83 c4 10             	add    $0x10,%esp
    613a:	8b 45 08             	mov    0x8(%ebp),%eax
    613d:	0f b6 40 02          	movzbl 0x2(%eax),%eax
    6141:	0f b6 c0             	movzbl %al,%eax
    6144:	83 ec 08             	sub    $0x8,%esp
    6147:	50                   	push   %eax
    6148:	68 f3 01 00 00       	push   $0x1f3
    614d:	e8 4b 05 00 00       	call   669d <out_byte>
    6152:	83 c4 10             	add    $0x10,%esp
    6155:	8b 45 08             	mov    0x8(%ebp),%eax
    6158:	0f b6 40 03          	movzbl 0x3(%eax),%eax
    615c:	0f b6 c0             	movzbl %al,%eax
    615f:	83 ec 08             	sub    $0x8,%esp
    6162:	50                   	push   %eax
    6163:	68 f4 01 00 00       	push   $0x1f4
    6168:	e8 30 05 00 00       	call   669d <out_byte>
    616d:	83 c4 10             	add    $0x10,%esp
    6170:	8b 45 08             	mov    0x8(%ebp),%eax
    6173:	0f b6 40 04          	movzbl 0x4(%eax),%eax
    6177:	0f b6 c0             	movzbl %al,%eax
    617a:	83 ec 08             	sub    $0x8,%esp
    617d:	50                   	push   %eax
    617e:	68 f5 01 00 00       	push   $0x1f5
    6183:	e8 15 05 00 00       	call   669d <out_byte>
    6188:	83 c4 10             	add    $0x10,%esp
    618b:	8b 45 08             	mov    0x8(%ebp),%eax
    618e:	0f b6 40 05          	movzbl 0x5(%eax),%eax
    6192:	0f b6 c0             	movzbl %al,%eax
    6195:	83 ec 08             	sub    $0x8,%esp
    6198:	50                   	push   %eax
    6199:	68 f6 01 00 00       	push   $0x1f6
    619e:	e8 fa 04 00 00       	call   669d <out_byte>
    61a3:	83 c4 10             	add    $0x10,%esp
    61a6:	8b 45 08             	mov    0x8(%ebp),%eax
    61a9:	0f b6 40 06          	movzbl 0x6(%eax),%eax
    61ad:	0f b6 c0             	movzbl %al,%eax
    61b0:	83 ec 08             	sub    $0x8,%esp
    61b3:	50                   	push   %eax
    61b4:	68 f7 01 00 00       	push   $0x1f7
    61b9:	e8 df 04 00 00       	call   669d <out_byte>
    61be:	83 c4 10             	add    $0x10,%esp
    61c1:	90                   	nop
    61c2:	c9                   	leave  
    61c3:	c3                   	ret    

000061c4 <interrupt_wait>:
    61c4:	55                   	push   %ebp
    61c5:	89 e5                	mov    %esp,%ebp
    61c7:	83 ec 38             	sub    $0x38,%esp
    61ca:	83 ec 04             	sub    $0x4,%esp
    61cd:	8d 45 c8             	lea    -0x38(%ebp),%eax
    61d0:	50                   	push   %eax
    61d1:	6a f6                	push   $0xfffffff6
    61d3:	6a 02                	push   $0x2
    61d5:	e8 95 dc ff ff       	call   3e6f <send_recv>
    61da:	83 c4 10             	add    $0x10,%esp
    61dd:	90                   	nop
    61de:	c9                   	leave  
    61df:	c3                   	ret    

000061e0 <waitfor>:
    61e0:	55                   	push   %ebp
    61e1:	89 e5                	mov    %esp,%ebp
    61e3:	83 ec 18             	sub    $0x18,%esp
    61e6:	e8 72 b5 ff ff       	call   175d <get_ticks>
    61eb:	89 45 f4             	mov    %eax,-0xc(%ebp)
    61ee:	eb 22                	jmp    6212 <waitfor+0x32>
    61f0:	83 ec 0c             	sub    $0xc,%esp
    61f3:	68 f7 01 00 00       	push   $0x1f7
    61f8:	e8 ac 04 00 00       	call   66a9 <in_byte>
    61fd:	83 c4 10             	add    $0x10,%esp
    6200:	0f b6 c0             	movzbl %al,%eax
    6203:	23 45 08             	and    0x8(%ebp),%eax
    6206:	39 45 0c             	cmp    %eax,0xc(%ebp)
    6209:	75 07                	jne    6212 <waitfor+0x32>
    620b:	b8 01 00 00 00       	mov    $0x1,%eax
    6210:	eb 1d                	jmp    622f <waitfor+0x4f>
    6212:	e8 46 b5 ff ff       	call   175d <get_ticks>
    6217:	2b 45 f4             	sub    -0xc(%ebp),%eax
    621a:	89 c2                	mov    %eax,%edx
    621c:	89 d0                	mov    %edx,%eax
    621e:	c1 e0 02             	shl    $0x2,%eax
    6221:	01 d0                	add    %edx,%eax
    6223:	01 c0                	add    %eax,%eax
    6225:	39 45 10             	cmp    %eax,0x10(%ebp)
    6228:	7f c6                	jg     61f0 <waitfor+0x10>
    622a:	b8 00 00 00 00       	mov    $0x0,%eax
    622f:	c9                   	leave  
    6230:	c3                   	ret    

00006231 <hd_handler>:
    6231:	55                   	push   %ebp
    6232:	89 e5                	mov    %esp,%ebp
    6234:	83 ec 08             	sub    $0x8,%esp
    6237:	83 ec 0c             	sub    $0xc,%esp
    623a:	68 f7 01 00 00       	push   $0x1f7
    623f:	e8 65 04 00 00       	call   66a9 <in_byte>
    6244:	83 c4 10             	add    $0x10,%esp
    6247:	a2 00 00 01 00       	mov    %al,0x10000
    624c:	83 ec 0c             	sub    $0xc,%esp
    624f:	6a 02                	push   $0x2
    6251:	e8 77 eb ff ff       	call   4dcd <inform_int>
    6256:	83 c4 10             	add    $0x10,%esp
    6259:	90                   	nop
    625a:	c9                   	leave  
    625b:	c3                   	ret    

0000625c <printf>:
    625c:	55                   	push   %ebp
    625d:	89 e5                	mov    %esp,%ebp
    625f:	81 ec 18 04 00 00    	sub    $0x418,%esp
    6265:	8d 45 0c             	lea    0xc(%ebp),%eax
    6268:	89 45 f4             	mov    %eax,-0xc(%ebp)
    626b:	8b 45 08             	mov    0x8(%ebp),%eax
    626e:	83 ec 04             	sub    $0x4,%esp
    6271:	ff 75 f4             	pushl  -0xc(%ebp)
    6274:	50                   	push   %eax
    6275:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    627b:	50                   	push   %eax
    627c:	e8 ee 00 00 00       	call   636f <vsprintf>
    6281:	83 c4 10             	add    $0x10,%esp
    6284:	89 45 f0             	mov    %eax,-0x10(%ebp)
    6287:	83 ec 04             	sub    $0x4,%esp
    628a:	ff 75 f0             	pushl  -0x10(%ebp)
    628d:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    6293:	50                   	push   %eax
    6294:	6a 01                	push   $0x1
    6296:	e8 eb 08 00 00       	call   6b86 <write>
    629b:	83 c4 10             	add    $0x10,%esp
    629e:	89 45 ec             	mov    %eax,-0x14(%ebp)
    62a1:	8b 45 ec             	mov    -0x14(%ebp),%eax
    62a4:	3b 45 f0             	cmp    -0x10(%ebp),%eax
    62a7:	74 19                	je     62c2 <printf+0x66>
    62a9:	6a 52                	push   $0x52
    62ab:	68 7a b8 00 00       	push   $0xb87a
    62b0:	68 7a b8 00 00       	push   $0xb87a
    62b5:	68 87 b8 00 00       	push   $0xb887
    62ba:	e8 f4 07 00 00       	call   6ab3 <assertion_failure>
    62bf:	83 c4 10             	add    $0x10,%esp
    62c2:	8b 45 f0             	mov    -0x10(%ebp),%eax
    62c5:	c9                   	leave  
    62c6:	c3                   	ret    

000062c7 <printl>:
    62c7:	55                   	push   %ebp
    62c8:	89 e5                	mov    %esp,%ebp
    62ca:	81 ec 18 04 00 00    	sub    $0x418,%esp
    62d0:	8d 45 0c             	lea    0xc(%ebp),%eax
    62d3:	89 45 f4             	mov    %eax,-0xc(%ebp)
    62d6:	8b 45 08             	mov    0x8(%ebp),%eax
    62d9:	83 ec 04             	sub    $0x4,%esp
    62dc:	ff 75 f4             	pushl  -0xc(%ebp)
    62df:	50                   	push   %eax
    62e0:	8d 85 f0 fb ff ff    	lea    -0x410(%ebp),%eax
    62e6:	50                   	push   %eax
    62e7:	e8 83 00 00 00       	call   636f <vsprintf>
    62ec:	83 c4 10             	add    $0x10,%esp
    62ef:	89 45 f0             	mov    %eax,-0x10(%ebp)
    62f2:	83 ec 0c             	sub    $0xc,%esp
    62f5:	8d 85 f0 fb ff ff    	lea    -0x410(%ebp),%eax
    62fb:	50                   	push   %eax
    62fc:	e8 39 b1 ff ff       	call   143a <printx>
    6301:	83 c4 10             	add    $0x10,%esp
    6304:	8b 45 f0             	mov    -0x10(%ebp),%eax
    6307:	c9                   	leave  
    6308:	c3                   	ret    

00006309 <i2a>:
    6309:	55                   	push   %ebp
    630a:	89 e5                	mov    %esp,%ebp
    630c:	53                   	push   %ebx
    630d:	83 ec 14             	sub    $0x14,%esp
    6310:	8b 45 08             	mov    0x8(%ebp),%eax
    6313:	99                   	cltd   
    6314:	f7 7d 0c             	idivl  0xc(%ebp)
    6317:	89 55 f4             	mov    %edx,-0xc(%ebp)
    631a:	8b 45 08             	mov    0x8(%ebp),%eax
    631d:	99                   	cltd   
    631e:	f7 7d 0c             	idivl  0xc(%ebp)
    6321:	89 45 f0             	mov    %eax,-0x10(%ebp)
    6324:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    6328:	74 14                	je     633e <i2a+0x35>
    632a:	83 ec 04             	sub    $0x4,%esp
    632d:	ff 75 10             	pushl  0x10(%ebp)
    6330:	ff 75 0c             	pushl  0xc(%ebp)
    6333:	ff 75 f0             	pushl  -0x10(%ebp)
    6336:	e8 ce ff ff ff       	call   6309 <i2a>
    633b:	83 c4 10             	add    $0x10,%esp
    633e:	83 7d f4 09          	cmpl   $0x9,-0xc(%ebp)
    6342:	7f 0a                	jg     634e <i2a+0x45>
    6344:	8b 45 f4             	mov    -0xc(%ebp),%eax
    6347:	83 c0 30             	add    $0x30,%eax
    634a:	89 c3                	mov    %eax,%ebx
    634c:	eb 08                	jmp    6356 <i2a+0x4d>
    634e:	8b 45 f4             	mov    -0xc(%ebp),%eax
    6351:	83 c0 37             	add    $0x37,%eax
    6354:	89 c3                	mov    %eax,%ebx
    6356:	8b 45 10             	mov    0x10(%ebp),%eax
    6359:	8b 00                	mov    (%eax),%eax
    635b:	8d 48 01             	lea    0x1(%eax),%ecx
    635e:	8b 55 10             	mov    0x10(%ebp),%edx
    6361:	89 0a                	mov    %ecx,(%edx)
    6363:	88 18                	mov    %bl,(%eax)
    6365:	8b 45 10             	mov    0x10(%ebp),%eax
    6368:	8b 00                	mov    (%eax),%eax
    636a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    636d:	c9                   	leave  
    636e:	c3                   	ret    

0000636f <vsprintf>:
    636f:	55                   	push   %ebp
    6370:	89 e5                	mov    %esp,%ebp
    6372:	81 ec 28 04 00 00    	sub    $0x428,%esp
    6378:	8b 45 10             	mov    0x10(%ebp),%eax
    637b:	89 45 f0             	mov    %eax,-0x10(%ebp)
    637e:	8b 45 08             	mov    0x8(%ebp),%eax
    6381:	89 45 f4             	mov    %eax,-0xc(%ebp)
    6384:	e9 47 02 00 00       	jmp    65d0 <vsprintf+0x261>
    6389:	8b 45 0c             	mov    0xc(%ebp),%eax
    638c:	0f b6 00             	movzbl (%eax),%eax
    638f:	3c 25                	cmp    $0x25,%al
    6391:	74 16                	je     63a9 <vsprintf+0x3a>
    6393:	8b 45 f4             	mov    -0xc(%ebp),%eax
    6396:	8d 50 01             	lea    0x1(%eax),%edx
    6399:	89 55 f4             	mov    %edx,-0xc(%ebp)
    639c:	8b 55 0c             	mov    0xc(%ebp),%edx
    639f:	0f b6 12             	movzbl (%edx),%edx
    63a2:	88 10                	mov    %dl,(%eax)
    63a4:	e9 23 02 00 00       	jmp    65cc <vsprintf+0x25d>
    63a9:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    63b0:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
    63b4:	8b 45 0c             	mov    0xc(%ebp),%eax
    63b7:	0f b6 00             	movzbl (%eax),%eax
    63ba:	3c 25                	cmp    $0x25,%al
    63bc:	75 16                	jne    63d4 <vsprintf+0x65>
    63be:	8b 45 f4             	mov    -0xc(%ebp),%eax
    63c1:	8d 50 01             	lea    0x1(%eax),%edx
    63c4:	89 55 f4             	mov    %edx,-0xc(%ebp)
    63c7:	8b 55 0c             	mov    0xc(%ebp),%edx
    63ca:	0f b6 12             	movzbl (%edx),%edx
    63cd:	88 10                	mov    %dl,(%eax)
    63cf:	e9 f8 01 00 00       	jmp    65cc <vsprintf+0x25d>
    63d4:	8b 45 0c             	mov    0xc(%ebp),%eax
    63d7:	0f b6 00             	movzbl (%eax),%eax
    63da:	3c 30                	cmp    $0x30,%al
    63dc:	75 0a                	jne    63e8 <vsprintf+0x79>
    63de:	c6 45 eb 30          	movb   $0x30,-0x15(%ebp)
    63e2:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
    63e6:	eb 28                	jmp    6410 <vsprintf+0xa1>
    63e8:	c6 45 eb 20          	movb   $0x20,-0x15(%ebp)
    63ec:	eb 22                	jmp    6410 <vsprintf+0xa1>
    63ee:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    63f1:	89 d0                	mov    %edx,%eax
    63f3:	c1 e0 02             	shl    $0x2,%eax
    63f6:	01 d0                	add    %edx,%eax
    63f8:	01 c0                	add    %eax,%eax
    63fa:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    63fd:	8b 45 0c             	mov    0xc(%ebp),%eax
    6400:	0f b6 00             	movzbl (%eax),%eax
    6403:	0f be c0             	movsbl %al,%eax
    6406:	83 e8 30             	sub    $0x30,%eax
    6409:	01 45 e4             	add    %eax,-0x1c(%ebp)
    640c:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
    6410:	8b 45 0c             	mov    0xc(%ebp),%eax
    6413:	0f b6 00             	movzbl (%eax),%eax
    6416:	3c 2f                	cmp    $0x2f,%al
    6418:	76 0a                	jbe    6424 <vsprintf+0xb5>
    641a:	8b 45 0c             	mov    0xc(%ebp),%eax
    641d:	0f b6 00             	movzbl (%eax),%eax
    6420:	3c 39                	cmp    $0x39,%al
    6422:	76 ca                	jbe    63ee <vsprintf+0x7f>
    6424:	8d 85 e0 fb ff ff    	lea    -0x420(%ebp),%eax
    642a:	89 85 dc fb ff ff    	mov    %eax,-0x424(%ebp)
    6430:	8b 85 dc fb ff ff    	mov    -0x424(%ebp),%eax
    6436:	83 ec 04             	sub    $0x4,%esp
    6439:	68 00 04 00 00       	push   $0x400
    643e:	6a 00                	push   $0x0
    6440:	50                   	push   %eax
    6441:	e8 c3 04 00 00       	call   6909 <memset>
    6446:	83 c4 10             	add    $0x10,%esp
    6449:	8b 45 0c             	mov    0xc(%ebp),%eax
    644c:	0f b6 00             	movzbl (%eax),%eax
    644f:	0f be c0             	movsbl %al,%eax
    6452:	83 f8 64             	cmp    $0x64,%eax
    6455:	74 67                	je     64be <vsprintf+0x14f>
    6457:	83 f8 64             	cmp    $0x64,%eax
    645a:	7f 0a                	jg     6466 <vsprintf+0xf7>
    645c:	83 f8 63             	cmp    $0x63,%eax
    645f:	74 18                	je     6479 <vsprintf+0x10a>
    6461:	e9 d6 00 00 00       	jmp    653c <vsprintf+0x1cd>
    6466:	83 f8 73             	cmp    $0x73,%eax
    6469:	0f 84 8f 00 00 00    	je     64fe <vsprintf+0x18f>
    646f:	83 f8 78             	cmp    $0x78,%eax
    6472:	74 25                	je     6499 <vsprintf+0x12a>
    6474:	e9 c3 00 00 00       	jmp    653c <vsprintf+0x1cd>
    6479:	8b 85 dc fb ff ff    	mov    -0x424(%ebp),%eax
    647f:	8d 50 01             	lea    0x1(%eax),%edx
    6482:	89 95 dc fb ff ff    	mov    %edx,-0x424(%ebp)
    6488:	8b 55 f0             	mov    -0x10(%ebp),%edx
    648b:	0f b6 12             	movzbl (%edx),%edx
    648e:	88 10                	mov    %dl,(%eax)
    6490:	83 45 f0 04          	addl   $0x4,-0x10(%ebp)
    6494:	e9 a3 00 00 00       	jmp    653c <vsprintf+0x1cd>
    6499:	8b 45 f0             	mov    -0x10(%ebp),%eax
    649c:	8b 00                	mov    (%eax),%eax
    649e:	89 45 ec             	mov    %eax,-0x14(%ebp)
    64a1:	83 ec 04             	sub    $0x4,%esp
    64a4:	8d 85 dc fb ff ff    	lea    -0x424(%ebp),%eax
    64aa:	50                   	push   %eax
    64ab:	6a 10                	push   $0x10
    64ad:	ff 75 ec             	pushl  -0x14(%ebp)
    64b0:	e8 54 fe ff ff       	call   6309 <i2a>
    64b5:	83 c4 10             	add    $0x10,%esp
    64b8:	83 45 f0 04          	addl   $0x4,-0x10(%ebp)
    64bc:	eb 7e                	jmp    653c <vsprintf+0x1cd>
    64be:	8b 45 f0             	mov    -0x10(%ebp),%eax
    64c1:	8b 00                	mov    (%eax),%eax
    64c3:	89 45 ec             	mov    %eax,-0x14(%ebp)
    64c6:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
    64ca:	79 15                	jns    64e1 <vsprintf+0x172>
    64cc:	f7 5d ec             	negl   -0x14(%ebp)
    64cf:	8b 85 dc fb ff ff    	mov    -0x424(%ebp),%eax
    64d5:	8d 50 01             	lea    0x1(%eax),%edx
    64d8:	89 95 dc fb ff ff    	mov    %edx,-0x424(%ebp)
    64de:	c6 00 2d             	movb   $0x2d,(%eax)
    64e1:	83 ec 04             	sub    $0x4,%esp
    64e4:	8d 85 dc fb ff ff    	lea    -0x424(%ebp),%eax
    64ea:	50                   	push   %eax
    64eb:	6a 0a                	push   $0xa
    64ed:	ff 75 ec             	pushl  -0x14(%ebp)
    64f0:	e8 14 fe ff ff       	call   6309 <i2a>
    64f5:	83 c4 10             	add    $0x10,%esp
    64f8:	83 45 f0 04          	addl   $0x4,-0x10(%ebp)
    64fc:	eb 3e                	jmp    653c <vsprintf+0x1cd>
    64fe:	8b 45 f0             	mov    -0x10(%ebp),%eax
    6501:	8b 10                	mov    (%eax),%edx
    6503:	8b 85 dc fb ff ff    	mov    -0x424(%ebp),%eax
    6509:	83 ec 08             	sub    $0x8,%esp
    650c:	52                   	push   %edx
    650d:	50                   	push   %eax
    650e:	e8 17 04 00 00       	call   692a <strcpy>
    6513:	83 c4 10             	add    $0x10,%esp
    6516:	8b 45 f0             	mov    -0x10(%ebp),%eax
    6519:	8b 00                	mov    (%eax),%eax
    651b:	83 ec 0c             	sub    $0xc,%esp
    651e:	50                   	push   %eax
    651f:	e8 1e 04 00 00       	call   6942 <strlen>
    6524:	83 c4 10             	add    $0x10,%esp
    6527:	89 c2                	mov    %eax,%edx
    6529:	8b 85 dc fb ff ff    	mov    -0x424(%ebp),%eax
    652f:	01 d0                	add    %edx,%eax
    6531:	89 85 dc fb ff ff    	mov    %eax,-0x424(%ebp)
    6537:	83 45 f0 04          	addl   $0x4,-0x10(%ebp)
    653b:	90                   	nop
    653c:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
    6543:	eb 13                	jmp    6558 <vsprintf+0x1e9>
    6545:	8b 45 f4             	mov    -0xc(%ebp),%eax
    6548:	8d 50 01             	lea    0x1(%eax),%edx
    654b:	89 55 f4             	mov    %edx,-0xc(%ebp)
    654e:	0f b6 55 eb          	movzbl -0x15(%ebp),%edx
    6552:	88 10                	mov    %dl,(%eax)
    6554:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
    6558:	83 ec 0c             	sub    $0xc,%esp
    655b:	8d 85 e0 fb ff ff    	lea    -0x420(%ebp),%eax
    6561:	50                   	push   %eax
    6562:	e8 db 03 00 00       	call   6942 <strlen>
    6567:	83 c4 10             	add    $0x10,%esp
    656a:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
    656d:	7e 1b                	jle    658a <vsprintf+0x21b>
    656f:	83 ec 0c             	sub    $0xc,%esp
    6572:	8d 85 e0 fb ff ff    	lea    -0x420(%ebp),%eax
    6578:	50                   	push   %eax
    6579:	e8 c4 03 00 00       	call   6942 <strlen>
    657e:	83 c4 10             	add    $0x10,%esp
    6581:	89 c2                	mov    %eax,%edx
    6583:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    6586:	29 d0                	sub    %edx,%eax
    6588:	eb 05                	jmp    658f <vsprintf+0x220>
    658a:	b8 00 00 00 00       	mov    $0x0,%eax
    658f:	3b 45 e0             	cmp    -0x20(%ebp),%eax
    6592:	7f b1                	jg     6545 <vsprintf+0x1d6>
    6594:	8d 85 e0 fb ff ff    	lea    -0x420(%ebp),%eax
    659a:	89 85 dc fb ff ff    	mov    %eax,-0x424(%ebp)
    65a0:	eb 1d                	jmp    65bf <vsprintf+0x250>
    65a2:	8b 95 dc fb ff ff    	mov    -0x424(%ebp),%edx
    65a8:	8d 42 01             	lea    0x1(%edx),%eax
    65ab:	89 85 dc fb ff ff    	mov    %eax,-0x424(%ebp)
    65b1:	8b 45 f4             	mov    -0xc(%ebp),%eax
    65b4:	8d 48 01             	lea    0x1(%eax),%ecx
    65b7:	89 4d f4             	mov    %ecx,-0xc(%ebp)
    65ba:	0f b6 12             	movzbl (%edx),%edx
    65bd:	88 10                	mov    %dl,(%eax)
    65bf:	8b 85 dc fb ff ff    	mov    -0x424(%ebp),%eax
    65c5:	0f b6 00             	movzbl (%eax),%eax
    65c8:	84 c0                	test   %al,%al
    65ca:	75 d6                	jne    65a2 <vsprintf+0x233>
    65cc:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
    65d0:	8b 45 0c             	mov    0xc(%ebp),%eax
    65d3:	0f b6 00             	movzbl (%eax),%eax
    65d6:	84 c0                	test   %al,%al
    65d8:	0f 85 ab fd ff ff    	jne    6389 <vsprintf+0x1a>
    65de:	8b 45 f4             	mov    -0xc(%ebp),%eax
    65e1:	c6 00 00             	movb   $0x0,(%eax)
    65e4:	8b 45 f4             	mov    -0xc(%ebp),%eax
    65e7:	2b 45 08             	sub    0x8(%ebp),%eax
    65ea:	c9                   	leave  
    65eb:	c3                   	ret    

000065ec <sprintf>:
    65ec:	55                   	push   %ebp
    65ed:	89 e5                	mov    %esp,%ebp
    65ef:	83 ec 18             	sub    $0x18,%esp
    65f2:	8d 45 0c             	lea    0xc(%ebp),%eax
    65f5:	83 c0 04             	add    $0x4,%eax
    65f8:	89 45 f4             	mov    %eax,-0xc(%ebp)
    65fb:	8b 45 0c             	mov    0xc(%ebp),%eax
    65fe:	83 ec 04             	sub    $0x4,%esp
    6601:	ff 75 f4             	pushl  -0xc(%ebp)
    6604:	50                   	push   %eax
    6605:	ff 75 08             	pushl  0x8(%ebp)
    6608:	e8 62 fd ff ff       	call   636f <vsprintf>
    660d:	83 c4 10             	add    $0x10,%esp
    6610:	c9                   	leave  
    6611:	c3                   	ret    
    6612:	66 90                	xchg   %ax,%ax
    6614:	66 90                	xchg   %ax,%ax
    6616:	66 90                	xchg   %ax,%ax
    6618:	66 90                	xchg   %ax,%ax
    661a:	66 90                	xchg   %ax,%ax
    661c:	66 90                	xchg   %ax,%ax
    661e:	66 90                	xchg   %ax,%ax

00006620 <disp_str>:
    6620:	55                   	push   %ebp
    6621:	89 e5                	mov    %esp,%ebp
    6623:	8b 75 08             	mov    0x8(%ebp),%esi
    6626:	8b 3d 24 a8 04 00    	mov    0x4a824,%edi
    662c:	b4 0f                	mov    $0xf,%ah

0000662e <disp_str.1>:
    662e:	ac                   	lods   %ds:(%esi),%al
    662f:	84 c0                	test   %al,%al
    6631:	74 23                	je     6656 <disp_str.2>
    6633:	3c 0a                	cmp    $0xa,%al
    6635:	75 16                	jne    664d <disp_str.3>
    6637:	50                   	push   %eax
    6638:	89 f8                	mov    %edi,%eax
    663a:	b3 a0                	mov    $0xa0,%bl
    663c:	f6 f3                	div    %bl
    663e:	25 ff 00 00 00       	and    $0xff,%eax
    6643:	40                   	inc    %eax
    6644:	b3 a0                	mov    $0xa0,%bl
    6646:	f6 e3                	mul    %bl
    6648:	89 c7                	mov    %eax,%edi
    664a:	58                   	pop    %eax
    664b:	eb e1                	jmp    662e <disp_str.1>

0000664d <disp_str.3>:
    664d:	65 66 89 07          	mov    %ax,%gs:(%edi)
    6651:	83 c7 02             	add    $0x2,%edi
    6654:	eb d8                	jmp    662e <disp_str.1>

00006656 <disp_str.2>:
    6656:	89 3d 24 a8 04 00    	mov    %edi,0x4a824
    665c:	5d                   	pop    %ebp
    665d:	c3                   	ret    

0000665e <disp_color_str>:
    665e:	55                   	push   %ebp
    665f:	89 e5                	mov    %esp,%ebp
    6661:	8b 75 08             	mov    0x8(%ebp),%esi
    6664:	8b 3d 24 a8 04 00    	mov    0x4a824,%edi
    666a:	8a 65 0c             	mov    0xc(%ebp),%ah

0000666d <disp_color_str.1>:
    666d:	ac                   	lods   %ds:(%esi),%al
    666e:	84 c0                	test   %al,%al
    6670:	74 23                	je     6695 <disp_color_str.2>
    6672:	3c 0a                	cmp    $0xa,%al
    6674:	75 16                	jne    668c <disp_color_str.3>
    6676:	50                   	push   %eax
    6677:	89 f8                	mov    %edi,%eax
    6679:	b3 a0                	mov    $0xa0,%bl
    667b:	f6 f3                	div    %bl
    667d:	25 ff 00 00 00       	and    $0xff,%eax
    6682:	40                   	inc    %eax
    6683:	b3 a0                	mov    $0xa0,%bl
    6685:	f6 e3                	mul    %bl
    6687:	89 c7                	mov    %eax,%edi
    6689:	58                   	pop    %eax
    668a:	eb e1                	jmp    666d <disp_color_str.1>

0000668c <disp_color_str.3>:
    668c:	65 66 89 07          	mov    %ax,%gs:(%edi)
    6690:	83 c7 02             	add    $0x2,%edi
    6693:	eb d8                	jmp    666d <disp_color_str.1>

00006695 <disp_color_str.2>:
    6695:	89 3d 24 a8 04 00    	mov    %edi,0x4a824
    669b:	5d                   	pop    %ebp
    669c:	c3                   	ret    

0000669d <out_byte>:
    669d:	8b 54 24 04          	mov    0x4(%esp),%edx
    66a1:	8a 44 24 08          	mov    0x8(%esp),%al
    66a5:	ee                   	out    %al,(%dx)
    66a6:	90                   	nop
    66a7:	90                   	nop
    66a8:	c3                   	ret    

000066a9 <in_byte>:
    66a9:	8b 54 24 04          	mov    0x4(%esp),%edx
    66ad:	31 c0                	xor    %eax,%eax
    66af:	ec                   	in     (%dx),%al
    66b0:	90                   	nop
    66b1:	90                   	nop
    66b2:	c3                   	ret    

000066b3 <port_read>:
    66b3:	8b 54 24 04          	mov    0x4(%esp),%edx
    66b7:	8b 7c 24 08          	mov    0x8(%esp),%edi
    66bb:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
    66bf:	d1 e9                	shr    %ecx
    66c1:	fc                   	cld    
    66c2:	f3 66 6d             	rep insw (%dx),%es:(%edi)
    66c5:	c3                   	ret    

000066c6 <port_write>:
    66c6:	8b 54 24 04          	mov    0x4(%esp),%edx
    66ca:	8b 74 24 08          	mov    0x8(%esp),%esi
    66ce:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
    66d2:	d1 e9                	shr    %ecx
    66d4:	fc                   	cld    
    66d5:	f3 66 6f             	rep outsw %ds:(%esi),(%dx)
    66d8:	c3                   	ret    

000066d9 <disable_irq>:
    66d9:	8b 4c 24 04          	mov    0x4(%esp),%ecx
    66dd:	9c                   	pushf  
    66de:	fa                   	cli    
    66df:	b4 01                	mov    $0x1,%ah
    66e1:	d2 c4                	rol    %cl,%ah
    66e3:	80 f9 08             	cmp    $0x8,%cl
    66e6:	73 11                	jae    66f9 <disable_8>

000066e8 <disable_0>:
    66e8:	e4 21                	in     $0x21,%al
    66ea:	84 e0                	test   %ah,%al
    66ec:	75 1c                	jne    670a <dis_already>
    66ee:	08 e0                	or     %ah,%al
    66f0:	e6 21                	out    %al,$0x21
    66f2:	9d                   	popf   
    66f3:	b8 01 00 00 00       	mov    $0x1,%eax
    66f8:	c3                   	ret    

000066f9 <disable_8>:
    66f9:	e4 a1                	in     $0xa1,%al
    66fb:	84 e0                	test   %ah,%al
    66fd:	75 0b                	jne    670a <dis_already>
    66ff:	08 e0                	or     %ah,%al
    6701:	e6 a1                	out    %al,$0xa1
    6703:	9d                   	popf   
    6704:	b8 01 00 00 00       	mov    $0x1,%eax
    6709:	c3                   	ret    

0000670a <dis_already>:
    670a:	9d                   	popf   
    670b:	31 c0                	xor    %eax,%eax
    670d:	c3                   	ret    

0000670e <enable_irq>:
    670e:	8b 4c 24 04          	mov    0x4(%esp),%ecx
    6712:	9c                   	pushf  
    6713:	fa                   	cli    
    6714:	b4 fe                	mov    $0xfe,%ah
    6716:	d2 c4                	rol    %cl,%ah
    6718:	80 f9 08             	cmp    $0x8,%cl
    671b:	73 08                	jae    6725 <enable_8>

0000671d <enable_0>:
    671d:	e4 21                	in     $0x21,%al
    671f:	20 e0                	and    %ah,%al
    6721:	e6 21                	out    %al,$0x21
    6723:	9d                   	popf   
    6724:	c3                   	ret    

00006725 <enable_8>:
    6725:	e4 a1                	in     $0xa1,%al
    6727:	20 e0                	and    %ah,%al
    6729:	e6 a1                	out    %al,$0xa1
    672b:	9d                   	popf   
    672c:	c3                   	ret    

0000672d <disable_int>:
    672d:	fa                   	cli    
    672e:	c3                   	ret    

0000672f <enable_int>:
    672f:	fb                   	sti    
    6730:	c3                   	ret    

00006731 <glitter>:
    6731:	50                   	push   %eax
    6732:	53                   	push   %ebx
    6733:	52                   	push   %edx
    6734:	a1 70 67 00 00       	mov    0x6770,%eax
    6739:	40                   	inc    %eax
    673a:	83 f8 42             	cmp    $0x42,%eax
    673d:	74 02                	je     6741 <glitter.1>
    673f:	eb 02                	jmp    6743 <glitter.2>

00006741 <glitter.1>:
    6741:	31 c0                	xor    %eax,%eax

00006743 <glitter.2>:
    6743:	a3 70 67 00 00       	mov    %eax,0x6770
    6748:	8a 90 74 67 00 00    	mov    0x6774(%eax),%dl
    674e:	31 c0                	xor    %eax,%eax
    6750:	8a 44 24 10          	mov    0x10(%esp),%al
    6754:	b3 50                	mov    $0x50,%bl
    6756:	f6 e3                	mul    %bl
    6758:	66 8b 5c 24 14       	mov    0x14(%esp),%bx
    675d:	66 01 d8             	add    %bx,%ax
    6760:	66 d1 e0             	shl    %ax
    6763:	0f b7 c0             	movzwl %ax,%eax
    6766:	65 88 10             	mov    %dl,%gs:(%eax)
    6769:	40                   	inc    %eax
    676a:	65 c6 00 04          	movb   $0x4,%gs:(%eax)
    676e:	eb 46                	jmp    67b6 <glitter.end>

00006770 <glitter.current_char>:
    6770:	00 00                	add    %al,(%eax)
	...

00006774 <glitter.glitter_str>:
    6774:	2d 5c 7c 2f 31       	sub    $0x312f7c5c,%eax
    6779:	32 33                	xor    (%ebx),%dh
    677b:	34 35                	xor    $0x35,%al
    677d:	36 37                	ss aaa 
    677f:	38 39                	cmp    %bh,(%ecx)
    6781:	30 61 62             	xor    %ah,0x62(%ecx)
    6784:	63 64 65 66          	arpl   %sp,0x66(%ebp,%eiz,2)
    6788:	67 68 69 6a 6b 6c    	addr16 push $0x6c6b6a69
    678e:	6d                   	insl   (%dx),%es:(%edi)
    678f:	6e                   	outsb  %ds:(%esi),(%dx)
    6790:	6f                   	outsl  %ds:(%esi),(%dx)
    6791:	70 71                	jo     6804 <itoa+0x4a>
    6793:	72 73                	jb     6808 <itoa+0x4e>
    6795:	74 75                	je     680c <itoa+0x52>
    6797:	76 77                	jbe    6810 <itoa+0x56>
    6799:	78 79                	js     6814 <itoa+0x5a>
    679b:	7a 41                	jp     67de <itoa+0x24>
    679d:	42                   	inc    %edx
    679e:	43                   	inc    %ebx
    679f:	44                   	inc    %esp
    67a0:	45                   	inc    %ebp
    67a1:	46                   	inc    %esi
    67a2:	47                   	inc    %edi
    67a3:	48                   	dec    %eax
    67a4:	49                   	dec    %ecx
    67a5:	4a                   	dec    %edx
    67a6:	4b                   	dec    %ebx
    67a7:	4c                   	dec    %esp
    67a8:	4d                   	dec    %ebp
    67a9:	4e                   	dec    %esi
    67aa:	4f                   	dec    %edi
    67ab:	50                   	push   %eax
    67ac:	51                   	push   %ecx
    67ad:	52                   	push   %edx
    67ae:	53                   	push   %ebx
    67af:	54                   	push   %esp
    67b0:	55                   	push   %ebp
    67b1:	56                   	push   %esi
    67b2:	57                   	push   %edi
    67b3:	58                   	pop    %eax
    67b4:	59                   	pop    %ecx
    67b5:	5a                   	pop    %edx

000067b6 <glitter.end>:
    67b6:	5a                   	pop    %edx
    67b7:	5b                   	pop    %ebx
    67b8:	58                   	pop    %eax
    67b9:	c3                   	ret    

000067ba <itoa>:
    67ba:	55                   	push   %ebp
    67bb:	89 e5                	mov    %esp,%ebp
    67bd:	83 ec 10             	sub    $0x10,%esp
    67c0:	8b 45 08             	mov    0x8(%ebp),%eax
    67c3:	89 45 fc             	mov    %eax,-0x4(%ebp)
    67c6:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    67cd:	8b 45 fc             	mov    -0x4(%ebp),%eax
    67d0:	8d 50 01             	lea    0x1(%eax),%edx
    67d3:	89 55 fc             	mov    %edx,-0x4(%ebp)
    67d6:	c6 00 30             	movb   $0x30,(%eax)
    67d9:	8b 45 fc             	mov    -0x4(%ebp),%eax
    67dc:	8d 50 01             	lea    0x1(%eax),%edx
    67df:	89 55 fc             	mov    %edx,-0x4(%ebp)
    67e2:	c6 00 78             	movb   $0x78,(%eax)
    67e5:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    67e9:	75 0e                	jne    67f9 <itoa+0x3f>
    67eb:	8b 45 fc             	mov    -0x4(%ebp),%eax
    67ee:	8d 50 01             	lea    0x1(%eax),%edx
    67f1:	89 55 fc             	mov    %edx,-0x4(%ebp)
    67f4:	c6 00 30             	movb   $0x30,(%eax)
    67f7:	eb 61                	jmp    685a <itoa+0xa0>
    67f9:	c7 45 f4 1c 00 00 00 	movl   $0x1c,-0xc(%ebp)
    6800:	eb 52                	jmp    6854 <itoa+0x9a>
    6802:	8b 45 f4             	mov    -0xc(%ebp),%eax
    6805:	8b 55 0c             	mov    0xc(%ebp),%edx
    6808:	89 c1                	mov    %eax,%ecx
    680a:	d3 fa                	sar    %cl,%edx
    680c:	89 d0                	mov    %edx,%eax
    680e:	83 e0 0f             	and    $0xf,%eax
    6811:	88 45 fb             	mov    %al,-0x5(%ebp)
    6814:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    6818:	75 06                	jne    6820 <itoa+0x66>
    681a:	80 7d fb 00          	cmpb   $0x0,-0x5(%ebp)
    681e:	7e 30                	jle    6850 <itoa+0x96>
    6820:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
    6827:	0f b6 45 fb          	movzbl -0x5(%ebp),%eax
    682b:	83 c0 30             	add    $0x30,%eax
    682e:	88 45 fb             	mov    %al,-0x5(%ebp)
    6831:	80 7d fb 39          	cmpb   $0x39,-0x5(%ebp)
    6835:	7e 0a                	jle    6841 <itoa+0x87>
    6837:	0f b6 45 fb          	movzbl -0x5(%ebp),%eax
    683b:	83 c0 07             	add    $0x7,%eax
    683e:	88 45 fb             	mov    %al,-0x5(%ebp)
    6841:	8b 45 fc             	mov    -0x4(%ebp),%eax
    6844:	8d 50 01             	lea    0x1(%eax),%edx
    6847:	89 55 fc             	mov    %edx,-0x4(%ebp)
    684a:	0f b6 55 fb          	movzbl -0x5(%ebp),%edx
    684e:	88 10                	mov    %dl,(%eax)
    6850:	83 6d f4 04          	subl   $0x4,-0xc(%ebp)
    6854:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    6858:	79 a8                	jns    6802 <itoa+0x48>
    685a:	8b 45 fc             	mov    -0x4(%ebp),%eax
    685d:	c6 00 00             	movb   $0x0,(%eax)
    6860:	8b 45 08             	mov    0x8(%ebp),%eax
    6863:	c9                   	leave  
    6864:	c3                   	ret    

00006865 <disp_int>:
    6865:	55                   	push   %ebp
    6866:	89 e5                	mov    %esp,%ebp
    6868:	83 ec 18             	sub    $0x18,%esp
    686b:	ff 75 08             	pushl  0x8(%ebp)
    686e:	8d 45 e8             	lea    -0x18(%ebp),%eax
    6871:	50                   	push   %eax
    6872:	e8 43 ff ff ff       	call   67ba <itoa>
    6877:	83 c4 08             	add    $0x8,%esp
    687a:	83 ec 0c             	sub    $0xc,%esp
    687d:	8d 45 e8             	lea    -0x18(%ebp),%eax
    6880:	50                   	push   %eax
    6881:	e8 9a fd ff ff       	call   6620 <disp_str>
    6886:	83 c4 10             	add    $0x10,%esp
    6889:	90                   	nop
    688a:	c9                   	leave  
    688b:	c3                   	ret    

0000688c <delay>:
    688c:	55                   	push   %ebp
    688d:	89 e5                	mov    %esp,%ebp
    688f:	83 ec 10             	sub    $0x10,%esp
    6892:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    6899:	eb 2d                	jmp    68c8 <delay+0x3c>
    689b:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
    68a2:	eb 1a                	jmp    68be <delay+0x32>
    68a4:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
    68ab:	eb 04                	jmp    68b1 <delay+0x25>
    68ad:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
    68b1:	81 7d f8 0f 27 00 00 	cmpl   $0x270f,-0x8(%ebp)
    68b8:	7e f3                	jle    68ad <delay+0x21>
    68ba:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
    68be:	83 7d fc 09          	cmpl   $0x9,-0x4(%ebp)
    68c2:	7e e0                	jle    68a4 <delay+0x18>
    68c4:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    68c8:	8b 45 f4             	mov    -0xc(%ebp),%eax
    68cb:	3b 45 08             	cmp    0x8(%ebp),%eax
    68ce:	7c cb                	jl     689b <delay+0xf>
    68d0:	90                   	nop
    68d1:	c9                   	leave  
    68d2:	c3                   	ret    
    68d3:	66 90                	xchg   %ax,%ax
    68d5:	66 90                	xchg   %ax,%ax
    68d7:	66 90                	xchg   %ax,%ax
    68d9:	66 90                	xchg   %ax,%ax
    68db:	66 90                	xchg   %ax,%ax
    68dd:	66 90                	xchg   %ax,%ax
    68df:	90                   	nop

000068e0 <memcpy>:
    68e0:	55                   	push   %ebp
    68e1:	89 e5                	mov    %esp,%ebp
    68e3:	56                   	push   %esi
    68e4:	57                   	push   %edi
    68e5:	51                   	push   %ecx
    68e6:	8b 7d 08             	mov    0x8(%ebp),%edi
    68e9:	8b 75 0c             	mov    0xc(%ebp),%esi
    68ec:	8b 4d 10             	mov    0x10(%ebp),%ecx

000068ef <memcpy.1>:
    68ef:	83 f9 00             	cmp    $0x0,%ecx
    68f2:	74 0b                	je     68ff <memcpy.2>
    68f4:	3e 8a 06             	mov    %ds:(%esi),%al
    68f7:	46                   	inc    %esi
    68f8:	26 88 07             	mov    %al,%es:(%edi)
    68fb:	47                   	inc    %edi
    68fc:	49                   	dec    %ecx
    68fd:	eb f0                	jmp    68ef <memcpy.1>

000068ff <memcpy.2>:
    68ff:	8b 45 08             	mov    0x8(%ebp),%eax
    6902:	59                   	pop    %ecx
    6903:	5f                   	pop    %edi
    6904:	5e                   	pop    %esi
    6905:	89 ec                	mov    %ebp,%esp
    6907:	5d                   	pop    %ebp
    6908:	c3                   	ret    

00006909 <memset>:
    6909:	55                   	push   %ebp
    690a:	89 e5                	mov    %esp,%ebp
    690c:	56                   	push   %esi
    690d:	57                   	push   %edi
    690e:	51                   	push   %ecx
    690f:	8b 7d 08             	mov    0x8(%ebp),%edi
    6912:	8b 55 0c             	mov    0xc(%ebp),%edx
    6915:	8b 4d 10             	mov    0x10(%ebp),%ecx

00006918 <memset.1>:
    6918:	83 f9 00             	cmp    $0x0,%ecx
    691b:	74 06                	je     6923 <memset.2>
    691d:	88 17                	mov    %dl,(%edi)
    691f:	47                   	inc    %edi
    6920:	49                   	dec    %ecx
    6921:	eb f5                	jmp    6918 <memset.1>

00006923 <memset.2>:
    6923:	59                   	pop    %ecx
    6924:	5f                   	pop    %edi
    6925:	5e                   	pop    %esi
    6926:	89 ec                	mov    %ebp,%esp
    6928:	5d                   	pop    %ebp
    6929:	c3                   	ret    

0000692a <strcpy>:
    692a:	55                   	push   %ebp
    692b:	89 e5                	mov    %esp,%ebp
    692d:	8b 75 0c             	mov    0xc(%ebp),%esi
    6930:	8b 7d 08             	mov    0x8(%ebp),%edi

00006933 <strcpy.1>:
    6933:	8a 06                	mov    (%esi),%al
    6935:	46                   	inc    %esi
    6936:	88 07                	mov    %al,(%edi)
    6938:	47                   	inc    %edi
    6939:	3c 00                	cmp    $0x0,%al
    693b:	75 f6                	jne    6933 <strcpy.1>
    693d:	8b 45 08             	mov    0x8(%ebp),%eax
    6940:	5d                   	pop    %ebp
    6941:	c3                   	ret    

00006942 <strlen>:
    6942:	55                   	push   %ebp
    6943:	89 e5                	mov    %esp,%ebp
    6945:	b8 00 00 00 00       	mov    $0x0,%eax
    694a:	8b 75 08             	mov    0x8(%ebp),%esi

0000694d <strlen.1>:
    694d:	80 3e 00             	cmpb   $0x0,(%esi)
    6950:	74 04                	je     6956 <strlen.2>
    6952:	46                   	inc    %esi
    6953:	40                   	inc    %eax
    6954:	eb f7                	jmp    694d <strlen.1>

00006956 <strlen.2>:
    6956:	5d                   	pop    %ebp
    6957:	c3                   	ret    

00006958 <memcmp>:
    6958:	55                   	push   %ebp
    6959:	89 e5                	mov    %esp,%ebp
    695b:	83 ec 10             	sub    $0x10,%esp
    695e:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
    6962:	74 06                	je     696a <memcmp+0x12>
    6964:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    6968:	75 08                	jne    6972 <memcmp+0x1a>
    696a:	8b 45 08             	mov    0x8(%ebp),%eax
    696d:	2b 45 0c             	sub    0xc(%ebp),%eax
    6970:	eb 56                	jmp    69c8 <memcmp+0x70>
    6972:	8b 45 08             	mov    0x8(%ebp),%eax
    6975:	89 45 fc             	mov    %eax,-0x4(%ebp)
    6978:	8b 45 0c             	mov    0xc(%ebp),%eax
    697b:	89 45 f8             	mov    %eax,-0x8(%ebp)
    697e:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    6985:	eb 34                	jmp    69bb <memcmp+0x63>
    6987:	8b 45 fc             	mov    -0x4(%ebp),%eax
    698a:	0f b6 10             	movzbl (%eax),%edx
    698d:	8b 45 f8             	mov    -0x8(%ebp),%eax
    6990:	0f b6 00             	movzbl (%eax),%eax
    6993:	38 c2                	cmp    %al,%dl
    6995:	74 18                	je     69af <memcmp+0x57>
    6997:	8b 45 fc             	mov    -0x4(%ebp),%eax
    699a:	0f b6 00             	movzbl (%eax),%eax
    699d:	0f be d0             	movsbl %al,%edx
    69a0:	8b 45 f8             	mov    -0x8(%ebp),%eax
    69a3:	0f b6 00             	movzbl (%eax),%eax
    69a6:	0f be c0             	movsbl %al,%eax
    69a9:	29 c2                	sub    %eax,%edx
    69ab:	89 d0                	mov    %edx,%eax
    69ad:	eb 19                	jmp    69c8 <memcmp+0x70>
    69af:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    69b3:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
    69b7:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
    69bb:	8b 45 f4             	mov    -0xc(%ebp),%eax
    69be:	3b 45 10             	cmp    0x10(%ebp),%eax
    69c1:	7c c4                	jl     6987 <memcmp+0x2f>
    69c3:	b8 00 00 00 00       	mov    $0x0,%eax
    69c8:	c9                   	leave  
    69c9:	c3                   	ret    

000069ca <strcmp>:
    69ca:	55                   	push   %ebp
    69cb:	89 e5                	mov    %esp,%ebp
    69cd:	83 ec 10             	sub    $0x10,%esp
    69d0:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
    69d4:	74 06                	je     69dc <strcmp+0x12>
    69d6:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    69da:	75 08                	jne    69e4 <strcmp+0x1a>
    69dc:	8b 45 08             	mov    0x8(%ebp),%eax
    69df:	2b 45 0c             	sub    0xc(%ebp),%eax
    69e2:	eb 53                	jmp    6a37 <strcmp+0x6d>
    69e4:	8b 45 08             	mov    0x8(%ebp),%eax
    69e7:	89 45 fc             	mov    %eax,-0x4(%ebp)
    69ea:	8b 45 0c             	mov    0xc(%ebp),%eax
    69ed:	89 45 f8             	mov    %eax,-0x8(%ebp)
    69f0:	eb 18                	jmp    6a0a <strcmp+0x40>
    69f2:	8b 45 fc             	mov    -0x4(%ebp),%eax
    69f5:	0f b6 10             	movzbl (%eax),%edx
    69f8:	8b 45 f8             	mov    -0x8(%ebp),%eax
    69fb:	0f b6 00             	movzbl (%eax),%eax
    69fe:	38 c2                	cmp    %al,%dl
    6a00:	75 1e                	jne    6a20 <strcmp+0x56>
    6a02:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
    6a06:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
    6a0a:	8b 45 fc             	mov    -0x4(%ebp),%eax
    6a0d:	0f b6 00             	movzbl (%eax),%eax
    6a10:	84 c0                	test   %al,%al
    6a12:	74 0d                	je     6a21 <strcmp+0x57>
    6a14:	8b 45 f8             	mov    -0x8(%ebp),%eax
    6a17:	0f b6 00             	movzbl (%eax),%eax
    6a1a:	84 c0                	test   %al,%al
    6a1c:	75 d4                	jne    69f2 <strcmp+0x28>
    6a1e:	eb 01                	jmp    6a21 <strcmp+0x57>
    6a20:	90                   	nop
    6a21:	8b 45 fc             	mov    -0x4(%ebp),%eax
    6a24:	0f b6 00             	movzbl (%eax),%eax
    6a27:	0f be d0             	movsbl %al,%edx
    6a2a:	8b 45 f8             	mov    -0x8(%ebp),%eax
    6a2d:	0f b6 00             	movzbl (%eax),%eax
    6a30:	0f be c0             	movsbl %al,%eax
    6a33:	29 c2                	sub    %eax,%edx
    6a35:	89 d0                	mov    %edx,%eax
    6a37:	c9                   	leave  
    6a38:	c3                   	ret    

00006a39 <strcat>:
    6a39:	55                   	push   %ebp
    6a3a:	89 e5                	mov    %esp,%ebp
    6a3c:	83 ec 10             	sub    $0x10,%esp
    6a3f:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
    6a43:	74 06                	je     6a4b <strcat+0x12>
    6a45:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    6a49:	75 07                	jne    6a52 <strcat+0x19>
    6a4b:	b8 00 00 00 00       	mov    $0x0,%eax
    6a50:	eb 44                	jmp    6a96 <strcat+0x5d>
    6a52:	8b 45 08             	mov    0x8(%ebp),%eax
    6a55:	89 45 fc             	mov    %eax,-0x4(%ebp)
    6a58:	eb 04                	jmp    6a5e <strcat+0x25>
    6a5a:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
    6a5e:	8b 45 fc             	mov    -0x4(%ebp),%eax
    6a61:	0f b6 00             	movzbl (%eax),%eax
    6a64:	84 c0                	test   %al,%al
    6a66:	75 f2                	jne    6a5a <strcat+0x21>
    6a68:	8b 45 0c             	mov    0xc(%ebp),%eax
    6a6b:	89 45 f8             	mov    %eax,-0x8(%ebp)
    6a6e:	eb 13                	jmp    6a83 <strcat+0x4a>
    6a70:	8b 45 f8             	mov    -0x8(%ebp),%eax
    6a73:	0f b6 10             	movzbl (%eax),%edx
    6a76:	8b 45 fc             	mov    -0x4(%ebp),%eax
    6a79:	88 10                	mov    %dl,(%eax)
    6a7b:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
    6a7f:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
    6a83:	8b 45 f8             	mov    -0x8(%ebp),%eax
    6a86:	0f b6 00             	movzbl (%eax),%eax
    6a89:	84 c0                	test   %al,%al
    6a8b:	75 e3                	jne    6a70 <strcat+0x37>
    6a8d:	8b 45 fc             	mov    -0x4(%ebp),%eax
    6a90:	c6 00 00             	movb   $0x0,(%eax)
    6a93:	8b 45 08             	mov    0x8(%ebp),%eax
    6a96:	c9                   	leave  
    6a97:	c3                   	ret    

00006a98 <spin>:
    6a98:	55                   	push   %ebp
    6a99:	89 e5                	mov    %esp,%ebp
    6a9b:	83 ec 08             	sub    $0x8,%esp
    6a9e:	83 ec 08             	sub    $0x8,%esp
    6aa1:	ff 75 08             	pushl  0x8(%ebp)
    6aa4:	68 90 b8 00 00       	push   $0xb890
    6aa9:	e8 19 f8 ff ff       	call   62c7 <printl>
    6aae:	83 c4 10             	add    $0x10,%esp
    6ab1:	eb fe                	jmp    6ab1 <spin+0x19>

00006ab3 <assertion_failure>:
    6ab3:	55                   	push   %ebp
    6ab4:	89 e5                	mov    %esp,%ebp
    6ab6:	83 ec 08             	sub    $0x8,%esp
    6ab9:	83 ec 08             	sub    $0x8,%esp
    6abc:	ff 75 14             	pushl  0x14(%ebp)
    6abf:	ff 75 10             	pushl  0x10(%ebp)
    6ac2:	ff 75 0c             	pushl  0xc(%ebp)
    6ac5:	ff 75 08             	pushl  0x8(%ebp)
    6ac8:	6a 03                	push   $0x3
    6aca:	68 a8 b8 00 00       	push   $0xb8a8
    6acf:	e8 f3 f7 ff ff       	call   62c7 <printl>
    6ad4:	83 c4 20             	add    $0x20,%esp
    6ad7:	83 ec 0c             	sub    $0xc,%esp
    6ada:	68 dd b8 00 00       	push   $0xb8dd
    6adf:	e8 b4 ff ff ff       	call   6a98 <spin>
    6ae4:	83 c4 10             	add    $0x10,%esp
    6ae7:	0f 0b                	ud2    
    6ae9:	90                   	nop
    6aea:	c9                   	leave  
    6aeb:	c3                   	ret    

00006aec <open>:
    6aec:	55                   	push   %ebp
    6aed:	89 e5                	mov    %esp,%ebp
    6aef:	83 ec 38             	sub    $0x38,%esp
    6af2:	c7 45 cc 04 00 00 00 	movl   $0x4,-0x34(%ebp)
    6af9:	8b 45 08             	mov    0x8(%ebp),%eax
    6afc:	89 45 f0             	mov    %eax,-0x10(%ebp)
    6aff:	8b 45 0c             	mov    0xc(%ebp),%eax
    6b02:	89 45 d0             	mov    %eax,-0x30(%ebp)
    6b05:	83 ec 0c             	sub    $0xc,%esp
    6b08:	ff 75 08             	pushl  0x8(%ebp)
    6b0b:	e8 32 fe ff ff       	call   6942 <strlen>
    6b10:	83 c4 10             	add    $0x10,%esp
    6b13:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    6b16:	83 ec 04             	sub    $0x4,%esp
    6b19:	8d 45 c8             	lea    -0x38(%ebp),%eax
    6b1c:	50                   	push   %eax
    6b1d:	6a 03                	push   $0x3
    6b1f:	6a 03                	push   $0x3
    6b21:	e8 49 d3 ff ff       	call   3e6f <send_recv>
    6b26:	83 c4 10             	add    $0x10,%esp
    6b29:	8b 45 cc             	mov    -0x34(%ebp),%eax
    6b2c:	83 f8 0d             	cmp    $0xd,%eax
    6b2f:	74 19                	je     6b4a <open+0x5e>
    6b31:	6a 2d                	push   $0x2d
    6b33:	68 f1 b8 00 00       	push   $0xb8f1
    6b38:	68 f1 b8 00 00       	push   $0xb8f1
    6b3d:	68 fc b8 00 00       	push   $0xb8fc
    6b42:	e8 6c ff ff ff       	call   6ab3 <assertion_failure>
    6b47:	83 c4 10             	add    $0x10,%esp
    6b4a:	8b 45 d0             	mov    -0x30(%ebp),%eax
    6b4d:	c9                   	leave  
    6b4e:	c3                   	ret    

00006b4f <read>:
    6b4f:	55                   	push   %ebp
    6b50:	89 e5                	mov    %esp,%ebp
    6b52:	83 ec 38             	sub    $0x38,%esp
    6b55:	c7 45 cc 06 00 00 00 	movl   $0x6,-0x34(%ebp)
    6b5c:	8b 45 08             	mov    0x8(%ebp),%eax
    6b5f:	89 45 d0             	mov    %eax,-0x30(%ebp)
    6b62:	8b 45 0c             	mov    0xc(%ebp),%eax
    6b65:	89 45 f4             	mov    %eax,-0xc(%ebp)
    6b68:	8b 45 10             	mov    0x10(%ebp),%eax
    6b6b:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    6b6e:	83 ec 04             	sub    $0x4,%esp
    6b71:	8d 45 c8             	lea    -0x38(%ebp),%eax
    6b74:	50                   	push   %eax
    6b75:	6a 03                	push   $0x3
    6b77:	6a 03                	push   $0x3
    6b79:	e8 f1 d2 ff ff       	call   3e6f <send_recv>
    6b7e:	83 c4 10             	add    $0x10,%esp
    6b81:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    6b84:	c9                   	leave  
    6b85:	c3                   	ret    

00006b86 <write>:
    6b86:	55                   	push   %ebp
    6b87:	89 e5                	mov    %esp,%ebp
    6b89:	83 ec 38             	sub    $0x38,%esp
    6b8c:	c7 45 cc 07 00 00 00 	movl   $0x7,-0x34(%ebp)
    6b93:	8b 45 08             	mov    0x8(%ebp),%eax
    6b96:	89 45 d0             	mov    %eax,-0x30(%ebp)
    6b99:	8b 45 0c             	mov    0xc(%ebp),%eax
    6b9c:	89 45 f4             	mov    %eax,-0xc(%ebp)
    6b9f:	8b 45 10             	mov    0x10(%ebp),%eax
    6ba2:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    6ba5:	83 ec 04             	sub    $0x4,%esp
    6ba8:	8d 45 c8             	lea    -0x38(%ebp),%eax
    6bab:	50                   	push   %eax
    6bac:	6a 03                	push   $0x3
    6bae:	6a 03                	push   $0x3
    6bb0:	e8 ba d2 ff ff       	call   3e6f <send_recv>
    6bb5:	83 c4 10             	add    $0x10,%esp
    6bb8:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    6bbb:	c9                   	leave  
    6bbc:	c3                   	ret    

00006bbd <close>:
    6bbd:	55                   	push   %ebp
    6bbe:	89 e5                	mov    %esp,%ebp
    6bc0:	83 ec 38             	sub    $0x38,%esp
    6bc3:	c7 45 cc 05 00 00 00 	movl   $0x5,-0x34(%ebp)
    6bca:	8b 45 08             	mov    0x8(%ebp),%eax
    6bcd:	89 45 d0             	mov    %eax,-0x30(%ebp)
    6bd0:	83 ec 04             	sub    $0x4,%esp
    6bd3:	8d 45 c8             	lea    -0x38(%ebp),%eax
    6bd6:	50                   	push   %eax
    6bd7:	6a 03                	push   $0x3
    6bd9:	6a 03                	push   $0x3
    6bdb:	e8 8f d2 ff ff       	call   3e6f <send_recv>
    6be0:	83 c4 10             	add    $0x10,%esp
    6be3:	8b 45 d0             	mov    -0x30(%ebp),%eax
    6be6:	c9                   	leave  
    6be7:	c3                   	ret    

00006be8 <unlink>:
    6be8:	55                   	push   %ebp
    6be9:	89 e5                	mov    %esp,%ebp
    6beb:	83 ec 38             	sub    $0x38,%esp
    6bee:	c7 45 cc 0a 00 00 00 	movl   $0xa,-0x34(%ebp)
    6bf5:	8b 45 08             	mov    0x8(%ebp),%eax
    6bf8:	89 45 f0             	mov    %eax,-0x10(%ebp)
    6bfb:	83 ec 0c             	sub    $0xc,%esp
    6bfe:	ff 75 08             	pushl  0x8(%ebp)
    6c01:	e8 3c fd ff ff       	call   6942 <strlen>
    6c06:	83 c4 10             	add    $0x10,%esp
    6c09:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    6c0c:	83 ec 04             	sub    $0x4,%esp
    6c0f:	8d 45 c8             	lea    -0x38(%ebp),%eax
    6c12:	50                   	push   %eax
    6c13:	6a 03                	push   $0x3
    6c15:	6a 03                	push   $0x3
    6c17:	e8 53 d2 ff ff       	call   3e6f <send_recv>
    6c1c:	83 c4 10             	add    $0x10,%esp
    6c1f:	8b 45 d0             	mov    -0x30(%ebp),%eax
    6c22:	c9                   	leave  
    6c23:	c3                   	ret    

00006c24 <getpid>:
    6c24:	55                   	push   %ebp
    6c25:	89 e5                	mov    %esp,%ebp
    6c27:	83 ec 38             	sub    $0x38,%esp
    6c2a:	c7 45 cc 03 00 00 00 	movl   $0x3,-0x34(%ebp)
    6c31:	83 ec 04             	sub    $0x4,%esp
    6c34:	8d 45 c8             	lea    -0x38(%ebp),%eax
    6c37:	50                   	push   %eax
    6c38:	6a 01                	push   $0x1
    6c3a:	6a 03                	push   $0x3
    6c3c:	e8 2e d2 ff ff       	call   3e6f <send_recv>
    6c41:	83 c4 10             	add    $0x10,%esp
    6c44:	8b 45 cc             	mov    -0x34(%ebp),%eax
    6c47:	83 f8 0d             	cmp    $0xd,%eax
    6c4a:	74 19                	je     6c65 <getpid+0x41>
    6c4c:	6a 25                	push   $0x25
    6c4e:	68 14 b9 00 00       	push   $0xb914
    6c53:	68 14 b9 00 00       	push   $0xb914
    6c58:	68 21 b9 00 00       	push   $0xb921
    6c5d:	e8 51 fe ff ff       	call   6ab3 <assertion_failure>
    6c62:	83 c4 10             	add    $0x10,%esp
    6c65:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    6c68:	c9                   	leave  
    6c69:	c3                   	ret    

00006c6a <syslog>:
    6c6a:	55                   	push   %ebp
    6c6b:	89 e5                	mov    %esp,%ebp
    6c6d:	81 ec 48 04 00 00    	sub    $0x448,%esp
    6c73:	8d 45 0c             	lea    0xc(%ebp),%eax
    6c76:	89 45 f4             	mov    %eax,-0xc(%ebp)
    6c79:	8b 45 08             	mov    0x8(%ebp),%eax
    6c7c:	83 ec 04             	sub    $0x4,%esp
    6c7f:	ff 75 f4             	pushl  -0xc(%ebp)
    6c82:	50                   	push   %eax
    6c83:	8d 85 f0 fb ff ff    	lea    -0x410(%ebp),%eax
    6c89:	50                   	push   %eax
    6c8a:	e8 e0 f6 ff ff       	call   636f <vsprintf>
    6c8f:	83 c4 10             	add    $0x10,%esp
    6c92:	89 45 f0             	mov    %eax,-0x10(%ebp)
    6c95:	83 ec 0c             	sub    $0xc,%esp
    6c98:	8d 85 f0 fb ff ff    	lea    -0x410(%ebp),%eax
    6c9e:	50                   	push   %eax
    6c9f:	e8 9e fc ff ff       	call   6942 <strlen>
    6ca4:	83 c4 10             	add    $0x10,%esp
    6ca7:	39 45 f0             	cmp    %eax,-0x10(%ebp)
    6caa:	74 19                	je     6cc5 <syslog+0x5b>
    6cac:	6a 2b                	push   $0x2b
    6cae:	68 39 b9 00 00       	push   $0xb939
    6cb3:	68 39 b9 00 00       	push   $0xb939
    6cb8:	68 46 b9 00 00       	push   $0xb946
    6cbd:	e8 f1 fd ff ff       	call   6ab3 <assertion_failure>
    6cc2:	83 c4 10             	add    $0x10,%esp
    6cc5:	e8 5a ff ff ff       	call   6c24 <getpid>
    6cca:	83 f8 03             	cmp    $0x3,%eax
    6ccd:	75 14                	jne    6ce3 <syslog+0x79>
    6ccf:	83 ec 0c             	sub    $0xc,%esp
    6cd2:	8d 85 f0 fb ff ff    	lea    -0x410(%ebp),%eax
    6cd8:	50                   	push   %eax
    6cd9:	e8 1b 27 00 00       	call   93f9 <disklog>
    6cde:	83 c4 10             	add    $0x10,%esp
    6ce1:	eb 56                	jmp    6d39 <syslog+0xcf>
    6ce3:	c7 85 c4 fb ff ff ee 	movl   $0x3ee,-0x43c(%ebp)
    6cea:	03 00 00 
    6ced:	8d 85 f0 fb ff ff    	lea    -0x410(%ebp),%eax
    6cf3:	89 85 ec fb ff ff    	mov    %eax,-0x414(%ebp)
    6cf9:	8b 45 f0             	mov    -0x10(%ebp),%eax
    6cfc:	89 85 cc fb ff ff    	mov    %eax,-0x434(%ebp)
    6d02:	83 ec 04             	sub    $0x4,%esp
    6d05:	8d 85 c0 fb ff ff    	lea    -0x440(%ebp),%eax
    6d0b:	50                   	push   %eax
    6d0c:	6a 03                	push   $0x3
    6d0e:	6a 03                	push   $0x3
    6d10:	e8 5a d1 ff ff       	call   3e6f <send_recv>
    6d15:	83 c4 10             	add    $0x10,%esp
    6d18:	8b 85 cc fb ff ff    	mov    -0x434(%ebp),%eax
    6d1e:	39 45 f0             	cmp    %eax,-0x10(%ebp)
    6d21:	74 10                	je     6d33 <syslog+0xc9>
    6d23:	83 ec 0c             	sub    $0xc,%esp
    6d26:	68 57 b9 00 00       	push   $0xb957
    6d2b:	e8 97 ae ff ff       	call   1bc7 <panic>
    6d30:	83 c4 10             	add    $0x10,%esp
    6d33:	8b 85 c8 fb ff ff    	mov    -0x438(%ebp),%eax
    6d39:	c9                   	leave  
    6d3a:	c3                   	ret    

00006d3b <task_fs>:
    6d3b:	55                   	push   %ebp
    6d3c:	89 e5                	mov    %esp,%ebp
    6d3e:	81 ec 18 02 00 00    	sub    $0x218,%esp
    6d44:	83 ec 0c             	sub    $0xc,%esp
    6d47:	68 6c b9 00 00       	push   $0xb96c
    6d4c:	e8 76 f5 ff ff       	call   62c7 <printl>
    6d51:	83 c4 10             	add    $0x10,%esp
    6d54:	e8 69 01 00 00       	call   6ec2 <init_fs>
    6d59:	83 ec 04             	sub    $0x4,%esp
    6d5c:	68 e0 a4 04 00       	push   $0x4a4e0
    6d61:	6a 11                	push   $0x11
    6d63:	6a 02                	push   $0x2
    6d65:	e8 05 d1 ff ff       	call   3e6f <send_recv>
    6d6a:	83 c4 10             	add    $0x10,%esp
    6d6d:	a1 e4 a4 04 00       	mov    0x4a4e4,%eax
    6d72:	89 45 f0             	mov    %eax,-0x10(%ebp)
    6d75:	a1 e0 a4 04 00       	mov    0x4a4e0,%eax
    6d7a:	89 45 f4             	mov    %eax,-0xc(%ebp)
    6d7d:	8b 45 f4             	mov    -0xc(%ebp),%eax
    6d80:	69 c0 94 01 00 00    	imul   $0x194,%eax,%eax
    6d86:	05 e0 b2 04 00       	add    $0x4b2e0,%eax
    6d8b:	a3 c4 97 04 00       	mov    %eax,0x497c4
    6d90:	8b 45 f0             	mov    -0x10(%ebp),%eax
    6d93:	83 e8 04             	sub    $0x4,%eax
    6d96:	83 f8 08             	cmp    $0x8,%eax
    6d99:	77 43                	ja     6dde <task_fs+0xa3>
    6d9b:	8b 04 85 c4 b9 00 00 	mov    0xb9c4(,%eax,4),%eax
    6da2:	ff e0                	jmp    *%eax
    6da4:	e8 a1 0c 00 00       	call   7a4a <do_open>
    6da9:	a3 e8 a4 04 00       	mov    %eax,0x4a4e8
    6dae:	eb 5d                	jmp    6e0d <task_fs+0xd2>
    6db0:	e8 d9 10 00 00       	call   7e8e <do_close>
    6db5:	a3 e8 a4 04 00       	mov    %eax,0x4a4e8
    6dba:	eb 51                	jmp    6e0d <task_fs+0xd2>
    6dbc:	e8 f5 18 00 00       	call   86b6 <do_rdwt>
    6dc1:	a3 ec a4 04 00       	mov    %eax,0x4a4ec
    6dc6:	eb 45                	jmp    6e0d <task_fs+0xd2>
    6dc8:	e8 7f 1d 00 00       	call   8b4c <do_unlink>
    6dcd:	a3 e8 a4 04 00       	mov    %eax,0x4a4e8
    6dd2:	eb 39                	jmp    6e0d <task_fs+0xd2>
    6dd4:	a1 f0 a4 04 00       	mov    0x4a4f0,%eax
    6dd9:	89 45 f4             	mov    %eax,-0xc(%ebp)
    6ddc:	eb 2f                	jmp    6e0d <task_fs+0xd2>
    6dde:	83 ec 08             	sub    $0x8,%esp
    6de1:	68 e0 a4 04 00       	push   $0x4a4e0
    6de6:	68 7d b9 00 00       	push   $0xb97d
    6deb:	e8 c9 e4 ff ff       	call   52b9 <dump_msg>
    6df0:	83 c4 10             	add    $0x10,%esp
    6df3:	6a 50                	push   $0x50
    6df5:	68 92 b9 00 00       	push   $0xb992
    6dfa:	68 92 b9 00 00       	push   $0xb992
    6dff:	68 9c b9 00 00       	push   $0xb99c
    6e04:	e8 aa fc ff ff       	call   6ab3 <assertion_failure>
    6e09:	83 c4 10             	add    $0x10,%esp
    6e0c:	90                   	nop
    6e0d:	c7 85 00 fe ff ff 9e 	movl   $0xb99e,-0x200(%ebp)
    6e14:	b9 00 00 
    6e17:	c7 85 04 fe ff ff a3 	movl   $0xb9a3,-0x1fc(%ebp)
    6e1e:	b9 00 00 
    6e21:	c7 85 08 fe ff ff a9 	movl   $0xb9a9,-0x1f8(%ebp)
    6e28:	b9 00 00 
    6e2b:	c7 85 0c fe ff ff ae 	movl   $0xb9ae,-0x1f4(%ebp)
    6e32:	b9 00 00 
    6e35:	c7 85 10 fe ff ff b4 	movl   $0xb9b4,-0x1f0(%ebp)
    6e3c:	b9 00 00 
    6e3f:	c7 85 18 fe ff ff ba 	movl   $0xb9ba,-0x1e8(%ebp)
    6e46:	b9 00 00 
    6e49:	83 7d f0 0a          	cmpl   $0xa,-0x10(%ebp)
    6e4d:	74 3d                	je     6e8c <task_fs+0x151>
    6e4f:	83 7d f0 0a          	cmpl   $0xa,-0x10(%ebp)
    6e53:	7f 0d                	jg     6e62 <task_fs+0x127>
    6e55:	8b 45 f0             	mov    -0x10(%ebp),%eax
    6e58:	83 e8 04             	sub    $0x4,%eax
    6e5b:	83 f8 03             	cmp    $0x3,%eax
    6e5e:	77 11                	ja     6e71 <task_fs+0x136>
    6e60:	eb 2a                	jmp    6e8c <task_fs+0x151>
    6e62:	83 7d f0 0c          	cmpl   $0xc,-0x10(%ebp)
    6e66:	74 27                	je     6e8f <task_fs+0x154>
    6e68:	81 7d f0 ee 03 00 00 	cmpl   $0x3ee,-0x10(%ebp)
    6e6f:	74 1e                	je     6e8f <task_fs+0x154>
    6e71:	6a 71                	push   $0x71
    6e73:	68 92 b9 00 00       	push   $0xb992
    6e78:	68 92 b9 00 00       	push   $0xb992
    6e7d:	68 9c b9 00 00       	push   $0xb99c
    6e82:	e8 2c fc ff ff       	call   6ab3 <assertion_failure>
    6e87:	83 c4 10             	add    $0x10,%esp
    6e8a:	eb 04                	jmp    6e90 <task_fs+0x155>
    6e8c:	90                   	nop
    6e8d:	eb 01                	jmp    6e90 <task_fs+0x155>
    6e8f:	90                   	nop
    6e90:	a1 e4 a4 04 00       	mov    0x4a4e4,%eax
    6e95:	83 f8 0b             	cmp    $0xb,%eax
    6e98:	0f 84 bb fe ff ff    	je     6d59 <task_fs+0x1e>
    6e9e:	c7 05 e4 a4 04 00 0d 	movl   $0xd,0x4a4e4
    6ea5:	00 00 00 
    6ea8:	83 ec 04             	sub    $0x4,%esp
    6eab:	68 e0 a4 04 00       	push   $0x4a4e0
    6eb0:	ff 75 f4             	pushl  -0xc(%ebp)
    6eb3:	6a 01                	push   $0x1
    6eb5:	e8 b5 cf ff ff       	call   3e6f <send_recv>
    6eba:	83 c4 10             	add    $0x10,%esp
    6ebd:	e9 97 fe ff ff       	jmp    6d59 <task_fs+0x1e>

00006ec2 <init_fs>:
    6ec2:	55                   	push   %ebp
    6ec3:	89 e5                	mov    %esp,%ebp
    6ec5:	83 ec 48             	sub    $0x48,%esp
    6ec8:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    6ecf:	eb 25                	jmp    6ef6 <init_fs+0x34>
    6ed1:	8b 55 f4             	mov    -0xc(%ebp),%edx
    6ed4:	89 d0                	mov    %edx,%eax
    6ed6:	01 c0                	add    %eax,%eax
    6ed8:	01 d0                	add    %edx,%eax
    6eda:	c1 e0 02             	shl    $0x2,%eax
    6edd:	05 20 a5 04 00       	add    $0x4a520,%eax
    6ee2:	83 ec 04             	sub    $0x4,%esp
    6ee5:	6a 0c                	push   $0xc
    6ee7:	6a 00                	push   $0x0
    6ee9:	50                   	push   %eax
    6eea:	e8 1a fa ff ff       	call   6909 <memset>
    6eef:	83 c4 10             	add    $0x10,%esp
    6ef2:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    6ef6:	83 7d f4 3f          	cmpl   $0x3f,-0xc(%ebp)
    6efa:	7e d5                	jle    6ed1 <init_fs+0xf>
    6efc:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    6f03:	eb 1f                	jmp    6f24 <init_fs+0x62>
    6f05:	8b 45 f4             	mov    -0xc(%ebp),%eax
    6f08:	6b c0 2c             	imul   $0x2c,%eax,%eax
    6f0b:	05 a0 08 01 00       	add    $0x108a0,%eax
    6f10:	83 ec 04             	sub    $0x4,%esp
    6f13:	6a 2c                	push   $0x2c
    6f15:	6a 00                	push   $0x0
    6f17:	50                   	push   %eax
    6f18:	e8 ec f9 ff ff       	call   6909 <memset>
    6f1d:	83 c4 10             	add    $0x10,%esp
    6f20:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    6f24:	83 7d f4 3f          	cmpl   $0x3f,-0xc(%ebp)
    6f28:	7e db                	jle    6f05 <init_fs+0x43>
    6f2a:	c7 45 f0 40 b0 04 00 	movl   $0x4b040,-0x10(%ebp)
    6f31:	eb 0e                	jmp    6f41 <init_fs+0x7f>
    6f33:	8b 45 f0             	mov    -0x10(%ebp),%eax
    6f36:	c7 40 38 00 00 00 00 	movl   $0x0,0x38(%eax)
    6f3d:	83 45 f0 3c          	addl   $0x3c,-0x10(%ebp)
    6f41:	81 7d f0 20 b2 04 00 	cmpl   $0x4b220,-0x10(%ebp)
    6f48:	72 e9                	jb     6f33 <init_fs+0x71>
    6f4a:	c7 45 c4 e9 03 00 00 	movl   $0x3e9,-0x3c(%ebp)
    6f51:	c7 45 d4 20 00 00 00 	movl   $0x20,-0x2c(%ebp)
    6f58:	a1 90 f7 00 00       	mov    0xf790,%eax
    6f5d:	83 f8 ec             	cmp    $0xffffffec,%eax
    6f60:	75 1c                	jne    6f7e <init_fs+0xbc>
    6f62:	68 9a 00 00 00       	push   $0x9a
    6f67:	68 92 b9 00 00       	push   $0xb992
    6f6c:	68 92 b9 00 00       	push   $0xb992
    6f71:	68 e8 b9 00 00       	push   $0xb9e8
    6f76:	e8 38 fb ff ff       	call   6ab3 <assertion_failure>
    6f7b:	83 c4 10             	add    $0x10,%esp
    6f7e:	a1 90 f7 00 00       	mov    0xf790,%eax
    6f83:	83 ec 04             	sub    $0x4,%esp
    6f86:	8d 55 c0             	lea    -0x40(%ebp),%edx
    6f89:	52                   	push   %edx
    6f8a:	50                   	push   %eax
    6f8b:	6a 03                	push   $0x3
    6f8d:	e8 dd ce ff ff       	call   3e6f <send_recv>
    6f92:	83 c4 10             	add    $0x10,%esp
    6f95:	e8 65 00 00 00       	call   6fff <mkfs>
    6f9a:	83 ec 0c             	sub    $0xc,%esp
    6f9d:	68 20 03 00 00       	push   $0x320
    6fa2:	e8 4e 06 00 00       	call   75f5 <read_super_block>
    6fa7:	83 c4 10             	add    $0x10,%esp
    6faa:	83 ec 0c             	sub    $0xc,%esp
    6fad:	68 20 03 00 00       	push   $0x320
    6fb2:	e8 ad 07 00 00       	call   7764 <get_super_block>
    6fb7:	83 c4 10             	add    $0x10,%esp
    6fba:	89 45 f0             	mov    %eax,-0x10(%ebp)
    6fbd:	8b 45 f0             	mov    -0x10(%ebp),%eax
    6fc0:	8b 00                	mov    (%eax),%eax
    6fc2:	3d 11 01 00 00       	cmp    $0x111,%eax
    6fc7:	74 1c                	je     6fe5 <init_fs+0x123>
    6fc9:	68 a4 00 00 00       	push   $0xa4
    6fce:	68 92 b9 00 00       	push   $0xb992
    6fd3:	68 92 b9 00 00       	push   $0xb992
    6fd8:	68 1c ba 00 00       	push   $0xba1c
    6fdd:	e8 d1 fa ff ff       	call   6ab3 <assertion_failure>
    6fe2:	83 c4 10             	add    $0x10,%esp
    6fe5:	83 ec 08             	sub    $0x8,%esp
    6fe8:	6a 01                	push   $0x1
    6fea:	68 20 03 00 00       	push   $0x320
    6fef:	e8 b6 07 00 00       	call   77aa <get_inode>
    6ff4:	83 c4 10             	add    $0x10,%esp
    6ff7:	a3 20 a8 04 00       	mov    %eax,0x4a820
    6ffc:	90                   	nop
    6ffd:	c9                   	leave  
    6ffe:	c3                   	ret    

00006fff <mkfs>:
    6fff:	55                   	push   %ebp
    7000:	89 e5                	mov    %esp,%ebp
    7002:	57                   	push   %edi
    7003:	56                   	push   %esi
    7004:	53                   	push   %ebx
    7005:	81 ec dc 00 00 00    	sub    $0xdc,%esp
    700b:	c7 45 d8 00 10 00 00 	movl   $0x1000,-0x28(%ebp)
    7012:	c7 45 a4 ed 03 00 00 	movl   $0x3ed,-0x5c(%ebp)
    7019:	c7 45 b4 20 00 00 00 	movl   $0x20,-0x4c(%ebp)
    7020:	c7 45 ac 01 00 00 00 	movl   $0x1,-0x54(%ebp)
    7027:	8d 45 98             	lea    -0x68(%ebp),%eax
    702a:	89 45 cc             	mov    %eax,-0x34(%ebp)
    702d:	c7 45 b0 03 00 00 00 	movl   $0x3,-0x50(%ebp)
    7034:	a1 90 f7 00 00       	mov    0xf790,%eax
    7039:	83 f8 ec             	cmp    $0xffffffec,%eax
    703c:	75 1c                	jne    705a <mkfs+0x5b>
    703e:	68 c3 00 00 00       	push   $0xc3
    7043:	68 92 b9 00 00       	push   $0xb992
    7048:	68 92 b9 00 00       	push   $0xb992
    704d:	68 e8 b9 00 00       	push   $0xb9e8
    7052:	e8 5c fa ff ff       	call   6ab3 <assertion_failure>
    7057:	83 c4 10             	add    $0x10,%esp
    705a:	a1 90 f7 00 00       	mov    0xf790,%eax
    705f:	83 ec 04             	sub    $0x4,%esp
    7062:	8d 55 a0             	lea    -0x60(%ebp),%edx
    7065:	52                   	push   %edx
    7066:	50                   	push   %eax
    7067:	6a 03                	push   $0x3
    7069:	e8 01 ce ff ff       	call   3e6f <send_recv>
    706e:	83 c4 10             	add    $0x10,%esp
    7071:	8b 45 9c             	mov    -0x64(%ebp),%eax
    7074:	83 ec 08             	sub    $0x8,%esp
    7077:	50                   	push   %eax
    7078:	68 32 ba 00 00       	push   $0xba32
    707d:	e8 45 f2 ff ff       	call   62c7 <printl>
    7082:	83 c4 10             	add    $0x10,%esp
    7085:	c7 85 5c ff ff ff 11 	movl   $0x111,-0xa4(%ebp)
    708c:	01 00 00 
    708f:	8b 45 d8             	mov    -0x28(%ebp),%eax
    7092:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
    7098:	8b 85 60 ff ff ff    	mov    -0xa0(%ebp),%eax
    709e:	c1 e0 05             	shl    $0x5,%eax
    70a1:	c1 e8 09             	shr    $0x9,%eax
    70a4:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
    70aa:	8b 45 9c             	mov    -0x64(%ebp),%eax
    70ad:	89 85 64 ff ff ff    	mov    %eax,-0x9c(%ebp)
    70b3:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%ebp)
    70ba:	00 00 00 
    70bd:	8b 85 64 ff ff ff    	mov    -0x9c(%ebp),%eax
    70c3:	8b 75 d8             	mov    -0x28(%ebp),%esi
    70c6:	ba 00 00 00 00       	mov    $0x0,%edx
    70cb:	f7 f6                	div    %esi
    70cd:	83 c0 01             	add    $0x1,%eax
    70d0:	89 85 6c ff ff ff    	mov    %eax,-0x94(%ebp)
    70d6:	8b 95 68 ff ff ff    	mov    -0x98(%ebp),%edx
    70dc:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
    70e2:	01 c2                	add    %eax,%edx
    70e4:	8b 85 74 ff ff ff    	mov    -0x8c(%ebp),%eax
    70ea:	01 d0                	add    %edx,%eax
    70ec:	83 c0 02             	add    $0x2,%eax
    70ef:	89 85 70 ff ff ff    	mov    %eax,-0x90(%ebp)
    70f5:	c7 85 78 ff ff ff 01 	movl   $0x1,-0x88(%ebp)
    70fc:	00 00 00 
    70ff:	c7 85 7c ff ff ff 20 	movl   $0x20,-0x84(%ebp)
    7106:	00 00 00 
    7109:	c7 45 80 04 00 00 00 	movl   $0x4,-0x80(%ebp)
    7110:	c7 45 84 08 00 00 00 	movl   $0x8,-0x7c(%ebp)
    7117:	c7 45 88 10 00 00 00 	movl   $0x10,-0x78(%ebp)
    711e:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
    7125:	c7 45 90 04 00 00 00 	movl   $0x4,-0x70(%ebp)
    712c:	a1 9c f7 00 00       	mov    0xf79c,%eax
    7131:	83 ec 04             	sub    $0x4,%esp
    7134:	68 00 02 00 00       	push   $0x200
    7139:	6a 90                	push   $0xffffff90
    713b:	50                   	push   %eax
    713c:	e8 c8 f7 ff ff       	call   6909 <memset>
    7141:	83 c4 10             	add    $0x10,%esp
    7144:	a1 9c f7 00 00       	mov    0xf79c,%eax
    7149:	83 ec 04             	sub    $0x4,%esp
    714c:	6a 38                	push   $0x38
    714e:	8d 95 5c ff ff ff    	lea    -0xa4(%ebp),%edx
    7154:	52                   	push   %edx
    7155:	50                   	push   %eax
    7156:	e8 85 f7 ff ff       	call   68e0 <memcpy>
    715b:	83 c4 10             	add    $0x10,%esp
    715e:	a1 9c f7 00 00       	mov    0xf79c,%eax
    7163:	83 ec 04             	sub    $0x4,%esp
    7166:	50                   	push   %eax
    7167:	6a 03                	push   $0x3
    7169:	68 00 02 00 00       	push   $0x200
    716e:	6a 00                	push   $0x0
    7170:	68 00 02 00 00       	push   $0x200
    7175:	68 20 03 00 00       	push   $0x320
    717a:	68 ec 03 00 00       	push   $0x3ec
    717f:	e8 d8 03 00 00       	call   755c <rw_sector>
    7184:	83 c4 20             	add    $0x20,%esp
    7187:	8b 55 98             	mov    -0x68(%ebp),%edx
    718a:	8b 85 70 ff ff ff    	mov    -0x90(%ebp),%eax
    7190:	01 d0                	add    %edx,%eax
    7192:	8d 3c 00             	lea    (%eax,%eax,1),%edi
    7195:	8b 55 98             	mov    -0x68(%ebp),%edx
    7198:	8b 85 68 ff ff ff    	mov    -0x98(%ebp),%eax
    719e:	01 c2                	add    %eax,%edx
    71a0:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
    71a6:	01 d0                	add    %edx,%eax
    71a8:	83 c0 02             	add    $0x2,%eax
    71ab:	8d 34 00             	lea    (%eax,%eax,1),%esi
    71ae:	8b 55 98             	mov    -0x68(%ebp),%edx
    71b1:	8b 85 68 ff ff ff    	mov    -0x98(%ebp),%eax
    71b7:	01 d0                	add    %edx,%eax
    71b9:	83 c0 02             	add    $0x2,%eax
    71bc:	8d 1c 00             	lea    (%eax,%eax,1),%ebx
    71bf:	8b 45 98             	mov    -0x68(%ebp),%eax
    71c2:	83 c0 02             	add    $0x2,%eax
    71c5:	8d 0c 00             	lea    (%eax,%eax,1),%ecx
    71c8:	8b 45 98             	mov    -0x68(%ebp),%eax
    71cb:	83 c0 01             	add    $0x1,%eax
    71ce:	8d 14 00             	lea    (%eax,%eax,1),%edx
    71d1:	8b 45 98             	mov    -0x68(%ebp),%eax
    71d4:	01 c0                	add    %eax,%eax
    71d6:	83 ec 04             	sub    $0x4,%esp
    71d9:	57                   	push   %edi
    71da:	56                   	push   %esi
    71db:	53                   	push   %ebx
    71dc:	51                   	push   %ecx
    71dd:	52                   	push   %edx
    71de:	50                   	push   %eax
    71df:	68 4c ba 00 00       	push   $0xba4c
    71e4:	e8 de f0 ff ff       	call   62c7 <printl>
    71e9:	83 c4 20             	add    $0x20,%esp
    71ec:	a1 9c f7 00 00       	mov    0xf79c,%eax
    71f1:	83 ec 04             	sub    $0x4,%esp
    71f4:	68 00 02 00 00       	push   $0x200
    71f9:	6a 00                	push   $0x0
    71fb:	50                   	push   %eax
    71fc:	e8 08 f7 ff ff       	call   6909 <memset>
    7201:	83 c4 10             	add    $0x10,%esp
    7204:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    720b:	eb 27                	jmp    7234 <mkfs+0x235>
    720d:	a1 9c f7 00 00       	mov    0xf79c,%eax
    7212:	0f b6 00             	movzbl (%eax),%eax
    7215:	89 c3                	mov    %eax,%ebx
    7217:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    721a:	ba 01 00 00 00       	mov    $0x1,%edx
    721f:	89 c1                	mov    %eax,%ecx
    7221:	d3 e2                	shl    %cl,%edx
    7223:	89 d0                	mov    %edx,%eax
    7225:	09 c3                	or     %eax,%ebx
    7227:	89 da                	mov    %ebx,%edx
    7229:	a1 9c f7 00 00       	mov    0xf79c,%eax
    722e:	88 10                	mov    %dl,(%eax)
    7230:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    7234:	83 7d e4 04          	cmpl   $0x4,-0x1c(%ebp)
    7238:	7e d3                	jle    720d <mkfs+0x20e>
    723a:	a1 9c f7 00 00       	mov    0xf79c,%eax
    723f:	0f b6 00             	movzbl (%eax),%eax
    7242:	3c 1f                	cmp    $0x1f,%al
    7244:	74 1c                	je     7262 <mkfs+0x263>
    7246:	68 f4 00 00 00       	push   $0xf4
    724b:	68 92 b9 00 00       	push   $0xb992
    7250:	68 92 b9 00 00       	push   $0xb992
    7255:	68 aa ba 00 00       	push   $0xbaaa
    725a:	e8 54 f8 ff ff       	call   6ab3 <assertion_failure>
    725f:	83 c4 10             	add    $0x10,%esp
    7262:	a1 9c f7 00 00       	mov    0xf79c,%eax
    7267:	83 ec 04             	sub    $0x4,%esp
    726a:	50                   	push   %eax
    726b:	6a 03                	push   $0x3
    726d:	68 00 02 00 00       	push   $0x200
    7272:	6a 00                	push   $0x0
    7274:	68 00 04 00 00       	push   $0x400
    7279:	68 20 03 00 00       	push   $0x320
    727e:	68 ec 03 00 00       	push   $0x3ec
    7283:	e8 d4 02 00 00       	call   755c <rw_sector>
    7288:	83 c4 20             	add    $0x20,%esp
    728b:	a1 9c f7 00 00       	mov    0xf79c,%eax
    7290:	83 ec 04             	sub    $0x4,%esp
    7293:	68 00 02 00 00       	push   $0x200
    7298:	6a 00                	push   $0x0
    729a:	50                   	push   %eax
    729b:	e8 69 f6 ff ff       	call   6909 <memset>
    72a0:	83 c4 10             	add    $0x10,%esp
    72a3:	c7 45 d4 01 08 00 00 	movl   $0x801,-0x2c(%ebp)
    72aa:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    72b1:	eb 12                	jmp    72c5 <mkfs+0x2c6>
    72b3:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    72b9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    72bc:	01 d0                	add    %edx,%eax
    72be:	c6 00 ff             	movb   $0xff,(%eax)
    72c1:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    72c5:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    72c8:	8d 50 07             	lea    0x7(%eax),%edx
    72cb:	85 c0                	test   %eax,%eax
    72cd:	0f 48 c2             	cmovs  %edx,%eax
    72d0:	c1 f8 03             	sar    $0x3,%eax
    72d3:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
    72d6:	7c db                	jl     72b3 <mkfs+0x2b4>
    72d8:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
    72df:	eb 35                	jmp    7316 <mkfs+0x317>
    72e1:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    72e7:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    72ea:	01 d0                	add    %edx,%eax
    72ec:	0f b6 00             	movzbl (%eax),%eax
    72ef:	89 c3                	mov    %eax,%ebx
    72f1:	8b 45 e0             	mov    -0x20(%ebp),%eax
    72f4:	ba 01 00 00 00       	mov    $0x1,%edx
    72f9:	89 c1                	mov    %eax,%ecx
    72fb:	d3 e2                	shl    %cl,%edx
    72fd:	89 d0                	mov    %edx,%eax
    72ff:	09 c3                	or     %eax,%ebx
    7301:	89 d9                	mov    %ebx,%ecx
    7303:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    7309:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    730c:	01 d0                	add    %edx,%eax
    730e:	89 ca                	mov    %ecx,%edx
    7310:	88 10                	mov    %dl,(%eax)
    7312:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
    7316:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    7319:	99                   	cltd   
    731a:	c1 ea 1d             	shr    $0x1d,%edx
    731d:	01 d0                	add    %edx,%eax
    731f:	83 e0 07             	and    $0x7,%eax
    7322:	29 d0                	sub    %edx,%eax
    7324:	39 45 e0             	cmp    %eax,-0x20(%ebp)
    7327:	7c b8                	jl     72e1 <mkfs+0x2e2>
    7329:	8b 0d 9c f7 00 00    	mov    0xf79c,%ecx
    732f:	8b 85 68 ff ff ff    	mov    -0x98(%ebp),%eax
    7335:	83 c0 02             	add    $0x2,%eax
    7338:	c1 e0 09             	shl    $0x9,%eax
    733b:	ba 00 00 00 00       	mov    $0x0,%edx
    7340:	83 ec 04             	sub    $0x4,%esp
    7343:	51                   	push   %ecx
    7344:	6a 03                	push   $0x3
    7346:	68 00 02 00 00       	push   $0x200
    734b:	52                   	push   %edx
    734c:	50                   	push   %eax
    734d:	68 20 03 00 00       	push   $0x320
    7352:	68 ec 03 00 00       	push   $0x3ec
    7357:	e8 00 02 00 00       	call   755c <rw_sector>
    735c:	83 c4 20             	add    $0x20,%esp
    735f:	a1 9c f7 00 00       	mov    0xf79c,%eax
    7364:	83 ec 04             	sub    $0x4,%esp
    7367:	68 00 02 00 00       	push   $0x200
    736c:	6a 00                	push   $0x0
    736e:	50                   	push   %eax
    736f:	e8 95 f5 ff ff       	call   6909 <memset>
    7374:	83 c4 10             	add    $0x10,%esp
    7377:	c7 45 e4 01 00 00 00 	movl   $0x1,-0x1c(%ebp)
    737e:	eb 3f                	jmp    73bf <mkfs+0x3c0>
    7380:	8b 0d 9c f7 00 00    	mov    0xf79c,%ecx
    7386:	8b 95 68 ff ff ff    	mov    -0x98(%ebp),%edx
    738c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    738f:	01 d0                	add    %edx,%eax
    7391:	83 c0 02             	add    $0x2,%eax
    7394:	c1 e0 09             	shl    $0x9,%eax
    7397:	ba 00 00 00 00       	mov    $0x0,%edx
    739c:	83 ec 04             	sub    $0x4,%esp
    739f:	51                   	push   %ecx
    73a0:	6a 03                	push   $0x3
    73a2:	68 00 02 00 00       	push   $0x200
    73a7:	52                   	push   %edx
    73a8:	50                   	push   %eax
    73a9:	68 20 03 00 00       	push   $0x320
    73ae:	68 ec 03 00 00       	push   $0x3ec
    73b3:	e8 a4 01 00 00       	call   755c <rw_sector>
    73b8:	83 c4 20             	add    $0x20,%esp
    73bb:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    73bf:	8b 95 6c ff ff ff    	mov    -0x94(%ebp),%edx
    73c5:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    73c8:	39 c2                	cmp    %eax,%edx
    73ca:	77 b4                	ja     7380 <mkfs+0x381>
    73cc:	a1 9c f7 00 00       	mov    0xf79c,%eax
    73d1:	83 ec 04             	sub    $0x4,%esp
    73d4:	68 00 02 00 00       	push   $0x200
    73d9:	6a 00                	push   $0x0
    73db:	50                   	push   %eax
    73dc:	e8 28 f5 ff ff       	call   6909 <memset>
    73e1:	83 c4 10             	add    $0x10,%esp
    73e4:	a1 9c f7 00 00       	mov    0xf79c,%eax
    73e9:	89 45 d0             	mov    %eax,-0x30(%ebp)
    73ec:	8b 45 d0             	mov    -0x30(%ebp),%eax
    73ef:	c7 00 00 40 00 00    	movl   $0x4000,(%eax)
    73f5:	8b 45 d0             	mov    -0x30(%ebp),%eax
    73f8:	c7 40 04 40 00 00 00 	movl   $0x40,0x4(%eax)
    73ff:	8b 95 70 ff ff ff    	mov    -0x90(%ebp),%edx
    7405:	8b 45 d0             	mov    -0x30(%ebp),%eax
    7408:	89 50 08             	mov    %edx,0x8(%eax)
    740b:	8b 45 d0             	mov    -0x30(%ebp),%eax
    740e:	c7 40 0c 00 08 00 00 	movl   $0x800,0xc(%eax)
    7415:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    741c:	eb 42                	jmp    7460 <mkfs+0x461>
    741e:	a1 9c f7 00 00       	mov    0xf79c,%eax
    7423:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    7426:	83 c2 01             	add    $0x1,%edx
    7429:	c1 e2 05             	shl    $0x5,%edx
    742c:	01 d0                	add    %edx,%eax
    742e:	89 45 d0             	mov    %eax,-0x30(%ebp)
    7431:	8b 45 d0             	mov    -0x30(%ebp),%eax
    7434:	c7 00 00 20 00 00    	movl   $0x2000,(%eax)
    743a:	8b 45 d0             	mov    -0x30(%ebp),%eax
    743d:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
    7444:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    7447:	80 cc 04             	or     $0x4,%ah
    744a:	89 c2                	mov    %eax,%edx
    744c:	8b 45 d0             	mov    -0x30(%ebp),%eax
    744f:	89 50 08             	mov    %edx,0x8(%eax)
    7452:	8b 45 d0             	mov    -0x30(%ebp),%eax
    7455:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
    745c:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    7460:	83 7d e4 02          	cmpl   $0x2,-0x1c(%ebp)
    7464:	7e b8                	jle    741e <mkfs+0x41f>
    7466:	8b 0d 9c f7 00 00    	mov    0xf79c,%ecx
    746c:	8b 95 68 ff ff ff    	mov    -0x98(%ebp),%edx
    7472:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
    7478:	01 d0                	add    %edx,%eax
    747a:	83 c0 02             	add    $0x2,%eax
    747d:	c1 e0 09             	shl    $0x9,%eax
    7480:	ba 00 00 00 00       	mov    $0x0,%edx
    7485:	83 ec 04             	sub    $0x4,%esp
    7488:	51                   	push   %ecx
    7489:	6a 03                	push   $0x3
    748b:	68 00 02 00 00       	push   $0x200
    7490:	52                   	push   %edx
    7491:	50                   	push   %eax
    7492:	68 20 03 00 00       	push   $0x320
    7497:	68 ec 03 00 00       	push   $0x3ec
    749c:	e8 bb 00 00 00       	call   755c <rw_sector>
    74a1:	83 c4 20             	add    $0x20,%esp
    74a4:	a1 9c f7 00 00       	mov    0xf79c,%eax
    74a9:	83 ec 04             	sub    $0x4,%esp
    74ac:	68 00 02 00 00       	push   $0x200
    74b1:	6a 00                	push   $0x0
    74b3:	50                   	push   %eax
    74b4:	e8 50 f4 ff ff       	call   6909 <memset>
    74b9:	83 c4 10             	add    $0x10,%esp
    74bc:	a1 9c f7 00 00       	mov    0xf79c,%eax
    74c1:	89 45 dc             	mov    %eax,-0x24(%ebp)
    74c4:	8b 45 dc             	mov    -0x24(%ebp),%eax
    74c7:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
    74cd:	8b 45 dc             	mov    -0x24(%ebp),%eax
    74d0:	83 c0 04             	add    $0x4,%eax
    74d3:	83 ec 08             	sub    $0x8,%esp
    74d6:	68 bb ba 00 00       	push   $0xbabb
    74db:	50                   	push   %eax
    74dc:	e8 49 f4 ff ff       	call   692a <strcpy>
    74e1:	83 c4 10             	add    $0x10,%esp
    74e4:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    74eb:	eb 2d                	jmp    751a <mkfs+0x51b>
    74ed:	83 45 dc 10          	addl   $0x10,-0x24(%ebp)
    74f1:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    74f4:	8d 50 02             	lea    0x2(%eax),%edx
    74f7:	8b 45 dc             	mov    -0x24(%ebp),%eax
    74fa:	89 10                	mov    %edx,(%eax)
    74fc:	8b 45 dc             	mov    -0x24(%ebp),%eax
    74ff:	83 c0 04             	add    $0x4,%eax
    7502:	83 ec 04             	sub    $0x4,%esp
    7505:	ff 75 e4             	pushl  -0x1c(%ebp)
    7508:	68 bd ba 00 00       	push   $0xbabd
    750d:	50                   	push   %eax
    750e:	e8 d9 f0 ff ff       	call   65ec <sprintf>
    7513:	83 c4 10             	add    $0x10,%esp
    7516:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    751a:	83 7d e4 02          	cmpl   $0x2,-0x1c(%ebp)
    751e:	7e cd                	jle    74ed <mkfs+0x4ee>
    7520:	8b 0d 9c f7 00 00    	mov    0xf79c,%ecx
    7526:	8b 85 70 ff ff ff    	mov    -0x90(%ebp),%eax
    752c:	c1 e0 09             	shl    $0x9,%eax
    752f:	ba 00 00 00 00       	mov    $0x0,%edx
    7534:	83 ec 04             	sub    $0x4,%esp
    7537:	51                   	push   %ecx
    7538:	6a 03                	push   $0x3
    753a:	68 00 02 00 00       	push   $0x200
    753f:	52                   	push   %edx
    7540:	50                   	push   %eax
    7541:	68 20 03 00 00       	push   $0x320
    7546:	68 ec 03 00 00       	push   $0x3ec
    754b:	e8 0c 00 00 00       	call   755c <rw_sector>
    7550:	83 c4 20             	add    $0x20,%esp
    7553:	90                   	nop
    7554:	8d 65 f4             	lea    -0xc(%ebp),%esp
    7557:	5b                   	pop    %ebx
    7558:	5e                   	pop    %esi
    7559:	5f                   	pop    %edi
    755a:	5d                   	pop    %ebp
    755b:	c3                   	ret    

0000755c <rw_sector>:
    755c:	55                   	push   %ebp
    755d:	89 e5                	mov    %esp,%ebp
    755f:	83 ec 48             	sub    $0x48,%esp
    7562:	8b 45 10             	mov    0x10(%ebp),%eax
    7565:	89 45 c0             	mov    %eax,-0x40(%ebp)
    7568:	8b 45 14             	mov    0x14(%ebp),%eax
    756b:	89 45 c4             	mov    %eax,-0x3c(%ebp)
    756e:	8b 45 08             	mov    0x8(%ebp),%eax
    7571:	89 45 cc             	mov    %eax,-0x34(%ebp)
    7574:	8b 45 0c             	mov    0xc(%ebp),%eax
    7577:	0f b6 c0             	movzbl %al,%eax
    757a:	89 45 dc             	mov    %eax,-0x24(%ebp)
    757d:	8b 45 c0             	mov    -0x40(%ebp),%eax
    7580:	8b 55 c4             	mov    -0x3c(%ebp),%edx
    7583:	89 45 e0             	mov    %eax,-0x20(%ebp)
    7586:	89 55 e4             	mov    %edx,-0x1c(%ebp)
    7589:	8b 45 20             	mov    0x20(%ebp),%eax
    758c:	89 45 f4             	mov    %eax,-0xc(%ebp)
    758f:	8b 45 18             	mov    0x18(%ebp),%eax
    7592:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    7595:	8b 45 1c             	mov    0x1c(%ebp),%eax
    7598:	89 45 d8             	mov    %eax,-0x28(%ebp)
    759b:	8b 45 0c             	mov    0xc(%ebp),%eax
    759e:	c1 f8 08             	sar    $0x8,%eax
    75a1:	0f b6 c0             	movzbl %al,%eax
    75a4:	8b 04 85 84 f7 00 00 	mov    0xf784(,%eax,4),%eax
    75ab:	83 f8 ec             	cmp    $0xffffffec,%eax
    75ae:	75 1c                	jne    75cc <rw_sector+0x70>
    75b0:	68 58 01 00 00       	push   $0x158
    75b5:	68 92 b9 00 00       	push   $0xb992
    75ba:	68 92 b9 00 00       	push   $0xb992
    75bf:	68 c8 ba 00 00       	push   $0xbac8
    75c4:	e8 ea f4 ff ff       	call   6ab3 <assertion_failure>
    75c9:	83 c4 10             	add    $0x10,%esp
    75cc:	8b 45 0c             	mov    0xc(%ebp),%eax
    75cf:	c1 f8 08             	sar    $0x8,%eax
    75d2:	0f b6 c0             	movzbl %al,%eax
    75d5:	8b 04 85 84 f7 00 00 	mov    0xf784(,%eax,4),%eax
    75dc:	83 ec 04             	sub    $0x4,%esp
    75df:	8d 55 c8             	lea    -0x38(%ebp),%edx
    75e2:	52                   	push   %edx
    75e3:	50                   	push   %eax
    75e4:	6a 03                	push   $0x3
    75e6:	e8 84 c8 ff ff       	call   3e6f <send_recv>
    75eb:	83 c4 10             	add    $0x10,%esp
    75ee:	b8 00 00 00 00       	mov    $0x0,%eax
    75f3:	c9                   	leave  
    75f4:	c3                   	ret    

000075f5 <read_super_block>:
    75f5:	55                   	push   %ebp
    75f6:	89 e5                	mov    %esp,%ebp
    75f8:	83 ec 48             	sub    $0x48,%esp
    75fb:	c7 45 c4 eb 03 00 00 	movl   $0x3eb,-0x3c(%ebp)
    7602:	8b 45 08             	mov    0x8(%ebp),%eax
    7605:	0f b6 c0             	movzbl %al,%eax
    7608:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    760b:	c7 45 d8 00 02 00 00 	movl   $0x200,-0x28(%ebp)
    7612:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
    7619:	a1 9c f7 00 00       	mov    0xf79c,%eax
    761e:	89 45 ec             	mov    %eax,-0x14(%ebp)
    7621:	c7 45 cc 00 02 00 00 	movl   $0x200,-0x34(%ebp)
    7628:	c7 45 d0 03 00 00 00 	movl   $0x3,-0x30(%ebp)
    762f:	8b 45 08             	mov    0x8(%ebp),%eax
    7632:	c1 f8 08             	sar    $0x8,%eax
    7635:	0f b6 c0             	movzbl %al,%eax
    7638:	8b 04 85 84 f7 00 00 	mov    0xf784(,%eax,4),%eax
    763f:	83 f8 ec             	cmp    $0xffffffec,%eax
    7642:	75 1c                	jne    7660 <read_super_block+0x6b>
    7644:	68 73 01 00 00       	push   $0x173
    7649:	68 92 b9 00 00       	push   $0xb992
    764e:	68 92 b9 00 00       	push   $0xb992
    7653:	68 c8 ba 00 00       	push   $0xbac8
    7658:	e8 56 f4 ff ff       	call   6ab3 <assertion_failure>
    765d:	83 c4 10             	add    $0x10,%esp
    7660:	8b 45 08             	mov    0x8(%ebp),%eax
    7663:	c1 f8 08             	sar    $0x8,%eax
    7666:	0f b6 c0             	movzbl %al,%eax
    7669:	8b 04 85 84 f7 00 00 	mov    0xf784(,%eax,4),%eax
    7670:	83 ec 04             	sub    $0x4,%esp
    7673:	8d 55 c0             	lea    -0x40(%ebp),%edx
    7676:	52                   	push   %edx
    7677:	50                   	push   %eax
    7678:	6a 03                	push   $0x3
    767a:	e8 f0 c7 ff ff       	call   3e6f <send_recv>
    767f:	83 c4 10             	add    $0x10,%esp
    7682:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    7689:	eb 15                	jmp    76a0 <read_super_block+0xab>
    768b:	8b 45 f4             	mov    -0xc(%ebp),%eax
    768e:	6b c0 3c             	imul   $0x3c,%eax,%eax
    7691:	05 78 b0 04 00       	add    $0x4b078,%eax
    7696:	8b 00                	mov    (%eax),%eax
    7698:	85 c0                	test   %eax,%eax
    769a:	74 0c                	je     76a8 <read_super_block+0xb3>
    769c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    76a0:	83 7d f4 07          	cmpl   $0x7,-0xc(%ebp)
    76a4:	7e e5                	jle    768b <read_super_block+0x96>
    76a6:	eb 01                	jmp    76a9 <read_super_block+0xb4>
    76a8:	90                   	nop
    76a9:	83 7d f4 08          	cmpl   $0x8,-0xc(%ebp)
    76ad:	75 10                	jne    76bf <read_super_block+0xca>
    76af:	83 ec 0c             	sub    $0xc,%esp
    76b2:	68 f7 ba 00 00       	push   $0xbaf7
    76b7:	e8 0b a5 ff ff       	call   1bc7 <panic>
    76bc:	83 c4 10             	add    $0x10,%esp
    76bf:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    76c3:	74 1c                	je     76e1 <read_super_block+0xec>
    76c5:	68 7d 01 00 00       	push   $0x17d
    76ca:	68 92 b9 00 00       	push   $0xb992
    76cf:	68 92 b9 00 00       	push   $0xb992
    76d4:	68 11 bb 00 00       	push   $0xbb11
    76d9:	e8 d5 f3 ff ff       	call   6ab3 <assertion_failure>
    76de:	83 c4 10             	add    $0x10,%esp
    76e1:	a1 9c f7 00 00       	mov    0xf79c,%eax
    76e6:	89 45 f0             	mov    %eax,-0x10(%ebp)
    76e9:	8b 45 f4             	mov    -0xc(%ebp),%eax
    76ec:	6b c0 3c             	imul   $0x3c,%eax,%eax
    76ef:	8d 90 40 b0 04 00    	lea    0x4b040(%eax),%edx
    76f5:	8b 45 f0             	mov    -0x10(%ebp),%eax
    76f8:	8b 08                	mov    (%eax),%ecx
    76fa:	89 0a                	mov    %ecx,(%edx)
    76fc:	8b 48 04             	mov    0x4(%eax),%ecx
    76ff:	89 4a 04             	mov    %ecx,0x4(%edx)
    7702:	8b 48 08             	mov    0x8(%eax),%ecx
    7705:	89 4a 08             	mov    %ecx,0x8(%edx)
    7708:	8b 48 0c             	mov    0xc(%eax),%ecx
    770b:	89 4a 0c             	mov    %ecx,0xc(%edx)
    770e:	8b 48 10             	mov    0x10(%eax),%ecx
    7711:	89 4a 10             	mov    %ecx,0x10(%edx)
    7714:	8b 48 14             	mov    0x14(%eax),%ecx
    7717:	89 4a 14             	mov    %ecx,0x14(%edx)
    771a:	8b 48 18             	mov    0x18(%eax),%ecx
    771d:	89 4a 18             	mov    %ecx,0x18(%edx)
    7720:	8b 48 1c             	mov    0x1c(%eax),%ecx
    7723:	89 4a 1c             	mov    %ecx,0x1c(%edx)
    7726:	8b 48 20             	mov    0x20(%eax),%ecx
    7729:	89 4a 20             	mov    %ecx,0x20(%edx)
    772c:	8b 48 24             	mov    0x24(%eax),%ecx
    772f:	89 4a 24             	mov    %ecx,0x24(%edx)
    7732:	8b 48 28             	mov    0x28(%eax),%ecx
    7735:	89 4a 28             	mov    %ecx,0x28(%edx)
    7738:	8b 48 2c             	mov    0x2c(%eax),%ecx
    773b:	89 4a 2c             	mov    %ecx,0x2c(%edx)
    773e:	8b 48 30             	mov    0x30(%eax),%ecx
    7741:	89 4a 30             	mov    %ecx,0x30(%edx)
    7744:	8b 48 34             	mov    0x34(%eax),%ecx
    7747:	89 4a 34             	mov    %ecx,0x34(%edx)
    774a:	8b 40 38             	mov    0x38(%eax),%eax
    774d:	89 42 38             	mov    %eax,0x38(%edx)
    7750:	8b 45 f4             	mov    -0xc(%ebp),%eax
    7753:	6b c0 3c             	imul   $0x3c,%eax,%eax
    7756:	8d 90 78 b0 04 00    	lea    0x4b078(%eax),%edx
    775c:	8b 45 08             	mov    0x8(%ebp),%eax
    775f:	89 02                	mov    %eax,(%edx)
    7761:	90                   	nop
    7762:	c9                   	leave  
    7763:	c3                   	ret    

00007764 <get_super_block>:
    7764:	55                   	push   %ebp
    7765:	89 e5                	mov    %esp,%ebp
    7767:	83 ec 18             	sub    $0x18,%esp
    776a:	c7 45 f4 40 b0 04 00 	movl   $0x4b040,-0xc(%ebp)
    7771:	eb 14                	jmp    7787 <get_super_block+0x23>
    7773:	8b 45 f4             	mov    -0xc(%ebp),%eax
    7776:	8b 40 38             	mov    0x38(%eax),%eax
    7779:	39 45 08             	cmp    %eax,0x8(%ebp)
    777c:	75 05                	jne    7783 <get_super_block+0x1f>
    777e:	8b 45 f4             	mov    -0xc(%ebp),%eax
    7781:	eb 25                	jmp    77a8 <get_super_block+0x44>
    7783:	83 45 f4 3c          	addl   $0x3c,-0xc(%ebp)
    7787:	81 7d f4 20 b2 04 00 	cmpl   $0x4b220,-0xc(%ebp)
    778e:	72 e3                	jb     7773 <get_super_block+0xf>
    7790:	83 ec 08             	sub    $0x8,%esp
    7793:	ff 75 08             	pushl  0x8(%ebp)
    7796:	68 18 bb 00 00       	push   $0xbb18
    779b:	e8 27 a4 ff ff       	call   1bc7 <panic>
    77a0:	83 c4 10             	add    $0x10,%esp
    77a3:	b8 00 00 00 00       	mov    $0x0,%eax
    77a8:	c9                   	leave  
    77a9:	c3                   	ret    

000077aa <get_inode>:
    77aa:	55                   	push   %ebp
    77ab:	89 e5                	mov    %esp,%ebp
    77ad:	83 ec 28             	sub    $0x28,%esp
    77b0:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    77b4:	75 0a                	jne    77c0 <get_inode+0x16>
    77b6:	b8 00 00 00 00       	mov    $0x0,%eax
    77bb:	e9 4b 01 00 00       	jmp    790b <get_inode+0x161>
    77c0:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    77c7:	c7 45 f4 a0 08 01 00 	movl   $0x108a0,-0xc(%ebp)
    77ce:	eb 47                	jmp    7817 <get_inode+0x6d>
    77d0:	8b 45 f4             	mov    -0xc(%ebp),%eax
    77d3:	8b 40 24             	mov    0x24(%eax),%eax
    77d6:	85 c0                	test   %eax,%eax
    77d8:	74 2d                	je     7807 <get_inode+0x5d>
    77da:	8b 45 f4             	mov    -0xc(%ebp),%eax
    77dd:	8b 40 20             	mov    0x20(%eax),%eax
    77e0:	39 45 08             	cmp    %eax,0x8(%ebp)
    77e3:	75 2e                	jne    7813 <get_inode+0x69>
    77e5:	8b 45 f4             	mov    -0xc(%ebp),%eax
    77e8:	8b 40 28             	mov    0x28(%eax),%eax
    77eb:	39 45 0c             	cmp    %eax,0xc(%ebp)
    77ee:	75 23                	jne    7813 <get_inode+0x69>
    77f0:	8b 45 f4             	mov    -0xc(%ebp),%eax
    77f3:	8b 40 24             	mov    0x24(%eax),%eax
    77f6:	8d 50 01             	lea    0x1(%eax),%edx
    77f9:	8b 45 f4             	mov    -0xc(%ebp),%eax
    77fc:	89 50 24             	mov    %edx,0x24(%eax)
    77ff:	8b 45 f4             	mov    -0xc(%ebp),%eax
    7802:	e9 04 01 00 00       	jmp    790b <get_inode+0x161>
    7807:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    780b:	75 06                	jne    7813 <get_inode+0x69>
    780d:	8b 45 f4             	mov    -0xc(%ebp),%eax
    7810:	89 45 f0             	mov    %eax,-0x10(%ebp)
    7813:	83 45 f4 2c          	addl   $0x2c,-0xc(%ebp)
    7817:	81 7d f4 a0 13 01 00 	cmpl   $0x113a0,-0xc(%ebp)
    781e:	72 b0                	jb     77d0 <get_inode+0x26>
    7820:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    7824:	75 10                	jne    7836 <get_inode+0x8c>
    7826:	83 ec 0c             	sub    $0xc,%esp
    7829:	68 3c bb 00 00       	push   $0xbb3c
    782e:	e8 94 a3 ff ff       	call   1bc7 <panic>
    7833:	83 c4 10             	add    $0x10,%esp
    7836:	8b 45 f0             	mov    -0x10(%ebp),%eax
    7839:	8b 55 08             	mov    0x8(%ebp),%edx
    783c:	89 50 20             	mov    %edx,0x20(%eax)
    783f:	8b 45 f0             	mov    -0x10(%ebp),%eax
    7842:	8b 55 0c             	mov    0xc(%ebp),%edx
    7845:	89 50 28             	mov    %edx,0x28(%eax)
    7848:	8b 45 f0             	mov    -0x10(%ebp),%eax
    784b:	c7 40 24 01 00 00 00 	movl   $0x1,0x24(%eax)
    7852:	83 ec 0c             	sub    $0xc,%esp
    7855:	ff 75 08             	pushl  0x8(%ebp)
    7858:	e8 07 ff ff ff       	call   7764 <get_super_block>
    785d:	83 c4 10             	add    $0x10,%esp
    7860:	89 45 ec             	mov    %eax,-0x14(%ebp)
    7863:	8b 45 ec             	mov    -0x14(%ebp),%eax
    7866:	8b 50 0c             	mov    0xc(%eax),%edx
    7869:	8b 45 ec             	mov    -0x14(%ebp),%eax
    786c:	8b 40 10             	mov    0x10(%eax),%eax
    786f:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
    7872:	8b 45 0c             	mov    0xc(%ebp),%eax
    7875:	83 e8 01             	sub    $0x1,%eax
    7878:	8d 50 0f             	lea    0xf(%eax),%edx
    787b:	85 c0                	test   %eax,%eax
    787d:	0f 48 c2             	cmovs  %edx,%eax
    7880:	c1 f8 04             	sar    $0x4,%eax
    7883:	01 c8                	add    %ecx,%eax
    7885:	83 c0 02             	add    $0x2,%eax
    7888:	89 45 e8             	mov    %eax,-0x18(%ebp)
    788b:	8b 0d 9c f7 00 00    	mov    0xf79c,%ecx
    7891:	8b 45 e8             	mov    -0x18(%ebp),%eax
    7894:	c1 e0 09             	shl    $0x9,%eax
    7897:	99                   	cltd   
    7898:	83 ec 04             	sub    $0x4,%esp
    789b:	51                   	push   %ecx
    789c:	6a 03                	push   $0x3
    789e:	68 00 02 00 00       	push   $0x200
    78a3:	52                   	push   %edx
    78a4:	50                   	push   %eax
    78a5:	ff 75 08             	pushl  0x8(%ebp)
    78a8:	68 eb 03 00 00       	push   $0x3eb
    78ad:	e8 aa fc ff ff       	call   755c <rw_sector>
    78b2:	83 c4 20             	add    $0x20,%esp
    78b5:	8b 0d 9c f7 00 00    	mov    0xf79c,%ecx
    78bb:	8b 45 0c             	mov    0xc(%ebp),%eax
    78be:	8d 50 ff             	lea    -0x1(%eax),%edx
    78c1:	89 d0                	mov    %edx,%eax
    78c3:	c1 f8 1f             	sar    $0x1f,%eax
    78c6:	c1 e8 1c             	shr    $0x1c,%eax
    78c9:	01 c2                	add    %eax,%edx
    78cb:	83 e2 0f             	and    $0xf,%edx
    78ce:	29 c2                	sub    %eax,%edx
    78d0:	89 d0                	mov    %edx,%eax
    78d2:	c1 e0 05             	shl    $0x5,%eax
    78d5:	01 c8                	add    %ecx,%eax
    78d7:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    78da:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    78dd:	8b 10                	mov    (%eax),%edx
    78df:	8b 45 f0             	mov    -0x10(%ebp),%eax
    78e2:	89 10                	mov    %edx,(%eax)
    78e4:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    78e7:	8b 50 04             	mov    0x4(%eax),%edx
    78ea:	8b 45 f0             	mov    -0x10(%ebp),%eax
    78ed:	89 50 04             	mov    %edx,0x4(%eax)
    78f0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    78f3:	8b 50 08             	mov    0x8(%eax),%edx
    78f6:	8b 45 f0             	mov    -0x10(%ebp),%eax
    78f9:	89 50 08             	mov    %edx,0x8(%eax)
    78fc:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    78ff:	8b 50 0c             	mov    0xc(%eax),%edx
    7902:	8b 45 f0             	mov    -0x10(%ebp),%eax
    7905:	89 50 0c             	mov    %edx,0xc(%eax)
    7908:	8b 45 f0             	mov    -0x10(%ebp),%eax
    790b:	c9                   	leave  
    790c:	c3                   	ret    

0000790d <put_inode>:
    790d:	55                   	push   %ebp
    790e:	89 e5                	mov    %esp,%ebp
    7910:	83 ec 08             	sub    $0x8,%esp
    7913:	8b 45 08             	mov    0x8(%ebp),%eax
    7916:	8b 40 24             	mov    0x24(%eax),%eax
    7919:	85 c0                	test   %eax,%eax
    791b:	7f 1c                	jg     7939 <put_inode+0x2c>
    791d:	68 e1 01 00 00       	push   $0x1e1
    7922:	68 92 b9 00 00       	push   $0xb992
    7927:	68 92 b9 00 00       	push   $0xb992
    792c:	68 54 bb 00 00       	push   $0xbb54
    7931:	e8 7d f1 ff ff       	call   6ab3 <assertion_failure>
    7936:	83 c4 10             	add    $0x10,%esp
    7939:	8b 45 08             	mov    0x8(%ebp),%eax
    793c:	8b 40 24             	mov    0x24(%eax),%eax
    793f:	8d 50 ff             	lea    -0x1(%eax),%edx
    7942:	8b 45 08             	mov    0x8(%ebp),%eax
    7945:	89 50 24             	mov    %edx,0x24(%eax)
    7948:	90                   	nop
    7949:	c9                   	leave  
    794a:	c3                   	ret    

0000794b <sync_inode>:
    794b:	55                   	push   %ebp
    794c:	89 e5                	mov    %esp,%ebp
    794e:	53                   	push   %ebx
    794f:	83 ec 14             	sub    $0x14,%esp
    7952:	8b 45 08             	mov    0x8(%ebp),%eax
    7955:	8b 40 20             	mov    0x20(%eax),%eax
    7958:	83 ec 0c             	sub    $0xc,%esp
    795b:	50                   	push   %eax
    795c:	e8 03 fe ff ff       	call   7764 <get_super_block>
    7961:	83 c4 10             	add    $0x10,%esp
    7964:	89 45 f4             	mov    %eax,-0xc(%ebp)
    7967:	8b 45 f4             	mov    -0xc(%ebp),%eax
    796a:	8b 50 0c             	mov    0xc(%eax),%edx
    796d:	8b 45 f4             	mov    -0xc(%ebp),%eax
    7970:	8b 40 10             	mov    0x10(%eax),%eax
    7973:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
    7976:	8b 45 08             	mov    0x8(%ebp),%eax
    7979:	8b 40 28             	mov    0x28(%eax),%eax
    797c:	83 e8 01             	sub    $0x1,%eax
    797f:	8d 50 0f             	lea    0xf(%eax),%edx
    7982:	85 c0                	test   %eax,%eax
    7984:	0f 48 c2             	cmovs  %edx,%eax
    7987:	c1 f8 04             	sar    $0x4,%eax
    798a:	01 c8                	add    %ecx,%eax
    798c:	83 c0 02             	add    $0x2,%eax
    798f:	89 45 f0             	mov    %eax,-0x10(%ebp)
    7992:	8b 1d 9c f7 00 00    	mov    0xf79c,%ebx
    7998:	8b 45 f0             	mov    -0x10(%ebp),%eax
    799b:	c1 e0 09             	shl    $0x9,%eax
    799e:	99                   	cltd   
    799f:	8b 4d 08             	mov    0x8(%ebp),%ecx
    79a2:	8b 49 20             	mov    0x20(%ecx),%ecx
    79a5:	83 ec 04             	sub    $0x4,%esp
    79a8:	53                   	push   %ebx
    79a9:	6a 03                	push   $0x3
    79ab:	68 00 02 00 00       	push   $0x200
    79b0:	52                   	push   %edx
    79b1:	50                   	push   %eax
    79b2:	51                   	push   %ecx
    79b3:	68 eb 03 00 00       	push   $0x3eb
    79b8:	e8 9f fb ff ff       	call   755c <rw_sector>
    79bd:	83 c4 20             	add    $0x20,%esp
    79c0:	8b 0d 9c f7 00 00    	mov    0xf79c,%ecx
    79c6:	8b 45 08             	mov    0x8(%ebp),%eax
    79c9:	8b 40 28             	mov    0x28(%eax),%eax
    79cc:	8d 50 ff             	lea    -0x1(%eax),%edx
    79cf:	89 d0                	mov    %edx,%eax
    79d1:	c1 f8 1f             	sar    $0x1f,%eax
    79d4:	c1 e8 1c             	shr    $0x1c,%eax
    79d7:	01 c2                	add    %eax,%edx
    79d9:	83 e2 0f             	and    $0xf,%edx
    79dc:	29 c2                	sub    %eax,%edx
    79de:	89 d0                	mov    %edx,%eax
    79e0:	c1 e0 05             	shl    $0x5,%eax
    79e3:	01 c8                	add    %ecx,%eax
    79e5:	89 45 ec             	mov    %eax,-0x14(%ebp)
    79e8:	8b 45 08             	mov    0x8(%ebp),%eax
    79eb:	8b 10                	mov    (%eax),%edx
    79ed:	8b 45 ec             	mov    -0x14(%ebp),%eax
    79f0:	89 10                	mov    %edx,(%eax)
    79f2:	8b 45 08             	mov    0x8(%ebp),%eax
    79f5:	8b 50 04             	mov    0x4(%eax),%edx
    79f8:	8b 45 ec             	mov    -0x14(%ebp),%eax
    79fb:	89 50 04             	mov    %edx,0x4(%eax)
    79fe:	8b 45 08             	mov    0x8(%ebp),%eax
    7a01:	8b 50 08             	mov    0x8(%eax),%edx
    7a04:	8b 45 ec             	mov    -0x14(%ebp),%eax
    7a07:	89 50 08             	mov    %edx,0x8(%eax)
    7a0a:	8b 45 08             	mov    0x8(%ebp),%eax
    7a0d:	8b 50 0c             	mov    0xc(%eax),%edx
    7a10:	8b 45 ec             	mov    -0x14(%ebp),%eax
    7a13:	89 50 0c             	mov    %edx,0xc(%eax)
    7a16:	8b 1d 9c f7 00 00    	mov    0xf79c,%ebx
    7a1c:	8b 45 f0             	mov    -0x10(%ebp),%eax
    7a1f:	c1 e0 09             	shl    $0x9,%eax
    7a22:	99                   	cltd   
    7a23:	8b 4d 08             	mov    0x8(%ebp),%ecx
    7a26:	8b 49 20             	mov    0x20(%ecx),%ecx
    7a29:	83 ec 04             	sub    $0x4,%esp
    7a2c:	53                   	push   %ebx
    7a2d:	6a 03                	push   $0x3
    7a2f:	68 00 02 00 00       	push   $0x200
    7a34:	52                   	push   %edx
    7a35:	50                   	push   %eax
    7a36:	51                   	push   %ecx
    7a37:	68 ec 03 00 00       	push   $0x3ec
    7a3c:	e8 1b fb ff ff       	call   755c <rw_sector>
    7a41:	83 c4 20             	add    $0x20,%esp
    7a44:	90                   	nop
    7a45:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    7a48:	c9                   	leave  
    7a49:	c3                   	ret    

00007a4a <do_open>:
    7a4a:	55                   	push   %ebp
    7a4b:	89 e5                	mov    %esp,%ebp
    7a4d:	53                   	push   %ebx
    7a4e:	81 ec 34 01 00 00    	sub    $0x134,%esp
    7a54:	c7 45 f4 ff ff ff ff 	movl   $0xffffffff,-0xc(%ebp)
    7a5b:	a1 e8 a4 04 00       	mov    0x4a4e8,%eax
    7a60:	89 45 e8             	mov    %eax,-0x18(%ebp)
    7a63:	a1 ec a4 04 00       	mov    0x4a4ec,%eax
    7a68:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    7a6b:	a1 e0 a4 04 00       	mov    0x4a4e0,%eax
    7a70:	89 45 e0             	mov    %eax,-0x20(%ebp)
    7a73:	83 7d e4 7f          	cmpl   $0x7f,-0x1c(%ebp)
    7a77:	7e 19                	jle    7a92 <do_open+0x48>
    7a79:	6a 33                	push   $0x33
    7a7b:	68 68 bb 00 00       	push   $0xbb68
    7a80:	68 68 bb 00 00       	push   $0xbb68
    7a85:	68 72 bb 00 00       	push   $0xbb72
    7a8a:	e8 24 f0 ff ff       	call   6ab3 <assertion_failure>
    7a8f:	83 c4 10             	add    $0x10,%esp
    7a92:	a1 08 a5 04 00       	mov    0x4a508,%eax
    7a97:	83 ec 08             	sub    $0x8,%esp
    7a9a:	50                   	push   %eax
    7a9b:	ff 75 e0             	pushl  -0x20(%ebp)
    7a9e:	e8 d3 c4 ff ff       	call   3f76 <va2la>
    7aa3:	83 c4 10             	add    $0x10,%esp
    7aa6:	89 c3                	mov    %eax,%ebx
    7aa8:	83 ec 08             	sub    $0x8,%esp
    7aab:	8d 85 54 ff ff ff    	lea    -0xac(%ebp),%eax
    7ab1:	50                   	push   %eax
    7ab2:	6a 03                	push   $0x3
    7ab4:	e8 bd c4 ff ff       	call   3f76 <va2la>
    7ab9:	83 c4 10             	add    $0x10,%esp
    7abc:	83 ec 04             	sub    $0x4,%esp
    7abf:	ff 75 e4             	pushl  -0x1c(%ebp)
    7ac2:	53                   	push   %ebx
    7ac3:	50                   	push   %eax
    7ac4:	e8 17 ee ff ff       	call   68e0 <memcpy>
    7ac9:	83 c4 10             	add    $0x10,%esp
    7acc:	8d 95 54 ff ff ff    	lea    -0xac(%ebp),%edx
    7ad2:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    7ad5:	01 d0                	add    %edx,%eax
    7ad7:	c6 00 00             	movb   $0x0,(%eax)
    7ada:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    7ae1:	eb 1f                	jmp    7b02 <do_open+0xb8>
    7ae3:	a1 c4 97 04 00       	mov    0x497c4,%eax
    7ae8:	8b 55 f0             	mov    -0x10(%ebp),%edx
    7aeb:	83 c2 24             	add    $0x24,%edx
    7aee:	8b 44 90 04          	mov    0x4(%eax,%edx,4),%eax
    7af2:	85 c0                	test   %eax,%eax
    7af4:	75 08                	jne    7afe <do_open+0xb4>
    7af6:	8b 45 f0             	mov    -0x10(%ebp),%eax
    7af9:	89 45 f4             	mov    %eax,-0xc(%ebp)
    7afc:	eb 0a                	jmp    7b08 <do_open+0xbe>
    7afe:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    7b02:	83 7d f0 3f          	cmpl   $0x3f,-0x10(%ebp)
    7b06:	7e db                	jle    7ae3 <do_open+0x99>
    7b08:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    7b0c:	78 06                	js     7b14 <do_open+0xca>
    7b0e:	83 7d f4 3f          	cmpl   $0x3f,-0xc(%ebp)
    7b12:	7e 24                	jle    7b38 <do_open+0xee>
    7b14:	a1 c4 97 04 00       	mov    0x497c4,%eax
    7b19:	2d e0 b2 04 00       	sub    $0x4b2e0,%eax
    7b1e:	c1 f8 02             	sar    $0x2,%eax
    7b21:	69 c0 6d b1 32 7c    	imul   $0x7c32b16d,%eax,%eax
    7b27:	83 ec 08             	sub    $0x8,%esp
    7b2a:	50                   	push   %eax
    7b2b:	68 86 bb 00 00       	push   $0xbb86
    7b30:	e8 92 a0 ff ff       	call   1bc7 <panic>
    7b35:	83 c4 10             	add    $0x10,%esp
    7b38:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    7b3f:	eb 1b                	jmp    7b5c <do_open+0x112>
    7b41:	8b 55 f0             	mov    -0x10(%ebp),%edx
    7b44:	89 d0                	mov    %edx,%eax
    7b46:	01 c0                	add    %eax,%eax
    7b48:	01 d0                	add    %edx,%eax
    7b4a:	c1 e0 02             	shl    $0x2,%eax
    7b4d:	05 28 a5 04 00       	add    $0x4a528,%eax
    7b52:	8b 00                	mov    (%eax),%eax
    7b54:	85 c0                	test   %eax,%eax
    7b56:	74 0c                	je     7b64 <do_open+0x11a>
    7b58:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    7b5c:	83 7d f0 3f          	cmpl   $0x3f,-0x10(%ebp)
    7b60:	7e df                	jle    7b41 <do_open+0xf7>
    7b62:	eb 01                	jmp    7b65 <do_open+0x11b>
    7b64:	90                   	nop
    7b65:	83 7d f0 3f          	cmpl   $0x3f,-0x10(%ebp)
    7b69:	7e 24                	jle    7b8f <do_open+0x145>
    7b6b:	a1 c4 97 04 00       	mov    0x497c4,%eax
    7b70:	2d e0 b2 04 00       	sub    $0x4b2e0,%eax
    7b75:	c1 f8 02             	sar    $0x2,%eax
    7b78:	69 c0 6d b1 32 7c    	imul   $0x7c32b16d,%eax,%eax
    7b7e:	83 ec 08             	sub    $0x8,%esp
    7b81:	50                   	push   %eax
    7b82:	68 a0 bb 00 00       	push   $0xbba0
    7b87:	e8 3b a0 ff ff       	call   1bc7 <panic>
    7b8c:	83 c4 10             	add    $0x10,%esp
    7b8f:	83 ec 0c             	sub    $0xc,%esp
    7b92:	8d 85 54 ff ff ff    	lea    -0xac(%ebp),%eax
    7b98:	50                   	push   %eax
    7b99:	e8 3b 09 00 00       	call   84d9 <search_file>
    7b9e:	83 c4 10             	add    $0x10,%esp
    7ba1:	89 45 dc             	mov    %eax,-0x24(%ebp)
    7ba4:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    7bab:	8b 45 e8             	mov    -0x18(%ebp),%eax
    7bae:	83 e0 01             	and    $0x1,%eax
    7bb1:	85 c0                	test   %eax,%eax
    7bb3:	74 3a                	je     7bef <do_open+0x1a5>
    7bb5:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
    7bb9:	74 1a                	je     7bd5 <do_open+0x18b>
    7bbb:	83 ec 0c             	sub    $0xc,%esp
    7bbe:	68 c0 bb 00 00       	push   $0xbbc0
    7bc3:	e8 ff e6 ff ff       	call   62c7 <printl>
    7bc8:	83 c4 10             	add    $0x10,%esp
    7bcb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    7bd0:	e9 0c 02 00 00       	jmp    7de1 <do_open+0x397>
    7bd5:	83 ec 08             	sub    $0x8,%esp
    7bd8:	ff 75 e8             	pushl  -0x18(%ebp)
    7bdb:	8d 85 54 ff ff ff    	lea    -0xac(%ebp),%eax
    7be1:	50                   	push   %eax
    7be2:	e8 ff 01 00 00       	call   7de6 <create_file>
    7be7:	83 c4 10             	add    $0x10,%esp
    7bea:	89 45 ec             	mov    %eax,-0x14(%ebp)
    7bed:	eb 6c                	jmp    7c5b <do_open+0x211>
    7bef:	8b 45 e8             	mov    -0x18(%ebp),%eax
    7bf2:	83 e0 02             	and    $0x2,%eax
    7bf5:	85 c0                	test   %eax,%eax
    7bf7:	75 19                	jne    7c12 <do_open+0x1c8>
    7bf9:	6a 58                	push   $0x58
    7bfb:	68 68 bb 00 00       	push   $0xbb68
    7c00:	68 68 bb 00 00       	push   $0xbb68
    7c05:	68 ce bb 00 00       	push   $0xbbce
    7c0a:	e8 a4 ee ff ff       	call   6ab3 <assertion_failure>
    7c0f:	83 c4 10             	add    $0x10,%esp
    7c12:	83 ec 04             	sub    $0x4,%esp
    7c15:	8d 85 50 ff ff ff    	lea    -0xb0(%ebp),%eax
    7c1b:	50                   	push   %eax
    7c1c:	8d 85 54 ff ff ff    	lea    -0xac(%ebp),%eax
    7c22:	50                   	push   %eax
    7c23:	8d 85 d0 fe ff ff    	lea    -0x130(%ebp),%eax
    7c29:	50                   	push   %eax
    7c2a:	e8 00 0a 00 00       	call   862f <strip_path>
    7c2f:	83 c4 10             	add    $0x10,%esp
    7c32:	85 c0                	test   %eax,%eax
    7c34:	74 0a                	je     7c40 <do_open+0x1f6>
    7c36:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    7c3b:	e9 a1 01 00 00       	jmp    7de1 <do_open+0x397>
    7c40:	8b 85 50 ff ff ff    	mov    -0xb0(%ebp),%eax
    7c46:	8b 40 20             	mov    0x20(%eax),%eax
    7c49:	83 ec 08             	sub    $0x8,%esp
    7c4c:	ff 75 dc             	pushl  -0x24(%ebp)
    7c4f:	50                   	push   %eax
    7c50:	e8 55 fb ff ff       	call   77aa <get_inode>
    7c55:	83 c4 10             	add    $0x10,%esp
    7c58:	89 45 ec             	mov    %eax,-0x14(%ebp)
    7c5b:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
    7c5f:	0f 84 72 01 00 00    	je     7dd7 <do_open+0x38d>
    7c65:	8b 0d c4 97 04 00    	mov    0x497c4,%ecx
    7c6b:	8b 55 f0             	mov    -0x10(%ebp),%edx
    7c6e:	89 d0                	mov    %edx,%eax
    7c70:	01 c0                	add    %eax,%eax
    7c72:	01 d0                	add    %edx,%eax
    7c74:	c1 e0 02             	shl    $0x2,%eax
    7c77:	8d 90 20 a5 04 00    	lea    0x4a520(%eax),%edx
    7c7d:	8b 45 f4             	mov    -0xc(%ebp),%eax
    7c80:	83 c0 24             	add    $0x24,%eax
    7c83:	89 54 81 04          	mov    %edx,0x4(%ecx,%eax,4)
    7c87:	8b 55 f0             	mov    -0x10(%ebp),%edx
    7c8a:	89 d0                	mov    %edx,%eax
    7c8c:	01 c0                	add    %eax,%eax
    7c8e:	01 d0                	add    %edx,%eax
    7c90:	c1 e0 02             	shl    $0x2,%eax
    7c93:	8d 90 28 a5 04 00    	lea    0x4a528(%eax),%edx
    7c99:	8b 45 ec             	mov    -0x14(%ebp),%eax
    7c9c:	89 02                	mov    %eax,(%edx)
    7c9e:	8b 55 f0             	mov    -0x10(%ebp),%edx
    7ca1:	89 d0                	mov    %edx,%eax
    7ca3:	01 c0                	add    %eax,%eax
    7ca5:	01 d0                	add    %edx,%eax
    7ca7:	c1 e0 02             	shl    $0x2,%eax
    7caa:	8d 90 20 a5 04 00    	lea    0x4a520(%eax),%edx
    7cb0:	8b 45 e8             	mov    -0x18(%ebp),%eax
    7cb3:	89 02                	mov    %eax,(%edx)
    7cb5:	8b 55 f0             	mov    -0x10(%ebp),%edx
    7cb8:	89 d0                	mov    %edx,%eax
    7cba:	01 c0                	add    %eax,%eax
    7cbc:	01 d0                	add    %edx,%eax
    7cbe:	c1 e0 02             	shl    $0x2,%eax
    7cc1:	05 24 a5 04 00       	add    $0x4a524,%eax
    7cc6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
    7ccc:	8b 45 ec             	mov    -0x14(%ebp),%eax
    7ccf:	8b 00                	mov    (%eax),%eax
    7cd1:	25 00 f0 00 00       	and    $0xf000,%eax
    7cd6:	89 45 d8             	mov    %eax,-0x28(%ebp)
    7cd9:	81 7d d8 00 20 00 00 	cmpl   $0x2000,-0x28(%ebp)
    7ce0:	0f 85 9b 00 00 00    	jne    7d81 <do_open+0x337>
    7ce6:	c7 85 d4 fe ff ff e9 	movl   $0x3e9,-0x12c(%ebp)
    7ced:	03 00 00 
    7cf0:	8b 45 ec             	mov    -0x14(%ebp),%eax
    7cf3:	8b 40 08             	mov    0x8(%eax),%eax
    7cf6:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    7cf9:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    7cfc:	0f b6 c0             	movzbl %al,%eax
    7cff:	89 85 e4 fe ff ff    	mov    %eax,-0x11c(%ebp)
    7d05:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    7d08:	c1 f8 08             	sar    $0x8,%eax
    7d0b:	0f b6 c0             	movzbl %al,%eax
    7d0e:	83 f8 04             	cmp    $0x4,%eax
    7d11:	74 19                	je     7d2c <do_open+0x2e2>
    7d13:	6a 73                	push   $0x73
    7d15:	68 68 bb 00 00       	push   $0xbb68
    7d1a:	68 68 bb 00 00       	push   $0xbb68
    7d1f:	68 dd bb 00 00       	push   $0xbbdd
    7d24:	e8 8a ed ff ff       	call   6ab3 <assertion_failure>
    7d29:	83 c4 10             	add    $0x10,%esp
    7d2c:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    7d2f:	c1 f8 08             	sar    $0x8,%eax
    7d32:	0f b6 c0             	movzbl %al,%eax
    7d35:	8b 04 85 84 f7 00 00 	mov    0xf784(,%eax,4),%eax
    7d3c:	83 f8 ec             	cmp    $0xffffffec,%eax
    7d3f:	75 19                	jne    7d5a <do_open+0x310>
    7d41:	6a 74                	push   $0x74
    7d43:	68 68 bb 00 00       	push   $0xbb68
    7d48:	68 68 bb 00 00       	push   $0xbb68
    7d4d:	68 f0 bb 00 00       	push   $0xbbf0
    7d52:	e8 5c ed ff ff       	call   6ab3 <assertion_failure>
    7d57:	83 c4 10             	add    $0x10,%esp
    7d5a:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    7d5d:	c1 f8 08             	sar    $0x8,%eax
    7d60:	0f b6 c0             	movzbl %al,%eax
    7d63:	8b 04 85 84 f7 00 00 	mov    0xf784(,%eax,4),%eax
    7d6a:	83 ec 04             	sub    $0x4,%esp
    7d6d:	8d 95 d0 fe ff ff    	lea    -0x130(%ebp),%edx
    7d73:	52                   	push   %edx
    7d74:	50                   	push   %eax
    7d75:	6a 03                	push   $0x3
    7d77:	e8 f3 c0 ff ff       	call   3e6f <send_recv>
    7d7c:	83 c4 10             	add    $0x10,%esp
    7d7f:	eb 5d                	jmp    7dde <do_open+0x394>
    7d81:	81 7d d8 00 40 00 00 	cmpl   $0x4000,-0x28(%ebp)
    7d88:	75 26                	jne    7db0 <do_open+0x366>
    7d8a:	8b 45 ec             	mov    -0x14(%ebp),%eax
    7d8d:	8b 40 28             	mov    0x28(%eax),%eax
    7d90:	83 f8 01             	cmp    $0x1,%eax
    7d93:	74 49                	je     7dde <do_open+0x394>
    7d95:	6a 7c                	push   $0x7c
    7d97:	68 68 bb 00 00       	push   $0xbb68
    7d9c:	68 68 bb 00 00       	push   $0xbb68
    7da1:	68 1f bc 00 00       	push   $0xbc1f
    7da6:	e8 08 ed ff ff       	call   6ab3 <assertion_failure>
    7dab:	83 c4 10             	add    $0x10,%esp
    7dae:	eb 2e                	jmp    7dde <do_open+0x394>
    7db0:	8b 45 ec             	mov    -0x14(%ebp),%eax
    7db3:	8b 00                	mov    (%eax),%eax
    7db5:	3d 00 80 00 00       	cmp    $0x8000,%eax
    7dba:	74 22                	je     7dde <do_open+0x394>
    7dbc:	6a 7f                	push   $0x7f
    7dbe:	68 68 bb 00 00       	push   $0xbb68
    7dc3:	68 68 bb 00 00       	push   $0xbb68
    7dc8:	68 38 bc 00 00       	push   $0xbc38
    7dcd:	e8 e1 ec ff ff       	call   6ab3 <assertion_failure>
    7dd2:	83 c4 10             	add    $0x10,%esp
    7dd5:	eb 07                	jmp    7dde <do_open+0x394>
    7dd7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    7ddc:	eb 03                	jmp    7de1 <do_open+0x397>
    7dde:	8b 45 f4             	mov    -0xc(%ebp),%eax
    7de1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    7de4:	c9                   	leave  
    7de5:	c3                   	ret    

00007de6 <create_file>:
    7de6:	55                   	push   %ebp
    7de7:	89 e5                	mov    %esp,%ebp
    7de9:	81 ec 98 00 00 00    	sub    $0x98,%esp
    7def:	83 ec 04             	sub    $0x4,%esp
    7df2:	8d 85 68 ff ff ff    	lea    -0x98(%ebp),%eax
    7df8:	50                   	push   %eax
    7df9:	ff 75 08             	pushl  0x8(%ebp)
    7dfc:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
    7e02:	50                   	push   %eax
    7e03:	e8 27 08 00 00       	call   862f <strip_path>
    7e08:	83 c4 10             	add    $0x10,%esp
    7e0b:	85 c0                	test   %eax,%eax
    7e0d:	74 07                	je     7e16 <create_file+0x30>
    7e0f:	b8 00 00 00 00       	mov    $0x0,%eax
    7e14:	eb 76                	jmp    7e8c <create_file+0xa6>
    7e16:	8b 85 68 ff ff ff    	mov    -0x98(%ebp),%eax
    7e1c:	8b 40 20             	mov    0x20(%eax),%eax
    7e1f:	83 ec 0c             	sub    $0xc,%esp
    7e22:	50                   	push   %eax
    7e23:	e8 72 01 00 00       	call   7f9a <alloc_imap_bit>
    7e28:	83 c4 10             	add    $0x10,%esp
    7e2b:	89 45 f4             	mov    %eax,-0xc(%ebp)
    7e2e:	8b 85 68 ff ff ff    	mov    -0x98(%ebp),%eax
    7e34:	8b 40 20             	mov    0x20(%eax),%eax
    7e37:	83 ec 08             	sub    $0x8,%esp
    7e3a:	68 00 08 00 00       	push   $0x800
    7e3f:	50                   	push   %eax
    7e40:	e8 c2 02 00 00       	call   8107 <alloc_smap_bit>
    7e45:	83 c4 10             	add    $0x10,%esp
    7e48:	89 45 f0             	mov    %eax,-0x10(%ebp)
    7e4b:	8b 85 68 ff ff ff    	mov    -0x98(%ebp),%eax
    7e51:	8b 40 20             	mov    0x20(%eax),%eax
    7e54:	83 ec 04             	sub    $0x4,%esp
    7e57:	ff 75 f0             	pushl  -0x10(%ebp)
    7e5a:	ff 75 f4             	pushl  -0xc(%ebp)
    7e5d:	50                   	push   %eax
    7e5e:	e8 af 04 00 00       	call   8312 <new_inode>
    7e63:	83 c4 10             	add    $0x10,%esp
    7e66:	89 45 ec             	mov    %eax,-0x14(%ebp)
    7e69:	8b 45 ec             	mov    -0x14(%ebp),%eax
    7e6c:	8b 50 28             	mov    0x28(%eax),%edx
    7e6f:	8b 85 68 ff ff ff    	mov    -0x98(%ebp),%eax
    7e75:	83 ec 04             	sub    $0x4,%esp
    7e78:	8d 8d 6c ff ff ff    	lea    -0x94(%ebp),%ecx
    7e7e:	51                   	push   %ecx
    7e7f:	52                   	push   %edx
    7e80:	50                   	push   %eax
    7e81:	e8 fb 04 00 00       	call   8381 <new_dir_entry>
    7e86:	83 c4 10             	add    $0x10,%esp
    7e89:	8b 45 ec             	mov    -0x14(%ebp),%eax
    7e8c:	c9                   	leave  
    7e8d:	c3                   	ret    

00007e8e <do_close>:
    7e8e:	55                   	push   %ebp
    7e8f:	89 e5                	mov    %esp,%ebp
    7e91:	83 ec 18             	sub    $0x18,%esp
    7e94:	a1 e8 a4 04 00       	mov    0x4a4e8,%eax
    7e99:	89 45 f4             	mov    %eax,-0xc(%ebp)
    7e9c:	a1 c4 97 04 00       	mov    0x497c4,%eax
    7ea1:	8b 55 f4             	mov    -0xc(%ebp),%edx
    7ea4:	83 c2 24             	add    $0x24,%edx
    7ea7:	8b 44 90 04          	mov    0x4(%eax,%edx,4),%eax
    7eab:	8b 40 08             	mov    0x8(%eax),%eax
    7eae:	83 ec 0c             	sub    $0xc,%esp
    7eb1:	50                   	push   %eax
    7eb2:	e8 56 fa ff ff       	call   790d <put_inode>
    7eb7:	83 c4 10             	add    $0x10,%esp
    7eba:	a1 c4 97 04 00       	mov    0x497c4,%eax
    7ebf:	8b 55 f4             	mov    -0xc(%ebp),%edx
    7ec2:	83 c2 24             	add    $0x24,%edx
    7ec5:	8b 44 90 04          	mov    0x4(%eax,%edx,4),%eax
    7ec9:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
    7ed0:	a1 c4 97 04 00       	mov    0x497c4,%eax
    7ed5:	8b 55 f4             	mov    -0xc(%ebp),%edx
    7ed8:	83 c2 24             	add    $0x24,%edx
    7edb:	c7 44 90 04 00 00 00 	movl   $0x0,0x4(%eax,%edx,4)
    7ee2:	00 
    7ee3:	b8 00 00 00 00       	mov    $0x0,%eax
    7ee8:	c9                   	leave  
    7ee9:	c3                   	ret    

00007eea <do_lseek>:
    7eea:	55                   	push   %ebp
    7eeb:	89 e5                	mov    %esp,%ebp
    7eed:	83 ec 20             	sub    $0x20,%esp
    7ef0:	a1 e8 a4 04 00       	mov    0x4a4e8,%eax
    7ef5:	89 45 f8             	mov    %eax,-0x8(%ebp)
    7ef8:	a1 ec a4 04 00       	mov    0x4a4ec,%eax
    7efd:	89 45 f4             	mov    %eax,-0xc(%ebp)
    7f00:	a1 f0 a4 04 00       	mov    0x4a4f0,%eax
    7f05:	89 45 f0             	mov    %eax,-0x10(%ebp)
    7f08:	a1 c4 97 04 00       	mov    0x497c4,%eax
    7f0d:	8b 55 f8             	mov    -0x8(%ebp),%edx
    7f10:	83 c2 24             	add    $0x24,%edx
    7f13:	8b 44 90 04          	mov    0x4(%eax,%edx,4),%eax
    7f17:	8b 40 04             	mov    0x4(%eax),%eax
    7f1a:	89 45 fc             	mov    %eax,-0x4(%ebp)
    7f1d:	a1 c4 97 04 00       	mov    0x497c4,%eax
    7f22:	8b 55 f8             	mov    -0x8(%ebp),%edx
    7f25:	83 c2 24             	add    $0x24,%edx
    7f28:	8b 44 90 04          	mov    0x4(%eax,%edx,4),%eax
    7f2c:	8b 40 08             	mov    0x8(%eax),%eax
    7f2f:	8b 40 04             	mov    0x4(%eax),%eax
    7f32:	89 45 ec             	mov    %eax,-0x14(%ebp)
    7f35:	83 7d f0 02          	cmpl   $0x2,-0x10(%ebp)
    7f39:	74 14                	je     7f4f <do_lseek+0x65>
    7f3b:	83 7d f0 03          	cmpl   $0x3,-0x10(%ebp)
    7f3f:	74 16                	je     7f57 <do_lseek+0x6d>
    7f41:	83 7d f0 01          	cmpl   $0x1,-0x10(%ebp)
    7f45:	75 1d                	jne    7f64 <do_lseek+0x7a>
    7f47:	8b 45 f4             	mov    -0xc(%ebp),%eax
    7f4a:	89 45 fc             	mov    %eax,-0x4(%ebp)
    7f4d:	eb 1c                	jmp    7f6b <do_lseek+0x81>
    7f4f:	8b 45 f4             	mov    -0xc(%ebp),%eax
    7f52:	01 45 fc             	add    %eax,-0x4(%ebp)
    7f55:	eb 14                	jmp    7f6b <do_lseek+0x81>
    7f57:	8b 55 ec             	mov    -0x14(%ebp),%edx
    7f5a:	8b 45 f4             	mov    -0xc(%ebp),%eax
    7f5d:	01 d0                	add    %edx,%eax
    7f5f:	89 45 fc             	mov    %eax,-0x4(%ebp)
    7f62:	eb 07                	jmp    7f6b <do_lseek+0x81>
    7f64:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    7f69:	eb 2d                	jmp    7f98 <do_lseek+0xae>
    7f6b:	8b 45 fc             	mov    -0x4(%ebp),%eax
    7f6e:	3b 45 ec             	cmp    -0x14(%ebp),%eax
    7f71:	7f 06                	jg     7f79 <do_lseek+0x8f>
    7f73:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
    7f77:	79 07                	jns    7f80 <do_lseek+0x96>
    7f79:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    7f7e:	eb 18                	jmp    7f98 <do_lseek+0xae>
    7f80:	a1 c4 97 04 00       	mov    0x497c4,%eax
    7f85:	8b 55 f8             	mov    -0x8(%ebp),%edx
    7f88:	83 c2 24             	add    $0x24,%edx
    7f8b:	8b 44 90 04          	mov    0x4(%eax,%edx,4),%eax
    7f8f:	8b 55 fc             	mov    -0x4(%ebp),%edx
    7f92:	89 50 04             	mov    %edx,0x4(%eax)
    7f95:	8b 45 fc             	mov    -0x4(%ebp),%eax
    7f98:	c9                   	leave  
    7f99:	c3                   	ret    

00007f9a <alloc_imap_bit>:
    7f9a:	55                   	push   %ebp
    7f9b:	89 e5                	mov    %esp,%ebp
    7f9d:	53                   	push   %ebx
    7f9e:	83 ec 24             	sub    $0x24,%esp
    7fa1:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    7fa8:	c7 45 e8 02 00 00 00 	movl   $0x2,-0x18(%ebp)
    7faf:	83 ec 0c             	sub    $0xc,%esp
    7fb2:	ff 75 08             	pushl  0x8(%ebp)
    7fb5:	e8 aa f7 ff ff       	call   7764 <get_super_block>
    7fba:	83 c4 10             	add    $0x10,%esp
    7fbd:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    7fc0:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
    7fc7:	90                   	nop
    7fc8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    7fcb:	8b 50 0c             	mov    0xc(%eax),%edx
    7fce:	8b 45 e0             	mov    -0x20(%ebp),%eax
    7fd1:	39 c2                	cmp    %eax,%edx
    7fd3:	0f 86 14 01 00 00    	jbe    80ed <alloc_imap_bit+0x153>
    7fd9:	8b 0d 9c f7 00 00    	mov    0xf79c,%ecx
    7fdf:	8b 55 e8             	mov    -0x18(%ebp),%edx
    7fe2:	8b 45 e0             	mov    -0x20(%ebp),%eax
    7fe5:	01 d0                	add    %edx,%eax
    7fe7:	c1 e0 09             	shl    $0x9,%eax
    7fea:	99                   	cltd   
    7feb:	83 ec 04             	sub    $0x4,%esp
    7fee:	51                   	push   %ecx
    7fef:	6a 03                	push   $0x3
    7ff1:	68 00 02 00 00       	push   $0x200
    7ff6:	52                   	push   %edx
    7ff7:	50                   	push   %eax
    7ff8:	ff 75 08             	pushl  0x8(%ebp)
    7ffb:	68 eb 03 00 00       	push   $0x3eb
    8000:	e8 57 f5 ff ff       	call   755c <rw_sector>
    8005:	83 c4 20             	add    $0x20,%esp
    8008:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    800f:	e9 c7 00 00 00       	jmp    80db <alloc_imap_bit+0x141>
    8014:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    801a:	8b 45 f0             	mov    -0x10(%ebp),%eax
    801d:	01 d0                	add    %edx,%eax
    801f:	0f b6 00             	movzbl (%eax),%eax
    8022:	3c ff                	cmp    $0xff,%al
    8024:	75 09                	jne    802f <alloc_imap_bit+0x95>
    8026:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    802a:	e9 ac 00 00 00       	jmp    80db <alloc_imap_bit+0x141>
    802f:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    8036:	eb 04                	jmp    803c <alloc_imap_bit+0xa2>
    8038:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
    803c:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    8042:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8045:	01 d0                	add    %edx,%eax
    8047:	0f b6 00             	movzbl (%eax),%eax
    804a:	0f b6 d0             	movzbl %al,%edx
    804d:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8050:	89 c1                	mov    %eax,%ecx
    8052:	d3 fa                	sar    %cl,%edx
    8054:	89 d0                	mov    %edx,%eax
    8056:	83 e0 01             	and    $0x1,%eax
    8059:	85 c0                	test   %eax,%eax
    805b:	75 db                	jne    8038 <alloc_imap_bit+0x9e>
    805d:	8b 45 e0             	mov    -0x20(%ebp),%eax
    8060:	c1 e0 09             	shl    $0x9,%eax
    8063:	89 c2                	mov    %eax,%edx
    8065:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8068:	01 d0                	add    %edx,%eax
    806a:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    8071:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8074:	01 d0                	add    %edx,%eax
    8076:	89 45 f4             	mov    %eax,-0xc(%ebp)
    8079:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    807f:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8082:	01 d0                	add    %edx,%eax
    8084:	0f b6 00             	movzbl (%eax),%eax
    8087:	89 c3                	mov    %eax,%ebx
    8089:	8b 45 ec             	mov    -0x14(%ebp),%eax
    808c:	ba 01 00 00 00       	mov    $0x1,%edx
    8091:	89 c1                	mov    %eax,%ecx
    8093:	d3 e2                	shl    %cl,%edx
    8095:	89 d0                	mov    %edx,%eax
    8097:	09 c3                	or     %eax,%ebx
    8099:	89 d9                	mov    %ebx,%ecx
    809b:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    80a1:	8b 45 f0             	mov    -0x10(%ebp),%eax
    80a4:	01 d0                	add    %edx,%eax
    80a6:	89 ca                	mov    %ecx,%edx
    80a8:	88 10                	mov    %dl,(%eax)
    80aa:	8b 0d 9c f7 00 00    	mov    0xf79c,%ecx
    80b0:	8b 55 e8             	mov    -0x18(%ebp),%edx
    80b3:	8b 45 e0             	mov    -0x20(%ebp),%eax
    80b6:	01 d0                	add    %edx,%eax
    80b8:	c1 e0 09             	shl    $0x9,%eax
    80bb:	99                   	cltd   
    80bc:	83 ec 04             	sub    $0x4,%esp
    80bf:	51                   	push   %ecx
    80c0:	6a 03                	push   $0x3
    80c2:	68 00 02 00 00       	push   $0x200
    80c7:	52                   	push   %edx
    80c8:	50                   	push   %eax
    80c9:	ff 75 08             	pushl  0x8(%ebp)
    80cc:	68 ec 03 00 00       	push   $0x3ec
    80d1:	e8 86 f4 ff ff       	call   755c <rw_sector>
    80d6:	83 c4 20             	add    $0x20,%esp
    80d9:	eb 0d                	jmp    80e8 <alloc_imap_bit+0x14e>
    80db:	81 7d f0 ff 01 00 00 	cmpl   $0x1ff,-0x10(%ebp)
    80e2:	0f 8e 2c ff ff ff    	jle    8014 <alloc_imap_bit+0x7a>
    80e8:	8b 45 f4             	mov    -0xc(%ebp),%eax
    80eb:	eb 15                	jmp    8102 <alloc_imap_bit+0x168>
    80ed:	83 ec 0c             	sub    $0xc,%esp
    80f0:	68 51 bc 00 00       	push   $0xbc51
    80f5:	e8 cd 9a ff ff       	call   1bc7 <panic>
    80fa:	83 c4 10             	add    $0x10,%esp
    80fd:	b8 00 00 00 00       	mov    $0x0,%eax
    8102:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    8105:	c9                   	leave  
    8106:	c3                   	ret    

00008107 <alloc_smap_bit>:
    8107:	55                   	push   %ebp
    8108:	89 e5                	mov    %esp,%ebp
    810a:	53                   	push   %ebx
    810b:	83 ec 24             	sub    $0x24,%esp
    810e:	83 ec 0c             	sub    $0xc,%esp
    8111:	ff 75 08             	pushl  0x8(%ebp)
    8114:	e8 4b f6 ff ff       	call   7764 <get_super_block>
    8119:	83 c4 10             	add    $0x10,%esp
    811c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    811f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    8122:	8b 40 0c             	mov    0xc(%eax),%eax
    8125:	83 c0 02             	add    $0x2,%eax
    8128:	89 45 e0             	mov    %eax,-0x20(%ebp)
    812b:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
    8132:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    8139:	e9 96 01 00 00       	jmp    82d4 <alloc_smap_bit+0x1cd>
    813e:	8b 0d 9c f7 00 00    	mov    0xf79c,%ecx
    8144:	8b 55 e0             	mov    -0x20(%ebp),%edx
    8147:	8b 45 f4             	mov    -0xc(%ebp),%eax
    814a:	01 d0                	add    %edx,%eax
    814c:	c1 e0 09             	shl    $0x9,%eax
    814f:	99                   	cltd   
    8150:	83 ec 04             	sub    $0x4,%esp
    8153:	51                   	push   %ecx
    8154:	6a 03                	push   $0x3
    8156:	68 00 02 00 00       	push   $0x200
    815b:	52                   	push   %edx
    815c:	50                   	push   %eax
    815d:	ff 75 08             	pushl  0x8(%ebp)
    8160:	68 eb 03 00 00       	push   $0x3eb
    8165:	e8 f2 f3 ff ff       	call   755c <rw_sector>
    816a:	83 c4 20             	add    $0x20,%esp
    816d:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    8174:	e9 09 01 00 00       	jmp    8282 <alloc_smap_bit+0x17b>
    8179:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    8180:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
    8184:	0f 85 e4 00 00 00    	jne    826e <alloc_smap_bit+0x167>
    818a:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    8190:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8193:	01 d0                	add    %edx,%eax
    8195:	0f b6 00             	movzbl (%eax),%eax
    8198:	3c ff                	cmp    $0xff,%al
    819a:	0f 84 da 00 00 00    	je     827a <alloc_smap_bit+0x173>
    81a0:	eb 04                	jmp    81a6 <alloc_smap_bit+0x9f>
    81a2:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
    81a6:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    81ac:	8b 45 f0             	mov    -0x10(%ebp),%eax
    81af:	01 d0                	add    %edx,%eax
    81b1:	0f b6 00             	movzbl (%eax),%eax
    81b4:	0f b6 d0             	movzbl %al,%edx
    81b7:	8b 45 ec             	mov    -0x14(%ebp),%eax
    81ba:	89 c1                	mov    %eax,%ecx
    81bc:	d3 fa                	sar    %cl,%edx
    81be:	89 d0                	mov    %edx,%eax
    81c0:	83 e0 01             	and    $0x1,%eax
    81c3:	85 c0                	test   %eax,%eax
    81c5:	75 db                	jne    81a2 <alloc_smap_bit+0x9b>
    81c7:	8b 45 f4             	mov    -0xc(%ebp),%eax
    81ca:	c1 e0 09             	shl    $0x9,%eax
    81cd:	89 c2                	mov    %eax,%edx
    81cf:	8b 45 f0             	mov    -0x10(%ebp),%eax
    81d2:	01 d0                	add    %edx,%eax
    81d4:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    81db:	8b 45 ec             	mov    -0x14(%ebp),%eax
    81de:	01 d0                	add    %edx,%eax
    81e0:	89 c2                	mov    %eax,%edx
    81e2:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    81e5:	8b 40 14             	mov    0x14(%eax),%eax
    81e8:	01 d0                	add    %edx,%eax
    81ea:	83 e8 01             	sub    $0x1,%eax
    81ed:	89 45 e8             	mov    %eax,-0x18(%ebp)
    81f0:	eb 7c                	jmp    826e <alloc_smap_bit+0x167>
    81f2:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    81f8:	8b 45 f0             	mov    -0x10(%ebp),%eax
    81fb:	01 d0                	add    %edx,%eax
    81fd:	0f b6 00             	movzbl (%eax),%eax
    8200:	0f b6 d0             	movzbl %al,%edx
    8203:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8206:	89 c1                	mov    %eax,%ecx
    8208:	d3 fa                	sar    %cl,%edx
    820a:	89 d0                	mov    %edx,%eax
    820c:	83 e0 01             	and    $0x1,%eax
    820f:	85 c0                	test   %eax,%eax
    8211:	74 1c                	je     822f <alloc_smap_bit+0x128>
    8213:	68 38 01 00 00       	push   $0x138
    8218:	68 68 bb 00 00       	push   $0xbb68
    821d:	68 68 bb 00 00       	push   $0xbb68
    8222:	68 6e bc 00 00       	push   $0xbc6e
    8227:	e8 87 e8 ff ff       	call   6ab3 <assertion_failure>
    822c:	83 c4 10             	add    $0x10,%esp
    822f:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    8235:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8238:	01 d0                	add    %edx,%eax
    823a:	0f b6 00             	movzbl (%eax),%eax
    823d:	89 c3                	mov    %eax,%ebx
    823f:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8242:	ba 01 00 00 00       	mov    $0x1,%edx
    8247:	89 c1                	mov    %eax,%ecx
    8249:	d3 e2                	shl    %cl,%edx
    824b:	89 d0                	mov    %edx,%eax
    824d:	09 c3                	or     %eax,%ebx
    824f:	89 d9                	mov    %ebx,%ecx
    8251:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    8257:	8b 45 f0             	mov    -0x10(%ebp),%eax
    825a:	01 d0                	add    %edx,%eax
    825c:	89 ca                	mov    %ecx,%edx
    825e:	88 10                	mov    %dl,(%eax)
    8260:	83 6d 0c 01          	subl   $0x1,0xc(%ebp)
    8264:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    8268:	74 13                	je     827d <alloc_smap_bit+0x176>
    826a:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
    826e:	83 7d ec 07          	cmpl   $0x7,-0x14(%ebp)
    8272:	0f 8e 7a ff ff ff    	jle    81f2 <alloc_smap_bit+0xeb>
    8278:	eb 04                	jmp    827e <alloc_smap_bit+0x177>
    827a:	90                   	nop
    827b:	eb 01                	jmp    827e <alloc_smap_bit+0x177>
    827d:	90                   	nop
    827e:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    8282:	81 7d f0 ff 01 00 00 	cmpl   $0x1ff,-0x10(%ebp)
    8289:	7f 0a                	jg     8295 <alloc_smap_bit+0x18e>
    828b:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    828f:	0f 8f e4 fe ff ff    	jg     8179 <alloc_smap_bit+0x72>
    8295:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
    8299:	74 2f                	je     82ca <alloc_smap_bit+0x1c3>
    829b:	8b 0d 9c f7 00 00    	mov    0xf79c,%ecx
    82a1:	8b 55 e0             	mov    -0x20(%ebp),%edx
    82a4:	8b 45 f4             	mov    -0xc(%ebp),%eax
    82a7:	01 d0                	add    %edx,%eax
    82a9:	c1 e0 09             	shl    $0x9,%eax
    82ac:	99                   	cltd   
    82ad:	83 ec 04             	sub    $0x4,%esp
    82b0:	51                   	push   %ecx
    82b1:	6a 03                	push   $0x3
    82b3:	68 00 02 00 00       	push   $0x200
    82b8:	52                   	push   %edx
    82b9:	50                   	push   %eax
    82ba:	ff 75 08             	pushl  0x8(%ebp)
    82bd:	68 ec 03 00 00       	push   $0x3ec
    82c2:	e8 95 f2 ff ff       	call   755c <rw_sector>
    82c7:	83 c4 20             	add    $0x20,%esp
    82ca:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    82ce:	74 17                	je     82e7 <alloc_smap_bit+0x1e0>
    82d0:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    82d4:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    82d7:	8b 50 10             	mov    0x10(%eax),%edx
    82da:	8b 45 f4             	mov    -0xc(%ebp),%eax
    82dd:	39 c2                	cmp    %eax,%edx
    82df:	0f 87 59 fe ff ff    	ja     813e <alloc_smap_bit+0x37>
    82e5:	eb 01                	jmp    82e8 <alloc_smap_bit+0x1e1>
    82e7:	90                   	nop
    82e8:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    82ec:	74 1c                	je     830a <alloc_smap_bit+0x203>
    82ee:	68 46 01 00 00       	push   $0x146
    82f3:	68 68 bb 00 00       	push   $0xbb68
    82f8:	68 68 bb 00 00       	push   $0xbb68
    82fd:	68 89 bc 00 00       	push   $0xbc89
    8302:	e8 ac e7 ff ff       	call   6ab3 <assertion_failure>
    8307:	83 c4 10             	add    $0x10,%esp
    830a:	8b 45 e8             	mov    -0x18(%ebp),%eax
    830d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    8310:	c9                   	leave  
    8311:	c3                   	ret    

00008312 <new_inode>:
    8312:	55                   	push   %ebp
    8313:	89 e5                	mov    %esp,%ebp
    8315:	83 ec 18             	sub    $0x18,%esp
    8318:	83 ec 08             	sub    $0x8,%esp
    831b:	ff 75 0c             	pushl  0xc(%ebp)
    831e:	ff 75 08             	pushl  0x8(%ebp)
    8321:	e8 84 f4 ff ff       	call   77aa <get_inode>
    8326:	83 c4 10             	add    $0x10,%esp
    8329:	89 45 f4             	mov    %eax,-0xc(%ebp)
    832c:	8b 45 f4             	mov    -0xc(%ebp),%eax
    832f:	c7 00 00 80 00 00    	movl   $0x8000,(%eax)
    8335:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8338:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
    833f:	8b 55 10             	mov    0x10(%ebp),%edx
    8342:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8345:	89 50 08             	mov    %edx,0x8(%eax)
    8348:	8b 45 f4             	mov    -0xc(%ebp),%eax
    834b:	c7 40 0c 00 08 00 00 	movl   $0x800,0xc(%eax)
    8352:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8355:	8b 55 08             	mov    0x8(%ebp),%edx
    8358:	89 50 20             	mov    %edx,0x20(%eax)
    835b:	8b 45 f4             	mov    -0xc(%ebp),%eax
    835e:	c7 40 24 01 00 00 00 	movl   $0x1,0x24(%eax)
    8365:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8368:	8b 55 0c             	mov    0xc(%ebp),%edx
    836b:	89 50 28             	mov    %edx,0x28(%eax)
    836e:	83 ec 0c             	sub    $0xc,%esp
    8371:	ff 75 f4             	pushl  -0xc(%ebp)
    8374:	e8 d2 f5 ff ff       	call   794b <sync_inode>
    8379:	83 c4 10             	add    $0x10,%esp
    837c:	8b 45 f4             	mov    -0xc(%ebp),%eax
    837f:	c9                   	leave  
    8380:	c3                   	ret    

00008381 <new_dir_entry>:
    8381:	55                   	push   %ebp
    8382:	89 e5                	mov    %esp,%ebp
    8384:	53                   	push   %ebx
    8385:	83 ec 24             	sub    $0x24,%esp
    8388:	8b 45 08             	mov    0x8(%ebp),%eax
    838b:	8b 40 08             	mov    0x8(%eax),%eax
    838e:	89 45 e0             	mov    %eax,-0x20(%ebp)
    8391:	8b 45 08             	mov    0x8(%ebp),%eax
    8394:	8b 40 04             	mov    0x4(%eax),%eax
    8397:	05 00 02 00 00       	add    $0x200,%eax
    839c:	c1 e8 09             	shr    $0x9,%eax
    839f:	89 45 dc             	mov    %eax,-0x24(%ebp)
    83a2:	8b 45 08             	mov    0x8(%ebp),%eax
    83a5:	8b 40 04             	mov    0x4(%eax),%eax
    83a8:	c1 e8 04             	shr    $0x4,%eax
    83ab:	89 45 d8             	mov    %eax,-0x28(%ebp)
    83ae:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    83b5:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    83bc:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
    83c3:	e9 86 00 00 00       	jmp    844e <new_dir_entry+0xcd>
    83c8:	8b 1d 9c f7 00 00    	mov    0xf79c,%ebx
    83ce:	8b 55 e0             	mov    -0x20(%ebp),%edx
    83d1:	8b 45 e8             	mov    -0x18(%ebp),%eax
    83d4:	01 d0                	add    %edx,%eax
    83d6:	c1 e0 09             	shl    $0x9,%eax
    83d9:	99                   	cltd   
    83da:	8b 4d 08             	mov    0x8(%ebp),%ecx
    83dd:	8b 49 20             	mov    0x20(%ecx),%ecx
    83e0:	83 ec 04             	sub    $0x4,%esp
    83e3:	53                   	push   %ebx
    83e4:	6a 03                	push   $0x3
    83e6:	68 00 02 00 00       	push   $0x200
    83eb:	52                   	push   %edx
    83ec:	50                   	push   %eax
    83ed:	51                   	push   %ecx
    83ee:	68 eb 03 00 00       	push   $0x3eb
    83f3:	e8 64 f1 ff ff       	call   755c <rw_sector>
    83f8:	83 c4 20             	add    $0x20,%esp
    83fb:	a1 9c f7 00 00       	mov    0xf79c,%eax
    8400:	89 45 f0             	mov    %eax,-0x10(%ebp)
    8403:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    840a:	eb 25                	jmp    8431 <new_dir_entry+0xb0>
    840c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    8410:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8413:	3b 45 d8             	cmp    -0x28(%ebp),%eax
    8416:	7f 23                	jg     843b <new_dir_entry+0xba>
    8418:	8b 45 f0             	mov    -0x10(%ebp),%eax
    841b:	8b 00                	mov    (%eax),%eax
    841d:	85 c0                	test   %eax,%eax
    841f:	75 08                	jne    8429 <new_dir_entry+0xa8>
    8421:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8424:	89 45 ec             	mov    %eax,-0x14(%ebp)
    8427:	eb 13                	jmp    843c <new_dir_entry+0xbb>
    8429:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    842d:	83 45 f0 10          	addl   $0x10,-0x10(%ebp)
    8431:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    8434:	83 f8 1f             	cmp    $0x1f,%eax
    8437:	76 d3                	jbe    840c <new_dir_entry+0x8b>
    8439:	eb 01                	jmp    843c <new_dir_entry+0xbb>
    843b:	90                   	nop
    843c:	8b 45 f4             	mov    -0xc(%ebp),%eax
    843f:	3b 45 d8             	cmp    -0x28(%ebp),%eax
    8442:	7f 16                	jg     845a <new_dir_entry+0xd9>
    8444:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
    8448:	75 10                	jne    845a <new_dir_entry+0xd9>
    844a:	83 45 e8 01          	addl   $0x1,-0x18(%ebp)
    844e:	8b 45 e8             	mov    -0x18(%ebp),%eax
    8451:	3b 45 dc             	cmp    -0x24(%ebp),%eax
    8454:	0f 8c 6e ff ff ff    	jl     83c8 <new_dir_entry+0x47>
    845a:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
    845e:	75 15                	jne    8475 <new_dir_entry+0xf4>
    8460:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8463:	89 45 ec             	mov    %eax,-0x14(%ebp)
    8466:	8b 45 08             	mov    0x8(%ebp),%eax
    8469:	8b 40 04             	mov    0x4(%eax),%eax
    846c:	8d 50 10             	lea    0x10(%eax),%edx
    846f:	8b 45 08             	mov    0x8(%ebp),%eax
    8472:	89 50 04             	mov    %edx,0x4(%eax)
    8475:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8478:	8b 55 0c             	mov    0xc(%ebp),%edx
    847b:	89 10                	mov    %edx,(%eax)
    847d:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8480:	83 c0 04             	add    $0x4,%eax
    8483:	83 ec 08             	sub    $0x8,%esp
    8486:	ff 75 10             	pushl  0x10(%ebp)
    8489:	50                   	push   %eax
    848a:	e8 9b e4 ff ff       	call   692a <strcpy>
    848f:	83 c4 10             	add    $0x10,%esp
    8492:	8b 1d 9c f7 00 00    	mov    0xf79c,%ebx
    8498:	8b 55 e0             	mov    -0x20(%ebp),%edx
    849b:	8b 45 e8             	mov    -0x18(%ebp),%eax
    849e:	01 d0                	add    %edx,%eax
    84a0:	c1 e0 09             	shl    $0x9,%eax
    84a3:	99                   	cltd   
    84a4:	8b 4d 08             	mov    0x8(%ebp),%ecx
    84a7:	8b 49 20             	mov    0x20(%ecx),%ecx
    84aa:	83 ec 04             	sub    $0x4,%esp
    84ad:	53                   	push   %ebx
    84ae:	6a 03                	push   $0x3
    84b0:	68 00 02 00 00       	push   $0x200
    84b5:	52                   	push   %edx
    84b6:	50                   	push   %eax
    84b7:	51                   	push   %ecx
    84b8:	68 ec 03 00 00       	push   $0x3ec
    84bd:	e8 9a f0 ff ff       	call   755c <rw_sector>
    84c2:	83 c4 20             	add    $0x20,%esp
    84c5:	83 ec 0c             	sub    $0xc,%esp
    84c8:	ff 75 08             	pushl  0x8(%ebp)
    84cb:	e8 7b f4 ff ff       	call   794b <sync_inode>
    84d0:	83 c4 10             	add    $0x10,%esp
    84d3:	90                   	nop
    84d4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    84d7:	c9                   	leave  
    84d8:	c3                   	ret    

000084d9 <search_file>:
    84d9:	55                   	push   %ebp
    84da:	89 e5                	mov    %esp,%ebp
    84dc:	53                   	push   %ebx
    84dd:	81 ec a4 00 00 00    	sub    $0xa4,%esp
    84e3:	83 ec 04             	sub    $0x4,%esp
    84e6:	6a 0c                	push   $0xc
    84e8:	6a 00                	push   $0x0
    84ea:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
    84f0:	50                   	push   %eax
    84f1:	e8 13 e4 ff ff       	call   6909 <memset>
    84f6:	83 c4 10             	add    $0x10,%esp
    84f9:	83 ec 04             	sub    $0x4,%esp
    84fc:	8d 85 58 ff ff ff    	lea    -0xa8(%ebp),%eax
    8502:	50                   	push   %eax
    8503:	ff 75 08             	pushl  0x8(%ebp)
    8506:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
    850c:	50                   	push   %eax
    850d:	e8 1d 01 00 00       	call   862f <strip_path>
    8512:	83 c4 10             	add    $0x10,%esp
    8515:	85 c0                	test   %eax,%eax
    8517:	74 0a                	je     8523 <search_file+0x4a>
    8519:	b8 00 00 00 00       	mov    $0x0,%eax
    851e:	e9 07 01 00 00       	jmp    862a <search_file+0x151>
    8523:	0f b6 85 5c ff ff ff 	movzbl -0xa4(%ebp),%eax
    852a:	84 c0                	test   %al,%al
    852c:	75 0e                	jne    853c <search_file+0x63>
    852e:	8b 85 58 ff ff ff    	mov    -0xa8(%ebp),%eax
    8534:	8b 40 28             	mov    0x28(%eax),%eax
    8537:	e9 ee 00 00 00       	jmp    862a <search_file+0x151>
    853c:	8b 85 58 ff ff ff    	mov    -0xa8(%ebp),%eax
    8542:	8b 40 08             	mov    0x8(%eax),%eax
    8545:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    8548:	8b 85 58 ff ff ff    	mov    -0xa8(%ebp),%eax
    854e:	8b 40 04             	mov    0x4(%eax),%eax
    8551:	05 ff 01 00 00       	add    $0x1ff,%eax
    8556:	c1 e8 09             	shr    $0x9,%eax
    8559:	89 45 e0             	mov    %eax,-0x20(%ebp)
    855c:	8b 85 58 ff ff ff    	mov    -0xa8(%ebp),%eax
    8562:	8b 40 04             	mov    0x4(%eax),%eax
    8565:	c1 e8 04             	shr    $0x4,%eax
    8568:	89 45 dc             	mov    %eax,-0x24(%ebp)
    856b:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    8572:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    8579:	e9 98 00 00 00       	jmp    8616 <search_file+0x13d>
    857e:	8b 1d 9c f7 00 00    	mov    0xf79c,%ebx
    8584:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    8587:	8b 45 f4             	mov    -0xc(%ebp),%eax
    858a:	01 d0                	add    %edx,%eax
    858c:	c1 e0 09             	shl    $0x9,%eax
    858f:	99                   	cltd   
    8590:	8b 8d 58 ff ff ff    	mov    -0xa8(%ebp),%ecx
    8596:	8b 49 20             	mov    0x20(%ecx),%ecx
    8599:	83 ec 04             	sub    $0x4,%esp
    859c:	53                   	push   %ebx
    859d:	6a 03                	push   $0x3
    859f:	68 00 02 00 00       	push   $0x200
    85a4:	52                   	push   %edx
    85a5:	50                   	push   %eax
    85a6:	51                   	push   %ecx
    85a7:	68 eb 03 00 00       	push   $0x3eb
    85ac:	e8 ab ef ff ff       	call   755c <rw_sector>
    85b1:	83 c4 20             	add    $0x20,%esp
    85b4:	a1 9c f7 00 00       	mov    0xf79c,%eax
    85b9:	89 45 e8             	mov    %eax,-0x18(%ebp)
    85bc:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    85c3:	eb 3a                	jmp    85ff <search_file+0x126>
    85c5:	8b 45 e8             	mov    -0x18(%ebp),%eax
    85c8:	83 c0 04             	add    $0x4,%eax
    85cb:	83 ec 04             	sub    $0x4,%esp
    85ce:	6a 0c                	push   $0xc
    85d0:	50                   	push   %eax
    85d1:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
    85d7:	50                   	push   %eax
    85d8:	e8 7b e3 ff ff       	call   6958 <memcmp>
    85dd:	83 c4 10             	add    $0x10,%esp
    85e0:	85 c0                	test   %eax,%eax
    85e2:	75 07                	jne    85eb <search_file+0x112>
    85e4:	8b 45 e8             	mov    -0x18(%ebp),%eax
    85e7:	8b 00                	mov    (%eax),%eax
    85e9:	eb 3f                	jmp    862a <search_file+0x151>
    85eb:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
    85ef:	8b 45 ec             	mov    -0x14(%ebp),%eax
    85f2:	3b 45 dc             	cmp    -0x24(%ebp),%eax
    85f5:	7f 12                	jg     8609 <search_file+0x130>
    85f7:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    85fb:	83 45 e8 10          	addl   $0x10,-0x18(%ebp)
    85ff:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8602:	83 f8 1f             	cmp    $0x1f,%eax
    8605:	76 be                	jbe    85c5 <search_file+0xec>
    8607:	eb 01                	jmp    860a <search_file+0x131>
    8609:	90                   	nop
    860a:	8b 45 ec             	mov    -0x14(%ebp),%eax
    860d:	3b 45 dc             	cmp    -0x24(%ebp),%eax
    8610:	7f 12                	jg     8624 <search_file+0x14b>
    8612:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    8616:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8619:	3b 45 e0             	cmp    -0x20(%ebp),%eax
    861c:	0f 8c 5c ff ff ff    	jl     857e <search_file+0xa5>
    8622:	eb 01                	jmp    8625 <search_file+0x14c>
    8624:	90                   	nop
    8625:	b8 00 00 00 00       	mov    $0x0,%eax
    862a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    862d:	c9                   	leave  
    862e:	c3                   	ret    

0000862f <strip_path>:
    862f:	55                   	push   %ebp
    8630:	89 e5                	mov    %esp,%ebp
    8632:	83 ec 10             	sub    $0x10,%esp
    8635:	8b 45 0c             	mov    0xc(%ebp),%eax
    8638:	89 45 fc             	mov    %eax,-0x4(%ebp)
    863b:	8b 45 08             	mov    0x8(%ebp),%eax
    863e:	89 45 f8             	mov    %eax,-0x8(%ebp)
    8641:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
    8645:	75 07                	jne    864e <strip_path+0x1f>
    8647:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    864c:	eb 66                	jmp    86b4 <strip_path+0x85>
    864e:	8b 45 fc             	mov    -0x4(%ebp),%eax
    8651:	0f b6 00             	movzbl (%eax),%eax
    8654:	3c 2f                	cmp    $0x2f,%al
    8656:	75 39                	jne    8691 <strip_path+0x62>
    8658:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
    865c:	eb 33                	jmp    8691 <strip_path+0x62>
    865e:	8b 45 fc             	mov    -0x4(%ebp),%eax
    8661:	0f b6 00             	movzbl (%eax),%eax
    8664:	3c 2f                	cmp    $0x2f,%al
    8666:	75 07                	jne    866f <strip_path+0x40>
    8668:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    866d:	eb 45                	jmp    86b4 <strip_path+0x85>
    866f:	8b 55 fc             	mov    -0x4(%ebp),%edx
    8672:	8d 42 01             	lea    0x1(%edx),%eax
    8675:	89 45 fc             	mov    %eax,-0x4(%ebp)
    8678:	8b 45 f8             	mov    -0x8(%ebp),%eax
    867b:	8d 48 01             	lea    0x1(%eax),%ecx
    867e:	89 4d f8             	mov    %ecx,-0x8(%ebp)
    8681:	0f b6 12             	movzbl (%edx),%edx
    8684:	88 10                	mov    %dl,(%eax)
    8686:	8b 45 f8             	mov    -0x8(%ebp),%eax
    8689:	2b 45 08             	sub    0x8(%ebp),%eax
    868c:	83 f8 0b             	cmp    $0xb,%eax
    868f:	7f 0c                	jg     869d <strip_path+0x6e>
    8691:	8b 45 fc             	mov    -0x4(%ebp),%eax
    8694:	0f b6 00             	movzbl (%eax),%eax
    8697:	84 c0                	test   %al,%al
    8699:	75 c3                	jne    865e <strip_path+0x2f>
    869b:	eb 01                	jmp    869e <strip_path+0x6f>
    869d:	90                   	nop
    869e:	8b 45 f8             	mov    -0x8(%ebp),%eax
    86a1:	c6 00 00             	movb   $0x0,(%eax)
    86a4:	8b 15 20 a8 04 00    	mov    0x4a820,%edx
    86aa:	8b 45 10             	mov    0x10(%ebp),%eax
    86ad:	89 10                	mov    %edx,(%eax)
    86af:	b8 00 00 00 00       	mov    $0x0,%eax
    86b4:	c9                   	leave  
    86b5:	c3                   	ret    

000086b6 <do_rdwt>:
    86b6:	55                   	push   %ebp
    86b7:	89 e5                	mov    %esp,%ebp
    86b9:	56                   	push   %esi
    86ba:	53                   	push   %ebx
    86bb:	83 ec 50             	sub    $0x50,%esp
    86be:	a1 e8 a4 04 00       	mov    0x4a4e8,%eax
    86c3:	89 45 e0             	mov    %eax,-0x20(%ebp)
    86c6:	a1 0c a5 04 00       	mov    0x4a50c,%eax
    86cb:	89 45 dc             	mov    %eax,-0x24(%ebp)
    86ce:	a1 ec a4 04 00       	mov    0x4a4ec,%eax
    86d3:	89 45 d8             	mov    %eax,-0x28(%ebp)
    86d6:	a1 e0 a4 04 00       	mov    0x4a4e0,%eax
    86db:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    86de:	a1 c4 97 04 00       	mov    0x497c4,%eax
    86e3:	8b 55 e0             	mov    -0x20(%ebp),%edx
    86e6:	83 c2 24             	add    $0x24,%edx
    86e9:	8b 44 90 04          	mov    0x4(%eax,%edx,4),%eax
    86ed:	3d 20 a5 04 00       	cmp    $0x4a520,%eax
    86f2:	72 16                	jb     870a <do_rdwt+0x54>
    86f4:	a1 c4 97 04 00       	mov    0x497c4,%eax
    86f9:	8b 55 e0             	mov    -0x20(%ebp),%edx
    86fc:	83 c2 24             	add    $0x24,%edx
    86ff:	8b 44 90 04          	mov    0x4(%eax,%edx,4),%eax
    8703:	3d 20 a8 04 00       	cmp    $0x4a820,%eax
    8708:	72 19                	jb     8723 <do_rdwt+0x6d>
    870a:	6a 2f                	push   $0x2f
    870c:	68 a0 bc 00 00       	push   $0xbca0
    8711:	68 a0 bc 00 00       	push   $0xbca0
    8716:	68 b0 bc 00 00       	push   $0xbcb0
    871b:	e8 93 e3 ff ff       	call   6ab3 <assertion_failure>
    8720:	83 c4 10             	add    $0x10,%esp
    8723:	a1 c4 97 04 00       	mov    0x497c4,%eax
    8728:	8b 55 e0             	mov    -0x20(%ebp),%edx
    872b:	83 c2 24             	add    $0x24,%edx
    872e:	8b 44 90 04          	mov    0x4(%eax,%edx,4),%eax
    8732:	8b 00                	mov    (%eax),%eax
    8734:	83 e0 02             	and    $0x2,%eax
    8737:	85 c0                	test   %eax,%eax
    8739:	75 0a                	jne    8745 <do_rdwt+0x8f>
    873b:	b8 00 00 00 00       	mov    $0x0,%eax
    8740:	e9 00 04 00 00       	jmp    8b45 <do_rdwt+0x48f>
    8745:	a1 c4 97 04 00       	mov    0x497c4,%eax
    874a:	8b 55 e0             	mov    -0x20(%ebp),%edx
    874d:	83 c2 24             	add    $0x24,%edx
    8750:	8b 44 90 04          	mov    0x4(%eax,%edx,4),%eax
    8754:	8b 40 04             	mov    0x4(%eax),%eax
    8757:	89 45 d0             	mov    %eax,-0x30(%ebp)
    875a:	a1 c4 97 04 00       	mov    0x497c4,%eax
    875f:	8b 55 e0             	mov    -0x20(%ebp),%edx
    8762:	83 c2 24             	add    $0x24,%edx
    8765:	8b 44 90 04          	mov    0x4(%eax,%edx,4),%eax
    8769:	8b 40 08             	mov    0x8(%eax),%eax
    876c:	89 45 cc             	mov    %eax,-0x34(%ebp)
    876f:	81 7d cc a0 08 01 00 	cmpl   $0x108a0,-0x34(%ebp)
    8776:	72 09                	jb     8781 <do_rdwt+0xcb>
    8778:	81 7d cc a0 13 01 00 	cmpl   $0x113a0,-0x34(%ebp)
    877f:	72 19                	jb     879a <do_rdwt+0xe4>
    8781:	6a 38                	push   $0x38
    8783:	68 a0 bc 00 00       	push   $0xbca0
    8788:	68 a0 bc 00 00       	push   $0xbca0
    878d:	68 10 bd 00 00       	push   $0xbd10
    8792:	e8 1c e3 ff ff       	call   6ab3 <assertion_failure>
    8797:	83 c4 10             	add    $0x10,%esp
    879a:	8b 45 cc             	mov    -0x34(%ebp),%eax
    879d:	8b 00                	mov    (%eax),%eax
    879f:	25 00 f0 00 00       	and    $0xf000,%eax
    87a4:	89 45 c8             	mov    %eax,-0x38(%ebp)
    87a7:	81 7d c8 00 20 00 00 	cmpl   $0x2000,-0x38(%ebp)
    87ae:	0f 85 f2 00 00 00    	jne    88a6 <do_rdwt+0x1f0>
    87b4:	a1 e4 a4 04 00       	mov    0x4a4e4,%eax
    87b9:	83 f8 06             	cmp    $0x6,%eax
    87bc:	75 07                	jne    87c5 <do_rdwt+0x10f>
    87be:	b8 eb 03 00 00       	mov    $0x3eb,%eax
    87c3:	eb 05                	jmp    87ca <do_rdwt+0x114>
    87c5:	b8 ec 03 00 00       	mov    $0x3ec,%eax
    87ca:	89 45 c4             	mov    %eax,-0x3c(%ebp)
    87cd:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    87d0:	a3 e4 a4 04 00       	mov    %eax,0x4a4e4
    87d5:	8b 45 cc             	mov    -0x34(%ebp),%eax
    87d8:	8b 40 08             	mov    0x8(%eax),%eax
    87db:	89 45 c0             	mov    %eax,-0x40(%ebp)
    87de:	8b 45 c0             	mov    -0x40(%ebp),%eax
    87e1:	c1 f8 08             	sar    $0x8,%eax
    87e4:	0f b6 c0             	movzbl %al,%eax
    87e7:	83 f8 04             	cmp    $0x4,%eax
    87ea:	74 19                	je     8805 <do_rdwt+0x14f>
    87ec:	6a 41                	push   $0x41
    87ee:	68 a0 bc 00 00       	push   $0xbca0
    87f3:	68 a0 bc 00 00       	push   $0xbca0
    87f8:	68 47 bd 00 00       	push   $0xbd47
    87fd:	e8 b1 e2 ff ff       	call   6ab3 <assertion_failure>
    8802:	83 c4 10             	add    $0x10,%esp
    8805:	8b 45 c0             	mov    -0x40(%ebp),%eax
    8808:	0f b6 c0             	movzbl %al,%eax
    880b:	a3 f4 a4 04 00       	mov    %eax,0x4a4f4
    8810:	8b 45 dc             	mov    -0x24(%ebp),%eax
    8813:	a3 0c a5 04 00       	mov    %eax,0x4a50c
    8818:	8b 45 d8             	mov    -0x28(%ebp),%eax
    881b:	a3 ec a4 04 00       	mov    %eax,0x4a4ec
    8820:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    8823:	a3 f0 a4 04 00       	mov    %eax,0x4a4f0
    8828:	8b 45 c0             	mov    -0x40(%ebp),%eax
    882b:	c1 f8 08             	sar    $0x8,%eax
    882e:	0f b6 c0             	movzbl %al,%eax
    8831:	8b 04 85 84 f7 00 00 	mov    0xf784(,%eax,4),%eax
    8838:	83 f8 ec             	cmp    $0xffffffec,%eax
    883b:	75 19                	jne    8856 <do_rdwt+0x1a0>
    883d:	6a 47                	push   $0x47
    883f:	68 a0 bc 00 00       	push   $0xbca0
    8844:	68 a0 bc 00 00       	push   $0xbca0
    8849:	68 58 bd 00 00       	push   $0xbd58
    884e:	e8 60 e2 ff ff       	call   6ab3 <assertion_failure>
    8853:	83 c4 10             	add    $0x10,%esp
    8856:	8b 45 c0             	mov    -0x40(%ebp),%eax
    8859:	c1 f8 08             	sar    $0x8,%eax
    885c:	0f b6 c0             	movzbl %al,%eax
    885f:	8b 04 85 84 f7 00 00 	mov    0xf784(,%eax,4),%eax
    8866:	83 ec 04             	sub    $0x4,%esp
    8869:	68 e0 a4 04 00       	push   $0x4a4e0
    886e:	50                   	push   %eax
    886f:	6a 03                	push   $0x3
    8871:	e8 f9 b5 ff ff       	call   3e6f <send_recv>
    8876:	83 c4 10             	add    $0x10,%esp
    8879:	a1 ec a4 04 00       	mov    0x4a4ec,%eax
    887e:	39 45 d8             	cmp    %eax,-0x28(%ebp)
    8881:	74 19                	je     889c <do_rdwt+0x1e6>
    8883:	6a 4b                	push   $0x4b
    8885:	68 a0 bc 00 00       	push   $0xbca0
    888a:	68 a0 bc 00 00       	push   $0xbca0
    888f:	68 87 bd 00 00       	push   $0xbd87
    8894:	e8 1a e2 ff ff       	call   6ab3 <assertion_failure>
    8899:	83 c4 10             	add    $0x10,%esp
    889c:	a1 ec a4 04 00       	mov    0x4a4ec,%eax
    88a1:	e9 9f 02 00 00       	jmp    8b45 <do_rdwt+0x48f>
    88a6:	8b 45 cc             	mov    -0x34(%ebp),%eax
    88a9:	8b 00                	mov    (%eax),%eax
    88ab:	3d 00 80 00 00       	cmp    $0x8000,%eax
    88b0:	74 25                	je     88d7 <do_rdwt+0x221>
    88b2:	8b 45 cc             	mov    -0x34(%ebp),%eax
    88b5:	8b 00                	mov    (%eax),%eax
    88b7:	3d 00 40 00 00       	cmp    $0x4000,%eax
    88bc:	74 19                	je     88d7 <do_rdwt+0x221>
    88be:	6a 50                	push   $0x50
    88c0:	68 a0 bc 00 00       	push   $0xbca0
    88c5:	68 a0 bc 00 00       	push   $0xbca0
    88ca:	68 9c bd 00 00       	push   $0xbd9c
    88cf:	e8 df e1 ff ff       	call   6ab3 <assertion_failure>
    88d4:	83 c4 10             	add    $0x10,%esp
    88d7:	a1 e4 a4 04 00       	mov    0x4a4e4,%eax
    88dc:	83 f8 06             	cmp    $0x6,%eax
    88df:	74 23                	je     8904 <do_rdwt+0x24e>
    88e1:	a1 e4 a4 04 00       	mov    0x4a4e4,%eax
    88e6:	83 f8 07             	cmp    $0x7,%eax
    88e9:	74 19                	je     8904 <do_rdwt+0x24e>
    88eb:	6a 51                	push   $0x51
    88ed:	68 a0 bc 00 00       	push   $0xbca0
    88f2:	68 a0 bc 00 00       	push   $0xbca0
    88f7:	68 d4 bd 00 00       	push   $0xbdd4
    88fc:	e8 b2 e1 ff ff       	call   6ab3 <assertion_failure>
    8901:	83 c4 10             	add    $0x10,%esp
    8904:	a1 e4 a4 04 00       	mov    0x4a4e4,%eax
    8909:	83 f8 06             	cmp    $0x6,%eax
    890c:	75 18                	jne    8926 <do_rdwt+0x270>
    890e:	8b 45 cc             	mov    -0x34(%ebp),%eax
    8911:	8b 40 04             	mov    0x4(%eax),%eax
    8914:	8b 4d d0             	mov    -0x30(%ebp),%ecx
    8917:	8b 55 d8             	mov    -0x28(%ebp),%edx
    891a:	01 ca                	add    %ecx,%edx
    891c:	39 d0                	cmp    %edx,%eax
    891e:	0f 47 c2             	cmova  %edx,%eax
    8921:	89 45 f4             	mov    %eax,-0xc(%ebp)
    8924:	eb 19                	jmp    893f <do_rdwt+0x289>
    8926:	8b 45 cc             	mov    -0x34(%ebp),%eax
    8929:	8b 40 0c             	mov    0xc(%eax),%eax
    892c:	c1 e0 09             	shl    $0x9,%eax
    892f:	8b 4d d0             	mov    -0x30(%ebp),%ecx
    8932:	8b 55 d8             	mov    -0x28(%ebp),%edx
    8935:	01 ca                	add    %ecx,%edx
    8937:	39 d0                	cmp    %edx,%eax
    8939:	0f 47 c2             	cmova  %edx,%eax
    893c:	89 45 f4             	mov    %eax,-0xc(%ebp)
    893f:	8b 45 d0             	mov    -0x30(%ebp),%eax
    8942:	99                   	cltd   
    8943:	c1 ea 17             	shr    $0x17,%edx
    8946:	01 d0                	add    %edx,%eax
    8948:	25 ff 01 00 00       	and    $0x1ff,%eax
    894d:	29 d0                	sub    %edx,%eax
    894f:	89 45 f0             	mov    %eax,-0x10(%ebp)
    8952:	8b 45 cc             	mov    -0x34(%ebp),%eax
    8955:	8b 40 08             	mov    0x8(%eax),%eax
    8958:	8b 55 d0             	mov    -0x30(%ebp),%edx
    895b:	c1 fa 09             	sar    $0x9,%edx
    895e:	01 d0                	add    %edx,%eax
    8960:	89 45 bc             	mov    %eax,-0x44(%ebp)
    8963:	8b 45 cc             	mov    -0x34(%ebp),%eax
    8966:	8b 40 08             	mov    0x8(%eax),%eax
    8969:	8b 55 f4             	mov    -0xc(%ebp),%edx
    896c:	c1 fa 09             	sar    $0x9,%edx
    896f:	01 d0                	add    %edx,%eax
    8971:	89 45 b8             	mov    %eax,-0x48(%ebp)
    8974:	a1 3c ab 00 00       	mov    0xab3c,%eax
    8979:	c1 f8 09             	sar    $0x9,%eax
    897c:	89 c2                	mov    %eax,%edx
    897e:	8b 45 b8             	mov    -0x48(%ebp),%eax
    8981:	2b 45 bc             	sub    -0x44(%ebp),%eax
    8984:	83 c0 01             	add    $0x1,%eax
    8987:	39 c2                	cmp    %eax,%edx
    8989:	0f 4e c2             	cmovle %edx,%eax
    898c:	89 45 b4             	mov    %eax,-0x4c(%ebp)
    898f:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    8996:	8b 45 d8             	mov    -0x28(%ebp),%eax
    8999:	89 45 e8             	mov    %eax,-0x18(%ebp)
    899c:	8b 45 bc             	mov    -0x44(%ebp),%eax
    899f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    89a2:	e9 49 01 00 00       	jmp    8af0 <do_rdwt+0x43a>
    89a7:	8b 45 b4             	mov    -0x4c(%ebp),%eax
    89aa:	c1 e0 09             	shl    $0x9,%eax
    89ad:	2b 45 f0             	sub    -0x10(%ebp),%eax
    89b0:	39 45 e8             	cmp    %eax,-0x18(%ebp)
    89b3:	0f 4e 45 e8          	cmovle -0x18(%ebp),%eax
    89b7:	89 45 b0             	mov    %eax,-0x50(%ebp)
    89ba:	8b 1d 9c f7 00 00    	mov    0xf79c,%ebx
    89c0:	8b 45 b4             	mov    -0x4c(%ebp),%eax
    89c3:	c1 e0 09             	shl    $0x9,%eax
    89c6:	89 c6                	mov    %eax,%esi
    89c8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    89cb:	c1 e0 09             	shl    $0x9,%eax
    89ce:	99                   	cltd   
    89cf:	8b 4d cc             	mov    -0x34(%ebp),%ecx
    89d2:	8b 49 20             	mov    0x20(%ecx),%ecx
    89d5:	83 ec 04             	sub    $0x4,%esp
    89d8:	53                   	push   %ebx
    89d9:	6a 03                	push   $0x3
    89db:	56                   	push   %esi
    89dc:	52                   	push   %edx
    89dd:	50                   	push   %eax
    89de:	51                   	push   %ecx
    89df:	68 eb 03 00 00       	push   $0x3eb
    89e4:	e8 73 eb ff ff       	call   755c <rw_sector>
    89e9:	83 c4 20             	add    $0x20,%esp
    89ec:	a1 e4 a4 04 00       	mov    0x4a4e4,%eax
    89f1:	83 f8 06             	cmp    $0x6,%eax
    89f4:	75 44                	jne    8a3a <do_rdwt+0x384>
    89f6:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    89fc:	8b 45 f0             	mov    -0x10(%ebp),%eax
    89ff:	01 d0                	add    %edx,%eax
    8a01:	83 ec 08             	sub    $0x8,%esp
    8a04:	50                   	push   %eax
    8a05:	6a 03                	push   $0x3
    8a07:	e8 6a b5 ff ff       	call   3f76 <va2la>
    8a0c:	83 c4 10             	add    $0x10,%esp
    8a0f:	89 c3                	mov    %eax,%ebx
    8a11:	8b 55 ec             	mov    -0x14(%ebp),%edx
    8a14:	8b 45 dc             	mov    -0x24(%ebp),%eax
    8a17:	01 d0                	add    %edx,%eax
    8a19:	83 ec 08             	sub    $0x8,%esp
    8a1c:	50                   	push   %eax
    8a1d:	ff 75 d4             	pushl  -0x2c(%ebp)
    8a20:	e8 51 b5 ff ff       	call   3f76 <va2la>
    8a25:	83 c4 10             	add    $0x10,%esp
    8a28:	83 ec 04             	sub    $0x4,%esp
    8a2b:	ff 75 b0             	pushl  -0x50(%ebp)
    8a2e:	53                   	push   %ebx
    8a2f:	50                   	push   %eax
    8a30:	e8 ab de ff ff       	call   68e0 <memcpy>
    8a35:	83 c4 10             	add    $0x10,%esp
    8a38:	eb 74                	jmp    8aae <do_rdwt+0x3f8>
    8a3a:	8b 55 ec             	mov    -0x14(%ebp),%edx
    8a3d:	8b 45 dc             	mov    -0x24(%ebp),%eax
    8a40:	01 d0                	add    %edx,%eax
    8a42:	83 ec 08             	sub    $0x8,%esp
    8a45:	50                   	push   %eax
    8a46:	ff 75 d4             	pushl  -0x2c(%ebp)
    8a49:	e8 28 b5 ff ff       	call   3f76 <va2la>
    8a4e:	83 c4 10             	add    $0x10,%esp
    8a51:	89 c3                	mov    %eax,%ebx
    8a53:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    8a59:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8a5c:	01 d0                	add    %edx,%eax
    8a5e:	83 ec 08             	sub    $0x8,%esp
    8a61:	50                   	push   %eax
    8a62:	6a 03                	push   $0x3
    8a64:	e8 0d b5 ff ff       	call   3f76 <va2la>
    8a69:	83 c4 10             	add    $0x10,%esp
    8a6c:	83 ec 04             	sub    $0x4,%esp
    8a6f:	ff 75 b0             	pushl  -0x50(%ebp)
    8a72:	53                   	push   %ebx
    8a73:	50                   	push   %eax
    8a74:	e8 67 de ff ff       	call   68e0 <memcpy>
    8a79:	83 c4 10             	add    $0x10,%esp
    8a7c:	8b 1d 9c f7 00 00    	mov    0xf79c,%ebx
    8a82:	8b 45 b4             	mov    -0x4c(%ebp),%eax
    8a85:	c1 e0 09             	shl    $0x9,%eax
    8a88:	89 c6                	mov    %eax,%esi
    8a8a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    8a8d:	c1 e0 09             	shl    $0x9,%eax
    8a90:	99                   	cltd   
    8a91:	8b 4d cc             	mov    -0x34(%ebp),%ecx
    8a94:	8b 49 20             	mov    0x20(%ecx),%ecx
    8a97:	83 ec 04             	sub    $0x4,%esp
    8a9a:	53                   	push   %ebx
    8a9b:	6a 03                	push   $0x3
    8a9d:	56                   	push   %esi
    8a9e:	52                   	push   %edx
    8a9f:	50                   	push   %eax
    8aa0:	51                   	push   %ecx
    8aa1:	68 ec 03 00 00       	push   $0x3ec
    8aa6:	e8 b1 ea ff ff       	call   755c <rw_sector>
    8aab:	83 c4 20             	add    $0x20,%esp
    8aae:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    8ab5:	8b 45 b0             	mov    -0x50(%ebp),%eax
    8ab8:	01 45 ec             	add    %eax,-0x14(%ebp)
    8abb:	a1 c4 97 04 00       	mov    0x497c4,%eax
    8ac0:	8b 55 e0             	mov    -0x20(%ebp),%edx
    8ac3:	83 c2 24             	add    $0x24,%edx
    8ac6:	8b 44 90 04          	mov    0x4(%eax,%edx,4),%eax
    8aca:	8b 48 04             	mov    0x4(%eax),%ecx
    8acd:	a1 c4 97 04 00       	mov    0x497c4,%eax
    8ad2:	8b 55 e0             	mov    -0x20(%ebp),%edx
    8ad5:	83 c2 24             	add    $0x24,%edx
    8ad8:	8b 44 90 04          	mov    0x4(%eax,%edx,4),%eax
    8adc:	8b 55 b0             	mov    -0x50(%ebp),%edx
    8adf:	01 ca                	add    %ecx,%edx
    8ae1:	89 50 04             	mov    %edx,0x4(%eax)
    8ae4:	8b 45 b0             	mov    -0x50(%ebp),%eax
    8ae7:	29 45 e8             	sub    %eax,-0x18(%ebp)
    8aea:	8b 45 b4             	mov    -0x4c(%ebp),%eax
    8aed:	01 45 e4             	add    %eax,-0x1c(%ebp)
    8af0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    8af3:	3b 45 b8             	cmp    -0x48(%ebp),%eax
    8af6:	0f 8e ab fe ff ff    	jle    89a7 <do_rdwt+0x2f1>
    8afc:	a1 c4 97 04 00       	mov    0x497c4,%eax
    8b01:	8b 55 e0             	mov    -0x20(%ebp),%edx
    8b04:	83 c2 24             	add    $0x24,%edx
    8b07:	8b 44 90 04          	mov    0x4(%eax,%edx,4),%eax
    8b0b:	8b 40 04             	mov    0x4(%eax),%eax
    8b0e:	89 c2                	mov    %eax,%edx
    8b10:	8b 45 cc             	mov    -0x34(%ebp),%eax
    8b13:	8b 40 04             	mov    0x4(%eax),%eax
    8b16:	39 c2                	cmp    %eax,%edx
    8b18:	76 28                	jbe    8b42 <do_rdwt+0x48c>
    8b1a:	a1 c4 97 04 00       	mov    0x497c4,%eax
    8b1f:	8b 55 e0             	mov    -0x20(%ebp),%edx
    8b22:	83 c2 24             	add    $0x24,%edx
    8b25:	8b 44 90 04          	mov    0x4(%eax,%edx,4),%eax
    8b29:	8b 40 04             	mov    0x4(%eax),%eax
    8b2c:	89 c2                	mov    %eax,%edx
    8b2e:	8b 45 cc             	mov    -0x34(%ebp),%eax
    8b31:	89 50 04             	mov    %edx,0x4(%eax)
    8b34:	83 ec 0c             	sub    $0xc,%esp
    8b37:	ff 75 cc             	pushl  -0x34(%ebp)
    8b3a:	e8 0c ee ff ff       	call   794b <sync_inode>
    8b3f:	83 c4 10             	add    $0x10,%esp
    8b42:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8b45:	8d 65 f8             	lea    -0x8(%ebp),%esp
    8b48:	5b                   	pop    %ebx
    8b49:	5e                   	pop    %esi
    8b4a:	5d                   	pop    %ebp
    8b4b:	c3                   	ret    

00008b4c <do_unlink>:
    8b4c:	55                   	push   %ebp
    8b4d:	89 e5                	mov    %esp,%ebp
    8b4f:	56                   	push   %esi
    8b50:	53                   	push   %ebx
    8b51:	81 ec 60 01 00 00    	sub    $0x160,%esp
    8b57:	a1 ec a4 04 00       	mov    0x4a4ec,%eax
    8b5c:	89 45 d0             	mov    %eax,-0x30(%ebp)
    8b5f:	a1 e0 a4 04 00       	mov    0x4a4e0,%eax
    8b64:	89 45 cc             	mov    %eax,-0x34(%ebp)
    8b67:	83 7d d0 7f          	cmpl   $0x7f,-0x30(%ebp)
    8b6b:	7e 19                	jle    8b86 <do_unlink+0x3a>
    8b6d:	6a 2a                	push   $0x2a
    8b6f:	68 04 be 00 00       	push   $0xbe04
    8b74:	68 04 be 00 00       	push   $0xbe04
    8b79:	68 0e be 00 00       	push   $0xbe0e
    8b7e:	e8 30 df ff ff       	call   6ab3 <assertion_failure>
    8b83:	83 c4 10             	add    $0x10,%esp
    8b86:	a1 08 a5 04 00       	mov    0x4a508,%eax
    8b8b:	83 ec 08             	sub    $0x8,%esp
    8b8e:	50                   	push   %eax
    8b8f:	ff 75 cc             	pushl  -0x34(%ebp)
    8b92:	e8 df b3 ff ff       	call   3f76 <va2la>
    8b97:	83 c4 10             	add    $0x10,%esp
    8b9a:	89 c3                	mov    %eax,%ebx
    8b9c:	83 ec 08             	sub    $0x8,%esp
    8b9f:	8d 85 24 ff ff ff    	lea    -0xdc(%ebp),%eax
    8ba5:	50                   	push   %eax
    8ba6:	6a 03                	push   $0x3
    8ba8:	e8 c9 b3 ff ff       	call   3f76 <va2la>
    8bad:	83 c4 10             	add    $0x10,%esp
    8bb0:	83 ec 04             	sub    $0x4,%esp
    8bb3:	ff 75 d0             	pushl  -0x30(%ebp)
    8bb6:	53                   	push   %ebx
    8bb7:	50                   	push   %eax
    8bb8:	e8 23 dd ff ff       	call   68e0 <memcpy>
    8bbd:	83 c4 10             	add    $0x10,%esp
    8bc0:	8d 95 24 ff ff ff    	lea    -0xdc(%ebp),%edx
    8bc6:	8b 45 d0             	mov    -0x30(%ebp),%eax
    8bc9:	01 d0                	add    %edx,%eax
    8bcb:	c6 00 00             	movb   $0x0,(%eax)
    8bce:	83 ec 08             	sub    $0x8,%esp
    8bd1:	68 22 be 00 00       	push   $0xbe22
    8bd6:	8d 85 24 ff ff ff    	lea    -0xdc(%ebp),%eax
    8bdc:	50                   	push   %eax
    8bdd:	e8 e8 dd ff ff       	call   69ca <strcmp>
    8be2:	83 c4 10             	add    $0x10,%esp
    8be5:	85 c0                	test   %eax,%eax
    8be7:	75 1a                	jne    8c03 <do_unlink+0xb7>
    8be9:	83 ec 0c             	sub    $0xc,%esp
    8bec:	68 24 be 00 00       	push   $0xbe24
    8bf1:	e8 d1 d6 ff ff       	call   62c7 <printl>
    8bf6:	83 c4 10             	add    $0x10,%esp
    8bf9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    8bfe:	e9 54 07 00 00       	jmp    9357 <do_unlink+0x80b>
    8c03:	83 ec 0c             	sub    $0xc,%esp
    8c06:	8d 85 24 ff ff ff    	lea    -0xdc(%ebp),%eax
    8c0c:	50                   	push   %eax
    8c0d:	e8 c7 f8 ff ff       	call   84d9 <search_file>
    8c12:	83 c4 10             	add    $0x10,%esp
    8c15:	89 45 c8             	mov    %eax,-0x38(%ebp)
    8c18:	83 7d c8 00          	cmpl   $0x0,-0x38(%ebp)
    8c1c:	75 21                	jne    8c3f <do_unlink+0xf3>
    8c1e:	83 ec 08             	sub    $0x8,%esp
    8c21:	8d 85 24 ff ff ff    	lea    -0xdc(%ebp),%eax
    8c27:	50                   	push   %eax
    8c28:	68 50 be 00 00       	push   $0xbe50
    8c2d:	e8 95 d6 ff ff       	call   62c7 <printl>
    8c32:	83 c4 10             	add    $0x10,%esp
    8c35:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    8c3a:	e9 18 07 00 00       	jmp    9357 <do_unlink+0x80b>
    8c3f:	83 ec 04             	sub    $0x4,%esp
    8c42:	8d 85 a0 fe ff ff    	lea    -0x160(%ebp),%eax
    8c48:	50                   	push   %eax
    8c49:	8d 85 24 ff ff ff    	lea    -0xdc(%ebp),%eax
    8c4f:	50                   	push   %eax
    8c50:	8d 85 a4 fe ff ff    	lea    -0x15c(%ebp),%eax
    8c56:	50                   	push   %eax
    8c57:	e8 d3 f9 ff ff       	call   862f <strip_path>
    8c5c:	83 c4 10             	add    $0x10,%esp
    8c5f:	85 c0                	test   %eax,%eax
    8c61:	74 0a                	je     8c6d <do_unlink+0x121>
    8c63:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    8c68:	e9 ea 06 00 00       	jmp    9357 <do_unlink+0x80b>
    8c6d:	8b 85 a0 fe ff ff    	mov    -0x160(%ebp),%eax
    8c73:	8b 40 20             	mov    0x20(%eax),%eax
    8c76:	83 ec 08             	sub    $0x8,%esp
    8c79:	ff 75 c8             	pushl  -0x38(%ebp)
    8c7c:	50                   	push   %eax
    8c7d:	e8 28 eb ff ff       	call   77aa <get_inode>
    8c82:	83 c4 10             	add    $0x10,%esp
    8c85:	89 45 c4             	mov    %eax,-0x3c(%ebp)
    8c88:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    8c8b:	8b 00                	mov    (%eax),%eax
    8c8d:	3d 00 80 00 00       	cmp    $0x8000,%eax
    8c92:	74 21                	je     8cb5 <do_unlink+0x169>
    8c94:	83 ec 08             	sub    $0x8,%esp
    8c97:	8d 85 24 ff ff ff    	lea    -0xdc(%ebp),%eax
    8c9d:	50                   	push   %eax
    8c9e:	68 8c be 00 00       	push   $0xbe8c
    8ca3:	e8 1f d6 ff ff       	call   62c7 <printl>
    8ca8:	83 c4 10             	add    $0x10,%esp
    8cab:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    8cb0:	e9 a2 06 00 00       	jmp    9357 <do_unlink+0x80b>
    8cb5:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    8cb8:	8b 40 24             	mov    0x24(%eax),%eax
    8cbb:	83 f8 01             	cmp    $0x1,%eax
    8cbe:	7e 28                	jle    8ce8 <do_unlink+0x19c>
    8cc0:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    8cc3:	8b 40 24             	mov    0x24(%eax),%eax
    8cc6:	83 ec 04             	sub    $0x4,%esp
    8cc9:	50                   	push   %eax
    8cca:	8d 85 24 ff ff ff    	lea    -0xdc(%ebp),%eax
    8cd0:	50                   	push   %eax
    8cd1:	68 c8 be 00 00       	push   $0xbec8
    8cd6:	e8 ec d5 ff ff       	call   62c7 <printl>
    8cdb:	83 c4 10             	add    $0x10,%esp
    8cde:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    8ce3:	e9 6f 06 00 00       	jmp    9357 <do_unlink+0x80b>
    8ce8:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    8ceb:	8b 40 20             	mov    0x20(%eax),%eax
    8cee:	83 ec 0c             	sub    $0xc,%esp
    8cf1:	50                   	push   %eax
    8cf2:	e8 6d ea ff ff       	call   7764 <get_super_block>
    8cf7:	83 c4 10             	add    $0x10,%esp
    8cfa:	89 45 c0             	mov    %eax,-0x40(%ebp)
    8cfd:	8b 45 c8             	mov    -0x38(%ebp),%eax
    8d00:	8d 50 07             	lea    0x7(%eax),%edx
    8d03:	85 c0                	test   %eax,%eax
    8d05:	0f 48 c2             	cmovs  %edx,%eax
    8d08:	c1 f8 03             	sar    $0x3,%eax
    8d0b:	89 45 bc             	mov    %eax,-0x44(%ebp)
    8d0e:	8b 45 c8             	mov    -0x38(%ebp),%eax
    8d11:	99                   	cltd   
    8d12:	c1 ea 1d             	shr    $0x1d,%edx
    8d15:	01 d0                	add    %edx,%eax
    8d17:	83 e0 07             	and    $0x7,%eax
    8d1a:	29 d0                	sub    %edx,%eax
    8d1c:	89 45 b8             	mov    %eax,-0x48(%ebp)
    8d1f:	81 7d bc ff 01 00 00 	cmpl   $0x1ff,-0x44(%ebp)
    8d26:	7e 19                	jle    8d41 <do_unlink+0x1f5>
    8d28:	6a 57                	push   $0x57
    8d2a:	68 04 be 00 00       	push   $0xbe04
    8d2f:	68 04 be 00 00       	push   $0xbe04
    8d34:	68 fa be 00 00       	push   $0xbefa
    8d39:	e8 75 dd ff ff       	call   6ab3 <assertion_failure>
    8d3e:	83 c4 10             	add    $0x10,%esp
    8d41:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    8d47:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    8d4a:	8b 40 20             	mov    0x20(%eax),%eax
    8d4d:	83 ec 04             	sub    $0x4,%esp
    8d50:	52                   	push   %edx
    8d51:	6a 03                	push   $0x3
    8d53:	68 00 02 00 00       	push   $0x200
    8d58:	6a 00                	push   $0x0
    8d5a:	68 00 04 00 00       	push   $0x400
    8d5f:	50                   	push   %eax
    8d60:	68 eb 03 00 00       	push   $0x3eb
    8d65:	e8 f2 e7 ff ff       	call   755c <rw_sector>
    8d6a:	83 c4 20             	add    $0x20,%esp
    8d6d:	8b 0d 9c f7 00 00    	mov    0xf79c,%ecx
    8d73:	8b 45 bc             	mov    -0x44(%ebp),%eax
    8d76:	99                   	cltd   
    8d77:	c1 ea 17             	shr    $0x17,%edx
    8d7a:	01 d0                	add    %edx,%eax
    8d7c:	25 ff 01 00 00       	and    $0x1ff,%eax
    8d81:	29 d0                	sub    %edx,%eax
    8d83:	01 c8                	add    %ecx,%eax
    8d85:	0f b6 00             	movzbl (%eax),%eax
    8d88:	0f b6 d0             	movzbl %al,%edx
    8d8b:	8b 45 b8             	mov    -0x48(%ebp),%eax
    8d8e:	89 c1                	mov    %eax,%ecx
    8d90:	d3 fa                	sar    %cl,%edx
    8d92:	89 d0                	mov    %edx,%eax
    8d94:	83 e0 01             	and    $0x1,%eax
    8d97:	85 c0                	test   %eax,%eax
    8d99:	75 19                	jne    8db4 <do_unlink+0x268>
    8d9b:	6a 5a                	push   $0x5a
    8d9d:	68 04 be 00 00       	push   $0xbe04
    8da2:	68 04 be 00 00       	push   $0xbe04
    8da7:	68 14 bf 00 00       	push   $0xbf14
    8dac:	e8 02 dd ff ff       	call   6ab3 <assertion_failure>
    8db1:	83 c4 10             	add    $0x10,%esp
    8db4:	8b 0d 9c f7 00 00    	mov    0xf79c,%ecx
    8dba:	8b 45 bc             	mov    -0x44(%ebp),%eax
    8dbd:	99                   	cltd   
    8dbe:	c1 ea 17             	shr    $0x17,%edx
    8dc1:	01 d0                	add    %edx,%eax
    8dc3:	25 ff 01 00 00       	and    $0x1ff,%eax
    8dc8:	29 d0                	sub    %edx,%eax
    8dca:	89 c2                	mov    %eax,%edx
    8dcc:	89 d0                	mov    %edx,%eax
    8dce:	01 c8                	add    %ecx,%eax
    8dd0:	0f b6 00             	movzbl (%eax),%eax
    8dd3:	89 c3                	mov    %eax,%ebx
    8dd5:	8b 45 b8             	mov    -0x48(%ebp),%eax
    8dd8:	be 01 00 00 00       	mov    $0x1,%esi
    8ddd:	89 c1                	mov    %eax,%ecx
    8ddf:	d3 e6                	shl    %cl,%esi
    8de1:	89 f0                	mov    %esi,%eax
    8de3:	f7 d0                	not    %eax
    8de5:	21 c3                	and    %eax,%ebx
    8de7:	89 d9                	mov    %ebx,%ecx
    8de9:	a1 9c f7 00 00       	mov    0xf79c,%eax
    8dee:	01 d0                	add    %edx,%eax
    8df0:	89 ca                	mov    %ecx,%edx
    8df2:	88 10                	mov    %dl,(%eax)
    8df4:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    8dfa:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    8dfd:	8b 40 20             	mov    0x20(%eax),%eax
    8e00:	83 ec 04             	sub    $0x4,%esp
    8e03:	52                   	push   %edx
    8e04:	6a 03                	push   $0x3
    8e06:	68 00 02 00 00       	push   $0x200
    8e0b:	6a 00                	push   $0x0
    8e0d:	68 00 04 00 00       	push   $0x400
    8e12:	50                   	push   %eax
    8e13:	68 ec 03 00 00       	push   $0x3ec
    8e18:	e8 3f e7 ff ff       	call   755c <rw_sector>
    8e1d:	83 c4 20             	add    $0x20,%esp
    8e20:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    8e23:	8b 50 08             	mov    0x8(%eax),%edx
    8e26:	8b 45 c0             	mov    -0x40(%ebp),%eax
    8e29:	8b 40 14             	mov    0x14(%eax),%eax
    8e2c:	29 c2                	sub    %eax,%edx
    8e2e:	89 d0                	mov    %edx,%eax
    8e30:	83 c0 01             	add    $0x1,%eax
    8e33:	89 45 b8             	mov    %eax,-0x48(%ebp)
    8e36:	8b 45 b8             	mov    -0x48(%ebp),%eax
    8e39:	8d 50 07             	lea    0x7(%eax),%edx
    8e3c:	85 c0                	test   %eax,%eax
    8e3e:	0f 48 c2             	cmovs  %edx,%eax
    8e41:	c1 f8 03             	sar    $0x3,%eax
    8e44:	89 45 bc             	mov    %eax,-0x44(%ebp)
    8e47:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    8e4a:	8b 40 0c             	mov    0xc(%eax),%eax
    8e4d:	89 45 f4             	mov    %eax,-0xc(%ebp)
    8e50:	8b 45 b8             	mov    -0x48(%ebp),%eax
    8e53:	99                   	cltd   
    8e54:	c1 ea 1d             	shr    $0x1d,%edx
    8e57:	01 d0                	add    %edx,%eax
    8e59:	83 e0 07             	and    $0x7,%eax
    8e5c:	29 d0                	sub    %edx,%eax
    8e5e:	ba 08 00 00 00       	mov    $0x8,%edx
    8e63:	29 c2                	sub    %eax,%edx
    8e65:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8e68:	29 d0                	sub    %edx,%eax
    8e6a:	8d 50 07             	lea    0x7(%eax),%edx
    8e6d:	85 c0                	test   %eax,%eax
    8e6f:	0f 48 c2             	cmovs  %edx,%eax
    8e72:	c1 f8 03             	sar    $0x3,%eax
    8e75:	89 45 b4             	mov    %eax,-0x4c(%ebp)
    8e78:	8b 45 c0             	mov    -0x40(%ebp),%eax
    8e7b:	8b 50 0c             	mov    0xc(%eax),%edx
    8e7e:	8b 45 bc             	mov    -0x44(%ebp),%eax
    8e81:	8d 88 ff 01 00 00    	lea    0x1ff(%eax),%ecx
    8e87:	85 c0                	test   %eax,%eax
    8e89:	0f 48 c1             	cmovs  %ecx,%eax
    8e8c:	c1 f8 09             	sar    $0x9,%eax
    8e8f:	01 d0                	add    %edx,%eax
    8e91:	83 c0 02             	add    $0x2,%eax
    8e94:	89 45 f0             	mov    %eax,-0x10(%ebp)
    8e97:	8b 1d 9c f7 00 00    	mov    0xf79c,%ebx
    8e9d:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8ea0:	c1 e0 09             	shl    $0x9,%eax
    8ea3:	99                   	cltd   
    8ea4:	8b 4d c4             	mov    -0x3c(%ebp),%ecx
    8ea7:	8b 49 20             	mov    0x20(%ecx),%ecx
    8eaa:	83 ec 04             	sub    $0x4,%esp
    8ead:	53                   	push   %ebx
    8eae:	6a 03                	push   $0x3
    8eb0:	68 00 02 00 00       	push   $0x200
    8eb5:	52                   	push   %edx
    8eb6:	50                   	push   %eax
    8eb7:	51                   	push   %ecx
    8eb8:	68 eb 03 00 00       	push   $0x3eb
    8ebd:	e8 9a e6 ff ff       	call   755c <rw_sector>
    8ec2:	83 c4 20             	add    $0x20,%esp
    8ec5:	8b 45 b8             	mov    -0x48(%ebp),%eax
    8ec8:	99                   	cltd   
    8ec9:	c1 ea 1d             	shr    $0x1d,%edx
    8ecc:	01 d0                	add    %edx,%eax
    8ece:	83 e0 07             	and    $0x7,%eax
    8ed1:	29 d0                	sub    %edx,%eax
    8ed3:	89 45 ec             	mov    %eax,-0x14(%ebp)
    8ed6:	e9 8f 00 00 00       	jmp    8f6a <do_unlink+0x41e>
    8edb:	8b 0d 9c f7 00 00    	mov    0xf79c,%ecx
    8ee1:	8b 45 bc             	mov    -0x44(%ebp),%eax
    8ee4:	99                   	cltd   
    8ee5:	c1 ea 17             	shr    $0x17,%edx
    8ee8:	01 d0                	add    %edx,%eax
    8eea:	25 ff 01 00 00       	and    $0x1ff,%eax
    8eef:	29 d0                	sub    %edx,%eax
    8ef1:	01 c8                	add    %ecx,%eax
    8ef3:	0f b6 00             	movzbl (%eax),%eax
    8ef6:	0f b6 d0             	movzbl %al,%edx
    8ef9:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8efc:	89 c1                	mov    %eax,%ecx
    8efe:	d3 fa                	sar    %cl,%edx
    8f00:	89 d0                	mov    %edx,%eax
    8f02:	83 e0 01             	and    $0x1,%eax
    8f05:	85 c0                	test   %eax,%eax
    8f07:	75 19                	jne    8f22 <do_unlink+0x3d6>
    8f09:	6a 7b                	push   $0x7b
    8f0b:	68 04 be 00 00       	push   $0xbe04
    8f10:	68 04 be 00 00       	push   $0xbe04
    8f15:	68 44 bf 00 00       	push   $0xbf44
    8f1a:	e8 94 db ff ff       	call   6ab3 <assertion_failure>
    8f1f:	83 c4 10             	add    $0x10,%esp
    8f22:	8b 0d 9c f7 00 00    	mov    0xf79c,%ecx
    8f28:	8b 45 bc             	mov    -0x44(%ebp),%eax
    8f2b:	99                   	cltd   
    8f2c:	c1 ea 17             	shr    $0x17,%edx
    8f2f:	01 d0                	add    %edx,%eax
    8f31:	25 ff 01 00 00       	and    $0x1ff,%eax
    8f36:	29 d0                	sub    %edx,%eax
    8f38:	89 c2                	mov    %eax,%edx
    8f3a:	89 d0                	mov    %edx,%eax
    8f3c:	01 c8                	add    %ecx,%eax
    8f3e:	0f b6 00             	movzbl (%eax),%eax
    8f41:	89 c3                	mov    %eax,%ebx
    8f43:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8f46:	be 01 00 00 00       	mov    $0x1,%esi
    8f4b:	89 c1                	mov    %eax,%ecx
    8f4d:	d3 e6                	shl    %cl,%esi
    8f4f:	89 f0                	mov    %esi,%eax
    8f51:	f7 d0                	not    %eax
    8f53:	21 c3                	and    %eax,%ebx
    8f55:	89 d9                	mov    %ebx,%ecx
    8f57:	a1 9c f7 00 00       	mov    0xf79c,%eax
    8f5c:	01 d0                	add    %edx,%eax
    8f5e:	89 ca                	mov    %ecx,%edx
    8f60:	88 10                	mov    %dl,(%eax)
    8f62:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
    8f66:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
    8f6a:	83 7d ec 07          	cmpl   $0x7,-0x14(%ebp)
    8f6e:	7f 0a                	jg     8f7a <do_unlink+0x42e>
    8f70:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    8f74:	0f 85 61 ff ff ff    	jne    8edb <do_unlink+0x38f>
    8f7a:	8b 45 bc             	mov    -0x44(%ebp),%eax
    8f7d:	99                   	cltd   
    8f7e:	c1 ea 17             	shr    $0x17,%edx
    8f81:	01 d0                	add    %edx,%eax
    8f83:	25 ff 01 00 00       	and    $0x1ff,%eax
    8f88:	29 d0                	sub    %edx,%eax
    8f8a:	83 c0 01             	add    $0x1,%eax
    8f8d:	89 45 ec             	mov    %eax,-0x14(%ebp)
    8f90:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
    8f97:	e9 b8 00 00 00       	jmp    9054 <do_unlink+0x508>
    8f9c:	81 7d ec 00 02 00 00 	cmpl   $0x200,-0x14(%ebp)
    8fa3:	75 67                	jne    900c <do_unlink+0x4c0>
    8fa5:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    8fac:	8b 1d 9c f7 00 00    	mov    0xf79c,%ebx
    8fb2:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8fb5:	c1 e0 09             	shl    $0x9,%eax
    8fb8:	99                   	cltd   
    8fb9:	8b 4d c4             	mov    -0x3c(%ebp),%ecx
    8fbc:	8b 49 20             	mov    0x20(%ecx),%ecx
    8fbf:	83 ec 04             	sub    $0x4,%esp
    8fc2:	53                   	push   %ebx
    8fc3:	6a 03                	push   $0x3
    8fc5:	68 00 02 00 00       	push   $0x200
    8fca:	52                   	push   %edx
    8fcb:	50                   	push   %eax
    8fcc:	51                   	push   %ecx
    8fcd:	68 ec 03 00 00       	push   $0x3ec
    8fd2:	e8 85 e5 ff ff       	call   755c <rw_sector>
    8fd7:	83 c4 20             	add    $0x20,%esp
    8fda:	8b 1d 9c f7 00 00    	mov    0xf79c,%ebx
    8fe0:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    8fe4:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8fe7:	c1 e0 09             	shl    $0x9,%eax
    8fea:	99                   	cltd   
    8feb:	8b 4d c4             	mov    -0x3c(%ebp),%ecx
    8fee:	8b 49 20             	mov    0x20(%ecx),%ecx
    8ff1:	83 ec 04             	sub    $0x4,%esp
    8ff4:	53                   	push   %ebx
    8ff5:	6a 03                	push   $0x3
    8ff7:	68 00 02 00 00       	push   $0x200
    8ffc:	52                   	push   %edx
    8ffd:	50                   	push   %eax
    8ffe:	51                   	push   %ecx
    8fff:	68 eb 03 00 00       	push   $0x3eb
    9004:	e8 53 e5 ff ff       	call   755c <rw_sector>
    9009:	83 c4 20             	add    $0x20,%esp
    900c:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    9012:	8b 45 ec             	mov    -0x14(%ebp),%eax
    9015:	01 d0                	add    %edx,%eax
    9017:	0f b6 00             	movzbl (%eax),%eax
    901a:	3c ff                	cmp    $0xff,%al
    901c:	74 1c                	je     903a <do_unlink+0x4ee>
    901e:	68 88 00 00 00       	push   $0x88
    9023:	68 04 be 00 00       	push   $0xbe04
    9028:	68 04 be 00 00       	push   $0xbe04
    902d:	68 72 bf 00 00       	push   $0xbf72
    9032:	e8 7c da ff ff       	call   6ab3 <assertion_failure>
    9037:	83 c4 10             	add    $0x10,%esp
    903a:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    9040:	8b 45 ec             	mov    -0x14(%ebp),%eax
    9043:	01 d0                	add    %edx,%eax
    9045:	c6 00 00             	movb   $0x0,(%eax)
    9048:	83 45 e8 01          	addl   $0x1,-0x18(%ebp)
    904c:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
    9050:	83 6d f4 08          	subl   $0x8,-0xc(%ebp)
    9054:	8b 45 e8             	mov    -0x18(%ebp),%eax
    9057:	3b 45 b4             	cmp    -0x4c(%ebp),%eax
    905a:	0f 8c 3c ff ff ff    	jl     8f9c <do_unlink+0x450>
    9060:	81 7d ec 00 02 00 00 	cmpl   $0x200,-0x14(%ebp)
    9067:	75 67                	jne    90d0 <do_unlink+0x584>
    9069:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    9070:	8b 1d 9c f7 00 00    	mov    0xf79c,%ebx
    9076:	8b 45 f0             	mov    -0x10(%ebp),%eax
    9079:	c1 e0 09             	shl    $0x9,%eax
    907c:	99                   	cltd   
    907d:	8b 4d c4             	mov    -0x3c(%ebp),%ecx
    9080:	8b 49 20             	mov    0x20(%ecx),%ecx
    9083:	83 ec 04             	sub    $0x4,%esp
    9086:	53                   	push   %ebx
    9087:	6a 03                	push   $0x3
    9089:	68 00 02 00 00       	push   $0x200
    908e:	52                   	push   %edx
    908f:	50                   	push   %eax
    9090:	51                   	push   %ecx
    9091:	68 ec 03 00 00       	push   $0x3ec
    9096:	e8 c1 e4 ff ff       	call   755c <rw_sector>
    909b:	83 c4 20             	add    $0x20,%esp
    909e:	8b 1d 9c f7 00 00    	mov    0xf79c,%ebx
    90a4:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    90a8:	8b 45 f0             	mov    -0x10(%ebp),%eax
    90ab:	c1 e0 09             	shl    $0x9,%eax
    90ae:	99                   	cltd   
    90af:	8b 4d c4             	mov    -0x3c(%ebp),%ecx
    90b2:	8b 49 20             	mov    0x20(%ecx),%ecx
    90b5:	83 ec 04             	sub    $0x4,%esp
    90b8:	53                   	push   %ebx
    90b9:	6a 03                	push   $0x3
    90bb:	68 00 02 00 00       	push   $0x200
    90c0:	52                   	push   %edx
    90c1:	50                   	push   %eax
    90c2:	51                   	push   %ecx
    90c3:	68 eb 03 00 00       	push   $0x3eb
    90c8:	e8 8f e4 ff ff       	call   755c <rw_sector>
    90cd:	83 c4 20             	add    $0x20,%esp
    90d0:	8b 45 f4             	mov    -0xc(%ebp),%eax
    90d3:	ba ff 00 00 00       	mov    $0xff,%edx
    90d8:	89 c1                	mov    %eax,%ecx
    90da:	d3 e2                	shl    %cl,%edx
    90dc:	89 d0                	mov    %edx,%eax
    90de:	f7 d0                	not    %eax
    90e0:	88 45 b3             	mov    %al,-0x4d(%ebp)
    90e3:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    90e9:	8b 45 ec             	mov    -0x14(%ebp),%eax
    90ec:	01 d0                	add    %edx,%eax
    90ee:	0f b6 00             	movzbl (%eax),%eax
    90f1:	22 45 b3             	and    -0x4d(%ebp),%al
    90f4:	38 45 b3             	cmp    %al,-0x4d(%ebp)
    90f7:	74 1c                	je     9115 <do_unlink+0x5c9>
    90f9:	68 93 00 00 00       	push   $0x93
    90fe:	68 04 be 00 00       	push   $0xbe04
    9103:	68 04 be 00 00       	push   $0xbe04
    9108:	68 83 bf 00 00       	push   $0xbf83
    910d:	e8 a1 d9 ff ff       	call   6ab3 <assertion_failure>
    9112:	83 c4 10             	add    $0x10,%esp
    9115:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    911b:	8b 45 ec             	mov    -0x14(%ebp),%eax
    911e:	01 d0                	add    %edx,%eax
    9120:	0f b6 00             	movzbl (%eax),%eax
    9123:	89 c2                	mov    %eax,%edx
    9125:	8b 45 f4             	mov    -0xc(%ebp),%eax
    9128:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
    912d:	89 c1                	mov    %eax,%ecx
    912f:	d3 e3                	shl    %cl,%ebx
    9131:	89 d8                	mov    %ebx,%eax
    9133:	89 d1                	mov    %edx,%ecx
    9135:	21 c1                	and    %eax,%ecx
    9137:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    913d:	8b 45 ec             	mov    -0x14(%ebp),%eax
    9140:	01 d0                	add    %edx,%eax
    9142:	89 ca                	mov    %ecx,%edx
    9144:	88 10                	mov    %dl,(%eax)
    9146:	8b 1d 9c f7 00 00    	mov    0xf79c,%ebx
    914c:	8b 45 f0             	mov    -0x10(%ebp),%eax
    914f:	c1 e0 09             	shl    $0x9,%eax
    9152:	99                   	cltd   
    9153:	8b 4d c4             	mov    -0x3c(%ebp),%ecx
    9156:	8b 49 20             	mov    0x20(%ecx),%ecx
    9159:	83 ec 04             	sub    $0x4,%esp
    915c:	53                   	push   %ebx
    915d:	6a 03                	push   $0x3
    915f:	68 00 02 00 00       	push   $0x200
    9164:	52                   	push   %edx
    9165:	50                   	push   %eax
    9166:	51                   	push   %ecx
    9167:	68 ec 03 00 00       	push   $0x3ec
    916c:	e8 eb e3 ff ff       	call   755c <rw_sector>
    9171:	83 c4 20             	add    $0x20,%esp
    9174:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    9177:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
    917d:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    9180:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
    9187:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    918a:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
    9191:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    9194:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
    919b:	83 ec 0c             	sub    $0xc,%esp
    919e:	ff 75 c4             	pushl  -0x3c(%ebp)
    91a1:	e8 a5 e7 ff ff       	call   794b <sync_inode>
    91a6:	83 c4 10             	add    $0x10,%esp
    91a9:	83 ec 0c             	sub    $0xc,%esp
    91ac:	ff 75 c4             	pushl  -0x3c(%ebp)
    91af:	e8 59 e7 ff ff       	call   790d <put_inode>
    91b4:	83 c4 10             	add    $0x10,%esp
    91b7:	8b 85 a0 fe ff ff    	mov    -0x160(%ebp),%eax
    91bd:	8b 40 08             	mov    0x8(%eax),%eax
    91c0:	89 45 ac             	mov    %eax,-0x54(%ebp)
    91c3:	8b 85 a0 fe ff ff    	mov    -0x160(%ebp),%eax
    91c9:	8b 40 04             	mov    0x4(%eax),%eax
    91cc:	05 00 02 00 00       	add    $0x200,%eax
    91d1:	c1 e8 09             	shr    $0x9,%eax
    91d4:	89 45 a8             	mov    %eax,-0x58(%ebp)
    91d7:	8b 85 a0 fe ff ff    	mov    -0x160(%ebp),%eax
    91dd:	8b 40 04             	mov    0x4(%eax),%eax
    91e0:	c1 e8 04             	shr    $0x4,%eax
    91e3:	89 45 a4             	mov    %eax,-0x5c(%ebp)
    91e6:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    91ed:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
    91f4:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
    91fb:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
    9202:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    9209:	e9 f0 00 00 00       	jmp    92fe <do_unlink+0x7b2>
    920e:	8b 1d 9c f7 00 00    	mov    0xf79c,%ebx
    9214:	8b 55 ac             	mov    -0x54(%ebp),%edx
    9217:	8b 45 ec             	mov    -0x14(%ebp),%eax
    921a:	01 d0                	add    %edx,%eax
    921c:	c1 e0 09             	shl    $0x9,%eax
    921f:	99                   	cltd   
    9220:	8b 8d a0 fe ff ff    	mov    -0x160(%ebp),%ecx
    9226:	8b 49 20             	mov    0x20(%ecx),%ecx
    9229:	83 ec 04             	sub    $0x4,%esp
    922c:	53                   	push   %ebx
    922d:	6a 03                	push   $0x3
    922f:	68 00 02 00 00       	push   $0x200
    9234:	52                   	push   %edx
    9235:	50                   	push   %eax
    9236:	51                   	push   %ecx
    9237:	68 eb 03 00 00       	push   $0x3eb
    923c:	e8 1b e3 ff ff       	call   755c <rw_sector>
    9241:	83 c4 20             	add    $0x20,%esp
    9244:	a1 9c f7 00 00       	mov    0xf79c,%eax
    9249:	89 45 e0             	mov    %eax,-0x20(%ebp)
    924c:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
    9253:	e9 85 00 00 00       	jmp    92dd <do_unlink+0x791>
    9258:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    925c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    925f:	3b 45 a4             	cmp    -0x5c(%ebp),%eax
    9262:	0f 8f 83 00 00 00    	jg     92eb <do_unlink+0x79f>
    9268:	8b 45 e0             	mov    -0x20(%ebp),%eax
    926b:	8b 00                	mov    (%eax),%eax
    926d:	39 45 c8             	cmp    %eax,-0x38(%ebp)
    9270:	75 51                	jne    92c3 <do_unlink+0x777>
    9272:	83 ec 04             	sub    $0x4,%esp
    9275:	6a 10                	push   $0x10
    9277:	6a 00                	push   $0x0
    9279:	ff 75 e0             	pushl  -0x20(%ebp)
    927c:	e8 88 d6 ff ff       	call   6909 <memset>
    9281:	83 c4 10             	add    $0x10,%esp
    9284:	8b 1d 9c f7 00 00    	mov    0xf79c,%ebx
    928a:	8b 55 ac             	mov    -0x54(%ebp),%edx
    928d:	8b 45 ec             	mov    -0x14(%ebp),%eax
    9290:	01 d0                	add    %edx,%eax
    9292:	c1 e0 09             	shl    $0x9,%eax
    9295:	99                   	cltd   
    9296:	8b 8d a0 fe ff ff    	mov    -0x160(%ebp),%ecx
    929c:	8b 49 20             	mov    0x20(%ecx),%ecx
    929f:	83 ec 04             	sub    $0x4,%esp
    92a2:	53                   	push   %ebx
    92a3:	6a 03                	push   $0x3
    92a5:	68 00 02 00 00       	push   $0x200
    92aa:	52                   	push   %edx
    92ab:	50                   	push   %eax
    92ac:	51                   	push   %ecx
    92ad:	68 ec 03 00 00       	push   $0x3ec
    92b2:	e8 a5 e2 ff ff       	call   755c <rw_sector>
    92b7:	83 c4 20             	add    $0x20,%esp
    92ba:	c7 45 dc 01 00 00 00 	movl   $0x1,-0x24(%ebp)
    92c1:	eb 29                	jmp    92ec <do_unlink+0x7a0>
    92c3:	8b 45 e0             	mov    -0x20(%ebp),%eax
    92c6:	8b 00                	mov    (%eax),%eax
    92c8:	85 c0                	test   %eax,%eax
    92ca:	74 09                	je     92d5 <do_unlink+0x789>
    92cc:	8b 45 d8             	mov    -0x28(%ebp),%eax
    92cf:	83 c0 10             	add    $0x10,%eax
    92d2:	89 45 d8             	mov    %eax,-0x28(%ebp)
    92d5:	83 45 d4 01          	addl   $0x1,-0x2c(%ebp)
    92d9:	83 45 e0 10          	addl   $0x10,-0x20(%ebp)
    92dd:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    92e0:	83 f8 1f             	cmp    $0x1f,%eax
    92e3:	0f 86 6f ff ff ff    	jbe    9258 <do_unlink+0x70c>
    92e9:	eb 01                	jmp    92ec <do_unlink+0x7a0>
    92eb:	90                   	nop
    92ec:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    92ef:	3b 45 a4             	cmp    -0x5c(%ebp),%eax
    92f2:	7f 16                	jg     930a <do_unlink+0x7be>
    92f4:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
    92f8:	75 10                	jne    930a <do_unlink+0x7be>
    92fa:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
    92fe:	8b 45 ec             	mov    -0x14(%ebp),%eax
    9301:	3b 45 a8             	cmp    -0x58(%ebp),%eax
    9304:	0f 8c 04 ff ff ff    	jl     920e <do_unlink+0x6c2>
    930a:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
    930e:	75 1c                	jne    932c <do_unlink+0x7e0>
    9310:	68 cb 00 00 00       	push   $0xcb
    9315:	68 04 be 00 00       	push   $0xbe04
    931a:	68 04 be 00 00       	push   $0xbe04
    931f:	68 9d bf 00 00       	push   $0xbf9d
    9324:	e8 8a d7 ff ff       	call   6ab3 <assertion_failure>
    9329:	83 c4 10             	add    $0x10,%esp
    932c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    932f:	3b 45 a4             	cmp    -0x5c(%ebp),%eax
    9332:	75 1e                	jne    9352 <do_unlink+0x806>
    9334:	8b 85 a0 fe ff ff    	mov    -0x160(%ebp),%eax
    933a:	8b 55 d8             	mov    -0x28(%ebp),%edx
    933d:	89 50 04             	mov    %edx,0x4(%eax)
    9340:	8b 85 a0 fe ff ff    	mov    -0x160(%ebp),%eax
    9346:	83 ec 0c             	sub    $0xc,%esp
    9349:	50                   	push   %eax
    934a:	e8 fc e5 ff ff       	call   794b <sync_inode>
    934f:	83 c4 10             	add    $0x10,%esp
    9352:	b8 00 00 00 00       	mov    $0x0,%eax
    9357:	8d 65 f8             	lea    -0x8(%ebp),%esp
    935a:	5b                   	pop    %ebx
    935b:	5e                   	pop    %esi
    935c:	5d                   	pop    %ebp
    935d:	c3                   	ret    

0000935e <do_disklog>:
    935e:	55                   	push   %ebp
    935f:	89 e5                	mov    %esp,%ebp
    9361:	53                   	push   %ebx
    9362:	81 ec 14 04 00 00    	sub    $0x414,%esp
    9368:	a1 ec a4 04 00       	mov    0x4a4ec,%eax
    936d:	89 45 f4             	mov    %eax,-0xc(%ebp)
    9370:	a1 e0 a4 04 00       	mov    0x4a4e0,%eax
    9375:	89 45 f0             	mov    %eax,-0x10(%ebp)
    9378:	81 7d f4 ff 03 00 00 	cmpl   $0x3ff,-0xc(%ebp)
    937f:	7e 19                	jle    939a <do_disklog+0x3c>
    9381:	6a 2b                	push   $0x2b
    9383:	68 a4 bf 00 00       	push   $0xbfa4
    9388:	68 a4 bf 00 00       	push   $0xbfa4
    938d:	68 b1 bf 00 00       	push   $0xbfb1
    9392:	e8 1c d7 ff ff       	call   6ab3 <assertion_failure>
    9397:	83 c4 10             	add    $0x10,%esp
    939a:	a1 0c a5 04 00       	mov    0x4a50c,%eax
    939f:	83 ec 08             	sub    $0x8,%esp
    93a2:	50                   	push   %eax
    93a3:	ff 75 f0             	pushl  -0x10(%ebp)
    93a6:	e8 cb ab ff ff       	call   3f76 <va2la>
    93ab:	83 c4 10             	add    $0x10,%esp
    93ae:	89 c3                	mov    %eax,%ebx
    93b0:	83 ec 08             	sub    $0x8,%esp
    93b3:	8d 85 f0 fb ff ff    	lea    -0x410(%ebp),%eax
    93b9:	50                   	push   %eax
    93ba:	6a 03                	push   $0x3
    93bc:	e8 b5 ab ff ff       	call   3f76 <va2la>
    93c1:	83 c4 10             	add    $0x10,%esp
    93c4:	83 ec 04             	sub    $0x4,%esp
    93c7:	ff 75 f4             	pushl  -0xc(%ebp)
    93ca:	53                   	push   %ebx
    93cb:	50                   	push   %eax
    93cc:	e8 0f d5 ff ff       	call   68e0 <memcpy>
    93d1:	83 c4 10             	add    $0x10,%esp
    93d4:	8d 95 f0 fb ff ff    	lea    -0x410(%ebp),%edx
    93da:	8b 45 f4             	mov    -0xc(%ebp),%eax
    93dd:	01 d0                	add    %edx,%eax
    93df:	c6 00 00             	movb   $0x0,(%eax)
    93e2:	83 ec 0c             	sub    $0xc,%esp
    93e5:	8d 85 f0 fb ff ff    	lea    -0x410(%ebp),%eax
    93eb:	50                   	push   %eax
    93ec:	e8 08 00 00 00       	call   93f9 <disklog>
    93f1:	83 c4 10             	add    $0x10,%esp
    93f4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    93f7:	c9                   	leave  
    93f8:	c3                   	ret    

000093f9 <disklog>:
    93f9:	55                   	push   %ebp
    93fa:	89 e5                	mov    %esp,%ebp
    93fc:	53                   	push   %ebx
    93fd:	83 ec 54             	sub    $0x54,%esp
    9400:	a1 20 a8 04 00       	mov    0x4a820,%eax
    9405:	8b 40 20             	mov    0x20(%eax),%eax
    9408:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    940b:	83 ec 0c             	sub    $0xc,%esp
    940e:	ff 75 d4             	pushl  -0x2c(%ebp)
    9411:	e8 4e e3 ff ff       	call   7764 <get_super_block>
    9416:	83 c4 10             	add    $0x10,%esp
    9419:	89 45 d0             	mov    %eax,-0x30(%ebp)
    941c:	8b 45 d0             	mov    -0x30(%ebp),%eax
    941f:	8b 40 08             	mov    0x8(%eax),%eax
    9422:	2d 00 08 00 00       	sub    $0x800,%eax
    9427:	89 45 cc             	mov    %eax,-0x34(%ebp)
    942a:	a1 60 08 01 00       	mov    0x10860,%eax
    942f:	85 c0                	test   %eax,%eax
    9431:	0f 85 8c 02 00 00    	jne    96c3 <disklog+0x2ca>
    9437:	c7 45 c8 00 10 00 00 	movl   $0x1000,-0x38(%ebp)
    943e:	8b 45 d0             	mov    -0x30(%ebp),%eax
    9441:	8b 40 0c             	mov    0xc(%eax),%eax
    9444:	83 c0 02             	add    $0x2,%eax
    9447:	89 45 c4             	mov    %eax,-0x3c(%ebp)
    944a:	8b 45 cc             	mov    -0x34(%ebp),%eax
    944d:	99                   	cltd   
    944e:	f7 7d c8             	idivl  -0x38(%ebp)
    9451:	89 c2                	mov    %eax,%edx
    9453:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    9456:	01 d0                	add    %edx,%eax
    9458:	89 45 c0             	mov    %eax,-0x40(%ebp)
    945b:	8b 45 cc             	mov    -0x34(%ebp),%eax
    945e:	99                   	cltd   
    945f:	f7 7d c8             	idivl  -0x38(%ebp)
    9462:	89 d0                	mov    %edx,%eax
    9464:	8d 50 07             	lea    0x7(%eax),%edx
    9467:	85 c0                	test   %eax,%eax
    9469:	0f 48 c2             	cmovs  %edx,%eax
    946c:	c1 f8 03             	sar    $0x3,%eax
    946f:	89 45 f4             	mov    %eax,-0xc(%ebp)
    9472:	8b 45 cc             	mov    -0x34(%ebp),%eax
    9475:	99                   	cltd   
    9476:	f7 7d c8             	idivl  -0x38(%ebp)
    9479:	89 d0                	mov    %edx,%eax
    947b:	c1 f8 1f             	sar    $0x1f,%eax
    947e:	c1 e8 1d             	shr    $0x1d,%eax
    9481:	01 c2                	add    %eax,%edx
    9483:	83 e2 07             	and    $0x7,%edx
    9486:	29 c2                	sub    %eax,%edx
    9488:	89 d0                	mov    %edx,%eax
    948a:	89 45 f0             	mov    %eax,-0x10(%ebp)
    948d:	b8 00 08 00 00       	mov    $0x800,%eax
    9492:	99                   	cltd   
    9493:	f7 7d c8             	idivl  -0x38(%ebp)
    9496:	83 c0 02             	add    $0x2,%eax
    9499:	89 45 bc             	mov    %eax,-0x44(%ebp)
    949c:	c7 45 ec 00 08 00 00 	movl   $0x800,-0x14(%ebp)
    94a3:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
    94aa:	e9 17 01 00 00       	jmp    95c6 <disklog+0x1cd>
    94af:	8b 0d 9c f7 00 00    	mov    0xf79c,%ecx
    94b5:	8b 55 c0             	mov    -0x40(%ebp),%edx
    94b8:	8b 45 e8             	mov    -0x18(%ebp),%eax
    94bb:	01 d0                	add    %edx,%eax
    94bd:	c1 e0 09             	shl    $0x9,%eax
    94c0:	99                   	cltd   
    94c1:	83 ec 04             	sub    $0x4,%esp
    94c4:	51                   	push   %ecx
    94c5:	6a 03                	push   $0x3
    94c7:	68 00 02 00 00       	push   $0x200
    94cc:	52                   	push   %edx
    94cd:	50                   	push   %eax
    94ce:	ff 75 d4             	pushl  -0x2c(%ebp)
    94d1:	68 eb 03 00 00       	push   $0x3eb
    94d6:	e8 81 e0 ff ff       	call   755c <rw_sector>
    94db:	83 c4 20             	add    $0x20,%esp
    94de:	e9 8d 00 00 00       	jmp    9570 <disklog+0x177>
    94e3:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    94e9:	8b 45 f4             	mov    -0xc(%ebp),%eax
    94ec:	01 d0                	add    %edx,%eax
    94ee:	0f b6 00             	movzbl (%eax),%eax
    94f1:	0f b6 d0             	movzbl %al,%edx
    94f4:	8b 45 f0             	mov    -0x10(%ebp),%eax
    94f7:	89 c1                	mov    %eax,%ecx
    94f9:	d3 fa                	sar    %cl,%edx
    94fb:	89 d0                	mov    %edx,%eax
    94fd:	83 e0 01             	and    $0x1,%eax
    9500:	85 c0                	test   %eax,%eax
    9502:	74 19                	je     951d <disklog+0x124>
    9504:	6a 59                	push   $0x59
    9506:	68 a4 bf 00 00       	push   $0xbfa4
    950b:	68 a4 bf 00 00       	push   $0xbfa4
    9510:	68 cc bf 00 00       	push   $0xbfcc
    9515:	e8 99 d5 ff ff       	call   6ab3 <assertion_failure>
    951a:	83 c4 10             	add    $0x10,%esp
    951d:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    9523:	8b 45 f4             	mov    -0xc(%ebp),%eax
    9526:	01 d0                	add    %edx,%eax
    9528:	0f b6 00             	movzbl (%eax),%eax
    952b:	89 c3                	mov    %eax,%ebx
    952d:	8b 45 f0             	mov    -0x10(%ebp),%eax
    9530:	ba 01 00 00 00       	mov    $0x1,%edx
    9535:	89 c1                	mov    %eax,%ecx
    9537:	d3 e2                	shl    %cl,%edx
    9539:	89 d0                	mov    %edx,%eax
    953b:	09 c3                	or     %eax,%ebx
    953d:	89 d9                	mov    %ebx,%ecx
    953f:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    9545:	8b 45 f4             	mov    -0xc(%ebp),%eax
    9548:	01 d0                	add    %edx,%eax
    954a:	89 ca                	mov    %ecx,%edx
    954c:	88 10                	mov    %dl,(%eax)
    954e:	83 6d ec 01          	subl   $0x1,-0x14(%ebp)
    9552:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
    9556:	74 0c                	je     9564 <disklog+0x16b>
    9558:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    955c:	83 7d f0 07          	cmpl   $0x7,-0x10(%ebp)
    9560:	7e 81                	jle    94e3 <disklog+0xea>
    9562:	eb 01                	jmp    9565 <disklog+0x16c>
    9564:	90                   	nop
    9565:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    956c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    9570:	81 7d f4 ff 01 00 00 	cmpl   $0x1ff,-0xc(%ebp)
    9577:	7f 06                	jg     957f <disklog+0x186>
    9579:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
    957d:	7f dd                	jg     955c <disklog+0x163>
    957f:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    9586:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    958d:	8b 0d 9c f7 00 00    	mov    0xf79c,%ecx
    9593:	8b 55 c0             	mov    -0x40(%ebp),%edx
    9596:	8b 45 e8             	mov    -0x18(%ebp),%eax
    9599:	01 d0                	add    %edx,%eax
    959b:	c1 e0 09             	shl    $0x9,%eax
    959e:	99                   	cltd   
    959f:	83 ec 04             	sub    $0x4,%esp
    95a2:	51                   	push   %ecx
    95a3:	6a 03                	push   $0x3
    95a5:	68 00 02 00 00       	push   $0x200
    95aa:	52                   	push   %edx
    95ab:	50                   	push   %eax
    95ac:	ff 75 d4             	pushl  -0x2c(%ebp)
    95af:	68 ec 03 00 00       	push   $0x3ec
    95b4:	e8 a3 df ff ff       	call   755c <rw_sector>
    95b9:	83 c4 20             	add    $0x20,%esp
    95bc:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
    95c0:	74 12                	je     95d4 <disklog+0x1db>
    95c2:	83 45 e8 01          	addl   $0x1,-0x18(%ebp)
    95c6:	8b 45 e8             	mov    -0x18(%ebp),%eax
    95c9:	3b 45 bc             	cmp    -0x44(%ebp),%eax
    95cc:	0f 8c dd fe ff ff    	jl     94af <disklog+0xb6>
    95d2:	eb 01                	jmp    95d5 <disklog+0x1dc>
    95d4:	90                   	nop
    95d5:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
    95d9:	74 19                	je     95f4 <disklog+0x1fb>
    95db:	6a 68                	push   $0x68
    95dd:	68 a4 bf 00 00       	push   $0xbfa4
    95e2:	68 a4 bf 00 00       	push   $0xbfa4
    95e7:	68 f4 bf 00 00       	push   $0xbff4
    95ec:	e8 c2 d4 ff ff       	call   6ab3 <assertion_failure>
    95f1:	83 c4 10             	add    $0x10,%esp
    95f4:	c7 05 60 08 01 00 40 	movl   $0x40,0x10860
    95fb:	00 00 00 
    95fe:	a1 3c ab 00 00       	mov    0xab3c,%eax
    9603:	c1 f8 09             	sar    $0x9,%eax
    9606:	ba 00 01 00 00       	mov    $0x100,%edx
    960b:	3d 00 01 00 00       	cmp    $0x100,%eax
    9610:	0f 4f c2             	cmovg  %edx,%eax
    9613:	89 45 b8             	mov    %eax,-0x48(%ebp)
    9616:	81 7d b8 00 01 00 00 	cmpl   $0x100,-0x48(%ebp)
    961d:	74 19                	je     9638 <disklog+0x23f>
    961f:	6a 70                	push   $0x70
    9621:	68 a4 bf 00 00       	push   $0xbfa4
    9626:	68 a4 bf 00 00       	push   $0xbfa4
    962b:	68 03 c0 00 00       	push   $0xc003
    9630:	e8 7e d4 ff ff       	call   6ab3 <assertion_failure>
    9635:	83 c4 10             	add    $0x10,%esp
    9638:	c7 45 e4 00 08 00 00 	movl   $0x800,-0x1c(%ebp)
    963f:	8b 45 cc             	mov    -0x34(%ebp),%eax
    9642:	89 45 e8             	mov    %eax,-0x18(%ebp)
    9645:	eb 56                	jmp    969d <disklog+0x2a4>
    9647:	8b 45 b8             	mov    -0x48(%ebp),%eax
    964a:	c1 e0 09             	shl    $0x9,%eax
    964d:	89 c2                	mov    %eax,%edx
    964f:	a1 9c f7 00 00       	mov    0xf79c,%eax
    9654:	83 ec 04             	sub    $0x4,%esp
    9657:	52                   	push   %edx
    9658:	6a 20                	push   $0x20
    965a:	50                   	push   %eax
    965b:	e8 a9 d2 ff ff       	call   6909 <memset>
    9660:	83 c4 10             	add    $0x10,%esp
    9663:	8b 0d 9c f7 00 00    	mov    0xf79c,%ecx
    9669:	8b 45 b8             	mov    -0x48(%ebp),%eax
    966c:	c1 e0 09             	shl    $0x9,%eax
    966f:	89 c3                	mov    %eax,%ebx
    9671:	8b 45 e8             	mov    -0x18(%ebp),%eax
    9674:	c1 e0 09             	shl    $0x9,%eax
    9677:	99                   	cltd   
    9678:	83 ec 04             	sub    $0x4,%esp
    967b:	51                   	push   %ecx
    967c:	6a 03                	push   $0x3
    967e:	53                   	push   %ebx
    967f:	52                   	push   %edx
    9680:	50                   	push   %eax
    9681:	ff 75 d4             	pushl  -0x2c(%ebp)
    9684:	68 ec 03 00 00       	push   $0x3ec
    9689:	e8 ce de ff ff       	call   755c <rw_sector>
    968e:	83 c4 20             	add    $0x20,%esp
    9691:	8b 45 b8             	mov    -0x48(%ebp),%eax
    9694:	29 45 e4             	sub    %eax,-0x1c(%ebp)
    9697:	8b 45 b8             	mov    -0x48(%ebp),%eax
    969a:	01 45 e8             	add    %eax,-0x18(%ebp)
    969d:	8b 45 cc             	mov    -0x34(%ebp),%eax
    96a0:	05 ff 07 00 00       	add    $0x7ff,%eax
    96a5:	39 45 e8             	cmp    %eax,-0x18(%ebp)
    96a8:	7e 9d                	jle    9647 <disklog+0x24e>
    96aa:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
    96ae:	74 13                	je     96c3 <disklog+0x2ca>
    96b0:	83 ec 08             	sub    $0x8,%esp
    96b3:	ff 75 e4             	pushl  -0x1c(%ebp)
    96b6:	68 10 c0 00 00       	push   $0xc010
    96bb:	e8 07 85 ff ff       	call   1bc7 <panic>
    96c0:	83 c4 10             	add    $0x10,%esp
    96c3:	8b 45 08             	mov    0x8(%ebp),%eax
    96c6:	89 45 e0             	mov    %eax,-0x20(%ebp)
    96c9:	83 ec 0c             	sub    $0xc,%esp
    96cc:	ff 75 08             	pushl  0x8(%ebp)
    96cf:	e8 6e d2 ff ff       	call   6942 <strlen>
    96d4:	83 c4 10             	add    $0x10,%esp
    96d7:	89 45 dc             	mov    %eax,-0x24(%ebp)
    96da:	a1 60 08 01 00       	mov    0x10860,%eax
    96df:	c1 f8 09             	sar    $0x9,%eax
    96e2:	89 c2                	mov    %eax,%edx
    96e4:	8b 45 cc             	mov    -0x34(%ebp),%eax
    96e7:	01 d0                	add    %edx,%eax
    96e9:	89 45 d8             	mov    %eax,-0x28(%ebp)
    96ec:	e9 be 00 00 00       	jmp    97af <disklog+0x3b6>
    96f1:	8b 0d 9c f7 00 00    	mov    0xf79c,%ecx
    96f7:	8b 45 d8             	mov    -0x28(%ebp),%eax
    96fa:	c1 e0 09             	shl    $0x9,%eax
    96fd:	99                   	cltd   
    96fe:	83 ec 04             	sub    $0x4,%esp
    9701:	51                   	push   %ecx
    9702:	6a 03                	push   $0x3
    9704:	68 00 02 00 00       	push   $0x200
    9709:	52                   	push   %edx
    970a:	50                   	push   %eax
    970b:	ff 75 d4             	pushl  -0x2c(%ebp)
    970e:	68 eb 03 00 00       	push   $0x3eb
    9713:	e8 44 de ff ff       	call   755c <rw_sector>
    9718:	83 c4 20             	add    $0x20,%esp
    971b:	a1 60 08 01 00       	mov    0x10860,%eax
    9720:	99                   	cltd   
    9721:	c1 ea 17             	shr    $0x17,%edx
    9724:	01 d0                	add    %edx,%eax
    9726:	25 ff 01 00 00       	and    $0x1ff,%eax
    972b:	29 d0                	sub    %edx,%eax
    972d:	89 45 b4             	mov    %eax,-0x4c(%ebp)
    9730:	b8 00 02 00 00       	mov    $0x200,%eax
    9735:	2b 45 b4             	sub    -0x4c(%ebp),%eax
    9738:	39 45 dc             	cmp    %eax,-0x24(%ebp)
    973b:	0f 4e 45 dc          	cmovle -0x24(%ebp),%eax
    973f:	89 45 b0             	mov    %eax,-0x50(%ebp)
    9742:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    9748:	8b 45 b4             	mov    -0x4c(%ebp),%eax
    974b:	01 d0                	add    %edx,%eax
    974d:	83 ec 04             	sub    $0x4,%esp
    9750:	ff 75 b0             	pushl  -0x50(%ebp)
    9753:	ff 75 e0             	pushl  -0x20(%ebp)
    9756:	50                   	push   %eax
    9757:	e8 84 d1 ff ff       	call   68e0 <memcpy>
    975c:	83 c4 10             	add    $0x10,%esp
    975f:	8b 45 b0             	mov    -0x50(%ebp),%eax
    9762:	01 45 b4             	add    %eax,-0x4c(%ebp)
    9765:	8b 45 b0             	mov    -0x50(%ebp),%eax
    9768:	29 45 dc             	sub    %eax,-0x24(%ebp)
    976b:	8b 0d 9c f7 00 00    	mov    0xf79c,%ecx
    9771:	8b 45 d8             	mov    -0x28(%ebp),%eax
    9774:	c1 e0 09             	shl    $0x9,%eax
    9777:	99                   	cltd   
    9778:	83 ec 04             	sub    $0x4,%esp
    977b:	51                   	push   %ecx
    977c:	6a 03                	push   $0x3
    977e:	68 00 02 00 00       	push   $0x200
    9783:	52                   	push   %edx
    9784:	50                   	push   %eax
    9785:	ff 75 d4             	pushl  -0x2c(%ebp)
    9788:	68 ec 03 00 00       	push   $0x3ec
    978d:	e8 ca dd ff ff       	call   755c <rw_sector>
    9792:	83 c4 20             	add    $0x20,%esp
    9795:	83 45 d8 01          	addl   $0x1,-0x28(%ebp)
    9799:	8b 15 60 08 01 00    	mov    0x10860,%edx
    979f:	8b 45 b0             	mov    -0x50(%ebp),%eax
    97a2:	01 d0                	add    %edx,%eax
    97a4:	a3 60 08 01 00       	mov    %eax,0x10860
    97a9:	8b 45 b0             	mov    -0x50(%ebp),%eax
    97ac:	01 45 e0             	add    %eax,-0x20(%ebp)
    97af:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
    97b3:	0f 85 38 ff ff ff    	jne    96f1 <disklog+0x2f8>
    97b9:	8b 0d 9c f7 00 00    	mov    0xf79c,%ecx
    97bf:	8b 45 cc             	mov    -0x34(%ebp),%eax
    97c2:	c1 e0 09             	shl    $0x9,%eax
    97c5:	99                   	cltd   
    97c6:	83 ec 04             	sub    $0x4,%esp
    97c9:	51                   	push   %ecx
    97ca:	6a 03                	push   $0x3
    97cc:	68 00 02 00 00       	push   $0x200
    97d1:	52                   	push   %edx
    97d2:	50                   	push   %eax
    97d3:	ff 75 d4             	pushl  -0x2c(%ebp)
    97d6:	68 eb 03 00 00       	push   $0x3eb
    97db:	e8 7c dd ff ff       	call   755c <rw_sector>
    97e0:	83 c4 20             	add    $0x20,%esp
    97e3:	8b 15 60 08 01 00    	mov    0x10860,%edx
    97e9:	a1 9c f7 00 00       	mov    0xf79c,%eax
    97ee:	83 ec 04             	sub    $0x4,%esp
    97f1:	52                   	push   %edx
    97f2:	68 35 c0 00 00       	push   $0xc035
    97f7:	50                   	push   %eax
    97f8:	e8 ef cd ff ff       	call   65ec <sprintf>
    97fd:	83 c4 10             	add    $0x10,%esp
    9800:	a1 9c f7 00 00       	mov    0xf79c,%eax
    9805:	83 c0 09             	add    $0x9,%eax
    9808:	83 ec 04             	sub    $0x4,%esp
    980b:	6a 16                	push   $0x16
    980d:	6a 20                	push   $0x20
    980f:	50                   	push   %eax
    9810:	e8 f4 d0 ff ff       	call   6909 <memset>
    9815:	83 c4 10             	add    $0x10,%esp
    9818:	a1 9c f7 00 00       	mov    0xf79c,%eax
    981d:	83 c0 1f             	add    $0x1f,%eax
    9820:	c6 00 0a             	movb   $0xa,(%eax)
    9823:	a1 9c f7 00 00       	mov    0xf79c,%eax
    9828:	83 c0 20             	add    $0x20,%eax
    982b:	83 ec 04             	sub    $0x4,%esp
    982e:	6a 1f                	push   $0x1f
    9830:	6a 20                	push   $0x20
    9832:	50                   	push   %eax
    9833:	e8 d1 d0 ff ff       	call   6909 <memset>
    9838:	83 c4 10             	add    $0x10,%esp
    983b:	a1 9c f7 00 00       	mov    0xf79c,%eax
    9840:	83 c0 3f             	add    $0x3f,%eax
    9843:	c6 00 0a             	movb   $0xa,(%eax)
    9846:	8b 0d 9c f7 00 00    	mov    0xf79c,%ecx
    984c:	8b 45 cc             	mov    -0x34(%ebp),%eax
    984f:	c1 e0 09             	shl    $0x9,%eax
    9852:	99                   	cltd   
    9853:	83 ec 04             	sub    $0x4,%esp
    9856:	51                   	push   %ecx
    9857:	6a 03                	push   $0x3
    9859:	68 00 02 00 00       	push   $0x200
    985e:	52                   	push   %edx
    985f:	50                   	push   %eax
    9860:	ff 75 d4             	pushl  -0x2c(%ebp)
    9863:	68 ec 03 00 00       	push   $0x3ec
    9868:	e8 ef dc ff ff       	call   755c <rw_sector>
    986d:	83 c4 20             	add    $0x20,%esp
    9870:	a1 9c f7 00 00       	mov    0xf79c,%eax
    9875:	83 c0 33             	add    $0x33,%eax
    9878:	0f b6 00             	movzbl (%eax),%eax
    987b:	0f be c0             	movsbl %al,%eax
    987e:	8b 15 9c f7 00 00    	mov    0xf79c,%edx
    9884:	83 c2 40             	add    $0x40,%edx
    9887:	83 ec 04             	sub    $0x4,%esp
    988a:	68 c0 01 00 00       	push   $0x1c0
    988f:	50                   	push   %eax
    9890:	52                   	push   %edx
    9891:	e8 73 d0 ff ff       	call   6909 <memset>
    9896:	83 c4 10             	add    $0x10,%esp
    9899:	8b 0d 9c f7 00 00    	mov    0xf79c,%ecx
    989f:	8b 45 cc             	mov    -0x34(%ebp),%eax
    98a2:	05 ff 07 00 00       	add    $0x7ff,%eax
    98a7:	c1 e0 09             	shl    $0x9,%eax
    98aa:	99                   	cltd   
    98ab:	83 ec 04             	sub    $0x4,%esp
    98ae:	51                   	push   %ecx
    98af:	6a 03                	push   $0x3
    98b1:	68 00 02 00 00       	push   $0x200
    98b6:	52                   	push   %edx
    98b7:	50                   	push   %eax
    98b8:	ff 75 d4             	pushl  -0x2c(%ebp)
    98bb:	68 ec 03 00 00       	push   $0x3ec
    98c0:	e8 97 dc ff ff       	call   755c <rw_sector>
    98c5:	83 c4 20             	add    $0x20,%esp
    98c8:	a1 60 08 01 00       	mov    0x10860,%eax
    98cd:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    98d0:	c9                   	leave  
    98d1:	c3                   	ret    

000098d2 <dump_fd_graph>:
    98d2:	55                   	push   %ebp
    98d3:	89 e5                	mov    %esp,%ebp
    98d5:	57                   	push   %edi
    98d6:	56                   	push   %esi
    98d7:	53                   	push   %ebx
    98d8:	81 ec 1c 19 00 00    	sub    $0x191c,%esp
    98de:	8d 45 0c             	lea    0xc(%ebp),%eax
    98e1:	89 45 b8             	mov    %eax,-0x48(%ebp)
    98e4:	8b 45 08             	mov    0x8(%ebp),%eax
    98e7:	83 ec 04             	sub    $0x4,%esp
    98ea:	ff 75 b8             	pushl  -0x48(%ebp)
    98ed:	50                   	push   %eax
    98ee:	8d 85 7c fb ff ff    	lea    -0x484(%ebp),%eax
    98f4:	50                   	push   %eax
    98f5:	e8 75 ca ff ff       	call   636f <vsprintf>
    98fa:	83 c4 10             	add    $0x10,%esp
    98fd:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    9900:	83 ec 0c             	sub    $0xc,%esp
    9903:	8d 85 7c fb ff ff    	lea    -0x484(%ebp),%eax
    9909:	50                   	push   %eax
    990a:	e8 33 d0 ff ff       	call   6942 <strlen>
    990f:	83 c4 10             	add    $0x10,%esp
    9912:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
    9915:	74 1c                	je     9933 <dump_fd_graph+0x61>
    9917:	68 bb 00 00 00       	push   $0xbb
    991c:	68 a4 bf 00 00       	push   $0xbfa4
    9921:	68 a4 bf 00 00       	push   $0xbfa4
    9926:	68 3a c0 00 00       	push   $0xc03a
    992b:	e8 83 d1 ff ff       	call   6ab3 <assertion_failure>
    9930:	83 c4 10             	add    $0x10,%esp
    9933:	c7 85 f4 fa ff ff 4d 	movl   $0xc04d,-0x50c(%ebp)
    993a:	c0 00 00 
    993d:	c7 85 fc fa ff ff 55 	movl   $0xc055,-0x504(%ebp)
    9944:	c0 00 00 
    9947:	c7 85 0c fb ff ff 5f 	movl   $0xc05f,-0x4f4(%ebp)
    994e:	c0 00 00 
    9951:	c7 85 2c fb ff ff 67 	movl   $0xc067,-0x4d4(%ebp)
    9958:	c0 00 00 
    995b:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
    9962:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
    9969:	a1 64 08 01 00       	mov    0x10864,%eax
    996e:	8d 50 01             	lea    0x1(%eax),%edx
    9971:	89 15 64 08 01 00    	mov    %edx,0x10864
    9977:	83 ec 08             	sub    $0x8,%esp
    997a:	50                   	push   %eax
    997b:	68 71 c0 00 00       	push   $0xc071
    9980:	e8 e5 d2 ff ff       	call   6c6a <syslog>
    9985:	83 c4 10             	add    $0x10,%esp
    9988:	83 ec 0c             	sub    $0xc,%esp
    998b:	68 89 c0 00 00       	push   $0xc089
    9990:	e8 d5 d2 ff ff       	call   6c6a <syslog>
    9995:	83 c4 10             	add    $0x10,%esp
    9998:	83 ec 0c             	sub    $0xc,%esp
    999b:	68 93 c0 00 00       	push   $0xc093
    99a0:	e8 c5 d2 ff ff       	call   6c6a <syslog>
    99a5:	83 c4 10             	add    $0x10,%esp
    99a8:	83 ec 0c             	sub    $0xc,%esp
    99ab:	68 a5 c0 00 00       	push   $0xc0a5
    99b0:	e8 b5 d2 ff ff       	call   6c6a <syslog>
    99b5:	83 c4 10             	add    $0x10,%esp
    99b8:	83 ec 0c             	sub    $0xc,%esp
    99bb:	68 aa c0 00 00       	push   $0xc0aa
    99c0:	e8 a5 d2 ff ff       	call   6c6a <syslog>
    99c5:	83 c4 10             	add    $0x10,%esp
    99c8:	83 ec 0c             	sub    $0xc,%esp
    99cb:	68 b3 c0 00 00       	push   $0xc0b3
    99d0:	e8 95 d2 ff ff       	call   6c6a <syslog>
    99d5:	83 c4 10             	add    $0x10,%esp
    99d8:	83 ec 0c             	sub    $0xc,%esp
    99db:	68 c6 c0 00 00       	push   $0xc0c6
    99e0:	e8 85 d2 ff ff       	call   6c6a <syslog>
    99e5:	83 c4 10             	add    $0x10,%esp
    99e8:	83 ec 0c             	sub    $0xc,%esp
    99eb:	68 a5 c0 00 00       	push   $0xc0a5
    99f0:	e8 75 d2 ff ff       	call   6c6a <syslog>
    99f5:	83 c4 10             	add    $0x10,%esp
    99f8:	83 ec 0c             	sub    $0xc,%esp
    99fb:	68 db c0 00 00       	push   $0xc0db
    9a00:	e8 65 d2 ff ff       	call   6c6a <syslog>
    9a05:	83 c4 10             	add    $0x10,%esp
    9a08:	83 ec 0c             	sub    $0xc,%esp
    9a0b:	68 a5 c0 00 00       	push   $0xc0a5
    9a10:	e8 55 d2 ff ff       	call   6c6a <syslog>
    9a15:	83 c4 10             	add    $0x10,%esp
    9a18:	c7 45 d4 e0 b2 04 00 	movl   $0x4b2e0,-0x2c(%ebp)
    9a1f:	83 ec 0c             	sub    $0xc,%esp
    9a22:	68 e4 c0 00 00       	push   $0xc0e4
    9a27:	e8 3e d2 ff ff       	call   6c6a <syslog>
    9a2c:	83 c4 10             	add    $0x10,%esp
    9a2f:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    9a36:	e9 7a 01 00 00       	jmp    9bb5 <dump_fd_graph+0x2e3>
    9a3b:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
    9a42:	eb 15                	jmp    9a59 <dump_fd_graph+0x187>
    9a44:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    9a47:	8b 55 d8             	mov    -0x28(%ebp),%edx
    9a4a:	83 c2 24             	add    $0x24,%edx
    9a4d:	8b 44 90 04          	mov    0x4(%eax,%edx,4),%eax
    9a51:	85 c0                	test   %eax,%eax
    9a53:	75 0c                	jne    9a61 <dump_fd_graph+0x18f>
    9a55:	83 45 d8 01          	addl   $0x1,-0x28(%ebp)
    9a59:	83 7d d8 3f          	cmpl   $0x3f,-0x28(%ebp)
    9a5d:	7e e5                	jle    9a44 <dump_fd_graph+0x172>
    9a5f:	eb 01                	jmp    9a62 <dump_fd_graph+0x190>
    9a61:	90                   	nop
    9a62:	83 7d d8 40          	cmpl   $0x40,-0x28(%ebp)
    9a66:	0f 84 3d 01 00 00    	je     9ba9 <dump_fd_graph+0x2d7>
    9a6c:	83 ec 08             	sub    $0x8,%esp
    9a6f:	ff 75 e4             	pushl  -0x1c(%ebp)
    9a72:	68 fc c0 00 00       	push   $0xc0fc
    9a77:	e8 ee d1 ff ff       	call   6c6a <syslog>
    9a7c:	83 c4 10             	add    $0x10,%esp
    9a7f:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    9a82:	8b 40 78             	mov    0x78(%eax),%eax
    9a85:	8b 94 85 ec fa ff ff 	mov    -0x514(%ebp,%eax,4),%edx
    9a8c:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    9a8f:	8b 40 78             	mov    0x78(%eax),%eax
    9a92:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
    9a95:	83 c1 68             	add    $0x68,%ecx
    9a98:	83 ec 0c             	sub    $0xc,%esp
    9a9b:	52                   	push   %edx
    9a9c:	50                   	push   %eax
    9a9d:	ff 75 e4             	pushl  -0x1c(%ebp)
    9aa0:	51                   	push   %ecx
    9aa1:	68 0c c1 00 00       	push   $0xc10c
    9aa6:	e8 bf d1 ff ff       	call   6c6a <syslog>
    9aab:	83 c4 20             	add    $0x20,%esp
    9aae:	c7 45 d0 03 00 00 00 	movl   $0x3,-0x30(%ebp)
    9ab5:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
    9abc:	e9 ac 00 00 00       	jmp    9b6d <dump_fd_graph+0x29b>
    9ac1:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    9ac4:	8b 55 d8             	mov    -0x28(%ebp),%edx
    9ac7:	83 c2 24             	add    $0x24,%edx
    9aca:	8b 44 90 04          	mov    0x4(%eax,%edx,4),%eax
    9ace:	85 c0                	test   %eax,%eax
    9ad0:	0f 84 92 00 00 00    	je     9b68 <dump_fd_graph+0x296>
    9ad6:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    9ad9:	8b 55 d8             	mov    -0x28(%ebp),%edx
    9adc:	83 c2 24             	add    $0x24,%edx
    9adf:	8b 44 90 04          	mov    0x4(%eax,%edx,4),%eax
    9ae3:	2d 20 a5 04 00       	sub    $0x4a520,%eax
    9ae8:	c1 f8 02             	sar    $0x2,%eax
    9aeb:	69 c0 ab aa aa aa    	imul   $0xaaaaaaab,%eax,%eax
    9af1:	89 45 b4             	mov    %eax,-0x4c(%ebp)
    9af4:	ff 75 b4             	pushl  -0x4c(%ebp)
    9af7:	ff 75 d8             	pushl  -0x28(%ebp)
    9afa:	ff 75 d0             	pushl  -0x30(%ebp)
    9afd:	68 39 c1 00 00       	push   $0xc139
    9b02:	e8 63 d1 ff ff       	call   6c6a <syslog>
    9b07:	83 c4 10             	add    $0x10,%esp
    9b0a:	8b 55 e0             	mov    -0x20(%ebp),%edx
    9b0d:	89 d0                	mov    %edx,%eax
    9b0f:	01 c0                	add    %eax,%eax
    9b11:	01 d0                	add    %edx,%eax
    9b13:	c1 e0 02             	shl    $0x2,%eax
    9b16:	8d 75 e8             	lea    -0x18(%ebp),%esi
    9b19:	01 f0                	add    %esi,%eax
    9b1b:	8d 90 04 ef ff ff    	lea    -0x10fc(%eax),%edx
    9b21:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    9b24:	89 02                	mov    %eax,(%edx)
    9b26:	8b 55 e0             	mov    -0x20(%ebp),%edx
    9b29:	89 d0                	mov    %edx,%eax
    9b2b:	01 c0                	add    %eax,%eax
    9b2d:	01 d0                	add    %edx,%eax
    9b2f:	c1 e0 02             	shl    $0x2,%eax
    9b32:	8d 7d e8             	lea    -0x18(%ebp),%edi
    9b35:	01 f8                	add    %edi,%eax
    9b37:	8d 90 08 ef ff ff    	lea    -0x10f8(%eax),%edx
    9b3d:	8b 45 d0             	mov    -0x30(%ebp),%eax
    9b40:	89 02                	mov    %eax,(%edx)
    9b42:	8b 55 e0             	mov    -0x20(%ebp),%edx
    9b45:	89 d0                	mov    %edx,%eax
    9b47:	01 c0                	add    %eax,%eax
    9b49:	01 d0                	add    %edx,%eax
    9b4b:	c1 e0 02             	shl    $0x2,%eax
    9b4e:	8d 75 e8             	lea    -0x18(%ebp),%esi
    9b51:	01 f0                	add    %esi,%eax
    9b53:	8d 90 0c ef ff ff    	lea    -0x10f4(%eax),%edx
    9b59:	8b 45 b4             	mov    -0x4c(%ebp),%eax
    9b5c:	89 02                	mov    %eax,(%edx)
    9b5e:	83 45 d0 01          	addl   $0x1,-0x30(%ebp)
    9b62:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
    9b66:	eb 01                	jmp    9b69 <dump_fd_graph+0x297>
    9b68:	90                   	nop
    9b69:	83 45 d8 01          	addl   $0x1,-0x28(%ebp)
    9b6d:	83 7d d8 3f          	cmpl   $0x3f,-0x28(%ebp)
    9b71:	0f 8e 4a ff ff ff    	jle    9ac1 <dump_fd_graph+0x1ef>
    9b77:	83 ec 0c             	sub    $0xc,%esp
    9b7a:	68 4e c1 00 00       	push   $0xc14e
    9b7f:	e8 e6 d0 ff ff       	call   6c6a <syslog>
    9b84:	83 c4 10             	add    $0x10,%esp
    9b87:	83 ec 0c             	sub    $0xc,%esp
    9b8a:	68 52 c1 00 00       	push   $0xc152
    9b8f:	e8 d6 d0 ff ff       	call   6c6a <syslog>
    9b94:	83 c4 10             	add    $0x10,%esp
    9b97:	83 ec 0c             	sub    $0xc,%esp
    9b9a:	68 67 c1 00 00       	push   $0xc167
    9b9f:	e8 c6 d0 ff ff       	call   6c6a <syslog>
    9ba4:	83 c4 10             	add    $0x10,%esp
    9ba7:	eb 01                	jmp    9baa <dump_fd_graph+0x2d8>
    9ba9:	90                   	nop
    9baa:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    9bae:	81 45 d4 94 01 00 00 	addl   $0x194,-0x2c(%ebp)
    9bb5:	83 7d e4 06          	cmpl   $0x6,-0x1c(%ebp)
    9bb9:	0f 8e 7c fe ff ff    	jle    9a3b <dump_fd_graph+0x169>
    9bbf:	83 ec 0c             	sub    $0xc,%esp
    9bc2:	68 6d c1 00 00       	push   $0xc16d
    9bc7:	e8 9e d0 ff ff       	call   6c6a <syslog>
    9bcc:	83 c4 10             	add    $0x10,%esp
    9bcf:	83 ec 0c             	sub    $0xc,%esp
    9bd2:	68 81 c1 00 00       	push   $0xc181
    9bd7:	e8 8e d0 ff ff       	call   6c6a <syslog>
    9bdc:	83 c4 10             	add    $0x10,%esp
    9bdf:	83 ec 0c             	sub    $0xc,%esp
    9be2:	68 85 c1 00 00       	push   $0xc185
    9be7:	e8 7e d0 ff ff       	call   6c6a <syslog>
    9bec:	83 c4 10             	add    $0x10,%esp
    9bef:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    9bf6:	e9 e5 00 00 00       	jmp    9ce0 <dump_fd_graph+0x40e>
    9bfb:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    9bfe:	89 d0                	mov    %edx,%eax
    9c00:	01 c0                	add    %eax,%eax
    9c02:	01 d0                	add    %edx,%eax
    9c04:	c1 e0 02             	shl    $0x2,%eax
    9c07:	05 28 a5 04 00       	add    $0x4a528,%eax
    9c0c:	8b 00                	mov    (%eax),%eax
    9c0e:	85 c0                	test   %eax,%eax
    9c10:	0f 84 c5 00 00 00    	je     9cdb <dump_fd_graph+0x409>
    9c16:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    9c19:	89 d0                	mov    %edx,%eax
    9c1b:	01 c0                	add    %eax,%eax
    9c1d:	01 d0                	add    %edx,%eax
    9c1f:	c1 e0 02             	shl    $0x2,%eax
    9c22:	05 28 a5 04 00       	add    $0x4a528,%eax
    9c27:	8b 00                	mov    (%eax),%eax
    9c29:	2d a0 08 01 00       	sub    $0x108a0,%eax
    9c2e:	c1 f8 02             	sar    $0x2,%eax
    9c31:	69 c0 a3 8b 2e ba    	imul   $0xba2e8ba3,%eax,%eax
    9c37:	89 45 b0             	mov    %eax,-0x50(%ebp)
    9c3a:	83 ec 08             	sub    $0x8,%esp
    9c3d:	ff 75 e4             	pushl  -0x1c(%ebp)
    9c40:	68 9d c1 00 00       	push   $0xc19d
    9c45:	e8 20 d0 ff ff       	call   6c6a <syslog>
    9c4a:	83 c4 10             	add    $0x10,%esp
    9c4d:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    9c50:	89 d0                	mov    %edx,%eax
    9c52:	01 c0                	add    %eax,%eax
    9c54:	01 d0                	add    %edx,%eax
    9c56:	c1 e0 02             	shl    $0x2,%eax
    9c59:	05 24 a5 04 00       	add    $0x4a524,%eax
    9c5e:	8b 08                	mov    (%eax),%ecx
    9c60:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    9c63:	89 d0                	mov    %edx,%eax
    9c65:	01 c0                	add    %eax,%eax
    9c67:	01 d0                	add    %edx,%eax
    9c69:	c1 e0 02             	shl    $0x2,%eax
    9c6c:	05 20 a5 04 00       	add    $0x4a520,%eax
    9c71:	8b 00                	mov    (%eax),%eax
    9c73:	83 ec 0c             	sub    $0xc,%esp
    9c76:	ff 75 b0             	pushl  -0x50(%ebp)
    9c79:	51                   	push   %ecx
    9c7a:	50                   	push   %eax
    9c7b:	ff 75 e4             	pushl  -0x1c(%ebp)
    9c7e:	68 b0 c1 00 00       	push   $0xc1b0
    9c83:	e8 e2 cf ff ff       	call   6c6a <syslog>
    9c88:	83 c4 20             	add    $0x20,%esp
    9c8b:	8b 45 dc             	mov    -0x24(%ebp),%eax
    9c8e:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    9c91:	89 94 c5 ec e6 ff ff 	mov    %edx,-0x1914(%ebp,%eax,8)
    9c98:	8b 45 dc             	mov    -0x24(%ebp),%eax
    9c9b:	8b 55 b0             	mov    -0x50(%ebp),%edx
    9c9e:	89 94 c5 f0 e6 ff ff 	mov    %edx,-0x1910(%ebp,%eax,8)
    9ca5:	83 45 dc 01          	addl   $0x1,-0x24(%ebp)
    9ca9:	83 ec 0c             	sub    $0xc,%esp
    9cac:	68 4e c1 00 00       	push   $0xc14e
    9cb1:	e8 b4 cf ff ff       	call   6c6a <syslog>
    9cb6:	83 c4 10             	add    $0x10,%esp
    9cb9:	83 ec 0c             	sub    $0xc,%esp
    9cbc:	68 52 c1 00 00       	push   $0xc152
    9cc1:	e8 a4 cf ff ff       	call   6c6a <syslog>
    9cc6:	83 c4 10             	add    $0x10,%esp
    9cc9:	83 ec 0c             	sub    $0xc,%esp
    9ccc:	68 67 c1 00 00       	push   $0xc167
    9cd1:	e8 94 cf ff ff       	call   6c6a <syslog>
    9cd6:	83 c4 10             	add    $0x10,%esp
    9cd9:	eb 01                	jmp    9cdc <dump_fd_graph+0x40a>
    9cdb:	90                   	nop
    9cdc:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    9ce0:	83 7d e4 3f          	cmpl   $0x3f,-0x1c(%ebp)
    9ce4:	0f 8e 11 ff ff ff    	jle    9bfb <dump_fd_graph+0x329>
    9cea:	83 ec 0c             	sub    $0xc,%esp
    9ced:	68 fc c1 00 00       	push   $0xc1fc
    9cf2:	e8 73 cf ff ff       	call   6c6a <syslog>
    9cf7:	83 c4 10             	add    $0x10,%esp
    9cfa:	83 ec 0c             	sub    $0xc,%esp
    9cfd:	68 81 c1 00 00       	push   $0xc181
    9d02:	e8 63 cf ff ff       	call   6c6a <syslog>
    9d07:	83 c4 10             	add    $0x10,%esp
    9d0a:	83 ec 0c             	sub    $0xc,%esp
    9d0d:	68 14 c2 00 00       	push   $0xc214
    9d12:	e8 53 cf ff ff       	call   6c6a <syslog>
    9d17:	83 c4 10             	add    $0x10,%esp
    9d1a:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    9d21:	e9 f5 00 00 00       	jmp    9e1b <dump_fd_graph+0x549>
    9d26:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    9d29:	6b c0 2c             	imul   $0x2c,%eax,%eax
    9d2c:	05 c4 08 01 00       	add    $0x108c4,%eax
    9d31:	8b 00                	mov    (%eax),%eax
    9d33:	85 c0                	test   %eax,%eax
    9d35:	0f 84 db 00 00 00    	je     9e16 <dump_fd_graph+0x544>
    9d3b:	83 ec 08             	sub    $0x8,%esp
    9d3e:	ff 75 e4             	pushl  -0x1c(%ebp)
    9d41:	68 2c c2 00 00       	push   $0xc22c
    9d46:	e8 1f cf ff ff       	call   6c6a <syslog>
    9d4b:	83 c4 10             	add    $0x10,%esp
    9d4e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    9d51:	6b c0 2c             	imul   $0x2c,%eax,%eax
    9d54:	05 c8 08 01 00       	add    $0x108c8,%eax
    9d59:	8b 08                	mov    (%eax),%ecx
    9d5b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    9d5e:	6b c0 2c             	imul   $0x2c,%eax,%eax
    9d61:	05 c4 08 01 00       	add    $0x108c4,%eax
    9d66:	8b 00                	mov    (%eax),%eax
    9d68:	89 85 e4 e6 ff ff    	mov    %eax,-0x191c(%ebp)
    9d6e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    9d71:	6b c0 2c             	imul   $0x2c,%eax,%eax
    9d74:	05 c0 08 01 00       	add    $0x108c0,%eax
    9d79:	8b 38                	mov    (%eax),%edi
    9d7b:	89 bd e0 e6 ff ff    	mov    %edi,-0x1920(%ebp)
    9d81:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    9d84:	6b c0 2c             	imul   $0x2c,%eax,%eax
    9d87:	05 ac 08 01 00       	add    $0x108ac,%eax
    9d8c:	8b 38                	mov    (%eax),%edi
    9d8e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    9d91:	6b c0 2c             	imul   $0x2c,%eax,%eax
    9d94:	05 a8 08 01 00       	add    $0x108a8,%eax
    9d99:	8b 30                	mov    (%eax),%esi
    9d9b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    9d9e:	6b c0 2c             	imul   $0x2c,%eax,%eax
    9da1:	05 a4 08 01 00       	add    $0x108a4,%eax
    9da6:	8b 18                	mov    (%eax),%ebx
    9da8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    9dab:	6b c0 2c             	imul   $0x2c,%eax,%eax
    9dae:	05 a0 08 01 00       	add    $0x108a0,%eax
    9db3:	8b 10                	mov    (%eax),%edx
    9db5:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    9db8:	6b c0 2c             	imul   $0x2c,%eax,%eax
    9dbb:	05 c8 08 01 00       	add    $0x108c8,%eax
    9dc0:	8b 00                	mov    (%eax),%eax
    9dc2:	83 ec 0c             	sub    $0xc,%esp
    9dc5:	51                   	push   %ecx
    9dc6:	ff b5 e4 e6 ff ff    	pushl  -0x191c(%ebp)
    9dcc:	ff b5 e0 e6 ff ff    	pushl  -0x1920(%ebp)
    9dd2:	57                   	push   %edi
    9dd3:	56                   	push   %esi
    9dd4:	53                   	push   %ebx
    9dd5:	52                   	push   %edx
    9dd6:	50                   	push   %eax
    9dd7:	68 3c c2 00 00       	push   $0xc23c
    9ddc:	e8 89 ce ff ff       	call   6c6a <syslog>
    9de1:	83 c4 30             	add    $0x30,%esp
    9de4:	83 ec 0c             	sub    $0xc,%esp
    9de7:	68 4e c1 00 00       	push   $0xc14e
    9dec:	e8 79 ce ff ff       	call   6c6a <syslog>
    9df1:	83 c4 10             	add    $0x10,%esp
    9df4:	83 ec 0c             	sub    $0xc,%esp
    9df7:	68 52 c1 00 00       	push   $0xc152
    9dfc:	e8 69 ce ff ff       	call   6c6a <syslog>
    9e01:	83 c4 10             	add    $0x10,%esp
    9e04:	83 ec 0c             	sub    $0xc,%esp
    9e07:	68 67 c1 00 00       	push   $0xc167
    9e0c:	e8 59 ce ff ff       	call   6c6a <syslog>
    9e11:	83 c4 10             	add    $0x10,%esp
    9e14:	eb 01                	jmp    9e17 <dump_fd_graph+0x545>
    9e16:	90                   	nop
    9e17:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    9e1b:	83 7d e4 3f          	cmpl   $0x3f,-0x1c(%ebp)
    9e1f:	0f 8e 01 ff ff ff    	jle    9d26 <dump_fd_graph+0x454>
    9e25:	83 ec 0c             	sub    $0xc,%esp
    9e28:	68 cf c2 00 00       	push   $0xc2cf
    9e2d:	e8 38 ce ff ff       	call   6c6a <syslog>
    9e32:	83 c4 10             	add    $0x10,%esp
    9e35:	83 ec 0c             	sub    $0xc,%esp
    9e38:	68 81 c1 00 00       	push   $0xc181
    9e3d:	e8 28 ce ff ff       	call   6c6a <syslog>
    9e42:	83 c4 10             	add    $0x10,%esp
    9e45:	83 ec 0c             	sub    $0xc,%esp
    9e48:	68 e4 c2 00 00       	push   $0xc2e4
    9e4d:	e8 18 ce ff ff       	call   6c6a <syslog>
    9e52:	83 c4 10             	add    $0x10,%esp
    9e55:	83 ec 0c             	sub    $0xc,%esp
    9e58:	68 fc c2 00 00       	push   $0xc2fc
    9e5d:	e8 08 ce ff ff       	call   6c6a <syslog>
    9e62:	83 c4 10             	add    $0x10,%esp
    9e65:	83 ec 0c             	sub    $0xc,%esp
    9e68:	68 0e c3 00 00       	push   $0xc30e
    9e6d:	e8 f8 cd ff ff       	call   6c6a <syslog>
    9e72:	83 c4 10             	add    $0x10,%esp
    9e75:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%ebp)
    9e7c:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%ebp)
    9e83:	a1 20 a8 04 00       	mov    0x4a820,%eax
    9e88:	8b 40 20             	mov    0x20(%eax),%eax
    9e8b:	83 ec 0c             	sub    $0xc,%esp
    9e8e:	50                   	push   %eax
    9e8f:	e8 d0 d8 ff ff       	call   7764 <get_super_block>
    9e94:	83 c4 10             	add    $0x10,%esp
    9e97:	89 45 ac             	mov    %eax,-0x54(%ebp)
    9e9a:	8b 45 ac             	mov    -0x54(%ebp),%eax
    9e9d:	8b 40 0c             	mov    0xc(%eax),%eax
    9ea0:	83 c0 02             	add    $0x2,%eax
    9ea3:	89 45 a8             	mov    %eax,-0x58(%ebp)
    9ea6:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    9ead:	e9 83 01 00 00       	jmp    a035 <dump_fd_graph+0x763>
    9eb2:	8b 1d 9c f7 00 00    	mov    0xf79c,%ebx
    9eb8:	8b 55 a8             	mov    -0x58(%ebp),%edx
    9ebb:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    9ebe:	01 d0                	add    %edx,%eax
    9ec0:	c1 e0 09             	shl    $0x9,%eax
    9ec3:	99                   	cltd   
    9ec4:	8b 0d 20 a8 04 00    	mov    0x4a820,%ecx
    9eca:	8b 49 20             	mov    0x20(%ecx),%ecx
    9ecd:	83 ec 04             	sub    $0x4,%esp
    9ed0:	53                   	push   %ebx
    9ed1:	6a 03                	push   $0x3
    9ed3:	68 00 02 00 00       	push   $0x200
    9ed8:	52                   	push   %edx
    9ed9:	50                   	push   %eax
    9eda:	51                   	push   %ecx
    9edb:	68 eb 03 00 00       	push   $0x3eb
    9ee0:	e8 77 d6 ff ff       	call   755c <rw_sector>
    9ee5:	83 c4 20             	add    $0x20,%esp
    9ee8:	a1 9c f7 00 00       	mov    0xf79c,%eax
    9eed:	83 ec 04             	sub    $0x4,%esp
    9ef0:	68 00 02 00 00       	push   $0x200
    9ef5:	50                   	push   %eax
    9ef6:	68 60 06 01 00       	push   $0x10660
    9efb:	e8 e0 c9 ff ff       	call   68e0 <memcpy>
    9f00:	83 c4 10             	add    $0x10,%esp
    9f03:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    9f0a:	e9 15 01 00 00       	jmp    a024 <dump_fd_graph+0x752>
    9f0f:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
    9f16:	e9 fb 00 00 00       	jmp    a016 <dump_fd_graph+0x744>
    9f1b:	83 7d cc 00          	cmpl   $0x0,-0x34(%ebp)
    9f1f:	75 4a                	jne    9f6b <dump_fd_graph+0x699>
    9f21:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    9f24:	05 60 06 01 00       	add    $0x10660,%eax
    9f29:	0f b6 00             	movzbl (%eax),%eax
    9f2c:	0f be d0             	movsbl %al,%edx
    9f2f:	8b 45 d8             	mov    -0x28(%ebp),%eax
    9f32:	89 c1                	mov    %eax,%ecx
    9f34:	d3 fa                	sar    %cl,%edx
    9f36:	89 d0                	mov    %edx,%eax
    9f38:	83 e0 01             	and    $0x1,%eax
    9f3b:	85 c0                	test   %eax,%eax
    9f3d:	0f 84 cb 00 00 00    	je     a00e <dump_fd_graph+0x73c>
    9f43:	c7 45 cc 01 00 00 00 	movl   $0x1,-0x34(%ebp)
    9f4a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    9f4d:	c1 e0 09             	shl    $0x9,%eax
    9f50:	89 c2                	mov    %eax,%edx
    9f52:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    9f55:	01 d0                	add    %edx,%eax
    9f57:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    9f5e:	8b 45 d8             	mov    -0x28(%ebp),%eax
    9f61:	01 d0                	add    %edx,%eax
    9f63:	89 45 c8             	mov    %eax,-0x38(%ebp)
    9f66:	e9 a7 00 00 00       	jmp    a012 <dump_fd_graph+0x740>
    9f6b:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    9f6e:	05 60 06 01 00       	add    $0x10660,%eax
    9f73:	0f b6 00             	movzbl (%eax),%eax
    9f76:	0f be d0             	movsbl %al,%edx
    9f79:	8b 45 d8             	mov    -0x28(%ebp),%eax
    9f7c:	89 c1                	mov    %eax,%ecx
    9f7e:	d3 fa                	sar    %cl,%edx
    9f80:	89 d0                	mov    %edx,%eax
    9f82:	83 e0 01             	and    $0x1,%eax
    9f85:	85 c0                	test   %eax,%eax
    9f87:	0f 85 84 00 00 00    	jne    a011 <dump_fd_graph+0x73f>
    9f8d:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%ebp)
    9f94:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    9f97:	c1 e0 09             	shl    $0x9,%eax
    9f9a:	89 c2                	mov    %eax,%edx
    9f9c:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    9f9f:	01 d0                	add    %edx,%eax
    9fa1:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    9fa8:	8b 45 d8             	mov    -0x28(%ebp),%eax
    9fab:	01 d0                	add    %edx,%eax
    9fad:	83 e8 01             	sub    $0x1,%eax
    9fb0:	89 45 a4             	mov    %eax,-0x5c(%ebp)
    9fb3:	83 ec 08             	sub    $0x8,%esp
    9fb6:	ff 75 c8             	pushl  -0x38(%ebp)
    9fb9:	68 23 c3 00 00       	push   $0xc323
    9fbe:	e8 a7 cc ff ff       	call   6c6a <syslog>
    9fc3:	83 c4 10             	add    $0x10,%esp
    9fc6:	83 ec 04             	sub    $0x4,%esp
    9fc9:	ff 75 a4             	pushl  -0x5c(%ebp)
    9fcc:	ff 75 c8             	pushl  -0x38(%ebp)
    9fcf:	68 35 c3 00 00       	push   $0xc335
    9fd4:	e8 91 cc ff ff       	call   6c6a <syslog>
    9fd9:	83 c4 10             	add    $0x10,%esp
    9fdc:	83 ec 0c             	sub    $0xc,%esp
    9fdf:	68 4e c1 00 00       	push   $0xc14e
    9fe4:	e8 81 cc ff ff       	call   6c6a <syslog>
    9fe9:	83 c4 10             	add    $0x10,%esp
    9fec:	83 ec 0c             	sub    $0xc,%esp
    9fef:	68 52 c1 00 00       	push   $0xc152
    9ff4:	e8 71 cc ff ff       	call   6c6a <syslog>
    9ff9:	83 c4 10             	add    $0x10,%esp
    9ffc:	83 ec 0c             	sub    $0xc,%esp
    9fff:	68 67 c1 00 00       	push   $0xc167
    a004:	e8 61 cc ff ff       	call   6c6a <syslog>
    a009:	83 c4 10             	add    $0x10,%esp
    a00c:	eb 04                	jmp    a012 <dump_fd_graph+0x740>
    a00e:	90                   	nop
    a00f:	eb 01                	jmp    a012 <dump_fd_graph+0x740>
    a011:	90                   	nop
    a012:	83 45 d8 01          	addl   $0x1,-0x28(%ebp)
    a016:	83 7d d8 07          	cmpl   $0x7,-0x28(%ebp)
    a01a:	0f 8e fb fe ff ff    	jle    9f1b <dump_fd_graph+0x649>
    a020:	83 45 c4 01          	addl   $0x1,-0x3c(%ebp)
    a024:	81 7d c4 ff 01 00 00 	cmpl   $0x1ff,-0x3c(%ebp)
    a02b:	0f 8e de fe ff ff    	jle    9f0f <dump_fd_graph+0x63d>
    a031:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    a035:	8b 45 ac             	mov    -0x54(%ebp),%eax
    a038:	8b 50 10             	mov    0x10(%eax),%edx
    a03b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a03e:	39 c2                	cmp    %eax,%edx
    a040:	0f 87 6c fe ff ff    	ja     9eb2 <dump_fd_graph+0x5e0>
    a046:	8b 45 ac             	mov    -0x54(%ebp),%eax
    a049:	8b 40 08             	mov    0x8(%eax),%eax
    a04c:	83 ec 08             	sub    $0x8,%esp
    a04f:	50                   	push   %eax
    a050:	68 54 c3 00 00       	push   $0xc354
    a055:	e8 10 cc ff ff       	call   6c6a <syslog>
    a05a:	83 c4 10             	add    $0x10,%esp
    a05d:	83 ec 0c             	sub    $0xc,%esp
    a060:	68 81 c1 00 00       	push   $0xc181
    a065:	e8 00 cc ff ff       	call   6c6a <syslog>
    a06a:	83 c4 10             	add    $0x10,%esp
    a06d:	83 ec 0c             	sub    $0xc,%esp
    a070:	68 7d c3 00 00       	push   $0xc37d
    a075:	e8 f0 cb ff ff       	call   6c6a <syslog>
    a07a:	83 c4 10             	add    $0x10,%esp
    a07d:	83 ec 0c             	sub    $0xc,%esp
    a080:	68 fc c2 00 00       	push   $0xc2fc
    a085:	e8 e0 cb ff ff       	call   6c6a <syslog>
    a08a:	83 c4 10             	add    $0x10,%esp
    a08d:	83 ec 0c             	sub    $0xc,%esp
    a090:	68 0e c3 00 00       	push   $0xc30e
    a095:	e8 d0 cb ff ff       	call   6c6a <syslog>
    a09a:	83 c4 10             	add    $0x10,%esp
    a09d:	83 ec 0c             	sub    $0xc,%esp
    a0a0:	68 95 c3 00 00       	push   $0xc395
    a0a5:	e8 c0 cb ff ff       	call   6c6a <syslog>
    a0aa:	83 c4 10             	add    $0x10,%esp
    a0ad:	83 ec 0c             	sub    $0xc,%esp
    a0b0:	68 a1 c3 00 00       	push   $0xc3a1
    a0b5:	e8 b0 cb ff ff       	call   6c6a <syslog>
    a0ba:	83 c4 10             	add    $0x10,%esp
    a0bd:	c7 45 a0 02 00 00 00 	movl   $0x2,-0x60(%ebp)
    a0c4:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    a0cb:	e9 cb 00 00 00       	jmp    a19b <dump_fd_graph+0x8c9>
    a0d0:	8b 1d 9c f7 00 00    	mov    0xf79c,%ebx
    a0d6:	8b 55 a0             	mov    -0x60(%ebp),%edx
    a0d9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a0dc:	01 d0                	add    %edx,%eax
    a0de:	c1 e0 09             	shl    $0x9,%eax
    a0e1:	99                   	cltd   
    a0e2:	8b 0d 20 a8 04 00    	mov    0x4a820,%ecx
    a0e8:	8b 49 20             	mov    0x20(%ecx),%ecx
    a0eb:	83 ec 04             	sub    $0x4,%esp
    a0ee:	53                   	push   %ebx
    a0ef:	6a 03                	push   $0x3
    a0f1:	68 00 02 00 00       	push   $0x200
    a0f6:	52                   	push   %edx
    a0f7:	50                   	push   %eax
    a0f8:	51                   	push   %ecx
    a0f9:	68 eb 03 00 00       	push   $0x3eb
    a0fe:	e8 59 d4 ff ff       	call   755c <rw_sector>
    a103:	83 c4 20             	add    $0x20,%esp
    a106:	a1 9c f7 00 00       	mov    0xf79c,%eax
    a10b:	83 ec 04             	sub    $0x4,%esp
    a10e:	68 00 02 00 00       	push   $0x200
    a113:	50                   	push   %eax
    a114:	68 60 06 01 00       	push   $0x10660
    a119:	e8 c2 c7 ff ff       	call   68e0 <memcpy>
    a11e:	83 c4 10             	add    $0x10,%esp
    a121:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    a128:	eb 64                	jmp    a18e <dump_fd_graph+0x8bc>
    a12a:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
    a131:	eb 51                	jmp    a184 <dump_fd_graph+0x8b2>
    a133:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    a136:	05 60 06 01 00       	add    $0x10660,%eax
    a13b:	0f b6 00             	movzbl (%eax),%eax
    a13e:	0f be d0             	movsbl %al,%edx
    a141:	8b 45 d8             	mov    -0x28(%ebp),%eax
    a144:	89 c1                	mov    %eax,%ecx
    a146:	d3 fa                	sar    %cl,%edx
    a148:	89 d0                	mov    %edx,%eax
    a14a:	83 e0 01             	and    $0x1,%eax
    a14d:	85 c0                	test   %eax,%eax
    a14f:	74 2f                	je     a180 <dump_fd_graph+0x8ae>
    a151:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a154:	c1 e0 09             	shl    $0x9,%eax
    a157:	89 c2                	mov    %eax,%edx
    a159:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    a15c:	01 d0                	add    %edx,%eax
    a15e:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    a165:	8b 45 d8             	mov    -0x28(%ebp),%eax
    a168:	01 d0                	add    %edx,%eax
    a16a:	89 45 9c             	mov    %eax,-0x64(%ebp)
    a16d:	83 ec 08             	sub    $0x8,%esp
    a170:	ff 75 9c             	pushl  -0x64(%ebp)
    a173:	68 b6 c3 00 00       	push   $0xc3b6
    a178:	e8 ed ca ff ff       	call   6c6a <syslog>
    a17d:	83 c4 10             	add    $0x10,%esp
    a180:	83 45 d8 01          	addl   $0x1,-0x28(%ebp)
    a184:	83 7d d8 07          	cmpl   $0x7,-0x28(%ebp)
    a188:	7e a9                	jle    a133 <dump_fd_graph+0x861>
    a18a:	83 45 c4 01          	addl   $0x1,-0x3c(%ebp)
    a18e:	81 7d c4 ff 01 00 00 	cmpl   $0x1ff,-0x3c(%ebp)
    a195:	7e 93                	jle    a12a <dump_fd_graph+0x858>
    a197:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    a19b:	8b 45 ac             	mov    -0x54(%ebp),%eax
    a19e:	8b 50 0c             	mov    0xc(%eax),%edx
    a1a1:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a1a4:	39 c2                	cmp    %eax,%edx
    a1a6:	0f 87 24 ff ff ff    	ja     a0d0 <dump_fd_graph+0x7fe>
    a1ac:	83 ec 0c             	sub    $0xc,%esp
    a1af:	68 4e c1 00 00       	push   $0xc14e
    a1b4:	e8 b1 ca ff ff       	call   6c6a <syslog>
    a1b9:	83 c4 10             	add    $0x10,%esp
    a1bc:	83 ec 0c             	sub    $0xc,%esp
    a1bf:	68 52 c1 00 00       	push   $0xc152
    a1c4:	e8 a1 ca ff ff       	call   6c6a <syslog>
    a1c9:	83 c4 10             	add    $0x10,%esp
    a1cc:	83 ec 0c             	sub    $0xc,%esp
    a1cf:	68 67 c1 00 00       	push   $0xc167
    a1d4:	e8 91 ca ff ff       	call   6c6a <syslog>
    a1d9:	83 c4 10             	add    $0x10,%esp
    a1dc:	83 ec 0c             	sub    $0xc,%esp
    a1df:	68 bd c3 00 00       	push   $0xc3bd
    a1e4:	e8 81 ca ff ff       	call   6c6a <syslog>
    a1e9:	83 c4 10             	add    $0x10,%esp
    a1ec:	83 ec 0c             	sub    $0xc,%esp
    a1ef:	68 81 c1 00 00       	push   $0xc181
    a1f4:	e8 71 ca ff ff       	call   6c6a <syslog>
    a1f9:	83 c4 10             	add    $0x10,%esp
    a1fc:	83 ec 0c             	sub    $0xc,%esp
    a1ff:	68 d5 c3 00 00       	push   $0xc3d5
    a204:	e8 61 ca ff ff       	call   6c6a <syslog>
    a209:	83 c4 10             	add    $0x10,%esp
    a20c:	83 ec 0c             	sub    $0xc,%esp
    a20f:	68 fc c2 00 00       	push   $0xc2fc
    a214:	e8 51 ca ff ff       	call   6c6a <syslog>
    a219:	83 c4 10             	add    $0x10,%esp
    a21c:	83 ec 0c             	sub    $0xc,%esp
    a21f:	68 0e c3 00 00       	push   $0xc30e
    a224:	e8 41 ca ff ff       	call   6c6a <syslog>
    a229:	83 c4 10             	add    $0x10,%esp
    a22c:	a1 20 a8 04 00       	mov    0x4a820,%eax
    a231:	8b 40 20             	mov    0x20(%eax),%eax
    a234:	83 ec 0c             	sub    $0xc,%esp
    a237:	50                   	push   %eax
    a238:	e8 27 d5 ff ff       	call   7764 <get_super_block>
    a23d:	83 c4 10             	add    $0x10,%esp
    a240:	89 45 ac             	mov    %eax,-0x54(%ebp)
    a243:	8b 45 ac             	mov    -0x54(%ebp),%eax
    a246:	8b 50 0c             	mov    0xc(%eax),%edx
    a249:	8b 45 ac             	mov    -0x54(%ebp),%eax
    a24c:	8b 40 10             	mov    0x10(%eax),%eax
    a24f:	01 d0                	add    %edx,%eax
    a251:	83 c0 02             	add    $0x2,%eax
    a254:	89 45 98             	mov    %eax,-0x68(%ebp)
    a257:	8b 1d 9c f7 00 00    	mov    0xf79c,%ebx
    a25d:	8b 45 98             	mov    -0x68(%ebp),%eax
    a260:	c1 e0 09             	shl    $0x9,%eax
    a263:	99                   	cltd   
    a264:	8b 0d 20 a8 04 00    	mov    0x4a820,%ecx
    a26a:	8b 49 20             	mov    0x20(%ecx),%ecx
    a26d:	83 ec 04             	sub    $0x4,%esp
    a270:	53                   	push   %ebx
    a271:	6a 03                	push   $0x3
    a273:	68 00 02 00 00       	push   $0x200
    a278:	52                   	push   %edx
    a279:	50                   	push   %eax
    a27a:	51                   	push   %ecx
    a27b:	68 eb 03 00 00       	push   $0x3eb
    a280:	e8 d7 d2 ff ff       	call   755c <rw_sector>
    a285:	83 c4 20             	add    $0x20,%esp
    a288:	a1 9c f7 00 00       	mov    0xf79c,%eax
    a28d:	83 ec 04             	sub    $0x4,%esp
    a290:	68 00 02 00 00       	push   $0x200
    a295:	50                   	push   %eax
    a296:	68 60 06 01 00       	push   $0x10660
    a29b:	e8 40 c6 ff ff       	call   68e0 <memcpy>
    a2a0:	83 c4 10             	add    $0x10,%esp
    a2a3:	c7 45 c0 60 06 01 00 	movl   $0x10660,-0x40(%ebp)
    a2aa:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    a2b1:	e9 7e 01 00 00       	jmp    a434 <dump_fd_graph+0xb62>
    a2b6:	8b 45 c0             	mov    -0x40(%ebp),%eax
    a2b9:	89 45 94             	mov    %eax,-0x6c(%ebp)
    a2bc:	8b 45 94             	mov    -0x6c(%ebp),%eax
    a2bf:	8b 40 08             	mov    0x8(%eax),%eax
    a2c2:	85 c0                	test   %eax,%eax
    a2c4:	0f 84 61 01 00 00    	je     a42b <dump_fd_graph+0xb59>
    a2ca:	8b 45 94             	mov    -0x6c(%ebp),%eax
    a2cd:	8b 00                	mov    (%eax),%eax
    a2cf:	3d 00 20 00 00       	cmp    $0x2000,%eax
    a2d4:	0f 84 c5 00 00 00    	je     a39f <dump_fd_graph+0xacd>
    a2da:	8b 45 94             	mov    -0x6c(%ebp),%eax
    a2dd:	8b 50 08             	mov    0x8(%eax),%edx
    a2e0:	8b 45 ac             	mov    -0x54(%ebp),%eax
    a2e3:	8b 40 14             	mov    0x14(%eax),%eax
    a2e6:	39 c2                	cmp    %eax,%edx
    a2e8:	73 1e                	jae    a308 <dump_fd_graph+0xa36>
    a2ea:	8b 45 ac             	mov    -0x54(%ebp),%eax
    a2ed:	8b 50 14             	mov    0x14(%eax),%edx
    a2f0:	8b 45 94             	mov    -0x6c(%ebp),%eax
    a2f3:	8b 40 08             	mov    0x8(%eax),%eax
    a2f6:	83 ec 04             	sub    $0x4,%esp
    a2f9:	52                   	push   %edx
    a2fa:	50                   	push   %eax
    a2fb:	68 ed c3 00 00       	push   $0xc3ed
    a300:	e8 c2 78 ff ff       	call   1bc7 <panic>
    a305:	83 c4 10             	add    $0x10,%esp
    a308:	8b 45 94             	mov    -0x6c(%ebp),%eax
    a30b:	8b 50 08             	mov    0x8(%eax),%edx
    a30e:	8b 45 ac             	mov    -0x54(%ebp),%eax
    a311:	8b 40 14             	mov    0x14(%eax),%eax
    a314:	29 c2                	sub    %eax,%edx
    a316:	89 d0                	mov    %edx,%eax
    a318:	83 c0 01             	add    $0x1,%eax
    a31b:	89 45 90             	mov    %eax,-0x70(%ebp)
    a31e:	8b 45 94             	mov    -0x6c(%ebp),%eax
    a321:	8b 50 0c             	mov    0xc(%eax),%edx
    a324:	8b 45 90             	mov    -0x70(%ebp),%eax
    a327:	01 d0                	add    %edx,%eax
    a329:	83 e8 01             	sub    $0x1,%eax
    a32c:	89 45 8c             	mov    %eax,-0x74(%ebp)
    a32f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a332:	83 c0 01             	add    $0x1,%eax
    a335:	83 ec 08             	sub    $0x8,%esp
    a338:	50                   	push   %eax
    a339:	68 09 c4 00 00       	push   $0xc409
    a33e:	e8 27 c9 ff ff       	call   6c6a <syslog>
    a343:	83 c4 10             	add    $0x10,%esp
    a346:	8b 45 94             	mov    -0x6c(%ebp),%eax
    a349:	8b 40 04             	mov    0x4(%eax),%eax
    a34c:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    a34f:	83 c2 01             	add    $0x1,%edx
    a352:	83 ec 0c             	sub    $0xc,%esp
    a355:	ff 75 8c             	pushl  -0x74(%ebp)
    a358:	ff 75 90             	pushl  -0x70(%ebp)
    a35b:	50                   	push   %eax
    a35c:	52                   	push   %edx
    a35d:	68 20 c4 00 00       	push   $0xc420
    a362:	e8 03 c9 ff ff       	call   6c6a <syslog>
    a367:	83 c4 20             	add    $0x20,%esp
    a36a:	83 ec 0c             	sub    $0xc,%esp
    a36d:	68 4e c1 00 00       	push   $0xc14e
    a372:	e8 f3 c8 ff ff       	call   6c6a <syslog>
    a377:	83 c4 10             	add    $0x10,%esp
    a37a:	83 ec 0c             	sub    $0xc,%esp
    a37d:	68 52 c1 00 00       	push   $0xc152
    a382:	e8 e3 c8 ff ff       	call   6c6a <syslog>
    a387:	83 c4 10             	add    $0x10,%esp
    a38a:	83 ec 0c             	sub    $0xc,%esp
    a38d:	68 67 c1 00 00       	push   $0xc167
    a392:	e8 d3 c8 ff ff       	call   6c6a <syslog>
    a397:	83 c4 10             	add    $0x10,%esp
    a39a:	e9 8d 00 00 00       	jmp    a42c <dump_fd_graph+0xb5a>
    a39f:	8b 45 94             	mov    -0x6c(%ebp),%eax
    a3a2:	8b 40 08             	mov    0x8(%eax),%eax
    a3a5:	c1 e8 08             	shr    $0x8,%eax
    a3a8:	25 ff 00 00 00       	and    $0xff,%eax
    a3ad:	89 45 90             	mov    %eax,-0x70(%ebp)
    a3b0:	8b 45 94             	mov    -0x6c(%ebp),%eax
    a3b3:	8b 40 08             	mov    0x8(%eax),%eax
    a3b6:	25 ff 00 00 00       	and    $0xff,%eax
    a3bb:	89 45 8c             	mov    %eax,-0x74(%ebp)
    a3be:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a3c1:	83 c0 01             	add    $0x1,%eax
    a3c4:	83 ec 08             	sub    $0x8,%esp
    a3c7:	50                   	push   %eax
    a3c8:	68 09 c4 00 00       	push   $0xc409
    a3cd:	e8 98 c8 ff ff       	call   6c6a <syslog>
    a3d2:	83 c4 10             	add    $0x10,%esp
    a3d5:	8b 45 94             	mov    -0x6c(%ebp),%eax
    a3d8:	8b 40 04             	mov    0x4(%eax),%eax
    a3db:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    a3de:	83 c2 01             	add    $0x1,%edx
    a3e1:	83 ec 0c             	sub    $0xc,%esp
    a3e4:	ff 75 8c             	pushl  -0x74(%ebp)
    a3e7:	ff 75 90             	pushl  -0x70(%ebp)
    a3ea:	50                   	push   %eax
    a3eb:	52                   	push   %edx
    a3ec:	68 58 c4 00 00       	push   $0xc458
    a3f1:	e8 74 c8 ff ff       	call   6c6a <syslog>
    a3f6:	83 c4 20             	add    $0x20,%esp
    a3f9:	83 ec 0c             	sub    $0xc,%esp
    a3fc:	68 4e c1 00 00       	push   $0xc14e
    a401:	e8 64 c8 ff ff       	call   6c6a <syslog>
    a406:	83 c4 10             	add    $0x10,%esp
    a409:	83 ec 0c             	sub    $0xc,%esp
    a40c:	68 52 c1 00 00       	push   $0xc152
    a411:	e8 54 c8 ff ff       	call   6c6a <syslog>
    a416:	83 c4 10             	add    $0x10,%esp
    a419:	83 ec 0c             	sub    $0xc,%esp
    a41c:	68 67 c1 00 00       	push   $0xc167
    a421:	e8 44 c8 ff ff       	call   6c6a <syslog>
    a426:	83 c4 10             	add    $0x10,%esp
    a429:	eb 01                	jmp    a42c <dump_fd_graph+0xb5a>
    a42b:	90                   	nop
    a42c:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    a430:	83 45 c0 20          	addl   $0x20,-0x40(%ebp)
    a434:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a437:	83 f8 0a             	cmp    $0xa,%eax
    a43a:	0f 86 76 fe ff ff    	jbe    a2b6 <dump_fd_graph+0x9e4>
    a440:	83 ec 0c             	sub    $0xc,%esp
    a443:	68 94 c4 00 00       	push   $0xc494
    a448:	e8 1d c8 ff ff       	call   6c6a <syslog>
    a44d:	83 c4 10             	add    $0x10,%esp
    a450:	83 ec 0c             	sub    $0xc,%esp
    a453:	68 81 c1 00 00       	push   $0xc181
    a458:	e8 0d c8 ff ff       	call   6c6a <syslog>
    a45d:	83 c4 10             	add    $0x10,%esp
    a460:	83 ec 0c             	sub    $0xc,%esp
    a463:	68 ae c4 00 00       	push   $0xc4ae
    a468:	e8 fd c7 ff ff       	call   6c6a <syslog>
    a46d:	83 c4 10             	add    $0x10,%esp
    a470:	83 ec 0c             	sub    $0xc,%esp
    a473:	68 fc c2 00 00       	push   $0xc2fc
    a478:	e8 ed c7 ff ff       	call   6c6a <syslog>
    a47d:	83 c4 10             	add    $0x10,%esp
    a480:	83 ec 0c             	sub    $0xc,%esp
    a483:	68 0e c3 00 00       	push   $0xc30e
    a488:	e8 dd c7 ff ff       	call   6c6a <syslog>
    a48d:	83 c4 10             	add    $0x10,%esp
    a490:	a1 20 a8 04 00       	mov    0x4a820,%eax
    a495:	8b 40 20             	mov    0x20(%eax),%eax
    a498:	83 ec 0c             	sub    $0xc,%esp
    a49b:	50                   	push   %eax
    a49c:	e8 c3 d2 ff ff       	call   7764 <get_super_block>
    a4a1:	83 c4 10             	add    $0x10,%esp
    a4a4:	89 45 ac             	mov    %eax,-0x54(%ebp)
    a4a7:	a1 20 a8 04 00       	mov    0x4a820,%eax
    a4ac:	8b 40 08             	mov    0x8(%eax),%eax
    a4af:	89 45 88             	mov    %eax,-0x78(%ebp)
    a4b2:	a1 20 a8 04 00       	mov    0x4a820,%eax
    a4b7:	8b 40 04             	mov    0x4(%eax),%eax
    a4ba:	05 ff 01 00 00       	add    $0x1ff,%eax
    a4bf:	c1 e8 09             	shr    $0x9,%eax
    a4c2:	89 45 84             	mov    %eax,-0x7c(%ebp)
    a4c5:	a1 20 a8 04 00       	mov    0x4a820,%eax
    a4ca:	8b 40 04             	mov    0x4(%eax),%eax
    a4cd:	c1 e8 04             	shr    $0x4,%eax
    a4d0:	89 45 80             	mov    %eax,-0x80(%ebp)
    a4d3:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
    a4da:	00 00 00 
    a4dd:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    a4e4:	e9 40 01 00 00       	jmp    a629 <dump_fd_graph+0xd57>
    a4e9:	8b 1d 9c f7 00 00    	mov    0xf79c,%ebx
    a4ef:	8b 55 88             	mov    -0x78(%ebp),%edx
    a4f2:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a4f5:	01 d0                	add    %edx,%eax
    a4f7:	c1 e0 09             	shl    $0x9,%eax
    a4fa:	99                   	cltd   
    a4fb:	8b 0d 20 a8 04 00    	mov    0x4a820,%ecx
    a501:	8b 49 20             	mov    0x20(%ecx),%ecx
    a504:	83 ec 04             	sub    $0x4,%esp
    a507:	53                   	push   %ebx
    a508:	6a 03                	push   $0x3
    a50a:	68 00 02 00 00       	push   $0x200
    a50f:	52                   	push   %edx
    a510:	50                   	push   %eax
    a511:	51                   	push   %ecx
    a512:	68 eb 03 00 00       	push   $0x3eb
    a517:	e8 40 d0 ff ff       	call   755c <rw_sector>
    a51c:	83 c4 20             	add    $0x20,%esp
    a51f:	a1 9c f7 00 00       	mov    0xf79c,%eax
    a524:	83 ec 04             	sub    $0x4,%esp
    a527:	68 00 02 00 00       	push   $0x200
    a52c:	50                   	push   %eax
    a52d:	68 60 06 01 00       	push   $0x10660
    a532:	e8 a9 c3 ff ff       	call   68e0 <memcpy>
    a537:	83 c4 10             	add    $0x10,%esp
    a53a:	c7 45 bc 60 06 01 00 	movl   $0x10660,-0x44(%ebp)
    a541:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    a548:	e9 c1 00 00 00       	jmp    a60e <dump_fd_graph+0xd3c>
    a54d:	8b 45 bc             	mov    -0x44(%ebp),%eax
    a550:	8b 00                	mov    (%eax),%eax
    a552:	85 c0                	test   %eax,%eax
    a554:	0f 84 ac 00 00 00    	je     a606 <dump_fd_graph+0xd34>
    a55a:	8b 45 bc             	mov    -0x44(%ebp),%eax
    a55d:	83 c0 04             	add    $0x4,%eax
    a560:	83 ec 04             	sub    $0x4,%esp
    a563:	6a 0c                	push   $0xc
    a565:	50                   	push   %eax
    a566:	8d 85 6f fb ff ff    	lea    -0x491(%ebp),%eax
    a56c:	50                   	push   %eax
    a56d:	e8 6e c3 ff ff       	call   68e0 <memcpy>
    a572:	83 c4 10             	add    $0x10,%esp
    a575:	0f b6 85 6f fb ff ff 	movzbl -0x491(%ebp),%eax
    a57c:	3c 2e                	cmp    $0x2e,%al
    a57e:	75 07                	jne    a587 <dump_fd_graph+0xcb5>
    a580:	c6 85 6f fb ff ff 2f 	movb   $0x2f,-0x491(%ebp)
    a587:	8b 45 bc             	mov    -0x44(%ebp),%eax
    a58a:	8b 00                	mov    (%eax),%eax
    a58c:	83 ec 08             	sub    $0x8,%esp
    a58f:	50                   	push   %eax
    a590:	68 c6 c4 00 00       	push   $0xc4c6
    a595:	e8 d0 c6 ff ff       	call   6c6a <syslog>
    a59a:	83 c4 10             	add    $0x10,%esp
    a59d:	8b 45 bc             	mov    -0x44(%ebp),%eax
    a5a0:	8b 00                	mov    (%eax),%eax
    a5a2:	83 ec 04             	sub    $0x4,%esp
    a5a5:	8d 95 6f fb ff ff    	lea    -0x491(%ebp),%edx
    a5ab:	52                   	push   %edx
    a5ac:	50                   	push   %eax
    a5ad:	68 da c4 00 00       	push   $0xc4da
    a5b2:	e8 b3 c6 ff ff       	call   6c6a <syslog>
    a5b7:	83 c4 10             	add    $0x10,%esp
    a5ba:	83 ec 0c             	sub    $0xc,%esp
    a5bd:	68 4e c1 00 00       	push   $0xc14e
    a5c2:	e8 a3 c6 ff ff       	call   6c6a <syslog>
    a5c7:	83 c4 10             	add    $0x10,%esp
    a5ca:	83 ec 0c             	sub    $0xc,%esp
    a5cd:	68 52 c1 00 00       	push   $0xc152
    a5d2:	e8 93 c6 ff ff       	call   6c6a <syslog>
    a5d7:	83 c4 10             	add    $0x10,%esp
    a5da:	83 ec 0c             	sub    $0xc,%esp
    a5dd:	68 67 c1 00 00       	push   $0xc167
    a5e2:	e8 83 c6 ff ff       	call   6c6a <syslog>
    a5e7:	83 c4 10             	add    $0x10,%esp
    a5ea:	8b 45 bc             	mov    -0x44(%ebp),%eax
    a5ed:	8b 10                	mov    (%eax),%edx
    a5ef:	8b 45 bc             	mov    -0x44(%ebp),%eax
    a5f2:	8b 00                	mov    (%eax),%eax
    a5f4:	83 ec 04             	sub    $0x4,%esp
    a5f7:	52                   	push   %edx
    a5f8:	50                   	push   %eax
    a5f9:	68 f8 c4 00 00       	push   $0xc4f8
    a5fe:	e8 67 c6 ff ff       	call   6c6a <syslog>
    a603:	83 c4 10             	add    $0x10,%esp
    a606:	83 45 c4 01          	addl   $0x1,-0x3c(%ebp)
    a60a:	83 45 bc 10          	addl   $0x10,-0x44(%ebp)
    a60e:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    a611:	83 f8 1f             	cmp    $0x1f,%eax
    a614:	0f 86 33 ff ff ff    	jbe    a54d <dump_fd_graph+0xc7b>
    a61a:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
    a620:	3b 45 80             	cmp    -0x80(%ebp),%eax
    a623:	7f 12                	jg     a637 <dump_fd_graph+0xd65>
    a625:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    a629:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a62c:	3b 45 84             	cmp    -0x7c(%ebp),%eax
    a62f:	0f 8c b4 fe ff ff    	jl     a4e9 <dump_fd_graph+0xc17>
    a635:	eb 01                	jmp    a638 <dump_fd_graph+0xd66>
    a637:	90                   	nop
    a638:	83 ec 0c             	sub    $0xc,%esp
    a63b:	68 22 c5 00 00       	push   $0xc522
    a640:	e8 25 c6 ff ff       	call   6c6a <syslog>
    a645:	83 c4 10             	add    $0x10,%esp
    a648:	83 ec 0c             	sub    $0xc,%esp
    a64b:	68 81 c1 00 00       	push   $0xc181
    a650:	e8 15 c6 ff ff       	call   6c6a <syslog>
    a655:	83 c4 10             	add    $0x10,%esp
    a658:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    a65f:	eb 5c                	jmp    a6bd <dump_fd_graph+0xdeb>
    a661:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    a664:	89 d0                	mov    %edx,%eax
    a666:	01 c0                	add    %eax,%eax
    a668:	01 d0                	add    %edx,%eax
    a66a:	c1 e0 02             	shl    $0x2,%eax
    a66d:	8d 75 e8             	lea    -0x18(%ebp),%esi
    a670:	01 f0                	add    %esi,%eax
    a672:	2d f4 10 00 00       	sub    $0x10f4,%eax
    a677:	8b 18                	mov    (%eax),%ebx
    a679:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    a67c:	89 d0                	mov    %edx,%eax
    a67e:	01 c0                	add    %eax,%eax
    a680:	01 d0                	add    %edx,%eax
    a682:	c1 e0 02             	shl    $0x2,%eax
    a685:	8d 7d e8             	lea    -0x18(%ebp),%edi
    a688:	01 f8                	add    %edi,%eax
    a68a:	2d f8 10 00 00       	sub    $0x10f8,%eax
    a68f:	8b 08                	mov    (%eax),%ecx
    a691:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    a694:	89 d0                	mov    %edx,%eax
    a696:	01 c0                	add    %eax,%eax
    a698:	01 d0                	add    %edx,%eax
    a69a:	c1 e0 02             	shl    $0x2,%eax
    a69d:	8d 75 e8             	lea    -0x18(%ebp),%esi
    a6a0:	01 f0                	add    %esi,%eax
    a6a2:	2d fc 10 00 00       	sub    $0x10fc,%eax
    a6a7:	8b 00                	mov    (%eax),%eax
    a6a9:	53                   	push   %ebx
    a6aa:	51                   	push   %ecx
    a6ab:	50                   	push   %eax
    a6ac:	68 3c c5 00 00       	push   $0xc53c
    a6b1:	e8 b4 c5 ff ff       	call   6c6a <syslog>
    a6b6:	83 c4 10             	add    $0x10,%esp
    a6b9:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    a6bd:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a6c0:	3b 45 e0             	cmp    -0x20(%ebp),%eax
    a6c3:	7c 9c                	jl     a661 <dump_fd_graph+0xd8f>
    a6c5:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    a6cc:	eb 2a                	jmp    a6f8 <dump_fd_graph+0xe26>
    a6ce:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a6d1:	8b 94 c5 f0 e6 ff ff 	mov    -0x1910(%ebp,%eax,8),%edx
    a6d8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a6db:	8b 84 c5 ec e6 ff ff 	mov    -0x1914(%ebp,%eax,8),%eax
    a6e2:	83 ec 04             	sub    $0x4,%esp
    a6e5:	52                   	push   %edx
    a6e6:	50                   	push   %eax
    a6e7:	68 60 c5 00 00       	push   $0xc560
    a6ec:	e8 79 c5 ff ff       	call   6c6a <syslog>
    a6f1:	83 c4 10             	add    $0x10,%esp
    a6f4:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    a6f8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a6fb:	3b 45 dc             	cmp    -0x24(%ebp),%eax
    a6fe:	7c ce                	jl     a6ce <dump_fd_graph+0xdfc>
    a700:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    a707:	eb 36                	jmp    a73f <dump_fd_graph+0xe6d>
    a709:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a70c:	6b c0 2c             	imul   $0x2c,%eax,%eax
    a70f:	05 c4 08 01 00       	add    $0x108c4,%eax
    a714:	8b 00                	mov    (%eax),%eax
    a716:	85 c0                	test   %eax,%eax
    a718:	74 21                	je     a73b <dump_fd_graph+0xe69>
    a71a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a71d:	6b c0 2c             	imul   $0x2c,%eax,%eax
    a720:	05 c8 08 01 00       	add    $0x108c8,%eax
    a725:	8b 00                	mov    (%eax),%eax
    a727:	83 ec 04             	sub    $0x4,%esp
    a72a:	50                   	push   %eax
    a72b:	ff 75 e4             	pushl  -0x1c(%ebp)
    a72e:	68 84 c5 00 00       	push   $0xc584
    a733:	e8 32 c5 ff ff       	call   6c6a <syslog>
    a738:	83 c4 10             	add    $0x10,%esp
    a73b:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    a73f:	83 7d e4 3f          	cmpl   $0x3f,-0x1c(%ebp)
    a743:	7e c4                	jle    a709 <dump_fd_graph+0xe37>
    a745:	83 ec 08             	sub    $0x8,%esp
    a748:	8d 85 7c fb ff ff    	lea    -0x484(%ebp),%eax
    a74e:	50                   	push   %eax
    a74f:	68 a9 c5 00 00       	push   $0xc5a9
    a754:	e8 11 c5 ff ff       	call   6c6a <syslog>
    a759:	83 c4 10             	add    $0x10,%esp
    a75c:	83 ec 0c             	sub    $0xc,%esp
    a75f:	68 b9 c5 00 00       	push   $0xc5b9
    a764:	e8 01 c5 ff ff       	call   6c6a <syslog>
    a769:	83 c4 10             	add    $0x10,%esp
    a76c:	83 ec 0c             	sub    $0xc,%esp
    a76f:	68 bc c5 00 00       	push   $0xc5bc
    a774:	e8 f1 c4 ff ff       	call   6c6a <syslog>
    a779:	83 c4 10             	add    $0x10,%esp
    a77c:	90                   	nop
    a77d:	8d 65 f4             	lea    -0xc(%ebp),%esp
    a780:	5b                   	pop    %ebx
    a781:	5e                   	pop    %esi
    a782:	5f                   	pop    %edi
    a783:	5d                   	pop    %ebp
    a784:	c3                   	ret    
