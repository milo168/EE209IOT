	.syntax unified
	.cpu cortex-m0
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.thumb
	.syntax unified
	.file	"ECE209-proj.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.get_key,"ax",%progbits
	.align	2
	.global	get_key
	.code	16
	.thumb_func
	.type	get_key, %function
get_key:
.LFB0:
	.file 1 "ECE209-proj.c"
	.loc 1 26 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
.LCFI1:
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
.LCFI2:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 28 0
	movs	r3, #0
	.loc 1 29 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE0:
	.size	get_key, .-get_key
	.section	.text.delay_2_ms,"ax",%progbits
	.align	2
	.code	16
	.thumb_func
	.type	delay_2_ms, %function
delay_2_ms:
.LFB1:
	.loc 1 32 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI3:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
.LCFI4:
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
.LCFI5:
	.cfi_def_cfa_register 7
.LBB2:
	.loc 1 33 0
	movs	r3, #0
	str	r3, [r7, #4]
	b	.L4
.L5:
	.loc 1 33 0 is_stmt 0 discriminator 3
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L4:
	.loc 1 33 0 discriminator 1
	ldr	r3, [r7, #4]
	ldr	r2, .L6
	cmp	r3, r2
	bls	.L5
.LBE2:
	.loc 1 36 0 is_stmt 1
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L7:
	.align	2
.L6:
	.word	4094
	.cfi_endproc
.LFE1:
	.size	delay_2_ms, .-delay_2_ms
	.global	weight
	.data
	.align	2
	.type	weight, %object
	.size	weight, 112
weight:
	.word	1048113351
	.word	1057866266
	.word	1061613457
	.word	1036730883
	.word	1057653732
	.word	1061534587
	.word	1062591837
	.word	1054885743
	.word	1045145865
	.word	1010901621
	.word	1058729957
	.word	1058436389
	.word	1053775091
	.word	1056975278
	.word	1058287944
	.word	1059288471
	.word	1058212967
	.word	1036140459
	.word	1045843193
	.word	1024197497
	.word	1055410132
	.word	1061482729
	.word	1049689168
	.word	1055520257
	.word	1056489813
	.word	1050447331
	.word	1059006714
	.word	1060064736
	.global	imagePixel
	.align	2
	.type	imagePixel, %object
	.size	imagePixel, 112
imagePixel:
	.word	0
	.word	0
	.word	1065353216
	.word	0
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.global	__aeabi_i2f
	.global	__aeabi_fadd
	.global	__aeabi_f2iz
	.section	.text.get_pt,"ax",%progbits
	.align	2
	.global	get_pt
	.code	16
	.thumb_func
	.type	get_pt, %function
get_pt:
.LFB2:
	.loc 1 45 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI6:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #32
.LCFI7:
	.cfi_def_cfa_offset 40
	add	r7, sp, #0
.LCFI8:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 49 0
	ldr	r3, .L12
	str	r3, [r7, #16]
	.loc 1 51 0
	bl	trigger_high
	.loc 1 138 0
	movs	r3, #0
	str	r3, [r7, #28]
	.loc 1 139 0
	movs	r3, #15
	adds	r3, r7, r3
	movs	r2, #255
	strb	r2, [r3]
	.loc 1 140 0
	movs	r3, #14
	adds	r3, r7, r3
	movs	r2, #170
	strb	r2, [r3]
	.loc 1 141 0
	movs	r3, #15
	adds	r2, r7, r3
	movs	r3, #14
	adds	r3, r7, r3
	ldrb	r2, [r2]
	ldrb	r3, [r3]
	eors	r3, r2
	uxtb	r2, r3
	movs	r3, #27
	adds	r3, r7, r3
	mvns	r2, r2
	strb	r2, [r3]
	.loc 1 150 0
	movs	r3, #0
	str	r3, [r7, #28]
	.loc 1 151 0
	movs	r3, #15
	adds	r3, r7, r3
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 152 0
	movs	r3, #14
	adds	r3, r7, r3
	movs	r2, #170
	strb	r2, [r3]
	.loc 1 153 0
	movs	r3, #15
	adds	r2, r7, r3
	movs	r3, #14
	adds	r3, r7, r3
	ldrb	r2, [r2]
	ldrb	r3, [r3]
	eors	r3, r2
	uxtb	r2, r3
	movs	r3, #27
	adds	r3, r7, r3
	mvns	r2, r2
	strb	r2, [r3]
.LBB3:
	.loc 1 155 0
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L9
.L10:
	.loc 1 156 0 discriminator 3
	movs	r3, #27
	adds	r3, r7, r3
	ldrb	r3, [r3]
	movs	r2, #1
	ands	r3, r2
	movs	r0, r3
	bl	__aeabi_i2f
	adds	r3, r0, #0
	adds	r1, r3, #0
	ldr	r0, [r7, #28]
	bl	__aeabi_fadd
	adds	r3, r0, #0
	str	r3, [r7, #28]
	.loc 1 157 0 discriminator 3
	movs	r3, #27
	adds	r3, r7, r3
	movs	r2, #27
	adds	r2, r7, r2
	ldrb	r2, [r2]
	lsrs	r2, r2, #1
	strb	r2, [r3]
	.loc 1 155 0 discriminator 3
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L9:
	.loc 1 155 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #20]
	cmp	r3, #7
	ble	.L10
.LBE3:
	.loc 1 161 0 is_stmt 1
	bl	delay_2_ms
	.loc 1 162 0
	bl	trigger_low
	.loc 1 163 0
	ldr	r0, [r7, #16]
	bl	__aeabi_f2iz
	movs	r3, r0
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3]
	.loc 1 166 0
	ldr	r3, [r7, #4]
	movs	r2, r3
	movs	r1, #16
	movs	r0, #114
	bl	simpleserial_put
	.loc 1 167 0
	movs	r3, #0
	.loc 1 168 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #32
	@ sp needed
	pop	{r7, pc}
.L13:
	.align	2
.L12:
	.word	1057175296
	.cfi_endproc
.LFE2:
	.size	get_pt, .-get_pt
	.section	.text.reset,"ax",%progbits
	.align	2
	.global	reset
	.code	16
	.thumb_func
	.type	reset, %function
reset:
.LFB3:
	.loc 1 171 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI9:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
.LCFI10:
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
.LCFI11:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 173 0
	movs	r3, #0
	.loc 1 174 0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE3:
	.size	reset, .-reset
	.section	.text.main,"ax",%progbits
	.align	2
	.global	main
	.code	16
	.thumb_func
	.type	main, %function
main:
.LFB4:
	.loc 1 177 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI12:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
.LCFI13:
	.cfi_def_cfa_register 7
	.loc 1 178 0
	bl	platform_init
	.loc 1 179 0
	bl	init_uart
	.loc 1 180 0
	bl	trigger_setup
	.loc 1 192 0
	bl	simpleserial_init
	.loc 1 193 0
	ldr	r3, .L18
	movs	r2, r3
	movs	r1, #16
	movs	r0, #107
	bl	simpleserial_addcmd
	.loc 1 194 0
	ldr	r3, .L18+4
	movs	r2, r3
	movs	r1, #16
	movs	r0, #112
	bl	simpleserial_addcmd
	.loc 1 195 0
	ldr	r3, .L18+8
	movs	r2, r3
	movs	r1, #0
	movs	r0, #120
	bl	simpleserial_addcmd
.L17:
	.loc 1 197 0 discriminator 1
	bl	simpleserial_get
	b	.L17
.L19:
	.align	2
.L18:
	.word	get_key
	.word	get_pt
	.word	reset
	.cfi_endproc
.LFE4:
	.size	main, .-main
	.text
.Letext0:
	.file 2 "/usr/include/newlib/machine/_default_types.h"
	.file 3 "/usr/include/newlib/sys/_stdint.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x1fe
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0xc
	.4byte	.LASF24
	.4byte	.LASF25
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x1d
	.4byte	0x3b
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x18
	.4byte	0x30
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x1
	.4byte	.LASF13
	.byte	0x1
	.byte	0x19
	.byte	0x1
	.4byte	0x7a
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LLST0
	.byte	0x1
	.4byte	0xbe
	.uleb128 0x6
	.ascii	"k\000"
	.byte	0x1
	.byte	0x19
	.4byte	0xbe
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x7a
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x1
	.byte	0x1f
	.byte	0x1
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LLST1
	.byte	0x1
	.4byte	0xf4
	.uleb128 0x9
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0xa
	.ascii	"i\000"
	.byte	0x1
	.byte	0x21
	.4byte	0xf4
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x73
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF14
	.byte	0x1
	.byte	0x2c
	.byte	0x1
	.4byte	0x7a
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST2
	.byte	0x1
	.4byte	0x181
	.uleb128 0x6
	.ascii	"pt\000"
	.byte	0x1
	.byte	0x2c
	.4byte	0xbe
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.4byte	.LASF15
	.byte	0x1
	.byte	0x31
	.4byte	0x181
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.4byte	.LASF16
	.byte	0x1
	.byte	0x8a
	.4byte	0x181
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.4byte	.LASF17
	.byte	0x1
	.byte	0x8b
	.4byte	0x3b
	.byte	0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0xd
	.4byte	.LASF18
	.byte	0x1
	.byte	0x8c
	.4byte	0x3b
	.byte	0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0xa
	.ascii	"res\000"
	.byte	0x1
	.byte	0x8d
	.4byte	0x3b
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x9
	.4byte	.LBB3
	.4byte	.LBE3
	.uleb128 0xa
	.ascii	"i\000"
	.byte	0x1
	.byte	0x9b
	.4byte	0x6c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF19
	.uleb128 0x5
	.byte	0x1
	.4byte	.LASF20
	.byte	0x1
	.byte	0xaa
	.byte	0x1
	.4byte	0x7a
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST3
	.byte	0x1
	.4byte	0x1b3
	.uleb128 0x6
	.ascii	"x\000"
	.byte	0x1
	.byte	0xaa
	.4byte	0xbe
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF27
	.byte	0x1
	.byte	0xb0
	.byte	0x1
	.4byte	0x6c
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST4
	.byte	0x1
	.uleb128 0xf
	.4byte	0x181
	.4byte	0x1dd
	.uleb128 0x10
	.4byte	0x85
	.byte	0x1b
	.byte	0
	.uleb128 0x11
	.4byte	.LASF21
	.byte	0x1
	.byte	0x26
	.4byte	0x1cd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	weight
	.uleb128 0x11
	.4byte	.LASF22
	.byte	0x1
	.byte	0x2a
	.4byte	0x1cd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	imagePixel
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2116
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB0
	.4byte	.LCFI0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI0
	.4byte	.LCFI1
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI1
	.4byte	.LCFI2
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI2
	.4byte	.LFE0
	.2byte	0x2
	.byte	0x77
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LFB1
	.4byte	.LCFI3
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI3
	.4byte	.LCFI4
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI4
	.4byte	.LCFI5
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI5
	.4byte	.LFE1
	.2byte	0x2
	.byte	0x77
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LFB2
	.4byte	.LCFI6
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI6
	.4byte	.LCFI7
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI7
	.4byte	.LCFI8
	.2byte	0x2
	.byte	0x7d
	.sleb128 40
	.4byte	.LCFI8
	.4byte	.LFE2
	.2byte	0x2
	.byte	0x77
	.sleb128 40
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LFB3
	.4byte	.LCFI9
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI9
	.4byte	.LCFI10
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI10
	.4byte	.LCFI11
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI11
	.4byte	.LFE3
	.2byte	0x2
	.byte	0x77
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LFB4
	.4byte	.LCFI12
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI12
	.4byte	.LCFI13
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI13
	.4byte	.LFE4
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF9:
	.ascii	"__uint8_t\000"
.LASF20:
	.ascii	"reset\000"
.LASF21:
	.ascii	"weight\000"
.LASF24:
	.ascii	"ECE209-proj.c\000"
.LASF26:
	.ascii	"delay_2_ms\000"
.LASF19:
	.ascii	"float\000"
.LASF22:
	.ascii	"imagePixel\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF5:
	.ascii	"long unsigned int\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF17:
	.ascii	"val1\000"
.LASF18:
	.ascii	"val2\000"
.LASF27:
	.ascii	"main\000"
.LASF15:
	.ascii	"result\000"
.LASF8:
	.ascii	"unsigned int\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF10:
	.ascii	"uint8_t\000"
.LASF11:
	.ascii	"sizetype\000"
.LASF6:
	.ascii	"long long int\000"
.LASF12:
	.ascii	"char\000"
.LASF2:
	.ascii	"short int\000"
.LASF25:
	.ascii	"/home/vagrant/work/projects/chipwhisperer/hardware/"
	.ascii	"victims/firmware/ECE209-proj\000"
.LASF4:
	.ascii	"long int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF14:
	.ascii	"get_pt\000"
.LASF16:
	.ascii	"pop_count\000"
.LASF23:
	.ascii	"GNU C99 5.4.1 20160919 -mcpu=cortex-m0 -mthumb -mfl"
	.ascii	"oat-abi=soft -gdwarf-2 -std=gnu99 -ffunction-sectio"
	.ascii	"ns -funsigned-char -funsigned-bitfields -fshort-enu"
	.ascii	"ms\000"
.LASF13:
	.ascii	"get_key\000"
	.ident	"GCC: (15:5.4.1+svn241155-1) 5.4.1 20160919"
