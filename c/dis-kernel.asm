
kernel.bin:     file format elf32-i386


Disassembly of section .text:

00030400 <_start>:
   30400:	bc 60 8f 03 00       	mov    $0x38f60,%esp
   30405:	c7 05 0c 27 07 00 00 	movl   $0x0,0x7270c
   3040c:	00 00 00 
   3040f:	0f 01 05 10 27 07 00 	sgdtl  0x72710
   30416:	e8 15 04 00 00       	call   30830 <cstart>
   3041b:	0f 01 15 10 27 07 00 	lgdtl  0x72710
   30422:	0f 01 1d 20 96 03 00 	lidtl  0x39620
   30429:	ea 30 04 03 00 08 00 	ljmp   $0x8,$0x30430

00030430 <csinit>:
   30430:	31 c0                	xor    %eax,%eax
   30432:	66 b8 20 00          	mov    $0x20,%ax
   30436:	0f 00 d8             	ltr    %ax
   30439:	e9 87 04 00 00       	jmp    308c5 <kernel_main>
   3043e:	90                   	nop
   3043f:	90                   	nop

00030440 <hwint00>:
   30440:	e8 4c 03 00 00       	call   30791 <save>
   30445:	e4 21                	in     $0x21,%al
   30447:	0c 01                	or     $0x1,%al
   30449:	e6 21                	out    %al,$0x21
   3044b:	b0 20                	mov    $0x20,%al
   3044d:	e6 20                	out    %al,$0x20
   3044f:	fb                   	sti    
   30450:	6a 00                	push   $0x0
   30452:	ff 15 80 2f 07 00    	call   *0x72f80
   30458:	59                   	pop    %ecx
   30459:	fa                   	cli    
   3045a:	e4 21                	in     $0x21,%al
   3045c:	24 fe                	and    $0xfe,%al
   3045e:	e6 21                	out    %al,$0x21
   30460:	c3                   	ret    
   30461:	90                   	nop
   30462:	90                   	nop
   30463:	90                   	nop
   30464:	90                   	nop
   30465:	90                   	nop
   30466:	90                   	nop
   30467:	90                   	nop
   30468:	90                   	nop
   30469:	90                   	nop
   3046a:	90                   	nop
   3046b:	90                   	nop
   3046c:	90                   	nop
   3046d:	90                   	nop
   3046e:	90                   	nop
   3046f:	90                   	nop

00030470 <hwint01>:
   30470:	e8 1c 03 00 00       	call   30791 <save>
   30475:	e4 21                	in     $0x21,%al
   30477:	0c 02                	or     $0x2,%al
   30479:	e6 21                	out    %al,$0x21
   3047b:	b0 20                	mov    $0x20,%al
   3047d:	e6 20                	out    %al,$0x20
   3047f:	fb                   	sti    
   30480:	6a 01                	push   $0x1
   30482:	ff 15 84 2f 07 00    	call   *0x72f84
   30488:	59                   	pop    %ecx
   30489:	fa                   	cli    
   3048a:	e4 21                	in     $0x21,%al
   3048c:	24 fd                	and    $0xfd,%al
   3048e:	e6 21                	out    %al,$0x21
   30490:	c3                   	ret    
   30491:	90                   	nop
   30492:	90                   	nop
   30493:	90                   	nop
   30494:	90                   	nop
   30495:	90                   	nop
   30496:	90                   	nop
   30497:	90                   	nop
   30498:	90                   	nop
   30499:	90                   	nop
   3049a:	90                   	nop
   3049b:	90                   	nop
   3049c:	90                   	nop
   3049d:	90                   	nop
   3049e:	90                   	nop
   3049f:	90                   	nop

000304a0 <hwint02>:
   304a0:	e8 ec 02 00 00       	call   30791 <save>
   304a5:	e4 21                	in     $0x21,%al
   304a7:	0c 04                	or     $0x4,%al
   304a9:	e6 21                	out    %al,$0x21
   304ab:	b0 20                	mov    $0x20,%al
   304ad:	e6 20                	out    %al,$0x20
   304af:	fb                   	sti    
   304b0:	6a 02                	push   $0x2
   304b2:	ff 15 88 2f 07 00    	call   *0x72f88
   304b8:	59                   	pop    %ecx
   304b9:	fa                   	cli    
   304ba:	e4 21                	in     $0x21,%al
   304bc:	24 fb                	and    $0xfb,%al
   304be:	e6 21                	out    %al,$0x21
   304c0:	c3                   	ret    
   304c1:	90                   	nop
   304c2:	90                   	nop
   304c3:	90                   	nop
   304c4:	90                   	nop
   304c5:	90                   	nop
   304c6:	90                   	nop
   304c7:	90                   	nop
   304c8:	90                   	nop
   304c9:	90                   	nop
   304ca:	90                   	nop
   304cb:	90                   	nop
   304cc:	90                   	nop
   304cd:	90                   	nop
   304ce:	90                   	nop
   304cf:	90                   	nop

000304d0 <hwint03>:
   304d0:	e8 bc 02 00 00       	call   30791 <save>
   304d5:	e4 21                	in     $0x21,%al
   304d7:	0c 08                	or     $0x8,%al
   304d9:	e6 21                	out    %al,$0x21
   304db:	b0 20                	mov    $0x20,%al
   304dd:	e6 20                	out    %al,$0x20
   304df:	fb                   	sti    
   304e0:	6a 03                	push   $0x3
   304e2:	ff 15 8c 2f 07 00    	call   *0x72f8c
   304e8:	59                   	pop    %ecx
   304e9:	fa                   	cli    
   304ea:	e4 21                	in     $0x21,%al
   304ec:	24 f7                	and    $0xf7,%al
   304ee:	e6 21                	out    %al,$0x21
   304f0:	c3                   	ret    
   304f1:	90                   	nop
   304f2:	90                   	nop
   304f3:	90                   	nop
   304f4:	90                   	nop
   304f5:	90                   	nop
   304f6:	90                   	nop
   304f7:	90                   	nop
   304f8:	90                   	nop
   304f9:	90                   	nop
   304fa:	90                   	nop
   304fb:	90                   	nop
   304fc:	90                   	nop
   304fd:	90                   	nop
   304fe:	90                   	nop
   304ff:	90                   	nop

00030500 <hwint04>:
   30500:	e8 8c 02 00 00       	call   30791 <save>
   30505:	e4 21                	in     $0x21,%al
   30507:	0c 10                	or     $0x10,%al
   30509:	e6 21                	out    %al,$0x21
   3050b:	b0 20                	mov    $0x20,%al
   3050d:	e6 20                	out    %al,$0x20
   3050f:	fb                   	sti    
   30510:	6a 04                	push   $0x4
   30512:	ff 15 90 2f 07 00    	call   *0x72f90
   30518:	59                   	pop    %ecx
   30519:	fa                   	cli    
   3051a:	e4 21                	in     $0x21,%al
   3051c:	24 ef                	and    $0xef,%al
   3051e:	e6 21                	out    %al,$0x21
   30520:	c3                   	ret    
   30521:	90                   	nop
   30522:	90                   	nop
   30523:	90                   	nop
   30524:	90                   	nop
   30525:	90                   	nop
   30526:	90                   	nop
   30527:	90                   	nop
   30528:	90                   	nop
   30529:	90                   	nop
   3052a:	90                   	nop
   3052b:	90                   	nop
   3052c:	90                   	nop
   3052d:	90                   	nop
   3052e:	90                   	nop
   3052f:	90                   	nop

00030530 <hwint05>:
   30530:	e8 5c 02 00 00       	call   30791 <save>
   30535:	e4 21                	in     $0x21,%al
   30537:	0c 20                	or     $0x20,%al
   30539:	e6 21                	out    %al,$0x21
   3053b:	b0 20                	mov    $0x20,%al
   3053d:	e6 20                	out    %al,$0x20
   3053f:	fb                   	sti    
   30540:	6a 05                	push   $0x5
   30542:	ff 15 94 2f 07 00    	call   *0x72f94
   30548:	59                   	pop    %ecx
   30549:	fa                   	cli    
   3054a:	e4 21                	in     $0x21,%al
   3054c:	24 df                	and    $0xdf,%al
   3054e:	e6 21                	out    %al,$0x21
   30550:	c3                   	ret    
   30551:	90                   	nop
   30552:	90                   	nop
   30553:	90                   	nop
   30554:	90                   	nop
   30555:	90                   	nop
   30556:	90                   	nop
   30557:	90                   	nop
   30558:	90                   	nop
   30559:	90                   	nop
   3055a:	90                   	nop
   3055b:	90                   	nop
   3055c:	90                   	nop
   3055d:	90                   	nop
   3055e:	90                   	nop
   3055f:	90                   	nop

00030560 <hwint06>:
   30560:	e8 2c 02 00 00       	call   30791 <save>
   30565:	e4 21                	in     $0x21,%al
   30567:	0c 40                	or     $0x40,%al
   30569:	e6 21                	out    %al,$0x21
   3056b:	b0 20                	mov    $0x20,%al
   3056d:	e6 20                	out    %al,$0x20
   3056f:	fb                   	sti    
   30570:	6a 06                	push   $0x6
   30572:	ff 15 98 2f 07 00    	call   *0x72f98
   30578:	59                   	pop    %ecx
   30579:	fa                   	cli    
   3057a:	e4 21                	in     $0x21,%al
   3057c:	24 bf                	and    $0xbf,%al
   3057e:	e6 21                	out    %al,$0x21
   30580:	c3                   	ret    
   30581:	90                   	nop
   30582:	90                   	nop
   30583:	90                   	nop
   30584:	90                   	nop
   30585:	90                   	nop
   30586:	90                   	nop
   30587:	90                   	nop
   30588:	90                   	nop
   30589:	90                   	nop
   3058a:	90                   	nop
   3058b:	90                   	nop
   3058c:	90                   	nop
   3058d:	90                   	nop
   3058e:	90                   	nop
   3058f:	90                   	nop

00030590 <hwint07>:
   30590:	e8 fc 01 00 00       	call   30791 <save>
   30595:	e4 21                	in     $0x21,%al
   30597:	0c 80                	or     $0x80,%al
   30599:	e6 21                	out    %al,$0x21
   3059b:	b0 20                	mov    $0x20,%al
   3059d:	e6 20                	out    %al,$0x20
   3059f:	fb                   	sti    
   305a0:	6a 07                	push   $0x7
   305a2:	ff 15 9c 2f 07 00    	call   *0x72f9c
   305a8:	59                   	pop    %ecx
   305a9:	fa                   	cli    
   305aa:	e4 21                	in     $0x21,%al
   305ac:	24 7f                	and    $0x7f,%al
   305ae:	e6 21                	out    %al,$0x21
   305b0:	c3                   	ret    
   305b1:	90                   	nop
   305b2:	90                   	nop
   305b3:	90                   	nop
   305b4:	90                   	nop
   305b5:	90                   	nop
   305b6:	90                   	nop
   305b7:	90                   	nop
   305b8:	90                   	nop
   305b9:	90                   	nop
   305ba:	90                   	nop
   305bb:	90                   	nop
   305bc:	90                   	nop
   305bd:	90                   	nop
   305be:	90                   	nop
   305bf:	90                   	nop

000305c0 <hwint08>:
   305c0:	e8 cc 01 00 00       	call   30791 <save>
   305c5:	e4 a1                	in     $0xa1,%al
   305c7:	0c 01                	or     $0x1,%al
   305c9:	e6 a1                	out    %al,$0xa1
   305cb:	b0 20                	mov    $0x20,%al
   305cd:	e6 20                	out    %al,$0x20
   305cf:	90                   	nop
   305d0:	e6 a0                	out    %al,$0xa0
   305d2:	fb                   	sti    
   305d3:	6a 08                	push   $0x8
   305d5:	ff 15 a0 2f 07 00    	call   *0x72fa0
   305db:	59                   	pop    %ecx
   305dc:	fa                   	cli    
   305dd:	e4 a1                	in     $0xa1,%al
   305df:	24 fe                	and    $0xfe,%al
   305e1:	e6 a1                	out    %al,$0xa1
   305e3:	c3                   	ret    
   305e4:	90                   	nop
   305e5:	90                   	nop
   305e6:	90                   	nop
   305e7:	90                   	nop
   305e8:	90                   	nop
   305e9:	90                   	nop
   305ea:	90                   	nop
   305eb:	90                   	nop
   305ec:	90                   	nop
   305ed:	90                   	nop
   305ee:	90                   	nop
   305ef:	90                   	nop

000305f0 <hwint09>:
   305f0:	e8 9c 01 00 00       	call   30791 <save>
   305f5:	e4 a1                	in     $0xa1,%al
   305f7:	0c 02                	or     $0x2,%al
   305f9:	e6 a1                	out    %al,$0xa1
   305fb:	b0 20                	mov    $0x20,%al
   305fd:	e6 20                	out    %al,$0x20
   305ff:	90                   	nop
   30600:	e6 a0                	out    %al,$0xa0
   30602:	fb                   	sti    
   30603:	6a 09                	push   $0x9
   30605:	ff 15 a4 2f 07 00    	call   *0x72fa4
   3060b:	59                   	pop    %ecx
   3060c:	fa                   	cli    
   3060d:	e4 a1                	in     $0xa1,%al
   3060f:	24 fd                	and    $0xfd,%al
   30611:	e6 a1                	out    %al,$0xa1
   30613:	c3                   	ret    
   30614:	90                   	nop
   30615:	90                   	nop
   30616:	90                   	nop
   30617:	90                   	nop
   30618:	90                   	nop
   30619:	90                   	nop
   3061a:	90                   	nop
   3061b:	90                   	nop
   3061c:	90                   	nop
   3061d:	90                   	nop
   3061e:	90                   	nop
   3061f:	90                   	nop

00030620 <hwint10>:
   30620:	e8 6c 01 00 00       	call   30791 <save>
   30625:	e4 a1                	in     $0xa1,%al
   30627:	0c 04                	or     $0x4,%al
   30629:	e6 a1                	out    %al,$0xa1
   3062b:	b0 20                	mov    $0x20,%al
   3062d:	e6 20                	out    %al,$0x20
   3062f:	90                   	nop
   30630:	e6 a0                	out    %al,$0xa0
   30632:	fb                   	sti    
   30633:	6a 0a                	push   $0xa
   30635:	ff 15 a8 2f 07 00    	call   *0x72fa8
   3063b:	59                   	pop    %ecx
   3063c:	fa                   	cli    
   3063d:	e4 a1                	in     $0xa1,%al
   3063f:	24 fb                	and    $0xfb,%al
   30641:	e6 a1                	out    %al,$0xa1
   30643:	c3                   	ret    
   30644:	90                   	nop
   30645:	90                   	nop
   30646:	90                   	nop
   30647:	90                   	nop
   30648:	90                   	nop
   30649:	90                   	nop
   3064a:	90                   	nop
   3064b:	90                   	nop
   3064c:	90                   	nop
   3064d:	90                   	nop
   3064e:	90                   	nop
   3064f:	90                   	nop

00030650 <hwint11>:
   30650:	e8 3c 01 00 00       	call   30791 <save>
   30655:	e4 a1                	in     $0xa1,%al
   30657:	0c 08                	or     $0x8,%al
   30659:	e6 a1                	out    %al,$0xa1
   3065b:	b0 20                	mov    $0x20,%al
   3065d:	e6 20                	out    %al,$0x20
   3065f:	90                   	nop
   30660:	e6 a0                	out    %al,$0xa0
   30662:	fb                   	sti    
   30663:	6a 0b                	push   $0xb
   30665:	ff 15 ac 2f 07 00    	call   *0x72fac
   3066b:	59                   	pop    %ecx
   3066c:	fa                   	cli    
   3066d:	e4 a1                	in     $0xa1,%al
   3066f:	24 f7                	and    $0xf7,%al
   30671:	e6 a1                	out    %al,$0xa1
   30673:	c3                   	ret    
   30674:	90                   	nop
   30675:	90                   	nop
   30676:	90                   	nop
   30677:	90                   	nop
   30678:	90                   	nop
   30679:	90                   	nop
   3067a:	90                   	nop
   3067b:	90                   	nop
   3067c:	90                   	nop
   3067d:	90                   	nop
   3067e:	90                   	nop
   3067f:	90                   	nop

00030680 <hwint12>:
   30680:	e8 0c 01 00 00       	call   30791 <save>
   30685:	e4 a1                	in     $0xa1,%al
   30687:	0c 10                	or     $0x10,%al
   30689:	e6 a1                	out    %al,$0xa1
   3068b:	b0 20                	mov    $0x20,%al
   3068d:	e6 20                	out    %al,$0x20
   3068f:	90                   	nop
   30690:	e6 a0                	out    %al,$0xa0
   30692:	fb                   	sti    
   30693:	6a 0c                	push   $0xc
   30695:	ff 15 b0 2f 07 00    	call   *0x72fb0
   3069b:	59                   	pop    %ecx
   3069c:	fa                   	cli    
   3069d:	e4 a1                	in     $0xa1,%al
   3069f:	24 ef                	and    $0xef,%al
   306a1:	e6 a1                	out    %al,$0xa1
   306a3:	c3                   	ret    
   306a4:	90                   	nop
   306a5:	90                   	nop
   306a6:	90                   	nop
   306a7:	90                   	nop
   306a8:	90                   	nop
   306a9:	90                   	nop
   306aa:	90                   	nop
   306ab:	90                   	nop
   306ac:	90                   	nop
   306ad:	90                   	nop
   306ae:	90                   	nop
   306af:	90                   	nop

000306b0 <hwint13>:
   306b0:	e8 dc 00 00 00       	call   30791 <save>
   306b5:	e4 a1                	in     $0xa1,%al
   306b7:	0c 20                	or     $0x20,%al
   306b9:	e6 a1                	out    %al,$0xa1
   306bb:	b0 20                	mov    $0x20,%al
   306bd:	e6 20                	out    %al,$0x20
   306bf:	90                   	nop
   306c0:	e6 a0                	out    %al,$0xa0
   306c2:	fb                   	sti    
   306c3:	6a 0d                	push   $0xd
   306c5:	ff 15 b4 2f 07 00    	call   *0x72fb4
   306cb:	59                   	pop    %ecx
   306cc:	fa                   	cli    
   306cd:	e4 a1                	in     $0xa1,%al
   306cf:	24 df                	and    $0xdf,%al
   306d1:	e6 a1                	out    %al,$0xa1
   306d3:	c3                   	ret    
   306d4:	90                   	nop
   306d5:	90                   	nop
   306d6:	90                   	nop
   306d7:	90                   	nop
   306d8:	90                   	nop
   306d9:	90                   	nop
   306da:	90                   	nop
   306db:	90                   	nop
   306dc:	90                   	nop
   306dd:	90                   	nop
   306de:	90                   	nop
   306df:	90                   	nop

000306e0 <hwint14>:
   306e0:	e8 ac 00 00 00       	call   30791 <save>
   306e5:	e4 a1                	in     $0xa1,%al
   306e7:	0c 40                	or     $0x40,%al
   306e9:	e6 a1                	out    %al,$0xa1
   306eb:	b0 20                	mov    $0x20,%al
   306ed:	e6 20                	out    %al,$0x20
   306ef:	90                   	nop
   306f0:	e6 a0                	out    %al,$0xa0
   306f2:	fb                   	sti    
   306f3:	6a 0e                	push   $0xe
   306f5:	ff 15 b8 2f 07 00    	call   *0x72fb8
   306fb:	59                   	pop    %ecx
   306fc:	fa                   	cli    
   306fd:	e4 a1                	in     $0xa1,%al
   306ff:	24 bf                	and    $0xbf,%al
   30701:	e6 a1                	out    %al,$0xa1
   30703:	c3                   	ret    
   30704:	90                   	nop
   30705:	90                   	nop
   30706:	90                   	nop
   30707:	90                   	nop
   30708:	90                   	nop
   30709:	90                   	nop
   3070a:	90                   	nop
   3070b:	90                   	nop
   3070c:	90                   	nop
   3070d:	90                   	nop
   3070e:	90                   	nop
   3070f:	90                   	nop

00030710 <hwint15>:
   30710:	e8 7c 00 00 00       	call   30791 <save>
   30715:	e4 a1                	in     $0xa1,%al
   30717:	0c 80                	or     $0x80,%al
   30719:	e6 a1                	out    %al,$0xa1
   3071b:	b0 20                	mov    $0x20,%al
   3071d:	e6 20                	out    %al,$0x20
   3071f:	90                   	nop
   30720:	e6 a0                	out    %al,$0xa0
   30722:	fb                   	sti    
   30723:	6a 0f                	push   $0xf
   30725:	ff 15 bc 2f 07 00    	call   *0x72fbc
   3072b:	59                   	pop    %ecx
   3072c:	fa                   	cli    
   3072d:	e4 a1                	in     $0xa1,%al
   3072f:	24 7f                	and    $0x7f,%al
   30731:	e6 a1                	out    %al,$0xa1
   30733:	c3                   	ret    

00030734 <divide_error>:
   30734:	6a ff                	push   $0xffffffff
   30736:	6a 00                	push   $0x0
   30738:	eb 4e                	jmp    30788 <exception>

0003073a <single_step_exception>:
   3073a:	6a ff                	push   $0xffffffff
   3073c:	6a 01                	push   $0x1
   3073e:	eb 48                	jmp    30788 <exception>

00030740 <nmi>:
   30740:	6a ff                	push   $0xffffffff
   30742:	6a 02                	push   $0x2
   30744:	eb 42                	jmp    30788 <exception>

00030746 <breakpoint_exception>:
   30746:	6a ff                	push   $0xffffffff
   30748:	6a 03                	push   $0x3
   3074a:	eb 3c                	jmp    30788 <exception>

0003074c <overflow>:
   3074c:	6a ff                	push   $0xffffffff
   3074e:	6a 04                	push   $0x4
   30750:	eb 36                	jmp    30788 <exception>

00030752 <bounds_check>:
   30752:	6a ff                	push   $0xffffffff
   30754:	6a 05                	push   $0x5
   30756:	eb 30                	jmp    30788 <exception>

00030758 <inval_opcode>:
   30758:	6a ff                	push   $0xffffffff
   3075a:	6a 06                	push   $0x6
   3075c:	eb 2a                	jmp    30788 <exception>

0003075e <copr_not_available>:
   3075e:	6a ff                	push   $0xffffffff
   30760:	6a 07                	push   $0x7
   30762:	eb 24                	jmp    30788 <exception>

00030764 <double_fault>:
   30764:	6a 08                	push   $0x8
   30766:	eb 20                	jmp    30788 <exception>

00030768 <copr_seg_overrun>:
   30768:	6a ff                	push   $0xffffffff
   3076a:	6a 09                	push   $0x9
   3076c:	eb 1a                	jmp    30788 <exception>

0003076e <inval_tss>:
   3076e:	6a 0a                	push   $0xa
   30770:	eb 16                	jmp    30788 <exception>

00030772 <segment_not_present>:
   30772:	6a 0b                	push   $0xb
   30774:	eb 12                	jmp    30788 <exception>

00030776 <stack_exception>:
   30776:	6a 0c                	push   $0xc
   30778:	eb 0e                	jmp    30788 <exception>

0003077a <general_protection>:
   3077a:	6a 0d                	push   $0xd
   3077c:	eb 0a                	jmp    30788 <exception>

0003077e <page_fault>:
   3077e:	6a 0e                	push   $0xe
   30780:	eb 06                	jmp    30788 <exception>

00030782 <copr_error>:
   30782:	6a ff                	push   $0xffffffff
   30784:	6a 10                	push   $0x10
   30786:	eb 00                	jmp    30788 <exception>

00030788 <exception>:
   30788:	e8 22 1b 00 00       	call   322af <exception_handler>
   3078d:	83 c4 08             	add    $0x8,%esp
   30790:	f4                   	hlt    

00030791 <save>:
   30791:	60                   	pusha  
   30792:	1e                   	push   %ds
   30793:	06                   	push   %es
   30794:	0f a0                	push   %fs
   30796:	0f a8                	push   %gs
   30798:	89 d6                	mov    %edx,%esi
   3079a:	66 8c d2             	mov    %ss,%dx
   3079d:	8e da                	mov    %edx,%ds
   3079f:	8e c2                	mov    %edx,%es
   307a1:	8e e2                	mov    %edx,%fs
   307a3:	89 f2                	mov    %esi,%edx
   307a5:	89 e6                	mov    %esp,%esi
   307a7:	ff 05 40 16 07 00    	incl   0x71640
   307ad:	83 3d 40 16 07 00 00 	cmpl   $0x0,0x71640
   307b4:	75 0d                	jne    307c3 <save.1>
   307b6:	bc 60 8f 03 00       	mov    $0x38f60,%esp
   307bb:	68 eb 07 03 00       	push   $0x307eb
   307c0:	ff 66 30             	jmp    *0x30(%esi)

000307c3 <save.1>:
   307c3:	68 ff 07 03 00       	push   $0x307ff
   307c8:	ff 66 30             	jmp    *0x30(%esi)

000307cb <sys_call>:
   307cb:	e8 c1 ff ff ff       	call   30791 <save>
   307d0:	fb                   	sti    
   307d1:	56                   	push   %esi
   307d2:	ff 35 c0 2f 07 00    	pushl  0x72fc0
   307d8:	52                   	push   %edx
   307d9:	51                   	push   %ecx
   307da:	53                   	push   %ebx
   307db:	ff 14 85 38 87 03 00 	call   *0x38738(,%eax,4)
   307e2:	83 c4 10             	add    $0x10,%esp
   307e5:	5e                   	pop    %esi
   307e6:	89 46 2c             	mov    %eax,0x2c(%esi)
   307e9:	fa                   	cli    
   307ea:	c3                   	ret    

000307eb <restart>:
   307eb:	8b 25 c0 2f 07 00    	mov    0x72fc0,%esp
   307f1:	0f 00 54 24 48       	lldt   0x48(%esp)
   307f6:	8d 44 24 48          	lea    0x48(%esp),%eax
   307fa:	a3 a4 26 07 00       	mov    %eax,0x726a4

000307ff <restart_reenter>:
   307ff:	ff 0d 40 16 07 00    	decl   0x71640
   30805:	0f a9                	pop    %gs
   30807:	0f a1                	pop    %fs
   30809:	07                   	pop    %es
   3080a:	1f                   	pop    %ds
   3080b:	61                   	popa   
   3080c:	83 c4 04             	add    $0x4,%esp
   3080f:	cf                   	iret   

00030810 <sendrec>:
   30810:	b8 01 00 00 00       	mov    $0x1,%eax
   30815:	8b 5c 24 04          	mov    0x4(%esp),%ebx
   30819:	8b 4c 24 08          	mov    0x8(%esp),%ecx
   3081d:	8b 54 24 0c          	mov    0xc(%esp),%edx
   30821:	cd 90                	int    $0x90
   30823:	c3                   	ret    

00030824 <printx>:
   30824:	b8 00 00 00 00       	mov    $0x0,%eax
   30829:	8b 54 24 04          	mov    0x4(%esp),%edx
   3082d:	cd 90                	int    $0x90
   3082f:	c3                   	ret    

00030830 <cstart>:
   30830:	55                   	push   %ebp
   30831:	89 e5                	mov    %esp,%ebp
   30833:	83 ec 18             	sub    $0x18,%esp
   30836:	83 ec 0c             	sub    $0xc,%esp
   30839:	68 00 51 03 00       	push   $0x35100
   3083e:	e8 ad 44 00 00       	call   34cf0 <disp_str>
   30843:	83 c4 10             	add    $0x10,%esp
   30846:	b8 10 27 07 00       	mov    $0x72710,%eax
   3084b:	0f b7 00             	movzwl (%eax),%eax
   3084e:	0f b7 c0             	movzwl %ax,%eax
   30851:	83 c0 01             	add    $0x1,%eax
   30854:	ba 12 27 07 00       	mov    $0x72712,%edx
   30859:	8b 12                	mov    (%edx),%edx
   3085b:	83 ec 04             	sub    $0x4,%esp
   3085e:	50                   	push   %eax
   3085f:	52                   	push   %edx
   30860:	68 60 16 07 00       	push   $0x71660
   30865:	e8 46 47 00 00       	call   34fb0 <memcpy>
   3086a:	83 c4 10             	add    $0x10,%esp
   3086d:	c7 45 f4 10 27 07 00 	movl   $0x72710,-0xc(%ebp)
   30874:	c7 45 f0 12 27 07 00 	movl   $0x72712,-0x10(%ebp)
   3087b:	8b 45 f4             	mov    -0xc(%ebp),%eax
   3087e:	66 c7 00 ff 03       	movw   $0x3ff,(%eax)
   30883:	ba 60 16 07 00       	mov    $0x71660,%edx
   30888:	8b 45 f0             	mov    -0x10(%ebp),%eax
   3088b:	89 10                	mov    %edx,(%eax)
   3088d:	c7 45 ec 20 96 03 00 	movl   $0x39620,-0x14(%ebp)
   30894:	c7 45 e8 22 96 03 00 	movl   $0x39622,-0x18(%ebp)
   3089b:	8b 45 ec             	mov    -0x14(%ebp),%eax
   3089e:	66 c7 00 ff 07       	movw   $0x7ff,(%eax)
   308a3:	ba 20 27 07 00       	mov    $0x72720,%edx
   308a8:	8b 45 e8             	mov    -0x18(%ebp),%eax
   308ab:	89 10                	mov    %edx,(%eax)
   308ad:	e8 24 15 00 00       	call   31dd6 <init_prot>
   308b2:	83 ec 0c             	sub    $0xc,%esp
   308b5:	68 2a 51 03 00       	push   $0x3512a
   308ba:	e8 31 44 00 00       	call   34cf0 <disp_str>
   308bf:	83 c4 10             	add    $0x10,%esp
   308c2:	90                   	nop
   308c3:	c9                   	leave  
   308c4:	c3                   	ret    

000308c5 <kernel_main>:
   308c5:	55                   	push   %ebp
   308c6:	89 e5                	mov    %esp,%ebp
   308c8:	83 ec 28             	sub    $0x28,%esp
   308cb:	83 ec 0c             	sub    $0xc,%esp
   308ce:	68 48 51 03 00       	push   $0x35148
   308d3:	e8 18 44 00 00       	call   34cf0 <disp_str>
   308d8:	83 c4 10             	add    $0x10,%esp
   308db:	c7 45 f0 e0 2f 07 00 	movl   $0x72fe0,-0x10(%ebp)
   308e2:	c7 45 ec 40 16 07 00 	movl   $0x71640,-0x14(%ebp)
   308e9:	66 c7 45 ea 28 00    	movw   $0x28,-0x16(%ebp)
   308ef:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
   308f6:	e9 fa 01 00 00       	jmp    30af5 <kernel_main+0x230>
   308fb:	83 7d e0 03          	cmpl   $0x3,-0x20(%ebp)
   308ff:	7f 2d                	jg     3092e <kernel_main+0x69>
   30901:	8b 55 e0             	mov    -0x20(%ebp),%edx
   30904:	89 d0                	mov    %edx,%eax
   30906:	c1 e0 02             	shl    $0x2,%eax
   30909:	01 d0                	add    %edx,%eax
   3090b:	c1 e0 03             	shl    $0x3,%eax
   3090e:	05 20 86 03 00       	add    $0x38620,%eax
   30913:	89 45 f4             	mov    %eax,-0xc(%ebp)
   30916:	c6 45 e9 01          	movb   $0x1,-0x17(%ebp)
   3091a:	c6 45 e8 01          	movb   $0x1,-0x18(%ebp)
   3091e:	c7 45 e4 02 12 00 00 	movl   $0x1202,-0x1c(%ebp)
   30925:	c7 45 dc 0f 00 00 00 	movl   $0xf,-0x24(%ebp)
   3092c:	eb 30                	jmp    3095e <kernel_main+0x99>
   3092e:	8b 55 e0             	mov    -0x20(%ebp),%edx
   30931:	89 d0                	mov    %edx,%eax
   30933:	c1 e0 02             	shl    $0x2,%eax
   30936:	01 d0                	add    %edx,%eax
   30938:	c1 e0 03             	shl    $0x3,%eax
   3093b:	2d a0 00 00 00       	sub    $0xa0,%eax
   30940:	05 c0 86 03 00       	add    $0x386c0,%eax
   30945:	89 45 f4             	mov    %eax,-0xc(%ebp)
   30948:	c6 45 e9 03          	movb   $0x3,-0x17(%ebp)
   3094c:	c6 45 e8 03          	movb   $0x3,-0x18(%ebp)
   30950:	c7 45 e4 02 02 00 00 	movl   $0x202,-0x1c(%ebp)
   30957:	c7 45 dc 05 00 00 00 	movl   $0x5,-0x24(%ebp)
   3095e:	8b 45 f4             	mov    -0xc(%ebp),%eax
   30961:	8d 50 08             	lea    0x8(%eax),%edx
   30964:	8b 45 f0             	mov    -0x10(%ebp),%eax
   30967:	83 c0 68             	add    $0x68,%eax
   3096a:	83 ec 08             	sub    $0x8,%esp
   3096d:	52                   	push   %edx
   3096e:	50                   	push   %eax
   3096f:	e8 86 46 00 00       	call   34ffa <strcpy>
   30974:	83 c4 10             	add    $0x10,%esp
   30977:	8b 55 e0             	mov    -0x20(%ebp),%edx
   3097a:	8b 45 f0             	mov    -0x10(%ebp),%eax
   3097d:	89 50 64             	mov    %edx,0x64(%eax)
   30980:	8b 45 f0             	mov    -0x10(%ebp),%eax
   30983:	0f b7 55 ea          	movzwl -0x16(%ebp),%edx
   30987:	66 89 50 48          	mov    %dx,0x48(%eax)
   3098b:	8b 45 f0             	mov    -0x10(%ebp),%eax
   3098e:	83 c0 4a             	add    $0x4a,%eax
   30991:	83 ec 04             	sub    $0x4,%esp
   30994:	6a 08                	push   $0x8
   30996:	68 68 16 07 00       	push   $0x71668
   3099b:	50                   	push   %eax
   3099c:	e8 0f 46 00 00       	call   34fb0 <memcpy>
   309a1:	83 c4 10             	add    $0x10,%esp
   309a4:	0f b6 45 e9          	movzbl -0x17(%ebp),%eax
   309a8:	c1 e0 05             	shl    $0x5,%eax
   309ab:	83 c8 98             	or     $0xffffff98,%eax
   309ae:	89 c2                	mov    %eax,%edx
   309b0:	8b 45 f0             	mov    -0x10(%ebp),%eax
   309b3:	88 50 4f             	mov    %dl,0x4f(%eax)
   309b6:	8b 45 f0             	mov    -0x10(%ebp),%eax
   309b9:	83 c0 52             	add    $0x52,%eax
   309bc:	83 ec 04             	sub    $0x4,%esp
   309bf:	6a 08                	push   $0x8
   309c1:	68 70 16 07 00       	push   $0x71670
   309c6:	50                   	push   %eax
   309c7:	e8 e4 45 00 00       	call   34fb0 <memcpy>
   309cc:	83 c4 10             	add    $0x10,%esp
   309cf:	0f b6 45 e9          	movzbl -0x17(%ebp),%eax
   309d3:	c1 e0 05             	shl    $0x5,%eax
   309d6:	83 c8 92             	or     $0xffffff92,%eax
   309d9:	89 c2                	mov    %eax,%edx
   309db:	8b 45 f0             	mov    -0x10(%ebp),%eax
   309de:	88 50 57             	mov    %dl,0x57(%eax)
   309e1:	0f b6 45 e8          	movzbl -0x18(%ebp),%eax
   309e5:	83 c8 04             	or     $0x4,%eax
   309e8:	0f b6 d0             	movzbl %al,%edx
   309eb:	8b 45 f0             	mov    -0x10(%ebp),%eax
   309ee:	89 50 38             	mov    %edx,0x38(%eax)
   309f1:	0f b6 45 e8          	movzbl -0x18(%ebp),%eax
   309f5:	83 c8 0c             	or     $0xc,%eax
   309f8:	0f b6 d0             	movzbl %al,%edx
   309fb:	8b 45 f0             	mov    -0x10(%ebp),%eax
   309fe:	89 50 0c             	mov    %edx,0xc(%eax)
   30a01:	0f b6 45 e8          	movzbl -0x18(%ebp),%eax
   30a05:	83 c8 0c             	or     $0xc,%eax
   30a08:	0f b6 d0             	movzbl %al,%edx
   30a0b:	8b 45 f0             	mov    -0x10(%ebp),%eax
   30a0e:	89 50 08             	mov    %edx,0x8(%eax)
   30a11:	0f b6 45 e8          	movzbl -0x18(%ebp),%eax
   30a15:	83 c8 0c             	or     $0xc,%eax
   30a18:	0f b6 d0             	movzbl %al,%edx
   30a1b:	8b 45 f0             	mov    -0x10(%ebp),%eax
   30a1e:	89 50 04             	mov    %edx,0x4(%eax)
   30a21:	0f b6 45 e8          	movzbl -0x18(%ebp),%eax
   30a25:	83 c8 0c             	or     $0xc,%eax
   30a28:	0f b6 d0             	movzbl %al,%edx
   30a2b:	8b 45 f0             	mov    -0x10(%ebp),%eax
   30a2e:	89 50 44             	mov    %edx,0x44(%eax)
   30a31:	0f b6 45 e8          	movzbl -0x18(%ebp),%eax
   30a35:	83 c8 18             	or     $0x18,%eax
   30a38:	0f b6 d0             	movzbl %al,%edx
   30a3b:	8b 45 f0             	mov    -0x10(%ebp),%eax
   30a3e:	89 10                	mov    %edx,(%eax)
   30a40:	8b 45 f4             	mov    -0xc(%ebp),%eax
   30a43:	8b 00                	mov    (%eax),%eax
   30a45:	89 c2                	mov    %eax,%edx
   30a47:	8b 45 f0             	mov    -0x10(%ebp),%eax
   30a4a:	89 50 34             	mov    %edx,0x34(%eax)
   30a4d:	8b 55 ec             	mov    -0x14(%ebp),%edx
   30a50:	8b 45 f0             	mov    -0x10(%ebp),%eax
   30a53:	89 50 40             	mov    %edx,0x40(%eax)
   30a56:	8b 55 e4             	mov    -0x1c(%ebp),%edx
   30a59:	8b 45 f0             	mov    -0x10(%ebp),%eax
   30a5c:	89 50 3c             	mov    %edx,0x3c(%eax)
   30a5f:	8b 45 f0             	mov    -0x10(%ebp),%eax
   30a62:	c7 80 94 00 00 00 00 	movl   $0x0,0x94(%eax)
   30a69:	00 00 00 
   30a6c:	8b 45 f0             	mov    -0x10(%ebp),%eax
   30a6f:	c7 40 78 00 00 00 00 	movl   $0x0,0x78(%eax)
   30a76:	8b 45 f0             	mov    -0x10(%ebp),%eax
   30a79:	c7 40 7c 00 00 00 00 	movl   $0x0,0x7c(%eax)
   30a80:	8b 45 f0             	mov    -0x10(%ebp),%eax
   30a83:	c7 80 80 00 00 00 1b 	movl   $0x1b,0x80(%eax)
   30a8a:	00 00 00 
   30a8d:	8b 45 f0             	mov    -0x10(%ebp),%eax
   30a90:	c7 80 84 00 00 00 1b 	movl   $0x1b,0x84(%eax)
   30a97:	00 00 00 
   30a9a:	8b 45 f0             	mov    -0x10(%ebp),%eax
   30a9d:	c7 80 88 00 00 00 00 	movl   $0x0,0x88(%eax)
   30aa4:	00 00 00 
   30aa7:	8b 45 f0             	mov    -0x10(%ebp),%eax
   30aaa:	c7 80 8c 00 00 00 00 	movl   $0x0,0x8c(%eax)
   30ab1:	00 00 00 
   30ab4:	8b 45 f0             	mov    -0x10(%ebp),%eax
   30ab7:	c7 80 90 00 00 00 00 	movl   $0x0,0x90(%eax)
   30abe:	00 00 00 
   30ac1:	8b 45 f0             	mov    -0x10(%ebp),%eax
   30ac4:	8b 55 dc             	mov    -0x24(%ebp),%edx
   30ac7:	89 50 60             	mov    %edx,0x60(%eax)
   30aca:	8b 45 f0             	mov    -0x10(%ebp),%eax
   30acd:	8b 50 60             	mov    0x60(%eax),%edx
   30ad0:	8b 45 f0             	mov    -0x10(%ebp),%eax
   30ad3:	89 50 5c             	mov    %edx,0x5c(%eax)
   30ad6:	8b 45 f4             	mov    -0xc(%ebp),%eax
   30ad9:	8b 40 04             	mov    0x4(%eax),%eax
   30adc:	f7 d8                	neg    %eax
   30ade:	01 45 ec             	add    %eax,-0x14(%ebp)
   30ae1:	81 45 f0 98 00 00 00 	addl   $0x98,-0x10(%ebp)
   30ae8:	83 45 f4 28          	addl   $0x28,-0xc(%ebp)
   30aec:	66 83 45 ea 08       	addw   $0x8,-0x16(%ebp)
   30af1:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
   30af5:	83 7d e0 06          	cmpl   $0x6,-0x20(%ebp)
   30af9:	0f 8e fc fd ff ff    	jle    308fb <kernel_main+0x36>
   30aff:	c7 05 d4 32 07 00 00 	movl   $0x0,0x732d4
   30b06:	00 00 00 
   30b09:	c7 05 6c 33 07 00 01 	movl   $0x1,0x7336c
   30b10:	00 00 00 
   30b13:	c7 05 04 34 07 00 01 	movl   $0x1,0x73404
   30b1a:	00 00 00 
   30b1d:	c7 05 40 16 07 00 00 	movl   $0x0,0x71640
   30b24:	00 00 00 
   30b27:	c7 05 20 2f 07 00 00 	movl   $0x0,0x72f20
   30b2e:	00 00 00 
   30b31:	c7 05 c0 2f 07 00 e0 	movl   $0x72fe0,0x72fc0
   30b38:	2f 07 00 
   30b3b:	e8 4b 01 00 00       	call   30c8b <init_clock>
   30b40:	e8 fe 01 00 00       	call   30d43 <init_keyboard>
   30b45:	e8 a1 fc ff ff       	call   307eb <restart>
   30b4a:	eb fe                	jmp    30b4a <kernel_main+0x285>

00030b4c <get_ticks>:
   30b4c:	55                   	push   %ebp
   30b4d:	89 e5                	mov    %esp,%ebp
   30b4f:	83 ec 38             	sub    $0x38,%esp
   30b52:	83 ec 0c             	sub    $0xc,%esp
   30b55:	8d 45 c8             	lea    -0x38(%ebp),%eax
   30b58:	50                   	push   %eax
   30b59:	e8 9e 1b 00 00       	call   326fc <reset_msg>
   30b5e:	83 c4 10             	add    $0x10,%esp
   30b61:	c7 45 cc 02 00 00 00 	movl   $0x2,-0x34(%ebp)
   30b68:	83 ec 04             	sub    $0x4,%esp
   30b6b:	8d 45 c8             	lea    -0x38(%ebp),%eax
   30b6e:	50                   	push   %eax
   30b6f:	6a 01                	push   $0x1
   30b71:	6a 03                	push   $0x3
   30b73:	e8 1c 1a 00 00       	call   32594 <send_recv>
   30b78:	83 c4 10             	add    $0x10,%esp
   30b7b:	8b 45 d0             	mov    -0x30(%ebp),%eax
   30b7e:	c9                   	leave  
   30b7f:	c3                   	ret    

00030b80 <TestA>:
   30b80:	55                   	push   %ebp
   30b81:	89 e5                	mov    %esp,%ebp
   30b83:	eb fe                	jmp    30b83 <TestA+0x3>

00030b85 <TestB>:
   30b85:	55                   	push   %ebp
   30b86:	89 e5                	mov    %esp,%ebp
   30b88:	83 ec 08             	sub    $0x8,%esp
   30b8b:	83 ec 0c             	sub    $0xc,%esp
   30b8e:	68 68 51 03 00       	push   $0x35168
   30b93:	e8 f5 3d 00 00       	call   3498d <printf>
   30b98:	83 c4 10             	add    $0x10,%esp
   30b9b:	83 ec 0c             	sub    $0xc,%esp
   30b9e:	68 c8 00 00 00       	push   $0xc8
   30ba3:	e8 b9 00 00 00       	call   30c61 <milli_delay>
   30ba8:	83 c4 10             	add    $0x10,%esp
   30bab:	eb de                	jmp    30b8b <TestB+0x6>

00030bad <TestC>:
   30bad:	55                   	push   %ebp
   30bae:	89 e5                	mov    %esp,%ebp
   30bb0:	83 ec 08             	sub    $0x8,%esp
   30bb3:	83 ec 0c             	sub    $0xc,%esp
   30bb6:	68 6a 51 03 00       	push   $0x3516a
   30bbb:	e8 cd 3d 00 00       	call   3498d <printf>
   30bc0:	83 c4 10             	add    $0x10,%esp
   30bc3:	83 ec 0c             	sub    $0xc,%esp
   30bc6:	68 c8 00 00 00       	push   $0xc8
   30bcb:	e8 91 00 00 00       	call   30c61 <milli_delay>
   30bd0:	83 c4 10             	add    $0x10,%esp
   30bd3:	eb de                	jmp    30bb3 <TestC+0x6>

00030bd5 <panic>:
   30bd5:	55                   	push   %ebp
   30bd6:	89 e5                	mov    %esp,%ebp
   30bd8:	81 ec 18 01 00 00    	sub    $0x118,%esp
   30bde:	8d 45 0c             	lea    0xc(%ebp),%eax
   30be1:	89 45 f4             	mov    %eax,-0xc(%ebp)
   30be4:	8b 45 08             	mov    0x8(%ebp),%eax
   30be7:	83 ec 04             	sub    $0x4,%esp
   30bea:	ff 75 f4             	pushl  -0xc(%ebp)
   30bed:	50                   	push   %eax
   30bee:	8d 85 f0 fe ff ff    	lea    -0x110(%ebp),%eax
   30bf4:	50                   	push   %eax
   30bf5:	e8 49 3e 00 00       	call   34a43 <vsprintf>
   30bfa:	83 c4 10             	add    $0x10,%esp
   30bfd:	89 45 f0             	mov    %eax,-0x10(%ebp)
   30c00:	83 ec 04             	sub    $0x4,%esp
   30c03:	8d 85 f0 fe ff ff    	lea    -0x110(%ebp),%eax
   30c09:	50                   	push   %eax
   30c0a:	6a 02                	push   $0x2
   30c0c:	68 6c 51 03 00       	push   $0x3516c
   30c11:	e8 77 3d 00 00       	call   3498d <printf>
   30c16:	83 c4 10             	add    $0x10,%esp
   30c19:	0f 0b                	ud2    
   30c1b:	90                   	nop
   30c1c:	c9                   	leave  
   30c1d:	c3                   	ret    

00030c1e <clock_handler>:
   30c1e:	55                   	push   %ebp
   30c1f:	89 e5                	mov    %esp,%ebp
   30c21:	83 ec 08             	sub    $0x8,%esp
   30c24:	a1 20 2f 07 00       	mov    0x72f20,%eax
   30c29:	83 c0 01             	add    $0x1,%eax
   30c2c:	a3 20 2f 07 00       	mov    %eax,0x72f20
   30c31:	a1 c0 2f 07 00       	mov    0x72fc0,%eax
   30c36:	8b 50 5c             	mov    0x5c(%eax),%edx
   30c39:	83 ea 01             	sub    $0x1,%edx
   30c3c:	89 50 5c             	mov    %edx,0x5c(%eax)
   30c3f:	a1 40 16 07 00       	mov    0x71640,%eax
   30c44:	85 c0                	test   %eax,%eax
   30c46:	75 13                	jne    30c5b <clock_handler+0x3d>
   30c48:	a1 c0 2f 07 00       	mov    0x72fc0,%eax
   30c4d:	8b 40 5c             	mov    0x5c(%eax),%eax
   30c50:	85 c0                	test   %eax,%eax
   30c52:	7f 0a                	jg     30c5e <clock_handler+0x40>
   30c54:	e8 91 17 00 00       	call   323ea <schedule>
   30c59:	eb 04                	jmp    30c5f <clock_handler+0x41>
   30c5b:	90                   	nop
   30c5c:	eb 01                	jmp    30c5f <clock_handler+0x41>
   30c5e:	90                   	nop
   30c5f:	c9                   	leave  
   30c60:	c3                   	ret    

00030c61 <milli_delay>:
   30c61:	55                   	push   %ebp
   30c62:	89 e5                	mov    %esp,%ebp
   30c64:	83 ec 18             	sub    $0x18,%esp
   30c67:	e8 e0 fe ff ff       	call   30b4c <get_ticks>
   30c6c:	89 45 f4             	mov    %eax,-0xc(%ebp)
   30c6f:	90                   	nop
   30c70:	e8 d7 fe ff ff       	call   30b4c <get_ticks>
   30c75:	2b 45 f4             	sub    -0xc(%ebp),%eax
   30c78:	89 c2                	mov    %eax,%edx
   30c7a:	89 d0                	mov    %edx,%eax
   30c7c:	c1 e0 02             	shl    $0x2,%eax
   30c7f:	01 d0                	add    %edx,%eax
   30c81:	01 c0                	add    %eax,%eax
   30c83:	39 45 08             	cmp    %eax,0x8(%ebp)
   30c86:	7f e8                	jg     30c70 <milli_delay+0xf>
   30c88:	90                   	nop
   30c89:	c9                   	leave  
   30c8a:	c3                   	ret    

00030c8b <init_clock>:
   30c8b:	55                   	push   %ebp
   30c8c:	89 e5                	mov    %esp,%ebp
   30c8e:	83 ec 08             	sub    $0x8,%esp
   30c91:	83 ec 08             	sub    $0x8,%esp
   30c94:	6a 34                	push   $0x34
   30c96:	6a 43                	push   $0x43
   30c98:	e8 d0 40 00 00       	call   34d6d <out_byte>
   30c9d:	83 c4 10             	add    $0x10,%esp
   30ca0:	83 ec 08             	sub    $0x8,%esp
   30ca3:	68 9b 00 00 00       	push   $0x9b
   30ca8:	6a 40                	push   $0x40
   30caa:	e8 be 40 00 00       	call   34d6d <out_byte>
   30caf:	83 c4 10             	add    $0x10,%esp
   30cb2:	83 ec 08             	sub    $0x8,%esp
   30cb5:	6a 2e                	push   $0x2e
   30cb7:	6a 40                	push   $0x40
   30cb9:	e8 af 40 00 00       	call   34d6d <out_byte>
   30cbe:	83 c4 10             	add    $0x10,%esp
   30cc1:	83 ec 08             	sub    $0x8,%esp
   30cc4:	68 1e 0c 03 00       	push   $0x30c1e
   30cc9:	6a 00                	push   $0x0
   30ccb:	e8 e2 10 00 00       	call   31db2 <put_irq_handler>
   30cd0:	83 c4 10             	add    $0x10,%esp
   30cd3:	83 ec 0c             	sub    $0xc,%esp
   30cd6:	6a 00                	push   $0x0
   30cd8:	e8 01 41 00 00       	call   34dde <enable_irq>
   30cdd:	83 c4 10             	add    $0x10,%esp
   30ce0:	90                   	nop
   30ce1:	c9                   	leave  
   30ce2:	c3                   	ret    

00030ce3 <keyboard_handler>:
   30ce3:	55                   	push   %ebp
   30ce4:	89 e5                	mov    %esp,%ebp
   30ce6:	83 ec 18             	sub    $0x18,%esp
   30ce9:	83 ec 0c             	sub    $0xc,%esp
   30cec:	6a 60                	push   $0x60
   30cee:	e8 86 40 00 00       	call   34d79 <in_byte>
   30cf3:	83 c4 10             	add    $0x10,%esp
   30cf6:	88 45 f7             	mov    %al,-0x9(%ebp)
   30cf9:	a1 68 8f 03 00       	mov    0x38f68,%eax
   30cfe:	83 f8 1f             	cmp    $0x1f,%eax
   30d01:	7f 3d                	jg     30d40 <keyboard_handler+0x5d>
   30d03:	a1 60 8f 03 00       	mov    0x38f60,%eax
   30d08:	0f b6 55 f7          	movzbl -0x9(%ebp),%edx
   30d0c:	88 10                	mov    %dl,(%eax)
   30d0e:	a1 60 8f 03 00       	mov    0x38f60,%eax
   30d13:	83 c0 01             	add    $0x1,%eax
   30d16:	a3 60 8f 03 00       	mov    %eax,0x38f60
   30d1b:	a1 60 8f 03 00       	mov    0x38f60,%eax
   30d20:	ba 8c 8f 03 00       	mov    $0x38f8c,%edx
   30d25:	39 d0                	cmp    %edx,%eax
   30d27:	75 0a                	jne    30d33 <keyboard_handler+0x50>
   30d29:	c7 05 60 8f 03 00 6c 	movl   $0x38f6c,0x38f60
   30d30:	8f 03 00 
   30d33:	a1 68 8f 03 00       	mov    0x38f68,%eax
   30d38:	83 c0 01             	add    $0x1,%eax
   30d3b:	a3 68 8f 03 00       	mov    %eax,0x38f68
   30d40:	90                   	nop
   30d41:	c9                   	leave  
   30d42:	c3                   	ret    

00030d43 <init_keyboard>:
   30d43:	55                   	push   %ebp
   30d44:	89 e5                	mov    %esp,%ebp
   30d46:	83 ec 08             	sub    $0x8,%esp
   30d49:	c7 05 68 8f 03 00 00 	movl   $0x0,0x38f68
   30d50:	00 00 00 
   30d53:	c7 05 64 8f 03 00 6c 	movl   $0x38f6c,0x38f64
   30d5a:	8f 03 00 
   30d5d:	a1 64 8f 03 00       	mov    0x38f64,%eax
   30d62:	a3 60 8f 03 00       	mov    %eax,0x38f60
   30d67:	c7 05 94 8f 03 00 00 	movl   $0x0,0x38f94
   30d6e:	00 00 00 
   30d71:	a1 94 8f 03 00       	mov    0x38f94,%eax
   30d76:	a3 90 8f 03 00       	mov    %eax,0x38f90
   30d7b:	c7 05 9c 8f 03 00 00 	movl   $0x0,0x38f9c
   30d82:	00 00 00 
   30d85:	a1 9c 8f 03 00       	mov    0x38f9c,%eax
   30d8a:	a3 98 8f 03 00       	mov    %eax,0x38f98
   30d8f:	c7 05 a4 8f 03 00 00 	movl   $0x0,0x38fa4
   30d96:	00 00 00 
   30d99:	a1 a4 8f 03 00       	mov    0x38fa4,%eax
   30d9e:	a3 a0 8f 03 00       	mov    %eax,0x38fa0
   30da3:	c7 05 a8 8f 03 00 00 	movl   $0x0,0x38fa8
   30daa:	00 00 00 
   30dad:	c7 05 ac 8f 03 00 01 	movl   $0x1,0x38fac
   30db4:	00 00 00 
   30db7:	c7 05 b0 8f 03 00 00 	movl   $0x0,0x38fb0
   30dbe:	00 00 00 
   30dc1:	e8 48 05 00 00       	call   3130e <set_leds>
   30dc6:	83 ec 08             	sub    $0x8,%esp
   30dc9:	68 e3 0c 03 00       	push   $0x30ce3
   30dce:	6a 01                	push   $0x1
   30dd0:	e8 dd 0f 00 00       	call   31db2 <put_irq_handler>
   30dd5:	83 c4 10             	add    $0x10,%esp
   30dd8:	83 ec 0c             	sub    $0xc,%esp
   30ddb:	6a 01                	push   $0x1
   30ddd:	e8 fc 3f 00 00       	call   34dde <enable_irq>
   30de2:	83 c4 10             	add    $0x10,%esp
   30de5:	90                   	nop
   30de6:	c9                   	leave  
   30de7:	c3                   	ret    

00030de8 <keyboard_read>:
   30de8:	55                   	push   %ebp
   30de9:	89 e5                	mov    %esp,%ebp
   30deb:	83 ec 38             	sub    $0x38,%esp
   30dee:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
   30df5:	a1 68 8f 03 00       	mov    0x38f68,%eax
   30dfa:	85 c0                	test   %eax,%eax
   30dfc:	0f 8e 69 04 00 00    	jle    3126b <keyboard_read+0x483>
   30e02:	c7 05 8c 8f 03 00 00 	movl   $0x0,0x38f8c
   30e09:	00 00 00 
   30e0c:	e8 5d 04 00 00       	call   3126e <get_byte_from_kbuf>
   30e11:	88 45 f7             	mov    %al,-0x9(%ebp)
   30e14:	80 7d f7 e1          	cmpb   $0xe1,-0x9(%ebp)
   30e18:	75 60                	jne    30e7a <keyboard_read+0x92>
   30e1a:	c6 45 d2 e1          	movb   $0xe1,-0x2e(%ebp)
   30e1e:	c6 45 d3 1d          	movb   $0x1d,-0x2d(%ebp)
   30e22:	c6 45 d4 45          	movb   $0x45,-0x2c(%ebp)
   30e26:	c6 45 d5 e1          	movb   $0xe1,-0x2b(%ebp)
   30e2a:	c6 45 d6 9d          	movb   $0x9d,-0x2a(%ebp)
   30e2e:	c6 45 d7 c5          	movb   $0xc5,-0x29(%ebp)
   30e32:	c7 45 e8 01 00 00 00 	movl   $0x1,-0x18(%ebp)
   30e39:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%ebp)
   30e40:	eb 23                	jmp    30e65 <keyboard_read+0x7d>
   30e42:	e8 27 04 00 00       	call   3126e <get_byte_from_kbuf>
   30e47:	89 c1                	mov    %eax,%ecx
   30e49:	8d 55 d2             	lea    -0x2e(%ebp),%edx
   30e4c:	8b 45 ec             	mov    -0x14(%ebp),%eax
   30e4f:	01 d0                	add    %edx,%eax
   30e51:	0f b6 00             	movzbl (%eax),%eax
   30e54:	38 c1                	cmp    %al,%cl
   30e56:	74 09                	je     30e61 <keyboard_read+0x79>
   30e58:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
   30e5f:	eb 0a                	jmp    30e6b <keyboard_read+0x83>
   30e61:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
   30e65:	83 7d ec 05          	cmpl   $0x5,-0x14(%ebp)
   30e69:	7e d7                	jle    30e42 <keyboard_read+0x5a>
   30e6b:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
   30e6f:	74 73                	je     30ee4 <keyboard_read+0xfc>
   30e71:	c7 45 f0 1e 01 00 00 	movl   $0x11e,-0x10(%ebp)
   30e78:	eb 6a                	jmp    30ee4 <keyboard_read+0xfc>
   30e7a:	80 7d f7 e0          	cmpb   $0xe0,-0x9(%ebp)
   30e7e:	75 64                	jne    30ee4 <keyboard_read+0xfc>
   30e80:	e8 e9 03 00 00       	call   3126e <get_byte_from_kbuf>
   30e85:	88 45 f7             	mov    %al,-0x9(%ebp)
   30e88:	80 7d f7 2a          	cmpb   $0x2a,-0x9(%ebp)
   30e8c:	75 20                	jne    30eae <keyboard_read+0xc6>
   30e8e:	e8 db 03 00 00       	call   3126e <get_byte_from_kbuf>
   30e93:	3c e0                	cmp    $0xe0,%al
   30e95:	75 17                	jne    30eae <keyboard_read+0xc6>
   30e97:	e8 d2 03 00 00       	call   3126e <get_byte_from_kbuf>
   30e9c:	3c 37                	cmp    $0x37,%al
   30e9e:	75 0e                	jne    30eae <keyboard_read+0xc6>
   30ea0:	c7 45 f0 1d 01 00 00 	movl   $0x11d,-0x10(%ebp)
   30ea7:	c7 45 dc 01 00 00 00 	movl   $0x1,-0x24(%ebp)
   30eae:	80 7d f7 b7          	cmpb   $0xb7,-0x9(%ebp)
   30eb2:	75 20                	jne    30ed4 <keyboard_read+0xec>
   30eb4:	e8 b5 03 00 00       	call   3126e <get_byte_from_kbuf>
   30eb9:	3c e0                	cmp    $0xe0,%al
   30ebb:	75 17                	jne    30ed4 <keyboard_read+0xec>
   30ebd:	e8 ac 03 00 00       	call   3126e <get_byte_from_kbuf>
   30ec2:	3c aa                	cmp    $0xaa,%al
   30ec4:	75 0e                	jne    30ed4 <keyboard_read+0xec>
   30ec6:	c7 45 f0 1d 01 00 00 	movl   $0x11d,-0x10(%ebp)
   30ecd:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
   30ed4:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
   30ed8:	75 0a                	jne    30ee4 <keyboard_read+0xfc>
   30eda:	c7 05 8c 8f 03 00 01 	movl   $0x1,0x38f8c
   30ee1:	00 00 00 
   30ee4:	81 7d f0 1e 01 00 00 	cmpl   $0x11e,-0x10(%ebp)
   30eeb:	0f 84 7a 03 00 00    	je     3126b <keyboard_read+0x483>
   30ef1:	81 7d f0 1d 01 00 00 	cmpl   $0x11d,-0x10(%ebp)
   30ef8:	0f 84 6d 03 00 00    	je     3126b <keyboard_read+0x483>
   30efe:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
   30f02:	f7 d0                	not    %eax
   30f04:	c0 e8 07             	shr    $0x7,%al
   30f07:	0f b6 c0             	movzbl %al,%eax
   30f0a:	89 45 dc             	mov    %eax,-0x24(%ebp)
   30f0d:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
   30f11:	83 e0 7f             	and    $0x7f,%eax
   30f14:	89 c2                	mov    %eax,%edx
   30f16:	89 d0                	mov    %edx,%eax
   30f18:	01 c0                	add    %eax,%eax
   30f1a:	01 d0                	add    %edx,%eax
   30f1c:	c1 e0 02             	shl    $0x2,%eax
   30f1f:	05 20 80 03 00       	add    $0x38020,%eax
   30f24:	89 45 d8             	mov    %eax,-0x28(%ebp)
   30f27:	c7 05 b4 8f 03 00 00 	movl   $0x0,0x38fb4
   30f2e:	00 00 00 
   30f31:	a1 90 8f 03 00       	mov    0x38f90,%eax
   30f36:	85 c0                	test   %eax,%eax
   30f38:	75 09                	jne    30f43 <keyboard_read+0x15b>
   30f3a:	a1 94 8f 03 00       	mov    0x38f94,%eax
   30f3f:	85 c0                	test   %eax,%eax
   30f41:	74 07                	je     30f4a <keyboard_read+0x162>
   30f43:	b8 01 00 00 00       	mov    $0x1,%eax
   30f48:	eb 05                	jmp    30f4f <keyboard_read+0x167>
   30f4a:	b8 00 00 00 00       	mov    $0x0,%eax
   30f4f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   30f52:	a1 a8 8f 03 00       	mov    0x38fa8,%eax
   30f57:	85 c0                	test   %eax,%eax
   30f59:	74 21                	je     30f7c <keyboard_read+0x194>
   30f5b:	8b 45 d8             	mov    -0x28(%ebp),%eax
   30f5e:	8b 00                	mov    (%eax),%eax
   30f60:	83 f8 60             	cmp    $0x60,%eax
   30f63:	76 17                	jbe    30f7c <keyboard_read+0x194>
   30f65:	8b 45 d8             	mov    -0x28(%ebp),%eax
   30f68:	8b 00                	mov    (%eax),%eax
   30f6a:	83 f8 7a             	cmp    $0x7a,%eax
   30f6d:	77 0d                	ja     30f7c <keyboard_read+0x194>
   30f6f:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
   30f73:	0f 94 c0             	sete   %al
   30f76:	0f b6 c0             	movzbl %al,%eax
   30f79:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   30f7c:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
   30f80:	74 0a                	je     30f8c <keyboard_read+0x1a4>
   30f82:	c7 05 b4 8f 03 00 01 	movl   $0x1,0x38fb4
   30f89:	00 00 00 
   30f8c:	a1 8c 8f 03 00       	mov    0x38f8c,%eax
   30f91:	85 c0                	test   %eax,%eax
   30f93:	74 0a                	je     30f9f <keyboard_read+0x1b7>
   30f95:	c7 05 b4 8f 03 00 02 	movl   $0x2,0x38fb4
   30f9c:	00 00 00 
   30f9f:	a1 b4 8f 03 00       	mov    0x38fb4,%eax
   30fa4:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   30fab:	8b 45 d8             	mov    -0x28(%ebp),%eax
   30fae:	01 d0                	add    %edx,%eax
   30fb0:	8b 00                	mov    (%eax),%eax
   30fb2:	89 45 f0             	mov    %eax,-0x10(%ebp)
   30fb5:	8b 45 f0             	mov    -0x10(%ebp),%eax
   30fb8:	2d 08 01 00 00       	sub    $0x108,%eax
   30fbd:	83 f8 08             	cmp    $0x8,%eax
   30fc0:	0f 87 ab 00 00 00    	ja     31071 <keyboard_read+0x289>
   30fc6:	8b 04 85 7c 51 03 00 	mov    0x3517c(,%eax,4),%eax
   30fcd:	ff e0                	jmp    *%eax
   30fcf:	8b 45 dc             	mov    -0x24(%ebp),%eax
   30fd2:	a3 90 8f 03 00       	mov    %eax,0x38f90
   30fd7:	e9 9f 00 00 00       	jmp    3107b <keyboard_read+0x293>
   30fdc:	8b 45 dc             	mov    -0x24(%ebp),%eax
   30fdf:	a3 94 8f 03 00       	mov    %eax,0x38f94
   30fe4:	e9 92 00 00 00       	jmp    3107b <keyboard_read+0x293>
   30fe9:	8b 45 dc             	mov    -0x24(%ebp),%eax
   30fec:	a3 a0 8f 03 00       	mov    %eax,0x38fa0
   30ff1:	e9 85 00 00 00       	jmp    3107b <keyboard_read+0x293>
   30ff6:	8b 45 dc             	mov    -0x24(%ebp),%eax
   30ff9:	a3 a4 8f 03 00       	mov    %eax,0x38fa4
   30ffe:	eb 7b                	jmp    3107b <keyboard_read+0x293>
   31000:	8b 45 dc             	mov    -0x24(%ebp),%eax
   31003:	a3 98 8f 03 00       	mov    %eax,0x38f98
   31008:	eb 71                	jmp    3107b <keyboard_read+0x293>
   3100a:	8b 45 dc             	mov    -0x24(%ebp),%eax
   3100d:	a3 98 8f 03 00       	mov    %eax,0x38f98
   31012:	eb 67                	jmp    3107b <keyboard_read+0x293>
   31014:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
   31018:	74 5a                	je     31074 <keyboard_read+0x28c>
   3101a:	a1 a8 8f 03 00       	mov    0x38fa8,%eax
   3101f:	85 c0                	test   %eax,%eax
   31021:	0f 94 c0             	sete   %al
   31024:	0f b6 c0             	movzbl %al,%eax
   31027:	a3 a8 8f 03 00       	mov    %eax,0x38fa8
   3102c:	e8 dd 02 00 00       	call   3130e <set_leds>
   31031:	eb 41                	jmp    31074 <keyboard_read+0x28c>
   31033:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
   31037:	74 3e                	je     31077 <keyboard_read+0x28f>
   31039:	a1 ac 8f 03 00       	mov    0x38fac,%eax
   3103e:	85 c0                	test   %eax,%eax
   31040:	0f 94 c0             	sete   %al
   31043:	0f b6 c0             	movzbl %al,%eax
   31046:	a3 ac 8f 03 00       	mov    %eax,0x38fac
   3104b:	e8 be 02 00 00       	call   3130e <set_leds>
   31050:	eb 25                	jmp    31077 <keyboard_read+0x28f>
   31052:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
   31056:	74 22                	je     3107a <keyboard_read+0x292>
   31058:	a1 b0 8f 03 00       	mov    0x38fb0,%eax
   3105d:	85 c0                	test   %eax,%eax
   3105f:	0f 94 c0             	sete   %al
   31062:	0f b6 c0             	movzbl %al,%eax
   31065:	a3 b0 8f 03 00       	mov    %eax,0x38fb0
   3106a:	e8 9f 02 00 00       	call   3130e <set_leds>
   3106f:	eb 09                	jmp    3107a <keyboard_read+0x292>
   31071:	90                   	nop
   31072:	eb 07                	jmp    3107b <keyboard_read+0x293>
   31074:	90                   	nop
   31075:	eb 04                	jmp    3107b <keyboard_read+0x293>
   31077:	90                   	nop
   31078:	eb 01                	jmp    3107b <keyboard_read+0x293>
   3107a:	90                   	nop
   3107b:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
   3107f:	0f 84 e6 01 00 00    	je     3126b <keyboard_read+0x483>
   31085:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
   3108c:	81 7d f0 2b 01 00 00 	cmpl   $0x12b,-0x10(%ebp)
   31093:	0f 86 1b 01 00 00    	jbe    311b4 <keyboard_read+0x3cc>
   31099:	81 7d f0 3b 01 00 00 	cmpl   $0x13b,-0x10(%ebp)
   310a0:	0f 87 0e 01 00 00    	ja     311b4 <keyboard_read+0x3cc>
   310a6:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%ebp)
   310ad:	8b 45 f0             	mov    -0x10(%ebp),%eax
   310b0:	2d 2c 01 00 00       	sub    $0x12c,%eax
   310b5:	83 f8 04             	cmp    $0x4,%eax
   310b8:	77 45                	ja     310ff <keyboard_read+0x317>
   310ba:	8b 04 85 a0 51 03 00 	mov    0x351a0(,%eax,4),%eax
   310c1:	ff e0                	jmp    *%eax
   310c3:	c7 45 f0 2f 00 00 00 	movl   $0x2f,-0x10(%ebp)
   310ca:	e9 e6 00 00 00       	jmp    311b5 <keyboard_read+0x3cd>
   310cf:	c7 45 f0 2a 00 00 00 	movl   $0x2a,-0x10(%ebp)
   310d6:	e9 da 00 00 00       	jmp    311b5 <keyboard_read+0x3cd>
   310db:	c7 45 f0 2d 00 00 00 	movl   $0x2d,-0x10(%ebp)
   310e2:	e9 ce 00 00 00       	jmp    311b5 <keyboard_read+0x3cd>
   310e7:	c7 45 f0 2b 00 00 00 	movl   $0x2b,-0x10(%ebp)
   310ee:	e9 c2 00 00 00       	jmp    311b5 <keyboard_read+0x3cd>
   310f3:	c7 45 f0 03 01 00 00 	movl   $0x103,-0x10(%ebp)
   310fa:	e9 b6 00 00 00       	jmp    311b5 <keyboard_read+0x3cd>
   310ff:	a1 ac 8f 03 00       	mov    0x38fac,%eax
   31104:	85 c0                	test   %eax,%eax
   31106:	74 1e                	je     31126 <keyboard_read+0x33e>
   31108:	81 7d f0 31 01 00 00 	cmpl   $0x131,-0x10(%ebp)
   3110f:	76 15                	jbe    31126 <keyboard_read+0x33e>
   31111:	81 7d f0 3b 01 00 00 	cmpl   $0x13b,-0x10(%ebp)
   31118:	77 0c                	ja     31126 <keyboard_read+0x33e>
   3111a:	81 6d f0 02 01 00 00 	subl   $0x102,-0x10(%ebp)
   31121:	e9 8c 00 00 00       	jmp    311b2 <keyboard_read+0x3ca>
   31126:	a1 ac 8f 03 00       	mov    0x38fac,%eax
   3112b:	85 c0                	test   %eax,%eax
   3112d:	74 12                	je     31141 <keyboard_read+0x359>
   3112f:	81 7d f0 31 01 00 00 	cmpl   $0x131,-0x10(%ebp)
   31136:	75 09                	jne    31141 <keyboard_read+0x359>
   31138:	c7 45 f0 2e 00 00 00 	movl   $0x2e,-0x10(%ebp)
   3113f:	eb 71                	jmp    311b2 <keyboard_read+0x3ca>
   31141:	8b 45 f0             	mov    -0x10(%ebp),%eax
   31144:	2d 31 01 00 00       	sub    $0x131,%eax
   31149:	83 f8 0a             	cmp    $0xa,%eax
   3114c:	77 63                	ja     311b1 <keyboard_read+0x3c9>
   3114e:	8b 04 85 b4 51 03 00 	mov    0x351b4(,%eax,4),%eax
   31155:	ff e0                	jmp    *%eax
   31157:	c7 45 f0 21 01 00 00 	movl   $0x121,-0x10(%ebp)
   3115e:	eb 52                	jmp    311b2 <keyboard_read+0x3ca>
   31160:	c7 45 f0 22 01 00 00 	movl   $0x122,-0x10(%ebp)
   31167:	eb 49                	jmp    311b2 <keyboard_read+0x3ca>
   31169:	c7 45 f0 23 01 00 00 	movl   $0x123,-0x10(%ebp)
   31170:	eb 40                	jmp    311b2 <keyboard_read+0x3ca>
   31172:	c7 45 f0 24 01 00 00 	movl   $0x124,-0x10(%ebp)
   31179:	eb 37                	jmp    311b2 <keyboard_read+0x3ca>
   3117b:	c7 45 f0 1f 01 00 00 	movl   $0x11f,-0x10(%ebp)
   31182:	eb 2e                	jmp    311b2 <keyboard_read+0x3ca>
   31184:	c7 45 f0 25 01 00 00 	movl   $0x125,-0x10(%ebp)
   3118b:	eb 25                	jmp    311b2 <keyboard_read+0x3ca>
   3118d:	c7 45 f0 26 01 00 00 	movl   $0x126,-0x10(%ebp)
   31194:	eb 1c                	jmp    311b2 <keyboard_read+0x3ca>
   31196:	c7 45 f0 27 01 00 00 	movl   $0x127,-0x10(%ebp)
   3119d:	eb 13                	jmp    311b2 <keyboard_read+0x3ca>
   3119f:	c7 45 f0 28 01 00 00 	movl   $0x128,-0x10(%ebp)
   311a6:	eb 0a                	jmp    311b2 <keyboard_read+0x3ca>
   311a8:	c7 45 f0 20 01 00 00 	movl   $0x120,-0x10(%ebp)
   311af:	eb 01                	jmp    311b2 <keyboard_read+0x3ca>
   311b1:	90                   	nop
   311b2:	eb 01                	jmp    311b5 <keyboard_read+0x3cd>
   311b4:	90                   	nop
   311b5:	a1 90 8f 03 00       	mov    0x38f90,%eax
   311ba:	85 c0                	test   %eax,%eax
   311bc:	74 07                	je     311c5 <keyboard_read+0x3dd>
   311be:	b8 00 02 00 00       	mov    $0x200,%eax
   311c3:	eb 05                	jmp    311ca <keyboard_read+0x3e2>
   311c5:	b8 00 00 00 00       	mov    $0x0,%eax
   311ca:	09 45 f0             	or     %eax,-0x10(%ebp)
   311cd:	a1 94 8f 03 00       	mov    0x38f94,%eax
   311d2:	85 c0                	test   %eax,%eax
   311d4:	74 07                	je     311dd <keyboard_read+0x3f5>
   311d6:	b8 00 04 00 00       	mov    $0x400,%eax
   311db:	eb 05                	jmp    311e2 <keyboard_read+0x3fa>
   311dd:	b8 00 00 00 00       	mov    $0x0,%eax
   311e2:	09 45 f0             	or     %eax,-0x10(%ebp)
   311e5:	a1 a0 8f 03 00       	mov    0x38fa0,%eax
   311ea:	85 c0                	test   %eax,%eax
   311ec:	74 07                	je     311f5 <keyboard_read+0x40d>
   311ee:	b8 00 08 00 00       	mov    $0x800,%eax
   311f3:	eb 05                	jmp    311fa <keyboard_read+0x412>
   311f5:	b8 00 00 00 00       	mov    $0x0,%eax
   311fa:	09 45 f0             	or     %eax,-0x10(%ebp)
   311fd:	a1 a4 8f 03 00       	mov    0x38fa4,%eax
   31202:	85 c0                	test   %eax,%eax
   31204:	74 07                	je     3120d <keyboard_read+0x425>
   31206:	b8 00 10 00 00       	mov    $0x1000,%eax
   3120b:	eb 05                	jmp    31212 <keyboard_read+0x42a>
   3120d:	b8 00 00 00 00       	mov    $0x0,%eax
   31212:	09 45 f0             	or     %eax,-0x10(%ebp)
   31215:	a1 98 8f 03 00       	mov    0x38f98,%eax
   3121a:	85 c0                	test   %eax,%eax
   3121c:	74 07                	je     31225 <keyboard_read+0x43d>
   3121e:	b8 00 20 00 00       	mov    $0x2000,%eax
   31223:	eb 05                	jmp    3122a <keyboard_read+0x442>
   31225:	b8 00 00 00 00       	mov    $0x0,%eax
   3122a:	09 45 f0             	or     %eax,-0x10(%ebp)
   3122d:	a1 9c 8f 03 00       	mov    0x38f9c,%eax
   31232:	85 c0                	test   %eax,%eax
   31234:	74 07                	je     3123d <keyboard_read+0x455>
   31236:	b8 00 40 00 00       	mov    $0x4000,%eax
   3123b:	eb 05                	jmp    31242 <keyboard_read+0x45a>
   3123d:	b8 00 00 00 00       	mov    $0x0,%eax
   31242:	09 45 f0             	or     %eax,-0x10(%ebp)
   31245:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
   31249:	74 07                	je     31252 <keyboard_read+0x46a>
   3124b:	b8 00 80 00 00       	mov    $0x8000,%eax
   31250:	eb 05                	jmp    31257 <keyboard_read+0x46f>
   31252:	b8 00 00 00 00       	mov    $0x0,%eax
   31257:	09 45 f0             	or     %eax,-0x10(%ebp)
   3125a:	83 ec 08             	sub    $0x8,%esp
   3125d:	ff 75 f0             	pushl  -0x10(%ebp)
   31260:	ff 75 08             	pushl  0x8(%ebp)
   31263:	e8 be 01 00 00       	call   31426 <in_process>
   31268:	83 c4 10             	add    $0x10,%esp
   3126b:	90                   	nop
   3126c:	c9                   	leave  
   3126d:	c3                   	ret    

0003126e <get_byte_from_kbuf>:
   3126e:	55                   	push   %ebp
   3126f:	89 e5                	mov    %esp,%ebp
   31271:	83 ec 18             	sub    $0x18,%esp
   31274:	90                   	nop
   31275:	a1 68 8f 03 00       	mov    0x38f68,%eax
   3127a:	85 c0                	test   %eax,%eax
   3127c:	7e f7                	jle    31275 <get_byte_from_kbuf+0x7>
   3127e:	e8 7a 3b 00 00       	call   34dfd <disable_int>
   31283:	a1 64 8f 03 00       	mov    0x38f64,%eax
   31288:	0f b6 00             	movzbl (%eax),%eax
   3128b:	88 45 f7             	mov    %al,-0x9(%ebp)
   3128e:	a1 64 8f 03 00       	mov    0x38f64,%eax
   31293:	83 c0 01             	add    $0x1,%eax
   31296:	a3 64 8f 03 00       	mov    %eax,0x38f64
   3129b:	a1 64 8f 03 00       	mov    0x38f64,%eax
   312a0:	ba 8c 8f 03 00       	mov    $0x38f8c,%edx
   312a5:	39 d0                	cmp    %edx,%eax
   312a7:	75 0a                	jne    312b3 <get_byte_from_kbuf+0x45>
   312a9:	c7 05 64 8f 03 00 6c 	movl   $0x38f6c,0x38f64
   312b0:	8f 03 00 
   312b3:	a1 68 8f 03 00       	mov    0x38f68,%eax
   312b8:	83 e8 01             	sub    $0x1,%eax
   312bb:	a3 68 8f 03 00       	mov    %eax,0x38f68
   312c0:	e8 3a 3b 00 00       	call   34dff <enable_int>
   312c5:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
   312c9:	c9                   	leave  
   312ca:	c3                   	ret    

000312cb <kb_wait>:
   312cb:	55                   	push   %ebp
   312cc:	89 e5                	mov    %esp,%ebp
   312ce:	83 ec 18             	sub    $0x18,%esp
   312d1:	83 ec 0c             	sub    $0xc,%esp
   312d4:	6a 64                	push   $0x64
   312d6:	e8 9e 3a 00 00       	call   34d79 <in_byte>
   312db:	83 c4 10             	add    $0x10,%esp
   312de:	88 45 f7             	mov    %al,-0x9(%ebp)
   312e1:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
   312e5:	83 e0 02             	and    $0x2,%eax
   312e8:	85 c0                	test   %eax,%eax
   312ea:	75 e5                	jne    312d1 <kb_wait+0x6>
   312ec:	90                   	nop
   312ed:	c9                   	leave  
   312ee:	c3                   	ret    

000312ef <kb_ack>:
   312ef:	55                   	push   %ebp
   312f0:	89 e5                	mov    %esp,%ebp
   312f2:	83 ec 18             	sub    $0x18,%esp
   312f5:	83 ec 0c             	sub    $0xc,%esp
   312f8:	6a 60                	push   $0x60
   312fa:	e8 7a 3a 00 00       	call   34d79 <in_byte>
   312ff:	83 c4 10             	add    $0x10,%esp
   31302:	88 45 f7             	mov    %al,-0x9(%ebp)
   31305:	80 7d f7 fa          	cmpb   $0xfa,-0x9(%ebp)
   31309:	75 ea                	jne    312f5 <kb_ack+0x6>
   3130b:	90                   	nop
   3130c:	c9                   	leave  
   3130d:	c3                   	ret    

0003130e <set_leds>:
   3130e:	55                   	push   %ebp
   3130f:	89 e5                	mov    %esp,%ebp
   31311:	83 ec 18             	sub    $0x18,%esp
   31314:	a1 a8 8f 03 00       	mov    0x38fa8,%eax
   31319:	c1 e0 02             	shl    $0x2,%eax
   3131c:	89 c2                	mov    %eax,%edx
   3131e:	a1 ac 8f 03 00       	mov    0x38fac,%eax
   31323:	01 c0                	add    %eax,%eax
   31325:	09 c2                	or     %eax,%edx
   31327:	a1 b0 8f 03 00       	mov    0x38fb0,%eax
   3132c:	09 d0                	or     %edx,%eax
   3132e:	88 45 f7             	mov    %al,-0x9(%ebp)
   31331:	e8 95 ff ff ff       	call   312cb <kb_wait>
   31336:	83 ec 08             	sub    $0x8,%esp
   31339:	68 ed 00 00 00       	push   $0xed
   3133e:	6a 60                	push   $0x60
   31340:	e8 28 3a 00 00       	call   34d6d <out_byte>
   31345:	83 c4 10             	add    $0x10,%esp
   31348:	e8 a2 ff ff ff       	call   312ef <kb_ack>
   3134d:	e8 79 ff ff ff       	call   312cb <kb_wait>
   31352:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
   31356:	83 ec 08             	sub    $0x8,%esp
   31359:	50                   	push   %eax
   3135a:	6a 60                	push   $0x60
   3135c:	e8 0c 3a 00 00       	call   34d6d <out_byte>
   31361:	83 c4 10             	add    $0x10,%esp
   31364:	e8 86 ff ff ff       	call   312ef <kb_ack>
   31369:	90                   	nop
   3136a:	c9                   	leave  
   3136b:	c3                   	ret    

0003136c <task_tty>:
   3136c:	55                   	push   %ebp
   3136d:	89 e5                	mov    %esp,%ebp
   3136f:	83 ec 18             	sub    $0x18,%esp
   31372:	e8 cc f9 ff ff       	call   30d43 <init_keyboard>
   31377:	c7 45 f4 60 1a 07 00 	movl   $0x71a60,-0xc(%ebp)
   3137e:	eb 15                	jmp    31395 <task_tty+0x29>
   31380:	83 ec 0c             	sub    $0xc,%esp
   31383:	ff 75 f4             	pushl  -0xc(%ebp)
   31386:	e8 59 00 00 00       	call   313e4 <init_tty>
   3138b:	83 c4 10             	add    $0x10,%esp
   3138e:	81 45 f4 10 04 00 00 	addl   $0x410,-0xc(%ebp)
   31395:	b8 90 26 07 00       	mov    $0x72690,%eax
   3139a:	39 45 f4             	cmp    %eax,-0xc(%ebp)
   3139d:	72 e1                	jb     31380 <task_tty+0x14>
   3139f:	83 ec 0c             	sub    $0xc,%esp
   313a2:	6a 00                	push   $0x0
   313a4:	e8 5c 08 00 00       	call   31c05 <select_console>
   313a9:	83 c4 10             	add    $0x10,%esp
   313ac:	c7 45 f4 60 1a 07 00 	movl   $0x71a60,-0xc(%ebp)
   313b3:	eb 23                	jmp    313d8 <task_tty+0x6c>
   313b5:	83 ec 0c             	sub    $0xc,%esp
   313b8:	ff 75 f4             	pushl  -0xc(%ebp)
   313bb:	e8 12 02 00 00       	call   315d2 <tty_do_read>
   313c0:	83 c4 10             	add    $0x10,%esp
   313c3:	83 ec 0c             	sub    $0xc,%esp
   313c6:	ff 75 f4             	pushl  -0xc(%ebp)
   313c9:	e8 34 02 00 00       	call   31602 <tty_do_write>
   313ce:	83 c4 10             	add    $0x10,%esp
   313d1:	81 45 f4 10 04 00 00 	addl   $0x410,-0xc(%ebp)
   313d8:	b8 90 26 07 00       	mov    $0x72690,%eax
   313dd:	39 45 f4             	cmp    %eax,-0xc(%ebp)
   313e0:	72 d3                	jb     313b5 <task_tty+0x49>
   313e2:	eb c8                	jmp    313ac <task_tty+0x40>

000313e4 <init_tty>:
   313e4:	55                   	push   %ebp
   313e5:	89 e5                	mov    %esp,%ebp
   313e7:	83 ec 08             	sub    $0x8,%esp
   313ea:	8b 45 08             	mov    0x8(%ebp),%eax
   313ed:	c7 80 08 04 00 00 00 	movl   $0x0,0x408(%eax)
   313f4:	00 00 00 
   313f7:	8b 55 08             	mov    0x8(%ebp),%edx
   313fa:	8b 45 08             	mov    0x8(%ebp),%eax
   313fd:	89 90 04 04 00 00    	mov    %edx,0x404(%eax)
   31403:	8b 45 08             	mov    0x8(%ebp),%eax
   31406:	8b 90 04 04 00 00    	mov    0x404(%eax),%edx
   3140c:	8b 45 08             	mov    0x8(%ebp),%eax
   3140f:	89 90 00 04 00 00    	mov    %edx,0x400(%eax)
   31415:	83 ec 0c             	sub    $0xc,%esp
   31418:	ff 75 08             	pushl  0x8(%ebp)
   3141b:	e8 60 04 00 00       	call   31880 <init_screen>
   31420:	83 c4 10             	add    $0x10,%esp
   31423:	90                   	nop
   31424:	c9                   	leave  
   31425:	c3                   	ret    

00031426 <in_process>:
   31426:	55                   	push   %ebp
   31427:	89 e5                	mov    %esp,%ebp
   31429:	83 ec 18             	sub    $0x18,%esp
   3142c:	8b 45 0c             	mov    0xc(%ebp),%eax
   3142f:	25 00 01 00 00       	and    $0x100,%eax
   31434:	85 c0                	test   %eax,%eax
   31436:	75 16                	jne    3144e <in_process+0x28>
   31438:	83 ec 08             	sub    $0x8,%esp
   3143b:	ff 75 0c             	pushl  0xc(%ebp)
   3143e:	ff 75 08             	pushl  0x8(%ebp)
   31441:	e8 1c 01 00 00       	call   31562 <put_key>
   31446:	83 c4 10             	add    $0x10,%esp
   31449:	e9 11 01 00 00       	jmp    3155f <in_process+0x139>
   3144e:	8b 45 0c             	mov    0xc(%ebp),%eax
   31451:	25 ff 01 00 00       	and    $0x1ff,%eax
   31456:	89 45 f4             	mov    %eax,-0xc(%ebp)
   31459:	8b 45 f4             	mov    -0xc(%ebp),%eax
   3145c:	2d 03 01 00 00       	sub    $0x103,%eax
   31461:	83 f8 23             	cmp    $0x23,%eax
   31464:	0f 87 eb 00 00 00    	ja     31555 <in_process+0x12f>
   3146a:	8b 04 85 e0 51 03 00 	mov    0x351e0(,%eax,4),%eax
   31471:	ff e0                	jmp    *%eax
   31473:	83 ec 08             	sub    $0x8,%esp
   31476:	6a 0a                	push   $0xa
   31478:	ff 75 08             	pushl  0x8(%ebp)
   3147b:	e8 e2 00 00 00       	call   31562 <put_key>
   31480:	83 c4 10             	add    $0x10,%esp
   31483:	e9 d7 00 00 00       	jmp    3155f <in_process+0x139>
   31488:	83 ec 08             	sub    $0x8,%esp
   3148b:	6a 08                	push   $0x8
   3148d:	ff 75 08             	pushl  0x8(%ebp)
   31490:	e8 cd 00 00 00       	call   31562 <put_key>
   31495:	83 c4 10             	add    $0x10,%esp
   31498:	e9 c2 00 00 00       	jmp    3155f <in_process+0x139>
   3149d:	8b 45 0c             	mov    0xc(%ebp),%eax
   314a0:	25 00 02 00 00       	and    $0x200,%eax
   314a5:	85 c0                	test   %eax,%eax
   314a7:	75 10                	jne    314b9 <in_process+0x93>
   314a9:	8b 45 0c             	mov    0xc(%ebp),%eax
   314ac:	25 00 04 00 00       	and    $0x400,%eax
   314b1:	85 c0                	test   %eax,%eax
   314b3:	0f 84 9f 00 00 00    	je     31558 <in_process+0x132>
   314b9:	8b 45 08             	mov    0x8(%ebp),%eax
   314bc:	8b 80 0c 04 00 00    	mov    0x40c(%eax),%eax
   314c2:	83 ec 08             	sub    $0x8,%esp
   314c5:	6a ff                	push   $0xffffffff
   314c7:	50                   	push   %eax
   314c8:	e8 6e 07 00 00       	call   31c3b <scroll_screen>
   314cd:	83 c4 10             	add    $0x10,%esp
   314d0:	e9 83 00 00 00       	jmp    31558 <in_process+0x132>
   314d5:	8b 45 0c             	mov    0xc(%ebp),%eax
   314d8:	25 00 02 00 00       	and    $0x200,%eax
   314dd:	85 c0                	test   %eax,%eax
   314df:	75 0c                	jne    314ed <in_process+0xc7>
   314e1:	8b 45 0c             	mov    0xc(%ebp),%eax
   314e4:	25 00 04 00 00       	and    $0x400,%eax
   314e9:	85 c0                	test   %eax,%eax
   314eb:	74 6e                	je     3155b <in_process+0x135>
   314ed:	8b 45 08             	mov    0x8(%ebp),%eax
   314f0:	8b 80 0c 04 00 00    	mov    0x40c(%eax),%eax
   314f6:	83 ec 08             	sub    $0x8,%esp
   314f9:	6a 01                	push   $0x1
   314fb:	50                   	push   %eax
   314fc:	e8 3a 07 00 00       	call   31c3b <scroll_screen>
   31501:	83 c4 10             	add    $0x10,%esp
   31504:	eb 55                	jmp    3155b <in_process+0x135>
   31506:	8b 45 0c             	mov    0xc(%ebp),%eax
   31509:	25 00 20 00 00       	and    $0x2000,%eax
   3150e:	85 c0                	test   %eax,%eax
   31510:	75 0c                	jne    3151e <in_process+0xf8>
   31512:	8b 45 0c             	mov    0xc(%ebp),%eax
   31515:	25 00 40 00 00       	and    $0x4000,%eax
   3151a:	85 c0                	test   %eax,%eax
   3151c:	74 16                	je     31534 <in_process+0x10e>
   3151e:	8b 45 f4             	mov    -0xc(%ebp),%eax
   31521:	2d 11 01 00 00       	sub    $0x111,%eax
   31526:	83 ec 0c             	sub    $0xc,%esp
   31529:	50                   	push   %eax
   3152a:	e8 d6 06 00 00       	call   31c05 <select_console>
   3152f:	83 c4 10             	add    $0x10,%esp
   31532:	eb 2a                	jmp    3155e <in_process+0x138>
   31534:	81 7d f4 1c 01 00 00 	cmpl   $0x11c,-0xc(%ebp)
   3153b:	75 21                	jne    3155e <in_process+0x138>
   3153d:	e8 bb 38 00 00       	call   34dfd <disable_int>
   31542:	b8 40 32 07 00       	mov    $0x73240,%eax
   31547:	83 ec 0c             	sub    $0xc,%esp
   3154a:	50                   	push   %eax
   3154b:	e8 1e 21 00 00       	call   3366e <dump_proc>
   31550:	83 c4 10             	add    $0x10,%esp
   31553:	eb fe                	jmp    31553 <in_process+0x12d>
   31555:	90                   	nop
   31556:	eb 07                	jmp    3155f <in_process+0x139>
   31558:	90                   	nop
   31559:	eb 04                	jmp    3155f <in_process+0x139>
   3155b:	90                   	nop
   3155c:	eb 01                	jmp    3155f <in_process+0x139>
   3155e:	90                   	nop
   3155f:	90                   	nop
   31560:	c9                   	leave  
   31561:	c3                   	ret    

00031562 <put_key>:
   31562:	55                   	push   %ebp
   31563:	89 e5                	mov    %esp,%ebp
   31565:	8b 45 08             	mov    0x8(%ebp),%eax
   31568:	8b 80 08 04 00 00    	mov    0x408(%eax),%eax
   3156e:	3d ff 00 00 00       	cmp    $0xff,%eax
   31573:	7f 5a                	jg     315cf <put_key+0x6d>
   31575:	8b 45 08             	mov    0x8(%ebp),%eax
   31578:	8b 80 00 04 00 00    	mov    0x400(%eax),%eax
   3157e:	8b 55 0c             	mov    0xc(%ebp),%edx
   31581:	89 10                	mov    %edx,(%eax)
   31583:	8b 45 08             	mov    0x8(%ebp),%eax
   31586:	8b 80 00 04 00 00    	mov    0x400(%eax),%eax
   3158c:	8d 50 04             	lea    0x4(%eax),%edx
   3158f:	8b 45 08             	mov    0x8(%ebp),%eax
   31592:	89 90 00 04 00 00    	mov    %edx,0x400(%eax)
   31598:	8b 45 08             	mov    0x8(%ebp),%eax
   3159b:	8b 80 00 04 00 00    	mov    0x400(%eax),%eax
   315a1:	8b 55 08             	mov    0x8(%ebp),%edx
   315a4:	81 c2 00 04 00 00    	add    $0x400,%edx
   315aa:	39 d0                	cmp    %edx,%eax
   315ac:	75 0c                	jne    315ba <put_key+0x58>
   315ae:	8b 55 08             	mov    0x8(%ebp),%edx
   315b1:	8b 45 08             	mov    0x8(%ebp),%eax
   315b4:	89 90 00 04 00 00    	mov    %edx,0x400(%eax)
   315ba:	8b 45 08             	mov    0x8(%ebp),%eax
   315bd:	8b 80 08 04 00 00    	mov    0x408(%eax),%eax
   315c3:	8d 50 01             	lea    0x1(%eax),%edx
   315c6:	8b 45 08             	mov    0x8(%ebp),%eax
   315c9:	89 90 08 04 00 00    	mov    %edx,0x408(%eax)
   315cf:	90                   	nop
   315d0:	5d                   	pop    %ebp
   315d1:	c3                   	ret    

000315d2 <tty_do_read>:
   315d2:	55                   	push   %ebp
   315d3:	89 e5                	mov    %esp,%ebp
   315d5:	83 ec 08             	sub    $0x8,%esp
   315d8:	8b 45 08             	mov    0x8(%ebp),%eax
   315db:	8b 80 0c 04 00 00    	mov    0x40c(%eax),%eax
   315e1:	83 ec 0c             	sub    $0xc,%esp
   315e4:	50                   	push   %eax
   315e5:	e8 b6 03 00 00       	call   319a0 <is_current_console>
   315ea:	83 c4 10             	add    $0x10,%esp
   315ed:	85 c0                	test   %eax,%eax
   315ef:	74 0e                	je     315ff <tty_do_read+0x2d>
   315f1:	83 ec 0c             	sub    $0xc,%esp
   315f4:	ff 75 08             	pushl  0x8(%ebp)
   315f7:	e8 ec f7 ff ff       	call   30de8 <keyboard_read>
   315fc:	83 c4 10             	add    $0x10,%esp
   315ff:	90                   	nop
   31600:	c9                   	leave  
   31601:	c3                   	ret    

00031602 <tty_do_write>:
   31602:	55                   	push   %ebp
   31603:	89 e5                	mov    %esp,%ebp
   31605:	83 ec 18             	sub    $0x18,%esp
   31608:	8b 45 08             	mov    0x8(%ebp),%eax
   3160b:	8b 80 08 04 00 00    	mov    0x408(%eax),%eax
   31611:	85 c0                	test   %eax,%eax
   31613:	74 74                	je     31689 <tty_do_write+0x87>
   31615:	8b 45 08             	mov    0x8(%ebp),%eax
   31618:	8b 80 04 04 00 00    	mov    0x404(%eax),%eax
   3161e:	8b 00                	mov    (%eax),%eax
   31620:	88 45 f7             	mov    %al,-0x9(%ebp)
   31623:	8b 45 08             	mov    0x8(%ebp),%eax
   31626:	8b 80 04 04 00 00    	mov    0x404(%eax),%eax
   3162c:	8d 50 04             	lea    0x4(%eax),%edx
   3162f:	8b 45 08             	mov    0x8(%ebp),%eax
   31632:	89 90 04 04 00 00    	mov    %edx,0x404(%eax)
   31638:	8b 45 08             	mov    0x8(%ebp),%eax
   3163b:	8b 80 04 04 00 00    	mov    0x404(%eax),%eax
   31641:	8b 55 08             	mov    0x8(%ebp),%edx
   31644:	81 c2 00 04 00 00    	add    $0x400,%edx
   3164a:	39 d0                	cmp    %edx,%eax
   3164c:	75 0c                	jne    3165a <tty_do_write+0x58>
   3164e:	8b 55 08             	mov    0x8(%ebp),%edx
   31651:	8b 45 08             	mov    0x8(%ebp),%eax
   31654:	89 90 04 04 00 00    	mov    %edx,0x404(%eax)
   3165a:	8b 45 08             	mov    0x8(%ebp),%eax
   3165d:	8b 80 08 04 00 00    	mov    0x408(%eax),%eax
   31663:	8d 50 ff             	lea    -0x1(%eax),%edx
   31666:	8b 45 08             	mov    0x8(%ebp),%eax
   31669:	89 90 08 04 00 00    	mov    %edx,0x408(%eax)
   3166f:	0f be 55 f7          	movsbl -0x9(%ebp),%edx
   31673:	8b 45 08             	mov    0x8(%ebp),%eax
   31676:	8b 80 0c 04 00 00    	mov    0x40c(%eax),%eax
   3167c:	83 ec 08             	sub    $0x8,%esp
   3167f:	52                   	push   %edx
   31680:	50                   	push   %eax
   31681:	e8 35 03 00 00       	call   319bb <out_char>
   31686:	83 c4 10             	add    $0x10,%esp
   31689:	90                   	nop
   3168a:	c9                   	leave  
   3168b:	c3                   	ret    

0003168c <tty_write>:
   3168c:	55                   	push   %ebp
   3168d:	89 e5                	mov    %esp,%ebp
   3168f:	83 ec 18             	sub    $0x18,%esp
   31692:	8b 45 0c             	mov    0xc(%ebp),%eax
   31695:	89 45 f4             	mov    %eax,-0xc(%ebp)
   31698:	8b 45 10             	mov    0x10(%ebp),%eax
   3169b:	89 45 f0             	mov    %eax,-0x10(%ebp)
   3169e:	eb 29                	jmp    316c9 <tty_write+0x3d>
   316a0:	8b 45 f4             	mov    -0xc(%ebp),%eax
   316a3:	8d 50 01             	lea    0x1(%eax),%edx
   316a6:	89 55 f4             	mov    %edx,-0xc(%ebp)
   316a9:	0f b6 00             	movzbl (%eax),%eax
   316ac:	0f be d0             	movsbl %al,%edx
   316af:	8b 45 08             	mov    0x8(%ebp),%eax
   316b2:	8b 80 0c 04 00 00    	mov    0x40c(%eax),%eax
   316b8:	83 ec 08             	sub    $0x8,%esp
   316bb:	52                   	push   %edx
   316bc:	50                   	push   %eax
   316bd:	e8 f9 02 00 00       	call   319bb <out_char>
   316c2:	83 c4 10             	add    $0x10,%esp
   316c5:	83 6d f0 01          	subl   $0x1,-0x10(%ebp)
   316c9:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
   316cd:	75 d1                	jne    316a0 <tty_write+0x14>
   316cf:	90                   	nop
   316d0:	c9                   	leave  
   316d1:	c3                   	ret    

000316d2 <sys_printx>:
   316d2:	55                   	push   %ebp
   316d3:	89 e5                	mov    %esp,%ebp
   316d5:	83 ec 48             	sub    $0x48,%esp
   316d8:	c7 45 bf 3f 20 6b 5f 	movl   $0x5f6b203f,-0x41(%ebp)
   316df:	c7 45 c3 72 65 65 6e 	movl   $0x6e656572,-0x3d(%ebp)
   316e6:	c7 45 c7 74 65 72 20 	movl   $0x20726574,-0x39(%ebp)
   316ed:	c7 45 cb 69 73 20 69 	movl   $0x69207369,-0x35(%ebp)
   316f4:	c7 45 cf 6e 63 6f 72 	movl   $0x726f636e,-0x31(%ebp)
   316fb:	c7 45 d3 72 65 63 74 	movl   $0x74636572,-0x2d(%ebp)
   31702:	c7 45 d7 20 66 6f 72 	movl   $0x726f6620,-0x29(%ebp)
   31709:	c7 45 db 20 75 6e 6b 	movl   $0x6b6e7520,-0x25(%ebp)
   31710:	c7 45 df 6e 6f 77 6e 	movl   $0x6e776f6e,-0x21(%ebp)
   31717:	c7 45 e3 20 72 65 61 	movl   $0x61657220,-0x1d(%ebp)
   3171e:	c7 45 e7 73 6f 6e 00 	movl   $0x6e6f73,-0x19(%ebp)
   31725:	c6 45 bf 02          	movb   $0x2,-0x41(%ebp)
   31729:	a1 40 16 07 00       	mov    0x71640,%eax
   3172e:	85 c0                	test   %eax,%eax
   31730:	75 25                	jne    31757 <sys_printx+0x85>
   31732:	8b 45 14             	mov    0x14(%ebp),%eax
   31735:	2d e0 2f 07 00       	sub    $0x72fe0,%eax
   3173a:	c1 f8 03             	sar    $0x3,%eax
   3173d:	69 c0 1b ca 6b 28    	imul   $0x286bca1b,%eax,%eax
   31743:	83 ec 08             	sub    $0x8,%esp
   31746:	ff 75 10             	pushl  0x10(%ebp)
   31749:	50                   	push   %eax
   3174a:	e8 4c 0f 00 00       	call   3269b <va2la>
   3174f:	83 c4 10             	add    $0x10,%esp
   31752:	89 45 f4             	mov    %eax,-0xc(%ebp)
   31755:	eb 17                	jmp    3176e <sys_printx+0x9c>
   31757:	a1 40 16 07 00       	mov    0x71640,%eax
   3175c:	85 c0                	test   %eax,%eax
   3175e:	74 08                	je     31768 <sys_printx+0x96>
   31760:	8b 45 10             	mov    0x10(%ebp),%eax
   31763:	89 45 f4             	mov    %eax,-0xc(%ebp)
   31766:	eb 06                	jmp    3176e <sys_printx+0x9c>
   31768:	8d 45 bf             	lea    -0x41(%ebp),%eax
   3176b:	89 45 f4             	mov    %eax,-0xc(%ebp)
   3176e:	8b 45 f4             	mov    -0xc(%ebp),%eax
   31771:	0f b6 00             	movzbl (%eax),%eax
   31774:	3c 02                	cmp    $0x2,%al
   31776:	74 1e                	je     31796 <sys_printx+0xc4>
   31778:	8b 45 f4             	mov    -0xc(%ebp),%eax
   3177b:	0f b6 00             	movzbl (%eax),%eax
   3177e:	3c 03                	cmp    $0x3,%al
   31780:	0f 85 de 00 00 00    	jne    31864 <sys_printx+0x192>
   31786:	a1 c0 2f 07 00       	mov    0x72fc0,%eax
   3178b:	3d 40 32 07 00       	cmp    $0x73240,%eax
   31790:	0f 83 ce 00 00 00    	jae    31864 <sys_printx+0x192>
   31796:	e8 62 36 00 00       	call   34dfd <disable_int>
   3179b:	c7 45 f0 00 80 0b 00 	movl   $0xb8000,-0x10(%ebp)
   317a2:	8b 45 f4             	mov    -0xc(%ebp),%eax
   317a5:	83 c0 01             	add    $0x1,%eax
   317a8:	89 45 ec             	mov    %eax,-0x14(%ebp)
   317ab:	eb 76                	jmp    31823 <sys_printx+0x151>
   317ad:	8b 55 ec             	mov    -0x14(%ebp),%edx
   317b0:	8d 42 01             	lea    0x1(%edx),%eax
   317b3:	89 45 ec             	mov    %eax,-0x14(%ebp)
   317b6:	8b 45 f0             	mov    -0x10(%ebp),%eax
   317b9:	8d 48 01             	lea    0x1(%eax),%ecx
   317bc:	89 4d f0             	mov    %ecx,-0x10(%ebp)
   317bf:	0f b6 12             	movzbl (%edx),%edx
   317c2:	88 10                	mov    %dl,(%eax)
   317c4:	8b 45 f0             	mov    -0x10(%ebp),%eax
   317c7:	8d 50 01             	lea    0x1(%eax),%edx
   317ca:	89 55 f0             	mov    %edx,-0x10(%ebp)
   317cd:	c6 00 1c             	movb   $0x1c,(%eax)
   317d0:	8b 45 ec             	mov    -0x14(%ebp),%eax
   317d3:	0f b6 00             	movzbl (%eax),%eax
   317d6:	84 c0                	test   %al,%al
   317d8:	75 49                	jne    31823 <sys_printx+0x151>
   317da:	eb 10                	jmp    317ec <sys_printx+0x11a>
   317dc:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
   317e0:	8b 45 f0             	mov    -0x10(%ebp),%eax
   317e3:	8d 50 01             	lea    0x1(%eax),%edx
   317e6:	89 55 f0             	mov    %edx,-0x10(%ebp)
   317e9:	c6 00 08             	movb   $0x8,(%eax)
   317ec:	8b 45 f0             	mov    -0x10(%ebp),%eax
   317ef:	8d 88 00 80 f4 ff    	lea    -0xb8000(%eax),%ecx
   317f5:	ba 67 66 66 66       	mov    $0x66666667,%edx
   317fa:	89 c8                	mov    %ecx,%eax
   317fc:	f7 ea                	imul   %edx
   317fe:	c1 fa 09             	sar    $0x9,%edx
   31801:	89 c8                	mov    %ecx,%eax
   31803:	c1 f8 1f             	sar    $0x1f,%eax
   31806:	29 c2                	sub    %eax,%edx
   31808:	89 d0                	mov    %edx,%eax
   3180a:	c1 e0 02             	shl    $0x2,%eax
   3180d:	01 d0                	add    %edx,%eax
   3180f:	c1 e0 08             	shl    $0x8,%eax
   31812:	29 c1                	sub    %eax,%ecx
   31814:	89 ca                	mov    %ecx,%edx
   31816:	85 d2                	test   %edx,%edx
   31818:	75 c2                	jne    317dc <sys_printx+0x10a>
   3181a:	8b 45 f4             	mov    -0xc(%ebp),%eax
   3181d:	83 c0 01             	add    $0x1,%eax
   31820:	89 45 ec             	mov    %eax,-0x14(%ebp)
   31823:	81 7d f0 ff ff 0b 00 	cmpl   $0xbffff,-0x10(%ebp)
   3182a:	76 81                	jbe    317ad <sys_printx+0xdb>
   3182c:	f4                   	hlt    
   3182d:	eb 35                	jmp    31864 <sys_printx+0x192>
   3182f:	80 7d eb 02          	cmpb   $0x2,-0x15(%ebp)
   31833:	74 2f                	je     31864 <sys_printx+0x192>
   31835:	80 7d eb 03          	cmpb   $0x3,-0x15(%ebp)
   31839:	75 02                	jne    3183d <sys_printx+0x16b>
   3183b:	eb 27                	jmp    31864 <sys_printx+0x192>
   3183d:	0f be 55 eb          	movsbl -0x15(%ebp),%edx
   31841:	8b 45 14             	mov    0x14(%ebp),%eax
   31844:	8b 80 94 00 00 00    	mov    0x94(%eax),%eax
   3184a:	69 c0 10 04 00 00    	imul   $0x410,%eax,%eax
   31850:	05 6c 1e 07 00       	add    $0x71e6c,%eax
   31855:	8b 00                	mov    (%eax),%eax
   31857:	83 ec 08             	sub    $0x8,%esp
   3185a:	52                   	push   %edx
   3185b:	50                   	push   %eax
   3185c:	e8 5a 01 00 00       	call   319bb <out_char>
   31861:	83 c4 10             	add    $0x10,%esp
   31864:	8b 45 f4             	mov    -0xc(%ebp),%eax
   31867:	8d 50 01             	lea    0x1(%eax),%edx
   3186a:	89 55 f4             	mov    %edx,-0xc(%ebp)
   3186d:	0f b6 00             	movzbl (%eax),%eax
   31870:	88 45 eb             	mov    %al,-0x15(%ebp)
   31873:	80 7d eb 00          	cmpb   $0x0,-0x15(%ebp)
   31877:	75 b6                	jne    3182f <sys_printx+0x15d>
   31879:	b8 00 00 00 00       	mov    $0x0,%eax
   3187e:	c9                   	leave  
   3187f:	c3                   	ret    

00031880 <init_screen>:
   31880:	55                   	push   %ebp
   31881:	89 e5                	mov    %esp,%ebp
   31883:	83 ec 18             	sub    $0x18,%esp
   31886:	8b 45 08             	mov    0x8(%ebp),%eax
   31889:	2d 60 1a 07 00       	sub    $0x71a60,%eax
   3188e:	c1 f8 04             	sar    $0x4,%eax
   31891:	69 c0 c1 0f fc c0    	imul   $0xc0fc0fc1,%eax,%eax
   31897:	89 45 f4             	mov    %eax,-0xc(%ebp)
   3189a:	8b 45 f4             	mov    -0xc(%ebp),%eax
   3189d:	c1 e0 04             	shl    $0x4,%eax
   318a0:	8d 90 40 2f 07 00    	lea    0x72f40(%eax),%edx
   318a6:	8b 45 08             	mov    0x8(%ebp),%eax
   318a9:	89 90 0c 04 00 00    	mov    %edx,0x40c(%eax)
   318af:	c7 45 f0 00 40 00 00 	movl   $0x4000,-0x10(%ebp)
   318b6:	8b 4d f0             	mov    -0x10(%ebp),%ecx
   318b9:	ba 56 55 55 55       	mov    $0x55555556,%edx
   318be:	89 c8                	mov    %ecx,%eax
   318c0:	f7 ea                	imul   %edx
   318c2:	89 c8                	mov    %ecx,%eax
   318c4:	c1 f8 1f             	sar    $0x1f,%eax
   318c7:	29 c2                	sub    %eax,%edx
   318c9:	89 d0                	mov    %edx,%eax
   318cb:	89 45 ec             	mov    %eax,-0x14(%ebp)
   318ce:	8b 45 f4             	mov    -0xc(%ebp),%eax
   318d1:	0f af 45 ec          	imul   -0x14(%ebp),%eax
   318d5:	89 c2                	mov    %eax,%edx
   318d7:	8b 45 08             	mov    0x8(%ebp),%eax
   318da:	8b 80 0c 04 00 00    	mov    0x40c(%eax),%eax
   318e0:	89 50 04             	mov    %edx,0x4(%eax)
   318e3:	8b 45 08             	mov    0x8(%ebp),%eax
   318e6:	8b 80 0c 04 00 00    	mov    0x40c(%eax),%eax
   318ec:	8b 55 ec             	mov    -0x14(%ebp),%edx
   318ef:	89 50 08             	mov    %edx,0x8(%eax)
   318f2:	8b 45 08             	mov    0x8(%ebp),%eax
   318f5:	8b 90 0c 04 00 00    	mov    0x40c(%eax),%edx
   318fb:	8b 45 08             	mov    0x8(%ebp),%eax
   318fe:	8b 80 0c 04 00 00    	mov    0x40c(%eax),%eax
   31904:	8b 52 04             	mov    0x4(%edx),%edx
   31907:	89 10                	mov    %edx,(%eax)
   31909:	8b 45 08             	mov    0x8(%ebp),%eax
   3190c:	8b 90 0c 04 00 00    	mov    0x40c(%eax),%edx
   31912:	8b 45 08             	mov    0x8(%ebp),%eax
   31915:	8b 80 0c 04 00 00    	mov    0x40c(%eax),%eax
   3191b:	8b 52 04             	mov    0x4(%edx),%edx
   3191e:	89 50 0c             	mov    %edx,0xc(%eax)
   31921:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
   31925:	75 28                	jne    3194f <init_screen+0xcf>
   31927:	a1 0c 27 07 00       	mov    0x7270c,%eax
   3192c:	89 c2                	mov    %eax,%edx
   3192e:	c1 ea 1f             	shr    $0x1f,%edx
   31931:	01 d0                	add    %edx,%eax
   31933:	d1 f8                	sar    %eax
   31935:	89 c2                	mov    %eax,%edx
   31937:	8b 45 08             	mov    0x8(%ebp),%eax
   3193a:	8b 80 0c 04 00 00    	mov    0x40c(%eax),%eax
   31940:	89 50 0c             	mov    %edx,0xc(%eax)
   31943:	c7 05 0c 27 07 00 00 	movl   $0x0,0x7270c
   3194a:	00 00 00 
   3194d:	eb 36                	jmp    31985 <init_screen+0x105>
   3194f:	8b 45 f4             	mov    -0xc(%ebp),%eax
   31952:	83 c0 30             	add    $0x30,%eax
   31955:	0f be d0             	movsbl %al,%edx
   31958:	8b 45 08             	mov    0x8(%ebp),%eax
   3195b:	8b 80 0c 04 00 00    	mov    0x40c(%eax),%eax
   31961:	83 ec 08             	sub    $0x8,%esp
   31964:	52                   	push   %edx
   31965:	50                   	push   %eax
   31966:	e8 50 00 00 00       	call   319bb <out_char>
   3196b:	83 c4 10             	add    $0x10,%esp
   3196e:	8b 45 08             	mov    0x8(%ebp),%eax
   31971:	8b 80 0c 04 00 00    	mov    0x40c(%eax),%eax
   31977:	83 ec 08             	sub    $0x8,%esp
   3197a:	6a 23                	push   $0x23
   3197c:	50                   	push   %eax
   3197d:	e8 39 00 00 00       	call   319bb <out_char>
   31982:	83 c4 10             	add    $0x10,%esp
   31985:	8b 45 08             	mov    0x8(%ebp),%eax
   31988:	8b 80 0c 04 00 00    	mov    0x40c(%eax),%eax
   3198e:	8b 40 0c             	mov    0xc(%eax),%eax
   31991:	83 ec 0c             	sub    $0xc,%esp
   31994:	50                   	push   %eax
   31995:	e8 9b 01 00 00       	call   31b35 <set_cursor>
   3199a:	83 c4 10             	add    $0x10,%esp
   3199d:	90                   	nop
   3199e:	c9                   	leave  
   3199f:	c3                   	ret    

000319a0 <is_current_console>:
   319a0:	55                   	push   %ebp
   319a1:	89 e5                	mov    %esp,%ebp
   319a3:	a1 08 27 07 00       	mov    0x72708,%eax
   319a8:	c1 e0 04             	shl    $0x4,%eax
   319ab:	05 40 2f 07 00       	add    $0x72f40,%eax
   319b0:	39 45 08             	cmp    %eax,0x8(%ebp)
   319b3:	0f 94 c0             	sete   %al
   319b6:	0f b6 c0             	movzbl %al,%eax
   319b9:	5d                   	pop    %ebp
   319ba:	c3                   	ret    

000319bb <out_char>:
   319bb:	55                   	push   %ebp
   319bc:	89 e5                	mov    %esp,%ebp
   319be:	83 ec 28             	sub    $0x28,%esp
   319c1:	8b 45 0c             	mov    0xc(%ebp),%eax
   319c4:	88 45 e4             	mov    %al,-0x1c(%ebp)
   319c7:	8b 45 08             	mov    0x8(%ebp),%eax
   319ca:	8b 40 0c             	mov    0xc(%eax),%eax
   319cd:	05 00 c0 05 00       	add    $0x5c000,%eax
   319d2:	01 c0                	add    %eax,%eax
   319d4:	89 45 f4             	mov    %eax,-0xc(%ebp)
   319d7:	0f be 45 e4          	movsbl -0x1c(%ebp),%eax
   319db:	83 f8 08             	cmp    $0x8,%eax
   319de:	74 62                	je     31a42 <out_char+0x87>
   319e0:	83 f8 0a             	cmp    $0xa,%eax
   319e3:	0f 85 8c 00 00 00    	jne    31a75 <out_char+0xba>
   319e9:	8b 45 08             	mov    0x8(%ebp),%eax
   319ec:	8b 50 0c             	mov    0xc(%eax),%edx
   319ef:	8b 45 08             	mov    0x8(%ebp),%eax
   319f2:	8b 48 04             	mov    0x4(%eax),%ecx
   319f5:	8b 45 08             	mov    0x8(%ebp),%eax
   319f8:	8b 40 08             	mov    0x8(%eax),%eax
   319fb:	01 c8                	add    %ecx,%eax
   319fd:	83 e8 50             	sub    $0x50,%eax
   31a00:	39 c2                	cmp    %eax,%edx
   31a02:	0f 83 b4 00 00 00    	jae    31abc <out_char+0x101>
   31a08:	8b 45 08             	mov    0x8(%ebp),%eax
   31a0b:	8b 48 04             	mov    0x4(%eax),%ecx
   31a0e:	8b 45 08             	mov    0x8(%ebp),%eax
   31a11:	8b 50 0c             	mov    0xc(%eax),%edx
   31a14:	8b 45 08             	mov    0x8(%ebp),%eax
   31a17:	8b 40 04             	mov    0x4(%eax),%eax
   31a1a:	29 c2                	sub    %eax,%edx
   31a1c:	89 d0                	mov    %edx,%eax
   31a1e:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
   31a23:	f7 e2                	mul    %edx
   31a25:	89 d0                	mov    %edx,%eax
   31a27:	c1 e8 06             	shr    $0x6,%eax
   31a2a:	8d 50 01             	lea    0x1(%eax),%edx
   31a2d:	89 d0                	mov    %edx,%eax
   31a2f:	c1 e0 02             	shl    $0x2,%eax
   31a32:	01 d0                	add    %edx,%eax
   31a34:	c1 e0 04             	shl    $0x4,%eax
   31a37:	8d 14 01             	lea    (%ecx,%eax,1),%edx
   31a3a:	8b 45 08             	mov    0x8(%ebp),%eax
   31a3d:	89 50 0c             	mov    %edx,0xc(%eax)
   31a40:	eb 7a                	jmp    31abc <out_char+0x101>
   31a42:	8b 45 08             	mov    0x8(%ebp),%eax
   31a45:	8b 50 0c             	mov    0xc(%eax),%edx
   31a48:	8b 45 08             	mov    0x8(%ebp),%eax
   31a4b:	8b 40 04             	mov    0x4(%eax),%eax
   31a4e:	39 c2                	cmp    %eax,%edx
   31a50:	76 6d                	jbe    31abf <out_char+0x104>
   31a52:	8b 45 08             	mov    0x8(%ebp),%eax
   31a55:	8b 40 0c             	mov    0xc(%eax),%eax
   31a58:	8d 50 ff             	lea    -0x1(%eax),%edx
   31a5b:	8b 45 08             	mov    0x8(%ebp),%eax
   31a5e:	89 50 0c             	mov    %edx,0xc(%eax)
   31a61:	8b 45 f4             	mov    -0xc(%ebp),%eax
   31a64:	83 e8 02             	sub    $0x2,%eax
   31a67:	c6 00 20             	movb   $0x20,(%eax)
   31a6a:	8b 45 f4             	mov    -0xc(%ebp),%eax
   31a6d:	83 e8 01             	sub    $0x1,%eax
   31a70:	c6 00 07             	movb   $0x7,(%eax)
   31a73:	eb 4a                	jmp    31abf <out_char+0x104>
   31a75:	8b 45 08             	mov    0x8(%ebp),%eax
   31a78:	8b 50 0c             	mov    0xc(%eax),%edx
   31a7b:	8b 45 08             	mov    0x8(%ebp),%eax
   31a7e:	8b 48 04             	mov    0x4(%eax),%ecx
   31a81:	8b 45 08             	mov    0x8(%ebp),%eax
   31a84:	8b 40 08             	mov    0x8(%eax),%eax
   31a87:	01 c8                	add    %ecx,%eax
   31a89:	83 e8 01             	sub    $0x1,%eax
   31a8c:	39 c2                	cmp    %eax,%edx
   31a8e:	73 32                	jae    31ac2 <out_char+0x107>
   31a90:	8b 45 f4             	mov    -0xc(%ebp),%eax
   31a93:	8d 50 01             	lea    0x1(%eax),%edx
   31a96:	89 55 f4             	mov    %edx,-0xc(%ebp)
   31a99:	0f b6 55 e4          	movzbl -0x1c(%ebp),%edx
   31a9d:	88 10                	mov    %dl,(%eax)
   31a9f:	8b 45 f4             	mov    -0xc(%ebp),%eax
   31aa2:	8d 50 01             	lea    0x1(%eax),%edx
   31aa5:	89 55 f4             	mov    %edx,-0xc(%ebp)
   31aa8:	c6 00 07             	movb   $0x7,(%eax)
   31aab:	8b 45 08             	mov    0x8(%ebp),%eax
   31aae:	8b 40 0c             	mov    0xc(%eax),%eax
   31ab1:	8d 50 01             	lea    0x1(%eax),%edx
   31ab4:	8b 45 08             	mov    0x8(%ebp),%eax
   31ab7:	89 50 0c             	mov    %edx,0xc(%eax)
   31aba:	eb 06                	jmp    31ac2 <out_char+0x107>
   31abc:	90                   	nop
   31abd:	eb 16                	jmp    31ad5 <out_char+0x11a>
   31abf:	90                   	nop
   31ac0:	eb 13                	jmp    31ad5 <out_char+0x11a>
   31ac2:	90                   	nop
   31ac3:	eb 10                	jmp    31ad5 <out_char+0x11a>
   31ac5:	83 ec 08             	sub    $0x8,%esp
   31ac8:	6a ff                	push   $0xffffffff
   31aca:	ff 75 08             	pushl  0x8(%ebp)
   31acd:	e8 69 01 00 00       	call   31c3b <scroll_screen>
   31ad2:	83 c4 10             	add    $0x10,%esp
   31ad5:	8b 45 08             	mov    0x8(%ebp),%eax
   31ad8:	8b 50 0c             	mov    0xc(%eax),%edx
   31adb:	8b 45 08             	mov    0x8(%ebp),%eax
   31ade:	8b 00                	mov    (%eax),%eax
   31ae0:	05 d0 07 00 00       	add    $0x7d0,%eax
   31ae5:	39 c2                	cmp    %eax,%edx
   31ae7:	73 dc                	jae    31ac5 <out_char+0x10a>
   31ae9:	83 ec 0c             	sub    $0xc,%esp
   31aec:	ff 75 08             	pushl  0x8(%ebp)
   31aef:	e8 06 00 00 00       	call   31afa <flush>
   31af4:	83 c4 10             	add    $0x10,%esp
   31af7:	90                   	nop
   31af8:	c9                   	leave  
   31af9:	c3                   	ret    

00031afa <flush>:
   31afa:	55                   	push   %ebp
   31afb:	89 e5                	mov    %esp,%ebp
   31afd:	83 ec 08             	sub    $0x8,%esp
   31b00:	ff 75 08             	pushl  0x8(%ebp)
   31b03:	e8 98 fe ff ff       	call   319a0 <is_current_console>
   31b08:	83 c4 04             	add    $0x4,%esp
   31b0b:	85 c0                	test   %eax,%eax
   31b0d:	74 23                	je     31b32 <flush+0x38>
   31b0f:	8b 45 08             	mov    0x8(%ebp),%eax
   31b12:	8b 40 0c             	mov    0xc(%eax),%eax
   31b15:	83 ec 0c             	sub    $0xc,%esp
   31b18:	50                   	push   %eax
   31b19:	e8 17 00 00 00       	call   31b35 <set_cursor>
   31b1e:	83 c4 10             	add    $0x10,%esp
   31b21:	8b 45 08             	mov    0x8(%ebp),%eax
   31b24:	8b 00                	mov    (%eax),%eax
   31b26:	83 ec 0c             	sub    $0xc,%esp
   31b29:	50                   	push   %eax
   31b2a:	e8 6e 00 00 00       	call   31b9d <set_video_start_addr>
   31b2f:	83 c4 10             	add    $0x10,%esp
   31b32:	90                   	nop
   31b33:	c9                   	leave  
   31b34:	c3                   	ret    

00031b35 <set_cursor>:
   31b35:	55                   	push   %ebp
   31b36:	89 e5                	mov    %esp,%ebp
   31b38:	83 ec 08             	sub    $0x8,%esp
   31b3b:	e8 bd 32 00 00       	call   34dfd <disable_int>
   31b40:	83 ec 08             	sub    $0x8,%esp
   31b43:	6a 0e                	push   $0xe
   31b45:	68 d4 03 00 00       	push   $0x3d4
   31b4a:	e8 1e 32 00 00       	call   34d6d <out_byte>
   31b4f:	83 c4 10             	add    $0x10,%esp
   31b52:	8b 45 08             	mov    0x8(%ebp),%eax
   31b55:	c1 e8 08             	shr    $0x8,%eax
   31b58:	0f b6 c0             	movzbl %al,%eax
   31b5b:	83 ec 08             	sub    $0x8,%esp
   31b5e:	50                   	push   %eax
   31b5f:	68 d5 03 00 00       	push   $0x3d5
   31b64:	e8 04 32 00 00       	call   34d6d <out_byte>
   31b69:	83 c4 10             	add    $0x10,%esp
   31b6c:	83 ec 08             	sub    $0x8,%esp
   31b6f:	6a 0f                	push   $0xf
   31b71:	68 d4 03 00 00       	push   $0x3d4
   31b76:	e8 f2 31 00 00       	call   34d6d <out_byte>
   31b7b:	83 c4 10             	add    $0x10,%esp
   31b7e:	8b 45 08             	mov    0x8(%ebp),%eax
   31b81:	0f b6 c0             	movzbl %al,%eax
   31b84:	83 ec 08             	sub    $0x8,%esp
   31b87:	50                   	push   %eax
   31b88:	68 d5 03 00 00       	push   $0x3d5
   31b8d:	e8 db 31 00 00       	call   34d6d <out_byte>
   31b92:	83 c4 10             	add    $0x10,%esp
   31b95:	e8 65 32 00 00       	call   34dff <enable_int>
   31b9a:	90                   	nop
   31b9b:	c9                   	leave  
   31b9c:	c3                   	ret    

00031b9d <set_video_start_addr>:
   31b9d:	55                   	push   %ebp
   31b9e:	89 e5                	mov    %esp,%ebp
   31ba0:	83 ec 08             	sub    $0x8,%esp
   31ba3:	e8 55 32 00 00       	call   34dfd <disable_int>
   31ba8:	83 ec 08             	sub    $0x8,%esp
   31bab:	6a 0c                	push   $0xc
   31bad:	68 d4 03 00 00       	push   $0x3d4
   31bb2:	e8 b6 31 00 00       	call   34d6d <out_byte>
   31bb7:	83 c4 10             	add    $0x10,%esp
   31bba:	8b 45 08             	mov    0x8(%ebp),%eax
   31bbd:	c1 e8 08             	shr    $0x8,%eax
   31bc0:	0f b6 c0             	movzbl %al,%eax
   31bc3:	83 ec 08             	sub    $0x8,%esp
   31bc6:	50                   	push   %eax
   31bc7:	68 d5 03 00 00       	push   $0x3d5
   31bcc:	e8 9c 31 00 00       	call   34d6d <out_byte>
   31bd1:	83 c4 10             	add    $0x10,%esp
   31bd4:	83 ec 08             	sub    $0x8,%esp
   31bd7:	6a 0d                	push   $0xd
   31bd9:	68 d4 03 00 00       	push   $0x3d4
   31bde:	e8 8a 31 00 00       	call   34d6d <out_byte>
   31be3:	83 c4 10             	add    $0x10,%esp
   31be6:	8b 45 08             	mov    0x8(%ebp),%eax
   31be9:	0f b6 c0             	movzbl %al,%eax
   31bec:	83 ec 08             	sub    $0x8,%esp
   31bef:	50                   	push   %eax
   31bf0:	68 d5 03 00 00       	push   $0x3d5
   31bf5:	e8 73 31 00 00       	call   34d6d <out_byte>
   31bfa:	83 c4 10             	add    $0x10,%esp
   31bfd:	e8 fd 31 00 00       	call   34dff <enable_int>
   31c02:	90                   	nop
   31c03:	c9                   	leave  
   31c04:	c3                   	ret    

00031c05 <select_console>:
   31c05:	55                   	push   %ebp
   31c06:	89 e5                	mov    %esp,%ebp
   31c08:	83 ec 08             	sub    $0x8,%esp
   31c0b:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
   31c0f:	78 27                	js     31c38 <select_console+0x33>
   31c11:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
   31c15:	7f 21                	jg     31c38 <select_console+0x33>
   31c17:	8b 45 08             	mov    0x8(%ebp),%eax
   31c1a:	a3 08 27 07 00       	mov    %eax,0x72708
   31c1f:	8b 45 08             	mov    0x8(%ebp),%eax
   31c22:	c1 e0 04             	shl    $0x4,%eax
   31c25:	05 40 2f 07 00       	add    $0x72f40,%eax
   31c2a:	83 ec 0c             	sub    $0xc,%esp
   31c2d:	50                   	push   %eax
   31c2e:	e8 c7 fe ff ff       	call   31afa <flush>
   31c33:	83 c4 10             	add    $0x10,%esp
   31c36:	eb 01                	jmp    31c39 <select_console+0x34>
   31c38:	90                   	nop
   31c39:	c9                   	leave  
   31c3a:	c3                   	ret    

00031c3b <scroll_screen>:
   31c3b:	55                   	push   %ebp
   31c3c:	89 e5                	mov    %esp,%ebp
   31c3e:	83 ec 08             	sub    $0x8,%esp
   31c41:	83 7d 0c 01          	cmpl   $0x1,0xc(%ebp)
   31c45:	75 1e                	jne    31c65 <scroll_screen+0x2a>
   31c47:	8b 45 08             	mov    0x8(%ebp),%eax
   31c4a:	8b 10                	mov    (%eax),%edx
   31c4c:	8b 45 08             	mov    0x8(%ebp),%eax
   31c4f:	8b 40 04             	mov    0x4(%eax),%eax
   31c52:	39 c2                	cmp    %eax,%edx
   31c54:	76 3f                	jbe    31c95 <scroll_screen+0x5a>
   31c56:	8b 45 08             	mov    0x8(%ebp),%eax
   31c59:	8b 00                	mov    (%eax),%eax
   31c5b:	8d 50 b0             	lea    -0x50(%eax),%edx
   31c5e:	8b 45 08             	mov    0x8(%ebp),%eax
   31c61:	89 10                	mov    %edx,(%eax)
   31c63:	eb 30                	jmp    31c95 <scroll_screen+0x5a>
   31c65:	83 7d 0c ff          	cmpl   $0xffffffff,0xc(%ebp)
   31c69:	75 2a                	jne    31c95 <scroll_screen+0x5a>
   31c6b:	8b 45 08             	mov    0x8(%ebp),%eax
   31c6e:	8b 00                	mov    (%eax),%eax
   31c70:	8d 88 d0 07 00 00    	lea    0x7d0(%eax),%ecx
   31c76:	8b 45 08             	mov    0x8(%ebp),%eax
   31c79:	8b 50 04             	mov    0x4(%eax),%edx
   31c7c:	8b 45 08             	mov    0x8(%ebp),%eax
   31c7f:	8b 40 08             	mov    0x8(%eax),%eax
   31c82:	01 d0                	add    %edx,%eax
   31c84:	39 c1                	cmp    %eax,%ecx
   31c86:	73 0d                	jae    31c95 <scroll_screen+0x5a>
   31c88:	8b 45 08             	mov    0x8(%ebp),%eax
   31c8b:	8b 00                	mov    (%eax),%eax
   31c8d:	8d 50 50             	lea    0x50(%eax),%edx
   31c90:	8b 45 08             	mov    0x8(%ebp),%eax
   31c93:	89 10                	mov    %edx,(%eax)
   31c95:	83 ec 0c             	sub    $0xc,%esp
   31c98:	ff 75 08             	pushl  0x8(%ebp)
   31c9b:	e8 5a fe ff ff       	call   31afa <flush>
   31ca0:	83 c4 10             	add    $0x10,%esp
   31ca3:	90                   	nop
   31ca4:	c9                   	leave  
   31ca5:	c3                   	ret    

00031ca6 <init_8259A>:
   31ca6:	55                   	push   %ebp
   31ca7:	89 e5                	mov    %esp,%ebp
   31ca9:	83 ec 18             	sub    $0x18,%esp
   31cac:	83 ec 08             	sub    $0x8,%esp
   31caf:	6a 11                	push   $0x11
   31cb1:	6a 20                	push   $0x20
   31cb3:	e8 b5 30 00 00       	call   34d6d <out_byte>
   31cb8:	83 c4 10             	add    $0x10,%esp
   31cbb:	83 ec 08             	sub    $0x8,%esp
   31cbe:	6a 11                	push   $0x11
   31cc0:	68 a0 00 00 00       	push   $0xa0
   31cc5:	e8 a3 30 00 00       	call   34d6d <out_byte>
   31cca:	83 c4 10             	add    $0x10,%esp
   31ccd:	83 ec 08             	sub    $0x8,%esp
   31cd0:	6a 20                	push   $0x20
   31cd2:	6a 21                	push   $0x21
   31cd4:	e8 94 30 00 00       	call   34d6d <out_byte>
   31cd9:	83 c4 10             	add    $0x10,%esp
   31cdc:	83 ec 08             	sub    $0x8,%esp
   31cdf:	6a 28                	push   $0x28
   31ce1:	68 a1 00 00 00       	push   $0xa1
   31ce6:	e8 82 30 00 00       	call   34d6d <out_byte>
   31ceb:	83 c4 10             	add    $0x10,%esp
   31cee:	83 ec 08             	sub    $0x8,%esp
   31cf1:	6a 04                	push   $0x4
   31cf3:	6a 21                	push   $0x21
   31cf5:	e8 73 30 00 00       	call   34d6d <out_byte>
   31cfa:	83 c4 10             	add    $0x10,%esp
   31cfd:	83 ec 08             	sub    $0x8,%esp
   31d00:	6a 02                	push   $0x2
   31d02:	68 a1 00 00 00       	push   $0xa1
   31d07:	e8 61 30 00 00       	call   34d6d <out_byte>
   31d0c:	83 c4 10             	add    $0x10,%esp
   31d0f:	83 ec 08             	sub    $0x8,%esp
   31d12:	6a 01                	push   $0x1
   31d14:	6a 21                	push   $0x21
   31d16:	e8 52 30 00 00       	call   34d6d <out_byte>
   31d1b:	83 c4 10             	add    $0x10,%esp
   31d1e:	83 ec 08             	sub    $0x8,%esp
   31d21:	6a 01                	push   $0x1
   31d23:	68 a1 00 00 00       	push   $0xa1
   31d28:	e8 40 30 00 00       	call   34d6d <out_byte>
   31d2d:	83 c4 10             	add    $0x10,%esp
   31d30:	83 ec 08             	sub    $0x8,%esp
   31d33:	68 ff 00 00 00       	push   $0xff
   31d38:	6a 21                	push   $0x21
   31d3a:	e8 2e 30 00 00       	call   34d6d <out_byte>
   31d3f:	83 c4 10             	add    $0x10,%esp
   31d42:	83 ec 08             	sub    $0x8,%esp
   31d45:	68 ff 00 00 00       	push   $0xff
   31d4a:	68 a1 00 00 00       	push   $0xa1
   31d4f:	e8 19 30 00 00       	call   34d6d <out_byte>
   31d54:	83 c4 10             	add    $0x10,%esp
   31d57:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
   31d5e:	eb 12                	jmp    31d72 <init_8259A+0xcc>
   31d60:	8b 45 f4             	mov    -0xc(%ebp),%eax
   31d63:	c7 04 85 80 2f 07 00 	movl   $0x31d7b,0x72f80(,%eax,4)
   31d6a:	7b 1d 03 00 
   31d6e:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
   31d72:	83 7d f4 0f          	cmpl   $0xf,-0xc(%ebp)
   31d76:	7e e8                	jle    31d60 <init_8259A+0xba>
   31d78:	90                   	nop
   31d79:	c9                   	leave  
   31d7a:	c3                   	ret    

00031d7b <spurious_irq>:
   31d7b:	55                   	push   %ebp
   31d7c:	89 e5                	mov    %esp,%ebp
   31d7e:	83 ec 08             	sub    $0x8,%esp
   31d81:	83 ec 0c             	sub    $0xc,%esp
   31d84:	68 70 52 03 00       	push   $0x35270
   31d89:	e8 62 2f 00 00       	call   34cf0 <disp_str>
   31d8e:	83 c4 10             	add    $0x10,%esp
   31d91:	83 ec 0c             	sub    $0xc,%esp
   31d94:	ff 75 08             	pushl  0x8(%ebp)
   31d97:	e8 99 31 00 00       	call   34f35 <disp_int>
   31d9c:	83 c4 10             	add    $0x10,%esp
   31d9f:	83 ec 0c             	sub    $0xc,%esp
   31da2:	68 7f 52 03 00       	push   $0x3527f
   31da7:	e8 44 2f 00 00       	call   34cf0 <disp_str>
   31dac:	83 c4 10             	add    $0x10,%esp
   31daf:	90                   	nop
   31db0:	c9                   	leave  
   31db1:	c3                   	ret    

00031db2 <put_irq_handler>:
   31db2:	55                   	push   %ebp
   31db3:	89 e5                	mov    %esp,%ebp
   31db5:	83 ec 08             	sub    $0x8,%esp
   31db8:	83 ec 0c             	sub    $0xc,%esp
   31dbb:	ff 75 08             	pushl  0x8(%ebp)
   31dbe:	e8 e6 2f 00 00       	call   34da9 <disable_irq>
   31dc3:	83 c4 10             	add    $0x10,%esp
   31dc6:	8b 45 08             	mov    0x8(%ebp),%eax
   31dc9:	8b 55 0c             	mov    0xc(%ebp),%edx
   31dcc:	89 14 85 80 2f 07 00 	mov    %edx,0x72f80(,%eax,4)
   31dd3:	90                   	nop
   31dd4:	c9                   	leave  
   31dd5:	c3                   	ret    

00031dd6 <init_prot>:
   31dd6:	55                   	push   %ebp
   31dd7:	89 e5                	mov    %esp,%ebp
   31dd9:	83 ec 18             	sub    $0x18,%esp
   31ddc:	e8 c5 fe ff ff       	call   31ca6 <init_8259A>
   31de1:	6a 00                	push   $0x0
   31de3:	68 34 07 03 00       	push   $0x30734
   31de8:	68 8e 00 00 00       	push   $0x8e
   31ded:	6a 00                	push   $0x0
   31def:	e8 8e 03 00 00       	call   32182 <init_idt_desc>
   31df4:	83 c4 10             	add    $0x10,%esp
   31df7:	6a 00                	push   $0x0
   31df9:	68 3a 07 03 00       	push   $0x3073a
   31dfe:	68 8e 00 00 00       	push   $0x8e
   31e03:	6a 01                	push   $0x1
   31e05:	e8 78 03 00 00       	call   32182 <init_idt_desc>
   31e0a:	83 c4 10             	add    $0x10,%esp
   31e0d:	6a 00                	push   $0x0
   31e0f:	68 40 07 03 00       	push   $0x30740
   31e14:	68 8e 00 00 00       	push   $0x8e
   31e19:	6a 02                	push   $0x2
   31e1b:	e8 62 03 00 00       	call   32182 <init_idt_desc>
   31e20:	83 c4 10             	add    $0x10,%esp
   31e23:	6a 03                	push   $0x3
   31e25:	68 46 07 03 00       	push   $0x30746
   31e2a:	68 8e 00 00 00       	push   $0x8e
   31e2f:	6a 03                	push   $0x3
   31e31:	e8 4c 03 00 00       	call   32182 <init_idt_desc>
   31e36:	83 c4 10             	add    $0x10,%esp
   31e39:	6a 03                	push   $0x3
   31e3b:	68 4c 07 03 00       	push   $0x3074c
   31e40:	68 8e 00 00 00       	push   $0x8e
   31e45:	6a 04                	push   $0x4
   31e47:	e8 36 03 00 00       	call   32182 <init_idt_desc>
   31e4c:	83 c4 10             	add    $0x10,%esp
   31e4f:	6a 00                	push   $0x0
   31e51:	68 52 07 03 00       	push   $0x30752
   31e56:	68 8e 00 00 00       	push   $0x8e
   31e5b:	6a 05                	push   $0x5
   31e5d:	e8 20 03 00 00       	call   32182 <init_idt_desc>
   31e62:	83 c4 10             	add    $0x10,%esp
   31e65:	6a 00                	push   $0x0
   31e67:	68 58 07 03 00       	push   $0x30758
   31e6c:	68 8e 00 00 00       	push   $0x8e
   31e71:	6a 06                	push   $0x6
   31e73:	e8 0a 03 00 00       	call   32182 <init_idt_desc>
   31e78:	83 c4 10             	add    $0x10,%esp
   31e7b:	6a 00                	push   $0x0
   31e7d:	68 5e 07 03 00       	push   $0x3075e
   31e82:	68 8e 00 00 00       	push   $0x8e
   31e87:	6a 07                	push   $0x7
   31e89:	e8 f4 02 00 00       	call   32182 <init_idt_desc>
   31e8e:	83 c4 10             	add    $0x10,%esp
   31e91:	6a 00                	push   $0x0
   31e93:	68 64 07 03 00       	push   $0x30764
   31e98:	68 8e 00 00 00       	push   $0x8e
   31e9d:	6a 08                	push   $0x8
   31e9f:	e8 de 02 00 00       	call   32182 <init_idt_desc>
   31ea4:	83 c4 10             	add    $0x10,%esp
   31ea7:	6a 00                	push   $0x0
   31ea9:	68 68 07 03 00       	push   $0x30768
   31eae:	68 8e 00 00 00       	push   $0x8e
   31eb3:	6a 09                	push   $0x9
   31eb5:	e8 c8 02 00 00       	call   32182 <init_idt_desc>
   31eba:	83 c4 10             	add    $0x10,%esp
   31ebd:	6a 00                	push   $0x0
   31ebf:	68 6e 07 03 00       	push   $0x3076e
   31ec4:	68 8e 00 00 00       	push   $0x8e
   31ec9:	6a 0a                	push   $0xa
   31ecb:	e8 b2 02 00 00       	call   32182 <init_idt_desc>
   31ed0:	83 c4 10             	add    $0x10,%esp
   31ed3:	6a 00                	push   $0x0
   31ed5:	68 72 07 03 00       	push   $0x30772
   31eda:	68 8e 00 00 00       	push   $0x8e
   31edf:	6a 0b                	push   $0xb
   31ee1:	e8 9c 02 00 00       	call   32182 <init_idt_desc>
   31ee6:	83 c4 10             	add    $0x10,%esp
   31ee9:	6a 00                	push   $0x0
   31eeb:	68 76 07 03 00       	push   $0x30776
   31ef0:	68 8e 00 00 00       	push   $0x8e
   31ef5:	6a 0c                	push   $0xc
   31ef7:	e8 86 02 00 00       	call   32182 <init_idt_desc>
   31efc:	83 c4 10             	add    $0x10,%esp
   31eff:	6a 00                	push   $0x0
   31f01:	68 7a 07 03 00       	push   $0x3077a
   31f06:	68 8e 00 00 00       	push   $0x8e
   31f0b:	6a 0d                	push   $0xd
   31f0d:	e8 70 02 00 00       	call   32182 <init_idt_desc>
   31f12:	83 c4 10             	add    $0x10,%esp
   31f15:	6a 00                	push   $0x0
   31f17:	68 7e 07 03 00       	push   $0x3077e
   31f1c:	68 8e 00 00 00       	push   $0x8e
   31f21:	6a 0e                	push   $0xe
   31f23:	e8 5a 02 00 00       	call   32182 <init_idt_desc>
   31f28:	83 c4 10             	add    $0x10,%esp
   31f2b:	6a 00                	push   $0x0
   31f2d:	68 82 07 03 00       	push   $0x30782
   31f32:	68 8e 00 00 00       	push   $0x8e
   31f37:	6a 10                	push   $0x10
   31f39:	e8 44 02 00 00       	call   32182 <init_idt_desc>
   31f3e:	83 c4 10             	add    $0x10,%esp
   31f41:	6a 00                	push   $0x0
   31f43:	68 40 04 03 00       	push   $0x30440
   31f48:	68 8e 00 00 00       	push   $0x8e
   31f4d:	6a 20                	push   $0x20
   31f4f:	e8 2e 02 00 00       	call   32182 <init_idt_desc>
   31f54:	83 c4 10             	add    $0x10,%esp
   31f57:	6a 00                	push   $0x0
   31f59:	68 70 04 03 00       	push   $0x30470
   31f5e:	68 8e 00 00 00       	push   $0x8e
   31f63:	6a 21                	push   $0x21
   31f65:	e8 18 02 00 00       	call   32182 <init_idt_desc>
   31f6a:	83 c4 10             	add    $0x10,%esp
   31f6d:	6a 00                	push   $0x0
   31f6f:	68 a0 04 03 00       	push   $0x304a0
   31f74:	68 8e 00 00 00       	push   $0x8e
   31f79:	6a 22                	push   $0x22
   31f7b:	e8 02 02 00 00       	call   32182 <init_idt_desc>
   31f80:	83 c4 10             	add    $0x10,%esp
   31f83:	6a 00                	push   $0x0
   31f85:	68 d0 04 03 00       	push   $0x304d0
   31f8a:	68 8e 00 00 00       	push   $0x8e
   31f8f:	6a 23                	push   $0x23
   31f91:	e8 ec 01 00 00       	call   32182 <init_idt_desc>
   31f96:	83 c4 10             	add    $0x10,%esp
   31f99:	6a 00                	push   $0x0
   31f9b:	68 00 05 03 00       	push   $0x30500
   31fa0:	68 8e 00 00 00       	push   $0x8e
   31fa5:	6a 24                	push   $0x24
   31fa7:	e8 d6 01 00 00       	call   32182 <init_idt_desc>
   31fac:	83 c4 10             	add    $0x10,%esp
   31faf:	6a 00                	push   $0x0
   31fb1:	68 30 05 03 00       	push   $0x30530
   31fb6:	68 8e 00 00 00       	push   $0x8e
   31fbb:	6a 25                	push   $0x25
   31fbd:	e8 c0 01 00 00       	call   32182 <init_idt_desc>
   31fc2:	83 c4 10             	add    $0x10,%esp
   31fc5:	6a 00                	push   $0x0
   31fc7:	68 60 05 03 00       	push   $0x30560
   31fcc:	68 8e 00 00 00       	push   $0x8e
   31fd1:	6a 26                	push   $0x26
   31fd3:	e8 aa 01 00 00       	call   32182 <init_idt_desc>
   31fd8:	83 c4 10             	add    $0x10,%esp
   31fdb:	6a 00                	push   $0x0
   31fdd:	68 90 05 03 00       	push   $0x30590
   31fe2:	68 8e 00 00 00       	push   $0x8e
   31fe7:	6a 27                	push   $0x27
   31fe9:	e8 94 01 00 00       	call   32182 <init_idt_desc>
   31fee:	83 c4 10             	add    $0x10,%esp
   31ff1:	6a 00                	push   $0x0
   31ff3:	68 c0 05 03 00       	push   $0x305c0
   31ff8:	68 8e 00 00 00       	push   $0x8e
   31ffd:	6a 28                	push   $0x28
   31fff:	e8 7e 01 00 00       	call   32182 <init_idt_desc>
   32004:	83 c4 10             	add    $0x10,%esp
   32007:	6a 00                	push   $0x0
   32009:	68 f0 05 03 00       	push   $0x305f0
   3200e:	68 8e 00 00 00       	push   $0x8e
   32013:	6a 29                	push   $0x29
   32015:	e8 68 01 00 00       	call   32182 <init_idt_desc>
   3201a:	83 c4 10             	add    $0x10,%esp
   3201d:	6a 00                	push   $0x0
   3201f:	68 20 06 03 00       	push   $0x30620
   32024:	68 8e 00 00 00       	push   $0x8e
   32029:	6a 2a                	push   $0x2a
   3202b:	e8 52 01 00 00       	call   32182 <init_idt_desc>
   32030:	83 c4 10             	add    $0x10,%esp
   32033:	6a 00                	push   $0x0
   32035:	68 50 06 03 00       	push   $0x30650
   3203a:	68 8e 00 00 00       	push   $0x8e
   3203f:	6a 2b                	push   $0x2b
   32041:	e8 3c 01 00 00       	call   32182 <init_idt_desc>
   32046:	83 c4 10             	add    $0x10,%esp
   32049:	6a 00                	push   $0x0
   3204b:	68 80 06 03 00       	push   $0x30680
   32050:	68 8e 00 00 00       	push   $0x8e
   32055:	6a 2c                	push   $0x2c
   32057:	e8 26 01 00 00       	call   32182 <init_idt_desc>
   3205c:	83 c4 10             	add    $0x10,%esp
   3205f:	6a 00                	push   $0x0
   32061:	68 b0 06 03 00       	push   $0x306b0
   32066:	68 8e 00 00 00       	push   $0x8e
   3206b:	6a 2d                	push   $0x2d
   3206d:	e8 10 01 00 00       	call   32182 <init_idt_desc>
   32072:	83 c4 10             	add    $0x10,%esp
   32075:	6a 00                	push   $0x0
   32077:	68 e0 06 03 00       	push   $0x306e0
   3207c:	68 8e 00 00 00       	push   $0x8e
   32081:	6a 2e                	push   $0x2e
   32083:	e8 fa 00 00 00       	call   32182 <init_idt_desc>
   32088:	83 c4 10             	add    $0x10,%esp
   3208b:	6a 00                	push   $0x0
   3208d:	68 10 07 03 00       	push   $0x30710
   32092:	68 8e 00 00 00       	push   $0x8e
   32097:	6a 2f                	push   $0x2f
   32099:	e8 e4 00 00 00       	call   32182 <init_idt_desc>
   3209e:	83 c4 10             	add    $0x10,%esp
   320a1:	6a 03                	push   $0x3
   320a3:	68 cb 07 03 00       	push   $0x307cb
   320a8:	68 8e 00 00 00       	push   $0x8e
   320ad:	68 90 00 00 00       	push   $0x90
   320b2:	e8 cb 00 00 00       	call   32182 <init_idt_desc>
   320b7:	83 c4 10             	add    $0x10,%esp
   320ba:	83 ec 04             	sub    $0x4,%esp
   320bd:	6a 68                	push   $0x68
   320bf:	6a 00                	push   $0x0
   320c1:	68 a0 26 07 00       	push   $0x726a0
   320c6:	e8 0e 2f 00 00       	call   34fd9 <memset>
   320cb:	83 c4 10             	add    $0x10,%esp
   320ce:	c7 05 a8 26 07 00 10 	movl   $0x10,0x726a8
   320d5:	00 00 00 
   320d8:	83 ec 0c             	sub    $0xc,%esp
   320db:	6a 10                	push   $0x10
   320dd:	e8 11 01 00 00       	call   321f3 <seg2phys>
   320e2:	83 c4 10             	add    $0x10,%esp
   320e5:	ba a0 26 07 00       	mov    $0x726a0,%edx
   320ea:	01 d0                	add    %edx,%eax
   320ec:	68 89 00 00 00       	push   $0x89
   320f1:	6a 67                	push   $0x67
   320f3:	50                   	push   %eax
   320f4:	68 80 16 07 00       	push   $0x71680
   320f9:	e8 44 01 00 00       	call   32242 <init_descriptor>
   320fe:	83 c4 10             	add    $0x10,%esp
   32101:	66 c7 05 06 27 07 00 	movw   $0x68,0x72706
   32108:	68 00 
   3210a:	c7 45 f0 e0 2f 07 00 	movl   $0x72fe0,-0x10(%ebp)
   32111:	66 c7 45 ee 28 00    	movw   $0x28,-0x12(%ebp)
   32117:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
   3211e:	eb 59                	jmp    32179 <init_prot+0x3a3>
   32120:	83 ec 0c             	sub    $0xc,%esp
   32123:	6a 10                	push   $0x10
   32125:	e8 c9 00 00 00       	call   321f3 <seg2phys>
   3212a:	83 c4 10             	add    $0x10,%esp
   3212d:	89 c2                	mov    %eax,%edx
   3212f:	8b 45 f4             	mov    -0xc(%ebp),%eax
   32132:	69 c0 98 00 00 00    	imul   $0x98,%eax,%eax
   32138:	83 c0 40             	add    $0x40,%eax
   3213b:	05 e0 2f 07 00       	add    $0x72fe0,%eax
   32140:	83 c0 0a             	add    $0xa,%eax
   32143:	01 c2                	add    %eax,%edx
   32145:	0f b7 45 ee          	movzwl -0x12(%ebp),%eax
   32149:	66 c1 e8 03          	shr    $0x3,%ax
   3214d:	0f b7 c0             	movzwl %ax,%eax
   32150:	c1 e0 03             	shl    $0x3,%eax
   32153:	05 60 16 07 00       	add    $0x71660,%eax
   32158:	68 82 00 00 00       	push   $0x82
   3215d:	6a 0f                	push   $0xf
   3215f:	52                   	push   %edx
   32160:	50                   	push   %eax
   32161:	e8 dc 00 00 00       	call   32242 <init_descriptor>
   32166:	83 c4 10             	add    $0x10,%esp
   32169:	81 45 f0 98 00 00 00 	addl   $0x98,-0x10(%ebp)
   32170:	66 83 45 ee 08       	addw   $0x8,-0x12(%ebp)
   32175:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
   32179:	83 7d f4 06          	cmpl   $0x6,-0xc(%ebp)
   3217d:	7e a1                	jle    32120 <init_prot+0x34a>
   3217f:	90                   	nop
   32180:	c9                   	leave  
   32181:	c3                   	ret    

00032182 <init_idt_desc>:
   32182:	55                   	push   %ebp
   32183:	89 e5                	mov    %esp,%ebp
   32185:	83 ec 1c             	sub    $0x1c,%esp
   32188:	8b 4d 08             	mov    0x8(%ebp),%ecx
   3218b:	8b 55 0c             	mov    0xc(%ebp),%edx
   3218e:	8b 45 14             	mov    0x14(%ebp),%eax
   32191:	88 4d ec             	mov    %cl,-0x14(%ebp)
   32194:	88 55 e8             	mov    %dl,-0x18(%ebp)
   32197:	88 45 e4             	mov    %al,-0x1c(%ebp)
   3219a:	0f b6 45 ec          	movzbl -0x14(%ebp),%eax
   3219e:	c1 e0 03             	shl    $0x3,%eax
   321a1:	05 20 27 07 00       	add    $0x72720,%eax
   321a6:	89 45 fc             	mov    %eax,-0x4(%ebp)
   321a9:	8b 45 10             	mov    0x10(%ebp),%eax
   321ac:	89 45 f8             	mov    %eax,-0x8(%ebp)
   321af:	8b 45 f8             	mov    -0x8(%ebp),%eax
   321b2:	89 c2                	mov    %eax,%edx
   321b4:	8b 45 fc             	mov    -0x4(%ebp),%eax
   321b7:	66 89 10             	mov    %dx,(%eax)
   321ba:	8b 45 fc             	mov    -0x4(%ebp),%eax
   321bd:	66 c7 40 02 08 00    	movw   $0x8,0x2(%eax)
   321c3:	8b 45 fc             	mov    -0x4(%ebp),%eax
   321c6:	c6 40 04 00          	movb   $0x0,0x4(%eax)
   321ca:	0f b6 45 e4          	movzbl -0x1c(%ebp),%eax
   321ce:	c1 e0 05             	shl    $0x5,%eax
   321d1:	89 c2                	mov    %eax,%edx
   321d3:	0f b6 45 e8          	movzbl -0x18(%ebp),%eax
   321d7:	09 d0                	or     %edx,%eax
   321d9:	89 c2                	mov    %eax,%edx
   321db:	8b 45 fc             	mov    -0x4(%ebp),%eax
   321de:	88 50 05             	mov    %dl,0x5(%eax)
   321e1:	8b 45 f8             	mov    -0x8(%ebp),%eax
   321e4:	c1 e8 10             	shr    $0x10,%eax
   321e7:	89 c2                	mov    %eax,%edx
   321e9:	8b 45 fc             	mov    -0x4(%ebp),%eax
   321ec:	66 89 50 06          	mov    %dx,0x6(%eax)
   321f0:	90                   	nop
   321f1:	c9                   	leave  
   321f2:	c3                   	ret    

000321f3 <seg2phys>:
   321f3:	55                   	push   %ebp
   321f4:	89 e5                	mov    %esp,%ebp
   321f6:	83 ec 14             	sub    $0x14,%esp
   321f9:	8b 45 08             	mov    0x8(%ebp),%eax
   321fc:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
   32200:	0f b7 45 ec          	movzwl -0x14(%ebp),%eax
   32204:	66 c1 e8 03          	shr    $0x3,%ax
   32208:	0f b7 c0             	movzwl %ax,%eax
   3220b:	c1 e0 03             	shl    $0x3,%eax
   3220e:	05 60 16 07 00       	add    $0x71660,%eax
   32213:	89 45 fc             	mov    %eax,-0x4(%ebp)
   32216:	8b 45 fc             	mov    -0x4(%ebp),%eax
   32219:	0f b6 40 07          	movzbl 0x7(%eax),%eax
   3221d:	0f b6 c0             	movzbl %al,%eax
   32220:	c1 e0 18             	shl    $0x18,%eax
   32223:	89 c2                	mov    %eax,%edx
   32225:	8b 45 fc             	mov    -0x4(%ebp),%eax
   32228:	0f b6 40 04          	movzbl 0x4(%eax),%eax
   3222c:	0f b6 c0             	movzbl %al,%eax
   3222f:	c1 e0 10             	shl    $0x10,%eax
   32232:	09 c2                	or     %eax,%edx
   32234:	8b 45 fc             	mov    -0x4(%ebp),%eax
   32237:	0f b7 40 02          	movzwl 0x2(%eax),%eax
   3223b:	0f b7 c0             	movzwl %ax,%eax
   3223e:	09 d0                	or     %edx,%eax
   32240:	c9                   	leave  
   32241:	c3                   	ret    

00032242 <init_descriptor>:
   32242:	55                   	push   %ebp
   32243:	89 e5                	mov    %esp,%ebp
   32245:	83 ec 04             	sub    $0x4,%esp
   32248:	8b 45 14             	mov    0x14(%ebp),%eax
   3224b:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
   3224f:	8b 45 10             	mov    0x10(%ebp),%eax
   32252:	89 c2                	mov    %eax,%edx
   32254:	8b 45 08             	mov    0x8(%ebp),%eax
   32257:	66 89 10             	mov    %dx,(%eax)
   3225a:	8b 45 0c             	mov    0xc(%ebp),%eax
   3225d:	89 c2                	mov    %eax,%edx
   3225f:	8b 45 08             	mov    0x8(%ebp),%eax
   32262:	66 89 50 02          	mov    %dx,0x2(%eax)
   32266:	8b 45 0c             	mov    0xc(%ebp),%eax
   32269:	c1 e8 10             	shr    $0x10,%eax
   3226c:	89 c2                	mov    %eax,%edx
   3226e:	8b 45 08             	mov    0x8(%ebp),%eax
   32271:	88 50 04             	mov    %dl,0x4(%eax)
   32274:	0f b7 45 fc          	movzwl -0x4(%ebp),%eax
   32278:	89 c2                	mov    %eax,%edx
   3227a:	8b 45 08             	mov    0x8(%ebp),%eax
   3227d:	88 50 05             	mov    %dl,0x5(%eax)
   32280:	8b 45 10             	mov    0x10(%ebp),%eax
   32283:	c1 e8 10             	shr    $0x10,%eax
   32286:	83 e0 0f             	and    $0xf,%eax
   32289:	89 c2                	mov    %eax,%edx
   3228b:	0f b7 45 fc          	movzwl -0x4(%ebp),%eax
   3228f:	66 c1 e8 08          	shr    $0x8,%ax
   32293:	83 e0 f0             	and    $0xfffffff0,%eax
   32296:	09 c2                	or     %eax,%edx
   32298:	8b 45 08             	mov    0x8(%ebp),%eax
   3229b:	88 50 06             	mov    %dl,0x6(%eax)
   3229e:	8b 45 0c             	mov    0xc(%ebp),%eax
   322a1:	c1 e8 18             	shr    $0x18,%eax
   322a4:	89 c2                	mov    %eax,%edx
   322a6:	8b 45 08             	mov    0x8(%ebp),%eax
   322a9:	88 50 07             	mov    %dl,0x7(%eax)
   322ac:	90                   	nop
   322ad:	c9                   	leave  
   322ae:	c3                   	ret    

000322af <exception_handler>:
   322af:	55                   	push   %ebp
   322b0:	89 e5                	mov    %esp,%ebp
   322b2:	57                   	push   %edi
   322b3:	56                   	push   %esi
   322b4:	53                   	push   %ebx
   322b5:	81 ec 1c 05 00 00    	sub    $0x51c,%esp
   322bb:	c7 45 e0 74 00 00 00 	movl   $0x74,-0x20(%ebp)
   322c2:	8d 85 e0 fa ff ff    	lea    -0x520(%ebp),%eax
   322c8:	bb e0 52 03 00       	mov    $0x352e0,%ebx
   322cd:	ba 40 01 00 00       	mov    $0x140,%edx
   322d2:	89 c7                	mov    %eax,%edi
   322d4:	89 de                	mov    %ebx,%esi
   322d6:	89 d1                	mov    %edx,%ecx
   322d8:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
   322da:	c7 05 0c 27 07 00 00 	movl   $0x0,0x7270c
   322e1:	00 00 00 
   322e4:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
   322eb:	eb 14                	jmp    32301 <exception_handler+0x52>
   322ed:	83 ec 0c             	sub    $0xc,%esp
   322f0:	68 a0 52 03 00       	push   $0x352a0
   322f5:	e8 f6 29 00 00       	call   34cf0 <disp_str>
   322fa:	83 c4 10             	add    $0x10,%esp
   322fd:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
   32301:	81 7d e4 8f 01 00 00 	cmpl   $0x18f,-0x1c(%ebp)
   32308:	7e e3                	jle    322ed <exception_handler+0x3e>
   3230a:	c7 05 0c 27 07 00 00 	movl   $0x0,0x7270c
   32311:	00 00 00 
   32314:	83 ec 08             	sub    $0x8,%esp
   32317:	ff 75 e0             	pushl  -0x20(%ebp)
   3231a:	68 a2 52 03 00       	push   $0x352a2
   3231f:	e8 0a 2a 00 00       	call   34d2e <disp_color_str>
   32324:	83 c4 10             	add    $0x10,%esp
   32327:	8d 85 e0 fa ff ff    	lea    -0x520(%ebp),%eax
   3232d:	8b 55 08             	mov    0x8(%ebp),%edx
   32330:	c1 e2 06             	shl    $0x6,%edx
   32333:	01 d0                	add    %edx,%eax
   32335:	83 ec 08             	sub    $0x8,%esp
   32338:	ff 75 e0             	pushl  -0x20(%ebp)
   3233b:	50                   	push   %eax
   3233c:	e8 ed 29 00 00       	call   34d2e <disp_color_str>
   32341:	83 c4 10             	add    $0x10,%esp
   32344:	83 ec 08             	sub    $0x8,%esp
   32347:	ff 75 e0             	pushl  -0x20(%ebp)
   3234a:	68 b2 52 03 00       	push   $0x352b2
   3234f:	e8 da 29 00 00       	call   34d2e <disp_color_str>
   32354:	83 c4 10             	add    $0x10,%esp
   32357:	83 ec 08             	sub    $0x8,%esp
   3235a:	ff 75 e0             	pushl  -0x20(%ebp)
   3235d:	68 b5 52 03 00       	push   $0x352b5
   32362:	e8 c7 29 00 00       	call   34d2e <disp_color_str>
   32367:	83 c4 10             	add    $0x10,%esp
   3236a:	83 ec 0c             	sub    $0xc,%esp
   3236d:	ff 75 18             	pushl  0x18(%ebp)
   32370:	e8 c0 2b 00 00       	call   34f35 <disp_int>
   32375:	83 c4 10             	add    $0x10,%esp
   32378:	83 ec 08             	sub    $0x8,%esp
   3237b:	ff 75 e0             	pushl  -0x20(%ebp)
   3237e:	68 bd 52 03 00       	push   $0x352bd
   32383:	e8 a6 29 00 00       	call   34d2e <disp_color_str>
   32388:	83 c4 10             	add    $0x10,%esp
   3238b:	83 ec 0c             	sub    $0xc,%esp
   3238e:	ff 75 14             	pushl  0x14(%ebp)
   32391:	e8 9f 2b 00 00       	call   34f35 <disp_int>
   32396:	83 c4 10             	add    $0x10,%esp
   32399:	83 ec 08             	sub    $0x8,%esp
   3239c:	ff 75 e0             	pushl  -0x20(%ebp)
   3239f:	68 c1 52 03 00       	push   $0x352c1
   323a4:	e8 85 29 00 00       	call   34d2e <disp_color_str>
   323a9:	83 c4 10             	add    $0x10,%esp
   323ac:	83 ec 0c             	sub    $0xc,%esp
   323af:	ff 75 10             	pushl  0x10(%ebp)
   323b2:	e8 7e 2b 00 00       	call   34f35 <disp_int>
   323b7:	83 c4 10             	add    $0x10,%esp
   323ba:	83 7d 0c ff          	cmpl   $0xffffffff,0xc(%ebp)
   323be:	74 21                	je     323e1 <exception_handler+0x132>
   323c0:	83 ec 08             	sub    $0x8,%esp
   323c3:	ff 75 e0             	pushl  -0x20(%ebp)
   323c6:	68 c6 52 03 00       	push   $0x352c6
   323cb:	e8 5e 29 00 00       	call   34d2e <disp_color_str>
   323d0:	83 c4 10             	add    $0x10,%esp
   323d3:	83 ec 0c             	sub    $0xc,%esp
   323d6:	ff 75 0c             	pushl  0xc(%ebp)
   323d9:	e8 57 2b 00 00       	call   34f35 <disp_int>
   323de:	83 c4 10             	add    $0x10,%esp
   323e1:	90                   	nop
   323e2:	8d 65 f4             	lea    -0xc(%ebp),%esp
   323e5:	5b                   	pop    %ebx
   323e6:	5e                   	pop    %esi
   323e7:	5f                   	pop    %edi
   323e8:	5d                   	pop    %ebp
   323e9:	c3                   	ret    

000323ea <schedule>:
   323ea:	55                   	push   %ebp
   323eb:	89 e5                	mov    %esp,%ebp
   323ed:	83 ec 10             	sub    $0x10,%esp
   323f0:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
   323f7:	eb 74                	jmp    3246d <schedule+0x83>
   323f9:	c7 45 fc e0 2f 07 00 	movl   $0x72fe0,-0x4(%ebp)
   32400:	eb 2d                	jmp    3242f <schedule+0x45>
   32402:	8b 45 fc             	mov    -0x4(%ebp),%eax
   32405:	8b 40 78             	mov    0x78(%eax),%eax
   32408:	85 c0                	test   %eax,%eax
   3240a:	75 1c                	jne    32428 <schedule+0x3e>
   3240c:	8b 45 fc             	mov    -0x4(%ebp),%eax
   3240f:	8b 40 5c             	mov    0x5c(%eax),%eax
   32412:	39 45 f8             	cmp    %eax,-0x8(%ebp)
   32415:	7d 11                	jge    32428 <schedule+0x3e>
   32417:	8b 45 fc             	mov    -0x4(%ebp),%eax
   3241a:	8b 40 5c             	mov    0x5c(%eax),%eax
   3241d:	89 45 f8             	mov    %eax,-0x8(%ebp)
   32420:	8b 45 fc             	mov    -0x4(%ebp),%eax
   32423:	a3 c0 2f 07 00       	mov    %eax,0x72fc0
   32428:	81 45 fc 98 00 00 00 	addl   $0x98,-0x4(%ebp)
   3242f:	81 7d fc 70 33 07 00 	cmpl   $0x73370,-0x4(%ebp)
   32436:	76 ca                	jbe    32402 <schedule+0x18>
   32438:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
   3243c:	75 2f                	jne    3246d <schedule+0x83>
   3243e:	c7 45 fc e0 2f 07 00 	movl   $0x72fe0,-0x4(%ebp)
   32445:	eb 1d                	jmp    32464 <schedule+0x7a>
   32447:	8b 45 fc             	mov    -0x4(%ebp),%eax
   3244a:	8b 40 78             	mov    0x78(%eax),%eax
   3244d:	85 c0                	test   %eax,%eax
   3244f:	75 0c                	jne    3245d <schedule+0x73>
   32451:	8b 45 fc             	mov    -0x4(%ebp),%eax
   32454:	8b 50 60             	mov    0x60(%eax),%edx
   32457:	8b 45 fc             	mov    -0x4(%ebp),%eax
   3245a:	89 50 5c             	mov    %edx,0x5c(%eax)
   3245d:	81 45 fc 98 00 00 00 	addl   $0x98,-0x4(%ebp)
   32464:	81 7d fc 70 33 07 00 	cmpl   $0x73370,-0x4(%ebp)
   3246b:	76 da                	jbe    32447 <schedule+0x5d>
   3246d:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
   32471:	74 86                	je     323f9 <schedule+0xf>
   32473:	90                   	nop
   32474:	c9                   	leave  
   32475:	c3                   	ret    

00032476 <sys_sendrec>:
   32476:	55                   	push   %ebp
   32477:	89 e5                	mov    %esp,%ebp
   32479:	83 ec 18             	sub    $0x18,%esp
   3247c:	a1 40 16 07 00       	mov    0x71640,%eax
   32481:	85 c0                	test   %eax,%eax
   32483:	74 19                	je     3249e <sys_sendrec+0x28>
   32485:	6a 45                	push   $0x45
   32487:	68 e0 57 03 00       	push   $0x357e0
   3248c:	68 e0 57 03 00       	push   $0x357e0
   32491:	68 ee 57 03 00       	push   $0x357ee
   32496:	e8 a8 2b 00 00       	call   35043 <assertion_failure>
   3249b:	83 c4 10             	add    $0x10,%esp
   3249e:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
   324a2:	78 06                	js     324aa <sys_sendrec+0x34>
   324a4:	83 7d 0c 06          	cmpl   $0x6,0xc(%ebp)
   324a8:	7e 25                	jle    324cf <sys_sendrec+0x59>
   324aa:	83 7d 0c 11          	cmpl   $0x11,0xc(%ebp)
   324ae:	74 1f                	je     324cf <sys_sendrec+0x59>
   324b0:	83 7d 0c f6          	cmpl   $0xfffffff6,0xc(%ebp)
   324b4:	74 19                	je     324cf <sys_sendrec+0x59>
   324b6:	6a 48                	push   $0x48
   324b8:	68 e0 57 03 00       	push   $0x357e0
   324bd:	68 e0 57 03 00       	push   $0x357e0
   324c2:	68 00 58 03 00       	push   $0x35800
   324c7:	e8 77 2b 00 00       	call   35043 <assertion_failure>
   324cc:	83 c4 10             	add    $0x10,%esp
   324cf:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
   324d6:	8b 45 14             	mov    0x14(%ebp),%eax
   324d9:	2d e0 2f 07 00       	sub    $0x72fe0,%eax
   324de:	c1 f8 03             	sar    $0x3,%eax
   324e1:	69 c0 1b ca 6b 28    	imul   $0x286bca1b,%eax,%eax
   324e7:	89 45 f0             	mov    %eax,-0x10(%ebp)
   324ea:	83 ec 08             	sub    $0x8,%esp
   324ed:	ff 75 10             	pushl  0x10(%ebp)
   324f0:	ff 75 f0             	pushl  -0x10(%ebp)
   324f3:	e8 a3 01 00 00       	call   3269b <va2la>
   324f8:	83 c4 10             	add    $0x10,%esp
   324fb:	89 45 ec             	mov    %eax,-0x14(%ebp)
   324fe:	8b 45 ec             	mov    -0x14(%ebp),%eax
   32501:	8b 55 f0             	mov    -0x10(%ebp),%edx
   32504:	89 10                	mov    %edx,(%eax)
   32506:	8b 45 ec             	mov    -0x14(%ebp),%eax
   32509:	8b 00                	mov    (%eax),%eax
   3250b:	39 45 0c             	cmp    %eax,0xc(%ebp)
   3250e:	75 19                	jne    32529 <sys_sendrec+0xb3>
   32510:	6a 4f                	push   $0x4f
   32512:	68 e0 57 03 00       	push   $0x357e0
   32517:	68 e0 57 03 00       	push   $0x357e0
   3251c:	68 5e 58 03 00       	push   $0x3585e
   32521:	e8 1d 2b 00 00       	call   35043 <assertion_failure>
   32526:	83 c4 10             	add    $0x10,%esp
   32529:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
   3252d:	75 22                	jne    32551 <sys_sendrec+0xdb>
   3252f:	83 ec 04             	sub    $0x4,%esp
   32532:	ff 75 10             	pushl  0x10(%ebp)
   32535:	ff 75 0c             	pushl  0xc(%ebp)
   32538:	ff 75 14             	pushl  0x14(%ebp)
   3253b:	e8 3e 03 00 00       	call   3287e <msg_send>
   32540:	83 c4 10             	add    $0x10,%esp
   32543:	89 45 f4             	mov    %eax,-0xc(%ebp)
   32546:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
   3254a:	74 41                	je     3258d <sys_sendrec+0x117>
   3254c:	8b 45 f4             	mov    -0xc(%ebp),%eax
   3254f:	eb 41                	jmp    32592 <sys_sendrec+0x11c>
   32551:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
   32555:	75 22                	jne    32579 <sys_sendrec+0x103>
   32557:	83 ec 04             	sub    $0x4,%esp
   3255a:	ff 75 10             	pushl  0x10(%ebp)
   3255d:	ff 75 0c             	pushl  0xc(%ebp)
   32560:	ff 75 14             	pushl  0x14(%ebp)
   32563:	e8 58 07 00 00       	call   32cc0 <msg_receive>
   32568:	83 c4 10             	add    $0x10,%esp
   3256b:	89 45 f4             	mov    %eax,-0xc(%ebp)
   3256e:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
   32572:	74 19                	je     3258d <sys_sendrec+0x117>
   32574:	8b 45 f4             	mov    -0xc(%ebp),%eax
   32577:	eb 19                	jmp    32592 <sys_sendrec+0x11c>
   32579:	6a 02                	push   $0x2
   3257b:	6a 01                	push   $0x1
   3257d:	ff 75 08             	pushl  0x8(%ebp)
   32580:	68 78 58 03 00       	push   $0x35878
   32585:	e8 4b e6 ff ff       	call   30bd5 <panic>
   3258a:	83 c4 10             	add    $0x10,%esp
   3258d:	b8 00 00 00 00       	mov    $0x0,%eax
   32592:	c9                   	leave  
   32593:	c3                   	ret    

00032594 <send_recv>:
   32594:	55                   	push   %ebp
   32595:	89 e5                	mov    %esp,%ebp
   32597:	83 ec 18             	sub    $0x18,%esp
   3259a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
   325a1:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
   325a5:	75 12                	jne    325b9 <send_recv+0x25>
   325a7:	83 ec 04             	sub    $0x4,%esp
   325aa:	6a 30                	push   $0x30
   325ac:	6a 00                	push   $0x0
   325ae:	ff 75 10             	pushl  0x10(%ebp)
   325b1:	e8 23 2a 00 00       	call   34fd9 <memset>
   325b6:	83 c4 10             	add    $0x10,%esp
   325b9:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
   325bd:	7e 59                	jle    32618 <send_recv+0x84>
   325bf:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
   325c3:	7e 3a                	jle    325ff <send_recv+0x6b>
   325c5:	83 7d 08 03          	cmpl   $0x3,0x8(%ebp)
   325c9:	75 4d                	jne    32618 <send_recv+0x84>
   325cb:	83 ec 04             	sub    $0x4,%esp
   325ce:	ff 75 10             	pushl  0x10(%ebp)
   325d1:	ff 75 0c             	pushl  0xc(%ebp)
   325d4:	6a 01                	push   $0x1
   325d6:	e8 35 e2 ff ff       	call   30810 <sendrec>
   325db:	83 c4 10             	add    $0x10,%esp
   325de:	89 45 f4             	mov    %eax,-0xc(%ebp)
   325e1:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
   325e5:	75 61                	jne    32648 <send_recv+0xb4>
   325e7:	83 ec 04             	sub    $0x4,%esp
   325ea:	ff 75 10             	pushl  0x10(%ebp)
   325ed:	ff 75 0c             	pushl  0xc(%ebp)
   325f0:	6a 02                	push   $0x2
   325f2:	e8 19 e2 ff ff       	call   30810 <sendrec>
   325f7:	83 c4 10             	add    $0x10,%esp
   325fa:	89 45 f4             	mov    %eax,-0xc(%ebp)
   325fd:	eb 49                	jmp    32648 <send_recv+0xb4>
   325ff:	83 ec 04             	sub    $0x4,%esp
   32602:	ff 75 10             	pushl  0x10(%ebp)
   32605:	ff 75 0c             	pushl  0xc(%ebp)
   32608:	ff 75 08             	pushl  0x8(%ebp)
   3260b:	e8 00 e2 ff ff       	call   30810 <sendrec>
   32610:	83 c4 10             	add    $0x10,%esp
   32613:	89 45 f4             	mov    %eax,-0xc(%ebp)
   32616:	eb 34                	jmp    3264c <send_recv+0xb8>
   32618:	83 7d 08 03          	cmpl   $0x3,0x8(%ebp)
   3261c:	74 2d                	je     3264b <send_recv+0xb7>
   3261e:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
   32622:	74 27                	je     3264b <send_recv+0xb7>
   32624:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
   32628:	74 21                	je     3264b <send_recv+0xb7>
   3262a:	68 8b 00 00 00       	push   $0x8b
   3262f:	68 e0 57 03 00       	push   $0x357e0
   32634:	68 e0 57 03 00       	push   $0x357e0
   32639:	68 b4 58 03 00       	push   $0x358b4
   3263e:	e8 00 2a 00 00       	call   35043 <assertion_failure>
   32643:	83 c4 10             	add    $0x10,%esp
   32646:	eb 03                	jmp    3264b <send_recv+0xb7>
   32648:	90                   	nop
   32649:	eb 01                	jmp    3264c <send_recv+0xb8>
   3264b:	90                   	nop
   3264c:	8b 45 f4             	mov    -0xc(%ebp),%eax
   3264f:	c9                   	leave  
   32650:	c3                   	ret    

00032651 <ldt_seg_linear>:
   32651:	55                   	push   %ebp
   32652:	89 e5                	mov    %esp,%ebp
   32654:	83 ec 10             	sub    $0x10,%esp
   32657:	8b 45 0c             	mov    0xc(%ebp),%eax
   3265a:	83 c0 08             	add    $0x8,%eax
   3265d:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
   32664:	8b 45 08             	mov    0x8(%ebp),%eax
   32667:	01 d0                	add    %edx,%eax
   32669:	83 c0 0a             	add    $0xa,%eax
   3266c:	89 45 fc             	mov    %eax,-0x4(%ebp)
   3266f:	8b 45 fc             	mov    -0x4(%ebp),%eax
   32672:	0f b6 40 07          	movzbl 0x7(%eax),%eax
   32676:	0f b6 c0             	movzbl %al,%eax
   32679:	c1 e0 18             	shl    $0x18,%eax
   3267c:	89 c2                	mov    %eax,%edx
   3267e:	8b 45 fc             	mov    -0x4(%ebp),%eax
   32681:	0f b6 40 04          	movzbl 0x4(%eax),%eax
   32685:	0f b6 c0             	movzbl %al,%eax
   32688:	c1 e0 10             	shl    $0x10,%eax
   3268b:	09 c2                	or     %eax,%edx
   3268d:	8b 45 fc             	mov    -0x4(%ebp),%eax
   32690:	0f b7 40 02          	movzwl 0x2(%eax),%eax
   32694:	0f b7 c0             	movzwl %ax,%eax
   32697:	09 d0                	or     %edx,%eax
   32699:	c9                   	leave  
   3269a:	c3                   	ret    

0003269b <va2la>:
   3269b:	55                   	push   %ebp
   3269c:	89 e5                	mov    %esp,%ebp
   3269e:	83 ec 18             	sub    $0x18,%esp
   326a1:	8b 45 08             	mov    0x8(%ebp),%eax
   326a4:	69 c0 98 00 00 00    	imul   $0x98,%eax,%eax
   326aa:	05 e0 2f 07 00       	add    $0x72fe0,%eax
   326af:	89 45 f4             	mov    %eax,-0xc(%ebp)
   326b2:	6a 01                	push   $0x1
   326b4:	ff 75 f4             	pushl  -0xc(%ebp)
   326b7:	e8 95 ff ff ff       	call   32651 <ldt_seg_linear>
   326bc:	83 c4 08             	add    $0x8,%esp
   326bf:	89 45 f0             	mov    %eax,-0x10(%ebp)
   326c2:	8b 55 0c             	mov    0xc(%ebp),%edx
   326c5:	8b 45 f0             	mov    -0x10(%ebp),%eax
   326c8:	01 d0                	add    %edx,%eax
   326ca:	89 45 ec             	mov    %eax,-0x14(%ebp)
   326cd:	83 7d 08 06          	cmpl   $0x6,0x8(%ebp)
   326d1:	7f 24                	jg     326f7 <va2la+0x5c>
   326d3:	8b 45 0c             	mov    0xc(%ebp),%eax
   326d6:	39 45 ec             	cmp    %eax,-0x14(%ebp)
   326d9:	74 1c                	je     326f7 <va2la+0x5c>
   326db:	68 b8 00 00 00       	push   $0xb8
   326e0:	68 e0 57 03 00       	push   $0x357e0
   326e5:	68 e0 57 03 00       	push   $0x357e0
   326ea:	68 f6 58 03 00       	push   $0x358f6
   326ef:	e8 4f 29 00 00       	call   35043 <assertion_failure>
   326f4:	83 c4 10             	add    $0x10,%esp
   326f7:	8b 45 ec             	mov    -0x14(%ebp),%eax
   326fa:	c9                   	leave  
   326fb:	c3                   	ret    

000326fc <reset_msg>:
   326fc:	55                   	push   %ebp
   326fd:	89 e5                	mov    %esp,%ebp
   326ff:	83 ec 08             	sub    $0x8,%esp
   32702:	83 ec 04             	sub    $0x4,%esp
   32705:	6a 30                	push   $0x30
   32707:	6a 00                	push   $0x0
   32709:	ff 75 08             	pushl  0x8(%ebp)
   3270c:	e8 c8 28 00 00       	call   34fd9 <memset>
   32711:	83 c4 10             	add    $0x10,%esp
   32714:	90                   	nop
   32715:	c9                   	leave  
   32716:	c3                   	ret    

00032717 <block>:
   32717:	55                   	push   %ebp
   32718:	89 e5                	mov    %esp,%ebp
   3271a:	83 ec 08             	sub    $0x8,%esp
   3271d:	8b 45 08             	mov    0x8(%ebp),%eax
   32720:	8b 40 78             	mov    0x78(%eax),%eax
   32723:	85 c0                	test   %eax,%eax
   32725:	75 1c                	jne    32743 <block+0x2c>
   32727:	68 d9 00 00 00       	push   $0xd9
   3272c:	68 e0 57 03 00       	push   $0x357e0
   32731:	68 e0 57 03 00       	push   $0x357e0
   32736:	68 04 59 03 00       	push   $0x35904
   3273b:	e8 03 29 00 00       	call   35043 <assertion_failure>
   32740:	83 c4 10             	add    $0x10,%esp
   32743:	e8 a2 fc ff ff       	call   323ea <schedule>
   32748:	90                   	nop
   32749:	c9                   	leave  
   3274a:	c3                   	ret    

0003274b <unblock>:
   3274b:	55                   	push   %ebp
   3274c:	89 e5                	mov    %esp,%ebp
   3274e:	83 ec 08             	sub    $0x8,%esp
   32751:	8b 45 08             	mov    0x8(%ebp),%eax
   32754:	8b 40 78             	mov    0x78(%eax),%eax
   32757:	85 c0                	test   %eax,%eax
   32759:	74 1c                	je     32777 <unblock+0x2c>
   3275b:	68 e8 00 00 00       	push   $0xe8
   32760:	68 e0 57 03 00       	push   $0x357e0
   32765:	68 e0 57 03 00       	push   $0x357e0
   3276a:	68 0f 59 03 00       	push   $0x3590f
   3276f:	e8 cf 28 00 00       	call   35043 <assertion_failure>
   32774:	83 c4 10             	add    $0x10,%esp
   32777:	90                   	nop
   32778:	c9                   	leave  
   32779:	c3                   	ret    

0003277a <deadlock>:
   3277a:	55                   	push   %ebp
   3277b:	89 e5                	mov    %esp,%ebp
   3277d:	83 ec 18             	sub    $0x18,%esp
   32780:	8b 45 0c             	mov    0xc(%ebp),%eax
   32783:	69 c0 98 00 00 00    	imul   $0x98,%eax,%eax
   32789:	05 e0 2f 07 00       	add    $0x72fe0,%eax
   3278e:	89 45 f4             	mov    %eax,-0xc(%ebp)
   32791:	8b 45 f4             	mov    -0xc(%ebp),%eax
   32794:	8b 40 78             	mov    0x78(%eax),%eax
   32797:	83 e0 02             	and    $0x2,%eax
   3279a:	85 c0                	test   %eax,%eax
   3279c:	0f 84 d4 00 00 00    	je     32876 <deadlock+0xfc>
   327a2:	8b 45 f4             	mov    -0xc(%ebp),%eax
   327a5:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
   327ab:	39 45 08             	cmp    %eax,0x8(%ebp)
   327ae:	0f 85 a6 00 00 00    	jne    3285a <deadlock+0xe0>
   327b4:	8b 45 0c             	mov    0xc(%ebp),%eax
   327b7:	69 c0 98 00 00 00    	imul   $0x98,%eax,%eax
   327bd:	05 e0 2f 07 00       	add    $0x72fe0,%eax
   327c2:	89 45 f4             	mov    %eax,-0xc(%ebp)
   327c5:	8b 45 f4             	mov    -0xc(%ebp),%eax
   327c8:	83 c0 68             	add    $0x68,%eax
   327cb:	83 ec 08             	sub    $0x8,%esp
   327ce:	50                   	push   %eax
   327cf:	68 1f 59 03 00       	push   $0x3591f
   327d4:	e8 b4 21 00 00       	call   3498d <printf>
   327d9:	83 c4 10             	add    $0x10,%esp
   327dc:	8b 45 f4             	mov    -0xc(%ebp),%eax
   327df:	8b 40 7c             	mov    0x7c(%eax),%eax
   327e2:	85 c0                	test   %eax,%eax
   327e4:	75 1c                	jne    32802 <deadlock+0x88>
   327e6:	68 04 01 00 00       	push   $0x104
   327eb:	68 e0 57 03 00       	push   $0x357e0
   327f0:	68 e0 57 03 00       	push   $0x357e0
   327f5:	68 25 59 03 00       	push   $0x35925
   327fa:	e8 44 28 00 00       	call   35043 <assertion_failure>
   327ff:	83 c4 10             	add    $0x10,%esp
   32802:	8b 45 f4             	mov    -0xc(%ebp),%eax
   32805:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
   3280b:	69 c0 98 00 00 00    	imul   $0x98,%eax,%eax
   32811:	05 e0 2f 07 00       	add    $0x72fe0,%eax
   32816:	89 45 f4             	mov    %eax,-0xc(%ebp)
   32819:	8b 45 f4             	mov    -0xc(%ebp),%eax
   3281c:	83 c0 68             	add    $0x68,%eax
   3281f:	83 ec 08             	sub    $0x8,%esp
   32822:	50                   	push   %eax
   32823:	68 2e 59 03 00       	push   $0x3592e
   32828:	e8 60 21 00 00       	call   3498d <printf>
   3282d:	83 c4 10             	add    $0x10,%esp
   32830:	8b 45 08             	mov    0x8(%ebp),%eax
   32833:	69 c0 98 00 00 00    	imul   $0x98,%eax,%eax
   32839:	05 e0 2f 07 00       	add    $0x72fe0,%eax
   3283e:	39 45 f4             	cmp    %eax,-0xc(%ebp)
   32841:	75 99                	jne    327dc <deadlock+0x62>
   32843:	83 ec 0c             	sub    $0xc,%esp
   32846:	68 33 59 03 00       	push   $0x35933
   3284b:	e8 3d 21 00 00       	call   3498d <printf>
   32850:	83 c4 10             	add    $0x10,%esp
   32853:	b8 01 00 00 00       	mov    $0x1,%eax
   32858:	eb 22                	jmp    3287c <deadlock+0x102>
   3285a:	8b 45 f4             	mov    -0xc(%ebp),%eax
   3285d:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
   32863:	69 c0 98 00 00 00    	imul   $0x98,%eax,%eax
   32869:	05 e0 2f 07 00       	add    $0x72fe0,%eax
   3286e:	89 45 f4             	mov    %eax,-0xc(%ebp)
   32871:	e9 1b ff ff ff       	jmp    32791 <deadlock+0x17>
   32876:	90                   	nop
   32877:	b8 00 00 00 00       	mov    $0x0,%eax
   3287c:	c9                   	leave  
   3287d:	c3                   	ret    

0003287e <msg_send>:
   3287e:	55                   	push   %ebp
   3287f:	89 e5                	mov    %esp,%ebp
   32881:	53                   	push   %ebx
   32882:	83 ec 14             	sub    $0x14,%esp
   32885:	8b 45 08             	mov    0x8(%ebp),%eax
   32888:	89 45 f0             	mov    %eax,-0x10(%ebp)
   3288b:	8b 45 0c             	mov    0xc(%ebp),%eax
   3288e:	69 c0 98 00 00 00    	imul   $0x98,%eax,%eax
   32894:	05 e0 2f 07 00       	add    $0x72fe0,%eax
   32899:	89 45 ec             	mov    %eax,-0x14(%ebp)
   3289c:	8b 45 f0             	mov    -0x10(%ebp),%eax
   3289f:	2d e0 2f 07 00       	sub    $0x72fe0,%eax
   328a4:	c1 f8 03             	sar    $0x3,%eax
   328a7:	69 c0 1b ca 6b 28    	imul   $0x286bca1b,%eax,%eax
   328ad:	39 45 0c             	cmp    %eax,0xc(%ebp)
   328b0:	75 1c                	jne    328ce <msg_send+0x50>
   328b2:	68 28 01 00 00       	push   $0x128
   328b7:	68 e0 57 03 00       	push   $0x357e0
   328bc:	68 e0 57 03 00       	push   $0x357e0
   328c1:	68 37 59 03 00       	push   $0x35937
   328c6:	e8 78 27 00 00       	call   35043 <assertion_failure>
   328cb:	83 c4 10             	add    $0x10,%esp
   328ce:	8b 45 f0             	mov    -0x10(%ebp),%eax
   328d1:	2d e0 2f 07 00       	sub    $0x72fe0,%eax
   328d6:	c1 f8 03             	sar    $0x3,%eax
   328d9:	69 c0 1b ca 6b 28    	imul   $0x286bca1b,%eax,%eax
   328df:	83 ec 08             	sub    $0x8,%esp
   328e2:	ff 75 0c             	pushl  0xc(%ebp)
   328e5:	50                   	push   %eax
   328e6:	e8 8f fe ff ff       	call   3277a <deadlock>
   328eb:	83 c4 10             	add    $0x10,%esp
   328ee:	85 c0                	test   %eax,%eax
   328f0:	74 1e                	je     32910 <msg_send+0x92>
   328f2:	8b 45 ec             	mov    -0x14(%ebp),%eax
   328f5:	8d 50 68             	lea    0x68(%eax),%edx
   328f8:	8b 45 f0             	mov    -0x10(%ebp),%eax
   328fb:	83 c0 68             	add    $0x68,%eax
   328fe:	83 ec 04             	sub    $0x4,%esp
   32901:	52                   	push   %edx
   32902:	50                   	push   %eax
   32903:	68 50 59 03 00       	push   $0x35950
   32908:	e8 c8 e2 ff ff       	call   30bd5 <panic>
   3290d:	83 c4 10             	add    $0x10,%esp
   32910:	8b 45 ec             	mov    -0x14(%ebp),%eax
   32913:	8b 40 78             	mov    0x78(%eax),%eax
   32916:	83 e0 04             	and    $0x4,%eax
   32919:	85 c0                	test   %eax,%eax
   3291b:	0f 84 3e 02 00 00    	je     32b5f <msg_send+0x2e1>
   32921:	8b 45 ec             	mov    -0x14(%ebp),%eax
   32924:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
   3292a:	8b 55 f0             	mov    -0x10(%ebp),%edx
   3292d:	81 ea e0 2f 07 00    	sub    $0x72fe0,%edx
   32933:	c1 fa 03             	sar    $0x3,%edx
   32936:	69 d2 1b ca 6b 28    	imul   $0x286bca1b,%edx,%edx
   3293c:	39 d0                	cmp    %edx,%eax
   3293e:	74 12                	je     32952 <msg_send+0xd4>
   32940:	8b 45 ec             	mov    -0x14(%ebp),%eax
   32943:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
   32949:	83 f8 11             	cmp    $0x11,%eax
   3294c:	0f 85 0d 02 00 00    	jne    32b5f <msg_send+0x2e1>
   32952:	8b 45 ec             	mov    -0x14(%ebp),%eax
   32955:	8b 40 7c             	mov    0x7c(%eax),%eax
   32958:	85 c0                	test   %eax,%eax
   3295a:	75 1c                	jne    32978 <msg_send+0xfa>
   3295c:	68 32 01 00 00       	push   $0x132
   32961:	68 e0 57 03 00       	push   $0x357e0
   32966:	68 e0 57 03 00       	push   $0x357e0
   3296b:	68 64 59 03 00       	push   $0x35964
   32970:	e8 ce 26 00 00       	call   35043 <assertion_failure>
   32975:	83 c4 10             	add    $0x10,%esp
   32978:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
   3297c:	75 1c                	jne    3299a <msg_send+0x11c>
   3297e:	68 33 01 00 00       	push   $0x133
   32983:	68 e0 57 03 00       	push   $0x357e0
   32988:	68 e0 57 03 00       	push   $0x357e0
   3298d:	68 72 59 03 00       	push   $0x35972
   32992:	e8 ac 26 00 00       	call   35043 <assertion_failure>
   32997:	83 c4 10             	add    $0x10,%esp
   3299a:	8b 45 f0             	mov    -0x10(%ebp),%eax
   3299d:	2d e0 2f 07 00       	sub    $0x72fe0,%eax
   329a2:	c1 f8 03             	sar    $0x3,%eax
   329a5:	69 c0 1b ca 6b 28    	imul   $0x286bca1b,%eax,%eax
   329ab:	83 ec 08             	sub    $0x8,%esp
   329ae:	ff 75 10             	pushl  0x10(%ebp)
   329b1:	50                   	push   %eax
   329b2:	e8 e4 fc ff ff       	call   3269b <va2la>
   329b7:	83 c4 10             	add    $0x10,%esp
   329ba:	89 c3                	mov    %eax,%ebx
   329bc:	8b 45 ec             	mov    -0x14(%ebp),%eax
   329bf:	8b 40 7c             	mov    0x7c(%eax),%eax
   329c2:	83 ec 08             	sub    $0x8,%esp
   329c5:	50                   	push   %eax
   329c6:	ff 75 0c             	pushl  0xc(%ebp)
   329c9:	e8 cd fc ff ff       	call   3269b <va2la>
   329ce:	83 c4 10             	add    $0x10,%esp
   329d1:	83 ec 04             	sub    $0x4,%esp
   329d4:	6a 30                	push   $0x30
   329d6:	53                   	push   %ebx
   329d7:	50                   	push   %eax
   329d8:	e8 d3 25 00 00       	call   34fb0 <memcpy>
   329dd:	83 c4 10             	add    $0x10,%esp
   329e0:	8b 45 ec             	mov    -0x14(%ebp),%eax
   329e3:	c7 40 7c 00 00 00 00 	movl   $0x0,0x7c(%eax)
   329ea:	8b 45 ec             	mov    -0x14(%ebp),%eax
   329ed:	8b 40 78             	mov    0x78(%eax),%eax
   329f0:	83 e0 fb             	and    $0xfffffffb,%eax
   329f3:	89 c2                	mov    %eax,%edx
   329f5:	8b 45 ec             	mov    -0x14(%ebp),%eax
   329f8:	89 50 78             	mov    %edx,0x78(%eax)
   329fb:	8b 45 ec             	mov    -0x14(%ebp),%eax
   329fe:	c7 80 80 00 00 00 1b 	movl   $0x1b,0x80(%eax)
   32a05:	00 00 00 
   32a08:	83 ec 0c             	sub    $0xc,%esp
   32a0b:	ff 75 ec             	pushl  -0x14(%ebp)
   32a0e:	e8 38 fd ff ff       	call   3274b <unblock>
   32a13:	83 c4 10             	add    $0x10,%esp
   32a16:	8b 45 ec             	mov    -0x14(%ebp),%eax
   32a19:	8b 40 78             	mov    0x78(%eax),%eax
   32a1c:	85 c0                	test   %eax,%eax
   32a1e:	74 1c                	je     32a3c <msg_send+0x1be>
   32a20:	68 3d 01 00 00       	push   $0x13d
   32a25:	68 e0 57 03 00       	push   $0x357e0
   32a2a:	68 e0 57 03 00       	push   $0x357e0
   32a2f:	68 74 59 03 00       	push   $0x35974
   32a34:	e8 0a 26 00 00       	call   35043 <assertion_failure>
   32a39:	83 c4 10             	add    $0x10,%esp
   32a3c:	8b 45 ec             	mov    -0x14(%ebp),%eax
   32a3f:	8b 40 7c             	mov    0x7c(%eax),%eax
   32a42:	85 c0                	test   %eax,%eax
   32a44:	74 1c                	je     32a62 <msg_send+0x1e4>
   32a46:	68 3e 01 00 00       	push   $0x13e
   32a4b:	68 e0 57 03 00       	push   $0x357e0
   32a50:	68 e0 57 03 00       	push   $0x357e0
   32a55:	68 89 59 03 00       	push   $0x35989
   32a5a:	e8 e4 25 00 00       	call   35043 <assertion_failure>
   32a5f:	83 c4 10             	add    $0x10,%esp
   32a62:	8b 45 ec             	mov    -0x14(%ebp),%eax
   32a65:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
   32a6b:	83 f8 1b             	cmp    $0x1b,%eax
   32a6e:	74 1c                	je     32a8c <msg_send+0x20e>
   32a70:	68 3f 01 00 00       	push   $0x13f
   32a75:	68 e0 57 03 00       	push   $0x357e0
   32a7a:	68 e0 57 03 00       	push   $0x357e0
   32a7f:	68 9c 59 03 00       	push   $0x3599c
   32a84:	e8 ba 25 00 00       	call   35043 <assertion_failure>
   32a89:	83 c4 10             	add    $0x10,%esp
   32a8c:	8b 45 ec             	mov    -0x14(%ebp),%eax
   32a8f:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
   32a95:	83 f8 1b             	cmp    $0x1b,%eax
   32a98:	74 1c                	je     32ab6 <msg_send+0x238>
   32a9a:	68 40 01 00 00       	push   $0x140
   32a9f:	68 e0 57 03 00       	push   $0x357e0
   32aa4:	68 e0 57 03 00       	push   $0x357e0
   32aa9:	68 ba 59 03 00       	push   $0x359ba
   32aae:	e8 90 25 00 00       	call   35043 <assertion_failure>
   32ab3:	83 c4 10             	add    $0x10,%esp
   32ab6:	8b 45 f0             	mov    -0x10(%ebp),%eax
   32ab9:	8b 40 78             	mov    0x78(%eax),%eax
   32abc:	85 c0                	test   %eax,%eax
   32abe:	74 1c                	je     32adc <msg_send+0x25e>
   32ac0:	68 41 01 00 00       	push   $0x141
   32ac5:	68 e0 57 03 00       	push   $0x357e0
   32aca:	68 e0 57 03 00       	push   $0x357e0
   32acf:	68 d6 59 03 00       	push   $0x359d6
   32ad4:	e8 6a 25 00 00       	call   35043 <assertion_failure>
   32ad9:	83 c4 10             	add    $0x10,%esp
   32adc:	8b 45 f0             	mov    -0x10(%ebp),%eax
   32adf:	8b 40 7c             	mov    0x7c(%eax),%eax
   32ae2:	85 c0                	test   %eax,%eax
   32ae4:	74 1c                	je     32b02 <msg_send+0x284>
   32ae6:	68 42 01 00 00       	push   $0x142
   32aeb:	68 e0 57 03 00       	push   $0x357e0
   32af0:	68 e0 57 03 00       	push   $0x357e0
   32af5:	68 eb 59 03 00       	push   $0x359eb
   32afa:	e8 44 25 00 00       	call   35043 <assertion_failure>
   32aff:	83 c4 10             	add    $0x10,%esp
   32b02:	8b 45 f0             	mov    -0x10(%ebp),%eax
   32b05:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
   32b0b:	83 f8 1b             	cmp    $0x1b,%eax
   32b0e:	74 1c                	je     32b2c <msg_send+0x2ae>
   32b10:	68 43 01 00 00       	push   $0x143
   32b15:	68 e0 57 03 00       	push   $0x357e0
   32b1a:	68 e0 57 03 00       	push   $0x357e0
   32b1f:	68 fe 59 03 00       	push   $0x359fe
   32b24:	e8 1a 25 00 00       	call   35043 <assertion_failure>
   32b29:	83 c4 10             	add    $0x10,%esp
   32b2c:	8b 45 f0             	mov    -0x10(%ebp),%eax
   32b2f:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
   32b35:	83 f8 1b             	cmp    $0x1b,%eax
   32b38:	0f 84 78 01 00 00    	je     32cb6 <msg_send+0x438>
   32b3e:	68 44 01 00 00       	push   $0x144
   32b43:	68 e0 57 03 00       	push   $0x357e0
   32b48:	68 e0 57 03 00       	push   $0x357e0
   32b4d:	68 1c 5a 03 00       	push   $0x35a1c
   32b52:	e8 ec 24 00 00       	call   35043 <assertion_failure>
   32b57:	83 c4 10             	add    $0x10,%esp
   32b5a:	e9 57 01 00 00       	jmp    32cb6 <msg_send+0x438>
   32b5f:	8b 45 f0             	mov    -0x10(%ebp),%eax
   32b62:	8b 40 78             	mov    0x78(%eax),%eax
   32b65:	83 c8 02             	or     $0x2,%eax
   32b68:	89 c2                	mov    %eax,%edx
   32b6a:	8b 45 f0             	mov    -0x10(%ebp),%eax
   32b6d:	89 50 78             	mov    %edx,0x78(%eax)
   32b70:	8b 45 f0             	mov    -0x10(%ebp),%eax
   32b73:	8b 40 78             	mov    0x78(%eax),%eax
   32b76:	83 f8 02             	cmp    $0x2,%eax
   32b79:	74 1c                	je     32b97 <msg_send+0x319>
   32b7b:	68 48 01 00 00       	push   $0x148
   32b80:	68 e0 57 03 00       	push   $0x357e0
   32b85:	68 e0 57 03 00       	push   $0x357e0
   32b8a:	68 38 5a 03 00       	push   $0x35a38
   32b8f:	e8 af 24 00 00       	call   35043 <assertion_failure>
   32b94:	83 c4 10             	add    $0x10,%esp
   32b97:	8b 45 f0             	mov    -0x10(%ebp),%eax
   32b9a:	8b 55 0c             	mov    0xc(%ebp),%edx
   32b9d:	89 90 84 00 00 00    	mov    %edx,0x84(%eax)
   32ba3:	8b 45 f0             	mov    -0x10(%ebp),%eax
   32ba6:	8b 55 10             	mov    0x10(%ebp),%edx
   32ba9:	89 50 7c             	mov    %edx,0x7c(%eax)
   32bac:	8b 45 ec             	mov    -0x14(%ebp),%eax
   32baf:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
   32bb5:	85 c0                	test   %eax,%eax
   32bb7:	74 35                	je     32bee <msg_send+0x370>
   32bb9:	8b 45 ec             	mov    -0x14(%ebp),%eax
   32bbc:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
   32bc2:	89 45 f4             	mov    %eax,-0xc(%ebp)
   32bc5:	eb 0c                	jmp    32bd3 <msg_send+0x355>
   32bc7:	8b 45 f4             	mov    -0xc(%ebp),%eax
   32bca:	8b 80 90 00 00 00    	mov    0x90(%eax),%eax
   32bd0:	89 45 f4             	mov    %eax,-0xc(%ebp)
   32bd3:	8b 45 f4             	mov    -0xc(%ebp),%eax
   32bd6:	8b 80 90 00 00 00    	mov    0x90(%eax),%eax
   32bdc:	85 c0                	test   %eax,%eax
   32bde:	75 e7                	jne    32bc7 <msg_send+0x349>
   32be0:	8b 45 f4             	mov    -0xc(%ebp),%eax
   32be3:	8b 55 f0             	mov    -0x10(%ebp),%edx
   32be6:	89 90 90 00 00 00    	mov    %edx,0x90(%eax)
   32bec:	eb 0c                	jmp    32bfa <msg_send+0x37c>
   32bee:	8b 45 ec             	mov    -0x14(%ebp),%eax
   32bf1:	8b 55 f0             	mov    -0x10(%ebp),%edx
   32bf4:	89 90 8c 00 00 00    	mov    %edx,0x8c(%eax)
   32bfa:	8b 45 f0             	mov    -0x10(%ebp),%eax
   32bfd:	c7 80 90 00 00 00 00 	movl   $0x0,0x90(%eax)
   32c04:	00 00 00 
   32c07:	83 ec 0c             	sub    $0xc,%esp
   32c0a:	ff 75 f0             	pushl  -0x10(%ebp)
   32c0d:	e8 05 fb ff ff       	call   32717 <block>
   32c12:	83 c4 10             	add    $0x10,%esp
   32c15:	8b 45 f0             	mov    -0x10(%ebp),%eax
   32c18:	8b 40 78             	mov    0x78(%eax),%eax
   32c1b:	83 f8 02             	cmp    $0x2,%eax
   32c1e:	74 1c                	je     32c3c <msg_send+0x3be>
   32c20:	68 5b 01 00 00       	push   $0x15b
   32c25:	68 e0 57 03 00       	push   $0x357e0
   32c2a:	68 e0 57 03 00       	push   $0x357e0
   32c2f:	68 38 5a 03 00       	push   $0x35a38
   32c34:	e8 0a 24 00 00       	call   35043 <assertion_failure>
   32c39:	83 c4 10             	add    $0x10,%esp
   32c3c:	8b 45 f0             	mov    -0x10(%ebp),%eax
   32c3f:	8b 40 7c             	mov    0x7c(%eax),%eax
   32c42:	85 c0                	test   %eax,%eax
   32c44:	75 1c                	jne    32c62 <msg_send+0x3e4>
   32c46:	68 5c 01 00 00       	push   $0x15c
   32c4b:	68 e0 57 03 00       	push   $0x357e0
   32c50:	68 e0 57 03 00       	push   $0x357e0
   32c55:	68 53 5a 03 00       	push   $0x35a53
   32c5a:	e8 e4 23 00 00       	call   35043 <assertion_failure>
   32c5f:	83 c4 10             	add    $0x10,%esp
   32c62:	8b 45 f0             	mov    -0x10(%ebp),%eax
   32c65:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
   32c6b:	83 f8 1b             	cmp    $0x1b,%eax
   32c6e:	74 1c                	je     32c8c <msg_send+0x40e>
   32c70:	68 5d 01 00 00       	push   $0x15d
   32c75:	68 e0 57 03 00       	push   $0x357e0
   32c7a:	68 e0 57 03 00       	push   $0x357e0
   32c7f:	68 fe 59 03 00       	push   $0x359fe
   32c84:	e8 ba 23 00 00       	call   35043 <assertion_failure>
   32c89:	83 c4 10             	add    $0x10,%esp
   32c8c:	8b 45 f0             	mov    -0x10(%ebp),%eax
   32c8f:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
   32c95:	39 45 0c             	cmp    %eax,0xc(%ebp)
   32c98:	74 1c                	je     32cb6 <msg_send+0x438>
   32c9a:	68 5e 01 00 00       	push   $0x15e
   32c9f:	68 e0 57 03 00       	push   $0x357e0
   32ca4:	68 e0 57 03 00       	push   $0x357e0
   32ca9:	68 66 5a 03 00       	push   $0x35a66
   32cae:	e8 90 23 00 00       	call   35043 <assertion_failure>
   32cb3:	83 c4 10             	add    $0x10,%esp
   32cb6:	b8 00 00 00 00       	mov    $0x0,%eax
   32cbb:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   32cbe:	c9                   	leave  
   32cbf:	c3                   	ret    

00032cc0 <msg_receive>:
   32cc0:	55                   	push   %ebp
   32cc1:	89 e5                	mov    %esp,%ebp
   32cc3:	53                   	push   %ebx
   32cc4:	83 ec 54             	sub    $0x54,%esp
   32cc7:	8b 45 08             	mov    0x8(%ebp),%eax
   32cca:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   32ccd:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
   32cd4:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
   32cdb:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
   32ce2:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   32ce5:	2d e0 2f 07 00       	sub    $0x72fe0,%eax
   32cea:	c1 f8 03             	sar    $0x3,%eax
   32ced:	69 c0 1b ca 6b 28    	imul   $0x286bca1b,%eax,%eax
   32cf3:	39 45 0c             	cmp    %eax,0xc(%ebp)
   32cf6:	75 1c                	jne    32d14 <msg_receive+0x54>
   32cf8:	68 7f 01 00 00       	push   $0x17f
   32cfd:	68 e0 57 03 00       	push   $0x357e0
   32d02:	68 e0 57 03 00       	push   $0x357e0
   32d07:	68 80 5a 03 00       	push   $0x35a80
   32d0c:	e8 32 23 00 00       	call   35043 <assertion_failure>
   32d11:	83 c4 10             	add    $0x10,%esp
   32d14:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   32d17:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
   32d1d:	85 c0                	test   %eax,%eax
   32d1f:	0f 84 39 01 00 00    	je     32e5e <msg_receive+0x19e>
   32d25:	83 7d 0c 11          	cmpl   $0x11,0xc(%ebp)
   32d29:	74 0a                	je     32d35 <msg_receive+0x75>
   32d2b:	83 7d 0c f6          	cmpl   $0xfffffff6,0xc(%ebp)
   32d2f:	0f 85 29 01 00 00    	jne    32e5e <msg_receive+0x19e>
   32d35:	83 ec 0c             	sub    $0xc,%esp
   32d38:	8d 45 b4             	lea    -0x4c(%ebp),%eax
   32d3b:	50                   	push   %eax
   32d3c:	e8 bb f9 ff ff       	call   326fc <reset_msg>
   32d41:	83 c4 10             	add    $0x10,%esp
   32d44:	c7 45 b4 f6 ff ff ff 	movl   $0xfffffff6,-0x4c(%ebp)
   32d4b:	c7 45 b8 01 00 00 00 	movl   $0x1,-0x48(%ebp)
   32d52:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
   32d56:	75 1c                	jne    32d74 <msg_receive+0xb4>
   32d58:	68 8c 01 00 00       	push   $0x18c
   32d5d:	68 e0 57 03 00       	push   $0x357e0
   32d62:	68 e0 57 03 00       	push   $0x357e0
   32d67:	68 72 59 03 00       	push   $0x35972
   32d6c:	e8 d2 22 00 00       	call   35043 <assertion_failure>
   32d71:	83 c4 10             	add    $0x10,%esp
   32d74:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   32d77:	2d e0 2f 07 00       	sub    $0x72fe0,%eax
   32d7c:	c1 f8 03             	sar    $0x3,%eax
   32d7f:	69 c0 1b ca 6b 28    	imul   $0x286bca1b,%eax,%eax
   32d85:	83 ec 08             	sub    $0x8,%esp
   32d88:	ff 75 10             	pushl  0x10(%ebp)
   32d8b:	50                   	push   %eax
   32d8c:	e8 0a f9 ff ff       	call   3269b <va2la>
   32d91:	83 c4 10             	add    $0x10,%esp
   32d94:	89 c2                	mov    %eax,%edx
   32d96:	83 ec 04             	sub    $0x4,%esp
   32d99:	6a 30                	push   $0x30
   32d9b:	8d 45 b4             	lea    -0x4c(%ebp),%eax
   32d9e:	50                   	push   %eax
   32d9f:	52                   	push   %edx
   32da0:	e8 0b 22 00 00       	call   34fb0 <memcpy>
   32da5:	83 c4 10             	add    $0x10,%esp
   32da8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   32dab:	c7 80 88 00 00 00 00 	movl   $0x0,0x88(%eax)
   32db2:	00 00 00 
   32db5:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   32db8:	8b 40 78             	mov    0x78(%eax),%eax
   32dbb:	85 c0                	test   %eax,%eax
   32dbd:	74 1c                	je     32ddb <msg_receive+0x11b>
   32dbf:	68 93 01 00 00       	push   $0x193
   32dc4:	68 e0 57 03 00       	push   $0x357e0
   32dc9:	68 e0 57 03 00       	push   $0x357e0
   32dce:	68 a4 5a 03 00       	push   $0x35aa4
   32dd3:	e8 6b 22 00 00       	call   35043 <assertion_failure>
   32dd8:	83 c4 10             	add    $0x10,%esp
   32ddb:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   32dde:	8b 40 7c             	mov    0x7c(%eax),%eax
   32de1:	85 c0                	test   %eax,%eax
   32de3:	74 1c                	je     32e01 <msg_receive+0x141>
   32de5:	68 94 01 00 00       	push   $0x194
   32dea:	68 e0 57 03 00       	push   $0x357e0
   32def:	68 e0 57 03 00       	push   $0x357e0
   32df4:	68 c3 5a 03 00       	push   $0x35ac3
   32df9:	e8 45 22 00 00       	call   35043 <assertion_failure>
   32dfe:	83 c4 10             	add    $0x10,%esp
   32e01:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   32e04:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
   32e0a:	83 f8 1b             	cmp    $0x1b,%eax
   32e0d:	74 1c                	je     32e2b <msg_receive+0x16b>
   32e0f:	68 95 01 00 00       	push   $0x195
   32e14:	68 e0 57 03 00       	push   $0x357e0
   32e19:	68 e0 57 03 00       	push   $0x357e0
   32e1e:	68 e0 5a 03 00       	push   $0x35ae0
   32e23:	e8 1b 22 00 00       	call   35043 <assertion_failure>
   32e28:	83 c4 10             	add    $0x10,%esp
   32e2b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   32e2e:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
   32e34:	85 c0                	test   %eax,%eax
   32e36:	74 1c                	je     32e54 <msg_receive+0x194>
   32e38:	68 96 01 00 00       	push   $0x196
   32e3d:	68 e0 57 03 00       	push   $0x357e0
   32e42:	68 e0 57 03 00       	push   $0x357e0
   32e47:	68 08 5b 03 00       	push   $0x35b08
   32e4c:	e8 f2 21 00 00       	call   35043 <assertion_failure>
   32e51:	83 c4 10             	add    $0x10,%esp
   32e54:	b8 00 00 00 00       	mov    $0x0,%eax
   32e59:	e9 8f 06 00 00       	jmp    334ed <msg_receive+0x82d>
   32e5e:	83 7d 0c 11          	cmpl   $0x11,0xc(%ebp)
   32e62:	0f 85 a8 01 00 00    	jne    33010 <msg_receive+0x350>
   32e68:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   32e6b:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
   32e71:	85 c0                	test   %eax,%eax
   32e73:	0f 84 fc 03 00 00    	je     33275 <msg_receive+0x5b5>
   32e79:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   32e7c:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
   32e82:	89 45 f4             	mov    %eax,-0xc(%ebp)
   32e85:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%ebp)
   32e8c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   32e8f:	8b 40 78             	mov    0x78(%eax),%eax
   32e92:	85 c0                	test   %eax,%eax
   32e94:	74 1c                	je     32eb2 <msg_receive+0x1f2>
   32e96:	68 a6 01 00 00       	push   $0x1a6
   32e9b:	68 e0 57 03 00       	push   $0x357e0
   32ea0:	68 e0 57 03 00       	push   $0x357e0
   32ea5:	68 a4 5a 03 00       	push   $0x35aa4
   32eaa:	e8 94 21 00 00       	call   35043 <assertion_failure>
   32eaf:	83 c4 10             	add    $0x10,%esp
   32eb2:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   32eb5:	8b 40 7c             	mov    0x7c(%eax),%eax
   32eb8:	85 c0                	test   %eax,%eax
   32eba:	74 1c                	je     32ed8 <msg_receive+0x218>
   32ebc:	68 a7 01 00 00       	push   $0x1a7
   32ec1:	68 e0 57 03 00       	push   $0x357e0
   32ec6:	68 e0 57 03 00       	push   $0x357e0
   32ecb:	68 c3 5a 03 00       	push   $0x35ac3
   32ed0:	e8 6e 21 00 00       	call   35043 <assertion_failure>
   32ed5:	83 c4 10             	add    $0x10,%esp
   32ed8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   32edb:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
   32ee1:	83 f8 1b             	cmp    $0x1b,%eax
   32ee4:	74 1c                	je     32f02 <msg_receive+0x242>
   32ee6:	68 a8 01 00 00       	push   $0x1a8
   32eeb:	68 e0 57 03 00       	push   $0x357e0
   32ef0:	68 e0 57 03 00       	push   $0x357e0
   32ef5:	68 2c 5b 03 00       	push   $0x35b2c
   32efa:	e8 44 21 00 00       	call   35043 <assertion_failure>
   32eff:	83 c4 10             	add    $0x10,%esp
   32f02:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   32f05:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
   32f0b:	83 f8 1b             	cmp    $0x1b,%eax
   32f0e:	74 1c                	je     32f2c <msg_receive+0x26c>
   32f10:	68 a9 01 00 00       	push   $0x1a9
   32f15:	68 e0 57 03 00       	push   $0x357e0
   32f1a:	68 e0 57 03 00       	push   $0x357e0
   32f1f:	68 e0 5a 03 00       	push   $0x35ae0
   32f24:	e8 1a 21 00 00       	call   35043 <assertion_failure>
   32f29:	83 c4 10             	add    $0x10,%esp
   32f2c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   32f2f:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
   32f35:	85 c0                	test   %eax,%eax
   32f37:	75 1c                	jne    32f55 <msg_receive+0x295>
   32f39:	68 aa 01 00 00       	push   $0x1aa
   32f3e:	68 e0 57 03 00       	push   $0x357e0
   32f43:	68 e0 57 03 00       	push   $0x357e0
   32f48:	68 54 5b 03 00       	push   $0x35b54
   32f4d:	e8 f1 20 00 00       	call   35043 <assertion_failure>
   32f52:	83 c4 10             	add    $0x10,%esp
   32f55:	8b 45 f4             	mov    -0xc(%ebp),%eax
   32f58:	8b 40 78             	mov    0x78(%eax),%eax
   32f5b:	83 f8 02             	cmp    $0x2,%eax
   32f5e:	74 1c                	je     32f7c <msg_receive+0x2bc>
   32f60:	68 ab 01 00 00       	push   $0x1ab
   32f65:	68 e0 57 03 00       	push   $0x357e0
   32f6a:	68 e0 57 03 00       	push   $0x357e0
   32f6f:	68 75 5b 03 00       	push   $0x35b75
   32f74:	e8 ca 20 00 00       	call   35043 <assertion_failure>
   32f79:	83 c4 10             	add    $0x10,%esp
   32f7c:	8b 45 f4             	mov    -0xc(%ebp),%eax
   32f7f:	8b 40 7c             	mov    0x7c(%eax),%eax
   32f82:	85 c0                	test   %eax,%eax
   32f84:	75 1c                	jne    32fa2 <msg_receive+0x2e2>
   32f86:	68 ac 01 00 00       	push   $0x1ac
   32f8b:	68 e0 57 03 00       	push   $0x357e0
   32f90:	68 e0 57 03 00       	push   $0x357e0
   32f95:	68 90 5b 03 00       	push   $0x35b90
   32f9a:	e8 a4 20 00 00       	call   35043 <assertion_failure>
   32f9f:	83 c4 10             	add    $0x10,%esp
   32fa2:	8b 45 f4             	mov    -0xc(%ebp),%eax
   32fa5:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
   32fab:	83 f8 1b             	cmp    $0x1b,%eax
   32fae:	74 1c                	je     32fcc <msg_receive+0x30c>
   32fb0:	68 ad 01 00 00       	push   $0x1ad
   32fb5:	68 e0 57 03 00       	push   $0x357e0
   32fba:	68 e0 57 03 00       	push   $0x357e0
   32fbf:	68 a3 5b 03 00       	push   $0x35ba3
   32fc4:	e8 7a 20 00 00       	call   35043 <assertion_failure>
   32fc9:	83 c4 10             	add    $0x10,%esp
   32fcc:	8b 45 f4             	mov    -0xc(%ebp),%eax
   32fcf:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
   32fd5:	8b 55 e4             	mov    -0x1c(%ebp),%edx
   32fd8:	81 ea e0 2f 07 00    	sub    $0x72fe0,%edx
   32fde:	c1 fa 03             	sar    $0x3,%edx
   32fe1:	69 d2 1b ca 6b 28    	imul   $0x286bca1b,%edx,%edx
   32fe7:	39 d0                	cmp    %edx,%eax
   32fe9:	0f 84 86 02 00 00    	je     33275 <msg_receive+0x5b5>
   32fef:	68 ae 01 00 00       	push   $0x1ae
   32ff4:	68 e0 57 03 00       	push   $0x357e0
   32ff9:	68 e0 57 03 00       	push   $0x357e0
   32ffe:	68 c4 5b 03 00       	push   $0x35bc4
   33003:	e8 3b 20 00 00       	call   35043 <assertion_failure>
   33008:	83 c4 10             	add    $0x10,%esp
   3300b:	e9 65 02 00 00       	jmp    33275 <msg_receive+0x5b5>
   33010:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
   33014:	0f 88 5b 02 00 00    	js     33275 <msg_receive+0x5b5>
   3301a:	83 7d 0c 06          	cmpl   $0x6,0xc(%ebp)
   3301e:	0f 8f 51 02 00 00    	jg     33275 <msg_receive+0x5b5>
   33024:	8b 45 0c             	mov    0xc(%ebp),%eax
   33027:	69 c0 98 00 00 00    	imul   $0x98,%eax,%eax
   3302d:	05 e0 2f 07 00       	add    $0x72fe0,%eax
   33032:	89 45 f4             	mov    %eax,-0xc(%ebp)
   33035:	8b 45 f4             	mov    -0xc(%ebp),%eax
   33038:	8b 40 78             	mov    0x78(%eax),%eax
   3303b:	83 e0 02             	and    $0x2,%eax
   3303e:	85 c0                	test   %eax,%eax
   33040:	0f 84 2f 02 00 00    	je     33275 <msg_receive+0x5b5>
   33046:	8b 45 f4             	mov    -0xc(%ebp),%eax
   33049:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
   3304f:	8b 55 e4             	mov    -0x1c(%ebp),%edx
   33052:	81 ea e0 2f 07 00    	sub    $0x72fe0,%edx
   33058:	c1 fa 03             	sar    $0x3,%edx
   3305b:	69 d2 1b ca 6b 28    	imul   $0x286bca1b,%edx,%edx
   33061:	39 d0                	cmp    %edx,%eax
   33063:	0f 85 0c 02 00 00    	jne    33275 <msg_receive+0x5b5>
   33069:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%ebp)
   33070:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   33073:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
   33079:	89 45 e8             	mov    %eax,-0x18(%ebp)
   3307c:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
   33080:	75 6f                	jne    330f1 <msg_receive+0x431>
   33082:	68 c0 01 00 00       	push   $0x1c0
   33087:	68 e0 57 03 00       	push   $0x357e0
   3308c:	68 e0 57 03 00       	push   $0x357e0
   33091:	68 f3 5b 03 00       	push   $0x35bf3
   33096:	e8 a8 1f 00 00       	call   35043 <assertion_failure>
   3309b:	83 c4 10             	add    $0x10,%esp
   3309e:	eb 51                	jmp    330f1 <msg_receive+0x431>
   330a0:	8b 45 f4             	mov    -0xc(%ebp),%eax
   330a3:	8b 40 78             	mov    0x78(%eax),%eax
   330a6:	83 e0 02             	and    $0x2,%eax
   330a9:	85 c0                	test   %eax,%eax
   330ab:	75 1c                	jne    330c9 <msg_receive+0x409>
   330ad:	68 c5 01 00 00       	push   $0x1c5
   330b2:	68 e0 57 03 00       	push   $0x357e0
   330b7:	68 e0 57 03 00       	push   $0x357e0
   330bc:	68 f5 5b 03 00       	push   $0x35bf5
   330c1:	e8 7d 1f 00 00       	call   35043 <assertion_failure>
   330c6:	83 c4 10             	add    $0x10,%esp
   330c9:	8b 45 e8             	mov    -0x18(%ebp),%eax
   330cc:	2d e0 2f 07 00       	sub    $0x72fe0,%eax
   330d1:	c1 f8 03             	sar    $0x3,%eax
   330d4:	69 c0 1b ca 6b 28    	imul   $0x286bca1b,%eax,%eax
   330da:	39 45 0c             	cmp    %eax,0xc(%ebp)
   330dd:	74 1a                	je     330f9 <msg_receive+0x439>
   330df:	8b 45 e8             	mov    -0x18(%ebp),%eax
   330e2:	89 45 f0             	mov    %eax,-0x10(%ebp)
   330e5:	8b 45 e8             	mov    -0x18(%ebp),%eax
   330e8:	8b 80 90 00 00 00    	mov    0x90(%eax),%eax
   330ee:	89 45 e8             	mov    %eax,-0x18(%ebp)
   330f1:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
   330f5:	75 a9                	jne    330a0 <msg_receive+0x3e0>
   330f7:	eb 01                	jmp    330fa <msg_receive+0x43a>
   330f9:	90                   	nop
   330fa:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   330fd:	8b 40 78             	mov    0x78(%eax),%eax
   33100:	85 c0                	test   %eax,%eax
   33102:	74 1c                	je     33120 <msg_receive+0x460>
   33104:	68 ce 01 00 00       	push   $0x1ce
   33109:	68 e0 57 03 00       	push   $0x357e0
   3310e:	68 e0 57 03 00       	push   $0x357e0
   33113:	68 a4 5a 03 00       	push   $0x35aa4
   33118:	e8 26 1f 00 00       	call   35043 <assertion_failure>
   3311d:	83 c4 10             	add    $0x10,%esp
   33120:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   33123:	8b 40 7c             	mov    0x7c(%eax),%eax
   33126:	85 c0                	test   %eax,%eax
   33128:	74 1c                	je     33146 <msg_receive+0x486>
   3312a:	68 cf 01 00 00       	push   $0x1cf
   3312f:	68 e0 57 03 00       	push   $0x357e0
   33134:	68 e0 57 03 00       	push   $0x357e0
   33139:	68 c3 5a 03 00       	push   $0x35ac3
   3313e:	e8 00 1f 00 00       	call   35043 <assertion_failure>
   33143:	83 c4 10             	add    $0x10,%esp
   33146:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   33149:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
   3314f:	83 f8 1b             	cmp    $0x1b,%eax
   33152:	74 1c                	je     33170 <msg_receive+0x4b0>
   33154:	68 d0 01 00 00       	push   $0x1d0
   33159:	68 e0 57 03 00       	push   $0x357e0
   3315e:	68 e0 57 03 00       	push   $0x357e0
   33163:	68 2c 5b 03 00       	push   $0x35b2c
   33168:	e8 d6 1e 00 00       	call   35043 <assertion_failure>
   3316d:	83 c4 10             	add    $0x10,%esp
   33170:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   33173:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
   33179:	83 f8 1b             	cmp    $0x1b,%eax
   3317c:	74 1c                	je     3319a <msg_receive+0x4da>
   3317e:	68 d1 01 00 00       	push   $0x1d1
   33183:	68 e0 57 03 00       	push   $0x357e0
   33188:	68 e0 57 03 00       	push   $0x357e0
   3318d:	68 e0 5a 03 00       	push   $0x35ae0
   33192:	e8 ac 1e 00 00       	call   35043 <assertion_failure>
   33197:	83 c4 10             	add    $0x10,%esp
   3319a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   3319d:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
   331a3:	85 c0                	test   %eax,%eax
   331a5:	75 1c                	jne    331c3 <msg_receive+0x503>
   331a7:	68 d2 01 00 00       	push   $0x1d2
   331ac:	68 e0 57 03 00       	push   $0x357e0
   331b1:	68 e0 57 03 00       	push   $0x357e0
   331b6:	68 54 5b 03 00       	push   $0x35b54
   331bb:	e8 83 1e 00 00       	call   35043 <assertion_failure>
   331c0:	83 c4 10             	add    $0x10,%esp
   331c3:	8b 45 f4             	mov    -0xc(%ebp),%eax
   331c6:	8b 40 78             	mov    0x78(%eax),%eax
   331c9:	83 f8 02             	cmp    $0x2,%eax
   331cc:	74 1c                	je     331ea <msg_receive+0x52a>
   331ce:	68 d3 01 00 00       	push   $0x1d3
   331d3:	68 e0 57 03 00       	push   $0x357e0
   331d8:	68 e0 57 03 00       	push   $0x357e0
   331dd:	68 75 5b 03 00       	push   $0x35b75
   331e2:	e8 5c 1e 00 00       	call   35043 <assertion_failure>
   331e7:	83 c4 10             	add    $0x10,%esp
   331ea:	8b 45 f4             	mov    -0xc(%ebp),%eax
   331ed:	8b 40 7c             	mov    0x7c(%eax),%eax
   331f0:	85 c0                	test   %eax,%eax
   331f2:	75 1c                	jne    33210 <msg_receive+0x550>
   331f4:	68 d4 01 00 00       	push   $0x1d4
   331f9:	68 e0 57 03 00       	push   $0x357e0
   331fe:	68 e0 57 03 00       	push   $0x357e0
   33203:	68 90 5b 03 00       	push   $0x35b90
   33208:	e8 36 1e 00 00       	call   35043 <assertion_failure>
   3320d:	83 c4 10             	add    $0x10,%esp
   33210:	8b 45 f4             	mov    -0xc(%ebp),%eax
   33213:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
   33219:	83 f8 1b             	cmp    $0x1b,%eax
   3321c:	74 1c                	je     3323a <msg_receive+0x57a>
   3321e:	68 d5 01 00 00       	push   $0x1d5
   33223:	68 e0 57 03 00       	push   $0x357e0
   33228:	68 e0 57 03 00       	push   $0x357e0
   3322d:	68 a3 5b 03 00       	push   $0x35ba3
   33232:	e8 0c 1e 00 00       	call   35043 <assertion_failure>
   33237:	83 c4 10             	add    $0x10,%esp
   3323a:	8b 45 f4             	mov    -0xc(%ebp),%eax
   3323d:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
   33243:	8b 55 e4             	mov    -0x1c(%ebp),%edx
   33246:	81 ea e0 2f 07 00    	sub    $0x72fe0,%edx
   3324c:	c1 fa 03             	sar    $0x3,%edx
   3324f:	69 d2 1b ca 6b 28    	imul   $0x286bca1b,%edx,%edx
   33255:	39 d0                	cmp    %edx,%eax
   33257:	74 1c                	je     33275 <msg_receive+0x5b5>
   33259:	68 d6 01 00 00       	push   $0x1d6
   3325e:	68 e0 57 03 00       	push   $0x357e0
   33263:	68 e0 57 03 00       	push   $0x357e0
   33268:	68 c4 5b 03 00       	push   $0x35bc4
   3326d:	e8 d1 1d 00 00       	call   35043 <assertion_failure>
   33272:	83 c4 10             	add    $0x10,%esp
   33275:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
   33279:	0f 84 6b 01 00 00    	je     333ea <msg_receive+0x72a>
   3327f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   33282:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
   33288:	39 45 f4             	cmp    %eax,-0xc(%ebp)
   3328b:	75 43                	jne    332d0 <msg_receive+0x610>
   3328d:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
   33291:	74 1c                	je     332af <msg_receive+0x5ef>
   33293:	68 e1 01 00 00       	push   $0x1e1
   33298:	68 e0 57 03 00       	push   $0x357e0
   3329d:	68 e0 57 03 00       	push   $0x357e0
   332a2:	68 0f 5c 03 00       	push   $0x35c0f
   332a7:	e8 97 1d 00 00       	call   35043 <assertion_failure>
   332ac:	83 c4 10             	add    $0x10,%esp
   332af:	8b 45 f4             	mov    -0xc(%ebp),%eax
   332b2:	8b 90 90 00 00 00    	mov    0x90(%eax),%edx
   332b8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   332bb:	89 90 8c 00 00 00    	mov    %edx,0x8c(%eax)
   332c1:	8b 45 f4             	mov    -0xc(%ebp),%eax
   332c4:	c7 80 90 00 00 00 00 	movl   $0x0,0x90(%eax)
   332cb:	00 00 00 
   332ce:	eb 41                	jmp    33311 <msg_receive+0x651>
   332d0:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
   332d4:	75 1c                	jne    332f2 <msg_receive+0x632>
   332d6:	68 e6 01 00 00       	push   $0x1e6
   332db:	68 e0 57 03 00       	push   $0x357e0
   332e0:	68 e0 57 03 00       	push   $0x357e0
   332e5:	68 19 5c 03 00       	push   $0x35c19
   332ea:	e8 54 1d 00 00       	call   35043 <assertion_failure>
   332ef:	83 c4 10             	add    $0x10,%esp
   332f2:	8b 45 f4             	mov    -0xc(%ebp),%eax
   332f5:	8b 90 90 00 00 00    	mov    0x90(%eax),%edx
   332fb:	8b 45 f0             	mov    -0x10(%ebp),%eax
   332fe:	89 90 90 00 00 00    	mov    %edx,0x90(%eax)
   33304:	8b 45 f4             	mov    -0xc(%ebp),%eax
   33307:	c7 80 90 00 00 00 00 	movl   $0x0,0x90(%eax)
   3330e:	00 00 00 
   33311:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
   33315:	75 1c                	jne    33333 <msg_receive+0x673>
   33317:	68 eb 01 00 00       	push   $0x1eb
   3331c:	68 e0 57 03 00       	push   $0x357e0
   33321:	68 e0 57 03 00       	push   $0x357e0
   33326:	68 72 59 03 00       	push   $0x35972
   3332b:	e8 13 1d 00 00       	call   35043 <assertion_failure>
   33330:	83 c4 10             	add    $0x10,%esp
   33333:	8b 45 f4             	mov    -0xc(%ebp),%eax
   33336:	8b 40 7c             	mov    0x7c(%eax),%eax
   33339:	85 c0                	test   %eax,%eax
   3333b:	75 1c                	jne    33359 <msg_receive+0x699>
   3333d:	68 ec 01 00 00       	push   $0x1ec
   33342:	68 e0 57 03 00       	push   $0x357e0
   33347:	68 e0 57 03 00       	push   $0x357e0
   3334c:	68 1e 5c 03 00       	push   $0x35c1e
   33351:	e8 ed 1c 00 00       	call   35043 <assertion_failure>
   33356:	83 c4 10             	add    $0x10,%esp
   33359:	8b 45 f4             	mov    -0xc(%ebp),%eax
   3335c:	8b 40 7c             	mov    0x7c(%eax),%eax
   3335f:	8b 55 f4             	mov    -0xc(%ebp),%edx
   33362:	81 ea e0 2f 07 00    	sub    $0x72fe0,%edx
   33368:	c1 fa 03             	sar    $0x3,%edx
   3336b:	69 d2 1b ca 6b 28    	imul   $0x286bca1b,%edx,%edx
   33371:	83 ec 08             	sub    $0x8,%esp
   33374:	50                   	push   %eax
   33375:	52                   	push   %edx
   33376:	e8 20 f3 ff ff       	call   3269b <va2la>
   3337b:	83 c4 10             	add    $0x10,%esp
   3337e:	89 c3                	mov    %eax,%ebx
   33380:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   33383:	2d e0 2f 07 00       	sub    $0x72fe0,%eax
   33388:	c1 f8 03             	sar    $0x3,%eax
   3338b:	69 c0 1b ca 6b 28    	imul   $0x286bca1b,%eax,%eax
   33391:	83 ec 08             	sub    $0x8,%esp
   33394:	ff 75 10             	pushl  0x10(%ebp)
   33397:	50                   	push   %eax
   33398:	e8 fe f2 ff ff       	call   3269b <va2la>
   3339d:	83 c4 10             	add    $0x10,%esp
   333a0:	83 ec 04             	sub    $0x4,%esp
   333a3:	6a 30                	push   $0x30
   333a5:	53                   	push   %ebx
   333a6:	50                   	push   %eax
   333a7:	e8 04 1c 00 00       	call   34fb0 <memcpy>
   333ac:	83 c4 10             	add    $0x10,%esp
   333af:	8b 45 f4             	mov    -0xc(%ebp),%eax
   333b2:	c7 40 7c 00 00 00 00 	movl   $0x0,0x7c(%eax)
   333b9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   333bc:	c7 80 84 00 00 00 1b 	movl   $0x1b,0x84(%eax)
   333c3:	00 00 00 
   333c6:	8b 45 f4             	mov    -0xc(%ebp),%eax
   333c9:	8b 40 78             	mov    0x78(%eax),%eax
   333cc:	83 e0 fd             	and    $0xfffffffd,%eax
   333cf:	89 c2                	mov    %eax,%edx
   333d1:	8b 45 f4             	mov    -0xc(%ebp),%eax
   333d4:	89 50 78             	mov    %edx,0x78(%eax)
   333d7:	83 ec 0c             	sub    $0xc,%esp
   333da:	ff 75 f4             	pushl  -0xc(%ebp)
   333dd:	e8 69 f3 ff ff       	call   3274b <unblock>
   333e2:	83 c4 10             	add    $0x10,%esp
   333e5:	e9 fe 00 00 00       	jmp    334e8 <msg_receive+0x828>
   333ea:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   333ed:	8b 40 78             	mov    0x78(%eax),%eax
   333f0:	83 c8 04             	or     $0x4,%eax
   333f3:	89 c2                	mov    %eax,%edx
   333f5:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   333f8:	89 50 78             	mov    %edx,0x78(%eax)
   333fb:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   333fe:	8b 55 10             	mov    0x10(%ebp),%edx
   33401:	89 50 7c             	mov    %edx,0x7c(%eax)
   33404:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   33407:	8b 55 0c             	mov    0xc(%ebp),%edx
   3340a:	89 90 80 00 00 00    	mov    %edx,0x80(%eax)
   33410:	83 ec 0c             	sub    $0xc,%esp
   33413:	ff 75 e4             	pushl  -0x1c(%ebp)
   33416:	e8 fc f2 ff ff       	call   32717 <block>
   3341b:	83 c4 10             	add    $0x10,%esp
   3341e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   33421:	8b 40 78             	mov    0x78(%eax),%eax
   33424:	83 f8 04             	cmp    $0x4,%eax
   33427:	74 1c                	je     33445 <msg_receive+0x785>
   33429:	68 02 02 00 00       	push   $0x202
   3342e:	68 e0 57 03 00       	push   $0x357e0
   33433:	68 e0 57 03 00       	push   $0x357e0
   33438:	68 2c 5c 03 00       	push   $0x35c2c
   3343d:	e8 01 1c 00 00       	call   35043 <assertion_failure>
   33442:	83 c4 10             	add    $0x10,%esp
   33445:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   33448:	8b 40 7c             	mov    0x7c(%eax),%eax
   3344b:	85 c0                	test   %eax,%eax
   3344d:	75 1c                	jne    3346b <msg_receive+0x7ab>
   3344f:	68 03 02 00 00       	push   $0x203
   33454:	68 e0 57 03 00       	push   $0x357e0
   33459:	68 e0 57 03 00       	push   $0x357e0
   3345e:	68 53 5c 03 00       	push   $0x35c53
   33463:	e8 db 1b 00 00       	call   35043 <assertion_failure>
   33468:	83 c4 10             	add    $0x10,%esp
   3346b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   3346e:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
   33474:	83 f8 1b             	cmp    $0x1b,%eax
   33477:	75 1c                	jne    33495 <msg_receive+0x7d5>
   33479:	68 04 02 00 00       	push   $0x204
   3347e:	68 e0 57 03 00       	push   $0x357e0
   33483:	68 e0 57 03 00       	push   $0x357e0
   33488:	68 70 5c 03 00       	push   $0x35c70
   3348d:	e8 b1 1b 00 00       	call   35043 <assertion_failure>
   33492:	83 c4 10             	add    $0x10,%esp
   33495:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   33498:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
   3349e:	83 f8 1b             	cmp    $0x1b,%eax
   334a1:	74 1c                	je     334bf <msg_receive+0x7ff>
   334a3:	68 05 02 00 00       	push   $0x205
   334a8:	68 e0 57 03 00       	push   $0x357e0
   334ad:	68 e0 57 03 00       	push   $0x357e0
   334b2:	68 e0 5a 03 00       	push   $0x35ae0
   334b7:	e8 87 1b 00 00       	call   35043 <assertion_failure>
   334bc:	83 c4 10             	add    $0x10,%esp
   334bf:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   334c2:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
   334c8:	85 c0                	test   %eax,%eax
   334ca:	74 1c                	je     334e8 <msg_receive+0x828>
   334cc:	68 06 02 00 00       	push   $0x206
   334d1:	68 e0 57 03 00       	push   $0x357e0
   334d6:	68 e0 57 03 00       	push   $0x357e0
   334db:	68 08 5b 03 00       	push   $0x35b08
   334e0:	e8 5e 1b 00 00       	call   35043 <assertion_failure>
   334e5:	83 c4 10             	add    $0x10,%esp
   334e8:	b8 00 00 00 00       	mov    $0x0,%eax
   334ed:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   334f0:	c9                   	leave  
   334f1:	c3                   	ret    

000334f2 <inform_int>:
   334f2:	55                   	push   %ebp
   334f3:	89 e5                	mov    %esp,%ebp
   334f5:	83 ec 18             	sub    $0x18,%esp
   334f8:	8b 45 08             	mov    0x8(%ebp),%eax
   334fb:	69 c0 98 00 00 00    	imul   $0x98,%eax,%eax
   33501:	05 e0 2f 07 00       	add    $0x72fe0,%eax
   33506:	89 45 f4             	mov    %eax,-0xc(%ebp)
   33509:	8b 45 f4             	mov    -0xc(%ebp),%eax
   3350c:	8b 40 78             	mov    0x78(%eax),%eax
   3350f:	83 e0 04             	and    $0x4,%eax
   33512:	85 c0                	test   %eax,%eax
   33514:	0f 84 44 01 00 00    	je     3365e <inform_int+0x16c>
   3351a:	8b 45 f4             	mov    -0xc(%ebp),%eax
   3351d:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
   33523:	83 f8 f6             	cmp    $0xfffffff6,%eax
   33526:	74 12                	je     3353a <inform_int+0x48>
   33528:	8b 45 f4             	mov    -0xc(%ebp),%eax
   3352b:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
   33531:	83 f8 11             	cmp    $0x11,%eax
   33534:	0f 85 24 01 00 00    	jne    3365e <inform_int+0x16c>
   3353a:	8b 45 f4             	mov    -0xc(%ebp),%eax
   3353d:	8b 40 7c             	mov    0x7c(%eax),%eax
   33540:	c7 00 f6 ff ff ff    	movl   $0xfffffff6,(%eax)
   33546:	8b 45 f4             	mov    -0xc(%ebp),%eax
   33549:	8b 40 7c             	mov    0x7c(%eax),%eax
   3354c:	c7 40 04 01 00 00 00 	movl   $0x1,0x4(%eax)
   33553:	8b 45 f4             	mov    -0xc(%ebp),%eax
   33556:	c7 40 7c 00 00 00 00 	movl   $0x0,0x7c(%eax)
   3355d:	8b 45 f4             	mov    -0xc(%ebp),%eax
   33560:	c7 80 88 00 00 00 00 	movl   $0x0,0x88(%eax)
   33567:	00 00 00 
   3356a:	8b 45 f4             	mov    -0xc(%ebp),%eax
   3356d:	8b 40 78             	mov    0x78(%eax),%eax
   33570:	83 e0 fb             	and    $0xfffffffb,%eax
   33573:	89 c2                	mov    %eax,%edx
   33575:	8b 45 f4             	mov    -0xc(%ebp),%eax
   33578:	89 50 78             	mov    %edx,0x78(%eax)
   3357b:	8b 45 f4             	mov    -0xc(%ebp),%eax
   3357e:	c7 80 80 00 00 00 1b 	movl   $0x1b,0x80(%eax)
   33585:	00 00 00 
   33588:	8b 45 f4             	mov    -0xc(%ebp),%eax
   3358b:	8b 40 78             	mov    0x78(%eax),%eax
   3358e:	85 c0                	test   %eax,%eax
   33590:	74 1c                	je     335ae <inform_int+0xbc>
   33592:	68 20 02 00 00       	push   $0x220
   33597:	68 e0 57 03 00       	push   $0x357e0
   3359c:	68 e0 57 03 00       	push   $0x357e0
   335a1:	68 0f 59 03 00       	push   $0x3590f
   335a6:	e8 98 1a 00 00       	call   35043 <assertion_failure>
   335ab:	83 c4 10             	add    $0x10,%esp
   335ae:	83 ec 0c             	sub    $0xc,%esp
   335b1:	ff 75 f4             	pushl  -0xc(%ebp)
   335b4:	e8 92 f1 ff ff       	call   3274b <unblock>
   335b9:	83 c4 10             	add    $0x10,%esp
   335bc:	8b 45 f4             	mov    -0xc(%ebp),%eax
   335bf:	8b 40 78             	mov    0x78(%eax),%eax
   335c2:	85 c0                	test   %eax,%eax
   335c4:	74 1c                	je     335e2 <inform_int+0xf0>
   335c6:	68 23 02 00 00       	push   $0x223
   335cb:	68 e0 57 03 00       	push   $0x357e0
   335d0:	68 e0 57 03 00       	push   $0x357e0
   335d5:	68 0f 59 03 00       	push   $0x3590f
   335da:	e8 64 1a 00 00       	call   35043 <assertion_failure>
   335df:	83 c4 10             	add    $0x10,%esp
   335e2:	8b 45 f4             	mov    -0xc(%ebp),%eax
   335e5:	8b 40 7c             	mov    0x7c(%eax),%eax
   335e8:	85 c0                	test   %eax,%eax
   335ea:	74 1c                	je     33608 <inform_int+0x116>
   335ec:	68 24 02 00 00       	push   $0x224
   335f1:	68 e0 57 03 00       	push   $0x357e0
   335f6:	68 e0 57 03 00       	push   $0x357e0
   335fb:	68 98 5c 03 00       	push   $0x35c98
   33600:	e8 3e 1a 00 00       	call   35043 <assertion_failure>
   33605:	83 c4 10             	add    $0x10,%esp
   33608:	8b 45 f4             	mov    -0xc(%ebp),%eax
   3360b:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
   33611:	83 f8 1b             	cmp    $0x1b,%eax
   33614:	74 1c                	je     33632 <inform_int+0x140>
   33616:	68 25 02 00 00       	push   $0x225
   3361b:	68 e0 57 03 00       	push   $0x357e0
   33620:	68 e0 57 03 00       	push   $0x357e0
   33625:	68 a6 5c 03 00       	push   $0x35ca6
   3362a:	e8 14 1a 00 00       	call   35043 <assertion_failure>
   3362f:	83 c4 10             	add    $0x10,%esp
   33632:	8b 45 f4             	mov    -0xc(%ebp),%eax
   33635:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
   3363b:	83 f8 1b             	cmp    $0x1b,%eax
   3363e:	74 2b                	je     3366b <inform_int+0x179>
   33640:	68 26 02 00 00       	push   $0x226
   33645:	68 e0 57 03 00       	push   $0x357e0
   3364a:	68 e0 57 03 00       	push   $0x357e0
   3364f:	68 bf 5c 03 00       	push   $0x35cbf
   33654:	e8 ea 19 00 00       	call   35043 <assertion_failure>
   33659:	83 c4 10             	add    $0x10,%esp
   3365c:	eb 0d                	jmp    3366b <inform_int+0x179>
   3365e:	8b 45 f4             	mov    -0xc(%ebp),%eax
   33661:	c7 80 88 00 00 00 01 	movl   $0x1,0x88(%eax)
   33668:	00 00 00 
   3366b:	90                   	nop
   3366c:	c9                   	leave  
   3366d:	c3                   	ret    

0003366e <dump_proc>:
   3366e:	55                   	push   %ebp
   3366f:	89 e5                	mov    %esp,%ebp
   33671:	81 ec 18 04 00 00    	sub    $0x418,%esp
   33677:	c7 45 f0 24 00 00 00 	movl   $0x24,-0x10(%ebp)
   3367e:	c7 45 ec 98 00 00 00 	movl   $0x98,-0x14(%ebp)
   33685:	83 ec 08             	sub    $0x8,%esp
   33688:	6a 0c                	push   $0xc
   3368a:	68 d4 03 00 00       	push   $0x3d4
   3368f:	e8 d9 16 00 00       	call   34d6d <out_byte>
   33694:	83 c4 10             	add    $0x10,%esp
   33697:	83 ec 08             	sub    $0x8,%esp
   3369a:	6a 00                	push   $0x0
   3369c:	68 d5 03 00 00       	push   $0x3d5
   336a1:	e8 c7 16 00 00       	call   34d6d <out_byte>
   336a6:	83 c4 10             	add    $0x10,%esp
   336a9:	83 ec 08             	sub    $0x8,%esp
   336ac:	6a 0d                	push   $0xd
   336ae:	68 d4 03 00 00       	push   $0x3d4
   336b3:	e8 b5 16 00 00       	call   34d6d <out_byte>
   336b8:	83 c4 10             	add    $0x10,%esp
   336bb:	83 ec 08             	sub    $0x8,%esp
   336be:	6a 00                	push   $0x0
   336c0:	68 d5 03 00 00       	push   $0x3d5
   336c5:	e8 a3 16 00 00       	call   34d6d <out_byte>
   336ca:	83 c4 10             	add    $0x10,%esp
   336cd:	8b 45 08             	mov    0x8(%ebp),%eax
   336d0:	2d e0 2f 07 00       	sub    $0x72fe0,%eax
   336d5:	c1 f8 03             	sar    $0x3,%eax
   336d8:	69 c0 1b ca 6b 28    	imul   $0x286bca1b,%eax,%eax
   336de:	83 ec 04             	sub    $0x4,%esp
   336e1:	50                   	push   %eax
   336e2:	68 d6 5c 03 00       	push   $0x35cd6
   336e7:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
   336ed:	50                   	push   %eax
   336ee:	e8 cd 15 00 00       	call   34cc0 <sprintf>
   336f3:	83 c4 10             	add    $0x10,%esp
   336f6:	83 ec 08             	sub    $0x8,%esp
   336f9:	ff 75 f0             	pushl  -0x10(%ebp)
   336fc:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
   33702:	50                   	push   %eax
   33703:	e8 26 16 00 00       	call   34d2e <disp_color_str>
   33708:	83 c4 10             	add    $0x10,%esp
   3370b:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
   33712:	eb 3f                	jmp    33753 <dump_proc+0xe5>
   33714:	8b 55 f4             	mov    -0xc(%ebp),%edx
   33717:	8b 45 08             	mov    0x8(%ebp),%eax
   3371a:	01 d0                	add    %edx,%eax
   3371c:	0f b6 00             	movzbl (%eax),%eax
   3371f:	0f b6 c0             	movzbl %al,%eax
   33722:	83 ec 04             	sub    $0x4,%esp
   33725:	50                   	push   %eax
   33726:	68 f4 5c 03 00       	push   $0x35cf4
   3372b:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
   33731:	50                   	push   %eax
   33732:	e8 89 15 00 00       	call   34cc0 <sprintf>
   33737:	83 c4 10             	add    $0x10,%esp
   3373a:	83 ec 08             	sub    $0x8,%esp
   3373d:	ff 75 f0             	pushl  -0x10(%ebp)
   33740:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
   33746:	50                   	push   %eax
   33747:	e8 e2 15 00 00       	call   34d2e <disp_color_str>
   3374c:	83 c4 10             	add    $0x10,%esp
   3374f:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
   33753:	8b 45 f4             	mov    -0xc(%ebp),%eax
   33756:	3b 45 ec             	cmp    -0x14(%ebp),%eax
   33759:	7c b9                	jl     33714 <dump_proc+0xa6>
   3375b:	83 ec 08             	sub    $0x8,%esp
   3375e:	ff 75 f0             	pushl  -0x10(%ebp)
   33761:	68 f8 5c 03 00       	push   $0x35cf8
   33766:	e8 c3 15 00 00       	call   34d2e <disp_color_str>
   3376b:	83 c4 10             	add    $0x10,%esp
   3376e:	83 ec 04             	sub    $0x4,%esp
   33771:	6a 11                	push   $0x11
   33773:	68 fb 5c 03 00       	push   $0x35cfb
   33778:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
   3377e:	50                   	push   %eax
   3377f:	e8 3c 15 00 00       	call   34cc0 <sprintf>
   33784:	83 c4 10             	add    $0x10,%esp
   33787:	83 ec 08             	sub    $0x8,%esp
   3378a:	ff 75 f0             	pushl  -0x10(%ebp)
   3378d:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
   33793:	50                   	push   %eax
   33794:	e8 95 15 00 00       	call   34d2e <disp_color_str>
   33799:	83 c4 10             	add    $0x10,%esp
   3379c:	83 ec 04             	sub    $0x4,%esp
   3379f:	6a 1b                	push   $0x1b
   337a1:	68 07 5d 03 00       	push   $0x35d07
   337a6:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
   337ac:	50                   	push   %eax
   337ad:	e8 0e 15 00 00       	call   34cc0 <sprintf>
   337b2:	83 c4 10             	add    $0x10,%esp
   337b5:	83 ec 08             	sub    $0x8,%esp
   337b8:	ff 75 f0             	pushl  -0x10(%ebp)
   337bb:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
   337c1:	50                   	push   %eax
   337c2:	e8 67 15 00 00       	call   34d2e <disp_color_str>
   337c7:	83 c4 10             	add    $0x10,%esp
   337ca:	83 ec 08             	sub    $0x8,%esp
   337cd:	ff 75 f0             	pushl  -0x10(%ebp)
   337d0:	68 17 5d 03 00       	push   $0x35d17
   337d5:	e8 54 15 00 00       	call   34d2e <disp_color_str>
   337da:	83 c4 10             	add    $0x10,%esp
   337dd:	8b 45 08             	mov    0x8(%ebp),%eax
   337e0:	0f b7 40 48          	movzwl 0x48(%eax),%eax
   337e4:	0f b7 c0             	movzwl %ax,%eax
   337e7:	83 ec 04             	sub    $0x4,%esp
   337ea:	50                   	push   %eax
   337eb:	68 19 5d 03 00       	push   $0x35d19
   337f0:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
   337f6:	50                   	push   %eax
   337f7:	e8 c4 14 00 00       	call   34cc0 <sprintf>
   337fc:	83 c4 10             	add    $0x10,%esp
   337ff:	83 ec 08             	sub    $0x8,%esp
   33802:	ff 75 f0             	pushl  -0x10(%ebp)
   33805:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
   3380b:	50                   	push   %eax
   3380c:	e8 1d 15 00 00       	call   34d2e <disp_color_str>
   33811:	83 c4 10             	add    $0x10,%esp
   33814:	8b 45 08             	mov    0x8(%ebp),%eax
   33817:	8b 40 5c             	mov    0x5c(%eax),%eax
   3381a:	83 ec 04             	sub    $0x4,%esp
   3381d:	50                   	push   %eax
   3381e:	68 2a 5d 03 00       	push   $0x35d2a
   33823:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
   33829:	50                   	push   %eax
   3382a:	e8 91 14 00 00       	call   34cc0 <sprintf>
   3382f:	83 c4 10             	add    $0x10,%esp
   33832:	83 ec 08             	sub    $0x8,%esp
   33835:	ff 75 f0             	pushl  -0x10(%ebp)
   33838:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
   3383e:	50                   	push   %eax
   3383f:	e8 ea 14 00 00       	call   34d2e <disp_color_str>
   33844:	83 c4 10             	add    $0x10,%esp
   33847:	8b 45 08             	mov    0x8(%ebp),%eax
   3384a:	8b 40 60             	mov    0x60(%eax),%eax
   3384d:	83 ec 04             	sub    $0x4,%esp
   33850:	50                   	push   %eax
   33851:	68 39 5d 03 00       	push   $0x35d39
   33856:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
   3385c:	50                   	push   %eax
   3385d:	e8 5e 14 00 00       	call   34cc0 <sprintf>
   33862:	83 c4 10             	add    $0x10,%esp
   33865:	83 ec 08             	sub    $0x8,%esp
   33868:	ff 75 f0             	pushl  -0x10(%ebp)
   3386b:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
   33871:	50                   	push   %eax
   33872:	e8 b7 14 00 00       	call   34d2e <disp_color_str>
   33877:	83 c4 10             	add    $0x10,%esp
   3387a:	8b 45 08             	mov    0x8(%ebp),%eax
   3387d:	8b 40 64             	mov    0x64(%eax),%eax
   33880:	83 ec 04             	sub    $0x4,%esp
   33883:	50                   	push   %eax
   33884:	68 4b 5d 03 00       	push   $0x35d4b
   33889:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
   3388f:	50                   	push   %eax
   33890:	e8 2b 14 00 00       	call   34cc0 <sprintf>
   33895:	83 c4 10             	add    $0x10,%esp
   33898:	83 ec 08             	sub    $0x8,%esp
   3389b:	ff 75 f0             	pushl  -0x10(%ebp)
   3389e:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
   338a4:	50                   	push   %eax
   338a5:	e8 84 14 00 00       	call   34d2e <disp_color_str>
   338aa:	83 c4 10             	add    $0x10,%esp
   338ad:	8b 45 08             	mov    0x8(%ebp),%eax
   338b0:	83 c0 68             	add    $0x68,%eax
   338b3:	83 ec 04             	sub    $0x4,%esp
   338b6:	50                   	push   %eax
   338b7:	68 58 5d 03 00       	push   $0x35d58
   338bc:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
   338c2:	50                   	push   %eax
   338c3:	e8 f8 13 00 00       	call   34cc0 <sprintf>
   338c8:	83 c4 10             	add    $0x10,%esp
   338cb:	83 ec 08             	sub    $0x8,%esp
   338ce:	ff 75 f0             	pushl  -0x10(%ebp)
   338d1:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
   338d7:	50                   	push   %eax
   338d8:	e8 51 14 00 00       	call   34d2e <disp_color_str>
   338dd:	83 c4 10             	add    $0x10,%esp
   338e0:	83 ec 08             	sub    $0x8,%esp
   338e3:	ff 75 f0             	pushl  -0x10(%ebp)
   338e6:	68 17 5d 03 00       	push   $0x35d17
   338eb:	e8 3e 14 00 00       	call   34d2e <disp_color_str>
   338f0:	83 c4 10             	add    $0x10,%esp
   338f3:	8b 45 08             	mov    0x8(%ebp),%eax
   338f6:	8b 40 78             	mov    0x78(%eax),%eax
   338f9:	83 ec 04             	sub    $0x4,%esp
   338fc:	50                   	push   %eax
   338fd:	68 64 5d 03 00       	push   $0x35d64
   33902:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
   33908:	50                   	push   %eax
   33909:	e8 b2 13 00 00       	call   34cc0 <sprintf>
   3390e:	83 c4 10             	add    $0x10,%esp
   33911:	83 ec 08             	sub    $0x8,%esp
   33914:	ff 75 f0             	pushl  -0x10(%ebp)
   33917:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
   3391d:	50                   	push   %eax
   3391e:	e8 0b 14 00 00       	call   34d2e <disp_color_str>
   33923:	83 c4 10             	add    $0x10,%esp
   33926:	8b 45 08             	mov    0x8(%ebp),%eax
   33929:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
   3392f:	83 ec 04             	sub    $0x4,%esp
   33932:	50                   	push   %eax
   33933:	68 75 5d 03 00       	push   $0x35d75
   33938:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
   3393e:	50                   	push   %eax
   3393f:	e8 7c 13 00 00       	call   34cc0 <sprintf>
   33944:	83 c4 10             	add    $0x10,%esp
   33947:	83 ec 08             	sub    $0x8,%esp
   3394a:	ff 75 f0             	pushl  -0x10(%ebp)
   3394d:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
   33953:	50                   	push   %eax
   33954:	e8 d5 13 00 00       	call   34d2e <disp_color_str>
   33959:	83 c4 10             	add    $0x10,%esp
   3395c:	8b 45 08             	mov    0x8(%ebp),%eax
   3395f:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
   33965:	83 ec 04             	sub    $0x4,%esp
   33968:	50                   	push   %eax
   33969:	68 89 5d 03 00       	push   $0x35d89
   3396e:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
   33974:	50                   	push   %eax
   33975:	e8 46 13 00 00       	call   34cc0 <sprintf>
   3397a:	83 c4 10             	add    $0x10,%esp
   3397d:	83 ec 08             	sub    $0x8,%esp
   33980:	ff 75 f0             	pushl  -0x10(%ebp)
   33983:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
   33989:	50                   	push   %eax
   3398a:	e8 9f 13 00 00       	call   34d2e <disp_color_str>
   3398f:	83 c4 10             	add    $0x10,%esp
   33992:	8b 45 08             	mov    0x8(%ebp),%eax
   33995:	8b 80 94 00 00 00    	mov    0x94(%eax),%eax
   3399b:	83 ec 04             	sub    $0x4,%esp
   3399e:	50                   	push   %eax
   3399f:	68 9b 5d 03 00       	push   $0x35d9b
   339a4:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
   339aa:	50                   	push   %eax
   339ab:	e8 10 13 00 00       	call   34cc0 <sprintf>
   339b0:	83 c4 10             	add    $0x10,%esp
   339b3:	83 ec 08             	sub    $0x8,%esp
   339b6:	ff 75 f0             	pushl  -0x10(%ebp)
   339b9:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
   339bf:	50                   	push   %eax
   339c0:	e8 69 13 00 00       	call   34d2e <disp_color_str>
   339c5:	83 c4 10             	add    $0x10,%esp
   339c8:	83 ec 08             	sub    $0x8,%esp
   339cb:	ff 75 f0             	pushl  -0x10(%ebp)
   339ce:	68 17 5d 03 00       	push   $0x35d17
   339d3:	e8 56 13 00 00       	call   34d2e <disp_color_str>
   339d8:	83 c4 10             	add    $0x10,%esp
   339db:	8b 45 08             	mov    0x8(%ebp),%eax
   339de:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
   339e4:	83 ec 04             	sub    $0x4,%esp
   339e7:	50                   	push   %eax
   339e8:	68 ab 5d 03 00       	push   $0x35dab
   339ed:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
   339f3:	50                   	push   %eax
   339f4:	e8 c7 12 00 00       	call   34cc0 <sprintf>
   339f9:	83 c4 10             	add    $0x10,%esp
   339fc:	83 ec 08             	sub    $0x8,%esp
   339ff:	ff 75 f0             	pushl  -0x10(%ebp)
   33a02:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
   33a08:	50                   	push   %eax
   33a09:	e8 20 13 00 00       	call   34d2e <disp_color_str>
   33a0e:	83 c4 10             	add    $0x10,%esp
   33a11:	90                   	nop
   33a12:	c9                   	leave  
   33a13:	c3                   	ret    

00033a14 <dump_msg>:
   33a14:	55                   	push   %ebp
   33a15:	89 e5                	mov    %esp,%ebp
   33a17:	57                   	push   %edi
   33a18:	56                   	push   %esi
   33a19:	53                   	push   %ebx
   33a1a:	83 ec 4c             	sub    $0x4c,%esp
   33a1d:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
   33a24:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
   33a28:	74 09                	je     33a33 <dump_msg+0x1f>
   33a2a:	c7 45 d4 c0 5d 03 00 	movl   $0x35dc0,-0x2c(%ebp)
   33a31:	eb 07                	jmp    33a3a <dump_msg+0x26>
   33a33:	c7 45 d4 17 5d 03 00 	movl   $0x35d17,-0x2c(%ebp)
   33a3a:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
   33a3e:	74 09                	je     33a49 <dump_msg+0x35>
   33a40:	c7 45 d0 c0 5d 03 00 	movl   $0x35dc0,-0x30(%ebp)
   33a47:	eb 07                	jmp    33a50 <dump_msg+0x3c>
   33a49:	c7 45 d0 17 5d 03 00 	movl   $0x35d17,-0x30(%ebp)
   33a50:	8b 45 0c             	mov    0xc(%ebp),%eax
   33a53:	8b 40 2c             	mov    0x2c(%eax),%eax
   33a56:	89 45 c4             	mov    %eax,-0x3c(%ebp)
   33a59:	8b 45 0c             	mov    0xc(%ebp),%eax
   33a5c:	8b 40 28             	mov    0x28(%eax),%eax
   33a5f:	89 45 c0             	mov    %eax,-0x40(%ebp)
   33a62:	8b 45 0c             	mov    0xc(%ebp),%eax
   33a65:	8b 40 14             	mov    0x14(%eax),%eax
   33a68:	89 45 bc             	mov    %eax,-0x44(%ebp)
   33a6b:	8b 45 0c             	mov    0xc(%ebp),%eax
   33a6e:	8b 40 10             	mov    0x10(%eax),%eax
   33a71:	89 45 b8             	mov    %eax,-0x48(%ebp)
   33a74:	8b 45 0c             	mov    0xc(%ebp),%eax
   33a77:	8b 40 0c             	mov    0xc(%eax),%eax
   33a7a:	89 45 b4             	mov    %eax,-0x4c(%ebp)
   33a7d:	8b 45 0c             	mov    0xc(%ebp),%eax
   33a80:	8b 78 08             	mov    0x8(%eax),%edi
   33a83:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
   33a87:	74 09                	je     33a92 <dump_msg+0x7e>
   33a89:	c7 45 cc c1 5d 03 00 	movl   $0x35dc1,-0x34(%ebp)
   33a90:	eb 07                	jmp    33a99 <dump_msg+0x85>
   33a92:	c7 45 cc c3 5d 03 00 	movl   $0x35dc3,-0x34(%ebp)
   33a99:	8b 45 0c             	mov    0xc(%ebp),%eax
   33a9c:	8b 70 04             	mov    0x4(%eax),%esi
   33a9f:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
   33aa3:	74 09                	je     33aae <dump_msg+0x9a>
   33aa5:	c7 45 c8 c1 5d 03 00 	movl   $0x35dc1,-0x38(%ebp)
   33aac:	eb 07                	jmp    33ab5 <dump_msg+0xa1>
   33aae:	c7 45 c8 c3 5d 03 00 	movl   $0x35dc3,-0x38(%ebp)
   33ab5:	8b 45 0c             	mov    0xc(%ebp),%eax
   33ab8:	8b 18                	mov    (%eax),%ebx
   33aba:	8b 45 0c             	mov    0xc(%ebp),%eax
   33abd:	8b 00                	mov    (%eax),%eax
   33abf:	69 c0 98 00 00 00    	imul   $0x98,%eax,%eax
   33ac5:	83 c0 60             	add    $0x60,%eax
   33ac8:	05 e0 2f 07 00       	add    $0x72fe0,%eax
   33acd:	8d 50 08             	lea    0x8(%eax),%edx
   33ad0:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
   33ad4:	74 07                	je     33add <dump_msg+0xc9>
   33ad6:	b9 c0 5d 03 00       	mov    $0x35dc0,%ecx
   33adb:	eb 05                	jmp    33ae2 <dump_msg+0xce>
   33add:	b9 c3 5d 03 00       	mov    $0x35dc3,%ecx
   33ae2:	8b 45 0c             	mov    0xc(%ebp),%eax
   33ae5:	83 ec 0c             	sub    $0xc,%esp
   33ae8:	ff 75 d4             	pushl  -0x2c(%ebp)
   33aeb:	ff 75 d0             	pushl  -0x30(%ebp)
   33aee:	ff 75 c4             	pushl  -0x3c(%ebp)
   33af1:	ff 75 c0             	pushl  -0x40(%ebp)
   33af4:	ff 75 bc             	pushl  -0x44(%ebp)
   33af7:	ff 75 b8             	pushl  -0x48(%ebp)
   33afa:	ff 75 b4             	pushl  -0x4c(%ebp)
   33afd:	57                   	push   %edi
   33afe:	ff 75 cc             	pushl  -0x34(%ebp)
   33b01:	56                   	push   %esi
   33b02:	ff 75 c8             	pushl  -0x38(%ebp)
   33b05:	53                   	push   %ebx
   33b06:	52                   	push   %edx
   33b07:	51                   	push   %ecx
   33b08:	50                   	push   %eax
   33b09:	ff 75 08             	pushl  0x8(%ebp)
   33b0c:	68 d0 5d 03 00       	push   $0x35dd0
   33b11:	e8 77 0e 00 00       	call   3498d <printf>
   33b16:	83 c4 50             	add    $0x50,%esp
   33b19:	90                   	nop
   33b1a:	8d 65 f4             	lea    -0xc(%ebp),%esp
   33b1d:	5b                   	pop    %ebx
   33b1e:	5e                   	pop    %esi
   33b1f:	5f                   	pop    %edi
   33b20:	5d                   	pop    %ebp
   33b21:	c3                   	ret    

00033b22 <task_sys>:
   33b22:	55                   	push   %ebp
   33b23:	89 e5                	mov    %esp,%ebp
   33b25:	83 ec 48             	sub    $0x48,%esp
   33b28:	83 ec 04             	sub    $0x4,%esp
   33b2b:	8d 45 c4             	lea    -0x3c(%ebp),%eax
   33b2e:	50                   	push   %eax
   33b2f:	6a 11                	push   $0x11
   33b31:	6a 02                	push   $0x2
   33b33:	e8 5c ea ff ff       	call   32594 <send_recv>
   33b38:	83 c4 10             	add    $0x10,%esp
   33b3b:	8b 45 c4             	mov    -0x3c(%ebp),%eax
   33b3e:	89 45 f4             	mov    %eax,-0xc(%ebp)
   33b41:	8b 45 c8             	mov    -0x38(%ebp),%eax
   33b44:	83 f8 02             	cmp    $0x2,%eax
   33b47:	75 1e                	jne    33b67 <task_sys+0x45>
   33b49:	a1 20 2f 07 00       	mov    0x72f20,%eax
   33b4e:	89 45 cc             	mov    %eax,-0x34(%ebp)
   33b51:	83 ec 04             	sub    $0x4,%esp
   33b54:	8d 45 c4             	lea    -0x3c(%ebp),%eax
   33b57:	50                   	push   %eax
   33b58:	ff 75 f4             	pushl  -0xc(%ebp)
   33b5b:	6a 01                	push   $0x1
   33b5d:	e8 32 ea ff ff       	call   32594 <send_recv>
   33b62:	83 c4 10             	add    $0x10,%esp
   33b65:	eb 11                	jmp    33b78 <task_sys+0x56>
   33b67:	83 ec 0c             	sub    $0xc,%esp
   33b6a:	68 1e 5e 03 00       	push   $0x35e1e
   33b6f:	e8 61 d0 ff ff       	call   30bd5 <panic>
   33b74:	83 c4 10             	add    $0x10,%esp
   33b77:	90                   	nop
   33b78:	eb ae                	jmp    33b28 <task_sys+0x6>

00033b7a <task_hd>:
   33b7a:	55                   	push   %ebp
   33b7b:	89 e5                	mov    %esp,%ebp
   33b7d:	83 ec 48             	sub    $0x48,%esp
   33b80:	e8 b1 00 00 00       	call   33c36 <init_hd>
   33b85:	83 ec 04             	sub    $0x4,%esp
   33b88:	8d 45 c4             	lea    -0x3c(%ebp),%eax
   33b8b:	50                   	push   %eax
   33b8c:	6a 11                	push   $0x11
   33b8e:	6a 02                	push   $0x2
   33b90:	e8 ff e9 ff ff       	call   32594 <send_recv>
   33b95:	83 c4 10             	add    $0x10,%esp
   33b98:	8b 45 c4             	mov    -0x3c(%ebp),%eax
   33b9b:	89 45 f4             	mov    %eax,-0xc(%ebp)
   33b9e:	8b 45 c8             	mov    -0x38(%ebp),%eax
   33ba1:	2d e9 03 00 00       	sub    $0x3e9,%eax
   33ba6:	83 f8 04             	cmp    $0x4,%eax
   33ba9:	77 4d                	ja     33bf8 <task_hd+0x7e>
   33bab:	8b 04 85 6c 5e 03 00 	mov    0x35e6c(,%eax,4),%eax
   33bb2:	ff e0                	jmp    *%eax
   33bb4:	8b 45 d8             	mov    -0x28(%ebp),%eax
   33bb7:	83 ec 0c             	sub    $0xc,%esp
   33bba:	50                   	push   %eax
   33bbb:	e8 2d 01 00 00       	call   33ced <hd_open>
   33bc0:	83 c4 10             	add    $0x10,%esp
   33bc3:	eb 58                	jmp    33c1d <task_hd+0xa3>
   33bc5:	8b 45 d8             	mov    -0x28(%ebp),%eax
   33bc8:	83 ec 0c             	sub    $0xc,%esp
   33bcb:	50                   	push   %eax
   33bcc:	e8 e2 01 00 00       	call   33db3 <hd_close>
   33bd1:	83 c4 10             	add    $0x10,%esp
   33bd4:	eb 47                	jmp    33c1d <task_hd+0xa3>
   33bd6:	83 ec 0c             	sub    $0xc,%esp
   33bd9:	8d 45 c4             	lea    -0x3c(%ebp),%eax
   33bdc:	50                   	push   %eax
   33bdd:	e8 52 02 00 00       	call   33e34 <hd_rdwt>
   33be2:	83 c4 10             	add    $0x10,%esp
   33be5:	eb 36                	jmp    33c1d <task_hd+0xa3>
   33be7:	83 ec 0c             	sub    $0xc,%esp
   33bea:	8d 45 c4             	lea    -0x3c(%ebp),%eax
   33bed:	50                   	push   %eax
   33bee:	e8 ec 04 00 00       	call   340df <hd_ioctl>
   33bf3:	83 c4 10             	add    $0x10,%esp
   33bf6:	eb 25                	jmp    33c1d <task_hd+0xa3>
   33bf8:	83 ec 08             	sub    $0x8,%esp
   33bfb:	8d 45 c4             	lea    -0x3c(%ebp),%eax
   33bfe:	50                   	push   %eax
   33bff:	68 30 5e 03 00       	push   $0x35e30
   33c04:	e8 0b fe ff ff       	call   33a14 <dump_msg>
   33c09:	83 c4 10             	add    $0x10,%esp
   33c0c:	83 ec 0c             	sub    $0xc,%esp
   33c0f:	68 48 5e 03 00       	push   $0x35e48
   33c14:	e8 0f 14 00 00       	call   35028 <spin>
   33c19:	83 c4 10             	add    $0x10,%esp
   33c1c:	90                   	nop
   33c1d:	83 ec 04             	sub    $0x4,%esp
   33c20:	8d 45 c4             	lea    -0x3c(%ebp),%eax
   33c23:	50                   	push   %eax
   33c24:	ff 75 f4             	pushl  -0xc(%ebp)
   33c27:	6a 01                	push   $0x1
   33c29:	e8 66 e9 ff ff       	call   32594 <send_recv>
   33c2e:	83 c4 10             	add    $0x10,%esp
   33c31:	e9 4f ff ff ff       	jmp    33b85 <task_hd+0xb>

00033c36 <init_hd>:
   33c36:	55                   	push   %ebp
   33c37:	89 e5                	mov    %esp,%ebp
   33c39:	83 ec 18             	sub    $0x18,%esp
   33c3c:	c7 45 f0 75 04 00 00 	movl   $0x475,-0x10(%ebp)
   33c43:	8b 45 f0             	mov    -0x10(%ebp),%eax
   33c46:	0f b6 00             	movzbl (%eax),%eax
   33c49:	0f b6 c0             	movzbl %al,%eax
   33c4c:	83 ec 08             	sub    $0x8,%esp
   33c4f:	50                   	push   %eax
   33c50:	68 80 5e 03 00       	push   $0x35e80
   33c55:	e8 33 0d 00 00       	call   3498d <printf>
   33c5a:	83 c4 10             	add    $0x10,%esp
   33c5d:	8b 45 f0             	mov    -0x10(%ebp),%eax
   33c60:	0f b6 00             	movzbl (%eax),%eax
   33c63:	84 c0                	test   %al,%al
   33c65:	75 19                	jne    33c80 <init_hd+0x4a>
   33c67:	6a 6a                	push   $0x6a
   33c69:	68 8e 5e 03 00       	push   $0x35e8e
   33c6e:	68 8e 5e 03 00       	push   $0x35e8e
   33c73:	68 9a 5e 03 00       	push   $0x35e9a
   33c78:	e8 c6 13 00 00       	call   35043 <assertion_failure>
   33c7d:	83 c4 10             	add    $0x10,%esp
   33c80:	83 ec 08             	sub    $0x8,%esp
   33c83:	68 62 49 03 00       	push   $0x34962
   33c88:	6a 0e                	push   $0xe
   33c8a:	e8 23 e1 ff ff       	call   31db2 <put_irq_handler>
   33c8f:	83 c4 10             	add    $0x10,%esp
   33c92:	83 ec 0c             	sub    $0xc,%esp
   33c95:	6a 02                	push   $0x2
   33c97:	e8 42 11 00 00       	call   34dde <enable_irq>
   33c9c:	83 c4 10             	add    $0x10,%esp
   33c9f:	83 ec 0c             	sub    $0xc,%esp
   33ca2:	6a 0e                	push   $0xe
   33ca4:	e8 35 11 00 00       	call   34dde <enable_irq>
   33ca9:	83 c4 10             	add    $0x10,%esp
   33cac:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
   33cb3:	eb 25                	jmp    33cda <init_hd+0xa4>
   33cb5:	8b 45 f4             	mov    -0xc(%ebp),%eax
   33cb8:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
   33cbe:	05 e0 93 03 00       	add    $0x393e0,%eax
   33cc3:	83 ec 04             	sub    $0x4,%esp
   33cc6:	68 2c 02 00 00       	push   $0x22c
   33ccb:	6a 00                	push   $0x0
   33ccd:	50                   	push   %eax
   33cce:	e8 06 13 00 00       	call   34fd9 <memset>
   33cd3:	83 c4 10             	add    $0x10,%esp
   33cd6:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
   33cda:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
   33cde:	74 d5                	je     33cb5 <init_hd+0x7f>
   33ce0:	c7 05 e0 93 03 00 00 	movl   $0x0,0x393e0
   33ce7:	00 00 00 
   33cea:	90                   	nop
   33ceb:	c9                   	leave  
   33cec:	c3                   	ret    

00033ced <hd_open>:
   33ced:	55                   	push   %ebp
   33cee:	89 e5                	mov    %esp,%ebp
   33cf0:	83 ec 18             	sub    $0x18,%esp
   33cf3:	83 7d 08 09          	cmpl   $0x9,0x8(%ebp)
   33cf7:	7f 19                	jg     33d12 <hd_open+0x25>
   33cf9:	8b 4d 08             	mov    0x8(%ebp),%ecx
   33cfc:	ba 67 66 66 66       	mov    $0x66666667,%edx
   33d01:	89 c8                	mov    %ecx,%eax
   33d03:	f7 ea                	imul   %edx
   33d05:	d1 fa                	sar    %edx
   33d07:	89 c8                	mov    %ecx,%eax
   33d09:	c1 f8 1f             	sar    $0x1f,%eax
   33d0c:	29 c2                	sub    %eax,%edx
   33d0e:	89 d0                	mov    %edx,%eax
   33d10:	eb 11                	jmp    33d23 <hd_open+0x36>
   33d12:	8b 45 08             	mov    0x8(%ebp),%eax
   33d15:	83 e8 10             	sub    $0x10,%eax
   33d18:	8d 50 3f             	lea    0x3f(%eax),%edx
   33d1b:	85 c0                	test   %eax,%eax
   33d1d:	0f 48 c2             	cmovs  %edx,%eax
   33d20:	c1 f8 06             	sar    $0x6,%eax
   33d23:	89 45 f4             	mov    %eax,-0xc(%ebp)
   33d26:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
   33d2a:	74 1c                	je     33d48 <hd_open+0x5b>
   33d2c:	68 82 00 00 00       	push   $0x82
   33d31:	68 8e 5e 03 00       	push   $0x35e8e
   33d36:	68 8e 5e 03 00       	push   $0x35e8e
   33d3b:	68 a5 5e 03 00       	push   $0x35ea5
   33d40:	e8 fe 12 00 00       	call   35043 <assertion_failure>
   33d45:	83 c4 10             	add    $0x10,%esp
   33d48:	83 ec 0c             	sub    $0xc,%esp
   33d4b:	ff 75 f4             	pushl  -0xc(%ebp)
   33d4e:	e8 38 08 00 00       	call   3458b <hd_identify>
   33d53:	83 c4 10             	add    $0x10,%esp
   33d56:	8b 45 f4             	mov    -0xc(%ebp),%eax
   33d59:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
   33d5f:	05 e0 93 03 00       	add    $0x393e0,%eax
   33d64:	8b 00                	mov    (%eax),%eax
   33d66:	8d 50 01             	lea    0x1(%eax),%edx
   33d69:	8b 4d f4             	mov    -0xc(%ebp),%ecx
   33d6c:	69 c9 2c 02 00 00    	imul   $0x22c,%ecx,%ecx
   33d72:	81 c1 e0 93 03 00    	add    $0x393e0,%ecx
   33d78:	89 11                	mov    %edx,(%ecx)
   33d7a:	85 c0                	test   %eax,%eax
   33d7c:	75 32                	jne    33db0 <hd_open+0xc3>
   33d7e:	8b 55 f4             	mov    -0xc(%ebp),%edx
   33d81:	89 d0                	mov    %edx,%eax
   33d83:	c1 e0 02             	shl    $0x2,%eax
   33d86:	01 d0                	add    %edx,%eax
   33d88:	83 ec 08             	sub    $0x8,%esp
   33d8b:	6a 00                	push   $0x0
   33d8d:	50                   	push   %eax
   33d8e:	e8 df 04 00 00       	call   34272 <partition>
   33d93:	83 c4 10             	add    $0x10,%esp
   33d96:	8b 45 f4             	mov    -0xc(%ebp),%eax
   33d99:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
   33d9f:	05 e0 93 03 00       	add    $0x393e0,%eax
   33da4:	83 ec 0c             	sub    $0xc,%esp
   33da7:	50                   	push   %eax
   33da8:	e8 f7 06 00 00       	call   344a4 <print_hdinfo>
   33dad:	83 c4 10             	add    $0x10,%esp
   33db0:	90                   	nop
   33db1:	c9                   	leave  
   33db2:	c3                   	ret    

00033db3 <hd_close>:
   33db3:	55                   	push   %ebp
   33db4:	89 e5                	mov    %esp,%ebp
   33db6:	83 ec 18             	sub    $0x18,%esp
   33db9:	83 7d 08 09          	cmpl   $0x9,0x8(%ebp)
   33dbd:	7f 19                	jg     33dd8 <hd_close+0x25>
   33dbf:	8b 4d 08             	mov    0x8(%ebp),%ecx
   33dc2:	ba 67 66 66 66       	mov    $0x66666667,%edx
   33dc7:	89 c8                	mov    %ecx,%eax
   33dc9:	f7 ea                	imul   %edx
   33dcb:	d1 fa                	sar    %edx
   33dcd:	89 c8                	mov    %ecx,%eax
   33dcf:	c1 f8 1f             	sar    $0x1f,%eax
   33dd2:	29 c2                	sub    %eax,%edx
   33dd4:	89 d0                	mov    %edx,%eax
   33dd6:	eb 11                	jmp    33de9 <hd_close+0x36>
   33dd8:	8b 45 08             	mov    0x8(%ebp),%eax
   33ddb:	83 e8 10             	sub    $0x10,%eax
   33dde:	8d 50 3f             	lea    0x3f(%eax),%edx
   33de1:	85 c0                	test   %eax,%eax
   33de3:	0f 48 c2             	cmovs  %edx,%eax
   33de6:	c1 f8 06             	sar    $0x6,%eax
   33de9:	89 45 f4             	mov    %eax,-0xc(%ebp)
   33dec:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
   33df0:	74 1c                	je     33e0e <hd_close+0x5b>
   33df2:	68 97 00 00 00       	push   $0x97
   33df7:	68 8e 5e 03 00       	push   $0x35e8e
   33dfc:	68 8e 5e 03 00       	push   $0x35e8e
   33e01:	68 a5 5e 03 00       	push   $0x35ea5
   33e06:	e8 38 12 00 00       	call   35043 <assertion_failure>
   33e0b:	83 c4 10             	add    $0x10,%esp
   33e0e:	8b 45 f4             	mov    -0xc(%ebp),%eax
   33e11:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
   33e17:	05 e0 93 03 00       	add    $0x393e0,%eax
   33e1c:	8b 00                	mov    (%eax),%eax
   33e1e:	8d 50 ff             	lea    -0x1(%eax),%edx
   33e21:	8b 45 f4             	mov    -0xc(%ebp),%eax
   33e24:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
   33e2a:	05 e0 93 03 00       	add    $0x393e0,%eax
   33e2f:	89 10                	mov    %edx,(%eax)
   33e31:	90                   	nop
   33e32:	c9                   	leave  
   33e33:	c3                   	ret    

00033e34 <hd_rdwt>:
   33e34:	55                   	push   %ebp
   33e35:	89 e5                	mov    %esp,%ebp
   33e37:	57                   	push   %edi
   33e38:	56                   	push   %esi
   33e39:	53                   	push   %ebx
   33e3a:	83 ec 3c             	sub    $0x3c,%esp
   33e3d:	8b 45 08             	mov    0x8(%ebp),%eax
   33e40:	8b 40 14             	mov    0x14(%eax),%eax
   33e43:	83 f8 09             	cmp    $0x9,%eax
   33e46:	7f 1c                	jg     33e64 <hd_rdwt+0x30>
   33e48:	8b 45 08             	mov    0x8(%ebp),%eax
   33e4b:	8b 48 14             	mov    0x14(%eax),%ecx
   33e4e:	ba 67 66 66 66       	mov    $0x66666667,%edx
   33e53:	89 c8                	mov    %ecx,%eax
   33e55:	f7 ea                	imul   %edx
   33e57:	d1 fa                	sar    %edx
   33e59:	89 c8                	mov    %ecx,%eax
   33e5b:	c1 f8 1f             	sar    $0x1f,%eax
   33e5e:	29 c2                	sub    %eax,%edx
   33e60:	89 d0                	mov    %edx,%eax
   33e62:	eb 14                	jmp    33e78 <hd_rdwt+0x44>
   33e64:	8b 45 08             	mov    0x8(%ebp),%eax
   33e67:	8b 40 14             	mov    0x14(%eax),%eax
   33e6a:	83 e8 10             	sub    $0x10,%eax
   33e6d:	8d 50 3f             	lea    0x3f(%eax),%edx
   33e70:	85 c0                	test   %eax,%eax
   33e72:	0f 48 c2             	cmovs  %edx,%eax
   33e75:	c1 f8 06             	sar    $0x6,%eax
   33e78:	89 45 dc             	mov    %eax,-0x24(%ebp)
   33e7b:	8b 45 08             	mov    0x8(%ebp),%eax
   33e7e:	8b 50 1c             	mov    0x1c(%eax),%edx
   33e81:	8b 40 18             	mov    0x18(%eax),%eax
   33e84:	89 45 d0             	mov    %eax,-0x30(%ebp)
   33e87:	89 55 d4             	mov    %edx,-0x2c(%ebp)
   33e8a:	8b 45 d0             	mov    -0x30(%ebp),%eax
   33e8d:	8b 55 d4             	mov    -0x2c(%ebp),%edx
   33e90:	0f ac d0 09          	shrd   $0x9,%edx,%eax
   33e94:	c1 ea 09             	shr    $0x9,%edx
   33e97:	89 c6                	mov    %eax,%esi
   33e99:	89 d7                	mov    %edx,%edi
   33e9b:	bb ff ff ff 7f       	mov    $0x7fffffff,%ebx
   33ea0:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
   33ea5:	39 f3                	cmp    %esi,%ebx
   33ea7:	19 f9                	sbb    %edi,%ecx
   33ea9:	73 1c                	jae    33ec7 <hd_rdwt+0x93>
   33eab:	68 aa 00 00 00       	push   $0xaa
   33eb0:	68 8e 5e 03 00       	push   $0x35e8e
   33eb5:	68 8e 5e 03 00       	push   $0x35e8e
   33eba:	68 b0 5e 03 00       	push   $0x35eb0
   33ebf:	e8 7f 11 00 00       	call   35043 <assertion_failure>
   33ec4:	83 c4 10             	add    $0x10,%esp
   33ec7:	8b 45 d0             	mov    -0x30(%ebp),%eax
   33eca:	8b 55 d4             	mov    -0x2c(%ebp),%edx
   33ecd:	25 ff 01 00 00       	and    $0x1ff,%eax
   33ed2:	ba 00 00 00 00       	mov    $0x0,%edx
   33ed7:	09 d0                	or     %edx,%eax
   33ed9:	85 c0                	test   %eax,%eax
   33edb:	74 1c                	je     33ef9 <hd_rdwt+0xc5>
   33edd:	68 af 00 00 00       	push   $0xaf
   33ee2:	68 8e 5e 03 00       	push   $0x35e8e
   33ee7:	68 8e 5e 03 00       	push   $0x35e8e
   33eec:	68 d7 5e 03 00       	push   $0x35ed7
   33ef1:	e8 4d 11 00 00       	call   35043 <assertion_failure>
   33ef6:	83 c4 10             	add    $0x10,%esp
   33ef9:	8b 45 d0             	mov    -0x30(%ebp),%eax
   33efc:	8b 55 d4             	mov    -0x2c(%ebp),%edx
   33eff:	0f ac d0 09          	shrd   $0x9,%edx,%eax
   33f03:	c1 ea 09             	shr    $0x9,%edx
   33f06:	89 c3                	mov    %eax,%ebx
   33f08:	89 d6                	mov    %edx,%esi
   33f0a:	89 5d cc             	mov    %ebx,-0x34(%ebp)
   33f0d:	8b 45 08             	mov    0x8(%ebp),%eax
   33f10:	8b 40 14             	mov    0x14(%eax),%eax
   33f13:	8d 50 f0             	lea    -0x10(%eax),%edx
   33f16:	89 d0                	mov    %edx,%eax
   33f18:	c1 f8 1f             	sar    $0x1f,%eax
   33f1b:	c1 e8 1a             	shr    $0x1a,%eax
   33f1e:	01 c2                	add    %eax,%edx
   33f20:	83 e2 3f             	and    $0x3f,%edx
   33f23:	29 c2                	sub    %eax,%edx
   33f25:	89 d0                	mov    %edx,%eax
   33f27:	89 45 c8             	mov    %eax,-0x38(%ebp)
   33f2a:	8b 45 08             	mov    0x8(%ebp),%eax
   33f2d:	8b 40 14             	mov    0x14(%eax),%eax
   33f30:	83 f8 08             	cmp    $0x8,%eax
   33f33:	7f 1d                	jg     33f52 <hd_rdwt+0x11e>
   33f35:	8b 45 08             	mov    0x8(%ebp),%eax
   33f38:	8b 50 14             	mov    0x14(%eax),%edx
   33f3b:	8b 45 dc             	mov    -0x24(%ebp),%eax
   33f3e:	c1 e2 03             	shl    $0x3,%edx
   33f41:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
   33f47:	01 d0                	add    %edx,%eax
   33f49:	05 e4 93 03 00       	add    $0x393e4,%eax
   33f4e:	8b 00                	mov    (%eax),%eax
   33f50:	eb 1b                	jmp    33f6d <hd_rdwt+0x139>
   33f52:	8b 45 c8             	mov    -0x38(%ebp),%eax
   33f55:	8d 50 04             	lea    0x4(%eax),%edx
   33f58:	8b 45 dc             	mov    -0x24(%ebp),%eax
   33f5b:	c1 e2 03             	shl    $0x3,%edx
   33f5e:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
   33f64:	01 d0                	add    %edx,%eax
   33f66:	05 ec 93 03 00       	add    $0x393ec,%eax
   33f6b:	8b 00                	mov    (%eax),%eax
   33f6d:	01 45 cc             	add    %eax,-0x34(%ebp)
   33f70:	c6 45 bd 00          	movb   $0x0,-0x43(%ebp)
   33f74:	8b 45 08             	mov    0x8(%ebp),%eax
   33f77:	8b 40 0c             	mov    0xc(%eax),%eax
   33f7a:	05 ff 01 00 00       	add    $0x1ff,%eax
   33f7f:	8d 90 ff 01 00 00    	lea    0x1ff(%eax),%edx
   33f85:	85 c0                	test   %eax,%eax
   33f87:	0f 48 c2             	cmovs  %edx,%eax
   33f8a:	c1 f8 09             	sar    $0x9,%eax
   33f8d:	88 45 be             	mov    %al,-0x42(%ebp)
   33f90:	8b 45 cc             	mov    -0x34(%ebp),%eax
   33f93:	88 45 bf             	mov    %al,-0x41(%ebp)
   33f96:	8b 45 cc             	mov    -0x34(%ebp),%eax
   33f99:	c1 e8 08             	shr    $0x8,%eax
   33f9c:	88 45 c0             	mov    %al,-0x40(%ebp)
   33f9f:	8b 45 cc             	mov    -0x34(%ebp),%eax
   33fa2:	c1 e8 10             	shr    $0x10,%eax
   33fa5:	88 45 c1             	mov    %al,-0x3f(%ebp)
   33fa8:	8b 45 dc             	mov    -0x24(%ebp),%eax
   33fab:	c1 e0 04             	shl    $0x4,%eax
   33fae:	89 c2                	mov    %eax,%edx
   33fb0:	8b 45 cc             	mov    -0x34(%ebp),%eax
   33fb3:	c1 e8 18             	shr    $0x18,%eax
   33fb6:	83 e0 0f             	and    $0xf,%eax
   33fb9:	09 d0                	or     %edx,%eax
   33fbb:	83 c8 e0             	or     $0xffffffe0,%eax
   33fbe:	88 45 c2             	mov    %al,-0x3e(%ebp)
   33fc1:	8b 45 08             	mov    0x8(%ebp),%eax
   33fc4:	8b 40 04             	mov    0x4(%eax),%eax
   33fc7:	3d eb 03 00 00       	cmp    $0x3eb,%eax
   33fcc:	75 07                	jne    33fd5 <hd_rdwt+0x1a1>
   33fce:	b8 20 00 00 00       	mov    $0x20,%eax
   33fd3:	eb 05                	jmp    33fda <hd_rdwt+0x1a6>
   33fd5:	b8 30 00 00 00       	mov    $0x30,%eax
   33fda:	88 45 c3             	mov    %al,-0x3d(%ebp)
   33fdd:	83 ec 0c             	sub    $0xc,%esp
   33fe0:	8d 45 bd             	lea    -0x43(%ebp),%eax
   33fe3:	50                   	push   %eax
   33fe4:	e8 0a 08 00 00       	call   347f3 <hd_cmd_out>
   33fe9:	83 c4 10             	add    $0x10,%esp
   33fec:	8b 45 08             	mov    0x8(%ebp),%eax
   33fef:	8b 40 0c             	mov    0xc(%eax),%eax
   33ff2:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   33ff5:	8b 45 08             	mov    0x8(%ebp),%eax
   33ff8:	8b 50 2c             	mov    0x2c(%eax),%edx
   33ffb:	8b 45 08             	mov    0x8(%ebp),%eax
   33ffe:	8b 40 10             	mov    0x10(%eax),%eax
   34001:	83 ec 08             	sub    $0x8,%esp
   34004:	52                   	push   %edx
   34005:	50                   	push   %eax
   34006:	e8 90 e6 ff ff       	call   3269b <va2la>
   3400b:	83 c4 10             	add    $0x10,%esp
   3400e:	89 45 e0             	mov    %eax,-0x20(%ebp)
   34011:	e9 b6 00 00 00       	jmp    340cc <hd_rdwt+0x298>
   34016:	b8 00 02 00 00       	mov    $0x200,%eax
   3401b:	81 7d e4 00 02 00 00 	cmpl   $0x200,-0x1c(%ebp)
   34022:	0f 4e 45 e4          	cmovle -0x1c(%ebp),%eax
   34026:	89 45 c4             	mov    %eax,-0x3c(%ebp)
   34029:	8b 45 08             	mov    0x8(%ebp),%eax
   3402c:	8b 40 04             	mov    0x4(%eax),%eax
   3402f:	3d eb 03 00 00       	cmp    $0x3eb,%eax
   34034:	75 45                	jne    3407b <hd_rdwt+0x247>
   34036:	e8 ba 08 00 00       	call   348f5 <interrupt_wait>
   3403b:	83 ec 04             	sub    $0x4,%esp
   3403e:	68 00 02 00 00       	push   $0x200
   34043:	68 e0 8f 03 00       	push   $0x38fe0
   34048:	68 f0 01 00 00       	push   $0x1f0
   3404d:	e8 31 0d 00 00       	call   34d83 <port_read>
   34052:	83 c4 10             	add    $0x10,%esp
   34055:	83 ec 08             	sub    $0x8,%esp
   34058:	68 e0 8f 03 00       	push   $0x38fe0
   3405d:	6a 02                	push   $0x2
   3405f:	e8 37 e6 ff ff       	call   3269b <va2la>
   34064:	83 c4 10             	add    $0x10,%esp
   34067:	83 ec 04             	sub    $0x4,%esp
   3406a:	ff 75 c4             	pushl  -0x3c(%ebp)
   3406d:	50                   	push   %eax
   3406e:	ff 75 e0             	pushl  -0x20(%ebp)
   34071:	e8 3a 0f 00 00       	call   34fb0 <memcpy>
   34076:	83 c4 10             	add    $0x10,%esp
   34079:	eb 43                	jmp    340be <hd_rdwt+0x28a>
   3407b:	83 ec 04             	sub    $0x4,%esp
   3407e:	68 10 27 00 00       	push   $0x2710
   34083:	6a 08                	push   $0x8
   34085:	6a 08                	push   $0x8
   34087:	e8 85 08 00 00       	call   34911 <waitfor>
   3408c:	83 c4 10             	add    $0x10,%esp
   3408f:	85 c0                	test   %eax,%eax
   34091:	75 10                	jne    340a3 <hd_rdwt+0x26f>
   34093:	83 ec 0c             	sub    $0xc,%esp
   34096:	68 ea 5e 03 00       	push   $0x35eea
   3409b:	e8 35 cb ff ff       	call   30bd5 <panic>
   340a0:	83 c4 10             	add    $0x10,%esp
   340a3:	83 ec 04             	sub    $0x4,%esp
   340a6:	ff 75 c4             	pushl  -0x3c(%ebp)
   340a9:	ff 75 e0             	pushl  -0x20(%ebp)
   340ac:	68 f0 01 00 00       	push   $0x1f0
   340b1:	e8 e0 0c 00 00       	call   34d96 <port_write>
   340b6:	83 c4 10             	add    $0x10,%esp
   340b9:	e8 37 08 00 00       	call   348f5 <interrupt_wait>
   340be:	81 6d e4 00 02 00 00 	subl   $0x200,-0x1c(%ebp)
   340c5:	81 45 e0 00 02 00 00 	addl   $0x200,-0x20(%ebp)
   340cc:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
   340d0:	0f 85 40 ff ff ff    	jne    34016 <hd_rdwt+0x1e2>
   340d6:	90                   	nop
   340d7:	8d 65 f4             	lea    -0xc(%ebp),%esp
   340da:	5b                   	pop    %ebx
   340db:	5e                   	pop    %esi
   340dc:	5f                   	pop    %edi
   340dd:	5d                   	pop    %ebp
   340de:	c3                   	ret    

000340df <hd_ioctl>:
   340df:	55                   	push   %ebp
   340e0:	89 e5                	mov    %esp,%ebp
   340e2:	83 ec 28             	sub    $0x28,%esp
   340e5:	8b 45 08             	mov    0x8(%ebp),%eax
   340e8:	8b 40 14             	mov    0x14(%eax),%eax
   340eb:	89 45 f4             	mov    %eax,-0xc(%ebp)
   340ee:	83 7d f4 09          	cmpl   $0x9,-0xc(%ebp)
   340f2:	7f 19                	jg     3410d <hd_ioctl+0x2e>
   340f4:	8b 4d f4             	mov    -0xc(%ebp),%ecx
   340f7:	ba 67 66 66 66       	mov    $0x66666667,%edx
   340fc:	89 c8                	mov    %ecx,%eax
   340fe:	f7 ea                	imul   %edx
   34100:	d1 fa                	sar    %edx
   34102:	89 c8                	mov    %ecx,%eax
   34104:	c1 f8 1f             	sar    $0x1f,%eax
   34107:	29 c2                	sub    %eax,%edx
   34109:	89 d0                	mov    %edx,%eax
   3410b:	eb 11                	jmp    3411e <hd_ioctl+0x3f>
   3410d:	8b 45 f4             	mov    -0xc(%ebp),%eax
   34110:	83 e8 10             	sub    $0x10,%eax
   34113:	8d 50 3f             	lea    0x3f(%eax),%edx
   34116:	85 c0                	test   %eax,%eax
   34118:	0f 48 c2             	cmovs  %edx,%eax
   3411b:	c1 f8 06             	sar    $0x6,%eax
   3411e:	89 45 f0             	mov    %eax,-0x10(%ebp)
   34121:	8b 45 f0             	mov    -0x10(%ebp),%eax
   34124:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
   3412a:	05 e0 93 03 00       	add    $0x393e0,%eax
   3412f:	89 45 ec             	mov    %eax,-0x14(%ebp)
   34132:	8b 45 08             	mov    0x8(%ebp),%eax
   34135:	8b 40 0c             	mov    0xc(%eax),%eax
   34138:	83 f8 01             	cmp    $0x1,%eax
   3413b:	0f 85 85 00 00 00    	jne    341c6 <hd_ioctl+0xe7>
   34141:	8b 45 08             	mov    0x8(%ebp),%eax
   34144:	8b 50 2c             	mov    0x2c(%eax),%edx
   34147:	8b 45 08             	mov    0x8(%ebp),%eax
   3414a:	8b 40 10             	mov    0x10(%eax),%eax
   3414d:	83 ec 08             	sub    $0x8,%esp
   34150:	52                   	push   %edx
   34151:	50                   	push   %eax
   34152:	e8 44 e5 ff ff       	call   3269b <va2la>
   34157:	83 c4 10             	add    $0x10,%esp
   3415a:	89 45 e8             	mov    %eax,-0x18(%ebp)
   3415d:	83 7d f4 08          	cmpl   $0x8,-0xc(%ebp)
   34161:	7f 14                	jg     34177 <hd_ioctl+0x98>
   34163:	8b 45 f4             	mov    -0xc(%ebp),%eax
   34166:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
   3416d:	8b 45 ec             	mov    -0x14(%ebp),%eax
   34170:	01 d0                	add    %edx,%eax
   34172:	83 c0 04             	add    $0x4,%eax
   34175:	eb 29                	jmp    341a0 <hd_ioctl+0xc1>
   34177:	8b 45 f4             	mov    -0xc(%ebp),%eax
   3417a:	8d 50 f0             	lea    -0x10(%eax),%edx
   3417d:	89 d0                	mov    %edx,%eax
   3417f:	c1 f8 1f             	sar    $0x1f,%eax
   34182:	c1 e8 1a             	shr    $0x1a,%eax
   34185:	01 c2                	add    %eax,%edx
   34187:	83 e2 3f             	and    $0x3f,%edx
   3418a:	29 c2                	sub    %eax,%edx
   3418c:	89 d0                	mov    %edx,%eax
   3418e:	83 c0 04             	add    $0x4,%eax
   34191:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
   34198:	8b 45 ec             	mov    -0x14(%ebp),%eax
   3419b:	01 d0                	add    %edx,%eax
   3419d:	83 c0 0c             	add    $0xc,%eax
   341a0:	83 ec 08             	sub    $0x8,%esp
   341a3:	50                   	push   %eax
   341a4:	6a 02                	push   $0x2
   341a6:	e8 f0 e4 ff ff       	call   3269b <va2la>
   341ab:	83 c4 10             	add    $0x10,%esp
   341ae:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   341b1:	83 ec 04             	sub    $0x4,%esp
   341b4:	6a 08                	push   $0x8
   341b6:	ff 75 e4             	pushl  -0x1c(%ebp)
   341b9:	ff 75 e8             	pushl  -0x18(%ebp)
   341bc:	e8 ef 0d 00 00       	call   34fb0 <memcpy>
   341c1:	83 c4 10             	add    $0x10,%esp
   341c4:	eb 1c                	jmp    341e2 <hd_ioctl+0x103>
   341c6:	68 f2 00 00 00       	push   $0xf2
   341cb:	68 8e 5e 03 00       	push   $0x35e8e
   341d0:	68 8e 5e 03 00       	push   $0x35e8e
   341d5:	68 fc 5e 03 00       	push   $0x35efc
   341da:	e8 64 0e 00 00       	call   35043 <assertion_failure>
   341df:	83 c4 10             	add    $0x10,%esp
   341e2:	90                   	nop
   341e3:	c9                   	leave  
   341e4:	c3                   	ret    

000341e5 <get_part_table>:
   341e5:	55                   	push   %ebp
   341e6:	89 e5                	mov    %esp,%ebp
   341e8:	83 ec 18             	sub    $0x18,%esp
   341eb:	c6 45 f1 00          	movb   $0x0,-0xf(%ebp)
   341ef:	c6 45 f2 01          	movb   $0x1,-0xe(%ebp)
   341f3:	8b 45 0c             	mov    0xc(%ebp),%eax
   341f6:	88 45 f3             	mov    %al,-0xd(%ebp)
   341f9:	8b 45 0c             	mov    0xc(%ebp),%eax
   341fc:	c1 f8 08             	sar    $0x8,%eax
   341ff:	88 45 f4             	mov    %al,-0xc(%ebp)
   34202:	8b 45 0c             	mov    0xc(%ebp),%eax
   34205:	c1 f8 10             	sar    $0x10,%eax
   34208:	88 45 f5             	mov    %al,-0xb(%ebp)
   3420b:	8b 45 08             	mov    0x8(%ebp),%eax
   3420e:	c1 e0 04             	shl    $0x4,%eax
   34211:	83 c8 40             	or     $0x40,%eax
   34214:	89 c2                	mov    %eax,%edx
   34216:	8b 45 0c             	mov    0xc(%ebp),%eax
   34219:	c1 f8 18             	sar    $0x18,%eax
   3421c:	83 e0 0f             	and    $0xf,%eax
   3421f:	09 d0                	or     %edx,%eax
   34221:	83 c8 a0             	or     $0xffffffa0,%eax
   34224:	88 45 f6             	mov    %al,-0xa(%ebp)
   34227:	c6 45 f7 20          	movb   $0x20,-0x9(%ebp)
   3422b:	83 ec 0c             	sub    $0xc,%esp
   3422e:	8d 45 f1             	lea    -0xf(%ebp),%eax
   34231:	50                   	push   %eax
   34232:	e8 bc 05 00 00       	call   347f3 <hd_cmd_out>
   34237:	83 c4 10             	add    $0x10,%esp
   3423a:	e8 b6 06 00 00       	call   348f5 <interrupt_wait>
   3423f:	83 ec 04             	sub    $0x4,%esp
   34242:	68 00 02 00 00       	push   $0x200
   34247:	68 e0 8f 03 00       	push   $0x38fe0
   3424c:	68 f0 01 00 00       	push   $0x1f0
   34251:	e8 2d 0b 00 00       	call   34d83 <port_read>
   34256:	83 c4 10             	add    $0x10,%esp
   34259:	b8 9e 91 03 00       	mov    $0x3919e,%eax
   3425e:	83 ec 04             	sub    $0x4,%esp
   34261:	6a 40                	push   $0x40
   34263:	50                   	push   %eax
   34264:	ff 75 10             	pushl  0x10(%ebp)
   34267:	e8 44 0d 00 00       	call   34fb0 <memcpy>
   3426c:	83 c4 10             	add    $0x10,%esp
   3426f:	90                   	nop
   34270:	c9                   	leave  
   34271:	c3                   	ret    

00034272 <partition>:
   34272:	55                   	push   %ebp
   34273:	89 e5                	mov    %esp,%ebp
   34275:	81 ec 38 04 00 00    	sub    $0x438,%esp
   3427b:	83 7d 08 09          	cmpl   $0x9,0x8(%ebp)
   3427f:	7f 19                	jg     3429a <partition+0x28>
   34281:	8b 4d 08             	mov    0x8(%ebp),%ecx
   34284:	ba 67 66 66 66       	mov    $0x66666667,%edx
   34289:	89 c8                	mov    %ecx,%eax
   3428b:	f7 ea                	imul   %edx
   3428d:	d1 fa                	sar    %edx
   3428f:	89 c8                	mov    %ecx,%eax
   34291:	c1 f8 1f             	sar    $0x1f,%eax
   34294:	29 c2                	sub    %eax,%edx
   34296:	89 d0                	mov    %edx,%eax
   34298:	eb 11                	jmp    342ab <partition+0x39>
   3429a:	8b 45 08             	mov    0x8(%ebp),%eax
   3429d:	83 e8 10             	sub    $0x10,%eax
   342a0:	8d 50 3f             	lea    0x3f(%eax),%edx
   342a3:	85 c0                	test   %eax,%eax
   342a5:	0f 48 c2             	cmovs  %edx,%eax
   342a8:	c1 f8 06             	sar    $0x6,%eax
   342ab:	89 45 e8             	mov    %eax,-0x18(%ebp)
   342ae:	8b 45 e8             	mov    -0x18(%ebp),%eax
   342b1:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
   342b7:	05 e0 93 03 00       	add    $0x393e0,%eax
   342bc:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   342bf:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
   342c3:	0f 85 f0 00 00 00    	jne    343b9 <partition+0x147>
   342c9:	83 ec 04             	sub    $0x4,%esp
   342cc:	8d 85 d0 fb ff ff    	lea    -0x430(%ebp),%eax
   342d2:	50                   	push   %eax
   342d3:	ff 75 e8             	pushl  -0x18(%ebp)
   342d6:	ff 75 e8             	pushl  -0x18(%ebp)
   342d9:	e8 07 ff ff ff       	call   341e5 <get_part_table>
   342de:	83 c4 10             	add    $0x10,%esp
   342e1:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
   342e8:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
   342ef:	e9 90 00 00 00       	jmp    34384 <partition+0x112>
   342f4:	8b 45 f4             	mov    -0xc(%ebp),%eax
   342f7:	c1 e0 04             	shl    $0x4,%eax
   342fa:	8d 4d f8             	lea    -0x8(%ebp),%ecx
   342fd:	01 c8                	add    %ecx,%eax
   342ff:	2d 24 04 00 00       	sub    $0x424,%eax
   34304:	0f b6 00             	movzbl (%eax),%eax
   34307:	84 c0                	test   %al,%al
   34309:	74 74                	je     3437f <partition+0x10d>
   3430b:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
   3430f:	8b 45 f4             	mov    -0xc(%ebp),%eax
   34312:	83 c0 01             	add    $0x1,%eax
   34315:	89 45 e0             	mov    %eax,-0x20(%ebp)
   34318:	8b 45 f4             	mov    -0xc(%ebp),%eax
   3431b:	c1 e0 04             	shl    $0x4,%eax
   3431e:	8d 4d f8             	lea    -0x8(%ebp),%ecx
   34321:	01 c8                	add    %ecx,%eax
   34323:	2d 20 04 00 00       	sub    $0x420,%eax
   34328:	8b 08                	mov    (%eax),%ecx
   3432a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   3432d:	8b 55 e0             	mov    -0x20(%ebp),%edx
   34330:	89 4c d0 04          	mov    %ecx,0x4(%eax,%edx,8)
   34334:	8b 45 f4             	mov    -0xc(%ebp),%eax
   34337:	c1 e0 04             	shl    $0x4,%eax
   3433a:	8d 4d f8             	lea    -0x8(%ebp),%ecx
   3433d:	01 c8                	add    %ecx,%eax
   3433f:	2d 1c 04 00 00       	sub    $0x41c,%eax
   34344:	8b 08                	mov    (%eax),%ecx
   34346:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   34349:	8b 55 e0             	mov    -0x20(%ebp),%edx
   3434c:	89 4c d0 08          	mov    %ecx,0x8(%eax,%edx,8)
   34350:	8b 45 f4             	mov    -0xc(%ebp),%eax
   34353:	c1 e0 04             	shl    $0x4,%eax
   34356:	8d 4d f8             	lea    -0x8(%ebp),%ecx
   34359:	01 c8                	add    %ecx,%eax
   3435b:	2d 24 04 00 00       	sub    $0x424,%eax
   34360:	0f b6 00             	movzbl (%eax),%eax
   34363:	3c 05                	cmp    $0x5,%al
   34365:	75 19                	jne    34380 <partition+0x10e>
   34367:	8b 55 08             	mov    0x8(%ebp),%edx
   3436a:	8b 45 e0             	mov    -0x20(%ebp),%eax
   3436d:	01 d0                	add    %edx,%eax
   3436f:	83 ec 08             	sub    $0x8,%esp
   34372:	6a 01                	push   $0x1
   34374:	50                   	push   %eax
   34375:	e8 f8 fe ff ff       	call   34272 <partition>
   3437a:	83 c4 10             	add    $0x10,%esp
   3437d:	eb 01                	jmp    34380 <partition+0x10e>
   3437f:	90                   	nop
   34380:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
   34384:	83 7d f4 03          	cmpl   $0x3,-0xc(%ebp)
   34388:	0f 8e 66 ff ff ff    	jle    342f4 <partition+0x82>
   3438e:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
   34392:	0f 85 09 01 00 00    	jne    344a1 <partition+0x22f>
   34398:	68 37 01 00 00       	push   $0x137
   3439d:	68 8e 5e 03 00       	push   $0x35e8e
   343a2:	68 8e 5e 03 00       	push   $0x35e8e
   343a7:	68 fe 5e 03 00       	push   $0x35efe
   343ac:	e8 92 0c 00 00       	call   35043 <assertion_failure>
   343b1:	83 c4 10             	add    $0x10,%esp
   343b4:	e9 e8 00 00 00       	jmp    344a1 <partition+0x22f>
   343b9:	83 7d 0c 01          	cmpl   $0x1,0xc(%ebp)
   343bd:	0f 85 bf 00 00 00    	jne    34482 <partition+0x210>
   343c3:	8b 4d 08             	mov    0x8(%ebp),%ecx
   343c6:	ba 67 66 66 66       	mov    $0x66666667,%edx
   343cb:	89 c8                	mov    %ecx,%eax
   343cd:	f7 ea                	imul   %edx
   343cf:	d1 fa                	sar    %edx
   343d1:	89 c8                	mov    %ecx,%eax
   343d3:	c1 f8 1f             	sar    $0x1f,%eax
   343d6:	29 c2                	sub    %eax,%edx
   343d8:	89 d0                	mov    %edx,%eax
   343da:	c1 e0 02             	shl    $0x2,%eax
   343dd:	01 d0                	add    %edx,%eax
   343df:	29 c1                	sub    %eax,%ecx
   343e1:	89 c8                	mov    %ecx,%eax
   343e3:	89 45 dc             	mov    %eax,-0x24(%ebp)
   343e6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   343e9:	8b 55 dc             	mov    -0x24(%ebp),%edx
   343ec:	8b 44 d0 04          	mov    0x4(%eax,%edx,8),%eax
   343f0:	89 45 d8             	mov    %eax,-0x28(%ebp)
   343f3:	8b 45 d8             	mov    -0x28(%ebp),%eax
   343f6:	89 45 ec             	mov    %eax,-0x14(%ebp)
   343f9:	8b 45 dc             	mov    -0x24(%ebp),%eax
   343fc:	83 e8 01             	sub    $0x1,%eax
   343ff:	c1 e0 04             	shl    $0x4,%eax
   34402:	89 45 d4             	mov    %eax,-0x2c(%ebp)
   34405:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
   3440c:	eb 6c                	jmp    3447a <partition+0x208>
   3440e:	8b 55 d4             	mov    -0x2c(%ebp),%edx
   34411:	8b 45 f4             	mov    -0xc(%ebp),%eax
   34414:	01 d0                	add    %edx,%eax
   34416:	89 45 d0             	mov    %eax,-0x30(%ebp)
   34419:	83 ec 04             	sub    $0x4,%esp
   3441c:	8d 85 d0 fb ff ff    	lea    -0x430(%ebp),%eax
   34422:	50                   	push   %eax
   34423:	ff 75 ec             	pushl  -0x14(%ebp)
   34426:	ff 75 e8             	pushl  -0x18(%ebp)
   34429:	e8 b7 fd ff ff       	call   341e5 <get_part_table>
   3442e:	83 c4 10             	add    $0x10,%esp
   34431:	8b 95 d8 fb ff ff    	mov    -0x428(%ebp),%edx
   34437:	8b 45 ec             	mov    -0x14(%ebp),%eax
   3443a:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
   3443d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   34440:	8b 55 d0             	mov    -0x30(%ebp),%edx
   34443:	83 c2 04             	add    $0x4,%edx
   34446:	89 4c d0 0c          	mov    %ecx,0xc(%eax,%edx,8)
   3444a:	8b 95 dc fb ff ff    	mov    -0x424(%ebp),%edx
   34450:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   34453:	8b 4d d0             	mov    -0x30(%ebp),%ecx
   34456:	83 c1 04             	add    $0x4,%ecx
   34459:	89 54 c8 10          	mov    %edx,0x10(%eax,%ecx,8)
   3445d:	8b 95 e8 fb ff ff    	mov    -0x418(%ebp),%edx
   34463:	8b 45 d8             	mov    -0x28(%ebp),%eax
   34466:	01 d0                	add    %edx,%eax
   34468:	89 45 ec             	mov    %eax,-0x14(%ebp)
   3446b:	0f b6 85 e4 fb ff ff 	movzbl -0x41c(%ebp),%eax
   34472:	84 c0                	test   %al,%al
   34474:	74 2a                	je     344a0 <partition+0x22e>
   34476:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
   3447a:	83 7d f4 0f          	cmpl   $0xf,-0xc(%ebp)
   3447e:	7e 8e                	jle    3440e <partition+0x19c>
   34480:	eb 1f                	jmp    344a1 <partition+0x22f>
   34482:	68 50 01 00 00       	push   $0x150
   34487:	68 8e 5e 03 00       	push   $0x35e8e
   3448c:	68 8e 5e 03 00       	push   $0x35e8e
   34491:	68 fc 5e 03 00       	push   $0x35efc
   34496:	e8 a8 0b 00 00       	call   35043 <assertion_failure>
   3449b:	83 c4 10             	add    $0x10,%esp
   3449e:	eb 01                	jmp    344a1 <partition+0x22f>
   344a0:	90                   	nop
   344a1:	90                   	nop
   344a2:	c9                   	leave  
   344a3:	c3                   	ret    

000344a4 <print_hdinfo>:
   344a4:	55                   	push   %ebp
   344a5:	89 e5                	mov    %esp,%ebp
   344a7:	56                   	push   %esi
   344a8:	53                   	push   %ebx
   344a9:	83 ec 10             	sub    $0x10,%esp
   344ac:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
   344b3:	eb 56                	jmp    3450b <print_hdinfo+0x67>
   344b5:	8b 45 08             	mov    0x8(%ebp),%eax
   344b8:	8b 55 f4             	mov    -0xc(%ebp),%edx
   344bb:	8b 5c d0 08          	mov    0x8(%eax,%edx,8),%ebx
   344bf:	8b 45 08             	mov    0x8(%ebp),%eax
   344c2:	8b 55 f4             	mov    -0xc(%ebp),%edx
   344c5:	8b 4c d0 08          	mov    0x8(%eax,%edx,8),%ecx
   344c9:	8b 45 08             	mov    0x8(%ebp),%eax
   344cc:	8b 55 f4             	mov    -0xc(%ebp),%edx
   344cf:	8b 54 d0 04          	mov    0x4(%eax,%edx,8),%edx
   344d3:	8b 45 08             	mov    0x8(%ebp),%eax
   344d6:	8b 75 f4             	mov    -0xc(%ebp),%esi
   344d9:	8b 44 f0 04          	mov    0x4(%eax,%esi,8),%eax
   344dd:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
   344e1:	75 07                	jne    344ea <print_hdinfo+0x46>
   344e3:	be 11 5f 03 00       	mov    $0x35f11,%esi
   344e8:	eb 05                	jmp    344ef <print_hdinfo+0x4b>
   344ea:	be 13 5f 03 00       	mov    $0x35f13,%esi
   344ef:	83 ec 04             	sub    $0x4,%esp
   344f2:	53                   	push   %ebx
   344f3:	51                   	push   %ecx
   344f4:	52                   	push   %edx
   344f5:	50                   	push   %eax
   344f6:	ff 75 f4             	pushl  -0xc(%ebp)
   344f9:	56                   	push   %esi
   344fa:	68 1c 5f 03 00       	push   $0x35f1c
   344ff:	e8 89 04 00 00       	call   3498d <printf>
   34504:	83 c4 20             	add    $0x20,%esp
   34507:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
   3450b:	83 7d f4 04          	cmpl   $0x4,-0xc(%ebp)
   3450f:	7e a4                	jle    344b5 <print_hdinfo+0x11>
   34511:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
   34518:	eb 63                	jmp    3457d <print_hdinfo+0xd9>
   3451a:	8b 45 08             	mov    0x8(%ebp),%eax
   3451d:	8b 55 f4             	mov    -0xc(%ebp),%edx
   34520:	83 c2 04             	add    $0x4,%edx
   34523:	8b 44 d0 10          	mov    0x10(%eax,%edx,8),%eax
   34527:	85 c0                	test   %eax,%eax
   34529:	74 4d                	je     34578 <print_hdinfo+0xd4>
   3452b:	8b 45 08             	mov    0x8(%ebp),%eax
   3452e:	8b 55 f4             	mov    -0xc(%ebp),%edx
   34531:	83 c2 04             	add    $0x4,%edx
   34534:	8b 5c d0 10          	mov    0x10(%eax,%edx,8),%ebx
   34538:	8b 45 08             	mov    0x8(%ebp),%eax
   3453b:	8b 55 f4             	mov    -0xc(%ebp),%edx
   3453e:	83 c2 04             	add    $0x4,%edx
   34541:	8b 4c d0 10          	mov    0x10(%eax,%edx,8),%ecx
   34545:	8b 45 08             	mov    0x8(%ebp),%eax
   34548:	8b 55 f4             	mov    -0xc(%ebp),%edx
   3454b:	83 c2 04             	add    $0x4,%edx
   3454e:	8b 54 d0 0c          	mov    0xc(%eax,%edx,8),%edx
   34552:	8b 45 08             	mov    0x8(%ebp),%eax
   34555:	8b 75 f4             	mov    -0xc(%ebp),%esi
   34558:	83 c6 04             	add    $0x4,%esi
   3455b:	8b 44 f0 0c          	mov    0xc(%eax,%esi,8),%eax
   3455f:	83 ec 08             	sub    $0x8,%esp
   34562:	53                   	push   %ebx
   34563:	51                   	push   %ecx
   34564:	52                   	push   %edx
   34565:	50                   	push   %eax
   34566:	ff 75 f4             	pushl  -0xc(%ebp)
   34569:	68 54 5f 03 00       	push   $0x35f54
   3456e:	e8 1a 04 00 00       	call   3498d <printf>
   34573:	83 c4 20             	add    $0x20,%esp
   34576:	eb 01                	jmp    34579 <print_hdinfo+0xd5>
   34578:	90                   	nop
   34579:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
   3457d:	83 7d f4 3f          	cmpl   $0x3f,-0xc(%ebp)
   34581:	7e 97                	jle    3451a <print_hdinfo+0x76>
   34583:	90                   	nop
   34584:	8d 65 f8             	lea    -0x8(%ebp),%esp
   34587:	5b                   	pop    %ebx
   34588:	5e                   	pop    %esi
   34589:	5d                   	pop    %ebp
   3458a:	c3                   	ret    

0003458b <hd_identify>:
   3458b:	55                   	push   %ebp
   3458c:	89 e5                	mov    %esp,%ebp
   3458e:	83 ec 18             	sub    $0x18,%esp
   34591:	8b 45 08             	mov    0x8(%ebp),%eax
   34594:	c1 e0 04             	shl    $0x4,%eax
   34597:	83 c8 a0             	or     $0xffffffa0,%eax
   3459a:	88 45 f2             	mov    %al,-0xe(%ebp)
   3459d:	c6 45 f3 ec          	movb   $0xec,-0xd(%ebp)
   345a1:	83 ec 0c             	sub    $0xc,%esp
   345a4:	8d 45 ed             	lea    -0x13(%ebp),%eax
   345a7:	50                   	push   %eax
   345a8:	e8 46 02 00 00       	call   347f3 <hd_cmd_out>
   345ad:	83 c4 10             	add    $0x10,%esp
   345b0:	e8 40 03 00 00       	call   348f5 <interrupt_wait>
   345b5:	83 ec 04             	sub    $0x4,%esp
   345b8:	68 00 02 00 00       	push   $0x200
   345bd:	68 e0 8f 03 00       	push   $0x38fe0
   345c2:	68 f0 01 00 00       	push   $0x1f0
   345c7:	e8 b7 07 00 00       	call   34d83 <port_read>
   345cc:	83 c4 10             	add    $0x10,%esp
   345cf:	83 ec 0c             	sub    $0xc,%esp
   345d2:	68 e0 8f 03 00       	push   $0x38fe0
   345d7:	e8 52 00 00 00       	call   3462e <print_identify_info>
   345dc:	83 c4 10             	add    $0x10,%esp
   345df:	c7 45 f4 e0 8f 03 00 	movl   $0x38fe0,-0xc(%ebp)
   345e6:	8b 45 08             	mov    0x8(%ebp),%eax
   345e9:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
   345ef:	05 e4 93 03 00       	add    $0x393e4,%eax
   345f4:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
   345fa:	8b 45 f4             	mov    -0xc(%ebp),%eax
   345fd:	83 c0 7a             	add    $0x7a,%eax
   34600:	0f b7 00             	movzwl (%eax),%eax
   34603:	0f b7 c0             	movzwl %ax,%eax
   34606:	c1 e0 10             	shl    $0x10,%eax
   34609:	89 c2                	mov    %eax,%edx
   3460b:	8b 45 f4             	mov    -0xc(%ebp),%eax
   3460e:	83 c0 78             	add    $0x78,%eax
   34611:	0f b7 00             	movzwl (%eax),%eax
   34614:	0f b7 c0             	movzwl %ax,%eax
   34617:	01 d0                	add    %edx,%eax
   34619:	89 c2                	mov    %eax,%edx
   3461b:	8b 45 08             	mov    0x8(%ebp),%eax
   3461e:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
   34624:	05 e8 93 03 00       	add    $0x393e8,%eax
   34629:	89 10                	mov    %edx,(%eax)
   3462b:	90                   	nop
   3462c:	c9                   	leave  
   3462d:	c3                   	ret    

0003462e <print_identify_info>:
   3462e:	55                   	push   %ebp
   3462f:	89 e5                	mov    %esp,%ebp
   34631:	83 ec 78             	sub    $0x78,%esp
   34634:	c7 45 88 0a 00 00 00 	movl   $0xa,-0x78(%ebp)
   3463b:	c7 45 8c 14 00 00 00 	movl   $0x14,-0x74(%ebp)
   34642:	c7 45 90 8b 5f 03 00 	movl   $0x35f8b,-0x70(%ebp)
   34649:	c7 45 94 1b 00 00 00 	movl   $0x1b,-0x6c(%ebp)
   34650:	c7 45 98 28 00 00 00 	movl   $0x28,-0x68(%ebp)
   34657:	c7 45 9c 91 5f 03 00 	movl   $0x35f91,-0x64(%ebp)
   3465e:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
   34665:	e9 b8 00 00 00       	jmp    34722 <print_identify_info+0xf4>
   3466a:	8b 55 f0             	mov    -0x10(%ebp),%edx
   3466d:	89 d0                	mov    %edx,%eax
   3466f:	01 c0                	add    %eax,%eax
   34671:	01 d0                	add    %edx,%eax
   34673:	c1 e0 02             	shl    $0x2,%eax
   34676:	8d 4d f8             	lea    -0x8(%ebp),%ecx
   34679:	01 c8                	add    %ecx,%eax
   3467b:	83 e8 70             	sub    $0x70,%eax
   3467e:	8b 00                	mov    (%eax),%eax
   34680:	8d 14 00             	lea    (%eax,%eax,1),%edx
   34683:	8b 45 08             	mov    0x8(%ebp),%eax
   34686:	01 d0                	add    %edx,%eax
   34688:	89 45 ec             	mov    %eax,-0x14(%ebp)
   3468b:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
   34692:	eb 31                	jmp    346c5 <print_identify_info+0x97>
   34694:	8b 45 ec             	mov    -0x14(%ebp),%eax
   34697:	8d 50 01             	lea    0x1(%eax),%edx
   3469a:	89 55 ec             	mov    %edx,-0x14(%ebp)
   3469d:	8b 55 f4             	mov    -0xc(%ebp),%edx
   346a0:	01 d2                	add    %edx,%edx
   346a2:	83 c2 01             	add    $0x1,%edx
   346a5:	0f b6 00             	movzbl (%eax),%eax
   346a8:	88 44 15 a0          	mov    %al,-0x60(%ebp,%edx,1)
   346ac:	8b 45 ec             	mov    -0x14(%ebp),%eax
   346af:	8d 50 01             	lea    0x1(%eax),%edx
   346b2:	89 55 ec             	mov    %edx,-0x14(%ebp)
   346b5:	8b 55 f4             	mov    -0xc(%ebp),%edx
   346b8:	01 d2                	add    %edx,%edx
   346ba:	0f b6 00             	movzbl (%eax),%eax
   346bd:	88 44 15 a0          	mov    %al,-0x60(%ebp,%edx,1)
   346c1:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
   346c5:	8b 55 f0             	mov    -0x10(%ebp),%edx
   346c8:	89 d0                	mov    %edx,%eax
   346ca:	01 c0                	add    %eax,%eax
   346cc:	01 d0                	add    %edx,%eax
   346ce:	c1 e0 02             	shl    $0x2,%eax
   346d1:	8d 4d f8             	lea    -0x8(%ebp),%ecx
   346d4:	01 c8                	add    %ecx,%eax
   346d6:	83 e8 6c             	sub    $0x6c,%eax
   346d9:	8b 00                	mov    (%eax),%eax
   346db:	89 c2                	mov    %eax,%edx
   346dd:	c1 ea 1f             	shr    $0x1f,%edx
   346e0:	01 d0                	add    %edx,%eax
   346e2:	d1 f8                	sar    %eax
   346e4:	39 45 f4             	cmp    %eax,-0xc(%ebp)
   346e7:	7c ab                	jl     34694 <print_identify_info+0x66>
   346e9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   346ec:	01 c0                	add    %eax,%eax
   346ee:	c6 44 05 a0 00       	movb   $0x0,-0x60(%ebp,%eax,1)
   346f3:	8b 55 f0             	mov    -0x10(%ebp),%edx
   346f6:	89 d0                	mov    %edx,%eax
   346f8:	01 c0                	add    %eax,%eax
   346fa:	01 d0                	add    %edx,%eax
   346fc:	c1 e0 02             	shl    $0x2,%eax
   346ff:	8d 4d f8             	lea    -0x8(%ebp),%ecx
   34702:	01 c8                	add    %ecx,%eax
   34704:	83 e8 68             	sub    $0x68,%eax
   34707:	8b 00                	mov    (%eax),%eax
   34709:	83 ec 04             	sub    $0x4,%esp
   3470c:	8d 55 a0             	lea    -0x60(%ebp),%edx
   3470f:	52                   	push   %edx
   34710:	50                   	push   %eax
   34711:	68 9a 5f 03 00       	push   $0x35f9a
   34716:	e8 72 02 00 00       	call   3498d <printf>
   3471b:	83 c4 10             	add    $0x10,%esp
   3471e:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
   34722:	8b 45 f0             	mov    -0x10(%ebp),%eax
   34725:	83 f8 01             	cmp    $0x1,%eax
   34728:	0f 86 3c ff ff ff    	jbe    3466a <print_identify_info+0x3c>
   3472e:	8b 45 08             	mov    0x8(%ebp),%eax
   34731:	83 c0 62             	add    $0x62,%eax
   34734:	0f b7 00             	movzwl (%eax),%eax
   34737:	0f b7 c0             	movzwl %ax,%eax
   3473a:	89 45 e8             	mov    %eax,-0x18(%ebp)
   3473d:	8b 45 e8             	mov    -0x18(%ebp),%eax
   34740:	25 00 02 00 00       	and    $0x200,%eax
   34745:	85 c0                	test   %eax,%eax
   34747:	74 07                	je     34750 <print_identify_info+0x122>
   34749:	b8 a2 5f 03 00       	mov    $0x35fa2,%eax
   3474e:	eb 05                	jmp    34755 <print_identify_info+0x127>
   34750:	b8 a6 5f 03 00       	mov    $0x35fa6,%eax
   34755:	83 ec 08             	sub    $0x8,%esp
   34758:	50                   	push   %eax
   34759:	68 a9 5f 03 00       	push   $0x35fa9
   3475e:	e8 2a 02 00 00       	call   3498d <printf>
   34763:	83 c4 10             	add    $0x10,%esp
   34766:	8b 45 08             	mov    0x8(%ebp),%eax
   34769:	05 a6 00 00 00       	add    $0xa6,%eax
   3476e:	0f b7 00             	movzwl (%eax),%eax
   34771:	0f b7 c0             	movzwl %ax,%eax
   34774:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   34777:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   3477a:	25 00 04 00 00       	and    $0x400,%eax
   3477f:	85 c0                	test   %eax,%eax
   34781:	74 07                	je     3478a <print_identify_info+0x15c>
   34783:	b8 a2 5f 03 00       	mov    $0x35fa2,%eax
   34788:	eb 05                	jmp    3478f <print_identify_info+0x161>
   3478a:	b8 a6 5f 03 00       	mov    $0x35fa6,%eax
   3478f:	83 ec 08             	sub    $0x8,%esp
   34792:	50                   	push   %eax
   34793:	68 bc 5f 03 00       	push   $0x35fbc
   34798:	e8 f0 01 00 00       	call   3498d <printf>
   3479d:	83 c4 10             	add    $0x10,%esp
   347a0:	8b 45 08             	mov    0x8(%ebp),%eax
   347a3:	83 c0 7a             	add    $0x7a,%eax
   347a6:	0f b7 00             	movzwl (%eax),%eax
   347a9:	0f b7 c0             	movzwl %ax,%eax
   347ac:	c1 e0 10             	shl    $0x10,%eax
   347af:	89 c2                	mov    %eax,%edx
   347b1:	8b 45 08             	mov    0x8(%ebp),%eax
   347b4:	83 c0 78             	add    $0x78,%eax
   347b7:	0f b7 00             	movzwl (%eax),%eax
   347ba:	0f b7 c0             	movzwl %ax,%eax
   347bd:	01 d0                	add    %edx,%eax
   347bf:	89 45 e0             	mov    %eax,-0x20(%ebp)
   347c2:	8b 45 e0             	mov    -0x20(%ebp),%eax
   347c5:	c1 e0 09             	shl    $0x9,%eax
   347c8:	89 c1                	mov    %eax,%ecx
   347ca:	ba 83 de 1b 43       	mov    $0x431bde83,%edx
   347cf:	89 c8                	mov    %ecx,%eax
   347d1:	f7 ea                	imul   %edx
   347d3:	c1 fa 12             	sar    $0x12,%edx
   347d6:	89 c8                	mov    %ecx,%eax
   347d8:	c1 f8 1f             	sar    $0x1f,%eax
   347db:	29 c2                	sub    %eax,%edx
   347dd:	89 d0                	mov    %edx,%eax
   347df:	83 ec 08             	sub    $0x8,%esp
   347e2:	50                   	push   %eax
   347e3:	68 d1 5f 03 00       	push   $0x35fd1
   347e8:	e8 a0 01 00 00       	call   3498d <printf>
   347ed:	83 c4 10             	add    $0x10,%esp
   347f0:	90                   	nop
   347f1:	c9                   	leave  
   347f2:	c3                   	ret    

000347f3 <hd_cmd_out>:
   347f3:	55                   	push   %ebp
   347f4:	89 e5                	mov    %esp,%ebp
   347f6:	83 ec 08             	sub    $0x8,%esp
   347f9:	83 ec 04             	sub    $0x4,%esp
   347fc:	68 10 27 00 00       	push   $0x2710
   34801:	6a 00                	push   $0x0
   34803:	68 80 00 00 00       	push   $0x80
   34808:	e8 04 01 00 00       	call   34911 <waitfor>
   3480d:	83 c4 10             	add    $0x10,%esp
   34810:	85 c0                	test   %eax,%eax
   34812:	75 10                	jne    34824 <hd_cmd_out+0x31>
   34814:	83 ec 0c             	sub    $0xc,%esp
   34817:	68 e0 5f 03 00       	push   $0x35fe0
   3481c:	e8 b4 c3 ff ff       	call   30bd5 <panic>
   34821:	83 c4 10             	add    $0x10,%esp
   34824:	83 ec 08             	sub    $0x8,%esp
   34827:	6a 00                	push   $0x0
   34829:	68 f6 03 00 00       	push   $0x3f6
   3482e:	e8 3a 05 00 00       	call   34d6d <out_byte>
   34833:	83 c4 10             	add    $0x10,%esp
   34836:	8b 45 08             	mov    0x8(%ebp),%eax
   34839:	0f b6 00             	movzbl (%eax),%eax
   3483c:	0f b6 c0             	movzbl %al,%eax
   3483f:	83 ec 08             	sub    $0x8,%esp
   34842:	50                   	push   %eax
   34843:	68 f1 01 00 00       	push   $0x1f1
   34848:	e8 20 05 00 00       	call   34d6d <out_byte>
   3484d:	83 c4 10             	add    $0x10,%esp
   34850:	8b 45 08             	mov    0x8(%ebp),%eax
   34853:	0f b6 40 01          	movzbl 0x1(%eax),%eax
   34857:	0f b6 c0             	movzbl %al,%eax
   3485a:	83 ec 08             	sub    $0x8,%esp
   3485d:	50                   	push   %eax
   3485e:	68 f2 01 00 00       	push   $0x1f2
   34863:	e8 05 05 00 00       	call   34d6d <out_byte>
   34868:	83 c4 10             	add    $0x10,%esp
   3486b:	8b 45 08             	mov    0x8(%ebp),%eax
   3486e:	0f b6 40 02          	movzbl 0x2(%eax),%eax
   34872:	0f b6 c0             	movzbl %al,%eax
   34875:	83 ec 08             	sub    $0x8,%esp
   34878:	50                   	push   %eax
   34879:	68 f3 01 00 00       	push   $0x1f3
   3487e:	e8 ea 04 00 00       	call   34d6d <out_byte>
   34883:	83 c4 10             	add    $0x10,%esp
   34886:	8b 45 08             	mov    0x8(%ebp),%eax
   34889:	0f b6 40 03          	movzbl 0x3(%eax),%eax
   3488d:	0f b6 c0             	movzbl %al,%eax
   34890:	83 ec 08             	sub    $0x8,%esp
   34893:	50                   	push   %eax
   34894:	68 f4 01 00 00       	push   $0x1f4
   34899:	e8 cf 04 00 00       	call   34d6d <out_byte>
   3489e:	83 c4 10             	add    $0x10,%esp
   348a1:	8b 45 08             	mov    0x8(%ebp),%eax
   348a4:	0f b6 40 04          	movzbl 0x4(%eax),%eax
   348a8:	0f b6 c0             	movzbl %al,%eax
   348ab:	83 ec 08             	sub    $0x8,%esp
   348ae:	50                   	push   %eax
   348af:	68 f5 01 00 00       	push   $0x1f5
   348b4:	e8 b4 04 00 00       	call   34d6d <out_byte>
   348b9:	83 c4 10             	add    $0x10,%esp
   348bc:	8b 45 08             	mov    0x8(%ebp),%eax
   348bf:	0f b6 40 05          	movzbl 0x5(%eax),%eax
   348c3:	0f b6 c0             	movzbl %al,%eax
   348c6:	83 ec 08             	sub    $0x8,%esp
   348c9:	50                   	push   %eax
   348ca:	68 f6 01 00 00       	push   $0x1f6
   348cf:	e8 99 04 00 00       	call   34d6d <out_byte>
   348d4:	83 c4 10             	add    $0x10,%esp
   348d7:	8b 45 08             	mov    0x8(%ebp),%eax
   348da:	0f b6 40 06          	movzbl 0x6(%eax),%eax
   348de:	0f b6 c0             	movzbl %al,%eax
   348e1:	83 ec 08             	sub    $0x8,%esp
   348e4:	50                   	push   %eax
   348e5:	68 f7 01 00 00       	push   $0x1f7
   348ea:	e8 7e 04 00 00       	call   34d6d <out_byte>
   348ef:	83 c4 10             	add    $0x10,%esp
   348f2:	90                   	nop
   348f3:	c9                   	leave  
   348f4:	c3                   	ret    

000348f5 <interrupt_wait>:
   348f5:	55                   	push   %ebp
   348f6:	89 e5                	mov    %esp,%ebp
   348f8:	83 ec 38             	sub    $0x38,%esp
   348fb:	83 ec 04             	sub    $0x4,%esp
   348fe:	8d 45 c8             	lea    -0x38(%ebp),%eax
   34901:	50                   	push   %eax
   34902:	6a f6                	push   $0xfffffff6
   34904:	6a 02                	push   $0x2
   34906:	e8 89 dc ff ff       	call   32594 <send_recv>
   3490b:	83 c4 10             	add    $0x10,%esp
   3490e:	90                   	nop
   3490f:	c9                   	leave  
   34910:	c3                   	ret    

00034911 <waitfor>:
   34911:	55                   	push   %ebp
   34912:	89 e5                	mov    %esp,%ebp
   34914:	83 ec 18             	sub    $0x18,%esp
   34917:	e8 30 c2 ff ff       	call   30b4c <get_ticks>
   3491c:	89 45 f4             	mov    %eax,-0xc(%ebp)
   3491f:	eb 22                	jmp    34943 <waitfor+0x32>
   34921:	83 ec 0c             	sub    $0xc,%esp
   34924:	68 f7 01 00 00       	push   $0x1f7
   34929:	e8 4b 04 00 00       	call   34d79 <in_byte>
   3492e:	83 c4 10             	add    $0x10,%esp
   34931:	0f b6 c0             	movzbl %al,%eax
   34934:	23 45 08             	and    0x8(%ebp),%eax
   34937:	39 45 0c             	cmp    %eax,0xc(%ebp)
   3493a:	75 07                	jne    34943 <waitfor+0x32>
   3493c:	b8 01 00 00 00       	mov    $0x1,%eax
   34941:	eb 1d                	jmp    34960 <waitfor+0x4f>
   34943:	e8 04 c2 ff ff       	call   30b4c <get_ticks>
   34948:	2b 45 f4             	sub    -0xc(%ebp),%eax
   3494b:	89 c2                	mov    %eax,%edx
   3494d:	89 d0                	mov    %edx,%eax
   3494f:	c1 e0 02             	shl    $0x2,%eax
   34952:	01 d0                	add    %edx,%eax
   34954:	01 c0                	add    %eax,%eax
   34956:	39 45 10             	cmp    %eax,0x10(%ebp)
   34959:	7f c6                	jg     34921 <waitfor+0x10>
   3495b:	b8 00 00 00 00       	mov    $0x0,%eax
   34960:	c9                   	leave  
   34961:	c3                   	ret    

00034962 <hd_handler>:
   34962:	55                   	push   %ebp
   34963:	89 e5                	mov    %esp,%ebp
   34965:	83 ec 08             	sub    $0x8,%esp
   34968:	83 ec 0c             	sub    $0xc,%esp
   3496b:	68 f7 01 00 00       	push   $0x1f7
   34970:	e8 04 04 00 00       	call   34d79 <in_byte>
   34975:	83 c4 10             	add    $0x10,%esp
   34978:	a2 c0 8f 03 00       	mov    %al,0x38fc0
   3497d:	83 ec 0c             	sub    $0xc,%esp
   34980:	6a 02                	push   $0x2
   34982:	e8 6b eb ff ff       	call   334f2 <inform_int>
   34987:	83 c4 10             	add    $0x10,%esp
   3498a:	90                   	nop
   3498b:	c9                   	leave  
   3498c:	c3                   	ret    

0003498d <printf>:
   3498d:	55                   	push   %ebp
   3498e:	89 e5                	mov    %esp,%ebp
   34990:	81 ec 18 01 00 00    	sub    $0x118,%esp
   34996:	8d 45 0c             	lea    0xc(%ebp),%eax
   34999:	89 45 f4             	mov    %eax,-0xc(%ebp)
   3499c:	8b 45 08             	mov    0x8(%ebp),%eax
   3499f:	83 ec 04             	sub    $0x4,%esp
   349a2:	ff 75 f4             	pushl  -0xc(%ebp)
   349a5:	50                   	push   %eax
   349a6:	8d 85 f0 fe ff ff    	lea    -0x110(%ebp),%eax
   349ac:	50                   	push   %eax
   349ad:	e8 91 00 00 00       	call   34a43 <vsprintf>
   349b2:	83 c4 10             	add    $0x10,%esp
   349b5:	89 45 f0             	mov    %eax,-0x10(%ebp)
   349b8:	8d 95 f0 fe ff ff    	lea    -0x110(%ebp),%edx
   349be:	8b 45 f0             	mov    -0x10(%ebp),%eax
   349c1:	01 d0                	add    %edx,%eax
   349c3:	c6 00 00             	movb   $0x0,(%eax)
   349c6:	83 ec 0c             	sub    $0xc,%esp
   349c9:	8d 85 f0 fe ff ff    	lea    -0x110(%ebp),%eax
   349cf:	50                   	push   %eax
   349d0:	e8 4f be ff ff       	call   30824 <printx>
   349d5:	83 c4 10             	add    $0x10,%esp
   349d8:	8b 45 f0             	mov    -0x10(%ebp),%eax
   349db:	c9                   	leave  
   349dc:	c3                   	ret    

000349dd <i2a>:
   349dd:	55                   	push   %ebp
   349de:	89 e5                	mov    %esp,%ebp
   349e0:	53                   	push   %ebx
   349e1:	83 ec 14             	sub    $0x14,%esp
   349e4:	8b 45 08             	mov    0x8(%ebp),%eax
   349e7:	99                   	cltd   
   349e8:	f7 7d 0c             	idivl  0xc(%ebp)
   349eb:	89 55 f4             	mov    %edx,-0xc(%ebp)
   349ee:	8b 45 08             	mov    0x8(%ebp),%eax
   349f1:	99                   	cltd   
   349f2:	f7 7d 0c             	idivl  0xc(%ebp)
   349f5:	89 45 f0             	mov    %eax,-0x10(%ebp)
   349f8:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
   349fc:	74 14                	je     34a12 <i2a+0x35>
   349fe:	83 ec 04             	sub    $0x4,%esp
   34a01:	ff 75 10             	pushl  0x10(%ebp)
   34a04:	ff 75 0c             	pushl  0xc(%ebp)
   34a07:	ff 75 f0             	pushl  -0x10(%ebp)
   34a0a:	e8 ce ff ff ff       	call   349dd <i2a>
   34a0f:	83 c4 10             	add    $0x10,%esp
   34a12:	83 7d f4 09          	cmpl   $0x9,-0xc(%ebp)
   34a16:	7f 0a                	jg     34a22 <i2a+0x45>
   34a18:	8b 45 f4             	mov    -0xc(%ebp),%eax
   34a1b:	83 c0 30             	add    $0x30,%eax
   34a1e:	89 c3                	mov    %eax,%ebx
   34a20:	eb 08                	jmp    34a2a <i2a+0x4d>
   34a22:	8b 45 f4             	mov    -0xc(%ebp),%eax
   34a25:	83 c0 37             	add    $0x37,%eax
   34a28:	89 c3                	mov    %eax,%ebx
   34a2a:	8b 45 10             	mov    0x10(%ebp),%eax
   34a2d:	8b 00                	mov    (%eax),%eax
   34a2f:	8d 48 01             	lea    0x1(%eax),%ecx
   34a32:	8b 55 10             	mov    0x10(%ebp),%edx
   34a35:	89 0a                	mov    %ecx,(%edx)
   34a37:	88 18                	mov    %bl,(%eax)
   34a39:	8b 45 10             	mov    0x10(%ebp),%eax
   34a3c:	8b 00                	mov    (%eax),%eax
   34a3e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   34a41:	c9                   	leave  
   34a42:	c3                   	ret    

00034a43 <vsprintf>:
   34a43:	55                   	push   %ebp
   34a44:	89 e5                	mov    %esp,%ebp
   34a46:	81 ec 28 04 00 00    	sub    $0x428,%esp
   34a4c:	8b 45 10             	mov    0x10(%ebp),%eax
   34a4f:	89 45 f0             	mov    %eax,-0x10(%ebp)
   34a52:	8b 45 08             	mov    0x8(%ebp),%eax
   34a55:	89 45 f4             	mov    %eax,-0xc(%ebp)
   34a58:	e9 47 02 00 00       	jmp    34ca4 <vsprintf+0x261>
   34a5d:	8b 45 0c             	mov    0xc(%ebp),%eax
   34a60:	0f b6 00             	movzbl (%eax),%eax
   34a63:	3c 25                	cmp    $0x25,%al
   34a65:	74 16                	je     34a7d <vsprintf+0x3a>
   34a67:	8b 45 f4             	mov    -0xc(%ebp),%eax
   34a6a:	8d 50 01             	lea    0x1(%eax),%edx
   34a6d:	89 55 f4             	mov    %edx,-0xc(%ebp)
   34a70:	8b 55 0c             	mov    0xc(%ebp),%edx
   34a73:	0f b6 12             	movzbl (%edx),%edx
   34a76:	88 10                	mov    %dl,(%eax)
   34a78:	e9 23 02 00 00       	jmp    34ca0 <vsprintf+0x25d>
   34a7d:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
   34a84:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
   34a88:	8b 45 0c             	mov    0xc(%ebp),%eax
   34a8b:	0f b6 00             	movzbl (%eax),%eax
   34a8e:	3c 25                	cmp    $0x25,%al
   34a90:	75 16                	jne    34aa8 <vsprintf+0x65>
   34a92:	8b 45 f4             	mov    -0xc(%ebp),%eax
   34a95:	8d 50 01             	lea    0x1(%eax),%edx
   34a98:	89 55 f4             	mov    %edx,-0xc(%ebp)
   34a9b:	8b 55 0c             	mov    0xc(%ebp),%edx
   34a9e:	0f b6 12             	movzbl (%edx),%edx
   34aa1:	88 10                	mov    %dl,(%eax)
   34aa3:	e9 f8 01 00 00       	jmp    34ca0 <vsprintf+0x25d>
   34aa8:	8b 45 0c             	mov    0xc(%ebp),%eax
   34aab:	0f b6 00             	movzbl (%eax),%eax
   34aae:	3c 30                	cmp    $0x30,%al
   34ab0:	75 0a                	jne    34abc <vsprintf+0x79>
   34ab2:	c6 45 eb 30          	movb   $0x30,-0x15(%ebp)
   34ab6:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
   34aba:	eb 28                	jmp    34ae4 <vsprintf+0xa1>
   34abc:	c6 45 eb 20          	movb   $0x20,-0x15(%ebp)
   34ac0:	eb 22                	jmp    34ae4 <vsprintf+0xa1>
   34ac2:	8b 55 e4             	mov    -0x1c(%ebp),%edx
   34ac5:	89 d0                	mov    %edx,%eax
   34ac7:	c1 e0 02             	shl    $0x2,%eax
   34aca:	01 d0                	add    %edx,%eax
   34acc:	01 c0                	add    %eax,%eax
   34ace:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   34ad1:	8b 45 0c             	mov    0xc(%ebp),%eax
   34ad4:	0f b6 00             	movzbl (%eax),%eax
   34ad7:	0f be c0             	movsbl %al,%eax
   34ada:	83 e8 30             	sub    $0x30,%eax
   34add:	01 45 e4             	add    %eax,-0x1c(%ebp)
   34ae0:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
   34ae4:	8b 45 0c             	mov    0xc(%ebp),%eax
   34ae7:	0f b6 00             	movzbl (%eax),%eax
   34aea:	3c 2f                	cmp    $0x2f,%al
   34aec:	76 0a                	jbe    34af8 <vsprintf+0xb5>
   34aee:	8b 45 0c             	mov    0xc(%ebp),%eax
   34af1:	0f b6 00             	movzbl (%eax),%eax
   34af4:	3c 39                	cmp    $0x39,%al
   34af6:	76 ca                	jbe    34ac2 <vsprintf+0x7f>
   34af8:	8d 85 e0 fb ff ff    	lea    -0x420(%ebp),%eax
   34afe:	89 85 dc fb ff ff    	mov    %eax,-0x424(%ebp)
   34b04:	8b 85 dc fb ff ff    	mov    -0x424(%ebp),%eax
   34b0a:	83 ec 04             	sub    $0x4,%esp
   34b0d:	68 00 04 00 00       	push   $0x400
   34b12:	6a 00                	push   $0x0
   34b14:	50                   	push   %eax
   34b15:	e8 bf 04 00 00       	call   34fd9 <memset>
   34b1a:	83 c4 10             	add    $0x10,%esp
   34b1d:	8b 45 0c             	mov    0xc(%ebp),%eax
   34b20:	0f b6 00             	movzbl (%eax),%eax
   34b23:	0f be c0             	movsbl %al,%eax
   34b26:	83 f8 64             	cmp    $0x64,%eax
   34b29:	74 67                	je     34b92 <vsprintf+0x14f>
   34b2b:	83 f8 64             	cmp    $0x64,%eax
   34b2e:	7f 0a                	jg     34b3a <vsprintf+0xf7>
   34b30:	83 f8 63             	cmp    $0x63,%eax
   34b33:	74 18                	je     34b4d <vsprintf+0x10a>
   34b35:	e9 d6 00 00 00       	jmp    34c10 <vsprintf+0x1cd>
   34b3a:	83 f8 73             	cmp    $0x73,%eax
   34b3d:	0f 84 8f 00 00 00    	je     34bd2 <vsprintf+0x18f>
   34b43:	83 f8 78             	cmp    $0x78,%eax
   34b46:	74 25                	je     34b6d <vsprintf+0x12a>
   34b48:	e9 c3 00 00 00       	jmp    34c10 <vsprintf+0x1cd>
   34b4d:	8b 85 dc fb ff ff    	mov    -0x424(%ebp),%eax
   34b53:	8d 50 01             	lea    0x1(%eax),%edx
   34b56:	89 95 dc fb ff ff    	mov    %edx,-0x424(%ebp)
   34b5c:	8b 55 f0             	mov    -0x10(%ebp),%edx
   34b5f:	0f b6 12             	movzbl (%edx),%edx
   34b62:	88 10                	mov    %dl,(%eax)
   34b64:	83 45 f0 04          	addl   $0x4,-0x10(%ebp)
   34b68:	e9 a3 00 00 00       	jmp    34c10 <vsprintf+0x1cd>
   34b6d:	8b 45 f0             	mov    -0x10(%ebp),%eax
   34b70:	8b 00                	mov    (%eax),%eax
   34b72:	89 45 ec             	mov    %eax,-0x14(%ebp)
   34b75:	83 ec 04             	sub    $0x4,%esp
   34b78:	8d 85 dc fb ff ff    	lea    -0x424(%ebp),%eax
   34b7e:	50                   	push   %eax
   34b7f:	6a 10                	push   $0x10
   34b81:	ff 75 ec             	pushl  -0x14(%ebp)
   34b84:	e8 54 fe ff ff       	call   349dd <i2a>
   34b89:	83 c4 10             	add    $0x10,%esp
   34b8c:	83 45 f0 04          	addl   $0x4,-0x10(%ebp)
   34b90:	eb 7e                	jmp    34c10 <vsprintf+0x1cd>
   34b92:	8b 45 f0             	mov    -0x10(%ebp),%eax
   34b95:	8b 00                	mov    (%eax),%eax
   34b97:	89 45 ec             	mov    %eax,-0x14(%ebp)
   34b9a:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
   34b9e:	79 15                	jns    34bb5 <vsprintf+0x172>
   34ba0:	f7 5d ec             	negl   -0x14(%ebp)
   34ba3:	8b 85 dc fb ff ff    	mov    -0x424(%ebp),%eax
   34ba9:	8d 50 01             	lea    0x1(%eax),%edx
   34bac:	89 95 dc fb ff ff    	mov    %edx,-0x424(%ebp)
   34bb2:	c6 00 2d             	movb   $0x2d,(%eax)
   34bb5:	83 ec 04             	sub    $0x4,%esp
   34bb8:	8d 85 dc fb ff ff    	lea    -0x424(%ebp),%eax
   34bbe:	50                   	push   %eax
   34bbf:	6a 0a                	push   $0xa
   34bc1:	ff 75 ec             	pushl  -0x14(%ebp)
   34bc4:	e8 14 fe ff ff       	call   349dd <i2a>
   34bc9:	83 c4 10             	add    $0x10,%esp
   34bcc:	83 45 f0 04          	addl   $0x4,-0x10(%ebp)
   34bd0:	eb 3e                	jmp    34c10 <vsprintf+0x1cd>
   34bd2:	8b 45 f0             	mov    -0x10(%ebp),%eax
   34bd5:	8b 10                	mov    (%eax),%edx
   34bd7:	8b 85 dc fb ff ff    	mov    -0x424(%ebp),%eax
   34bdd:	83 ec 08             	sub    $0x8,%esp
   34be0:	52                   	push   %edx
   34be1:	50                   	push   %eax
   34be2:	e8 13 04 00 00       	call   34ffa <strcpy>
   34be7:	83 c4 10             	add    $0x10,%esp
   34bea:	8b 45 f0             	mov    -0x10(%ebp),%eax
   34bed:	8b 00                	mov    (%eax),%eax
   34bef:	83 ec 0c             	sub    $0xc,%esp
   34bf2:	50                   	push   %eax
   34bf3:	e8 1a 04 00 00       	call   35012 <strlen>
   34bf8:	83 c4 10             	add    $0x10,%esp
   34bfb:	89 c2                	mov    %eax,%edx
   34bfd:	8b 85 dc fb ff ff    	mov    -0x424(%ebp),%eax
   34c03:	01 d0                	add    %edx,%eax
   34c05:	89 85 dc fb ff ff    	mov    %eax,-0x424(%ebp)
   34c0b:	83 45 f0 04          	addl   $0x4,-0x10(%ebp)
   34c0f:	90                   	nop
   34c10:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
   34c17:	eb 13                	jmp    34c2c <vsprintf+0x1e9>
   34c19:	8b 45 f4             	mov    -0xc(%ebp),%eax
   34c1c:	8d 50 01             	lea    0x1(%eax),%edx
   34c1f:	89 55 f4             	mov    %edx,-0xc(%ebp)
   34c22:	0f b6 55 eb          	movzbl -0x15(%ebp),%edx
   34c26:	88 10                	mov    %dl,(%eax)
   34c28:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
   34c2c:	83 ec 0c             	sub    $0xc,%esp
   34c2f:	8d 85 e0 fb ff ff    	lea    -0x420(%ebp),%eax
   34c35:	50                   	push   %eax
   34c36:	e8 d7 03 00 00       	call   35012 <strlen>
   34c3b:	83 c4 10             	add    $0x10,%esp
   34c3e:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
   34c41:	7e 1b                	jle    34c5e <vsprintf+0x21b>
   34c43:	83 ec 0c             	sub    $0xc,%esp
   34c46:	8d 85 e0 fb ff ff    	lea    -0x420(%ebp),%eax
   34c4c:	50                   	push   %eax
   34c4d:	e8 c0 03 00 00       	call   35012 <strlen>
   34c52:	83 c4 10             	add    $0x10,%esp
   34c55:	89 c2                	mov    %eax,%edx
   34c57:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   34c5a:	29 d0                	sub    %edx,%eax
   34c5c:	eb 05                	jmp    34c63 <vsprintf+0x220>
   34c5e:	b8 00 00 00 00       	mov    $0x0,%eax
   34c63:	3b 45 e0             	cmp    -0x20(%ebp),%eax
   34c66:	7f b1                	jg     34c19 <vsprintf+0x1d6>
   34c68:	8d 85 e0 fb ff ff    	lea    -0x420(%ebp),%eax
   34c6e:	89 85 dc fb ff ff    	mov    %eax,-0x424(%ebp)
   34c74:	eb 1d                	jmp    34c93 <vsprintf+0x250>
   34c76:	8b 95 dc fb ff ff    	mov    -0x424(%ebp),%edx
   34c7c:	8d 42 01             	lea    0x1(%edx),%eax
   34c7f:	89 85 dc fb ff ff    	mov    %eax,-0x424(%ebp)
   34c85:	8b 45 f4             	mov    -0xc(%ebp),%eax
   34c88:	8d 48 01             	lea    0x1(%eax),%ecx
   34c8b:	89 4d f4             	mov    %ecx,-0xc(%ebp)
   34c8e:	0f b6 12             	movzbl (%edx),%edx
   34c91:	88 10                	mov    %dl,(%eax)
   34c93:	8b 85 dc fb ff ff    	mov    -0x424(%ebp),%eax
   34c99:	0f b6 00             	movzbl (%eax),%eax
   34c9c:	84 c0                	test   %al,%al
   34c9e:	75 d6                	jne    34c76 <vsprintf+0x233>
   34ca0:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
   34ca4:	8b 45 0c             	mov    0xc(%ebp),%eax
   34ca7:	0f b6 00             	movzbl (%eax),%eax
   34caa:	84 c0                	test   %al,%al
   34cac:	0f 85 ab fd ff ff    	jne    34a5d <vsprintf+0x1a>
   34cb2:	8b 45 f4             	mov    -0xc(%ebp),%eax
   34cb5:	c6 00 00             	movb   $0x0,(%eax)
   34cb8:	8b 45 f4             	mov    -0xc(%ebp),%eax
   34cbb:	2b 45 08             	sub    0x8(%ebp),%eax
   34cbe:	c9                   	leave  
   34cbf:	c3                   	ret    

00034cc0 <sprintf>:
   34cc0:	55                   	push   %ebp
   34cc1:	89 e5                	mov    %esp,%ebp
   34cc3:	83 ec 18             	sub    $0x18,%esp
   34cc6:	8d 45 0c             	lea    0xc(%ebp),%eax
   34cc9:	83 c0 04             	add    $0x4,%eax
   34ccc:	89 45 f4             	mov    %eax,-0xc(%ebp)
   34ccf:	8b 45 0c             	mov    0xc(%ebp),%eax
   34cd2:	83 ec 04             	sub    $0x4,%esp
   34cd5:	ff 75 f4             	pushl  -0xc(%ebp)
   34cd8:	50                   	push   %eax
   34cd9:	ff 75 08             	pushl  0x8(%ebp)
   34cdc:	e8 62 fd ff ff       	call   34a43 <vsprintf>
   34ce1:	83 c4 10             	add    $0x10,%esp
   34ce4:	c9                   	leave  
   34ce5:	c3                   	ret    
   34ce6:	66 90                	xchg   %ax,%ax
   34ce8:	66 90                	xchg   %ax,%ax
   34cea:	66 90                	xchg   %ax,%ax
   34cec:	66 90                	xchg   %ax,%ax
   34cee:	66 90                	xchg   %ax,%ax

00034cf0 <disp_str>:
   34cf0:	55                   	push   %ebp
   34cf1:	89 e5                	mov    %esp,%ebp
   34cf3:	8b 75 08             	mov    0x8(%ebp),%esi
   34cf6:	8b 3d 0c 27 07 00    	mov    0x7270c,%edi
   34cfc:	b4 0f                	mov    $0xf,%ah

00034cfe <disp_str.1>:
   34cfe:	ac                   	lods   %ds:(%esi),%al
   34cff:	84 c0                	test   %al,%al
   34d01:	74 23                	je     34d26 <disp_str.2>
   34d03:	3c 0a                	cmp    $0xa,%al
   34d05:	75 16                	jne    34d1d <disp_str.3>
   34d07:	50                   	push   %eax
   34d08:	89 f8                	mov    %edi,%eax
   34d0a:	b3 a0                	mov    $0xa0,%bl
   34d0c:	f6 f3                	div    %bl
   34d0e:	25 ff 00 00 00       	and    $0xff,%eax
   34d13:	40                   	inc    %eax
   34d14:	b3 a0                	mov    $0xa0,%bl
   34d16:	f6 e3                	mul    %bl
   34d18:	89 c7                	mov    %eax,%edi
   34d1a:	58                   	pop    %eax
   34d1b:	eb e1                	jmp    34cfe <disp_str.1>

00034d1d <disp_str.3>:
   34d1d:	65 66 89 07          	mov    %ax,%gs:(%edi)
   34d21:	83 c7 02             	add    $0x2,%edi
   34d24:	eb d8                	jmp    34cfe <disp_str.1>

00034d26 <disp_str.2>:
   34d26:	89 3d 0c 27 07 00    	mov    %edi,0x7270c
   34d2c:	5d                   	pop    %ebp
   34d2d:	c3                   	ret    

00034d2e <disp_color_str>:
   34d2e:	55                   	push   %ebp
   34d2f:	89 e5                	mov    %esp,%ebp
   34d31:	8b 75 08             	mov    0x8(%ebp),%esi
   34d34:	8b 3d 0c 27 07 00    	mov    0x7270c,%edi
   34d3a:	8a 65 0c             	mov    0xc(%ebp),%ah

00034d3d <disp_color_str.1>:
   34d3d:	ac                   	lods   %ds:(%esi),%al
   34d3e:	84 c0                	test   %al,%al
   34d40:	74 23                	je     34d65 <disp_color_str.2>
   34d42:	3c 0a                	cmp    $0xa,%al
   34d44:	75 16                	jne    34d5c <disp_color_str.3>
   34d46:	50                   	push   %eax
   34d47:	89 f8                	mov    %edi,%eax
   34d49:	b3 a0                	mov    $0xa0,%bl
   34d4b:	f6 f3                	div    %bl
   34d4d:	25 ff 00 00 00       	and    $0xff,%eax
   34d52:	40                   	inc    %eax
   34d53:	b3 a0                	mov    $0xa0,%bl
   34d55:	f6 e3                	mul    %bl
   34d57:	89 c7                	mov    %eax,%edi
   34d59:	58                   	pop    %eax
   34d5a:	eb e1                	jmp    34d3d <disp_color_str.1>

00034d5c <disp_color_str.3>:
   34d5c:	65 66 89 07          	mov    %ax,%gs:(%edi)
   34d60:	83 c7 02             	add    $0x2,%edi
   34d63:	eb d8                	jmp    34d3d <disp_color_str.1>

00034d65 <disp_color_str.2>:
   34d65:	89 3d 0c 27 07 00    	mov    %edi,0x7270c
   34d6b:	5d                   	pop    %ebp
   34d6c:	c3                   	ret    

00034d6d <out_byte>:
   34d6d:	8b 54 24 04          	mov    0x4(%esp),%edx
   34d71:	8a 44 24 08          	mov    0x8(%esp),%al
   34d75:	ee                   	out    %al,(%dx)
   34d76:	90                   	nop
   34d77:	90                   	nop
   34d78:	c3                   	ret    

00034d79 <in_byte>:
   34d79:	8b 54 24 04          	mov    0x4(%esp),%edx
   34d7d:	31 c0                	xor    %eax,%eax
   34d7f:	ec                   	in     (%dx),%al
   34d80:	90                   	nop
   34d81:	90                   	nop
   34d82:	c3                   	ret    

00034d83 <port_read>:
   34d83:	8b 54 24 04          	mov    0x4(%esp),%edx
   34d87:	8b 7c 24 08          	mov    0x8(%esp),%edi
   34d8b:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
   34d8f:	d1 e9                	shr    %ecx
   34d91:	fc                   	cld    
   34d92:	f3 66 6d             	rep insw (%dx),%es:(%edi)
   34d95:	c3                   	ret    

00034d96 <port_write>:
   34d96:	8b 54 24 04          	mov    0x4(%esp),%edx
   34d9a:	8b 74 24 08          	mov    0x8(%esp),%esi
   34d9e:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
   34da2:	d1 e9                	shr    %ecx
   34da4:	fc                   	cld    
   34da5:	f3 66 6f             	rep outsw %ds:(%esi),(%dx)
   34da8:	c3                   	ret    

00034da9 <disable_irq>:
   34da9:	8b 4c 24 04          	mov    0x4(%esp),%ecx
   34dad:	9c                   	pushf  
   34dae:	fa                   	cli    
   34daf:	b4 01                	mov    $0x1,%ah
   34db1:	d2 c4                	rol    %cl,%ah
   34db3:	80 f9 08             	cmp    $0x8,%cl
   34db6:	73 11                	jae    34dc9 <disable_8>

00034db8 <disable_0>:
   34db8:	e4 21                	in     $0x21,%al
   34dba:	84 e0                	test   %ah,%al
   34dbc:	75 1c                	jne    34dda <dis_already>
   34dbe:	08 e0                	or     %ah,%al
   34dc0:	e6 21                	out    %al,$0x21
   34dc2:	9d                   	popf   
   34dc3:	b8 01 00 00 00       	mov    $0x1,%eax
   34dc8:	c3                   	ret    

00034dc9 <disable_8>:
   34dc9:	e4 a1                	in     $0xa1,%al
   34dcb:	84 e0                	test   %ah,%al
   34dcd:	75 0b                	jne    34dda <dis_already>
   34dcf:	08 e0                	or     %ah,%al
   34dd1:	e6 a1                	out    %al,$0xa1
   34dd3:	9d                   	popf   
   34dd4:	b8 01 00 00 00       	mov    $0x1,%eax
   34dd9:	c3                   	ret    

00034dda <dis_already>:
   34dda:	9d                   	popf   
   34ddb:	31 c0                	xor    %eax,%eax
   34ddd:	c3                   	ret    

00034dde <enable_irq>:
   34dde:	8b 4c 24 04          	mov    0x4(%esp),%ecx
   34de2:	9c                   	pushf  
   34de3:	fa                   	cli    
   34de4:	b4 fe                	mov    $0xfe,%ah
   34de6:	d2 c4                	rol    %cl,%ah
   34de8:	80 f9 08             	cmp    $0x8,%cl
   34deb:	73 08                	jae    34df5 <enable_8>

00034ded <enable_0>:
   34ded:	e4 21                	in     $0x21,%al
   34def:	20 e0                	and    %ah,%al
   34df1:	e6 21                	out    %al,$0x21
   34df3:	9d                   	popf   
   34df4:	c3                   	ret    

00034df5 <enable_8>:
   34df5:	e4 a1                	in     $0xa1,%al
   34df7:	20 e0                	and    %ah,%al
   34df9:	e6 a1                	out    %al,$0xa1
   34dfb:	9d                   	popf   
   34dfc:	c3                   	ret    

00034dfd <disable_int>:
   34dfd:	fa                   	cli    
   34dfe:	c3                   	ret    

00034dff <enable_int>:
   34dff:	fb                   	sti    
   34e00:	c3                   	ret    

00034e01 <glitter>:
   34e01:	50                   	push   %eax
   34e02:	53                   	push   %ebx
   34e03:	52                   	push   %edx
   34e04:	a1 40 4e 03 00       	mov    0x34e40,%eax
   34e09:	40                   	inc    %eax
   34e0a:	83 f8 42             	cmp    $0x42,%eax
   34e0d:	74 02                	je     34e11 <glitter.1>
   34e0f:	eb 02                	jmp    34e13 <glitter.2>

00034e11 <glitter.1>:
   34e11:	31 c0                	xor    %eax,%eax

00034e13 <glitter.2>:
   34e13:	a3 40 4e 03 00       	mov    %eax,0x34e40
   34e18:	8a 90 44 4e 03 00    	mov    0x34e44(%eax),%dl
   34e1e:	31 c0                	xor    %eax,%eax
   34e20:	8a 44 24 10          	mov    0x10(%esp),%al
   34e24:	b3 50                	mov    $0x50,%bl
   34e26:	f6 e3                	mul    %bl
   34e28:	66 8b 5c 24 14       	mov    0x14(%esp),%bx
   34e2d:	66 01 d8             	add    %bx,%ax
   34e30:	66 d1 e0             	shl    %ax
   34e33:	0f b7 c0             	movzwl %ax,%eax
   34e36:	65 88 10             	mov    %dl,%gs:(%eax)
   34e39:	40                   	inc    %eax
   34e3a:	65 c6 00 04          	movb   $0x4,%gs:(%eax)
   34e3e:	eb 46                	jmp    34e86 <glitter.end>

00034e40 <glitter.current_char>:
   34e40:	00 00                	add    %al,(%eax)
	...

00034e44 <glitter.glitter_str>:
   34e44:	2d 5c 7c 2f 31       	sub    $0x312f7c5c,%eax
   34e49:	32 33                	xor    (%ebx),%dh
   34e4b:	34 35                	xor    $0x35,%al
   34e4d:	36 37                	ss aaa 
   34e4f:	38 39                	cmp    %bh,(%ecx)
   34e51:	30 61 62             	xor    %ah,0x62(%ecx)
   34e54:	63 64 65 66          	arpl   %sp,0x66(%ebp,%eiz,2)
   34e58:	67 68 69 6a 6b 6c    	addr16 push $0x6c6b6a69
   34e5e:	6d                   	insl   (%dx),%es:(%edi)
   34e5f:	6e                   	outsb  %ds:(%esi),(%dx)
   34e60:	6f                   	outsl  %ds:(%esi),(%dx)
   34e61:	70 71                	jo     34ed4 <itoa+0x4a>
   34e63:	72 73                	jb     34ed8 <itoa+0x4e>
   34e65:	74 75                	je     34edc <itoa+0x52>
   34e67:	76 77                	jbe    34ee0 <itoa+0x56>
   34e69:	78 79                	js     34ee4 <itoa+0x5a>
   34e6b:	7a 41                	jp     34eae <itoa+0x24>
   34e6d:	42                   	inc    %edx
   34e6e:	43                   	inc    %ebx
   34e6f:	44                   	inc    %esp
   34e70:	45                   	inc    %ebp
   34e71:	46                   	inc    %esi
   34e72:	47                   	inc    %edi
   34e73:	48                   	dec    %eax
   34e74:	49                   	dec    %ecx
   34e75:	4a                   	dec    %edx
   34e76:	4b                   	dec    %ebx
   34e77:	4c                   	dec    %esp
   34e78:	4d                   	dec    %ebp
   34e79:	4e                   	dec    %esi
   34e7a:	4f                   	dec    %edi
   34e7b:	50                   	push   %eax
   34e7c:	51                   	push   %ecx
   34e7d:	52                   	push   %edx
   34e7e:	53                   	push   %ebx
   34e7f:	54                   	push   %esp
   34e80:	55                   	push   %ebp
   34e81:	56                   	push   %esi
   34e82:	57                   	push   %edi
   34e83:	58                   	pop    %eax
   34e84:	59                   	pop    %ecx
   34e85:	5a                   	pop    %edx

00034e86 <glitter.end>:
   34e86:	5a                   	pop    %edx
   34e87:	5b                   	pop    %ebx
   34e88:	58                   	pop    %eax
   34e89:	c3                   	ret    

00034e8a <itoa>:
   34e8a:	55                   	push   %ebp
   34e8b:	89 e5                	mov    %esp,%ebp
   34e8d:	83 ec 10             	sub    $0x10,%esp
   34e90:	8b 45 08             	mov    0x8(%ebp),%eax
   34e93:	89 45 fc             	mov    %eax,-0x4(%ebp)
   34e96:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
   34e9d:	8b 45 fc             	mov    -0x4(%ebp),%eax
   34ea0:	8d 50 01             	lea    0x1(%eax),%edx
   34ea3:	89 55 fc             	mov    %edx,-0x4(%ebp)
   34ea6:	c6 00 30             	movb   $0x30,(%eax)
   34ea9:	8b 45 fc             	mov    -0x4(%ebp),%eax
   34eac:	8d 50 01             	lea    0x1(%eax),%edx
   34eaf:	89 55 fc             	mov    %edx,-0x4(%ebp)
   34eb2:	c6 00 78             	movb   $0x78,(%eax)
   34eb5:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
   34eb9:	75 0e                	jne    34ec9 <itoa+0x3f>
   34ebb:	8b 45 fc             	mov    -0x4(%ebp),%eax
   34ebe:	8d 50 01             	lea    0x1(%eax),%edx
   34ec1:	89 55 fc             	mov    %edx,-0x4(%ebp)
   34ec4:	c6 00 30             	movb   $0x30,(%eax)
   34ec7:	eb 61                	jmp    34f2a <itoa+0xa0>
   34ec9:	c7 45 f4 1c 00 00 00 	movl   $0x1c,-0xc(%ebp)
   34ed0:	eb 52                	jmp    34f24 <itoa+0x9a>
   34ed2:	8b 45 f4             	mov    -0xc(%ebp),%eax
   34ed5:	8b 55 0c             	mov    0xc(%ebp),%edx
   34ed8:	89 c1                	mov    %eax,%ecx
   34eda:	d3 fa                	sar    %cl,%edx
   34edc:	89 d0                	mov    %edx,%eax
   34ede:	83 e0 0f             	and    $0xf,%eax
   34ee1:	88 45 fb             	mov    %al,-0x5(%ebp)
   34ee4:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
   34ee8:	75 06                	jne    34ef0 <itoa+0x66>
   34eea:	80 7d fb 00          	cmpb   $0x0,-0x5(%ebp)
   34eee:	7e 30                	jle    34f20 <itoa+0x96>
   34ef0:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
   34ef7:	0f b6 45 fb          	movzbl -0x5(%ebp),%eax
   34efb:	83 c0 30             	add    $0x30,%eax
   34efe:	88 45 fb             	mov    %al,-0x5(%ebp)
   34f01:	80 7d fb 39          	cmpb   $0x39,-0x5(%ebp)
   34f05:	7e 0a                	jle    34f11 <itoa+0x87>
   34f07:	0f b6 45 fb          	movzbl -0x5(%ebp),%eax
   34f0b:	83 c0 07             	add    $0x7,%eax
   34f0e:	88 45 fb             	mov    %al,-0x5(%ebp)
   34f11:	8b 45 fc             	mov    -0x4(%ebp),%eax
   34f14:	8d 50 01             	lea    0x1(%eax),%edx
   34f17:	89 55 fc             	mov    %edx,-0x4(%ebp)
   34f1a:	0f b6 55 fb          	movzbl -0x5(%ebp),%edx
   34f1e:	88 10                	mov    %dl,(%eax)
   34f20:	83 6d f4 04          	subl   $0x4,-0xc(%ebp)
   34f24:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
   34f28:	79 a8                	jns    34ed2 <itoa+0x48>
   34f2a:	8b 45 fc             	mov    -0x4(%ebp),%eax
   34f2d:	c6 00 00             	movb   $0x0,(%eax)
   34f30:	8b 45 08             	mov    0x8(%ebp),%eax
   34f33:	c9                   	leave  
   34f34:	c3                   	ret    

00034f35 <disp_int>:
   34f35:	55                   	push   %ebp
   34f36:	89 e5                	mov    %esp,%ebp
   34f38:	83 ec 18             	sub    $0x18,%esp
   34f3b:	ff 75 08             	pushl  0x8(%ebp)
   34f3e:	8d 45 e8             	lea    -0x18(%ebp),%eax
   34f41:	50                   	push   %eax
   34f42:	e8 43 ff ff ff       	call   34e8a <itoa>
   34f47:	83 c4 08             	add    $0x8,%esp
   34f4a:	83 ec 0c             	sub    $0xc,%esp
   34f4d:	8d 45 e8             	lea    -0x18(%ebp),%eax
   34f50:	50                   	push   %eax
   34f51:	e8 9a fd ff ff       	call   34cf0 <disp_str>
   34f56:	83 c4 10             	add    $0x10,%esp
   34f59:	90                   	nop
   34f5a:	c9                   	leave  
   34f5b:	c3                   	ret    

00034f5c <delay>:
   34f5c:	55                   	push   %ebp
   34f5d:	89 e5                	mov    %esp,%ebp
   34f5f:	83 ec 10             	sub    $0x10,%esp
   34f62:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
   34f69:	eb 2d                	jmp    34f98 <delay+0x3c>
   34f6b:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
   34f72:	eb 1a                	jmp    34f8e <delay+0x32>
   34f74:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
   34f7b:	eb 04                	jmp    34f81 <delay+0x25>
   34f7d:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
   34f81:	81 7d f8 0f 27 00 00 	cmpl   $0x270f,-0x8(%ebp)
   34f88:	7e f3                	jle    34f7d <delay+0x21>
   34f8a:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
   34f8e:	83 7d fc 09          	cmpl   $0x9,-0x4(%ebp)
   34f92:	7e e0                	jle    34f74 <delay+0x18>
   34f94:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
   34f98:	8b 45 f4             	mov    -0xc(%ebp),%eax
   34f9b:	3b 45 08             	cmp    0x8(%ebp),%eax
   34f9e:	7c cb                	jl     34f6b <delay+0xf>
   34fa0:	90                   	nop
   34fa1:	c9                   	leave  
   34fa2:	c3                   	ret    
   34fa3:	66 90                	xchg   %ax,%ax
   34fa5:	66 90                	xchg   %ax,%ax
   34fa7:	66 90                	xchg   %ax,%ax
   34fa9:	66 90                	xchg   %ax,%ax
   34fab:	66 90                	xchg   %ax,%ax
   34fad:	66 90                	xchg   %ax,%ax
   34faf:	90                   	nop

00034fb0 <memcpy>:
   34fb0:	55                   	push   %ebp
   34fb1:	89 e5                	mov    %esp,%ebp
   34fb3:	56                   	push   %esi
   34fb4:	57                   	push   %edi
   34fb5:	51                   	push   %ecx
   34fb6:	8b 7d 08             	mov    0x8(%ebp),%edi
   34fb9:	8b 75 0c             	mov    0xc(%ebp),%esi
   34fbc:	8b 4d 10             	mov    0x10(%ebp),%ecx

00034fbf <memcpy.1>:
   34fbf:	83 f9 00             	cmp    $0x0,%ecx
   34fc2:	74 0b                	je     34fcf <memcpy.2>
   34fc4:	3e 8a 06             	mov    %ds:(%esi),%al
   34fc7:	46                   	inc    %esi
   34fc8:	26 88 07             	mov    %al,%es:(%edi)
   34fcb:	47                   	inc    %edi
   34fcc:	49                   	dec    %ecx
   34fcd:	eb f0                	jmp    34fbf <memcpy.1>

00034fcf <memcpy.2>:
   34fcf:	8b 45 08             	mov    0x8(%ebp),%eax
   34fd2:	59                   	pop    %ecx
   34fd3:	5f                   	pop    %edi
   34fd4:	5e                   	pop    %esi
   34fd5:	89 ec                	mov    %ebp,%esp
   34fd7:	5d                   	pop    %ebp
   34fd8:	c3                   	ret    

00034fd9 <memset>:
   34fd9:	55                   	push   %ebp
   34fda:	89 e5                	mov    %esp,%ebp
   34fdc:	56                   	push   %esi
   34fdd:	57                   	push   %edi
   34fde:	51                   	push   %ecx
   34fdf:	8b 7d 08             	mov    0x8(%ebp),%edi
   34fe2:	8b 55 0c             	mov    0xc(%ebp),%edx
   34fe5:	8b 4d 10             	mov    0x10(%ebp),%ecx

00034fe8 <memset.1>:
   34fe8:	83 f9 00             	cmp    $0x0,%ecx
   34feb:	74 06                	je     34ff3 <memset.2>
   34fed:	88 17                	mov    %dl,(%edi)
   34fef:	47                   	inc    %edi
   34ff0:	49                   	dec    %ecx
   34ff1:	eb f5                	jmp    34fe8 <memset.1>

00034ff3 <memset.2>:
   34ff3:	59                   	pop    %ecx
   34ff4:	5f                   	pop    %edi
   34ff5:	5e                   	pop    %esi
   34ff6:	89 ec                	mov    %ebp,%esp
   34ff8:	5d                   	pop    %ebp
   34ff9:	c3                   	ret    

00034ffa <strcpy>:
   34ffa:	55                   	push   %ebp
   34ffb:	89 e5                	mov    %esp,%ebp
   34ffd:	8b 75 0c             	mov    0xc(%ebp),%esi
   35000:	8b 7d 08             	mov    0x8(%ebp),%edi

00035003 <strcpy.1>:
   35003:	8a 06                	mov    (%esi),%al
   35005:	46                   	inc    %esi
   35006:	88 07                	mov    %al,(%edi)
   35008:	47                   	inc    %edi
   35009:	3c 00                	cmp    $0x0,%al
   3500b:	75 f6                	jne    35003 <strcpy.1>
   3500d:	8b 45 08             	mov    0x8(%ebp),%eax
   35010:	5d                   	pop    %ebp
   35011:	c3                   	ret    

00035012 <strlen>:
   35012:	55                   	push   %ebp
   35013:	89 e5                	mov    %esp,%ebp
   35015:	b8 00 00 00 00       	mov    $0x0,%eax
   3501a:	8b 75 08             	mov    0x8(%ebp),%esi

0003501d <strlen.1>:
   3501d:	80 3e 00             	cmpb   $0x0,(%esi)
   35020:	74 04                	je     35026 <strlen.2>
   35022:	46                   	inc    %esi
   35023:	40                   	inc    %eax
   35024:	eb f7                	jmp    3501d <strlen.1>

00035026 <strlen.2>:
   35026:	5d                   	pop    %ebp
   35027:	c3                   	ret    

00035028 <spin>:
   35028:	55                   	push   %ebp
   35029:	89 e5                	mov    %esp,%ebp
   3502b:	83 ec 08             	sub    $0x8,%esp
   3502e:	83 ec 08             	sub    $0x8,%esp
   35031:	ff 75 08             	pushl  0x8(%ebp)
   35034:	68 ec 5f 03 00       	push   $0x35fec
   35039:	e8 4f f9 ff ff       	call   3498d <printf>
   3503e:	83 c4 10             	add    $0x10,%esp
   35041:	eb fe                	jmp    35041 <spin+0x19>

00035043 <assertion_failure>:
   35043:	55                   	push   %ebp
   35044:	89 e5                	mov    %esp,%ebp
   35046:	83 ec 08             	sub    $0x8,%esp
   35049:	83 ec 08             	sub    $0x8,%esp
   3504c:	ff 75 14             	pushl  0x14(%ebp)
   3504f:	ff 75 10             	pushl  0x10(%ebp)
   35052:	ff 75 0c             	pushl  0xc(%ebp)
   35055:	ff 75 08             	pushl  0x8(%ebp)
   35058:	6a 03                	push   $0x3
   3505a:	68 04 60 03 00       	push   $0x36004
   3505f:	e8 29 f9 ff ff       	call   3498d <printf>
   35064:	83 c4 20             	add    $0x20,%esp
   35067:	83 ec 0c             	sub    $0xc,%esp
   3506a:	68 39 60 03 00       	push   $0x36039
   3506f:	e8 b4 ff ff ff       	call   35028 <spin>
   35074:	83 c4 10             	add    $0x10,%esp
   35077:	0f 0b                	ud2    
   35079:	90                   	nop
   3507a:	c9                   	leave  
   3507b:	c3                   	ret    

0003507c <task_fs>:
   3507c:	55                   	push   %ebp
   3507d:	89 e5                	mov    %esp,%ebp
   3507f:	83 ec 38             	sub    $0x38,%esp
   35082:	83 ec 0c             	sub    $0xc,%esp
   35085:	68 50 60 03 00       	push   $0x36050
   3508a:	e8 fe f8 ff ff       	call   3498d <printf>
   3508f:	83 c4 10             	add    $0x10,%esp
   35092:	c7 45 cc e9 03 00 00 	movl   $0x3e9,-0x34(%ebp)
   35099:	c7 45 dc 20 00 00 00 	movl   $0x20,-0x24(%ebp)
   350a0:	a1 50 87 03 00       	mov    0x38750,%eax
   350a5:	83 f8 ec             	cmp    $0xffffffec,%eax
   350a8:	75 19                	jne    350c3 <task_fs+0x47>
   350aa:	6a 29                	push   $0x29
   350ac:	68 61 60 03 00       	push   $0x36061
   350b1:	68 61 60 03 00       	push   $0x36061
   350b6:	68 6c 60 03 00       	push   $0x3606c
   350bb:	e8 83 ff ff ff       	call   35043 <assertion_failure>
   350c0:	83 c4 10             	add    $0x10,%esp
   350c3:	a1 50 87 03 00       	mov    0x38750,%eax
   350c8:	83 ec 04             	sub    $0x4,%esp
   350cb:	8d 55 c8             	lea    -0x38(%ebp),%edx
   350ce:	52                   	push   %edx
   350cf:	50                   	push   %eax
   350d0:	6a 03                	push   $0x3
   350d2:	e8 bd d4 ff ff       	call   32594 <send_recv>
   350d7:	83 c4 10             	add    $0x10,%esp
   350da:	83 ec 0c             	sub    $0xc,%esp
   350dd:	68 a0 60 03 00       	push   $0x360a0
   350e2:	e8 41 ff ff ff       	call   35028 <spin>
   350e7:	83 c4 10             	add    $0x10,%esp
   350ea:	90                   	nop
   350eb:	c9                   	leave  
   350ec:	c3                   	ret    
