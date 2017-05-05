	.file	"ann_main.cpp"
	.intel_syntax noprefix
# GNU C++11 (Ubuntu 5.4.0-6ubuntu1~16.04.4) version 5.4.0 20160609 (x86_64-linux-gnu)
#	compiled by GNU C version 5.4.0 20160609, GMP version 6.1.0, MPFR version 3.1.4, MPC version 1.0.3
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D_GNU_SOURCE ann_main.cpp
# -masm=intel -mtune=generic -march=x86-64 -std=c++11 -fverbose-asm
# -fstack-protector-strong -Wformat -Wformat-security
# options enabled:  -faggressive-loop-optimizations
# -fasynchronous-unwind-tables -fauto-inc-dec -fchkp-check-incomplete-type
# -fchkp-check-read -fchkp-check-write -fchkp-instrument-calls
# -fchkp-narrow-bounds -fchkp-optimize -fchkp-store-bounds
# -fchkp-use-static-bounds -fchkp-use-static-const-bounds
# -fchkp-use-wrappers -fcommon -fdelete-null-pointer-checks
# -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-types
# -fexceptions -ffunction-cse -fgcse-lm -fgnu-runtime -fgnu-unique -fident
# -finline-atomics -fira-hoist-pressure -fira-share-save-slots
# -fira-share-spill-slots -fivopts -fkeep-static-consts
# -fleading-underscore -flifetime-dse -flto-odr-type-merging -fmath-errno
# -fmerge-debug-strings -fpeephole -fprefetch-loop-arrays
# -freg-struct-return -fsched-critical-path-heuristic
# -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
# -fsched-last-insn-heuristic -fsched-rank-heuristic -fsched-spec
# -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-fusion
# -fsemantic-interposition -fshow-column -fsigned-zeros
# -fsplit-ivs-in-unroller -fstack-protector-strong -fstdarg-opt
# -fstrict-volatile-bitfields -fsync-libcalls -ftrapping-math
# -ftree-coalesce-vars -ftree-cselim -ftree-forwprop -ftree-loop-if-convert
# -ftree-loop-im -ftree-loop-ivcanon -ftree-loop-optimize
# -ftree-parallelize-loops= -ftree-phiprop -ftree-reassoc -ftree-scev-cprop
# -funit-at-a-time -funwind-tables -fverbose-asm -fzero-initialized-in-bss
# -m128bit-long-double -m64 -m80387 -malign-stringops
# -mavx256-split-unaligned-load -mavx256-split-unaligned-store
# -mfancy-math-387 -mfp-ret-in-387 -mfxsr -mglibc -mieee-fp
# -mlong-double-80 -mmmx -mno-sse4 -mpush-args -mred-zone -msse -msse2
# -mtls-direct-seg-refs -mvzeroupper

	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.section	.text._ZnwmPv,"axG",@progbits,_ZnwmPv,comdat
	.weak	_ZnwmPv
	.type	_ZnwmPv, @function
_ZnwmPv:
.LFB429:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# D.11054, D.11054
	mov	QWORD PTR [rbp-16], rsi	# __p, __p
	mov	rax, QWORD PTR [rbp-16]	# D.132348, __p
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE429:
	.size	_ZnwmPv, .-_ZnwmPv
	.section	.text._ZStorSt13_Ios_OpenmodeS_,"axG",@progbits,_ZStorSt13_Ios_OpenmodeS_,comdat
	.weak	_ZStorSt13_Ios_OpenmodeS_
	.type	_ZStorSt13_Ios_OpenmodeS_, @function
_ZStorSt13_Ios_OpenmodeS_:
.LFB985:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-4], edi	# __a, __a
	mov	DWORD PTR [rbp-8], esi	# __b, __b
	mov	eax, DWORD PTR [rbp-4]	# tmp89, __a
	or	eax, DWORD PTR [rbp-8]	# D.132349, __b
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE985:
	.size	_ZStorSt13_Ios_OpenmodeS_, .-_ZStorSt13_Ios_OpenmodeS_
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.text._ZSt4fmodff,"axG",@progbits,_ZSt4fmodff,comdat
	.weak	_ZSt4fmodff
	.type	_ZSt4fmodff, @function
_ZSt4fmodff:
.LFB1417:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	movss	DWORD PTR [rbp-4], xmm0	# __x, __x
	movss	DWORD PTR [rbp-8], xmm1	# __y, __y
	movss	xmm0, DWORD PTR [rbp-8]	# tmp89, __y
	mov	eax, DWORD PTR [rbp-4]	# tmp90, __x
	movaps	xmm1, xmm0	#, tmp89
	mov	DWORD PTR [rbp-12], eax	# %sfp, tmp90
	movss	xmm0, DWORD PTR [rbp-12]	#, %sfp
	call	fmodf	#
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1417:
	.size	_ZSt4fmodff, .-_ZSt4fmodff
	.section	.text._ZSt3logf,"axG",@progbits,_ZSt3logf,comdat
	.weak	_ZSt3logf
	.type	_ZSt3logf, @function
_ZSt3logf:
.LFB1426:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	movss	DWORD PTR [rbp-4], xmm0	# __x, __x
	mov	eax, DWORD PTR [rbp-4]	# tmp89, __x
	mov	DWORD PTR [rbp-8], eax	# %sfp, tmp89
	movss	xmm0, DWORD PTR [rbp-8]	#, %sfp
	call	logf	#
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1426:
	.size	_ZSt3logf, .-_ZSt3logf
	.section	.text._ZSt3loge,"axG",@progbits,_ZSt3loge,comdat
	.weak	_ZSt3loge
	.type	_ZSt3loge, @function
_ZSt3loge:
.LFB1427:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	push	QWORD PTR [rbp+24]	# __x
	push	QWORD PTR [rbp+16]	# __x
	call	logl	#
	add	rsp, 16	#,
	fstp	TBYTE PTR [rbp-16]	# %sfp
	mov	rax, QWORD PTR [rbp-16]	#, %sfp
	mov	edx, DWORD PTR [rbp-8]	#, %sfp
	mov	QWORD PTR [rbp-16], rax	# %sfp,
	mov	DWORD PTR [rbp-8], edx	# %sfp,
	fld	TBYTE PTR [rbp-16]	# %sfp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1427:
	.size	_ZSt3loge, .-_ZSt3loge
	.section	.text._ZSt4sqrtf,"axG",@progbits,_ZSt4sqrtf,comdat
	.weak	_ZSt4sqrtf
	.type	_ZSt4sqrtf, @function
_ZSt4sqrtf:
.LFB1443:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	movss	DWORD PTR [rbp-4], xmm0	# __x, __x
	sqrtss	xmm0, DWORD PTR [rbp-4]	# tmp89, __x
	ucomiss	xmm0, xmm0	# tmp89, tmp89
	jp	.L13	#,
	ucomiss	xmm0, xmm0	# tmp89, tmp89
	je	.L12	#,
.L13:
	mov	eax, DWORD PTR [rbp-4]	# tmp90, __x
	mov	DWORD PTR [rbp-8], eax	# %sfp, tmp90
	movss	xmm0, DWORD PTR [rbp-8]	#, %sfp
	call	sqrtf	#
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1443:
	.size	_ZSt4sqrtf, .-_ZSt4sqrtf
	.section	.rodata
	.type	_ZStL13allocator_arg, @object
	.size	_ZStL13allocator_arg, 1
_ZStL13allocator_arg:
	.zero	1
	.type	_ZStL6ignore, @object
	.size	_ZStL6ignore, 1
_ZStL6ignore:
	.zero	1
	.section	.text._ZN2cv3Mat9initEmptyEv,"axG",@progbits,_ZN2cv3Mat9initEmptyEv,comdat
	.align 2
	.weak	_ZN2cv3Mat9initEmptyEv
	.type	_ZN2cv3Mat9initEmptyEv, @function
_ZN2cv3Mat9initEmptyEv:
.LFB8403:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	rax, QWORD PTR [rbp-8]	# tmp92, this
	mov	DWORD PTR [rax], 1124007936	# this_2(D)->flags,
	mov	rax, QWORD PTR [rbp-8]	# tmp93, this
	mov	DWORD PTR [rax+12], 0	# this_2(D)->cols,
	mov	rax, QWORD PTR [rbp-8]	# tmp94, this
	mov	edx, DWORD PTR [rax+12]	# D.132355, this_2(D)->cols
	mov	rax, QWORD PTR [rbp-8]	# tmp95, this
	mov	DWORD PTR [rax+8], edx	# this_2(D)->rows, D.132355
	mov	rax, QWORD PTR [rbp-8]	# tmp96, this
	mov	edx, DWORD PTR [rax+8]	# D.132355, this_2(D)->rows
	mov	rax, QWORD PTR [rbp-8]	# tmp97, this
	mov	DWORD PTR [rax+4], edx	# this_2(D)->dims, D.132355
	mov	rax, QWORD PTR [rbp-8]	# tmp98, this
	mov	QWORD PTR [rax+48], 0	# this_2(D)->datalimit,
	mov	rax, QWORD PTR [rbp-8]	# tmp99, this
	mov	rdx, QWORD PTR [rax+48]	# D.132356, this_2(D)->datalimit
	mov	rax, QWORD PTR [rbp-8]	# tmp100, this
	mov	QWORD PTR [rax+40], rdx	# this_2(D)->dataend, D.132356
	mov	rax, QWORD PTR [rbp-8]	# tmp101, this
	mov	rdx, QWORD PTR [rax+40]	# D.132356, this_2(D)->dataend
	mov	rax, QWORD PTR [rbp-8]	# tmp102, this
	mov	QWORD PTR [rax+32], rdx	# this_2(D)->datastart, D.132356
	mov	rax, QWORD PTR [rbp-8]	# tmp103, this
	mov	rdx, QWORD PTR [rax+32]	# D.132356, this_2(D)->datastart
	mov	rax, QWORD PTR [rbp-8]	# tmp104, this
	mov	QWORD PTR [rax+16], rdx	# this_2(D)->data, D.132356
	mov	rax, QWORD PTR [rbp-8]	# tmp105, this
	mov	QWORD PTR [rax+24], 0	# this_2(D)->refcount,
	mov	rax, QWORD PTR [rbp-8]	# tmp106, this
	mov	QWORD PTR [rax+56], 0	# this_2(D)->allocator,
	nop
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8403:
	.size	_ZN2cv3Mat9initEmptyEv, .-_ZN2cv3Mat9initEmptyEv
	.section	.text._ZN2cv3MatC2EiiiRKNS_7Scalar_IdEE,"axG",@progbits,_ZN2cv3MatC5EiiiRKNS_7Scalar_IdEE,comdat
	.align 2
	.weak	_ZN2cv3MatC2EiiiRKNS_7Scalar_IdEE
	.type	_ZN2cv3MatC2EiiiRKNS_7Scalar_IdEE, @function
_ZN2cv3MatC2EiiiRKNS_7Scalar_IdEE:
.LFB8411:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	DWORD PTR [rbp-12], esi	# _rows, _rows
	mov	DWORD PTR [rbp-16], edx	# _cols, _cols
	mov	DWORD PTR [rbp-20], ecx	# _type, _type
	mov	QWORD PTR [rbp-32], r8	# _s, _s
	mov	rax, QWORD PTR [rbp-8]	# tmp90, this
	lea	rdx, [rax+8]	# D.132357,
	mov	rax, QWORD PTR [rbp-8]	# tmp91, this
	add	rax, 64	# D.132358,
	mov	rsi, rdx	#, D.132357
	mov	rdi, rax	#, D.132358
	call	_ZN2cv3Mat5MSizeC1EPi	#
	mov	rax, QWORD PTR [rbp-8]	# tmp92, this
	add	rax, 72	# D.132359,
	mov	rdi, rax	#, D.132359
	call	_ZN2cv3Mat5MStepC1Ev	#
	mov	rax, QWORD PTR [rbp-8]	# tmp93, this
	mov	rdi, rax	#, tmp93
	call	_ZN2cv3Mat9initEmptyEv	#
	mov	ecx, DWORD PTR [rbp-20]	# tmp94, _type
	mov	edx, DWORD PTR [rbp-16]	# tmp95, _cols
	mov	esi, DWORD PTR [rbp-12]	# tmp96, _rows
	mov	rax, QWORD PTR [rbp-8]	# tmp97, this
	mov	rdi, rax	#, tmp97
	call	_ZN2cv3Mat6createEiii	#
	mov	rdx, QWORD PTR [rbp-32]	# tmp98, _s
	mov	rax, QWORD PTR [rbp-8]	# tmp99, this
	mov	rsi, rdx	#, tmp98
	mov	rdi, rax	#, tmp99
	call	_ZN2cv3MataSERKNS_7Scalar_IdEE	#
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8411:
	.size	_ZN2cv3MatC2EiiiRKNS_7Scalar_IdEE, .-_ZN2cv3MatC2EiiiRKNS_7Scalar_IdEE
	.weak	_ZN2cv3MatC1EiiiRKNS_7Scalar_IdEE
	.set	_ZN2cv3MatC1EiiiRKNS_7Scalar_IdEE,_ZN2cv3MatC2EiiiRKNS_7Scalar_IdEE
	.section	.text._ZN2cv3MatD2Ev,"axG",@progbits,_ZN2cv3MatD5Ev,comdat
	.align 2
	.weak	_ZN2cv3MatD2Ev
	.type	_ZN2cv3MatD2Ev, @function
_ZN2cv3MatD2Ev:
.LFB8441:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA8441
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	rax, QWORD PTR [rbp-8]	# tmp90, this
	mov	rdi, rax	#, tmp90
	call	_ZN2cv3Mat7releaseEv	#
	mov	rax, QWORD PTR [rbp-8]	# tmp91, this
	mov	rax, QWORD PTR [rax+72]	# D.132360, this_3(D)->step.p
	mov	rdx, QWORD PTR [rbp-8]	# tmp92, this
	add	rdx, 80	# D.132361,
	cmp	rax, rdx	# D.132360, D.132361
	je	.L19	#,
	mov	rax, QWORD PTR [rbp-8]	# tmp93, this
	mov	rax, QWORD PTR [rax+72]	# D.132360, this_3(D)->step.p
	mov	rdi, rax	#, D.132360
	call	_ZN2cv8fastFreeEPv	#
.L19:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8441:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZN2cv3MatD2Ev,"aG",@progbits,_ZN2cv3MatD5Ev,comdat
.LLSDA8441:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8441-.LLSDACSB8441
.LLSDACSB8441:
.LLSDACSE8441:
	.section	.text._ZN2cv3MatD2Ev,"axG",@progbits,_ZN2cv3MatD5Ev,comdat
	.size	_ZN2cv3MatD2Ev, .-_ZN2cv3MatD2Ev
	.weak	_ZN2cv3MatD1Ev
	.set	_ZN2cv3MatD1Ev,_ZN2cv3MatD2Ev
	.section	.text._ZN2cv3Mat6createEiii,"axG",@progbits,_ZN2cv3Mat6createEiii,comdat
	.align 2
	.weak	_ZN2cv3Mat6createEiii
	.type	_ZN2cv3Mat6createEiii, @function
_ZN2cv3Mat6createEiii:
.LFB8453:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	QWORD PTR [rbp-24], rdi	# this, this
	mov	DWORD PTR [rbp-28], esi	# _rows, _rows
	mov	DWORD PTR [rbp-32], edx	# _cols, _cols
	mov	DWORD PTR [rbp-36], ecx	# _type, _type
	mov	rax, QWORD PTR fs:40	# tmp103,
	mov	QWORD PTR [rbp-8], rax	# D.132365, tmp103
	xor	eax, eax	# tmp103
	and	DWORD PTR [rbp-36], 4095	# _type,
	mov	rax, QWORD PTR [rbp-24]	# tmp93, this
	mov	eax, DWORD PTR [rax+4]	# D.132363, this_8(D)->dims
	cmp	eax, 2	# D.132363,
	jg	.L21	#,
	mov	rax, QWORD PTR [rbp-24]	# tmp94, this
	mov	eax, DWORD PTR [rax+8]	# D.132363, this_8(D)->rows
	cmp	eax, DWORD PTR [rbp-28]	# D.132363, _rows
	jne	.L21	#,
	mov	rax, QWORD PTR [rbp-24]	# tmp95, this
	mov	eax, DWORD PTR [rax+12]	# D.132363, this_8(D)->cols
	cmp	eax, DWORD PTR [rbp-32]	# D.132363, _cols
	jne	.L21	#,
	mov	rax, QWORD PTR [rbp-24]	# tmp96, this
	mov	rdi, rax	#, tmp96
	call	_ZNK2cv3Mat4typeEv	#
	cmp	eax, DWORD PTR [rbp-36]	# D.132363, _type
	jne	.L21	#,
	mov	rax, QWORD PTR [rbp-24]	# tmp97, this
	mov	rax, QWORD PTR [rax+16]	# D.132364, this_8(D)->data
	test	rax, rax	# D.132364
	je	.L21	#,
	mov	eax, 1	# D.132362,
	jmp	.L22	#
.L21:
	mov	eax, 0	# D.132362,
.L22:
	test	al, al	# D.132362
	jne	.L26	#,
	mov	eax, DWORD PTR [rbp-28]	# tmp98, _rows
	mov	DWORD PTR [rbp-16], eax	# sz, tmp98
	mov	eax, DWORD PTR [rbp-32]	# tmp99, _cols
	mov	DWORD PTR [rbp-12], eax	# sz, tmp99
	mov	ecx, DWORD PTR [rbp-36]	# tmp100, _type
	lea	rdx, [rbp-16]	# tmp101,
	mov	rax, QWORD PTR [rbp-24]	# tmp102, this
	mov	esi, 2	#,
	mov	rdi, rax	#, tmp102
	call	_ZN2cv3Mat6createEiPKii	#
	jmp	.L20	#
.L26:
	nop
.L20:
	mov	rax, QWORD PTR [rbp-8]	# tmp104, D.132365
	xor	rax, QWORD PTR fs:40	# tmp104,
	je	.L25	#,
	call	__stack_chk_fail	#
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8453:
	.size	_ZN2cv3Mat6createEiii, .-_ZN2cv3Mat6createEiii
	.section	.text._ZN2cv3Mat7releaseEv,"axG",@progbits,_ZN2cv3Mat7releaseEv,comdat
	.align 2
	.weak	_ZN2cv3Mat7releaseEv
	.type	_ZN2cv3Mat7releaseEv, @function
_ZN2cv3Mat7releaseEv:
.LFB8456:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	rax, QWORD PTR [rbp-8]	# tmp95, this
	mov	rax, QWORD PTR [rax+24]	# D.132369, this_6(D)->refcount
	test	rax, rax	# D.132369
	je	.L28	#,
	mov	rax, QWORD PTR [rbp-8]	# tmp96, this
	mov	rax, QWORD PTR [rax+24]	# D.132369, this_6(D)->refcount
	mov	edx, -1	# D.132370,
	lock xadd	DWORD PTR [rax], edx	#,* D.132369, D.132370
	cmp	edx, 1	# D.132370,
	jne	.L28	#,
	mov	eax, 1	# D.132368,
	jmp	.L29	#
.L28:
	mov	eax, 0	# D.132368,
.L29:
	test	al, al	# D.132368
	je	.L30	#,
	mov	rax, QWORD PTR [rbp-8]	# tmp97, this
	mov	rdi, rax	#, tmp97
	call	_ZN2cv3Mat10deallocateEv	#
.L30:
	mov	rax, QWORD PTR [rbp-8]	# tmp98, this
	mov	QWORD PTR [rax+48], 0	# this_6(D)->datalimit,
	mov	rax, QWORD PTR [rbp-8]	# tmp99, this
	mov	rdx, QWORD PTR [rax+48]	# D.132371, this_6(D)->datalimit
	mov	rax, QWORD PTR [rbp-8]	# tmp100, this
	mov	QWORD PTR [rax+40], rdx	# this_6(D)->dataend, D.132371
	mov	rax, QWORD PTR [rbp-8]	# tmp101, this
	mov	rdx, QWORD PTR [rax+40]	# D.132371, this_6(D)->dataend
	mov	rax, QWORD PTR [rbp-8]	# tmp102, this
	mov	QWORD PTR [rax+32], rdx	# this_6(D)->datastart, D.132371
	mov	rax, QWORD PTR [rbp-8]	# tmp103, this
	mov	rdx, QWORD PTR [rax+32]	# D.132371, this_6(D)->datastart
	mov	rax, QWORD PTR [rbp-8]	# tmp104, this
	mov	QWORD PTR [rax+16], rdx	# this_6(D)->data, D.132371
	mov	rax, QWORD PTR [rbp-8]	# tmp105, this
	mov	rax, QWORD PTR [rax+64]	# D.132372, this_6(D)->size.p
	mov	DWORD PTR [rax], 0	# *_22,
	mov	rax, QWORD PTR [rbp-8]	# tmp106, this
	mov	QWORD PTR [rax+24], 0	# this_6(D)->refcount,
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8456:
	.size	_ZN2cv3Mat7releaseEv, .-_ZN2cv3Mat7releaseEv
	.section	.text._ZNK2cv3Mat4typeEv,"axG",@progbits,_ZNK2cv3Mat4typeEv,comdat
	.align 2
	.weak	_ZNK2cv3Mat4typeEv
	.type	_ZNK2cv3Mat4typeEv, @function
_ZNK2cv3Mat4typeEv:
.LFB8465:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	rax, QWORD PTR [rbp-8]	# tmp90, this
	mov	eax, DWORD PTR [rax]	# D.132373, this_2(D)->flags
	and	eax, 4095	# D.132373,
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8465:
	.size	_ZNK2cv3Mat4typeEv, .-_ZNK2cv3Mat4typeEv
	.section	.text._ZN2cv3Mat5MSizeC2EPi,"axG",@progbits,_ZN2cv3Mat5MSizeC5EPi,comdat
	.align 2
	.weak	_ZN2cv3Mat5MSizeC2EPi
	.type	_ZN2cv3Mat5MSizeC2EPi, @function
_ZN2cv3Mat5MSizeC2EPi:
.LFB8507:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	QWORD PTR [rbp-16], rsi	# _p, _p
	mov	rax, QWORD PTR [rbp-8]	# tmp87, this
	mov	rdx, QWORD PTR [rbp-16]	# tmp88, _p
	mov	QWORD PTR [rax], rdx	# this_2(D)->p, tmp88
	nop
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8507:
	.size	_ZN2cv3Mat5MSizeC2EPi, .-_ZN2cv3Mat5MSizeC2EPi
	.weak	_ZN2cv3Mat5MSizeC1EPi
	.set	_ZN2cv3Mat5MSizeC1EPi,_ZN2cv3Mat5MSizeC2EPi
	.section	.text._ZN2cv3Mat5MStepC2Ev,"axG",@progbits,_ZN2cv3Mat5MStepC5Ev,comdat
	.align 2
	.weak	_ZN2cv3Mat5MStepC2Ev
	.type	_ZN2cv3Mat5MStepC2Ev, @function
_ZN2cv3Mat5MStepC2Ev:
.LFB8516:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	rax, QWORD PTR [rbp-8]	# tmp92, this
	lea	rdx, [rax+8]	# D.132374,
	mov	rax, QWORD PTR [rbp-8]	# tmp93, this
	mov	QWORD PTR [rax], rdx	# this_1(D)->p, D.132374
	mov	rax, QWORD PTR [rbp-8]	# tmp94, this
	mov	rdx, QWORD PTR [rax]	# D.132375, this_1(D)->p
	mov	rax, QWORD PTR [rbp-8]	# tmp95, this
	mov	rax, QWORD PTR [rax]	# D.132375, this_1(D)->p
	add	rax, 8	# D.132375,
	mov	QWORD PTR [rax], 0	# *_7,
	mov	rax, QWORD PTR [rax]	# D.132376, *_7
	mov	QWORD PTR [rdx], rax	# *_5, D.132376
	nop
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8516:
	.size	_ZN2cv3Mat5MStepC2Ev, .-_ZN2cv3Mat5MStepC2Ev
	.weak	_ZN2cv3Mat5MStepC1Ev
	.set	_ZN2cv3Mat5MStepC1Ev,_ZN2cv3Mat5MStepC2Ev
	.globl	SIZE
	.data
	.align 8
	.type	SIZE, @object
	.size	SIZE, 8
SIZE:
	.long	640
	.long	480
	.globl	food
	.bss
	.align 32
	.type	food, @object
	.size	food, 12288
food:
	.zero	12288
	.globl	generator
	.align 8
	.type	generator, @object
	.size	generator, 8
generator:
	.zero	8
	.globl	distribution
	.align 16
	.type	distribution, @object
	.size	distribution, 16
distribution:
	.zero	16
	.globl	error
	.data
	.align 4
	.type	error, @object
	.size	error, 4
error:
	.long	1120403456
	.text
	.globl	_Z7sigmoidf
	.type	_Z7sigmoidf, @function
_Z7sigmoidf:
.LFB8929:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	movss	DWORD PTR [rbp-4], xmm0	# z, z
	movss	xmm1, DWORD PTR [rbp-4]	# tmp92, z
	movss	xmm0, DWORD PTR .LC1[rip]	# tmp93,
	xorps	xmm0, xmm1	# D.132377, tmp92
	call	expf	#
	movaps	xmm1, xmm0	# D.132377,
	movss	xmm0, DWORD PTR .LC2[rip]	# tmp94,
	addss	xmm0, xmm1	# D.132377, D.132377
	movss	xmm1, DWORD PTR .LC2[rip]	# tmp95,
	divss	xmm1, xmm0	# D.132377, D.132377
	movaps	xmm0, xmm1	# D.132377, D.132377
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8929:
	.size	_Z7sigmoidf, .-_Z7sigmoidf
	.section	.text._ZN3Ant9propagateEPfS0_,"axG",@progbits,_ZN3Ant9propagateEPfS0_,comdat
	.align 2
	.weak	_ZN3Ant9propagateEPfS0_
	.type	_ZN3Ant9propagateEPfS0_, @function
_ZN3Ant9propagateEPfS0_:
.LFB8930:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 144	#,
	mov	QWORD PTR [rbp-120], rdi	# this, this
	mov	QWORD PTR [rbp-128], rsi	# input, input
	mov	QWORD PTR [rbp-136], rdx	# output, output
	mov	rax, QWORD PTR fs:40	# tmp124,
	mov	QWORD PTR [rbp-8], rax	# D.132381, tmp124
	xor	eax, eax	# tmp124
	mov	QWORD PTR [rbp-80], 0	# activations,
	mov	QWORD PTR [rbp-72], 0	# activations,
	mov	QWORD PTR [rbp-64], 0	# activations,
	mov	QWORD PTR [rbp-56], 0	# activations,
	mov	rcx, QWORD PTR [rbp-128]	# tmp94, input
	lea	rax, [rbp-80]	# tmp95,
	mov	edx, 32	#,
	mov	rsi, rcx	#, tmp94
	mov	rdi, rax	#, tmp95
	call	memcpy	#
	mov	DWORD PTR [rbp-100], 0	# layer,
.L43:
	cmp	DWORD PTR [rbp-100], 1	# layer,
	jg	.L38	#,
	mov	QWORD PTR [rbp-48], 0	# new_activations,
	mov	QWORD PTR [rbp-40], 0	# new_activations,
	mov	QWORD PTR [rbp-32], 0	# new_activations,
	mov	QWORD PTR [rbp-24], 0	# new_activations,
	mov	DWORD PTR [rbp-96], 0	# neuron,
.L42:
	cmp	DWORD PTR [rbp-96], 7	# neuron,
	jg	.L39	#,
	pxor	xmm0, xmm0	# tmp96
	movss	DWORD PTR [rbp-92], xmm0	# a, tmp96
	mov	DWORD PTR [rbp-88], 0	# weight,
.L41:
	cmp	DWORD PTR [rbp-88], 7	# weight,
	jg	.L40	#,
	mov	eax, DWORD PTR [rbp-88]	# tmp98, weight
	cdqe
	movss	xmm1, DWORD PTR [rbp-80+rax*4]	# D.132378, activations
	mov	rax, QWORD PTR [rbp-120]	# tmp99, this
	mov	edx, DWORD PTR [rbp-88]	# tmp101, weight
	movsx	rdx, edx	# tmp100, tmp101
	mov	ecx, DWORD PTR [rbp-100]	# tmp103, layer
	movsx	rsi, ecx	# tmp102, tmp103
	mov	ecx, DWORD PTR [rbp-96]	# tmp105, neuron
	movsx	rcx, ecx	# tmp104, tmp105
	sal	rsi, 3	# tmp106,
	add	rcx, rsi	# tmp107, tmp106
	sal	rcx, 3	# tmp108,
	add	rdx, rcx	# tmp109, tmp108
	add	rdx, 8	# tmp110,
	movss	xmm0, DWORD PTR [rax+4+rdx*4]	# D.132378, this_19(D)->nn
	mulss	xmm0, xmm1	# D.132378, D.132378
	movss	xmm1, DWORD PTR [rbp-92]	# tmp112, a
	addss	xmm0, xmm1	# tmp111, tmp112
	movss	DWORD PTR [rbp-92], xmm0	# a, tmp111
	add	DWORD PTR [rbp-88], 1	# weight,
	jmp	.L41	#
.L40:
	mov	eax, DWORD PTR [rbp-96]	# tmp114, neuron
	cdqe
	movss	xmm0, DWORD PTR [rbp-92]	# tmp115, a
	movss	DWORD PTR [rbp-48+rax*4], xmm0	# new_activations, tmp115
	add	DWORD PTR [rbp-96], 1	# neuron,
	jmp	.L42	#
.L39:
	mov	rax, QWORD PTR [rbp-48]	# tmp116, MEM[(char * {ref-all})&new_activations]
	mov	QWORD PTR [rbp-80], rax	# MEM[(char * {ref-all})&activations], tmp116
	mov	rax, QWORD PTR [rbp-40]	# tmp117, MEM[(char * {ref-all})&new_activations]
	mov	QWORD PTR [rbp-72], rax	# MEM[(char * {ref-all})&activations], tmp117
	mov	rax, QWORD PTR [rbp-32]	# tmp118, MEM[(char * {ref-all})&new_activations]
	mov	QWORD PTR [rbp-64], rax	# MEM[(char * {ref-all})&activations], tmp118
	mov	rax, QWORD PTR [rbp-24]	# tmp119, MEM[(char * {ref-all})&new_activations]
	mov	QWORD PTR [rbp-56], rax	# MEM[(char * {ref-all})&activations], tmp119
	add	DWORD PTR [rbp-100], 1	# layer,
	jmp	.L43	#
.L38:
	mov	DWORD PTR [rbp-84], 0	# i,
.L45:
	cmp	DWORD PTR [rbp-84], 7	# i,
	jg	.L47	#,
	mov	eax, DWORD PTR [rbp-84]	# tmp120, i
	cdqe
	lea	rdx, [0+rax*4]	# D.132379,
	mov	rax, QWORD PTR [rbp-136]	# tmp121, output
	add	rdx, rax	# D.132380, tmp121
	mov	eax, DWORD PTR [rbp-84]	# tmp123, i
	cdqe
	movss	xmm0, DWORD PTR [rbp-80+rax*4]	# D.132378, activations
	movss	DWORD PTR [rdx], xmm0	# *_33, D.132378
	add	DWORD PTR [rbp-84], 1	# i,
	jmp	.L45	#
.L47:
	nop
	mov	rax, QWORD PTR [rbp-8]	# tmp125, D.132381
	xor	rax, QWORD PTR fs:40	# tmp125,
	je	.L46	#,
	call	__stack_chk_fail	#
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8930:
	.size	_ZN3Ant9propagateEPfS0_, .-_ZN3Ant9propagateEPfS0_
	.section	.text._ZN3Ant20calculate_attractionEPf,"axG",@progbits,_ZN3Ant20calculate_attractionEPf,comdat
	.align 2
	.weak	_ZN3Ant20calculate_attractionEPf
	.type	_ZN3Ant20calculate_attractionEPf, @function
_ZN3Ant20calculate_attractionEPf:
.LFB8931:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 80	#,
	mov	QWORD PTR [rbp-56], rdi	# this, this
	mov	QWORD PTR [rbp-64], rsi	# atrc, atrc
	mov	rax, QWORD PTR fs:40	# tmp215,
	mov	QWORD PTR [rbp-8], rax	# D.132387, tmp215
	xor	eax, eax	# tmp215
	mov	DWORD PTR [rbp-36], 0	# i,
.L50:
	cmp	DWORD PTR [rbp-36], 3	# i,
	jg	.L49	#,
	mov	eax, DWORD PTR [rbp-36]	# tmp144, i
	cdqe
	lea	rdx, [0+rax*4]	# D.132383,
	mov	rax, QWORD PTR [rbp-64]	# tmp145, atrc
	add	rax, rdx	# D.132384, D.132383
	pxor	xmm0, xmm0	# tmp146
	movss	DWORD PTR [rax], xmm0	# *_21, tmp146
	add	DWORD PTR [rbp-36], 1	# i,
	jmp	.L50	#
.L49:
	movss	xmm0, DWORD PTR .LC4[rip]	# tmp147,
	movss	DWORD PTR [rbp-32], xmm0	# closest_distance, tmp147
	mov	DWORD PTR [rbp-28], -1	# closest_index,
	mov	DWORD PTR [rbp-16], 0	# dpos,
	mov	DWORD PTR [rbp-12], 0	# dpos,
	mov	DWORD PTR [rbp-24], 0	# i,
.L54:
	cmp	DWORD PTR [rbp-24], 1023	# i,
	jg	.L51	#,
	mov	rax, QWORD PTR [rbp-56]	# tmp148, this
	mov	ecx, DWORD PTR [rax+20]	# D.132385, this_29(D)->pos
	mov	eax, DWORD PTR [rbp-24]	# tmp150, i
	movsx	rdx, eax	# tmp149, tmp150
	mov	rax, rdx	# tmp152, tmp149
	add	rax, rax	# tmp152
	add	rax, rdx	# tmp152, tmp149
	sal	rax, 2	# tmp153,
	add	rax, OFFSET FLAT:food	# tmp154,
	mov	eax, DWORD PTR [rax]	# D.132385, food
	sub	ecx, eax	# D.132385, D.132385
	mov	eax, ecx	# D.132385, D.132385
	pxor	xmm0, xmm0	# D.132382
	cvtsi2ss	xmm0, eax	# D.132382, D.132385
	movss	xmm1, DWORD PTR .LC5[rip]	#,
	call	powf	#
	movss	DWORD PTR [rbp-68], xmm0	# %sfp,
	mov	rax, QWORD PTR [rbp-56]	# tmp155, this
	mov	ecx, DWORD PTR [rax+24]	# D.132385, this_29(D)->pos
	mov	eax, DWORD PTR [rbp-24]	# tmp157, i
	movsx	rdx, eax	# tmp156, tmp157
	mov	rax, rdx	# tmp159, tmp156
	add	rax, rax	# tmp159
	add	rax, rdx	# tmp159, tmp156
	sal	rax, 2	# tmp160,
	add	rax, OFFSET FLAT:food+4	# tmp161,
	mov	eax, DWORD PTR [rax]	# D.132385, food
	sub	ecx, eax	# D.132385, D.132385
	mov	eax, ecx	# D.132385, D.132385
	pxor	xmm0, xmm0	# D.132382
	cvtsi2ss	xmm0, eax	# D.132382, D.132385
	movss	xmm1, DWORD PTR .LC5[rip]	#,
	call	powf	#
	addss	xmm0, DWORD PTR [rbp-68]	# tmp162, %sfp
	movss	DWORD PTR [rbp-20], xmm0	# d, tmp162
	movss	xmm0, DWORD PTR [rbp-32]	# tmp163, closest_distance
	ucomiss	xmm0, DWORD PTR [rbp-20]	# tmp163, d
	jbe	.L52	#,
	mov	eax, DWORD PTR [rbp-24]	# tmp165, i
	movsx	rdx, eax	# tmp164, tmp165
	mov	rax, rdx	# tmp167, tmp164
	add	rax, rax	# tmp167
	add	rax, rdx	# tmp167, tmp164
	sal	rax, 2	# tmp168,
	add	rax, OFFSET FLAT:food+8	# tmp169,
	mov	eax, DWORD PTR [rax]	# D.132385, food
	cmp	eax, 1	# D.132385,
	jne	.L52	#,
	movss	xmm0, DWORD PTR [rbp-20]	# tmp170, d
	movss	DWORD PTR [rbp-32], xmm0	# closest_distance, tmp170
	mov	eax, DWORD PTR [rbp-24]	# tmp171, i
	mov	DWORD PTR [rbp-28], eax	# closest_index, tmp171
	mov	eax, DWORD PTR [rbp-24]	# tmp173, i
	movsx	rdx, eax	# tmp172, tmp173
	mov	rax, rdx	# tmp175, tmp172
	add	rax, rax	# tmp175
	add	rax, rdx	# tmp175, tmp172
	sal	rax, 2	# tmp176,
	add	rax, OFFSET FLAT:food	# tmp177,
	mov	edx, DWORD PTR [rax]	# D.132385, food
	mov	rax, QWORD PTR [rbp-56]	# tmp178, this
	mov	eax, DWORD PTR [rax+20]	# D.132385, this_29(D)->pos
	sub	edx, eax	# D.132385, D.132385
	mov	eax, edx	# D.132385, D.132385
	mov	DWORD PTR [rbp-16], eax	# dpos, D.132385
	mov	eax, DWORD PTR [rbp-24]	# tmp180, i
	movsx	rdx, eax	# tmp179, tmp180
	mov	rax, rdx	# tmp182, tmp179
	add	rax, rax	# tmp182
	add	rax, rdx	# tmp182, tmp179
	sal	rax, 2	# tmp183,
	add	rax, OFFSET FLAT:food+4	# tmp184,
	mov	edx, DWORD PTR [rax]	# D.132385, food
	mov	rax, QWORD PTR [rbp-56]	# tmp185, this
	mov	eax, DWORD PTR [rax+24]	# D.132385, this_29(D)->pos
	sub	edx, eax	# D.132385, D.132385
	mov	eax, edx	# D.132385, D.132385
	mov	DWORD PTR [rbp-12], eax	# dpos, D.132385
.L52:
	add	DWORD PTR [rbp-24], 1	# i,
	jmp	.L54	#
.L51:
	cmp	DWORD PTR [rbp-28], -1	# closest_index,
	je	.L72	#,
	movss	xmm0, DWORD PTR .LC2[rip]	# tmp186,
	ucomiss	xmm0, DWORD PTR [rbp-32]	# tmp186, closest_distance
	jbe	.L71	#,
	call	rand	#
	mov	ecx, DWORD PTR SIZE[rip]	# D.132385, SIZE
	cdq
	idiv	ecx	# D.132385
	mov	eax, edx	# D.132385, tmp187
	lea	ecx, [rax-1]	# D.132385,
	mov	eax, DWORD PTR [rbp-28]	# tmp190, closest_index
	movsx	rdx, eax	# tmp189, tmp190
	mov	rax, rdx	# tmp192, tmp189
	add	rax, rax	# tmp192
	add	rax, rdx	# tmp192, tmp189
	sal	rax, 2	# tmp193,
	add	rax, OFFSET FLAT:food	# tmp194,
	mov	DWORD PTR [rax], ecx	# food, D.132385
	call	rand	#
	mov	ecx, DWORD PTR SIZE[rip+4]	# D.132385, SIZE
	cdq
	idiv	ecx	# D.132385
	mov	eax, edx	# D.132385, tmp195
	lea	ecx, [rax-1]	# D.132385,
	mov	eax, DWORD PTR [rbp-28]	# tmp198, closest_index
	movsx	rdx, eax	# tmp197, tmp198
	mov	rax, rdx	# tmp200, tmp197
	add	rax, rax	# tmp200
	add	rax, rdx	# tmp200, tmp197
	sal	rax, 2	# tmp201,
	add	rax, OFFSET FLAT:food+4	# tmp202,
	mov	DWORD PTR [rax], ecx	# food, D.132385
	mov	rax, QWORD PTR [rbp-56]	# tmp203, this
	mov	eax, DWORD PTR [rax+16]	# D.132385, this_29(D)->score
	lea	edx, [rax+1]	# D.132385,
	mov	rax, QWORD PTR [rbp-56]	# tmp204, this
	mov	DWORD PTR [rax+16], edx	# this_29(D)->score, D.132385
	jmp	.L48	#
.L71:
	mov	eax, DWORD PTR [rbp-12]	# D.132385, dpos
	test	eax, eax	# D.132385
	jns	.L59	#,
	mov	eax, DWORD PTR [rbp-12]	# D.132385, dpos
	mov	edx, 1	# tmp205,
	sub	edx, eax	# D.132385, D.132385
	mov	eax, edx	# D.132385, D.132385
	pxor	xmm0, xmm0	# D.132386
	cvtsi2sd	xmm0, eax	# D.132386, D.132385
	movsd	xmm1, QWORD PTR .LC6[rip]	# tmp206,
	divsd	xmm1, xmm0	# D.132386, D.132386
	movapd	xmm0, xmm1	# D.132386, D.132386
	cvtsd2ss	xmm0, xmm0	# D.132382, D.132386
	jmp	.L60	#
.L59:
	pxor	xmm0, xmm0	# D.132382
.L60:
	mov	rax, QWORD PTR [rbp-64]	# tmp207, atrc
	movss	DWORD PTR [rax], xmm0	# *atrc_20(D), D.132382
	mov	rax, QWORD PTR [rbp-64]	# tmp208, atrc
	lea	rdx, [rax+4]	# D.132384,
	mov	eax, DWORD PTR [rbp-12]	# D.132385, dpos
	test	eax, eax	# D.132385
	js	.L61	#,
	mov	eax, DWORD PTR [rbp-12]	# D.132385, dpos
	add	eax, 1	# D.132385,
	pxor	xmm0, xmm0	# D.132386
	cvtsi2sd	xmm0, eax	# D.132386, D.132385
	movsd	xmm1, QWORD PTR .LC6[rip]	# tmp209,
	divsd	xmm1, xmm0	# D.132386, D.132386
	movapd	xmm0, xmm1	# D.132386, D.132386
	cvtsd2ss	xmm0, xmm0	# D.132382, D.132386
	jmp	.L62	#
.L61:
	pxor	xmm0, xmm0	# D.132382
.L62:
	movss	DWORD PTR [rdx], xmm0	# *_63, D.132382
	mov	rax, QWORD PTR [rbp-64]	# tmp210, atrc
	lea	rdx, [rax+8]	# D.132384,
	mov	eax, DWORD PTR [rbp-16]	# D.132385, dpos
	test	eax, eax	# D.132385
	jns	.L63	#,
	mov	eax, DWORD PTR [rbp-16]	# D.132385, dpos
	mov	ecx, 1	# tmp211,
	sub	ecx, eax	# D.132385, D.132385
	mov	eax, ecx	# D.132385, D.132385
	pxor	xmm0, xmm0	# D.132386
	cvtsi2sd	xmm0, eax	# D.132386, D.132385
	movsd	xmm1, QWORD PTR .LC6[rip]	# tmp212,
	divsd	xmm1, xmm0	# D.132386, D.132386
	movapd	xmm0, xmm1	# D.132386, D.132386
	cvtsd2ss	xmm0, xmm0	# D.132382, D.132386
	jmp	.L64	#
.L63:
	pxor	xmm0, xmm0	# D.132382
.L64:
	movss	DWORD PTR [rdx], xmm0	# *_72, D.132382
	mov	rax, QWORD PTR [rbp-64]	# tmp213, atrc
	lea	rdx, [rax+12]	# D.132384,
	mov	eax, DWORD PTR [rbp-16]	# D.132385, dpos
	test	eax, eax	# D.132385
	js	.L65	#,
	mov	eax, DWORD PTR [rbp-16]	# D.132385, dpos
	add	eax, 1	# D.132385,
	pxor	xmm0, xmm0	# D.132386
	cvtsi2sd	xmm0, eax	# D.132386, D.132385
	movsd	xmm1, QWORD PTR .LC6[rip]	# tmp214,
	divsd	xmm1, xmm0	# D.132386, D.132386
	movapd	xmm0, xmm1	# D.132386, D.132386
	cvtsd2ss	xmm0, xmm0	# D.132382, D.132386
	jmp	.L66	#
.L65:
	pxor	xmm0, xmm0	# D.132382
.L66:
	movss	DWORD PTR [rdx], xmm0	# *_81, D.132382
	jmp	.L48	#
.L72:
	nop
.L48:
	mov	rax, QWORD PTR [rbp-8]	# tmp216, D.132387
	xor	rax, QWORD PTR fs:40	# tmp216,
	je	.L68	#,
	call	__stack_chk_fail	#
.L68:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8931:
	.size	_ZN3Ant20calculate_attractionEPf, .-_ZN3Ant20calculate_attractionEPf
	.section	.text._ZN3AntC2EPA8_A8_f,"axG",@progbits,_ZN3AntC5EPA8_A8_f,comdat
	.align 2
	.weak	_ZN3AntC2EPA8_A8_f
	.type	_ZN3AntC2EPA8_A8_f, @function
_ZN3AntC2EPA8_A8_f:
.LFB8933:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR [rbp-24], rdi	# this, this
	mov	QWORD PTR [rbp-32], rsi	# nn_template, nn_template
	mov	rax, QWORD PTR [rbp-24]	# tmp113, this
	mov	QWORD PTR [rax], 0	# this_9(D)->memory,
	mov	QWORD PTR [rax+8], 0	# this_9(D)->memory,
	mov	rax, QWORD PTR [rbp-24]	# tmp114, this
	mov	DWORD PTR [rax+16], 0	# this_9(D)->score,
	mov	rax, QWORD PTR [rbp-24]	# tmp115, this
	mov	DWORD PTR [rax+20], 0	# this_9(D)->pos,
	mov	rax, QWORD PTR [rbp-24]	# tmp116, this
	mov	DWORD PTR [rax+24], 0	# this_9(D)->pos,
	mov	rax, QWORD PTR [rbp-24]	# tmp117, this
	pxor	xmm0, xmm0	# tmp118
	movss	DWORD PTR [rax+28], xmm0	# this_9(D)->ppos, tmp118
	mov	rax, QWORD PTR [rbp-24]	# tmp119, this
	pxor	xmm0, xmm0	# tmp120
	movss	DWORD PTR [rax+32], xmm0	# this_9(D)->ppos, tmp120
	mov	rax, QWORD PTR [rbp-24]	# tmp121, this
	mov	DWORD PTR [rax+16], 0	# this_9(D)->score,
	call	rand	#
	mov	edx, eax	# D.132388,
	mov	eax, DWORD PTR SIZE[rip]	# D.132388, SIZE
	lea	ecx, [rax-1]	# D.132388,
	mov	eax, edx	# tmp123, D.132388
	cdq
	idiv	ecx	# D.132388
	mov	rax, QWORD PTR [rbp-24]	# tmp124, this
	mov	DWORD PTR [rax+20], edx	# this_9(D)->pos, D.132388
	call	rand	#
	mov	edx, eax	# D.132388,
	mov	eax, DWORD PTR SIZE[rip+4]	# D.132388, SIZE
	lea	ecx, [rax-1]	# D.132388,
	mov	eax, edx	# tmp126, D.132388
	cdq
	idiv	ecx	# D.132388
	mov	rax, QWORD PTR [rbp-24]	# tmp127, this
	mov	DWORD PTR [rax+24], edx	# this_9(D)->pos, D.132388
	mov	rax, QWORD PTR [rbp-24]	# tmp128, this
	mov	eax, DWORD PTR [rax+20]	# D.132388, this_9(D)->pos
	pxor	xmm0, xmm0	# D.132389
	cvtsi2ss	xmm0, eax	# D.132389, D.132388
	mov	rax, QWORD PTR [rbp-24]	# tmp129, this
	movss	DWORD PTR [rax+28], xmm0	# this_9(D)->ppos, D.132389
	mov	rax, QWORD PTR [rbp-24]	# tmp130, this
	mov	eax, DWORD PTR [rax+24]	# D.132388, this_9(D)->pos
	pxor	xmm0, xmm0	# D.132389
	cvtsi2ss	xmm0, eax	# D.132389, D.132388
	mov	rax, QWORD PTR [rbp-24]	# tmp131, this
	movss	DWORD PTR [rax+32], xmm0	# this_9(D)->ppos, D.132389
	mov	rax, QWORD PTR [rbp-24]	# tmp132, this
	lea	rcx, [rax+36]	# D.132390,
	mov	rax, QWORD PTR [rbp-32]	# tmp133, nn_template
	mov	edx, 512	#,
	mov	rsi, rax	#, tmp133
	mov	rdi, rcx	#, D.132390
	call	memcpy	#
	mov	rax, QWORD PTR [rbp-24]	# tmp134, this
	add	rax, 548	# D.132390,
	mov	edx, 512	#,
	mov	esi, 0	#,
	mov	rdi, rax	#, D.132390
	call	memset	#
	mov	DWORD PTR [rbp-16], 0	# l,
.L80:
	cmp	DWORD PTR [rbp-16], 1	# l,
	jg	.L81	#,
	mov	DWORD PTR [rbp-12], 0	# n,
.L79:
	cmp	DWORD PTR [rbp-12], 7	# n,
	jg	.L75	#,
	mov	DWORD PTR [rbp-8], 0	# w,
.L78:
	cmp	DWORD PTR [rbp-8], 7	# w,
	jg	.L76	#,
	call	rand	#
	mov	ecx, eax	# D.132388,
	mov	edx, 1717986919	# tmp136,
	mov	eax, ecx	# tmp179, D.132388
	imul	edx	# tmp136
	sar	edx, 3	# tmp137,
	mov	eax, ecx	# tmp138, D.132388
	sar	eax, 31	# tmp138,
	sub	edx, eax	# D.132388, tmp138
	mov	eax, edx	# tmp139, D.132388
	sal	eax, 2	# tmp139,
	add	eax, edx	# tmp139, D.132388
	sal	eax, 2	# tmp140,
	sub	ecx, eax	# D.132388, tmp139
	mov	edx, ecx	# D.132388, D.132388
	test	edx, edx	# D.132388
	sete	al	#, D.132391
	test	al, al	# D.132391
	je	.L77	#,
	mov	esi, OFFSET FLAT:generator	#,
	mov	edi, OFFSET FLAT:distribution	#,
	call	_ZNSt19normal_distributionIfEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEfRT_	#
	movd	eax, xmm0	# D.132389,
	mov	DWORD PTR [rbp-4], eax	# dw, D.132389
	mov	rax, QWORD PTR [rbp-24]	# tmp141, this
	mov	edx, DWORD PTR [rbp-8]	# tmp143, w
	movsx	rdx, edx	# tmp142, tmp143
	mov	ecx, DWORD PTR [rbp-16]	# tmp145, l
	movsx	rsi, ecx	# tmp144, tmp145
	mov	ecx, DWORD PTR [rbp-12]	# tmp147, n
	movsx	rcx, ecx	# tmp146, tmp147
	sal	rsi, 3	# tmp148,
	add	rcx, rsi	# tmp149, tmp148
	sal	rcx, 3	# tmp150,
	add	rdx, rcx	# tmp151, tmp150
	add	rdx, 8	# tmp152,
	movss	xmm1, DWORD PTR [rax+4+rdx*4]	# D.132389, this_9(D)->nn
	movss	xmm0, DWORD PTR error[rip]	# D.132389, error
	movss	xmm2, DWORD PTR .LC7[rip]	# tmp153,
	divss	xmm0, xmm2	# D.132389, tmp153
	mulss	xmm0, DWORD PTR [rbp-4]	# D.132389, dw
	addss	xmm0, xmm1	# D.132389, D.132389
	mov	rax, QWORD PTR [rbp-24]	# tmp154, this
	mov	edx, DWORD PTR [rbp-8]	# tmp156, w
	movsx	rdx, edx	# tmp155, tmp156
	mov	ecx, DWORD PTR [rbp-16]	# tmp158, l
	movsx	rsi, ecx	# tmp157, tmp158
	mov	ecx, DWORD PTR [rbp-12]	# tmp160, n
	movsx	rcx, ecx	# tmp159, tmp160
	sal	rsi, 3	# tmp161,
	add	rcx, rsi	# tmp162, tmp161
	sal	rcx, 3	# tmp163,
	add	rdx, rcx	# tmp164, tmp163
	add	rdx, 8	# tmp165,
	movss	DWORD PTR [rax+4+rdx*4], xmm0	# this_9(D)->nn, D.132389
	movss	xmm0, DWORD PTR error[rip]	# D.132389, error
	movss	xmm1, DWORD PTR .LC7[rip]	# tmp166,
	divss	xmm0, xmm1	# D.132389, tmp166
	mulss	xmm0, DWORD PTR [rbp-4]	# D.132389, dw
	mov	rax, QWORD PTR [rbp-24]	# tmp167, this
	mov	edx, DWORD PTR [rbp-8]	# tmp169, w
	movsx	rdx, edx	# tmp168, tmp169
	mov	ecx, DWORD PTR [rbp-16]	# tmp171, l
	movsx	rsi, ecx	# tmp170, tmp171
	mov	ecx, DWORD PTR [rbp-12]	# tmp173, n
	movsx	rcx, ecx	# tmp172, tmp173
	sal	rsi, 3	# tmp174,
	add	rcx, rsi	# tmp175, tmp174
	sal	rcx, 3	# tmp176,
	add	rdx, rcx	# tmp177, tmp176
	add	rdx, 136	# tmp178,
	movss	DWORD PTR [rax+4+rdx*4], xmm0	# this_9(D)->nn_delta, D.132389
.L77:
	add	DWORD PTR [rbp-8], 1	# w,
	jmp	.L78	#
.L76:
	add	DWORD PTR [rbp-12], 1	# n,
	jmp	.L79	#
.L75:
	add	DWORD PTR [rbp-16], 1	# l,
	jmp	.L80	#
.L81:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8933:
	.size	_ZN3AntC2EPA8_A8_f, .-_ZN3AntC2EPA8_A8_f
	.weak	_ZN3AntC1EPA8_A8_f
	.set	_ZN3AntC1EPA8_A8_f,_ZN3AntC2EPA8_A8_f
	.section	.text._ZSt3powIfiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_,"axG",@progbits,_ZSt3powIfiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_,comdat
	.weak	_ZSt3powIfiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_
	.type	_ZSt3powIfiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_, @function
_ZSt3powIfiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_:
.LFB8936:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	movss	DWORD PTR [rbp-4], xmm0	# __x, __x
	mov	DWORD PTR [rbp-8], edi	# __y, __y
	pxor	xmm1, xmm1	# D.132392
	cvtsi2sd	xmm1, DWORD PTR [rbp-8]	# D.132392, __y
	cvtss2sd	xmm0, DWORD PTR [rbp-4]	# D.132392, __x
	call	pow	#
	movq	rax, xmm0	# D.132393,
	mov	QWORD PTR [rbp-16], rax	# %sfp, D.132393
	movsd	xmm0, QWORD PTR [rbp-16]	# <retval>, %sfp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8936:
	.size	_ZSt3powIfiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_, .-_ZSt3powIfiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_
	.section	.text._ZN3Ant6updateEv,"axG",@progbits,_ZN3Ant6updateEv,comdat
	.align 2
	.weak	_ZN3Ant6updateEv
	.type	_ZN3Ant6updateEv, @function
_ZN3Ant6updateEv:
.LFB8935:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 144	#,
	mov	QWORD PTR [rbp-120], rdi	# this, this
	mov	rax, QWORD PTR fs:40	# tmp181,
	mov	QWORD PTR [rbp-8], rax	# D.132397, tmp181
	xor	eax, eax	# tmp181
	lea	rdx, [rbp-96]	# tmp136,
	mov	rax, QWORD PTR [rbp-120]	# tmp137, this
	mov	rsi, rdx	#, tmp136
	mov	rdi, rax	#, tmp137
	call	_ZN3Ant20calculate_attractionEPf	#
	movss	xmm0, DWORD PTR [rbp-96]	# D.132394, atrc
	movss	DWORD PTR [rbp-80], xmm0	# input, D.132394
	movss	xmm0, DWORD PTR [rbp-92]	# D.132394, atrc
	movss	DWORD PTR [rbp-76], xmm0	# input, D.132394
	movss	xmm0, DWORD PTR [rbp-88]	# D.132394, atrc
	movss	DWORD PTR [rbp-72], xmm0	# input, D.132394
	movss	xmm0, DWORD PTR [rbp-84]	# D.132394, atrc
	movss	DWORD PTR [rbp-68], xmm0	# input, D.132394
	mov	rax, QWORD PTR [rbp-120]	# tmp138, this
	movss	xmm0, DWORD PTR [rax]	# D.132394, this_8(D)->memory
	movss	DWORD PTR [rbp-64], xmm0	# input, D.132394
	mov	rax, QWORD PTR [rbp-120]	# tmp139, this
	movss	xmm0, DWORD PTR [rax+4]	# D.132394, this_8(D)->memory
	movss	DWORD PTR [rbp-60], xmm0	# input, D.132394
	mov	rax, QWORD PTR [rbp-120]	# tmp140, this
	movss	xmm0, DWORD PTR [rax+8]	# D.132394, this_8(D)->memory
	movss	DWORD PTR [rbp-56], xmm0	# input, D.132394
	mov	rax, QWORD PTR [rbp-120]	# tmp141, this
	movss	xmm0, DWORD PTR [rax+12]	# D.132394, this_8(D)->memory
	movss	DWORD PTR [rbp-52], xmm0	# input, D.132394
	mov	QWORD PTR [rbp-48], 0	# output,
	mov	QWORD PTR [rbp-40], 0	# output,
	mov	QWORD PTR [rbp-32], 0	# output,
	mov	QWORD PTR [rbp-24], 0	# output,
	lea	rdx, [rbp-48]	# tmp142,
	lea	rcx, [rbp-80]	# tmp143,
	mov	rax, QWORD PTR [rbp-120]	# tmp144, this
	mov	rsi, rcx	#, tmp143
	mov	rdi, rax	#, tmp144
	call	_ZN3Ant9propagateEPfS0_	#
	mov	DWORD PTR [rbp-112], 0	# i,
.L86:
	cmp	DWORD PTR [rbp-112], 3	# i,
	jg	.L85	#,
	mov	eax, DWORD PTR [rbp-112]	# tmp145, i
	add	eax, 4	# D.132395,
	cdqe
	mov	eax, DWORD PTR [rbp-48+rax*4]	# D.132394, output
	mov	DWORD PTR [rbp-128], eax	# %sfp, D.132394
	movss	xmm0, DWORD PTR [rbp-128]	#, %sfp
	call	_Z7sigmoidf	#
	movd	ecx, xmm0	# D.132394,
	mov	rax, QWORD PTR [rbp-120]	# tmp147, this
	mov	edx, DWORD PTR [rbp-112]	# tmp149, i
	movsx	rdx, edx	# tmp148, tmp149
	mov	DWORD PTR [rax+rdx*4], ecx	# this_8(D)->memory, D.132394
	add	DWORD PTR [rbp-112], 1	# i,
	jmp	.L86	#
.L85:
	movss	xmm0, DWORD PTR [rbp-36]	# D.132394, output
	movss	xmm1, DWORD PTR [rbp-40]	# D.132394, output
	subss	xmm0, xmm1	# tmp150, D.132394
	movss	DWORD PTR [rbp-108], xmm0	# vx, tmp150
	movss	xmm0, DWORD PTR [rbp-48]	# D.132394, output
	movss	xmm1, DWORD PTR [rbp-44]	# D.132394, output
	subss	xmm0, xmm1	# tmp151, D.132394
	movss	DWORD PTR [rbp-104], xmm0	# vy, tmp151
	mov	eax, DWORD PTR [rbp-108]	# tmp152, vx
	mov	edi, 2	#,
	mov	DWORD PTR [rbp-128], eax	# %sfp, tmp152
	movss	xmm0, DWORD PTR [rbp-128]	#, %sfp
	call	_ZSt3powIfiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_	#
	movsd	QWORD PTR [rbp-128], xmm0	# %sfp,
	mov	eax, DWORD PTR [rbp-104]	# tmp153, vy
	mov	edi, 2	#,
	mov	DWORD PTR [rbp-132], eax	# %sfp, tmp153
	movss	xmm0, DWORD PTR [rbp-132]	#, %sfp
	call	_ZSt3powIfiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_	#
	addsd	xmm0, QWORD PTR [rbp-128]	# D.132396, %sfp
	call	sqrt	#
	cvtsd2ss	xmm3, xmm0	# tmp187, D.132396
	movss	DWORD PTR [rbp-100], xmm3	# v, tmp187
	movss	xmm0, DWORD PTR [rbp-100]	# tmp154, v
	ucomiss	xmm0, DWORD PTR .LC5[rip]	# tmp154,
	jbe	.L87	#,
	movss	xmm0, DWORD PTR [rbp-108]	# tmp155, vx
	divss	xmm0, DWORD PTR [rbp-100]	# D.132394, v
	addss	xmm0, xmm0	# tmp156, D.132394
	movss	DWORD PTR [rbp-108], xmm0	# vx, tmp156
	movss	xmm0, DWORD PTR [rbp-104]	# tmp157, vy
	divss	xmm0, DWORD PTR [rbp-100]	# D.132394, v
	addss	xmm0, xmm0	# tmp158, D.132394
	movss	DWORD PTR [rbp-104], xmm0	# vy, tmp158
.L87:
	mov	rax, QWORD PTR [rbp-120]	# tmp159, this
	movss	xmm0, DWORD PTR [rax+28]	# D.132394, this_8(D)->ppos
	addss	xmm0, DWORD PTR [rbp-108]	# D.132394, vx
	mov	rax, QWORD PTR [rbp-120]	# tmp160, this
	movss	DWORD PTR [rax+28], xmm0	# this_8(D)->ppos, D.132394
	mov	rax, QWORD PTR [rbp-120]	# tmp161, this
	movss	xmm0, DWORD PTR [rax+32]	# D.132394, this_8(D)->ppos
	addss	xmm0, DWORD PTR [rbp-104]	# D.132394, vy
	mov	rax, QWORD PTR [rbp-120]	# tmp162, this
	movss	DWORD PTR [rax+32], xmm0	# this_8(D)->ppos, D.132394
	mov	eax, DWORD PTR SIZE[rip]	# D.132395, SIZE
	pxor	xmm0, xmm0	# D.132394
	cvtsi2ss	xmm0, eax	# D.132394, D.132395
	movss	xmm1, DWORD PTR .LC2[rip]	# tmp163,
	subss	xmm0, xmm1	# D.132394, tmp163
	mov	rax, QWORD PTR [rbp-120]	# tmp164, this
	mov	eax, DWORD PTR [rax+28]	# D.132394, this_8(D)->ppos
	movaps	xmm1, xmm0	#, D.132394
	mov	DWORD PTR [rbp-128], eax	# %sfp, D.132394
	movss	xmm0, DWORD PTR [rbp-128]	#, %sfp
	call	_ZSt4fmodff	#
	movd	edx, xmm0	# D.132394,
	mov	rax, QWORD PTR [rbp-120]	# tmp165, this
	mov	DWORD PTR [rax+28], edx	# this_8(D)->ppos, D.132394
	mov	eax, DWORD PTR SIZE[rip+4]	# D.132395, SIZE
	pxor	xmm0, xmm0	# D.132394
	cvtsi2ss	xmm0, eax	# D.132394, D.132395
	movss	xmm1, DWORD PTR .LC2[rip]	# tmp166,
	subss	xmm0, xmm1	# D.132394, tmp166
	mov	rax, QWORD PTR [rbp-120]	# tmp167, this
	mov	eax, DWORD PTR [rax+32]	# D.132394, this_8(D)->ppos
	movaps	xmm1, xmm0	#, D.132394
	mov	DWORD PTR [rbp-128], eax	# %sfp, D.132394
	movss	xmm0, DWORD PTR [rbp-128]	#, %sfp
	call	_ZSt4fmodff	#
	movd	edx, xmm0	# D.132394,
	mov	rax, QWORD PTR [rbp-120]	# tmp168, this
	mov	DWORD PTR [rax+32], edx	# this_8(D)->ppos, D.132394
	mov	rax, QWORD PTR [rbp-120]	# tmp169, this
	movss	xmm1, DWORD PTR [rax+28]	# D.132394, this_8(D)->ppos
	pxor	xmm0, xmm0	# tmp170
	ucomiss	xmm0, xmm1	# tmp170, D.132394
	jbe	.L89	#,
	mov	rax, QWORD PTR [rbp-120]	# tmp171, this
	movss	xmm1, DWORD PTR [rax+28]	# D.132394, this_8(D)->ppos
	mov	eax, DWORD PTR SIZE[rip]	# D.132395, SIZE
	pxor	xmm0, xmm0	# D.132394
	cvtsi2ss	xmm0, eax	# D.132394, D.132395
	addss	xmm0, xmm1	# D.132394, D.132394
	mov	rax, QWORD PTR [rbp-120]	# tmp172, this
	movss	DWORD PTR [rax+28], xmm0	# this_8(D)->ppos, D.132394
.L89:
	mov	rax, QWORD PTR [rbp-120]	# tmp173, this
	movss	xmm1, DWORD PTR [rax+32]	# D.132394, this_8(D)->ppos
	pxor	xmm0, xmm0	# tmp174
	ucomiss	xmm0, xmm1	# tmp174, D.132394
	jbe	.L91	#,
	mov	rax, QWORD PTR [rbp-120]	# tmp175, this
	movss	xmm1, DWORD PTR [rax+32]	# D.132394, this_8(D)->ppos
	mov	eax, DWORD PTR SIZE[rip+4]	# D.132395, SIZE
	pxor	xmm0, xmm0	# D.132394
	cvtsi2ss	xmm0, eax	# D.132394, D.132395
	addss	xmm0, xmm1	# D.132394, D.132394
	mov	rax, QWORD PTR [rbp-120]	# tmp176, this
	movss	DWORD PTR [rax+32], xmm0	# this_8(D)->ppos, D.132394
.L91:
	mov	rax, QWORD PTR [rbp-120]	# tmp177, this
	movss	xmm0, DWORD PTR [rax+28]	# D.132394, this_8(D)->ppos
	cvttss2si	edx, xmm0	# D.132395, D.132394
	mov	rax, QWORD PTR [rbp-120]	# tmp178, this
	mov	DWORD PTR [rax+20], edx	# this_8(D)->pos, D.132395
	mov	rax, QWORD PTR [rbp-120]	# tmp179, this
	movss	xmm0, DWORD PTR [rax+32]	# D.132394, this_8(D)->ppos
	cvttss2si	edx, xmm0	# D.132395, D.132394
	mov	rax, QWORD PTR [rbp-120]	# tmp180, this
	mov	DWORD PTR [rax+24], edx	# this_8(D)->pos, D.132395
	nop
	mov	rax, QWORD PTR [rbp-8]	# tmp182, D.132397
	xor	rax, QWORD PTR fs:40	# tmp182,
	je	.L93	#,
	call	__stack_chk_fail	#
.L93:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8935:
	.size	_ZN3Ant6updateEv, .-_ZN3Ant6updateEv
	.text
	.globl	_Z14compare_scores3AntS_
	.type	_Z14compare_scores3AntS_, @function
_Z14compare_scores3AntS_:
.LFB8937:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	edx, DWORD PTR [rbp+32]	# D.132398, first.score
	mov	eax, DWORD PTR [rbp+1096]	# D.132398, second.score
	cmp	edx, eax	# D.132398, D.132398
	setg	al	#, D.132399
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8937:
	.size	_Z14compare_scores3AntS_, .-_Z14compare_scores3AntS_
	.globl	screen
	.bss
	.align 32
	.type	screen, @object
	.size	screen, 96
screen:
	.zero	96
	.globl	_Z4antsB5cxx11
	.align 16
	.type	_Z4antsB5cxx11, @object
	.size	_Z4antsB5cxx11, 24
_Z4antsB5cxx11:
	.zero	24
	.globl	delay
	.data
	.align 4
	.type	delay, @object
	.size	delay, 4
delay:
	.long	1
	.text
	.globl	_Z14write_genepoolPc
	.type	_Z14write_genepoolPc, @function
_Z14write_genepoolPc:
.LFB8938:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA8938
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	sub	rsp, 584	#,
	.cfi_offset 3, -24
	mov	QWORD PTR [rbp-584], rdi	# filename, filename
	mov	rax, QWORD PTR fs:40	# tmp108,
	mov	QWORD PTR [rbp-24], rax	# D.132405, tmp108
	xor	eax, eax	# tmp108
	mov	esi, 4	#,
	mov	edi, 16	#,
	call	_ZStorSt13_Ios_OpenmodeS_	#
	mov	edx, eax	# D.132401,
	mov	rcx, QWORD PTR [rbp-584]	# tmp93, filename
	lea	rax, [rbp-544]	# tmp94,
	mov	rsi, rcx	#, tmp93
	mov	rdi, rax	#, tmp94
.LEHB0:
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode	#
.LEHE0:
	mov	edi, OFFSET FLAT:_Z4antsB5cxx11	#,
	call	_ZNSt7__cxx114listI3AntSaIS1_EE5beginEv	#
	mov	QWORD PTR [rbp-576], rax	# it, tmp96
.L101:
	mov	edi, OFFSET FLAT:_Z4antsB5cxx11	#,
	call	_ZNSt7__cxx114listI3AntSaIS1_EE3endEv	#
	mov	QWORD PTR [rbp-560], rax	# D.123952, tmp98
	lea	rdx, [rbp-560]	# tmp99,
	lea	rax, [rbp-576]	# tmp100,
	mov	rsi, rdx	#, tmp99
	mov	rdi, rax	#, tmp100
	call	_ZNKSt14_List_iteratorI3AntEneERKS1_	#
	test	al, al	# D.132402
	je	.L100	#,
	mov	ebx, 1060	# D.132403,
	lea	rax, [rbp-576]	# tmp101,
	mov	rdi, rax	#, tmp101
	call	_ZNKSt14_List_iteratorI3AntEdeEv	#
	mov	rcx, rax	# D.132404,
	lea	rax, [rbp-544]	# tmp102,
	mov	rdx, rbx	#, D.132403
	mov	rsi, rcx	#, D.132404
	mov	rdi, rax	#, tmp102
.LEHB1:
	call	_ZNSo5writeEPKcl	#
	lea	rax, [rbp-576]	# tmp103,
	mov	esi, 0	#,
	mov	rdi, rax	#, tmp103
	call	_ZNSt14_List_iteratorI3AntEppEi	#
	jmp	.L101	#
.L100:
	lea	rax, [rbp-544]	# tmp104,
	mov	rdi, rax	#, tmp104
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv	#
.LEHE1:
	lea	rax, [rbp-544]	# tmp105,
	mov	rdi, rax	#, tmp105
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev	#
	nop
	mov	rax, QWORD PTR [rbp-24]	# tmp109, D.132405
	xor	rax, QWORD PTR fs:40	# tmp109,
	je	.L103	#,
	jmp	.L105	#
.L104:
	mov	rbx, rax	# tmp107,
	lea	rax, [rbp-544]	# tmp106,
	mov	rdi, rax	#, tmp106
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev	#
	mov	rax, rbx	# D.132400, tmp107
	mov	rdi, rax	#, D.132400
.LEHB2:
	call	_Unwind_Resume	#
.LEHE2:
.L105:
	call	__stack_chk_fail	#
.L103:
	add	rsp, 584	#,
	pop	rbx	#
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8938:
	.section	.gcc_except_table,"a",@progbits
.LLSDA8938:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8938-.LLSDACSB8938
.LLSDACSB8938:
	.uleb128 .LEHB0-.LFB8938
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8938
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L104-.LFB8938
	.uleb128 0
	.uleb128 .LEHB2-.LFB8938
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE8938:
	.text
	.size	_Z14write_genepoolPc, .-_Z14write_genepoolPc
	.section	.rodata
.LC8:
	.string	"changelog.pnn"
.LC9:
	.string	"Writing delta nn\n"
.LC10:
	.string	", "
.LC11:
	.string	"\n"
	.text
	.globl	_Z15write_parsed_nnPA8_A8_f
	.type	_Z15write_parsed_nnPA8_A8_f, @function
_Z15write_parsed_nnPA8_A8_f:
.LFB8939:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA8939
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	sub	rsp, 568	#,
	.cfi_offset 3, -24
	mov	QWORD PTR [rbp-568], rdi	# nn, nn
	mov	rax, QWORD PTR fs:40	# tmp109,
	mov	QWORD PTR [rbp-24], rax	# D.132412, tmp109
	xor	eax, eax	# tmp109
	mov	esi, 1	#,
	mov	edi, 16	#,
	call	_ZStorSt13_Ios_OpenmodeS_	#
	mov	edx, eax	# D.132407,
	lea	rax, [rbp-544]	# tmp94,
	mov	esi, OFFSET FLAT:.LC8	#,
	mov	rdi, rax	#, tmp94
.LEHB3:
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode	#
.LEHE3:
	mov	esi, OFFSET FLAT:.LC9	#,
	mov	edi, OFFSET FLAT:_ZSt4cout	#,
.LEHB4:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	mov	DWORD PTR [rbp-556], 0	# l,
.L112:
	cmp	DWORD PTR [rbp-556], 1	# l,
	jg	.L107	#,
	mov	DWORD PTR [rbp-552], 0	# n,
.L111:
	cmp	DWORD PTR [rbp-552], 7	# n,
	jg	.L108	#,
	mov	DWORD PTR [rbp-548], 0	# w,
.L110:
	cmp	DWORD PTR [rbp-548], 7	# w,
	jg	.L109	#,
	mov	eax, DWORD PTR [rbp-556]	# tmp95, l
	cdqe
	sal	rax, 8	# D.132408,
	mov	rdx, rax	# D.132408, D.132408
	mov	rax, QWORD PTR [rbp-568]	# tmp96, nn
	add	rax, rdx	# D.132409, D.132408
	mov	edx, DWORD PTR [rbp-548]	# tmp98, w
	movsx	rdx, edx	# tmp97, tmp98
	mov	ecx, DWORD PTR [rbp-552]	# tmp100, n
	movsx	rcx, ecx	# tmp99, tmp100
	sal	rcx, 3	# tmp101,
	add	rdx, rcx	# tmp102, tmp101
	mov	edx, DWORD PTR [rax+rdx*4]	# D.132410, *_20
	lea	rax, [rbp-544]	# tmp103,
	mov	DWORD PTR [rbp-572], edx	# %sfp, D.132410
	movss	xmm0, DWORD PTR [rbp-572]	#, %sfp
	mov	rdi, rax	#, tmp103
	call	_ZNSolsEf	#
	mov	esi, OFFSET FLAT:.LC10	#,
	mov	rdi, rax	#, D.132411
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	add	DWORD PTR [rbp-548], 1	# w,
	jmp	.L110	#
.L109:
	add	DWORD PTR [rbp-552], 1	# n,
	jmp	.L111	#
.L108:
	add	DWORD PTR [rbp-556], 1	# l,
	jmp	.L112	#
.L107:
	lea	rax, [rbp-544]	# tmp104,
	mov	esi, OFFSET FLAT:.LC11	#,
	mov	rdi, rax	#, tmp104
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	lea	rax, [rbp-544]	# tmp105,
	mov	rdi, rax	#, tmp105
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv	#
.LEHE4:
	lea	rax, [rbp-544]	# tmp106,
	mov	rdi, rax	#, tmp106
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev	#
	nop
	mov	rax, QWORD PTR [rbp-24]	# tmp110, D.132412
	xor	rax, QWORD PTR fs:40	# tmp110,
	je	.L114	#,
	jmp	.L116	#
.L115:
	mov	rbx, rax	# tmp108,
	lea	rax, [rbp-544]	# tmp107,
	mov	rdi, rax	#, tmp107
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev	#
	mov	rax, rbx	# D.132406, tmp108
	mov	rdi, rax	#, D.132406
.LEHB5:
	call	_Unwind_Resume	#
.LEHE5:
.L116:
	call	__stack_chk_fail	#
.L114:
	add	rsp, 568	#,
	pop	rbx	#
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8939:
	.section	.gcc_except_table
.LLSDA8939:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8939-.LLSDACSB8939
.LLSDACSB8939:
	.uleb128 .LEHB3-.LFB8939
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB8939
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L115-.LFB8939
	.uleb128 0
	.uleb128 .LEHB5-.LFB8939
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE8939:
	.text
	.size	_Z15write_parsed_nnPA8_A8_f, .-_Z15write_parsed_nnPA8_A8_f
	.globl	filename
	.bss
	.align 16
	.type	filename, @object
	.size	filename, 30
filename:
	.zero	30
	.section	.rodata
.LC13:
	.string	"screen"
.LC14:
	.string	"File name: "
	.text
	.globl	_Z4drawi
	.type	_Z4drawi, @function
_Z4drawi:
.LFB8940:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA8940
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	sub	rsp, 136	#,
	.cfi_offset 3, -24
	mov	DWORD PTR [rbp-132], edi	# tick, tick
	mov	rax, QWORD PTR fs:40	# tmp172,
	mov	QWORD PTR [rbp-24], rax	# D.132424, tmp172
	xor	eax, eax	# tmp172
	lea	rax, [rbp-64]	# tmp109,
	pxor	xmm3, xmm3	#
	pxor	xmm2, xmm2	#
	pxor	xmm1, xmm1	#
	pxor	xmm0, xmm0	#
	mov	rdi, rax	#, tmp109
.LEHB6:
	call	_ZN2cv7Scalar_IdEC1Edddd	#
	lea	rax, [rbp-64]	# tmp110,
	mov	rsi, rax	#, tmp110
	mov	edi, OFFSET FLAT:screen	#,
	call	_ZN2cv3MataSERKNS_7Scalar_IdEE	#
	mov	DWORD PTR [rbp-120], 0	# i,
.L119:
	mov	eax, DWORD PTR [rbp-120]	# tmp111, i
	cmp	eax, DWORD PTR [rbp-132]	# tmp111, tick
	jge	.L118	#,
	mov	eax, DWORD PTR [rbp-120]	# tmp112, i
	lea	edx, [rax+1023]	# tmp114,
	test	eax, eax	# tmp113
	cmovs	eax, edx	# tmp114,, tmp113
	sar	eax, 10	# tmp115,
	mov	edx, eax	# D.132418, tmp115
	mov	eax, DWORD PTR SIZE[rip]	# D.132418, SIZE
	mov	ecx, edx	# D.132418, D.132418
	imul	ecx, eax	# D.132418, D.132418
	lea	rax, [rbp-96]	# tmp116,
	mov	edx, 0	#,
	mov	esi, ecx	#, D.132418
	mov	rdi, rax	#, tmp116
	call	_ZN2cv6Point_IiEC1Eii	#
	lea	rax, [rbp-96]	# tmp117,
	mov	rsi, rax	#, tmp117
	mov	edi, OFFSET FLAT:screen	#,
	call	_ZN2cv3Mat2atINS_3VecIhLi3EEEEERT_NS_6Point_IiEE	#
	mov	rbx, rax	# D.132419,
	lea	rax, [rbp-64]	# tmp118,
	mov	ecx, 255	#,
	mov	edx, 255	#,
	mov	esi, 255	#,
	mov	rdi, rax	#, tmp118
	call	_ZN2cv3VecIhLi3EEC1Ehhh	#
	movzx	eax, WORD PTR [rbp-64]	# tmp119, D.124916
	mov	WORD PTR [rbx], ax	# *_20, tmp119
	movzx	eax, BYTE PTR [rbp-62]	# tmp120, D.124916
	mov	BYTE PTR [rbx+2], al	# *_20, tmp120
	add	DWORD PTR [rbp-120], 1	# i,
	jmp	.L119	#
.L118:
	mov	DWORD PTR [rbp-116], 0	# i,
.L122:
	cmp	DWORD PTR [rbp-116], 1023	# i,
	jg	.L120	#,
	mov	eax, DWORD PTR [rbp-116]	# tmp122, i
	movsx	rdx, eax	# tmp121, tmp122
	mov	rax, rdx	# tmp124, tmp121
	add	rax, rax	# tmp124
	add	rax, rdx	# tmp124, tmp121
	sal	rax, 2	# tmp125,
	add	rax, OFFSET FLAT:food+8	# tmp126,
	mov	eax, DWORD PTR [rax]	# D.132418, food
	test	eax, eax	# D.132418
	je	.L121	#,
	mov	eax, DWORD PTR [rbp-116]	# tmp128, i
	movsx	rdx, eax	# tmp127, tmp128
	mov	rax, rdx	# tmp130, tmp127
	add	rax, rax	# tmp130
	add	rax, rdx	# tmp130, tmp127
	sal	rax, 2	# tmp131,
	add	rax, OFFSET FLAT:food+4	# tmp132,
	mov	esi, DWORD PTR [rax]	# D.132418, food
	mov	eax, DWORD PTR [rbp-116]	# tmp134, i
	movsx	rdx, eax	# tmp133, tmp134
	mov	rax, rdx	# tmp136, tmp133
	add	rax, rax	# tmp136
	add	rax, rdx	# tmp136, tmp133
	sal	rax, 2	# tmp137,
	add	rax, OFFSET FLAT:food	# tmp138,
	mov	ecx, DWORD PTR [rax]	# D.132418, food
	lea	rax, [rbp-96]	# tmp139,
	mov	edx, esi	#, D.132418
	mov	esi, ecx	#, D.132418
	mov	rdi, rax	#, tmp139
	call	_ZN2cv6Point_IiEC1Eii	#
	lea	rax, [rbp-96]	# tmp140,
	mov	rsi, rax	#, tmp140
	mov	edi, OFFSET FLAT:screen	#,
	call	_ZN2cv3Mat2atINS_3VecIhLi3EEEEERT_NS_6Point_IiEE	#
	mov	rbx, rax	# D.132419,
	lea	rax, [rbp-64]	# tmp141,
	mov	ecx, 0	#,
	mov	edx, 0	#,
	mov	esi, 255	#,
	mov	rdi, rax	#, tmp141
	call	_ZN2cv3VecIhLi3EEC1Ehhh	#
	movzx	eax, WORD PTR [rbp-64]	# tmp142, D.124946
	mov	WORD PTR [rbx], ax	# *_33, tmp142
	movzx	eax, BYTE PTR [rbp-62]	# tmp143, D.124946
	mov	BYTE PTR [rbx+2], al	# *_33, tmp143
.L121:
	add	DWORD PTR [rbp-116], 1	# i,
	jmp	.L122	#
.L120:
	mov	edi, OFFSET FLAT:_Z4antsB5cxx11	#,
	call	_ZNSt7__cxx114listI3AntSaIS1_EE5beginEv	#
	mov	QWORD PTR [rbp-112], rax	# it, tmp145
.L124:
	mov	edi, OFFSET FLAT:_Z4antsB5cxx11	#,
	call	_ZNSt7__cxx114listI3AntSaIS1_EE3endEv	#
	mov	QWORD PTR [rbp-96], rax	# D.124949, tmp147
	lea	rdx, [rbp-96]	# tmp148,
	lea	rax, [rbp-112]	# tmp149,
	mov	rsi, rdx	#, tmp148
	mov	rdi, rax	#, tmp149
	call	_ZNKSt14_List_iteratorI3AntEneERKS1_	#
	test	al, al	# D.132420
	je	.L123	#,
	lea	rax, [rbp-112]	# tmp150,
	mov	rdi, rax	#, tmp150
	call	_ZNKSt14_List_iteratorI3AntEdeEv	#
	mov	ebx, DWORD PTR [rax+24]	# D.132418, _46->pos
	lea	rax, [rbp-112]	# tmp151,
	mov	rdi, rax	#, tmp151
	call	_ZNKSt14_List_iteratorI3AntEdeEv	#
	mov	ecx, DWORD PTR [rax+20]	# D.132418, _49->pos
	lea	rax, [rbp-96]	# tmp152,
	mov	edx, ebx	#, D.132418
	mov	esi, ecx	#, D.132418
	mov	rdi, rax	#, tmp152
	call	_ZN2cv6Point_IiEC1Eii	#
	lea	rax, [rbp-96]	# tmp153,
	mov	rsi, rax	#, tmp153
	mov	edi, OFFSET FLAT:screen	#,
	call	_ZN2cv3Mat2atINS_3VecIhLi3EEEEERT_NS_6Point_IiEE	#
	mov	rbx, rax	# D.132419,
	lea	rax, [rbp-64]	# tmp154,
	mov	ecx, 255	#,
	mov	edx, 255	#,
	mov	esi, 0	#,
	mov	rdi, rax	#, tmp154
	call	_ZN2cv3VecIhLi3EEC1Ehhh	#
	movzx	eax, WORD PTR [rbp-64]	# tmp155, D.124952
	mov	WORD PTR [rbx], ax	# *_53, tmp155
	movzx	eax, BYTE PTR [rbp-62]	# tmp156, D.124952
	mov	BYTE PTR [rbx+2], al	# *_53, tmp156
	lea	rax, [rbp-112]	# tmp157,
	mov	esi, 0	#,
	mov	rdi, rax	#, tmp157
	call	_ZNSt14_List_iteratorI3AntEppEi	#
	jmp	.L124	#
.L123:
	lea	rax, [rbp-96]	# tmp158,
	mov	esi, OFFSET FLAT:screen	#,
	mov	rdi, rax	#, tmp158
	call	_ZN2cv11_InputArrayC1ERKNS_3MatE	#
.LEHE6:
	lea	rax, [rbp-112]	# tmp159,
	mov	rdi, rax	#, tmp159
	call	_ZNSaIcEC1Ev	#
	lea	rdx, [rbp-112]	# tmp160,
	lea	rax, [rbp-64]	# tmp161,
	mov	esi, OFFSET FLAT:.LC13	#,
	mov	rdi, rax	#, tmp161
.LEHB7:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_	#
.LEHE7:
	lea	rdx, [rbp-96]	# tmp162,
	lea	rax, [rbp-64]	# tmp163,
	mov	rsi, rdx	#, tmp162
	mov	rdi, rax	#, tmp163
.LEHB8:
	call	_ZN2cv6imshowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayE	#
.LEHE8:
	lea	rax, [rbp-64]	# tmp164,
	mov	rdi, rax	#, tmp164
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev	#
	lea	rax, [rbp-112]	# tmp165,
	mov	rdi, rax	#, tmp165
	call	_ZNSaIcED1Ev	#
	mov	eax, DWORD PTR delay[rip]	# D.132418, delay
	mov	edi, eax	#, D.132418
.LEHB9:
	call	_ZN2cv7waitKeyEi	#
	mov	BYTE PTR [rbp-121], al	# key, D.132418
	cmp	BYTE PTR [rbp-121], 115	# key,
	jne	.L125	#,
	mov	eax, DWORD PTR delay[rip]	# D.132418, delay
	cmp	eax, 1	# D.132418,
	jne	.L126	#,
	mov	DWORD PTR delay[rip], 100	# delay,
	jmp	.L134	#
.L126:
	mov	eax, DWORD PTR delay[rip]	# D.132418, delay
	cmp	eax, 100	# D.132418,
	jne	.L128	#,
	mov	DWORD PTR delay[rip], 2	# delay,
	jmp	.L134	#
.L128:
	mov	eax, DWORD PTR delay[rip]	# D.132418, delay
	cmp	eax, 2	# D.132418,
	jne	.L134	#,
	mov	DWORD PTR delay[rip], 1	# delay,
	jmp	.L134	#
.L125:
	cmp	BYTE PTR [rbp-121], 100	# key,
	jne	.L134	#,
	mov	esi, OFFSET FLAT:.LC14	#,
	mov	edi, OFFSET FLAT:_ZSt4cout	#,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	mov	edx, 30	#,
	mov	esi, OFFSET FLAT:filename	#,
	mov	edi, OFFSET FLAT:_ZSt3cin	#,
	call	_ZNSi7getlineEPcl	#
	movzx	eax, BYTE PTR filename[rip]	# D.132422, filename
	test	al, al	# D.132422
	je	.L134	#,
	mov	edi, OFFSET FLAT:filename	#,
	call	_Z14write_genepoolPc	#
	jmp	.L134	#
.L133:
	mov	rbx, rax	# tmp168,
	lea	rax, [rbp-64]	# tmp166,
	mov	rdi, rax	#, tmp166
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev	#
	jmp	.L130	#
.L132:
	mov	rbx, rax	# tmp167,
.L130:
	lea	rax, [rbp-112]	# tmp171,
	mov	rdi, rax	#, tmp171
	call	_ZNSaIcED1Ev	#
	mov	rax, rbx	# D.132417, tmp167
	mov	rdi, rax	#, D.132417
	call	_Unwind_Resume	#
.LEHE9:
.L134:
	nop
	mov	rax, QWORD PTR [rbp-24]	# tmp173, D.132424
	xor	rax, QWORD PTR fs:40	# tmp173,
	je	.L131	#,
	call	__stack_chk_fail	#
.L131:
	add	rsp, 136	#,
	pop	rbx	#
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8940:
	.section	.gcc_except_table
.LLSDA8940:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8940-.LLSDACSB8940
.LLSDACSB8940:
	.uleb128 .LEHB6-.LFB8940
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB8940
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L132-.LFB8940
	.uleb128 0
	.uleb128 .LEHB8-.LFB8940
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L133-.LFB8940
	.uleb128 0
	.uleb128 .LEHB9-.LFB8940
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSE8940:
	.text
	.size	_Z4drawi, .-_Z4drawi
	.globl	gen
	.bss
	.align 4
	.type	gen, @object
	.size	gen, 4
gen:
	.zero	4
	.section	.text._ZNSt7__cxx114listI3AntSaIS1_EED2Ev,"axG",@progbits,_ZNSt7__cxx114listI3AntSaIS1_EED5Ev,comdat
	.align 2
	.weak	_ZNSt7__cxx114listI3AntSaIS1_EED2Ev
	.type	_ZNSt7__cxx114listI3AntSaIS1_EED2Ev, @function
_ZNSt7__cxx114listI3AntSaIS1_EED2Ev:
.LFB8943:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	rax, QWORD PTR [rbp-8]	# D.132427, this
	mov	rdi, rax	#, D.132427
	call	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EED2Ev	#
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8943:
	.size	_ZNSt7__cxx114listI3AntSaIS1_EED2Ev, .-_ZNSt7__cxx114listI3AntSaIS1_EED2Ev
	.weak	_ZNSt7__cxx114listI3AntSaIS1_EED1Ev
	.set	_ZNSt7__cxx114listI3AntSaIS1_EED1Ev,_ZNSt7__cxx114listI3AntSaIS1_EED2Ev
	.section	.rodata
	.align 8
.LC15:
	.string	"No file name entered, starting new gene pool...\n"
.LC16:
	.string	"New file name: "
.LC17:
	.string	"Start\n"
.LC20:
	.string	"\t"
	.text
	.globl	main
	.type	main, @function
main:
.LFB8941:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA8941
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	sub	rsp, 2776	#,
	.cfi_offset 3, -24
	mov	rax, QWORD PTR fs:40	# tmp230,
	mov	QWORD PTR [rbp-24], rax	# D.132443, tmp230
	xor	eax, eax	# tmp230
	lea	rdx, [rbp-2672]	# tmp134,
	mov	eax, 0	# tmp135,
	mov	ecx, 64	# tmp136,
	mov	rdi, rdx	# tmp134, tmp134
	rep stosq
	mov	esi, OFFSET FLAT:.LC14	#,
	mov	edi, OFFSET FLAT:_ZSt4cout	#,
.LEHB10:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	mov	edx, 30	#,
	mov	esi, OFFSET FLAT:filename	#,
	mov	edi, OFFSET FLAT:_ZSt3cin	#,
	call	_ZNSi7getlineEPcl	#
	mov	BYTE PTR [rbp-2765], 0	# nf,
	movzx	eax, BYTE PTR filename[rip]	# D.132430, filename
	test	al, al	# D.132430
	jne	.L137	#,
	mov	esi, OFFSET FLAT:.LC15	#,
	mov	edi, OFFSET FLAT:_ZSt4cout	#,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	mov	BYTE PTR [rbp-2765], 1	# nf,
	jmp	.L138	#
.L137:
	mov	esi, 4	#,
	mov	edi, 8	#,
	call	_ZStorSt13_Ios_OpenmodeS_	#
	mov	edx, eax	# D.132431,
	lea	rax, [rbp-2160]	# tmp137,
	mov	esi, OFFSET FLAT:filename	#,
	mov	rdi, rax	#, tmp137
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode	#
.LEHE10:
	mov	DWORD PTR [rbp-2764], 0	# a,
.L140:
	cmp	DWORD PTR [rbp-2764], 31	# a,
	jg	.L139	#,
	lea	rdx, [rbp-2672]	# tmp138,
	lea	rax, [rbp-1088]	# tmp139,
	mov	rsi, rdx	#, tmp138
	mov	rdi, rax	#, tmp139
.LEHB11:
	call	_ZN3AntC1EPA8_A8_f	#
	mov	edx, 1060	# D.132432,
	lea	rcx, [rbp-1088]	# tmp140,
	lea	rax, [rbp-2160]	# tmp141,
	mov	rsi, rcx	#, tmp140
	mov	rdi, rax	#, tmp141
	call	_ZNSi4readEPcl	#
	lea	rax, [rbp-1088]	# tmp142,
	mov	rsi, rax	#, tmp142
	mov	edi, OFFSET FLAT:_Z4antsB5cxx11	#,
	call	_ZNSt7__cxx114listI3AntSaIS1_EE9push_backERKS1_	#
	add	DWORD PTR [rbp-2764], 1	# a,
	jmp	.L140	#
.L139:
	lea	rax, [rbp-2160]	# tmp143,
	mov	rdi, rax	#, tmp143
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv	#
.LEHE11:
	lea	rax, [rbp-2160]	# tmp144,
	mov	rdi, rax	#, tmp144
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev	#
.L138:
	mov	edi, 0	#,
	call	time	#
	mov	edi, eax	#, D.132433
	call	srand	#
	cmp	BYTE PTR [rbp-2765], 0	# nf,
	je	.L141	#,
	mov	DWORD PTR [rbp-2760], 0	# i,
.L143:
	cmp	DWORD PTR [rbp-2760], 31	# i,
	jg	.L141	#,
	lea	rdx, [rbp-2672]	# tmp145,
	lea	rax, [rbp-1088]	# tmp146,
	mov	rsi, rdx	#, tmp145
	mov	rdi, rax	#, tmp146
.LEHB12:
	call	_ZN3AntC1EPA8_A8_f	#
	lea	rax, [rbp-1088]	# tmp147,
	mov	rsi, rax	#, tmp147
	mov	edi, OFFSET FLAT:_Z4antsB5cxx11	#,
	call	_ZNSt7__cxx114listI3AntSaIS1_EE9push_backERKS1_	#
	add	DWORD PTR [rbp-2760], 1	# i,
	jmp	.L143	#
.L141:
	cmp	BYTE PTR [rbp-2765], 0	# nf,
	je	.L144	#,
	mov	esi, OFFSET FLAT:.LC16	#,
	mov	edi, OFFSET FLAT:_ZSt4cout	#,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	mov	edx, 30	#,
	mov	esi, OFFSET FLAT:filename	#,
	mov	edi, OFFSET FLAT:_ZSt3cin	#,
	call	_ZNSi7getlineEPcl	#
	movzx	eax, BYTE PTR filename[rip]	# D.132430, filename
	test	al, al	# D.132430
	je	.L144	#,
	mov	edi, OFFSET FLAT:filename	#,
	call	_Z14write_genepoolPc	#
.L144:
	mov	esi, OFFSET FLAT:.LC17	#,
	mov	edi, OFFSET FLAT:_ZSt4cout	#,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
.L158:
	mov	DWORD PTR [rbp-2756], 0	# i,
.L146:
	cmp	DWORD PTR [rbp-2756], 1023	# i,
	jg	.L145	#,
	call	rand	#
	mov	edx, eax	# D.132434,
	mov	eax, DWORD PTR SIZE[rip]	# D.132434, SIZE
	lea	ecx, [rax-1]	# D.132434,
	mov	eax, edx	# tmp149, D.132434
	cdq
	idiv	ecx	# D.132434
	mov	ecx, edx	# D.132434, tmp148
	mov	eax, DWORD PTR [rbp-2756]	# tmp151, i
	movsx	rdx, eax	# tmp150, tmp151
	mov	rax, rdx	# tmp153, tmp150
	add	rax, rax	# tmp153
	add	rax, rdx	# tmp153, tmp150
	sal	rax, 2	# tmp154,
	add	rax, OFFSET FLAT:food	# tmp155,
	mov	DWORD PTR [rax], ecx	# food, D.132434
	call	rand	#
	mov	edx, eax	# D.132434,
	mov	eax, DWORD PTR SIZE[rip+4]	# D.132434, SIZE
	lea	ecx, [rax-1]	# D.132434,
	mov	eax, edx	# tmp157, D.132434
	cdq
	idiv	ecx	# D.132434
	mov	ecx, edx	# D.132434, tmp156
	mov	eax, DWORD PTR [rbp-2756]	# tmp159, i
	movsx	rdx, eax	# tmp158, tmp159
	mov	rax, rdx	# tmp161, tmp158
	add	rax, rax	# tmp161
	add	rax, rdx	# tmp161, tmp158
	sal	rax, 2	# tmp162,
	add	rax, OFFSET FLAT:food+4	# tmp163,
	mov	DWORD PTR [rax], ecx	# food, D.132434
	mov	eax, DWORD PTR [rbp-2756]	# tmp165, i
	movsx	rdx, eax	# tmp164, tmp165
	mov	rax, rdx	# tmp167, tmp164
	add	rax, rax	# tmp167
	add	rax, rdx	# tmp167, tmp164
	sal	rax, 2	# tmp168,
	add	rax, OFFSET FLAT:food+8	# tmp169,
	mov	DWORD PTR [rax], 1	# food,
	add	DWORD PTR [rbp-2756], 1	# i,
	jmp	.L146	#
.L145:
	mov	DWORD PTR [rbp-2752], 0	# tick,
.L152:
	cmp	DWORD PTR [rbp-2752], 999	# tick,
	jg	.L147	#,
	mov	edi, OFFSET FLAT:_Z4antsB5cxx11	#,
	call	_ZNSt7__cxx114listI3AntSaIS1_EE5beginEv	#
	mov	QWORD PTR [rbp-2720], rax	# it, tmp171
.L149:
	mov	edi, OFFSET FLAT:_Z4antsB5cxx11	#,
	call	_ZNSt7__cxx114listI3AntSaIS1_EE3endEv	#
	mov	QWORD PTR [rbp-2704], rax	# D.125017, tmp173
	lea	rdx, [rbp-2704]	# tmp174,
	lea	rax, [rbp-2720]	# tmp175,
	mov	rsi, rdx	#, tmp174
	mov	rdi, rax	#, tmp175
	call	_ZNKSt14_List_iteratorI3AntEneERKS1_	#
	test	al, al	# D.132435
	je	.L148	#,
	lea	rax, [rbp-2720]	# tmp176,
	mov	rdi, rax	#, tmp176
	call	_ZNKSt14_List_iteratorI3AntEdeEv	#
	mov	rdi, rax	#, D.132436
	call	_ZN3Ant6updateEv	#
	lea	rax, [rbp-2720]	# tmp177,
	mov	esi, 0	#,
	mov	rdi, rax	#, tmp177
	call	_ZNSt14_List_iteratorI3AntEppEi	#
	jmp	.L149	#
.L148:
	mov	ecx, DWORD PTR [rbp-2752]	# tmp178, tick
	mov	edx, 1374389535	# tmp180,
	mov	eax, ecx	# tmp231, tmp178
	imul	edx	# tmp180
	sar	edx, 5	# tmp181,
	mov	eax, ecx	# tmp182, tmp178
	sar	eax, 31	# tmp182,
	sub	edx, eax	# D.132434, tmp182
	mov	eax, edx	# D.132434, D.132434
	imul	eax, eax, 100	# tmp183, D.132434,
	sub	ecx, eax	# D.132434, tmp183
	mov	eax, ecx	# D.132434, D.132434
	test	eax, eax	# D.132434
	je	.L150	#,
	mov	eax, DWORD PTR delay[rip]	# D.132434, delay
	cmp	eax, 2	# D.132434,
	je	.L151	#,
.L150:
	mov	eax, DWORD PTR [rbp-2752]	# tmp184, tick
	mov	edi, eax	#, tmp184
	call	_Z4drawi	#
.L151:
	add	DWORD PTR [rbp-2752], 1	# tick,
	jmp	.L152	#
.L147:
	pxor	xmm0, xmm0	# tmp185
	movss	DWORD PTR [rbp-2748], xmm0	# avg, tmp185
	mov	edi, OFFSET FLAT:_Z4antsB5cxx11	#,
	call	_ZNSt7__cxx114listI3AntSaIS1_EE5beginEv	#
	mov	QWORD PTR [rbp-2720], rax	# it, tmp187
.L154:
	mov	edi, OFFSET FLAT:_Z4antsB5cxx11	#,
	call	_ZNSt7__cxx114listI3AntSaIS1_EE3endEv	#
	mov	QWORD PTR [rbp-2704], rax	# D.125022, tmp189
	lea	rdx, [rbp-2704]	# tmp190,
	lea	rax, [rbp-2720]	# tmp191,
	mov	rsi, rdx	#, tmp190
	mov	rdi, rax	#, tmp191
	call	_ZNKSt14_List_iteratorI3AntEneERKS1_	#
	test	al, al	# D.132435
	je	.L153	#,
	lea	rax, [rbp-2720]	# tmp192,
	mov	rdi, rax	#, tmp192
	call	_ZNKSt14_List_iteratorI3AntEdeEv	#
	mov	eax, DWORD PTR [rax+16]	# D.132434, _92->score
	pxor	xmm0, xmm0	# D.132437
	cvtsi2ss	xmm0, eax	# D.132437, D.132434
	movss	xmm1, DWORD PTR .LC18[rip]	# tmp193,
	divss	xmm0, xmm1	# D.132437, tmp193
	movss	xmm1, DWORD PTR [rbp-2748]	# tmp195, avg
	addss	xmm0, xmm1	# tmp194, tmp195
	movss	DWORD PTR [rbp-2748], xmm0	# avg, tmp194
	lea	rax, [rbp-2720]	# tmp196,
	mov	esi, 0	#,
	mov	rdi, rax	#, tmp196
	call	_ZNSt14_List_iteratorI3AntEppEi	#
	jmp	.L154	#
.L153:
	mov	esi, OFFSET FLAT:_Z14compare_scores3AntS_	#,
	mov	edi, OFFSET FLAT:_Z4antsB5cxx11	#,
	call	_ZNSt7__cxx114listI3AntSaIS1_EE4sortIPFbS1_S1_EEEvT_	#
.LEHE12:
	mov	DWORD PTR [rbp-2744], 0	# c,
	pxor	xmm0, xmm0	# tmp197
	movss	DWORD PTR [rbp-2740], xmm0	# uavg, tmp197
	lea	rax, [rbp-2704]	# tmp198,
	mov	rdi, rax	#, tmp198
	call	_ZNSt7__cxx114listI3AntSaIS1_EEC1Ev	#
	mov	edi, OFFSET FLAT:_Z4antsB5cxx11	#,
	call	_ZNSt7__cxx114listI3AntSaIS1_EE5beginEv	#
	mov	QWORD PTR [rbp-2736], rax	# it, tmp200
.L157:
	mov	edi, OFFSET FLAT:_Z4antsB5cxx11	#,
	call	_ZNSt7__cxx114listI3AntSaIS1_EE3endEv	#
	mov	QWORD PTR [rbp-2720], rax	# D.125049, tmp202
	lea	rdx, [rbp-2720]	# tmp203,
	lea	rax, [rbp-2736]	# tmp204,
	mov	rsi, rdx	#, tmp203
	mov	rdi, rax	#, tmp204
	call	_ZNKSt14_List_iteratorI3AntEneERKS1_	#
	test	al, al	# D.132435
	je	.L155	#,
	cmp	DWORD PTR [rbp-2744], 16	# c,
	je	.L166	#,
	lea	rax, [rbp-2736]	# tmp205,
	mov	rdi, rax	#, tmp205
	call	_ZNKSt14_List_iteratorI3AntEptEv	#
	mov	eax, DWORD PTR [rax+16]	# D.132434, _109->score
	pxor	xmm0, xmm0	# D.132437
	cvtsi2ss	xmm0, eax	# D.132437, D.132434
	movss	xmm1, DWORD PTR .LC19[rip]	# tmp206,
	divss	xmm0, xmm1	# D.132437, tmp206
	movss	xmm1, DWORD PTR [rbp-2740]	# tmp208, uavg
	addss	xmm0, xmm1	# tmp207, tmp208
	movss	DWORD PTR [rbp-2740], xmm0	# uavg, tmp207
	lea	rax, [rbp-2736]	# tmp209,
	mov	rdi, rax	#, tmp209
	call	_ZNKSt14_List_iteratorI3AntEdeEv	#
	lea	rdx, [rax+36]	# D.132439,
	lea	rax, [rbp-2160]	# tmp210,
	mov	rsi, rdx	#, D.132439
	mov	rdi, rax	#, tmp210
.LEHB13:
	call	_ZN3AntC1EPA8_A8_f	#
	lea	rax, [rbp-2736]	# tmp211,
	mov	rdi, rax	#, tmp211
	call	_ZNKSt14_List_iteratorI3AntEdeEv	#
	lea	rdx, [rax+36]	# D.132439,
	lea	rax, [rbp-1088]	# tmp212,
	mov	rsi, rdx	#, D.132439
	mov	rdi, rax	#, tmp212
	call	_ZN3AntC1EPA8_A8_f	#
	lea	rdx, [rbp-2160]	# tmp213,
	lea	rax, [rbp-2704]	# tmp214,
	mov	rsi, rdx	#, tmp213
	mov	rdi, rax	#, tmp214
	call	_ZNSt7__cxx114listI3AntSaIS1_EE9push_backERKS1_	#
	lea	rdx, [rbp-1088]	# tmp215,
	lea	rax, [rbp-2704]	# tmp216,
	mov	rsi, rdx	#, tmp215
	mov	rdi, rax	#, tmp216
	call	_ZNSt7__cxx114listI3AntSaIS1_EE9push_backERKS1_	#
.LEHE13:
	add	DWORD PTR [rbp-2744], 1	# c,
	lea	rax, [rbp-2736]	# tmp217,
	mov	esi, 0	#,
	mov	rdi, rax	#, tmp217
	call	_ZNSt14_List_iteratorI3AntEppEi	#
	jmp	.L157	#
.L166:
	nop
.L155:
	lea	rax, [rbp-2704]	# tmp218,
	mov	rsi, rax	#, tmp218
	mov	edi, OFFSET FLAT:_Z4antsB5cxx11	#,
.LEHB14:
	call	_ZNSt7__cxx114listI3AntSaIS1_EEaSERKS3_	#
	mov	eax, DWORD PTR gen[rip]	# D.132434, gen
	mov	esi, eax	#, D.132434
	mov	edi, OFFSET FLAT:_ZSt4cout	#,
	call	_ZNSolsEi	#
	mov	esi, OFFSET FLAT:.LC20	#,
	mov	rdi, rax	#, D.132440
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	mov	rdx, rax	# D.132440,
	mov	eax, DWORD PTR [rbp-2748]	# tmp219, avg
	mov	DWORD PTR [rbp-2772], eax	# %sfp, tmp219
	movss	xmm0, DWORD PTR [rbp-2772]	#, %sfp
	mov	rdi, rdx	#, D.132440
	call	_ZNSolsEf	#
	mov	esi, OFFSET FLAT:.LC20	#,
	mov	rdi, rax	#, D.132441
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	mov	rdx, rax	# D.132440,
	mov	eax, DWORD PTR [rbp-2740]	# tmp220, uavg
	mov	DWORD PTR [rbp-2772], eax	# %sfp, tmp220
	movss	xmm0, DWORD PTR [rbp-2772]	#, %sfp
	mov	rdi, rdx	#, D.132440
	call	_ZNSolsEf	#
	mov	esi, OFFSET FLAT:.LC11	#,
	mov	rdi, rax	#, D.132441
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	movss	xmm0, DWORD PTR .LC7[rip]	# tmp221,
	subss	xmm0, DWORD PTR [rbp-2748]	# D.132437, avg
	movss	DWORD PTR error[rip], xmm0	# error, D.132437
	mov	edi, OFFSET FLAT:filename	#,
	call	_Z14write_genepoolPc	#
.LEHE14:
	mov	eax, DWORD PTR gen[rip]	# D.132434, gen
	add	eax, 1	# D.132434,
	mov	DWORD PTR gen[rip], eax	# gen, D.132434
	lea	rax, [rbp-2704]	# tmp222,
	mov	rdi, rax	#, tmp222
	call	_ZNSt7__cxx114listI3AntSaIS1_EED1Ev	#
	jmp	.L158	#
.L163:
	mov	rbx, rax	# tmp224,
	lea	rax, [rbp-2160]	# tmp223,
	mov	rdi, rax	#, tmp223
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev	#
	mov	rax, rbx	# D.132428, tmp224
	mov	rdi, rax	#, D.132428
.LEHB15:
	call	_Unwind_Resume	#
.L164:
	mov	rbx, rax	# tmp225, tmp226
	jmp	.L161	#
.L165:
	mov	rbx, rax	# tmp225,
.L161:
	lea	rax, [rbp-2704]	# tmp229,
	mov	rdi, rax	#, tmp229
	call	_ZNSt7__cxx114listI3AntSaIS1_EED1Ev	#
	mov	rax, rbx	# D.132429, tmp225
	mov	rdi, rax	#, D.132429
	call	_Unwind_Resume	#
.LEHE15:
	.cfi_endproc
.LFE8941:
	.section	.gcc_except_table
.LLSDA8941:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8941-.LLSDACSB8941
.LLSDACSB8941:
	.uleb128 .LEHB10-.LFB8941
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB8941
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L163-.LFB8941
	.uleb128 0
	.uleb128 .LEHB12-.LFB8941
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB13-.LFB8941
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L164-.LFB8941
	.uleb128 0
	.uleb128 .LEHB14-.LFB8941
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L165-.LFB8941
	.uleb128 0
	.uleb128 .LEHB15-.LFB8941
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSE8941:
	.text
	.size	main, .-main
	.section	.text._ZN2cv6Point_IiEC2Eii,"axG",@progbits,_ZN2cv6Point_IiEC5Eii,comdat
	.align 2
	.weak	_ZN2cv6Point_IiEC2Eii
	.type	_ZN2cv6Point_IiEC2Eii, @function
_ZN2cv6Point_IiEC2Eii:
.LFB9113:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	DWORD PTR [rbp-12], esi	# _x, _x
	mov	DWORD PTR [rbp-16], edx	# _y, _y
	mov	rax, QWORD PTR [rbp-8]	# tmp87, this
	mov	edx, DWORD PTR [rbp-12]	# tmp88, _x
	mov	DWORD PTR [rax], edx	# this_2(D)->x, tmp88
	mov	rax, QWORD PTR [rbp-8]	# tmp89, this
	mov	edx, DWORD PTR [rbp-16]	# tmp90, _y
	mov	DWORD PTR [rax+4], edx	# this_2(D)->y, tmp90
	nop
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9113:
	.size	_ZN2cv6Point_IiEC2Eii, .-_ZN2cv6Point_IiEC2Eii
	.weak	_ZN2cv6Point_IiEC1Eii
	.set	_ZN2cv6Point_IiEC1Eii,_ZN2cv6Point_IiEC2Eii
	.section	.text._ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EEC2Em,"axG",@progbits,_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EEC5Em,comdat
	.align 2
	.weak	_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EEC2Em
	.type	_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EEC2Em, @function
_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EEC2Em:
.LFB9145:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	QWORD PTR [rbp-16], rsi	# __s, __s
	mov	rdx, QWORD PTR [rbp-16]	# tmp87, __s
	mov	rax, QWORD PTR [rbp-8]	# tmp88, this
	mov	rsi, rdx	#, tmp87
	mov	rdi, rax	#, tmp88
	call	_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE4seedEm	#
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9145:
	.size	_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EEC2Em, .-_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EEC2Em
	.weak	_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EEC1Em
	.set	_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EEC1Em,_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EEC2Em
	.section	.text._ZNSt19normal_distributionIfEC2Eff,"axG",@progbits,_ZNSt19normal_distributionIfEC5Eff,comdat
	.align 2
	.weak	_ZNSt19normal_distributionIfEC2Eff
	.type	_ZNSt19normal_distributionIfEC2Eff, @function
_ZNSt19normal_distributionIfEC2Eff:
.LFB9148:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR [rbp-8], rdi	# this, this
	movss	DWORD PTR [rbp-12], xmm0	# __mean, __mean
	movss	DWORD PTR [rbp-16], xmm1	# __stddev, __stddev
	mov	rax, QWORD PTR [rbp-8]	# D.132448, this
	movss	xmm0, DWORD PTR [rbp-16]	# tmp88, __stddev
	mov	edx, DWORD PTR [rbp-12]	# tmp89, __mean
	movaps	xmm1, xmm0	#, tmp88
	mov	DWORD PTR [rbp-20], edx	# %sfp, tmp89
	movss	xmm0, DWORD PTR [rbp-20]	#, %sfp
	mov	rdi, rax	#, D.132448
	call	_ZNSt19normal_distributionIfE10param_typeC1Eff	#
	mov	rax, QWORD PTR [rbp-8]	# tmp90, this
	mov	BYTE PTR [rax+12], 0	# this_1(D)->_M_saved_available,
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9148:
	.size	_ZNSt19normal_distributionIfEC2Eff, .-_ZNSt19normal_distributionIfEC2Eff
	.weak	_ZNSt19normal_distributionIfEC1Eff
	.set	_ZNSt19normal_distributionIfEC1Eff,_ZNSt19normal_distributionIfEC2Eff
	.section	.text._ZNSt19normal_distributionIfEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEfRT_,"axG",@progbits,_ZNSt19normal_distributionIfEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEfRT_,comdat
	.align 2
	.weak	_ZNSt19normal_distributionIfEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEfRT_
	.type	_ZNSt19normal_distributionIfEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEfRT_, @function
_ZNSt19normal_distributionIfEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEfRT_:
.LFB9150:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	QWORD PTR [rbp-16], rsi	# __urng, __urng
	mov	rdx, QWORD PTR [rbp-8]	# D.132449, this
	mov	rcx, QWORD PTR [rbp-16]	# tmp90, __urng
	mov	rax, QWORD PTR [rbp-8]	# tmp91, this
	mov	rsi, rcx	#, tmp90
	mov	rdi, rax	#, tmp91
	call	_ZNSt19normal_distributionIfEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEfRT_RKNS0_10param_typeE	#
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9150:
	.size	_ZNSt19normal_distributionIfEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEfRT_, .-_ZNSt19normal_distributionIfEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEfRT_
	.section	.text._ZN2cv7Scalar_IdEC2Edddd,"axG",@progbits,_ZN2cv7Scalar_IdEC5Edddd,comdat
	.align 2
	.weak	_ZN2cv7Scalar_IdEC2Edddd
	.type	_ZN2cv7Scalar_IdEC2Edddd, @function
_ZN2cv7Scalar_IdEC2Edddd:
.LFB9152:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	QWORD PTR [rbp-8], rdi	# this, this
	movsd	QWORD PTR [rbp-16], xmm0	# v0, v0
	movsd	QWORD PTR [rbp-24], xmm1	# v1, v1
	movsd	QWORD PTR [rbp-32], xmm2	# v2, v2
	movsd	QWORD PTR [rbp-40], xmm3	# v3, v3
	mov	rax, QWORD PTR [rbp-8]	# D.132451, this
	mov	rdi, rax	#, D.132451
	call	_ZN2cv3VecIdLi4EEC2Ev	#
	mov	rax, QWORD PTR [rbp-8]	# tmp88, this
	movsd	xmm0, QWORD PTR [rbp-16]	# tmp89, v0
	movsd	QWORD PTR [rax], xmm0	# this_1(D)->D.92501.D.92437.val, tmp89
	mov	rax, QWORD PTR [rbp-8]	# tmp90, this
	movsd	xmm0, QWORD PTR [rbp-24]	# tmp91, v1
	movsd	QWORD PTR [rax+8], xmm0	# this_1(D)->D.92501.D.92437.val, tmp91
	mov	rax, QWORD PTR [rbp-8]	# tmp92, this
	movsd	xmm0, QWORD PTR [rbp-32]	# tmp93, v2
	movsd	QWORD PTR [rax+16], xmm0	# this_1(D)->D.92501.D.92437.val, tmp93
	mov	rax, QWORD PTR [rbp-8]	# tmp94, this
	movsd	xmm0, QWORD PTR [rbp-40]	# tmp95, v3
	movsd	QWORD PTR [rax+24], xmm0	# this_1(D)->D.92501.D.92437.val, tmp95
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9152:
	.size	_ZN2cv7Scalar_IdEC2Edddd, .-_ZN2cv7Scalar_IdEC2Edddd
	.weak	_ZN2cv7Scalar_IdEC1Edddd
	.set	_ZN2cv7Scalar_IdEC1Edddd,_ZN2cv7Scalar_IdEC2Edddd
	.section	.text._ZNSt7__cxx114listI3AntSaIS1_EEC2Ev,"axG",@progbits,_ZNSt7__cxx114listI3AntSaIS1_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt7__cxx114listI3AntSaIS1_EEC2Ev
	.type	_ZNSt7__cxx114listI3AntSaIS1_EEC2Ev, @function
_ZNSt7__cxx114listI3AntSaIS1_EEC2Ev:
.LFB9155:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA9155
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	rax, QWORD PTR [rbp-8]	# D.132452, this
	mov	rdi, rax	#, D.132452
	call	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EEC2Ev	#
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9155:
	.section	.gcc_except_table
.LLSDA9155:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9155-.LLSDACSB9155
.LLSDACSB9155:
.LLSDACSE9155:
	.section	.text._ZNSt7__cxx114listI3AntSaIS1_EEC2Ev,"axG",@progbits,_ZNSt7__cxx114listI3AntSaIS1_EEC5Ev,comdat
	.size	_ZNSt7__cxx114listI3AntSaIS1_EEC2Ev, .-_ZNSt7__cxx114listI3AntSaIS1_EEC2Ev
	.weak	_ZNSt7__cxx114listI3AntSaIS1_EEC1Ev
	.set	_ZNSt7__cxx114listI3AntSaIS1_EEC1Ev,_ZNSt7__cxx114listI3AntSaIS1_EEC2Ev
	.section	.text._ZNSt7__cxx114listI3AntSaIS1_EE5beginEv,"axG",@progbits,_ZNSt7__cxx114listI3AntSaIS1_EE5beginEv,comdat
	.align 2
	.weak	_ZNSt7__cxx114listI3AntSaIS1_EE5beginEv
	.type	_ZNSt7__cxx114listI3AntSaIS1_EE5beginEv, @function
_ZNSt7__cxx114listI3AntSaIS1_EE5beginEv:
.LFB9164:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR [rbp-24], rdi	# this, this
	mov	rax, QWORD PTR fs:40	# tmp93,
	mov	QWORD PTR [rbp-8], rax	# D.132454, tmp93
	xor	eax, eax	# tmp93
	mov	rax, QWORD PTR [rbp-24]	# tmp90, this
	mov	rdx, QWORD PTR [rax]	# D.132453, this_2(D)->D.123817._M_impl._M_node.D.69288._M_next
	lea	rax, [rbp-16]	# tmp91,
	mov	rsi, rdx	#, D.132453
	mov	rdi, rax	#, tmp91
	call	_ZNSt14_List_iteratorI3AntEC1EPNSt8__detail15_List_node_baseE	#
	mov	rax, QWORD PTR [rbp-16]	# D.131218, D.126480
	mov	rcx, QWORD PTR [rbp-8]	# tmp94, D.132454
	xor	rcx, QWORD PTR fs:40	# tmp94,
	je	.L176	#,
	call	__stack_chk_fail	#
.L176:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9164:
	.size	_ZNSt7__cxx114listI3AntSaIS1_EE5beginEv, .-_ZNSt7__cxx114listI3AntSaIS1_EE5beginEv
	.section	.text._ZNSt7__cxx114listI3AntSaIS1_EE3endEv,"axG",@progbits,_ZNSt7__cxx114listI3AntSaIS1_EE3endEv,comdat
	.align 2
	.weak	_ZNSt7__cxx114listI3AntSaIS1_EE3endEv
	.type	_ZNSt7__cxx114listI3AntSaIS1_EE3endEv, @function
_ZNSt7__cxx114listI3AntSaIS1_EE3endEv:
.LFB9165:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR [rbp-24], rdi	# this, this
	mov	rax, QWORD PTR fs:40	# tmp92,
	mov	QWORD PTR [rbp-8], rax	# D.132456, tmp92
	xor	eax, eax	# tmp92
	mov	rdx, QWORD PTR [rbp-24]	# D.132455, this
	lea	rax, [rbp-16]	# tmp90,
	mov	rsi, rdx	#, D.132455
	mov	rdi, rax	#, tmp90
	call	_ZNSt14_List_iteratorI3AntEC1EPNSt8__detail15_List_node_baseE	#
	mov	rax, QWORD PTR [rbp-16]	# D.131222, D.126482
	mov	rcx, QWORD PTR [rbp-8]	# tmp93, D.132456
	xor	rcx, QWORD PTR fs:40	# tmp93,
	je	.L179	#,
	call	__stack_chk_fail	#
.L179:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9165:
	.size	_ZNSt7__cxx114listI3AntSaIS1_EE3endEv, .-_ZNSt7__cxx114listI3AntSaIS1_EE3endEv
	.section	.text._ZNKSt14_List_iteratorI3AntEneERKS1_,"axG",@progbits,_ZNKSt14_List_iteratorI3AntEneERKS1_,comdat
	.align 2
	.weak	_ZNKSt14_List_iteratorI3AntEneERKS1_
	.type	_ZNKSt14_List_iteratorI3AntEneERKS1_, @function
_ZNKSt14_List_iteratorI3AntEneERKS1_:
.LFB9166:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	QWORD PTR [rbp-16], rsi	# __x, __x
	mov	rax, QWORD PTR [rbp-8]	# tmp91, this
	mov	rdx, QWORD PTR [rax]	# D.132457, this_2(D)->_M_node
	mov	rax, QWORD PTR [rbp-16]	# tmp92, __x
	mov	rax, QWORD PTR [rax]	# D.132457, __x_4(D)->_M_node
	cmp	rdx, rax	# D.132457, D.132457
	setne	al	#, D.132458
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9166:
	.size	_ZNKSt14_List_iteratorI3AntEneERKS1_, .-_ZNKSt14_List_iteratorI3AntEneERKS1_
	.section	.text._ZNSt14_List_iteratorI3AntEppEi,"axG",@progbits,_ZNSt14_List_iteratorI3AntEppEi,comdat
	.align 2
	.weak	_ZNSt14_List_iteratorI3AntEppEi
	.type	_ZNSt14_List_iteratorI3AntEppEi, @function
_ZNSt14_List_iteratorI3AntEppEi:
.LFB9167:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR [rbp-24], rdi	# this, this
	mov	DWORD PTR [rbp-28], esi	# D.123900, D.123900
	mov	rax, QWORD PTR fs:40	# tmp96,
	mov	QWORD PTR [rbp-8], rax	# D.132460, tmp96
	xor	eax, eax	# tmp96
	mov	rax, QWORD PTR [rbp-24]	# tmp91, this
	mov	rax, QWORD PTR [rax]	# tmp92, MEM[(const struct _List_iterator &)this_2(D)]
	mov	QWORD PTR [rbp-16], rax	# __tmp, tmp92
	mov	rax, QWORD PTR [rbp-24]	# tmp93, this
	mov	rax, QWORD PTR [rax]	# D.132459, this_2(D)->_M_node
	mov	rdx, QWORD PTR [rax]	# D.132459, _4->_M_next
	mov	rax, QWORD PTR [rbp-24]	# tmp94, this
	mov	QWORD PTR [rax], rdx	# this_2(D)->_M_node, D.132459
	mov	rax, QWORD PTR [rbp-16]	# D.131235, __tmp
	mov	rcx, QWORD PTR [rbp-8]	# tmp97, D.132460
	xor	rcx, QWORD PTR fs:40	# tmp97,
	je	.L184	#,
	call	__stack_chk_fail	#
.L184:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9167:
	.size	_ZNSt14_List_iteratorI3AntEppEi, .-_ZNSt14_List_iteratorI3AntEppEi
	.section	.text._ZNKSt14_List_iteratorI3AntEdeEv,"axG",@progbits,_ZNKSt14_List_iteratorI3AntEdeEv,comdat
	.align 2
	.weak	_ZNKSt14_List_iteratorI3AntEdeEv
	.type	_ZNKSt14_List_iteratorI3AntEdeEv, @function
_ZNKSt14_List_iteratorI3AntEdeEv:
.LFB9168:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	rax, QWORD PTR [rbp-8]	# tmp90, this
	mov	rax, QWORD PTR [rax]	# D.132461, this_2(D)->_M_node
	add	rax, 16	# D.132462,
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9168:
	.size	_ZNKSt14_List_iteratorI3AntEdeEv, .-_ZNKSt14_List_iteratorI3AntEdeEv
	.section	.text._ZN2cv3Mat2atINS_3VecIhLi3EEEEERT_NS_6Point_IiEE,"axG",@progbits,_ZN2cv3Mat2atINS_3VecIhLi3EEEEERT_NS_6Point_IiEE,comdat
	.align 2
	.weak	_ZN2cv3Mat2atINS_3VecIhLi3EEEEERT_NS_6Point_IiEE
	.type	_ZN2cv3Mat2atINS_3VecIhLi3EEEEERT_NS_6Point_IiEE, @function
_ZN2cv3Mat2atINS_3VecIhLi3EEEEERT_NS_6Point_IiEE:
.LFB9172:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	QWORD PTR [rbp-16], rsi	# pt, pt
	mov	rax, QWORD PTR [rbp-8]	# tmp99, this
	mov	rcx, QWORD PTR [rax+16]	# D.132463, this_2(D)->data
	mov	rax, QWORD PTR [rbp-8]	# tmp100, this
	mov	rax, QWORD PTR [rax+72]	# D.132464, this_2(D)->step.p
	mov	rdx, QWORD PTR [rax]	# D.132465, *_4
	mov	rax, QWORD PTR [rbp-16]	# tmp101, pt
	mov	eax, DWORD PTR [rax+4]	# D.132466, pt_6(D)->y
	cdqe
	mov	rsi, rdx	# D.132465, D.132465
	imul	rsi, rax	# D.132465, D.132465
	mov	rax, QWORD PTR [rbp-16]	# tmp102, pt
	mov	eax, DWORD PTR [rax]	# D.132466, pt_6(D)->x
	movsx	rdx, eax	# D.132465, D.132466
	mov	rax, rdx	# tmp103, D.132465
	add	rax, rax	# tmp103
	add	rax, rdx	# D.132465, D.132465
	add	rax, rsi	# D.132467, D.132465
	add	rax, rcx	# D.132468, D.132463
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9172:
	.size	_ZN2cv3Mat2atINS_3VecIhLi3EEEEERT_NS_6Point_IiEE, .-_ZN2cv3Mat2atINS_3VecIhLi3EEEEERT_NS_6Point_IiEE
	.section	.text._ZN2cv3VecIhLi3EEC2Ehhh,"axG",@progbits,_ZN2cv3VecIhLi3EEC5Ehhh,comdat
	.align 2
	.weak	_ZN2cv3VecIhLi3EEC2Ehhh
	.type	_ZN2cv3VecIhLi3EEC2Ehhh, @function
_ZN2cv3VecIhLi3EEC2Ehhh:
.LFB9174:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	eax, ecx	# tmp93, v2
	mov	BYTE PTR [rbp-12], sil	# v0, tmp91
	mov	BYTE PTR [rbp-16], dl	# v1, tmp92
	mov	BYTE PTR [rbp-20], al	# v2, tmp93
	movzx	ecx, BYTE PTR [rbp-20]	# D.132469, v2
	movzx	edx, BYTE PTR [rbp-16]	# D.132469, v1
	movzx	esi, BYTE PTR [rbp-12]	# D.132469, v0
	mov	rax, QWORD PTR [rbp-8]	# D.132470, this
	mov	rdi, rax	#, D.132470
	call	_ZN2cv4MatxIhLi3ELi1EEC2Ehhh	#
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9174:
	.size	_ZN2cv3VecIhLi3EEC2Ehhh, .-_ZN2cv3VecIhLi3EEC2Ehhh
	.weak	_ZN2cv3VecIhLi3EEC1Ehhh
	.set	_ZN2cv3VecIhLi3EEC1Ehhh,_ZN2cv3VecIhLi3EEC2Ehhh
	.section	.text._ZNSt7__cxx114listI3AntSaIS1_EE9push_backERKS1_,"axG",@progbits,_ZNSt7__cxx114listI3AntSaIS1_EE9push_backERKS1_,comdat
	.align 2
	.weak	_ZNSt7__cxx114listI3AntSaIS1_EE9push_backERKS1_
	.type	_ZNSt7__cxx114listI3AntSaIS1_EE9push_backERKS1_, @function
_ZNSt7__cxx114listI3AntSaIS1_EE9push_backERKS1_:
.LFB9184:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	QWORD PTR [rbp-16], rsi	# __x, __x
	mov	rax, QWORD PTR [rbp-8]	# tmp88, this
	mov	rdi, rax	#, tmp88
	call	_ZNSt7__cxx114listI3AntSaIS1_EE3endEv	#
	mov	rcx, rax	# D.131952,
	mov	rdx, QWORD PTR [rbp-16]	# tmp89, __x
	mov	rax, QWORD PTR [rbp-8]	# tmp90, this
	mov	rsi, rcx	#, D.131952
	mov	rdi, rax	#, tmp90
	call	_ZNSt7__cxx114listI3AntSaIS1_EE9_M_insertIJRKS1_EEEvSt14_List_iteratorIS1_EDpOT_	#
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9184:
	.size	_ZNSt7__cxx114listI3AntSaIS1_EE9push_backERKS1_, .-_ZNSt7__cxx114listI3AntSaIS1_EE9push_backERKS1_
	.section	.text._ZNSt7__cxx114listI3AntSaIS1_EE4sortIPFbS1_S1_EEEvT_,"axG",@progbits,_ZNSt7__cxx114listI3AntSaIS1_EE4sortIPFbS1_S1_EEEvT_,comdat
	.align 2
	.weak	_ZNSt7__cxx114listI3AntSaIS1_EE4sortIPFbS1_S1_EEEvT_
	.type	_ZNSt7__cxx114listI3AntSaIS1_EE4sortIPFbS1_S1_EEEvT_, @function
_ZNSt7__cxx114listI3AntSaIS1_EE4sortIPFbS1_S1_EEEvT_:
.LFB9186:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA9186
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	r12	#
	push	rbx	#
	sub	rsp, 1680	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	mov	QWORD PTR [rbp-1688], rdi	# this, this
	mov	QWORD PTR [rbp-1696], rsi	# __comp, __comp
	mov	rax, QWORD PTR fs:40	# tmp151,
	mov	QWORD PTR [rbp-24], rax	# D.132476, tmp151
	xor	eax, eax	# tmp151
	mov	rax, QWORD PTR [rbp-1688]	# tmp105, this
	mov	rdx, QWORD PTR [rax]	# D.132475, this_21(D)->D.123817._M_impl._M_node.D.69288._M_next
	mov	rax, QWORD PTR [rbp-1688]	# D.132475, this
	cmp	rdx, rax	# D.132475, D.132475
	je	.L211	#,
	mov	rax, QWORD PTR [rbp-1688]	# tmp106, this
	mov	rax, QWORD PTR [rax]	# D.132475, this_21(D)->D.123817._M_impl._M_node.D.69288._M_next
	mov	rdx, QWORD PTR [rax]	# D.132475, _24->_M_next
	mov	rax, QWORD PTR [rbp-1688]	# D.132475, this
	cmp	rdx, rax	# D.132475, D.132475
	je	.L211	#,
	lea	rax, [rbp-1600]	# tmp107,
	mov	rdi, rax	#, tmp107
	call	_ZNSt7__cxx114listI3AntSaIS1_EEC1Ev	#
	lea	rax, [rbp-1568]	# D.132472,
	mov	ebx, 63	# D.132473,
	mov	r12, rax	# D.132472, D.132472
.L194:
	cmp	rbx, -1	# D.132473,
	je	.L193	#,
	mov	rdi, r12	#, D.132472
	call	_ZNSt7__cxx114listI3AntSaIS1_EEC1Ev	#
	add	r12, 24	# D.132472,
	sub	rbx, 1	# D.132473,
	jmp	.L194	#
.L193:
	lea	rax, [rbp-1568]	# tmp108,
	mov	QWORD PTR [rbp-1616], rax	# __fill, tmp108
.L201:
	mov	rax, QWORD PTR [rbp-1688]	# tmp109, this
	mov	rdi, rax	#, tmp109
	call	_ZNSt7__cxx114listI3AntSaIS1_EE5beginEv	#
	mov	QWORD PTR [rbp-1664], rax	# D.126559, tmp111
	lea	rdx, [rbp-1664]	# tmp112,
	lea	rax, [rbp-1632]	# tmp113,
	mov	rsi, rdx	#, tmp112
	mov	rdi, rax	#, tmp113
	call	_ZNSt20_List_const_iteratorI3AntEC1ERKSt14_List_iteratorIS0_E	#
	lea	rax, [rbp-1600]	# tmp114,
	mov	rdi, rax	#, tmp114
	call	_ZNSt7__cxx114listI3AntSaIS1_EE5beginEv	#
	mov	QWORD PTR [rbp-1680], rax	# D.126558, tmp116
	lea	rdx, [rbp-1680]	# tmp117,
	lea	rax, [rbp-1648]	# tmp118,
	mov	rsi, rdx	#, tmp117
	mov	rdi, rax	#, tmp118
	call	_ZNSt20_List_const_iteratorI3AntEC1ERKSt14_List_iteratorIS0_E	#
	mov	rcx, QWORD PTR [rbp-1632]	# tmp119, D.126645
	mov	rdx, QWORD PTR [rbp-1688]	# tmp120, this
	mov	rsi, QWORD PTR [rbp-1648]	# tmp121, D.126635
	lea	rax, [rbp-1600]	# tmp122,
	mov	rdi, rax	#, tmp122
	call	_ZNSt7__cxx114listI3AntSaIS1_EE6spliceESt20_List_const_iteratorIS1_ERS3_S5_	#
	lea	rax, [rbp-1568]	# tmp123,
	mov	QWORD PTR [rbp-1608], rax	# __counter, tmp123
.L198:
	mov	rax, QWORD PTR [rbp-1608]	# tmp124, __counter
	cmp	rax, QWORD PTR [rbp-1616]	# tmp124, __fill
	je	.L195	#,
	mov	rax, QWORD PTR [rbp-1608]	# tmp125, __counter
	mov	rdi, rax	#, tmp125
	call	_ZNKSt7__cxx114listI3AntSaIS1_EE5emptyEv	#
	xor	eax, 1	# D.132474,
	test	al, al	# D.132474
	je	.L195	#,
	mov	eax, 1	# D.132474,
	jmp	.L196	#
.L195:
	mov	eax, 0	# D.132474,
.L196:
	test	al, al	# D.132474
	je	.L197	#,
	mov	rdx, QWORD PTR [rbp-1696]	# tmp126, __comp
	lea	rcx, [rbp-1600]	# tmp127,
	mov	rax, QWORD PTR [rbp-1608]	# tmp128, __counter
	mov	rsi, rcx	#, tmp127
	mov	rdi, rax	#, tmp128
.LEHB16:
	call	_ZNSt7__cxx114listI3AntSaIS1_EE5mergeIPFbS1_S1_EEEvRS3_T_	#
	mov	rdx, QWORD PTR [rbp-1608]	# tmp129, __counter
	lea	rax, [rbp-1600]	# tmp130,
	mov	rsi, rdx	#, tmp129
	mov	rdi, rax	#, tmp130
	call	_ZNSt7__cxx114listI3AntSaIS1_EE4swapERS3_	#
	add	QWORD PTR [rbp-1608], 24	# __counter,
	jmp	.L198	#
.L197:
	mov	rdx, QWORD PTR [rbp-1608]	# tmp131, __counter
	lea	rax, [rbp-1600]	# tmp132,
	mov	rsi, rdx	#, tmp131
	mov	rdi, rax	#, tmp132
	call	_ZNSt7__cxx114listI3AntSaIS1_EE4swapERS3_	#
	mov	rax, QWORD PTR [rbp-1608]	# tmp133, __counter
	cmp	rax, QWORD PTR [rbp-1616]	# tmp133, __fill
	jne	.L199	#,
	add	QWORD PTR [rbp-1616], 24	# __fill,
.L199:
	mov	rax, QWORD PTR [rbp-1688]	# tmp134, this
	mov	rdi, rax	#, tmp134
	call	_ZNKSt7__cxx114listI3AntSaIS1_EE5emptyEv	#
	xor	eax, 1	# D.132474,
	test	al, al	# D.132474
	je	.L200	#,
	jmp	.L201	#
.L200:
	lea	rax, [rbp-1568]	# tmp135,
	add	rax, 24	# tmp136,
	mov	QWORD PTR [rbp-1608], rax	# __counter, tmp136
.L203:
	mov	rax, QWORD PTR [rbp-1608]	# tmp137, __counter
	cmp	rax, QWORD PTR [rbp-1616]	# tmp137, __fill
	je	.L202	#,
	mov	rax, QWORD PTR [rbp-1608]	# tmp138, __counter
	lea	rcx, [rax-24]	# D.132472,
	mov	rdx, QWORD PTR [rbp-1696]	# tmp139, __comp
	mov	rax, QWORD PTR [rbp-1608]	# tmp140, __counter
	mov	rsi, rcx	#, D.132472
	mov	rdi, rax	#, tmp140
	call	_ZNSt7__cxx114listI3AntSaIS1_EE5mergeIPFbS1_S1_EEEvRS3_T_	#
	add	QWORD PTR [rbp-1608], 24	# __counter,
	jmp	.L203	#
.L202:
	mov	rax, QWORD PTR [rbp-1616]	# tmp141, __fill
	lea	rdx, [rax-24]	# D.132472,
	mov	rax, QWORD PTR [rbp-1688]	# tmp142, this
	mov	rsi, rdx	#, D.132472
	mov	rdi, rax	#, tmp142
	call	_ZNSt7__cxx114listI3AntSaIS1_EE4swapERS3_	#
.LEHE16:
	lea	rbx, [rbp-1568]	# D.132472,
	add	rbx, 1536	# D.132472,
.L205:
	lea	rax, [rbp-1568]	# tmp143,
	cmp	rbx, rax	# D.132472, tmp143
	je	.L204	#,
	sub	rbx, 24	# D.132472,
	mov	rdi, rbx	#, D.132472
	call	_ZNSt7__cxx114listI3AntSaIS1_EED1Ev	#
	jmp	.L205	#
.L204:
	lea	rax, [rbp-1600]	# tmp144,
	mov	rdi, rax	#, tmp144
	call	_ZNSt7__cxx114listI3AntSaIS1_EED1Ev	#
	jmp	.L211	#
.L210:
	mov	r12, rax	# tmp147,
	lea	rbx, [rbp-1568]	# D.132472,
	add	rbx, 1536	# D.132472,
.L208:
	lea	rax, [rbp-1568]	# tmp145,
	cmp	rbx, rax	# D.132472, tmp145
	je	.L207	#,
	sub	rbx, 24	# D.132472,
	mov	rdi, rbx	#, D.132472
	call	_ZNSt7__cxx114listI3AntSaIS1_EED1Ev	#
	jmp	.L208	#
.L207:
	mov	rbx, r12	# tmp146, tmp147
	lea	rax, [rbp-1600]	# tmp150,
	mov	rdi, rax	#, tmp150
	call	_ZNSt7__cxx114listI3AntSaIS1_EED1Ev	#
	mov	rax, rbx	# D.132471, tmp146
	mov	rdi, rax	#, D.132471
.LEHB17:
	call	_Unwind_Resume	#
.LEHE17:
.L211:
	nop
	mov	rax, QWORD PTR [rbp-24]	# tmp152, D.132476
	xor	rax, QWORD PTR fs:40	# tmp152,
	je	.L209	#,
	call	__stack_chk_fail	#
.L209:
	add	rsp, 1680	#,
	pop	rbx	#
	pop	r12	#
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9186:
	.section	.gcc_except_table
.LLSDA9186:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9186-.LLSDACSB9186
.LLSDACSB9186:
	.uleb128 .LEHB16-.LFB9186
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L210-.LFB9186
	.uleb128 0
	.uleb128 .LEHB17-.LFB9186
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
.LLSDACSE9186:
	.section	.text._ZNSt7__cxx114listI3AntSaIS1_EE4sortIPFbS1_S1_EEEvT_,"axG",@progbits,_ZNSt7__cxx114listI3AntSaIS1_EE4sortIPFbS1_S1_EEEvT_,comdat
	.size	_ZNSt7__cxx114listI3AntSaIS1_EE4sortIPFbS1_S1_EEEvT_, .-_ZNSt7__cxx114listI3AntSaIS1_EE4sortIPFbS1_S1_EEEvT_
	.section	.text._ZNSt7__cxx1110_List_baseI3AntSaIS1_EE10_List_implD2Ev,"axG",@progbits,_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE10_List_implD5Ev,comdat
	.align 2
	.weak	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE10_List_implD2Ev
	.type	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE10_List_implD2Ev, @function
_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE10_List_implD2Ev:
.LFB9189:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	rax, QWORD PTR [rbp-8]	# tmp87, this
	mov	rdi, rax	#, tmp87
	call	_ZNSaISt10_List_nodeI3AntEED2Ev	#
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9189:
	.size	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE10_List_implD2Ev, .-_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE10_List_implD2Ev
	.weak	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE10_List_implD1Ev
	.set	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE10_List_implD1Ev,_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE10_List_implD2Ev
	.section	.text._ZNSt7__cxx1110_List_baseI3AntSaIS1_EED2Ev,"axG",@progbits,_ZNSt7__cxx1110_List_baseI3AntSaIS1_EED5Ev,comdat
	.align 2
	.weak	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EED2Ev
	.type	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EED2Ev, @function
_ZNSt7__cxx1110_List_baseI3AntSaIS1_EED2Ev:
.LFB9191:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	rax, QWORD PTR [rbp-8]	# tmp88, this
	mov	rdi, rax	#, tmp88
	call	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE8_M_clearEv	#
	mov	rax, QWORD PTR [rbp-8]	# D.132477, this
	mov	rdi, rax	#, D.132477
	call	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE10_List_implD1Ev	#
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9191:
	.size	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EED2Ev, .-_ZNSt7__cxx1110_List_baseI3AntSaIS1_EED2Ev
	.weak	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EED1Ev
	.set	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EED1Ev,_ZNSt7__cxx1110_List_baseI3AntSaIS1_EED2Ev
	.section	.text._ZNKSt14_List_iteratorI3AntEptEv,"axG",@progbits,_ZNKSt14_List_iteratorI3AntEptEv,comdat
	.align 2
	.weak	_ZNKSt14_List_iteratorI3AntEptEv
	.type	_ZNKSt14_List_iteratorI3AntEptEv, @function
_ZNKSt14_List_iteratorI3AntEptEv:
.LFB9193:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	rax, QWORD PTR [rbp-8]	# tmp91, this
	mov	rax, QWORD PTR [rax]	# D.132478, this_2(D)->_M_node
	add	rax, 16	# D.132479,
	mov	rdi, rax	#, D.132479
	call	_ZSt11__addressofI3AntEPT_RS1_	#
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9193:
	.size	_ZNKSt14_List_iteratorI3AntEptEv, .-_ZNKSt14_List_iteratorI3AntEptEv
	.section	.text._ZNSt7__cxx114listI3AntSaIS1_EEaSERKS3_,"axG",@progbits,_ZNSt7__cxx114listI3AntSaIS1_EEaSERKS3_,comdat
	.align 2
	.weak	_ZNSt7__cxx114listI3AntSaIS1_EEaSERKS3_
	.type	_ZNSt7__cxx114listI3AntSaIS1_EEaSERKS3_, @function
_ZNSt7__cxx114listI3AntSaIS1_EEaSERKS3_:
.LFB9194:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	sub	rsp, 120	#,
	.cfi_offset 3, -24
	mov	QWORD PTR [rbp-120], rdi	# this, this
	mov	QWORD PTR [rbp-128], rsi	# __x, __x
	mov	rax, QWORD PTR fs:40	# tmp148,
	mov	QWORD PTR [rbp-24], rax	# D.132486, tmp148
	xor	eax, eax	# tmp148
	mov	rax, QWORD PTR [rbp-120]	# tmp97, this
	cmp	rax, QWORD PTR [rbp-128]	# tmp97, __x
	je	.L217	#,
	mov	rax, QWORD PTR [rbp-120]	# tmp98, this
	mov	rdi, rax	#, tmp98
	call	_ZNSt7__cxx114listI3AntSaIS1_EE5beginEv	#
	mov	QWORD PTR [rbp-112], rax	# __first1, tmp100
	mov	rax, QWORD PTR [rbp-120]	# tmp101, this
	mov	rdi, rax	#, tmp101
	call	_ZNSt7__cxx114listI3AntSaIS1_EE3endEv	#
	mov	QWORD PTR [rbp-96], rax	# __last1, tmp103
	mov	rax, QWORD PTR [rbp-128]	# tmp104, __x
	mov	rdi, rax	#, tmp104
	call	_ZNKSt7__cxx114listI3AntSaIS1_EE5beginEv	#
	mov	QWORD PTR [rbp-80], rax	# __first2, tmp106
	mov	rax, QWORD PTR [rbp-128]	# tmp107, __x
	mov	rdi, rax	#, tmp107
	call	_ZNKSt7__cxx114listI3AntSaIS1_EE3endEv	#
	mov	QWORD PTR [rbp-64], rax	# __last2, tmp109
.L221:
	lea	rdx, [rbp-96]	# tmp110,
	lea	rax, [rbp-112]	# tmp111,
	mov	rsi, rdx	#, tmp110
	mov	rdi, rax	#, tmp111
	call	_ZNKSt14_List_iteratorI3AntEneERKS1_	#
	test	al, al	# D.132481
	je	.L218	#,
	lea	rdx, [rbp-64]	# tmp112,
	lea	rax, [rbp-80]	# tmp113,
	mov	rsi, rdx	#, tmp112
	mov	rdi, rax	#, tmp113
	call	_ZNKSt20_List_const_iteratorI3AntEneERKS1_	#
	test	al, al	# D.132481
	je	.L218	#,
	mov	eax, 1	# D.132481,
	jmp	.L219	#
.L218:
	mov	eax, 0	# D.132481,
.L219:
	test	al, al	# D.132481
	je	.L220	#,
	lea	rax, [rbp-112]	# tmp114,
	mov	rdi, rax	#, tmp114
	call	_ZNKSt14_List_iteratorI3AntEdeEv	#
	mov	rbx, rax	# D.132482,
	lea	rax, [rbp-80]	# tmp115,
	mov	rdi, rax	#, tmp115
	call	_ZNKSt20_List_const_iteratorI3AntEdeEv	#
	mov	rdx, rax	# D.132483,
	mov	rax, rbx	# tmp116, D.132482
	mov	ecx, 1060	# tmp118,
	mov	rsi, QWORD PTR [rdx]	# tmp119,
	mov	QWORD PTR [rax], rsi	#, tmp119
	mov	esi, ecx	# tmp120, tmp118
	add	rsi, rax	# tmp121, tmp116
	lea	rdi, [rsi+8]	# tmp122,
	mov	esi, ecx	# tmp123, tmp118
	add	rsi, rdx	# tmp124, tmp117
	add	rsi, 8	# tmp125,
	mov	rsi, QWORD PTR [rsi-16]	# tmp126,
	mov	QWORD PTR [rdi-16], rsi	#, tmp126
	lea	rdi, [rax+8]	# tmp127,
	and	rdi, -8	# tmp127,
	sub	rax, rdi	# tmp116, tmp127
	sub	rdx, rax	# tmp117, tmp116
	add	ecx, eax	# tmp118, tmp116
	and	ecx, -8	# tmp118,
	mov	eax, ecx	# tmp128, tmp118
	shr	eax, 3	# tmp128,
	mov	eax, eax	# tmp129, tmp128
	mov	rsi, rdx	# tmp117, tmp117
	mov	rcx, rax	# tmp129, tmp129
	rep movsq
	lea	rax, [rbp-112]	# tmp130,
	mov	rdi, rax	#, tmp130
	call	_ZNSt14_List_iteratorI3AntEppEv	#
	lea	rax, [rbp-80]	# tmp131,
	mov	rdi, rax	#, tmp131
	call	_ZNSt20_List_const_iteratorI3AntEppEv	#
	jmp	.L221	#
.L220:
	lea	rdx, [rbp-64]	# tmp132,
	lea	rax, [rbp-80]	# tmp133,
	mov	rsi, rdx	#, tmp132
	mov	rdi, rax	#, tmp133
	call	_ZNKSt20_List_const_iteratorI3AntEeqERKS1_	#
	test	al, al	# D.132481
	je	.L222	#,
	lea	rdx, [rbp-96]	# tmp134,
	lea	rax, [rbp-32]	# tmp135,
	mov	rsi, rdx	#, tmp134
	mov	rdi, rax	#, tmp135
	call	_ZNSt20_List_const_iteratorI3AntEC1ERKSt14_List_iteratorIS0_E	#
	lea	rdx, [rbp-112]	# tmp136,
	lea	rax, [rbp-48]	# tmp137,
	mov	rsi, rdx	#, tmp136
	mov	rdi, rax	#, tmp137
	call	_ZNSt20_List_const_iteratorI3AntEC1ERKSt14_List_iteratorIS0_E	#
	mov	rdx, QWORD PTR [rbp-32]	# tmp138, D.126695
	mov	rcx, QWORD PTR [rbp-48]	# tmp139, D.126694
	mov	rax, QWORD PTR [rbp-120]	# tmp140, this
	mov	rsi, rcx	#, tmp139
	mov	rdi, rax	#, tmp140
	call	_ZNSt7__cxx114listI3AntSaIS1_EE5eraseESt20_List_const_iteratorIS1_ES5_	#
	jmp	.L217	#
.L222:
	lea	rdx, [rbp-96]	# tmp141,
	lea	rax, [rbp-32]	# tmp142,
	mov	rsi, rdx	#, tmp141
	mov	rdi, rax	#, tmp142
	call	_ZNSt20_List_const_iteratorI3AntEC1ERKSt14_List_iteratorIS0_E	#
	mov	rcx, QWORD PTR [rbp-64]	# tmp143, __last2
	mov	rdx, QWORD PTR [rbp-80]	# tmp144, __first2
	mov	rsi, QWORD PTR [rbp-32]	# tmp145, D.126823
	mov	rax, QWORD PTR [rbp-120]	# tmp146, this
	mov	rdi, rax	#, tmp146
	call	_ZNSt7__cxx114listI3AntSaIS1_EE6insertISt20_List_const_iteratorIS1_EvEESt14_List_iteratorIS1_ES6_T_S9_	#
.L217:
	mov	rax, QWORD PTR [rbp-120]	# D.132484, this
	mov	rbx, QWORD PTR [rbp-24]	# tmp149, D.132486
	xor	rbx, QWORD PTR fs:40	# tmp149,
	je	.L225	#,
	call	__stack_chk_fail	#
.L225:
	add	rsp, 120	#,
	pop	rbx	#
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9194:
	.size	_ZNSt7__cxx114listI3AntSaIS1_EEaSERKS3_, .-_ZNSt7__cxx114listI3AntSaIS1_EEaSERKS3_
	.section	.text._ZN2cv3VecIdLi4EEC2Ev,"axG",@progbits,_ZN2cv3VecIdLi4EEC5Ev,comdat
	.align 2
	.weak	_ZN2cv3VecIdLi4EEC2Ev
	.type	_ZN2cv3VecIdLi4EEC2Ev, @function
_ZN2cv3VecIdLi4EEC2Ev:
.LFB9253:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	rax, QWORD PTR [rbp-8]	# D.132487, this
	mov	rdi, rax	#, D.132487
	call	_ZN2cv4MatxIdLi4ELi1EEC2Ev	#
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9253:
	.size	_ZN2cv3VecIdLi4EEC2Ev, .-_ZN2cv3VecIdLi4EEC2Ev
	.weak	_ZN2cv3VecIdLi4EEC1Ev
	.set	_ZN2cv3VecIdLi4EEC1Ev,_ZN2cv3VecIdLi4EEC2Ev
	.section	.text._ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE4seedEm,"axG",@progbits,_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE4seedEm,comdat
	.align 2
	.weak	_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE4seedEm
	.type	_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE4seedEm, @function
_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE4seedEm:
.LFB9344:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	QWORD PTR [rbp-16], rsi	# __s, __s
	mov	edi, 0	#,
	call	_ZNSt8__detail5__modImLm2147483647ELm1ELm0EEET_S1_	#
	test	rax, rax	# D.132489
	jne	.L228	#,
	mov	rax, QWORD PTR [rbp-16]	# tmp91, __s
	mov	rdi, rax	#, tmp91
	call	_ZNSt8__detail5__modImLm2147483647ELm1ELm0EEET_S1_	#
	test	rax, rax	# D.132489
	jne	.L228	#,
	mov	eax, 1	# D.132488,
	jmp	.L229	#
.L228:
	mov	eax, 0	# D.132488,
.L229:
	test	al, al	# D.132488
	je	.L230	#,
	mov	rax, QWORD PTR [rbp-8]	# tmp92, this
	mov	QWORD PTR [rax], 1	# this_16(D)->_M_x,
	jmp	.L232	#
.L230:
	mov	rax, QWORD PTR [rbp-16]	# tmp93, __s
	mov	rdi, rax	#, tmp93
	call	_ZNSt8__detail5__modImLm2147483647ELm1ELm0EEET_S1_	#
	mov	rdx, rax	# D.132489,
	mov	rax, QWORD PTR [rbp-8]	# tmp94, this
	mov	QWORD PTR [rax], rdx	# this_16(D)->_M_x, D.132489
.L232:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9344:
	.size	_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE4seedEm, .-_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE4seedEm
	.section	.text._ZNSt19normal_distributionIfE10param_typeC2Eff,"axG",@progbits,_ZNSt19normal_distributionIfE10param_typeC5Eff,comdat
	.align 2
	.weak	_ZNSt19normal_distributionIfE10param_typeC2Eff
	.type	_ZNSt19normal_distributionIfE10param_typeC2Eff, @function
_ZNSt19normal_distributionIfE10param_typeC2Eff:
.LFB9346:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	movss	DWORD PTR [rbp-12], xmm0	# __mean, __mean
	movss	DWORD PTR [rbp-16], xmm1	# __stddev, __stddev
	mov	rax, QWORD PTR [rbp-8]	# tmp87, this
	movss	xmm0, DWORD PTR [rbp-12]	# tmp88, __mean
	movss	DWORD PTR [rax], xmm0	# this_2(D)->_M_mean, tmp88
	mov	rax, QWORD PTR [rbp-8]	# tmp89, this
	movss	xmm0, DWORD PTR [rbp-16]	# tmp90, __stddev
	movss	DWORD PTR [rax+4], xmm0	# this_2(D)->_M_stddev, tmp90
	nop
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9346:
	.size	_ZNSt19normal_distributionIfE10param_typeC2Eff, .-_ZNSt19normal_distributionIfE10param_typeC2Eff
	.weak	_ZNSt19normal_distributionIfE10param_typeC1Eff
	.set	_ZNSt19normal_distributionIfE10param_typeC1Eff,_ZNSt19normal_distributionIfE10param_typeC2Eff
	.section	.text._ZNSt19normal_distributionIfEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEfRT_RKNS0_10param_typeE,"axG",@progbits,_ZNSt19normal_distributionIfEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEfRT_RKNS0_10param_typeE,comdat
	.align 2
	.weak	_ZNSt19normal_distributionIfEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEfRT_RKNS0_10param_typeE
	.type	_ZNSt19normal_distributionIfEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEfRT_RKNS0_10param_typeE, @function
_ZNSt19normal_distributionIfEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEfRT_RKNS0_10param_typeE:
.LFB9348:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 80	#,
	mov	QWORD PTR [rbp-56], rdi	# this, this
	mov	QWORD PTR [rbp-64], rsi	# __urng, __urng
	mov	QWORD PTR [rbp-72], rdx	# __param, __param
	mov	rax, QWORD PTR fs:40	# tmp136,
	mov	QWORD PTR [rbp-8], rax	# D.132493, tmp136
	xor	eax, eax	# tmp136
	mov	rdx, QWORD PTR [rbp-64]	# tmp105, __urng
	lea	rax, [rbp-16]	# tmp106,
	mov	rsi, rdx	#, tmp105
	mov	rdi, rax	#, tmp106
	call	_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEfEC1ERS2_	#
	mov	rax, QWORD PTR [rbp-56]	# tmp107, this
	movzx	eax, BYTE PTR [rax+12]	# D.132490, this_8(D)->_M_saved_available
	test	al, al	# D.132490
	je	.L235	#,
	mov	rax, QWORD PTR [rbp-56]	# tmp108, this
	mov	BYTE PTR [rax+12], 0	# this_8(D)->_M_saved_available,
	mov	rax, QWORD PTR [rbp-56]	# tmp109, this
	movss	xmm0, DWORD PTR [rax+8]	# tmp110, this_8(D)->_M_saved
	movss	DWORD PTR [rbp-36], xmm0	# __ret, tmp110
	jmp	.L236	#
.L235:
	lea	rax, [rbp-16]	# tmp111,
	mov	rdi, rax	#, tmp111
	call	_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEfEclEv	#
	addss	xmm0, xmm0	# D.132491, D.132491
	movss	xmm1, DWORD PTR .LC2[rip]	# tmp113,
	subss	xmm0, xmm1	# tmp112, tmp113
	movss	DWORD PTR [rbp-32], xmm0	# __x, tmp112
	lea	rax, [rbp-16]	# tmp114,
	mov	rdi, rax	#, tmp114
	call	_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEfEclEv	#
	addss	xmm0, xmm0	# D.132491, D.132491
	movss	xmm1, DWORD PTR .LC2[rip]	# tmp116,
	subss	xmm0, xmm1	# tmp115, tmp116
	movss	DWORD PTR [rbp-28], xmm0	# __y, tmp115
	movss	xmm0, DWORD PTR [rbp-32]	# tmp117, __x
	movaps	xmm1, xmm0	# D.132491, tmp117
	mulss	xmm1, DWORD PTR [rbp-32]	# D.132491, __x
	movss	xmm0, DWORD PTR [rbp-28]	# tmp118, __y
	mulss	xmm0, DWORD PTR [rbp-28]	# D.132491, __y
	addss	xmm0, xmm1	# tmp119, D.132491
	movss	DWORD PTR [rbp-24], xmm0	# __r2, tmp119
	movss	xmm0, DWORD PTR [rbp-24]	# tmp120, __r2
	movss	xmm1, DWORD PTR .LC2[rip]	# tmp121,
	ucomiss	xmm0, xmm1	# tmp120, tmp121
	seta	al	#, D.132490
	xor	eax, 1	# D.132490,
	test	al, al	# D.132490
	je	.L235	#,
	pxor	xmm0, xmm0	# tmp122
	ucomiss	xmm0, DWORD PTR [rbp-24]	# tmp122, __r2
	jp	.L238	#,
	pxor	xmm0, xmm0	# tmp123
	ucomiss	xmm0, DWORD PTR [rbp-24]	# tmp123, __r2
	jne	.L238	#,
	jmp	.L235	#
.L238:
	mov	eax, DWORD PTR [rbp-24]	# tmp124, __r2
	mov	DWORD PTR [rbp-76], eax	# %sfp, tmp124
	movss	xmm0, DWORD PTR [rbp-76]	#, %sfp
	call	_ZSt3logf	#
	movaps	xmm1, xmm0	# D.132491,
	movss	xmm0, DWORD PTR .LC21[rip]	# tmp125,
	mulss	xmm0, xmm1	# D.132491, D.132491
	divss	xmm0, DWORD PTR [rbp-24]	# D.132491, __r2
	call	_ZSt4sqrtf	#
	movd	eax, xmm0	# tmp126,
	mov	DWORD PTR [rbp-20], eax	# __mult, tmp126
	movss	xmm0, DWORD PTR [rbp-32]	# tmp127, __x
	mulss	xmm0, DWORD PTR [rbp-20]	# D.132491, __mult
	mov	rax, QWORD PTR [rbp-56]	# tmp128, this
	movss	DWORD PTR [rax+8], xmm0	# this_8(D)->_M_saved, D.132491
	mov	rax, QWORD PTR [rbp-56]	# tmp129, this
	mov	BYTE PTR [rax+12], 1	# this_8(D)->_M_saved_available,
	movss	xmm0, DWORD PTR [rbp-28]	# tmp131, __y
	mulss	xmm0, DWORD PTR [rbp-20]	# tmp130, __mult
	movss	DWORD PTR [rbp-36], xmm0	# __ret, tmp130
.L236:
	mov	rax, QWORD PTR [rbp-72]	# tmp132, __param
	mov	rdi, rax	#, tmp132
	call	_ZNKSt19normal_distributionIfE10param_type6stddevEv	#
	mulss	xmm0, DWORD PTR [rbp-36]	# D.132491, __ret
	movss	DWORD PTR [rbp-76], xmm0	# %sfp, D.132491
	mov	rax, QWORD PTR [rbp-72]	# tmp133, __param
	mov	rdi, rax	#, tmp133
	call	_ZNKSt19normal_distributionIfE10param_type4meanEv	#
	addss	xmm0, DWORD PTR [rbp-76]	# tmp134, %sfp
	movss	DWORD PTR [rbp-36], xmm0	# __ret, tmp134
	movss	xmm0, DWORD PTR [rbp-36]	# D.132492, __ret
	mov	rax, QWORD PTR [rbp-8]	# tmp137, D.132493
	xor	rax, QWORD PTR fs:40	# tmp137,
	je	.L240	#,
	call	__stack_chk_fail	#
.L240:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9348:
	.size	_ZNSt19normal_distributionIfEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEfRT_RKNS0_10param_typeE, .-_ZNSt19normal_distributionIfEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEfRT_RKNS0_10param_typeE
	.section	.text._ZNSt7__cxx1110_List_baseI3AntSaIS1_EEC2Ev,"axG",@progbits,_ZNSt7__cxx1110_List_baseI3AntSaIS1_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EEC2Ev
	.type	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EEC2Ev, @function
_ZNSt7__cxx1110_List_baseI3AntSaIS1_EEC2Ev:
.LFB9350:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	rax, QWORD PTR [rbp-8]	# D.132494, this
	mov	rdi, rax	#, D.132494
	call	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE10_List_implC1Ev	#
	mov	rax, QWORD PTR [rbp-8]	# tmp88, this
	mov	rdi, rax	#, tmp88
	call	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE7_M_initEv	#
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9350:
	.size	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EEC2Ev, .-_ZNSt7__cxx1110_List_baseI3AntSaIS1_EEC2Ev
	.weak	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EEC1Ev
	.set	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EEC1Ev,_ZNSt7__cxx1110_List_baseI3AntSaIS1_EEC2Ev
	.section	.text._ZNSt14_List_iteratorI3AntEC2EPNSt8__detail15_List_node_baseE,"axG",@progbits,_ZNSt14_List_iteratorI3AntEC5EPNSt8__detail15_List_node_baseE,comdat
	.align 2
	.weak	_ZNSt14_List_iteratorI3AntEC2EPNSt8__detail15_List_node_baseE
	.type	_ZNSt14_List_iteratorI3AntEC2EPNSt8__detail15_List_node_baseE, @function
_ZNSt14_List_iteratorI3AntEC2EPNSt8__detail15_List_node_baseE:
.LFB9372:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	QWORD PTR [rbp-16], rsi	# __x, __x
	mov	rax, QWORD PTR [rbp-8]	# tmp87, this
	mov	rdx, QWORD PTR [rbp-16]	# tmp88, __x
	mov	QWORD PTR [rax], rdx	# this_2(D)->_M_node, tmp88
	nop
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9372:
	.size	_ZNSt14_List_iteratorI3AntEC2EPNSt8__detail15_List_node_baseE, .-_ZNSt14_List_iteratorI3AntEC2EPNSt8__detail15_List_node_baseE
	.weak	_ZNSt14_List_iteratorI3AntEC1EPNSt8__detail15_List_node_baseE
	.set	_ZNSt14_List_iteratorI3AntEC1EPNSt8__detail15_List_node_baseE,_ZNSt14_List_iteratorI3AntEC2EPNSt8__detail15_List_node_baseE
	.section	.text._ZN2cv4MatxIhLi3ELi1EEC2Ehhh,"axG",@progbits,_ZN2cv4MatxIhLi3ELi1EEC5Ehhh,comdat
	.align 2
	.weak	_ZN2cv4MatxIhLi3ELi1EEC2Ehhh
	.type	_ZN2cv4MatxIhLi3ELi1EEC2Ehhh, @function
_ZN2cv4MatxIhLi3ELi1EEC2Ehhh:
.LFB9376:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-24], rdi	# this, this
	mov	eax, ecx	# tmp89, v2
	mov	BYTE PTR [rbp-28], sil	# v0, tmp87
	mov	BYTE PTR [rbp-32], dl	# v1, tmp88
	mov	BYTE PTR [rbp-36], al	# v2, tmp89
	mov	rax, QWORD PTR [rbp-24]	# tmp90, this
	movzx	edx, BYTE PTR [rbp-28]	# tmp91, v0
	mov	BYTE PTR [rax], dl	# this_4(D)->val, tmp91
	mov	rax, QWORD PTR [rbp-24]	# tmp92, this
	movzx	edx, BYTE PTR [rbp-32]	# tmp93, v1
	mov	BYTE PTR [rax+1], dl	# this_4(D)->val, tmp93
	mov	rax, QWORD PTR [rbp-24]	# tmp94, this
	movzx	edx, BYTE PTR [rbp-36]	# tmp95, v2
	mov	BYTE PTR [rax+2], dl	# this_4(D)->val, tmp95
	mov	DWORD PTR [rbp-4], 3	# i,
.L245:
	cmp	DWORD PTR [rbp-4], 2	# i,
	jg	.L246	#,
	mov	rdx, QWORD PTR [rbp-24]	# tmp96, this
	mov	eax, DWORD PTR [rbp-4]	# tmp98, i
	cdqe
	mov	BYTE PTR [rdx+rax], 0	# this_4(D)->val,
	add	DWORD PTR [rbp-4], 1	# i,
	jmp	.L245	#
.L246:
	nop
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9376:
	.size	_ZN2cv4MatxIhLi3ELi1EEC2Ehhh, .-_ZN2cv4MatxIhLi3ELi1EEC2Ehhh
	.weak	_ZN2cv4MatxIhLi3ELi1EEC1Ehhh
	.set	_ZN2cv4MatxIhLi3ELi1EEC1Ehhh,_ZN2cv4MatxIhLi3ELi1EEC2Ehhh
	.section	.text._ZSt7forwardIRK3AntEOT_RNSt16remove_referenceIS3_E4typeE,"axG",@progbits,_ZSt7forwardIRK3AntEOT_RNSt16remove_referenceIS3_E4typeE,comdat
	.weak	_ZSt7forwardIRK3AntEOT_RNSt16remove_referenceIS3_E4typeE
	.type	_ZSt7forwardIRK3AntEOT_RNSt16remove_referenceIS3_E4typeE, @function
_ZSt7forwardIRK3AntEOT_RNSt16remove_referenceIS3_E4typeE:
.LFB9388:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# __t, __t
	mov	rax, QWORD PTR [rbp-8]	# D.132495, __t
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9388:
	.size	_ZSt7forwardIRK3AntEOT_RNSt16remove_referenceIS3_E4typeE, .-_ZSt7forwardIRK3AntEOT_RNSt16remove_referenceIS3_E4typeE
	.section	.text._ZNSt7__cxx114listI3AntSaIS1_EE9_M_insertIJRKS1_EEEvSt14_List_iteratorIS1_EDpOT_,"axG",@progbits,_ZNSt7__cxx114listI3AntSaIS1_EE9_M_insertIJRKS1_EEEvSt14_List_iteratorIS1_EDpOT_,comdat
	.align 2
	.weak	_ZNSt7__cxx114listI3AntSaIS1_EE9_M_insertIJRKS1_EEEvSt14_List_iteratorIS1_EDpOT_
	.type	_ZNSt7__cxx114listI3AntSaIS1_EE9_M_insertIJRKS1_EEEvSt14_List_iteratorIS1_EDpOT_, @function
_ZNSt7__cxx114listI3AntSaIS1_EE9_M_insertIJRKS1_EEEvSt14_List_iteratorIS1_EDpOT_:
.LFB9387:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	QWORD PTR [rbp-24], rdi	# this, this
	mov	QWORD PTR [rbp-32], rsi	# __position, __position
	mov	QWORD PTR [rbp-40], rdx	# __args#0, __args#0
	mov	rax, QWORD PTR [rbp-40]	# tmp92, __args#0
	mov	rdi, rax	#, tmp92
	call	_ZSt7forwardIRK3AntEOT_RNSt16remove_referenceIS3_E4typeE	#
	mov	rdx, rax	# D.132496,
	mov	rax, QWORD PTR [rbp-24]	# tmp93, this
	mov	rsi, rdx	#, D.132496
	mov	rdi, rax	#, tmp93
	call	_ZNSt7__cxx114listI3AntSaIS1_EE14_M_create_nodeIJRKS1_EEEPSt10_List_nodeIS1_EDpOT_	#
	mov	QWORD PTR [rbp-8], rax	# __tmp, D.132497
	mov	rdx, QWORD PTR [rbp-32]	# D.132498, __position._M_node
	mov	rax, QWORD PTR [rbp-8]	# D.132498, __tmp
	mov	rsi, rdx	#, D.132498
	mov	rdi, rax	#, D.132498
	call	_ZNSt8__detail15_List_node_base7_M_hookEPS0_	#
	mov	rax, QWORD PTR [rbp-24]	# D.132499, this
	mov	esi, 1	#,
	mov	rdi, rax	#, D.132499
	call	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_inc_sizeEm	#
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9387:
	.size	_ZNSt7__cxx114listI3AntSaIS1_EE9_M_insertIJRKS1_EEEvSt14_List_iteratorIS1_EDpOT_, .-_ZNSt7__cxx114listI3AntSaIS1_EE9_M_insertIJRKS1_EEEvSt14_List_iteratorIS1_EDpOT_
	.weak	_ZNSt7__cxx114listI3AntSaIS1_EE9_M_insertIIRKS1_EEEvSt14_List_iteratorIS1_EDpOT_
	.set	_ZNSt7__cxx114listI3AntSaIS1_EE9_M_insertIIRKS1_EEEvSt14_List_iteratorIS1_EDpOT_,_ZNSt7__cxx114listI3AntSaIS1_EE9_M_insertIJRKS1_EEEvSt14_List_iteratorIS1_EDpOT_
	.section	.text._ZNSt20_List_const_iteratorI3AntEC2ERKSt14_List_iteratorIS0_E,"axG",@progbits,_ZNSt20_List_const_iteratorI3AntEC5ERKSt14_List_iteratorIS0_E,comdat
	.align 2
	.weak	_ZNSt20_List_const_iteratorI3AntEC2ERKSt14_List_iteratorIS0_E
	.type	_ZNSt20_List_const_iteratorI3AntEC2ERKSt14_List_iteratorIS0_E, @function
_ZNSt20_List_const_iteratorI3AntEC2ERKSt14_List_iteratorIS0_E:
.LFB9390:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	QWORD PTR [rbp-16], rsi	# __x, __x
	mov	rax, QWORD PTR [rbp-16]	# tmp88, __x
	mov	rdx, QWORD PTR [rax]	# D.132500, __x_2(D)->_M_node
	mov	rax, QWORD PTR [rbp-8]	# tmp89, this
	mov	QWORD PTR [rax], rdx	# this_4(D)->_M_node, D.132500
	nop
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9390:
	.size	_ZNSt20_List_const_iteratorI3AntEC2ERKSt14_List_iteratorIS0_E, .-_ZNSt20_List_const_iteratorI3AntEC2ERKSt14_List_iteratorIS0_E
	.weak	_ZNSt20_List_const_iteratorI3AntEC1ERKSt14_List_iteratorIS0_E
	.set	_ZNSt20_List_const_iteratorI3AntEC1ERKSt14_List_iteratorIS0_E,_ZNSt20_List_const_iteratorI3AntEC2ERKSt14_List_iteratorIS0_E
	.section	.text._ZSt4moveIRNSt7__cxx114listI3AntSaIS2_EEEEONSt16remove_referenceIT_E4typeEOS7_,"axG",@progbits,_ZSt4moveIRNSt7__cxx114listI3AntSaIS2_EEEEONSt16remove_referenceIT_E4typeEOS7_,comdat
	.weak	_ZSt4moveIRNSt7__cxx114listI3AntSaIS2_EEEEONSt16remove_referenceIT_E4typeEOS7_
	.type	_ZSt4moveIRNSt7__cxx114listI3AntSaIS2_EEEEONSt16remove_referenceIT_E4typeEOS7_, @function
_ZSt4moveIRNSt7__cxx114listI3AntSaIS2_EEEEONSt16remove_referenceIT_E4typeEOS7_:
.LFB9393:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# __t, __t
	mov	rax, QWORD PTR [rbp-8]	# D.132501, __t
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9393:
	.size	_ZSt4moveIRNSt7__cxx114listI3AntSaIS2_EEEEONSt16remove_referenceIT_E4typeEOS7_, .-_ZSt4moveIRNSt7__cxx114listI3AntSaIS2_EEEEONSt16remove_referenceIT_E4typeEOS7_
	.section	.text._ZNSt7__cxx114listI3AntSaIS1_EE6spliceESt20_List_const_iteratorIS1_ERS3_S5_,"axG",@progbits,_ZNSt7__cxx114listI3AntSaIS1_EE6spliceESt20_List_const_iteratorIS1_ERS3_S5_,comdat
	.align 2
	.weak	_ZNSt7__cxx114listI3AntSaIS1_EE6spliceESt20_List_const_iteratorIS1_ERS3_S5_
	.type	_ZNSt7__cxx114listI3AntSaIS1_EE6spliceESt20_List_const_iteratorIS1_ERS3_S5_, @function
_ZNSt7__cxx114listI3AntSaIS1_EE6spliceESt20_List_const_iteratorIS1_ERS3_S5_:
.LFB9392:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	QWORD PTR [rbp-16], rsi	# __position, __position
	mov	QWORD PTR [rbp-24], rdx	# __x, __x
	mov	QWORD PTR [rbp-32], rcx	# __i, __i
	mov	rax, QWORD PTR [rbp-24]	# tmp88, __x
	mov	rdi, rax	#, tmp88
	call	_ZSt4moveIRNSt7__cxx114listI3AntSaIS2_EEEEONSt16remove_referenceIT_E4typeEOS7_	#
	mov	rdi, rax	# D.132502,
	mov	rdx, QWORD PTR [rbp-32]	# tmp89, __i
	mov	rsi, QWORD PTR [rbp-16]	# tmp90, __position
	mov	rax, QWORD PTR [rbp-8]	# tmp91, this
	mov	rcx, rdx	#, tmp89
	mov	rdx, rdi	#, D.132502
	mov	rdi, rax	#, tmp91
	call	_ZNSt7__cxx114listI3AntSaIS1_EE6spliceESt20_List_const_iteratorIS1_EOS3_S5_	#
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9392:
	.size	_ZNSt7__cxx114listI3AntSaIS1_EE6spliceESt20_List_const_iteratorIS1_ERS3_S5_, .-_ZNSt7__cxx114listI3AntSaIS1_EE6spliceESt20_List_const_iteratorIS1_ERS3_S5_
	.section	.text._ZNKSt7__cxx114listI3AntSaIS1_EE5emptyEv,"axG",@progbits,_ZNKSt7__cxx114listI3AntSaIS1_EE5emptyEv,comdat
	.align 2
	.weak	_ZNKSt7__cxx114listI3AntSaIS1_EE5emptyEv
	.type	_ZNKSt7__cxx114listI3AntSaIS1_EE5emptyEv, @function
_ZNKSt7__cxx114listI3AntSaIS1_EE5emptyEv:
.LFB9394:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	rax, QWORD PTR [rbp-8]	# tmp91, this
	mov	rdx, QWORD PTR [rax]	# D.132503, this_2(D)->D.123817._M_impl._M_node.D.69288._M_next
	mov	rax, QWORD PTR [rbp-8]	# D.132504, this
	cmp	rdx, rax	# D.132503, D.132504
	sete	al	#, D.132505
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9394:
	.size	_ZNKSt7__cxx114listI3AntSaIS1_EE5emptyEv, .-_ZNKSt7__cxx114listI3AntSaIS1_EE5emptyEv
	.section	.text._ZNSt7__cxx114listI3AntSaIS1_EE5mergeIPFbS1_S1_EEEvRS3_T_,"axG",@progbits,_ZNSt7__cxx114listI3AntSaIS1_EE5mergeIPFbS1_S1_EEEvRS3_T_,comdat
	.align 2
	.weak	_ZNSt7__cxx114listI3AntSaIS1_EE5mergeIPFbS1_S1_EEEvRS3_T_
	.type	_ZNSt7__cxx114listI3AntSaIS1_EE5mergeIPFbS1_S1_EEEvRS3_T_, @function
_ZNSt7__cxx114listI3AntSaIS1_EE5mergeIPFbS1_S1_EEEvRS3_T_:
.LFB9395:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	QWORD PTR [rbp-16], rsi	# __x, __x
	mov	QWORD PTR [rbp-24], rdx	# __comp, __comp
	mov	rax, QWORD PTR [rbp-16]	# tmp88, __x
	mov	rdi, rax	#, tmp88
	call	_ZSt4moveIRNSt7__cxx114listI3AntSaIS2_EEEEONSt16remove_referenceIT_E4typeEOS7_	#
	mov	rcx, rax	# D.132506,
	mov	rdx, QWORD PTR [rbp-24]	# tmp89, __comp
	mov	rax, QWORD PTR [rbp-8]	# tmp90, this
	mov	rsi, rcx	#, D.132506
	mov	rdi, rax	#, tmp90
	call	_ZNSt7__cxx114listI3AntSaIS1_EE5mergeIPFbS1_S1_EEEvOS3_T_	#
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9395:
	.size	_ZNSt7__cxx114listI3AntSaIS1_EE5mergeIPFbS1_S1_EEEvRS3_T_, .-_ZNSt7__cxx114listI3AntSaIS1_EE5mergeIPFbS1_S1_EEEvRS3_T_
	.section	.text._ZNSt7__cxx114listI3AntSaIS1_EE4swapERS3_,"axG",@progbits,_ZNSt7__cxx114listI3AntSaIS1_EE4swapERS3_,comdat
	.align 2
	.weak	_ZNSt7__cxx114listI3AntSaIS1_EE4swapERS3_
	.type	_ZNSt7__cxx114listI3AntSaIS1_EE4swapERS3_, @function
_ZNSt7__cxx114listI3AntSaIS1_EE4swapERS3_:
.LFB9396:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	sub	rsp, 40	#,
	.cfi_offset 3, -24
	mov	QWORD PTR [rbp-40], rdi	# this, this
	mov	QWORD PTR [rbp-48], rsi	# __x, __x
	mov	rdx, QWORD PTR [rbp-48]	# D.132507, __x
	mov	rax, QWORD PTR [rbp-40]	# D.132507, this
	mov	rsi, rdx	#, D.132507
	mov	rdi, rax	#, D.132507
	call	_ZNSt8__detail15_List_node_base4swapERS0_S1_	#
	mov	rax, QWORD PTR [rbp-48]	# D.132508, __x
	mov	rdi, rax	#, D.132508
	call	_ZNKSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_get_sizeEv	#
	mov	QWORD PTR [rbp-24], rax	# __xsize, tmp98
	mov	rax, QWORD PTR [rbp-40]	# D.132508, this
	mov	rdi, rax	#, D.132508
	call	_ZNKSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_get_sizeEv	#
	mov	rdx, rax	# D.132509,
	mov	rax, QWORD PTR [rbp-48]	# D.132508, __x
	mov	rsi, rdx	#, D.132509
	mov	rdi, rax	#, D.132508
	call	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_set_sizeEm	#
	mov	rax, QWORD PTR [rbp-40]	# D.132508, this
	mov	rdx, QWORD PTR [rbp-24]	# tmp99, __xsize
	mov	rsi, rdx	#, tmp99
	mov	rdi, rax	#, D.132508
	call	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_set_sizeEm	#
	mov	rax, QWORD PTR [rbp-48]	# D.132508, __x
	mov	rdi, rax	#, D.132508
	call	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE21_M_get_Node_allocatorEv	#
	mov	rbx, rax	# D.132510,
	mov	rax, QWORD PTR [rbp-40]	# D.132508, this
	mov	rdi, rax	#, D.132508
	call	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE21_M_get_Node_allocatorEv	#
	mov	rsi, rbx	#, D.132510
	mov	rdi, rax	#, D.132510
	call	_ZNSt12__alloc_swapISaISt10_List_nodeI3AntEELb1EE8_S_do_itERS3_S5_	#
	nop
	add	rsp, 40	#,
	pop	rbx	#
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9396:
	.size	_ZNSt7__cxx114listI3AntSaIS1_EE4swapERS3_, .-_ZNSt7__cxx114listI3AntSaIS1_EE4swapERS3_
	.section	.text._ZNSaISt10_List_nodeI3AntEED2Ev,"axG",@progbits,_ZNSaISt10_List_nodeI3AntEED5Ev,comdat
	.align 2
	.weak	_ZNSaISt10_List_nodeI3AntEED2Ev
	.type	_ZNSaISt10_List_nodeI3AntEED2Ev, @function
_ZNSaISt10_List_nodeI3AntEED2Ev:
.LFB9398:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	rax, QWORD PTR [rbp-8]	# tmp87, this
	mov	rdi, rax	#, tmp87
	call	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEED2Ev	#
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9398:
	.size	_ZNSaISt10_List_nodeI3AntEED2Ev, .-_ZNSaISt10_List_nodeI3AntEED2Ev
	.weak	_ZNSaISt10_List_nodeI3AntEED1Ev
	.set	_ZNSaISt10_List_nodeI3AntEED1Ev,_ZNSaISt10_List_nodeI3AntEED2Ev
	.section	.text._ZNSt7__cxx1110_List_baseI3AntSaIS1_EE8_M_clearEv,"axG",@progbits,_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE8_M_clearEv,comdat
	.align 2
	.weak	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE8_M_clearEv
	.type	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE8_M_clearEv, @function
_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE8_M_clearEv:
.LFB9400:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR [rbp-24], rdi	# this, this
	mov	rax, QWORD PTR [rbp-24]	# tmp89, this
	mov	rax, QWORD PTR [rax]	# tmp90, this_4(D)->_M_impl._M_node.D.69288._M_next
	mov	QWORD PTR [rbp-16], rax	# __cur, tmp90
.L261:
	mov	rax, QWORD PTR [rbp-24]	# D.132511, this
	cmp	rax, QWORD PTR [rbp-16]	# D.132511, __cur
	je	.L262	#,
	mov	rax, QWORD PTR [rbp-16]	# tmp91, __cur
	mov	QWORD PTR [rbp-8], rax	# __tmp, tmp91
	mov	rax, QWORD PTR [rbp-8]	# tmp92, __tmp
	mov	rax, QWORD PTR [rax]	# tmp93, __tmp_7->D.126514._M_next
	mov	QWORD PTR [rbp-16], rax	# __cur, tmp93
	mov	rax, QWORD PTR [rbp-24]	# tmp94, this
	mov	rdi, rax	#, tmp94
	call	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE21_M_get_Node_allocatorEv	#
	mov	rdx, rax	# D.132512,
	mov	rax, QWORD PTR [rbp-8]	# tmp95, __tmp
	mov	rsi, rax	#, tmp95
	mov	rdi, rdx	#, D.132512
	call	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEE7destroyIS3_EEvPT_	#
	mov	rdx, QWORD PTR [rbp-8]	# tmp96, __tmp
	mov	rax, QWORD PTR [rbp-24]	# tmp97, this
	mov	rsi, rdx	#, tmp96
	mov	rdi, rax	#, tmp97
	call	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_put_nodeEPSt10_List_nodeIS1_E	#
	jmp	.L261	#
.L262:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9400:
	.size	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE8_M_clearEv, .-_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE8_M_clearEv
	.section	.text._ZSt11__addressofI3AntEPT_RS1_,"axG",@progbits,_ZSt11__addressofI3AntEPT_RS1_,comdat
	.weak	_ZSt11__addressofI3AntEPT_RS1_
	.type	_ZSt11__addressofI3AntEPT_RS1_, @function
_ZSt11__addressofI3AntEPT_RS1_:
.LFB9401:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# __r, __r
	mov	rax, QWORD PTR [rbp-8]	# D.132513, __r
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9401:
	.size	_ZSt11__addressofI3AntEPT_RS1_, .-_ZSt11__addressofI3AntEPT_RS1_
	.section	.text._ZNKSt7__cxx114listI3AntSaIS1_EE5beginEv,"axG",@progbits,_ZNKSt7__cxx114listI3AntSaIS1_EE5beginEv,comdat
	.align 2
	.weak	_ZNKSt7__cxx114listI3AntSaIS1_EE5beginEv
	.type	_ZNKSt7__cxx114listI3AntSaIS1_EE5beginEv, @function
_ZNKSt7__cxx114listI3AntSaIS1_EE5beginEv:
.LFB9402:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR [rbp-24], rdi	# this, this
	mov	rax, QWORD PTR fs:40	# tmp93,
	mov	QWORD PTR [rbp-8], rax	# D.132515, tmp93
	xor	eax, eax	# tmp93
	mov	rax, QWORD PTR [rbp-24]	# tmp90, this
	mov	rdx, QWORD PTR [rax]	# D.132514, this_2(D)->D.123817._M_impl._M_node.D.69288._M_next
	lea	rax, [rbp-16]	# tmp91,
	mov	rsi, rdx	#, D.132514
	mov	rdi, rax	#, tmp91
	call	_ZNSt20_List_const_iteratorI3AntEC1EPKNSt8__detail15_List_node_baseE	#
	mov	rax, QWORD PTR [rbp-16]	# D.132017, D.128639
	mov	rcx, QWORD PTR [rbp-8]	# tmp94, D.132515
	xor	rcx, QWORD PTR fs:40	# tmp94,
	je	.L267	#,
	call	__stack_chk_fail	#
.L267:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9402:
	.size	_ZNKSt7__cxx114listI3AntSaIS1_EE5beginEv, .-_ZNKSt7__cxx114listI3AntSaIS1_EE5beginEv
	.section	.text._ZNKSt7__cxx114listI3AntSaIS1_EE3endEv,"axG",@progbits,_ZNKSt7__cxx114listI3AntSaIS1_EE3endEv,comdat
	.align 2
	.weak	_ZNKSt7__cxx114listI3AntSaIS1_EE3endEv
	.type	_ZNKSt7__cxx114listI3AntSaIS1_EE3endEv, @function
_ZNKSt7__cxx114listI3AntSaIS1_EE3endEv:
.LFB9403:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR [rbp-24], rdi	# this, this
	mov	rax, QWORD PTR fs:40	# tmp92,
	mov	QWORD PTR [rbp-8], rax	# D.132517, tmp92
	xor	eax, eax	# tmp92
	mov	rdx, QWORD PTR [rbp-24]	# D.132516, this
	lea	rax, [rbp-16]	# tmp90,
	mov	rsi, rdx	#, D.132516
	mov	rdi, rax	#, tmp90
	call	_ZNSt20_List_const_iteratorI3AntEC1EPKNSt8__detail15_List_node_baseE	#
	mov	rax, QWORD PTR [rbp-16]	# D.132021, D.128641
	mov	rcx, QWORD PTR [rbp-8]	# tmp93, D.132517
	xor	rcx, QWORD PTR fs:40	# tmp93,
	je	.L270	#,
	call	__stack_chk_fail	#
.L270:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9403:
	.size	_ZNKSt7__cxx114listI3AntSaIS1_EE3endEv, .-_ZNKSt7__cxx114listI3AntSaIS1_EE3endEv
	.section	.text._ZNKSt20_List_const_iteratorI3AntEneERKS1_,"axG",@progbits,_ZNKSt20_List_const_iteratorI3AntEneERKS1_,comdat
	.align 2
	.weak	_ZNKSt20_List_const_iteratorI3AntEneERKS1_
	.type	_ZNKSt20_List_const_iteratorI3AntEneERKS1_, @function
_ZNKSt20_List_const_iteratorI3AntEneERKS1_:
.LFB9404:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	QWORD PTR [rbp-16], rsi	# __x, __x
	mov	rax, QWORD PTR [rbp-8]	# tmp91, this
	mov	rdx, QWORD PTR [rax]	# D.132518, this_2(D)->_M_node
	mov	rax, QWORD PTR [rbp-16]	# tmp92, __x
	mov	rax, QWORD PTR [rax]	# D.132518, __x_4(D)->_M_node
	cmp	rdx, rax	# D.132518, D.132518
	setne	al	#, D.132519
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9404:
	.size	_ZNKSt20_List_const_iteratorI3AntEneERKS1_, .-_ZNKSt20_List_const_iteratorI3AntEneERKS1_
	.section	.text._ZNSt14_List_iteratorI3AntEppEv,"axG",@progbits,_ZNSt14_List_iteratorI3AntEppEv,comdat
	.align 2
	.weak	_ZNSt14_List_iteratorI3AntEppEv
	.type	_ZNSt14_List_iteratorI3AntEppEv, @function
_ZNSt14_List_iteratorI3AntEppEv:
.LFB9405:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	rax, QWORD PTR [rbp-8]	# tmp91, this
	mov	rax, QWORD PTR [rax]	# D.132520, this_2(D)->_M_node
	mov	rdx, QWORD PTR [rax]	# D.132520, _3->_M_next
	mov	rax, QWORD PTR [rbp-8]	# tmp92, this
	mov	QWORD PTR [rax], rdx	# this_2(D)->_M_node, D.132520
	mov	rax, QWORD PTR [rbp-8]	# D.132521, this
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9405:
	.size	_ZNSt14_List_iteratorI3AntEppEv, .-_ZNSt14_List_iteratorI3AntEppEv
	.section	.text._ZNSt20_List_const_iteratorI3AntEppEv,"axG",@progbits,_ZNSt20_List_const_iteratorI3AntEppEv,comdat
	.align 2
	.weak	_ZNSt20_List_const_iteratorI3AntEppEv
	.type	_ZNSt20_List_const_iteratorI3AntEppEv, @function
_ZNSt20_List_const_iteratorI3AntEppEv:
.LFB9406:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	rax, QWORD PTR [rbp-8]	# tmp91, this
	mov	rax, QWORD PTR [rax]	# D.132522, this_2(D)->_M_node
	mov	rdx, QWORD PTR [rax]	# D.132523, _3->_M_next
	mov	rax, QWORD PTR [rbp-8]	# tmp92, this
	mov	QWORD PTR [rax], rdx	# this_2(D)->_M_node, D.132523
	mov	rax, QWORD PTR [rbp-8]	# D.132524, this
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9406:
	.size	_ZNSt20_List_const_iteratorI3AntEppEv, .-_ZNSt20_List_const_iteratorI3AntEppEv
	.section	.text._ZNKSt20_List_const_iteratorI3AntEdeEv,"axG",@progbits,_ZNKSt20_List_const_iteratorI3AntEdeEv,comdat
	.align 2
	.weak	_ZNKSt20_List_const_iteratorI3AntEdeEv
	.type	_ZNKSt20_List_const_iteratorI3AntEdeEv, @function
_ZNKSt20_List_const_iteratorI3AntEdeEv:
.LFB9407:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	rax, QWORD PTR [rbp-8]	# tmp90, this
	mov	rax, QWORD PTR [rax]	# D.132525, this_2(D)->_M_node
	add	rax, 16	# D.132526,
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9407:
	.size	_ZNKSt20_List_const_iteratorI3AntEdeEv, .-_ZNKSt20_List_const_iteratorI3AntEdeEv
	.section	.text._ZNKSt20_List_const_iteratorI3AntEeqERKS1_,"axG",@progbits,_ZNKSt20_List_const_iteratorI3AntEeqERKS1_,comdat
	.align 2
	.weak	_ZNKSt20_List_const_iteratorI3AntEeqERKS1_
	.type	_ZNKSt20_List_const_iteratorI3AntEeqERKS1_, @function
_ZNKSt20_List_const_iteratorI3AntEeqERKS1_:
.LFB9408:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	QWORD PTR [rbp-16], rsi	# __x, __x
	mov	rax, QWORD PTR [rbp-8]	# tmp91, this
	mov	rdx, QWORD PTR [rax]	# D.132527, this_2(D)->_M_node
	mov	rax, QWORD PTR [rbp-16]	# tmp92, __x
	mov	rax, QWORD PTR [rax]	# D.132527, __x_4(D)->_M_node
	cmp	rdx, rax	# D.132527, D.132527
	sete	al	#, D.132528
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9408:
	.size	_ZNKSt20_List_const_iteratorI3AntEeqERKS1_, .-_ZNKSt20_List_const_iteratorI3AntEeqERKS1_
	.section	.text._ZNSt7__cxx114listI3AntSaIS1_EE5eraseESt20_List_const_iteratorIS1_ES5_,"axG",@progbits,_ZNSt7__cxx114listI3AntSaIS1_EE5eraseESt20_List_const_iteratorIS1_ES5_,comdat
	.align 2
	.weak	_ZNSt7__cxx114listI3AntSaIS1_EE5eraseESt20_List_const_iteratorIS1_ES5_
	.type	_ZNSt7__cxx114listI3AntSaIS1_EE5eraseESt20_List_const_iteratorIS1_ES5_, @function
_ZNSt7__cxx114listI3AntSaIS1_EE5eraseESt20_List_const_iteratorIS1_ES5_:
.LFB9409:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 64	#,
	mov	QWORD PTR [rbp-40], rdi	# this, this
	mov	QWORD PTR [rbp-48], rsi	# __first, __first
	mov	QWORD PTR [rbp-64], rdx	# __last, __last
	mov	rax, QWORD PTR fs:40	# tmp101,
	mov	QWORD PTR [rbp-8], rax	# D.132530, tmp101
	xor	eax, eax	# tmp101
.L283:
	lea	rdx, [rbp-64]	# tmp90,
	lea	rax, [rbp-48]	# tmp91,
	mov	rsi, rdx	#, tmp90
	mov	rdi, rax	#, tmp91
	call	_ZNKSt20_List_const_iteratorI3AntEneERKS1_	#
	test	al, al	# D.132529
	je	.L282	#,
	mov	rdx, QWORD PTR [rbp-48]	# tmp92, __first
	mov	rax, QWORD PTR [rbp-40]	# tmp93, this
	mov	rsi, rdx	#, tmp92
	mov	rdi, rax	#, tmp93
	call	_ZNSt7__cxx114listI3AntSaIS1_EE5eraseESt20_List_const_iteratorIS1_E	#
	mov	QWORD PTR [rbp-32], rax	# D.128649, tmp95
	lea	rdx, [rbp-32]	# tmp96,
	lea	rax, [rbp-16]	# tmp97,
	mov	rsi, rdx	#, tmp96
	mov	rdi, rax	#, tmp97
	call	_ZNSt20_List_const_iteratorI3AntEC1ERKSt14_List_iteratorIS0_E	#
	mov	rax, QWORD PTR [rbp-16]	# tmp98, __first.49
	mov	QWORD PTR [rbp-48], rax	# __first, tmp98
	jmp	.L283	#
.L282:
	lea	rax, [rbp-64]	# tmp99,
	mov	rdi, rax	#, tmp99
	call	_ZNKSt20_List_const_iteratorI3AntE13_M_const_castEv	#
	mov	rcx, QWORD PTR [rbp-8]	# tmp102, D.132530
	xor	rcx, QWORD PTR fs:40	# tmp102,
	je	.L285	#,
	call	__stack_chk_fail	#
.L285:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9409:
	.size	_ZNSt7__cxx114listI3AntSaIS1_EE5eraseESt20_List_const_iteratorIS1_ES5_, .-_ZNSt7__cxx114listI3AntSaIS1_EE5eraseESt20_List_const_iteratorIS1_ES5_
	.section	.text._ZNSt7__cxx114listI3AntSaIS1_EE6insertISt20_List_const_iteratorIS1_EvEESt14_List_iteratorIS1_ES6_T_S9_,"axG",@progbits,_ZNSt7__cxx114listI3AntSaIS1_EE6insertISt20_List_const_iteratorIS1_EvEESt14_List_iteratorIS1_ES6_T_S9_,comdat
	.align 2
	.weak	_ZNSt7__cxx114listI3AntSaIS1_EE6insertISt20_List_const_iteratorIS1_EvEESt14_List_iteratorIS1_ES6_T_S9_
	.type	_ZNSt7__cxx114listI3AntSaIS1_EE6insertISt20_List_const_iteratorIS1_EvEESt14_List_iteratorIS1_ES6_T_S9_, @function
_ZNSt7__cxx114listI3AntSaIS1_EE6insertISt20_List_const_iteratorIS1_EvEESt14_List_iteratorIS1_ES6_T_S9_:
.LFB9410:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA9410
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	sub	rsp, 104	#,
	.cfi_offset 3, -24
	mov	QWORD PTR [rbp-72], rdi	# this, this
	mov	QWORD PTR [rbp-80], rsi	# __position, __position
	mov	QWORD PTR [rbp-96], rdx	# __first, __first
	mov	QWORD PTR [rbp-112], rcx	# __last, __last
	mov	rax, QWORD PTR fs:40	# tmp111,
	mov	QWORD PTR [rbp-24], rax	# D.132534, tmp111
	xor	eax, eax	# tmp111
	lea	rax, [rbp-64]	# tmp92,
	mov	rdx, QWORD PTR [rbp-72]	# tmp93, this
	mov	rsi, rdx	#, tmp93
	mov	rdi, rax	#, tmp92
	call	_ZNKSt7__cxx114listI3AntSaIS1_EE13get_allocatorEv	#
	lea	rcx, [rbp-64]	# tmp94,
	mov	rdx, QWORD PTR [rbp-112]	# tmp95, __last
	mov	rsi, QWORD PTR [rbp-96]	# tmp96, __first
	lea	rax, [rbp-48]	# tmp97,
	mov	rdi, rax	#, tmp97
.LEHB18:
	call	_ZNSt7__cxx114listI3AntSaIS1_EEC1ISt20_List_const_iteratorIS1_EvEET_S7_RKS2_	#
.LEHE18:
	lea	rax, [rbp-64]	# tmp98,
	mov	rdi, rax	#, tmp98
	call	_ZNSaI3AntED1Ev	#
	lea	rax, [rbp-48]	# tmp99,
	mov	rdi, rax	#, tmp99
	call	_ZNKSt7__cxx114listI3AntSaIS1_EE5emptyEv	#
	xor	eax, 1	# D.132532,
	test	al, al	# D.132532
	je	.L287	#,
	lea	rax, [rbp-48]	# tmp100,
	mov	rdi, rax	#, tmp100
	call	_ZNSt7__cxx114listI3AntSaIS1_EE5beginEv	#
	mov	QWORD PTR [rbp-64], rax	# __it, tmp102
	lea	rdx, [rbp-48]	# tmp103,
	mov	rcx, QWORD PTR [rbp-80]	# tmp104, __position
	mov	rax, QWORD PTR [rbp-72]	# tmp105, this
	mov	rsi, rcx	#, tmp104
	mov	rdi, rax	#, tmp105
	call	_ZNSt7__cxx114listI3AntSaIS1_EE6spliceESt20_List_const_iteratorIS1_ERS3_	#
	mov	rbx, QWORD PTR [rbp-64]	# D.132056, __it
	jmp	.L288	#
.L287:
	lea	rax, [rbp-80]	# tmp106,
	mov	rdi, rax	#, tmp106
	call	_ZNKSt20_List_const_iteratorI3AntE13_M_const_castEv	#
	mov	rbx, rax	# D.132056,
.L288:
	lea	rax, [rbp-48]	# tmp107,
	mov	rdi, rax	#, tmp107
	call	_ZNSt7__cxx114listI3AntSaIS1_EED1Ev	#
	mov	rax, rbx	# <retval>, D.132056
	mov	rbx, QWORD PTR [rbp-24]	# tmp112, D.132534
	xor	rbx, QWORD PTR fs:40	# tmp112,
	je	.L291	#,
	jmp	.L293	#
.L292:
	mov	rbx, rax	# tmp110,
	lea	rax, [rbp-64]	# tmp109,
	mov	rdi, rax	#, tmp109
	call	_ZNSaI3AntED1Ev	#
	mov	rax, rbx	# D.132531, tmp110
	mov	rdi, rax	#, D.132531
.LEHB19:
	call	_Unwind_Resume	#
.LEHE19:
.L293:
	call	__stack_chk_fail	#
.L291:
	add	rsp, 104	#,
	pop	rbx	#
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9410:
	.section	.gcc_except_table
.LLSDA9410:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9410-.LLSDACSB9410
.LLSDACSB9410:
	.uleb128 .LEHB18-.LFB9410
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L292-.LFB9410
	.uleb128 0
	.uleb128 .LEHB19-.LFB9410
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
.LLSDACSE9410:
	.section	.text._ZNSt7__cxx114listI3AntSaIS1_EE6insertISt20_List_const_iteratorIS1_EvEESt14_List_iteratorIS1_ES6_T_S9_,"axG",@progbits,_ZNSt7__cxx114listI3AntSaIS1_EE6insertISt20_List_const_iteratorIS1_EvEESt14_List_iteratorIS1_ES6_T_S9_,comdat
	.size	_ZNSt7__cxx114listI3AntSaIS1_EE6insertISt20_List_const_iteratorIS1_EvEESt14_List_iteratorIS1_ES6_T_S9_, .-_ZNSt7__cxx114listI3AntSaIS1_EE6insertISt20_List_const_iteratorIS1_EvEESt14_List_iteratorIS1_ES6_T_S9_
	.section	.text._ZN2cv4MatxIdLi4ELi1EEC2Ev,"axG",@progbits,_ZN2cv4MatxIdLi4ELi1EEC5Ev,comdat
	.align 2
	.weak	_ZN2cv4MatxIdLi4ELi1EEC2Ev
	.type	_ZN2cv4MatxIdLi4ELi1EEC2Ev, @function
_ZN2cv4MatxIdLi4ELi1EEC2Ev:
.LFB9442:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-24], rdi	# this, this
	mov	DWORD PTR [rbp-4], 0	# i,
.L296:
	cmp	DWORD PTR [rbp-4], 3	# i,
	jg	.L297	#,
	mov	rax, QWORD PTR [rbp-24]	# tmp87, this
	mov	edx, DWORD PTR [rbp-4]	# tmp89, i
	movsx	rdx, edx	# tmp88, tmp89
	pxor	xmm0, xmm0	# tmp90
	movsd	QWORD PTR [rax+rdx*8], xmm0	# this_5(D)->val, tmp90
	add	DWORD PTR [rbp-4], 1	# i,
	jmp	.L296	#
.L297:
	nop
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9442:
	.size	_ZN2cv4MatxIdLi4ELi1EEC2Ev, .-_ZN2cv4MatxIdLi4ELi1EEC2Ev
	.weak	_ZN2cv4MatxIdLi4ELi1EEC1Ev
	.set	_ZN2cv4MatxIdLi4ELi1EEC1Ev,_ZN2cv4MatxIdLi4ELi1EEC2Ev
	.section	.text._ZNSt8__detail5__modImLm2147483647ELm1ELm0EEET_S1_,"axG",@progbits,_ZNSt8__detail5__modImLm2147483647ELm1ELm0EEET_S1_,comdat
	.weak	_ZNSt8__detail5__modImLm2147483647ELm1ELm0EEET_S1_
	.type	_ZNSt8__detail5__modImLm2147483647ELm1ELm0EEET_S1_, @function
_ZNSt8__detail5__modImLm2147483647ELm1ELm0EEET_S1_:
.LFB9484:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR [rbp-8], rdi	# __x, __x
	mov	rax, QWORD PTR [rbp-8]	# tmp89, __x
	mov	rdi, rax	#, tmp89
	call	_ZNSt8__detail4_ModImLm2147483647ELm1ELm0ELb1ELb1EE6__calcEm	#
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9484:
	.size	_ZNSt8__detail5__modImLm2147483647ELm1ELm0EEET_S1_, .-_ZNSt8__detail5__modImLm2147483647ELm1ELm0EEET_S1_
	.section	.text._ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEfEC2ERS2_,"axG",@progbits,_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEfEC5ERS2_,comdat
	.align 2
	.weak	_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEfEC2ERS2_
	.type	_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEfEC2ERS2_, @function
_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEfEC2ERS2_:
.LFB9486:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	QWORD PTR [rbp-16], rsi	# __g, __g
	mov	rax, QWORD PTR [rbp-8]	# tmp87, this
	mov	rdx, QWORD PTR [rbp-16]	# tmp88, __g
	mov	QWORD PTR [rax], rdx	# this_2(D)->_M_g, tmp88
	nop
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9486:
	.size	_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEfEC2ERS2_, .-_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEfEC2ERS2_
	.weak	_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEfEC1ERS2_
	.set	_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEfEC1ERS2_,_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEfEC2ERS2_
	.section	.text._ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEfEclEv,"axG",@progbits,_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEfEclEv,comdat
	.align 2
	.weak	_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEfEclEv
	.type	_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEfEclEv, @function
_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEfEclEv:
.LFB9488:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	rax, QWORD PTR [rbp-8]	# tmp90, this
	mov	rax, QWORD PTR [rax]	# D.132537, this_2(D)->_M_g
	mov	rdi, rax	#, D.132537
	call	_ZSt18generate_canonicalIfLm24ESt26linear_congruential_engineImLm16807ELm0ELm2147483647EEET_RT1_	#
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9488:
	.size	_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEfEclEv, .-_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEfEclEv
	.section	.text._ZNKSt19normal_distributionIfE10param_type6stddevEv,"axG",@progbits,_ZNKSt19normal_distributionIfE10param_type6stddevEv,comdat
	.align 2
	.weak	_ZNKSt19normal_distributionIfE10param_type6stddevEv
	.type	_ZNKSt19normal_distributionIfE10param_type6stddevEv, @function
_ZNKSt19normal_distributionIfE10param_type6stddevEv:
.LFB9489:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	rax, QWORD PTR [rbp-8]	# tmp89, this
	movss	xmm0, DWORD PTR [rax+4]	# D.132539, this_2(D)->_M_stddev
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9489:
	.size	_ZNKSt19normal_distributionIfE10param_type6stddevEv, .-_ZNKSt19normal_distributionIfE10param_type6stddevEv
	.section	.text._ZNKSt19normal_distributionIfE10param_type4meanEv,"axG",@progbits,_ZNKSt19normal_distributionIfE10param_type4meanEv,comdat
	.align 2
	.weak	_ZNKSt19normal_distributionIfE10param_type4meanEv
	.type	_ZNKSt19normal_distributionIfE10param_type4meanEv, @function
_ZNKSt19normal_distributionIfE10param_type4meanEv:
.LFB9490:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	rax, QWORD PTR [rbp-8]	# tmp89, this
	movss	xmm0, DWORD PTR [rax]	# D.132540, this_2(D)->_M_mean
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9490:
	.size	_ZNKSt19normal_distributionIfE10param_type4meanEv, .-_ZNKSt19normal_distributionIfE10param_type4meanEv
	.section	.text._ZNSt7__cxx1110_List_baseI3AntSaIS1_EE10_List_implC2Ev,"axG",@progbits,_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE10_List_implC5Ev,comdat
	.align 2
	.weak	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE10_List_implC2Ev
	.type	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE10_List_implC2Ev, @function
_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE10_List_implC2Ev:
.LFB9492:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	rax, QWORD PTR [rbp-8]	# tmp88, this
	mov	rdi, rax	#, tmp88
	call	_ZNSaISt10_List_nodeI3AntEEC2Ev	#
	mov	rax, QWORD PTR [rbp-8]	# D.132541, this
	mov	rdi, rax	#, D.132541
	call	_ZNSt10_List_nodeImEC1IJEEEDpOT_	#
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9492:
	.size	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE10_List_implC2Ev, .-_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE10_List_implC2Ev
	.weak	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE10_List_implC1Ev
	.set	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE10_List_implC1Ev,_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE10_List_implC2Ev
	.section	.text._ZNSt7__cxx1110_List_baseI3AntSaIS1_EE7_M_initEv,"axG",@progbits,_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE7_M_initEv,comdat
	.align 2
	.weak	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE7_M_initEv
	.type	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE7_M_initEv, @function
_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE7_M_initEv:
.LFB9494:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	rdx, QWORD PTR [rbp-8]	# D.132542, this
	mov	rax, QWORD PTR [rbp-8]	# tmp89, this
	mov	QWORD PTR [rax], rdx	# this_1(D)->_M_impl._M_node.D.69288._M_next, D.132542
	mov	rdx, QWORD PTR [rbp-8]	# D.132542, this
	mov	rax, QWORD PTR [rbp-8]	# tmp90, this
	mov	QWORD PTR [rax+8], rdx	# this_1(D)->_M_impl._M_node.D.69288._M_prev, D.132542
	mov	rax, QWORD PTR [rbp-8]	# tmp91, this
	mov	esi, 0	#,
	mov	rdi, rax	#, tmp91
	call	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_set_sizeEm	#
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9494:
	.size	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE7_M_initEv, .-_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE7_M_initEv
	.section	.text._ZNSt7__cxx114listI3AntSaIS1_EE14_M_create_nodeIJRKS1_EEEPSt10_List_nodeIS1_EDpOT_,"axG",@progbits,_ZNSt7__cxx114listI3AntSaIS1_EE14_M_create_nodeIJRKS1_EEEPSt10_List_nodeIS1_EDpOT_,comdat
	.align 2
	.weak	_ZNSt7__cxx114listI3AntSaIS1_EE14_M_create_nodeIJRKS1_EEEPSt10_List_nodeIS1_EDpOT_
	.type	_ZNSt7__cxx114listI3AntSaIS1_EE14_M_create_nodeIJRKS1_EEEPSt10_List_nodeIS1_EDpOT_, @function
_ZNSt7__cxx114listI3AntSaIS1_EE14_M_create_nodeIJRKS1_EEEPSt10_List_nodeIS1_EDpOT_:
.LFB9501:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA9501
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	sub	rsp, 40	#,
	.cfi_offset 3, -24
	mov	QWORD PTR [rbp-40], rdi	# this, this
	mov	QWORD PTR [rbp-48], rsi	# __args#0, __args#0
	mov	rax, QWORD PTR [rbp-40]	# D.132544, this
	mov	rdi, rax	#, D.132544
.LEHB20:
	call	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_get_nodeEv	#
.LEHE20:
	mov	QWORD PTR [rbp-24], rax	# __p, D.132545
	mov	rax, QWORD PTR [rbp-48]	# tmp97, __args#0
	mov	rdi, rax	#, tmp97
	call	_ZSt7forwardIRK3AntEOT_RNSt16remove_referenceIS3_E4typeE	#
	mov	rbx, rax	# D.132546,
	mov	rax, QWORD PTR [rbp-40]	# D.132544, this
	mov	rdi, rax	#, D.132544
	call	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE21_M_get_Node_allocatorEv	#
	mov	rcx, rax	# D.132547,
	mov	rax, QWORD PTR [rbp-24]	# tmp98, __p
	mov	rdx, rbx	#, D.132546
	mov	rsi, rax	#, tmp98
	mov	rdi, rcx	#, D.132547
.LEHB21:
	call	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEE9constructIS3_JRKS2_EEEvPT_DpOT0_	#
.LEHE21:
	mov	rax, QWORD PTR [rbp-24]	# D.132545, __p
	jmp	.L315	#
.L313:
	mov	rdi, rax	#, D.132548
	call	__cxa_begin_catch	#
	mov	rax, QWORD PTR [rbp-40]	# D.132544, this
	mov	rdx, QWORD PTR [rbp-24]	# tmp101, __p
	mov	rsi, rdx	#, tmp101
	mov	rdi, rax	#, D.132544
	call	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_put_nodeEPSt10_List_nodeIS1_E	#
.LEHB22:
	call	__cxa_rethrow	#
.LEHE22:
.L314:
	mov	rbx, rax	# tmp102,
	call	__cxa_end_catch	#
	mov	rax, rbx	# D.132543, tmp102
	mov	rdi, rax	#, D.132543
.LEHB23:
	call	_Unwind_Resume	#
.LEHE23:
.L315:
	add	rsp, 40	#,
	pop	rbx	#
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9501:
	.section	.gcc_except_table
	.align 4
.LLSDA9501:
	.byte	0xff
	.byte	0x3
	.uleb128 .LLSDATT9501-.LLSDATTD9501
.LLSDATTD9501:
	.byte	0x1
	.uleb128 .LLSDACSE9501-.LLSDACSB9501
.LLSDACSB9501:
	.uleb128 .LEHB20-.LFB9501
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB21-.LFB9501
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L313-.LFB9501
	.uleb128 0x1
	.uleb128 .LEHB22-.LFB9501
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L314-.LFB9501
	.uleb128 0
	.uleb128 .LEHB23-.LFB9501
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
.LLSDACSE9501:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT9501:
	.section	.text._ZNSt7__cxx114listI3AntSaIS1_EE14_M_create_nodeIJRKS1_EEEPSt10_List_nodeIS1_EDpOT_,"axG",@progbits,_ZNSt7__cxx114listI3AntSaIS1_EE14_M_create_nodeIJRKS1_EEEPSt10_List_nodeIS1_EDpOT_,comdat
	.size	_ZNSt7__cxx114listI3AntSaIS1_EE14_M_create_nodeIJRKS1_EEEPSt10_List_nodeIS1_EDpOT_, .-_ZNSt7__cxx114listI3AntSaIS1_EE14_M_create_nodeIJRKS1_EEEPSt10_List_nodeIS1_EDpOT_
	.weak	_ZNSt7__cxx114listI3AntSaIS1_EE14_M_create_nodeIIRKS1_EEEPSt10_List_nodeIS1_EDpOT_
	.set	_ZNSt7__cxx114listI3AntSaIS1_EE14_M_create_nodeIIRKS1_EEEPSt10_List_nodeIS1_EDpOT_,_ZNSt7__cxx114listI3AntSaIS1_EE14_M_create_nodeIJRKS1_EEEPSt10_List_nodeIS1_EDpOT_
	.section	.text._ZNSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_inc_sizeEm,"axG",@progbits,_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_inc_sizeEm,comdat
	.align 2
	.weak	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_inc_sizeEm
	.type	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_inc_sizeEm, @function
_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_inc_sizeEm:
.LFB9502:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	QWORD PTR [rbp-16], rsi	# __n, __n
	mov	rax, QWORD PTR [rbp-8]	# tmp89, this
	mov	rdx, QWORD PTR [rax+16]	# D.132549, this_2(D)->_M_impl._M_node._M_data
	mov	rax, QWORD PTR [rbp-16]	# tmp90, __n
	add	rdx, rax	# D.132549, tmp90
	mov	rax, QWORD PTR [rbp-8]	# tmp91, this
	mov	QWORD PTR [rax+16], rdx	# this_2(D)->_M_impl._M_node._M_data, D.132549
	nop
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9502:
	.size	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_inc_sizeEm, .-_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_inc_sizeEm
	.section	.text._ZNSt7__cxx114listI3AntSaIS1_EE6spliceESt20_List_const_iteratorIS1_EOS3_S5_,"axG",@progbits,_ZNSt7__cxx114listI3AntSaIS1_EE6spliceESt20_List_const_iteratorIS1_EOS3_S5_,comdat
	.align 2
	.weak	_ZNSt7__cxx114listI3AntSaIS1_EE6spliceESt20_List_const_iteratorIS1_EOS3_S5_
	.type	_ZNSt7__cxx114listI3AntSaIS1_EE6spliceESt20_List_const_iteratorIS1_EOS3_S5_, @function
_ZNSt7__cxx114listI3AntSaIS1_EE6spliceESt20_List_const_iteratorIS1_EOS3_S5_:
.LFB9503:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	sub	rsp, 72	#,
	.cfi_offset 3, -24
	mov	QWORD PTR [rbp-56], rdi	# this, this
	mov	QWORD PTR [rbp-64], rsi	# __position, __position
	mov	QWORD PTR [rbp-72], rdx	# __x, __x
	mov	QWORD PTR [rbp-80], rcx	# __i, __i
	mov	rax, QWORD PTR fs:40	# tmp112,
	mov	QWORD PTR [rbp-24], rax	# D.132552, tmp112
	xor	eax, eax	# tmp112
	lea	rax, [rbp-80]	# tmp95,
	mov	rdi, rax	#, tmp95
	call	_ZNKSt20_List_const_iteratorI3AntE13_M_const_castEv	#
	mov	QWORD PTR [rbp-48], rax	# __j, tmp97
	lea	rax, [rbp-48]	# tmp98,
	mov	rdi, rax	#, tmp98
	call	_ZNSt14_List_iteratorI3AntEppEv	#
	mov	ebx, 0	# D.132550,
	lea	rdx, [rbp-80]	# tmp99,
	lea	rax, [rbp-64]	# tmp100,
	mov	rsi, rdx	#, tmp99
	mov	rdi, rax	#, tmp100
	call	_ZNKSt20_List_const_iteratorI3AntEeqERKS1_	#
	test	al, al	# D.132550
	jne	.L318	#,
	lea	rdx, [rbp-48]	# tmp101,
	lea	rax, [rbp-32]	# tmp102,
	mov	rsi, rdx	#, tmp101
	mov	rdi, rax	#, tmp102
	call	_ZNSt20_List_const_iteratorI3AntEC1ERKSt14_List_iteratorIS0_E	#
	mov	ebx, 1	# D.132550,
	lea	rdx, [rbp-32]	# tmp103,
	lea	rax, [rbp-64]	# tmp104,
	mov	rsi, rdx	#, tmp103
	mov	rdi, rax	#, tmp104
	call	_ZNKSt20_List_const_iteratorI3AntEeqERKS1_	#
	test	al, al	# D.132550
	je	.L319	#,
.L318:
	mov	eax, 1	# D.132550,
	jmp	.L320	#
.L319:
	mov	eax, 0	# D.132550,
.L320:
	test	bl, bl	# D.132550
	test	al, al	# D.132550
	jne	.L326	#,
	mov	rax, QWORD PTR [rbp-56]	# tmp105, this
	cmp	rax, QWORD PTR [rbp-72]	# tmp105, __x
	je	.L324	#,
	mov	rdx, QWORD PTR [rbp-72]	# tmp106, __x
	mov	rax, QWORD PTR [rbp-56]	# tmp107, this
	mov	rsi, rdx	#, tmp106
	mov	rdi, rax	#, tmp107
	call	_ZNSt7__cxx114listI3AntSaIS1_EE25_M_check_equal_allocatorsERS3_	#
.L324:
	lea	rax, [rbp-80]	# tmp108,
	mov	rdi, rax	#, tmp108
	call	_ZNKSt20_List_const_iteratorI3AntE13_M_const_castEv	#
	mov	rbx, rax	# D.131722,
	lea	rax, [rbp-64]	# tmp109,
	mov	rdi, rax	#, tmp109
	call	_ZNKSt20_List_const_iteratorI3AntE13_M_const_castEv	#
	mov	rsi, rax	# D.131723,
	mov	rdx, QWORD PTR [rbp-48]	# tmp110, __j
	mov	rax, QWORD PTR [rbp-56]	# tmp111, this
	mov	rcx, rdx	#, tmp110
	mov	rdx, rbx	#, D.131722
	mov	rdi, rax	#, tmp111
	call	_ZNSt7__cxx114listI3AntSaIS1_EE11_M_transferESt14_List_iteratorIS1_ES5_S5_	#
	mov	rax, QWORD PTR [rbp-56]	# D.132551, this
	mov	esi, 1	#,
	mov	rdi, rax	#, D.132551
	call	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_inc_sizeEm	#
	mov	rax, QWORD PTR [rbp-72]	# D.132551, __x
	mov	esi, 1	#,
	mov	rdi, rax	#, D.132551
	call	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_dec_sizeEm	#
	jmp	.L317	#
.L326:
	nop
.L317:
	mov	rax, QWORD PTR [rbp-24]	# tmp113, D.132552
	xor	rax, QWORD PTR fs:40	# tmp113,
	je	.L325	#,
	call	__stack_chk_fail	#
.L325:
	add	rsp, 72	#,
	pop	rbx	#
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9503:
	.size	_ZNSt7__cxx114listI3AntSaIS1_EE6spliceESt20_List_const_iteratorIS1_EOS3_S5_, .-_ZNSt7__cxx114listI3AntSaIS1_EE6spliceESt20_List_const_iteratorIS1_EOS3_S5_
	.section	.text._ZNSt7__cxx114listI3AntSaIS1_EE5mergeIPFbS1_S1_EEEvOS3_T_,"axG",@progbits,_ZNSt7__cxx114listI3AntSaIS1_EE5mergeIPFbS1_S1_EEEvOS3_T_,comdat
	.align 2
	.weak	_ZNSt7__cxx114listI3AntSaIS1_EE5mergeIPFbS1_S1_EEEvOS3_T_
	.type	_ZNSt7__cxx114listI3AntSaIS1_EE5mergeIPFbS1_S1_EEEvOS3_T_, @function
_ZNSt7__cxx114listI3AntSaIS1_EE5mergeIPFbS1_S1_EEEvOS3_T_:
.LFB9504:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	sub	rsp, 120	#,
	.cfi_offset 3, -24
	mov	QWORD PTR [rbp-104], rdi	# this, this
	mov	QWORD PTR [rbp-112], rsi	# __x, __x
	mov	QWORD PTR [rbp-120], rdx	# __comp, __comp
	mov	rax, QWORD PTR fs:40	# tmp144,
	mov	QWORD PTR [rbp-24], rax	# D.132558, tmp144
	xor	eax, eax	# tmp144
	mov	rax, QWORD PTR [rbp-104]	# tmp99, this
	cmp	rax, QWORD PTR [rbp-112]	# tmp99, __x
	je	.L337	#,
	mov	rdx, QWORD PTR [rbp-112]	# tmp100, __x
	mov	rax, QWORD PTR [rbp-104]	# tmp101, this
	mov	rsi, rdx	#, tmp100
	mov	rdi, rax	#, tmp101
	call	_ZNSt7__cxx114listI3AntSaIS1_EE25_M_check_equal_allocatorsERS3_	#
	mov	rax, QWORD PTR [rbp-104]	# tmp102, this
	mov	rdi, rax	#, tmp102
	call	_ZNSt7__cxx114listI3AntSaIS1_EE5beginEv	#
	mov	QWORD PTR [rbp-96], rax	# __first1, tmp104
	mov	rax, QWORD PTR [rbp-104]	# tmp105, this
	mov	rdi, rax	#, tmp105
	call	_ZNSt7__cxx114listI3AntSaIS1_EE3endEv	#
	mov	QWORD PTR [rbp-80], rax	# __last1, tmp107
	mov	rax, QWORD PTR [rbp-112]	# tmp108, __x
	mov	rdi, rax	#, tmp108
	call	_ZNSt7__cxx114listI3AntSaIS1_EE5beginEv	#
	mov	QWORD PTR [rbp-64], rax	# __first2, tmp110
	mov	rax, QWORD PTR [rbp-112]	# tmp111, __x
	mov	rdi, rax	#, tmp111
	call	_ZNSt7__cxx114listI3AntSaIS1_EE3endEv	#
	mov	QWORD PTR [rbp-48], rax	# __last2, tmp113
.L334:
	lea	rdx, [rbp-80]	# tmp114,
	lea	rax, [rbp-96]	# tmp115,
	mov	rsi, rdx	#, tmp114
	mov	rdi, rax	#, tmp115
	call	_ZNKSt14_List_iteratorI3AntEneERKS1_	#
	test	al, al	# D.132553
	je	.L329	#,
	lea	rdx, [rbp-48]	# tmp116,
	lea	rax, [rbp-64]	# tmp117,
	mov	rsi, rdx	#, tmp116
	mov	rdi, rax	#, tmp117
	call	_ZNKSt14_List_iteratorI3AntEneERKS1_	#
	test	al, al	# D.132553
	je	.L329	#,
	mov	eax, 1	# D.132553,
	jmp	.L330	#
.L329:
	mov	eax, 0	# D.132553,
.L330:
	test	al, al	# D.132553
	je	.L331	#,
	lea	rax, [rbp-96]	# tmp118,
	mov	rdi, rax	#, tmp118
	call	_ZNKSt14_List_iteratorI3AntEdeEv	#
	mov	rbx, rax	# D.132554,
	lea	rax, [rbp-64]	# tmp119,
	mov	rdi, rax	#, tmp119
	call	_ZNKSt14_List_iteratorI3AntEdeEv	#
	mov	r8, rax	# D.132554,
	sub	rsp, 1064	#,
	mov	rax, rsp	# tmp120,
	mov	rdx, rax	# tmp121, tmp120
	mov	rax, rbx	# tmp122, D.132554
	mov	ecx, 132	# tmp123,
	mov	rdi, rdx	# tmp121, tmp121
	mov	rsi, rax	# tmp122, tmp122
	rep movsq
	mov	rax, rsi	# tmp122, tmp122
	mov	rdx, rdi	# tmp121, tmp121
	mov	ecx, DWORD PTR [rax]	# tmp124, MEM[(const struct Ant &)_24]
	mov	DWORD PTR [rdx], ecx	#, tmp124
	lea	rdx, [rdx+4]	# tmp121,
	lea	rax, [rax+4]	# tmp122,
	sub	rsp, 1064	#,
	mov	rax, rsp	# tmp125,
	mov	rdx, rax	# tmp126, tmp125
	mov	rax, r8	# tmp127, D.132554
	mov	ecx, 132	# tmp128,
	mov	rdi, rdx	# tmp126, tmp126
	mov	rsi, rax	# tmp127, tmp127
	rep movsq
	mov	rax, rsi	# tmp127, tmp127
	mov	rdx, rdi	# tmp126, tmp126
	mov	ecx, DWORD PTR [rax]	# tmp129, MEM[(const struct Ant &)_26]
	mov	DWORD PTR [rdx], ecx	#, tmp129
	lea	rdx, [rdx+4]	# tmp126,
	lea	rax, [rax+4]	# tmp127,
	mov	rax, QWORD PTR [rbp-120]	# tmp130, __comp
	call	rax	# tmp130
	add	rsp, 2128	#,
	test	al, al	# D.132553
	je	.L332	#,
	mov	rax, QWORD PTR [rbp-64]	# tmp131, __first2
	mov	QWORD PTR [rbp-32], rax	# __next, tmp131
	lea	rax, [rbp-32]	# tmp132,
	mov	rdi, rax	#, tmp132
	call	_ZNSt14_List_iteratorI3AntEppEv	#
	mov	rcx, rax	# D.132555,
	mov	rdx, QWORD PTR [rbp-64]	# tmp133, __first2
	mov	rsi, QWORD PTR [rbp-96]	# tmp134, __first1
	mov	rax, QWORD PTR [rbp-104]	# tmp135, this
	mov	rcx, QWORD PTR [rcx]	#, MEM[(const struct _List_iterator &)_33]
	mov	rdi, rax	#, tmp135
	call	_ZNSt7__cxx114listI3AntSaIS1_EE11_M_transferESt14_List_iteratorIS1_ES5_S5_	#
	mov	rax, QWORD PTR [rbp-32]	# tmp136, __next
	mov	QWORD PTR [rbp-64], rax	# __first2, tmp136
	jmp	.L334	#
.L332:
	lea	rax, [rbp-96]	# tmp137,
	mov	rdi, rax	#, tmp137
	call	_ZNSt14_List_iteratorI3AntEppEv	#
	jmp	.L334	#
.L331:
	lea	rdx, [rbp-48]	# tmp138,
	lea	rax, [rbp-64]	# tmp139,
	mov	rsi, rdx	#, tmp138
	mov	rdi, rax	#, tmp139
	call	_ZNKSt14_List_iteratorI3AntEneERKS1_	#
	test	al, al	# D.132553
	je	.L335	#,
	mov	rcx, QWORD PTR [rbp-48]	# tmp140, __last2
	mov	rdx, QWORD PTR [rbp-64]	# tmp141, __first2
	mov	rsi, QWORD PTR [rbp-80]	# tmp142, __last1
	mov	rax, QWORD PTR [rbp-104]	# tmp143, this
	mov	rdi, rax	#, tmp143
	call	_ZNSt7__cxx114listI3AntSaIS1_EE11_M_transferESt14_List_iteratorIS1_ES5_S5_	#
.L335:
	mov	rax, QWORD PTR [rbp-112]	# D.132556, __x
	mov	rdi, rax	#, D.132556
	call	_ZNKSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_get_sizeEv	#
	mov	rdx, rax	# D.132557,
	mov	rax, QWORD PTR [rbp-104]	# D.132556, this
	mov	rsi, rdx	#, D.132557
	mov	rdi, rax	#, D.132556
	call	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_inc_sizeEm	#
	mov	rax, QWORD PTR [rbp-112]	# D.132556, __x
	mov	esi, 0	#,
	mov	rdi, rax	#, D.132556
	call	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_set_sizeEm	#
.L337:
	nop
	mov	rax, QWORD PTR [rbp-24]	# tmp145, D.132558
	xor	rax, QWORD PTR fs:40	# tmp145,
	je	.L336	#,
	call	__stack_chk_fail	#
.L336:
	mov	rbx, QWORD PTR [rbp-8]	#,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9504:
	.size	_ZNSt7__cxx114listI3AntSaIS1_EE5mergeIPFbS1_S1_EEEvOS3_T_, .-_ZNSt7__cxx114listI3AntSaIS1_EE5mergeIPFbS1_S1_EEEvOS3_T_
	.section	.text._ZNKSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_get_sizeEv,"axG",@progbits,_ZNKSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_get_sizeEv,comdat
	.align 2
	.weak	_ZNKSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_get_sizeEv
	.type	_ZNKSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_get_sizeEv, @function
_ZNKSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_get_sizeEv:
.LFB9505:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	rax, QWORD PTR [rbp-8]	# tmp89, this
	mov	rax, QWORD PTR [rax+16]	# D.132559, this_2(D)->_M_impl._M_node._M_data
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9505:
	.size	_ZNKSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_get_sizeEv, .-_ZNKSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_get_sizeEv
	.section	.text._ZNSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_set_sizeEm,"axG",@progbits,_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_set_sizeEm,comdat
	.align 2
	.weak	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_set_sizeEm
	.type	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_set_sizeEm, @function
_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_set_sizeEm:
.LFB9506:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	QWORD PTR [rbp-16], rsi	# __n, __n
	mov	rax, QWORD PTR [rbp-8]	# tmp87, this
	mov	rdx, QWORD PTR [rbp-16]	# tmp88, __n
	mov	QWORD PTR [rax+16], rdx	# this_2(D)->_M_impl._M_node._M_data, tmp88
	nop
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9506:
	.size	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_set_sizeEm, .-_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_set_sizeEm
	.section	.text._ZNSt12__alloc_swapISaISt10_List_nodeI3AntEELb1EE8_S_do_itERS3_S5_,"axG",@progbits,_ZNSt12__alloc_swapISaISt10_List_nodeI3AntEELb1EE8_S_do_itERS3_S5_,comdat
	.weak	_ZNSt12__alloc_swapISaISt10_List_nodeI3AntEELb1EE8_S_do_itERS3_S5_
	.type	_ZNSt12__alloc_swapISaISt10_List_nodeI3AntEELb1EE8_S_do_itERS3_S5_, @function
_ZNSt12__alloc_swapISaISt10_List_nodeI3AntEELb1EE8_S_do_itERS3_S5_:
.LFB9507:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# D.128618, D.128618
	mov	QWORD PTR [rbp-16], rsi	# D.128619, D.128619
	nop
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9507:
	.size	_ZNSt12__alloc_swapISaISt10_List_nodeI3AntEELb1EE8_S_do_itERS3_S5_, .-_ZNSt12__alloc_swapISaISt10_List_nodeI3AntEELb1EE8_S_do_itERS3_S5_
	.section	.text._ZNSt7__cxx1110_List_baseI3AntSaIS1_EE21_M_get_Node_allocatorEv,"axG",@progbits,_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE21_M_get_Node_allocatorEv,comdat
	.align 2
	.weak	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE21_M_get_Node_allocatorEv
	.type	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE21_M_get_Node_allocatorEv, @function
_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE21_M_get_Node_allocatorEv:
.LFB9508:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	rax, QWORD PTR [rbp-8]	# D.132560, this
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9508:
	.size	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE21_M_get_Node_allocatorEv, .-_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE21_M_get_Node_allocatorEv
	.section	.text._ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEED2Ev, @function
_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEED2Ev:
.LFB9510:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	nop
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9510:
	.size	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEED2Ev, .-_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEED1Ev,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEED2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEE7destroyIS3_EEvPT_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEE7destroyIS3_EEvPT_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEE7destroyIS3_EEvPT_
	.type	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEE7destroyIS3_EEvPT_, @function
_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEE7destroyIS3_EEvPT_:
.LFB9512:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	QWORD PTR [rbp-16], rsi	# __p, __p
	nop
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9512:
	.size	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEE7destroyIS3_EEvPT_, .-_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEE7destroyIS3_EEvPT_
	.section	.text._ZNSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_put_nodeEPSt10_List_nodeIS1_E,"axG",@progbits,_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_put_nodeEPSt10_List_nodeIS1_E,comdat
	.align 2
	.weak	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_put_nodeEPSt10_List_nodeIS1_E
	.type	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_put_nodeEPSt10_List_nodeIS1_E, @function
_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_put_nodeEPSt10_List_nodeIS1_E:
.LFB9513:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	QWORD PTR [rbp-16], rsi	# __p, __p
	mov	rax, QWORD PTR [rbp-8]	# D.132561, this
	mov	rcx, QWORD PTR [rbp-16]	# tmp88, __p
	mov	edx, 1	#,
	mov	rsi, rcx	#, tmp88
	mov	rdi, rax	#, D.132561
	call	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEE10deallocateEPS3_m	#
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9513:
	.size	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_put_nodeEPSt10_List_nodeIS1_E, .-_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_put_nodeEPSt10_List_nodeIS1_E
	.section	.text._ZNSt20_List_const_iteratorI3AntEC2EPKNSt8__detail15_List_node_baseE,"axG",@progbits,_ZNSt20_List_const_iteratorI3AntEC5EPKNSt8__detail15_List_node_baseE,comdat
	.align 2
	.weak	_ZNSt20_List_const_iteratorI3AntEC2EPKNSt8__detail15_List_node_baseE
	.type	_ZNSt20_List_const_iteratorI3AntEC2EPKNSt8__detail15_List_node_baseE, @function
_ZNSt20_List_const_iteratorI3AntEC2EPKNSt8__detail15_List_node_baseE:
.LFB9515:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	QWORD PTR [rbp-16], rsi	# __x, __x
	mov	rax, QWORD PTR [rbp-8]	# tmp87, this
	mov	rdx, QWORD PTR [rbp-16]	# tmp88, __x
	mov	QWORD PTR [rax], rdx	# this_2(D)->_M_node, tmp88
	nop
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9515:
	.size	_ZNSt20_List_const_iteratorI3AntEC2EPKNSt8__detail15_List_node_baseE, .-_ZNSt20_List_const_iteratorI3AntEC2EPKNSt8__detail15_List_node_baseE
	.weak	_ZNSt20_List_const_iteratorI3AntEC1EPKNSt8__detail15_List_node_baseE
	.set	_ZNSt20_List_const_iteratorI3AntEC1EPKNSt8__detail15_List_node_baseE,_ZNSt20_List_const_iteratorI3AntEC2EPKNSt8__detail15_List_node_baseE
	.section	.text._ZNSt7__cxx114listI3AntSaIS1_EE5eraseESt20_List_const_iteratorIS1_E,"axG",@progbits,_ZNSt7__cxx114listI3AntSaIS1_EE5eraseESt20_List_const_iteratorIS1_E,comdat
	.align 2
	.weak	_ZNSt7__cxx114listI3AntSaIS1_EE5eraseESt20_List_const_iteratorIS1_E
	.type	_ZNSt7__cxx114listI3AntSaIS1_EE5eraseESt20_List_const_iteratorIS1_E, @function
_ZNSt7__cxx114listI3AntSaIS1_EE5eraseESt20_List_const_iteratorIS1_E:
.LFB9517:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR [rbp-24], rdi	# this, this
	mov	QWORD PTR [rbp-32], rsi	# __position, __position
	mov	rax, QWORD PTR fs:40	# tmp96,
	mov	QWORD PTR [rbp-8], rax	# D.132564, tmp96
	xor	eax, eax	# tmp96
	mov	rax, QWORD PTR [rbp-32]	# D.132562, __position._M_node
	mov	rdx, QWORD PTR [rax]	# D.132563, _2->_M_next
	lea	rax, [rbp-16]	# tmp92,
	mov	rsi, rdx	#, D.132563
	mov	rdi, rax	#, tmp92
	call	_ZNSt14_List_iteratorI3AntEC1EPNSt8__detail15_List_node_baseE	#
	lea	rax, [rbp-32]	# tmp93,
	mov	rdi, rax	#, tmp93
	call	_ZNKSt20_List_const_iteratorI3AntE13_M_const_castEv	#
	mov	rdx, rax	# D.132043,
	mov	rax, QWORD PTR [rbp-24]	# tmp94, this
	mov	rsi, rdx	#, D.132043
	mov	rdi, rax	#, tmp94
	call	_ZNSt7__cxx114listI3AntSaIS1_EE8_M_eraseESt14_List_iteratorIS1_E	#
	mov	rax, QWORD PTR [rbp-16]	# D.132044, __ret
	mov	rcx, QWORD PTR [rbp-8]	# tmp97, D.132564
	xor	rcx, QWORD PTR fs:40	# tmp97,
	je	.L350	#,
	call	__stack_chk_fail	#
.L350:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9517:
	.size	_ZNSt7__cxx114listI3AntSaIS1_EE5eraseESt20_List_const_iteratorIS1_E, .-_ZNSt7__cxx114listI3AntSaIS1_EE5eraseESt20_List_const_iteratorIS1_E
	.section	.text._ZNKSt20_List_const_iteratorI3AntE13_M_const_castEv,"axG",@progbits,_ZNKSt20_List_const_iteratorI3AntE13_M_const_castEv,comdat
	.align 2
	.weak	_ZNKSt20_List_const_iteratorI3AntE13_M_const_castEv
	.type	_ZNKSt20_List_const_iteratorI3AntE13_M_const_castEv, @function
_ZNKSt20_List_const_iteratorI3AntE13_M_const_castEv:
.LFB9518:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR [rbp-24], rdi	# this, this
	mov	rax, QWORD PTR fs:40	# tmp93,
	mov	QWORD PTR [rbp-8], rax	# D.132566, tmp93
	xor	eax, eax	# tmp93
	mov	rax, QWORD PTR [rbp-24]	# tmp90, this
	mov	rdx, QWORD PTR [rax]	# D.132565, this_2(D)->_M_node
	lea	rax, [rbp-16]	# tmp91,
	mov	rsi, rdx	#, D.132565
	mov	rdi, rax	#, tmp91
	call	_ZNSt14_List_iteratorI3AntEC1EPNSt8__detail15_List_node_baseE	#
	mov	rax, QWORD PTR [rbp-16]	# D.131748, D.129518
	mov	rcx, QWORD PTR [rbp-8]	# tmp94, D.132566
	xor	rcx, QWORD PTR fs:40	# tmp94,
	je	.L353	#,
	call	__stack_chk_fail	#
.L353:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9518:
	.size	_ZNKSt20_List_const_iteratorI3AntE13_M_const_castEv, .-_ZNKSt20_List_const_iteratorI3AntE13_M_const_castEv
	.section	.text._ZNKSt7__cxx114listI3AntSaIS1_EE13get_allocatorEv,"axG",@progbits,_ZNKSt7__cxx114listI3AntSaIS1_EE13get_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt7__cxx114listI3AntSaIS1_EE13get_allocatorEv
	.type	_ZNKSt7__cxx114listI3AntSaIS1_EE13get_allocatorEv, @function
_ZNKSt7__cxx114listI3AntSaIS1_EE13get_allocatorEv:
.LFB9519:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR [rbp-24], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR [rbp-32], rsi	# this, this
	mov	rax, QWORD PTR fs:40	# tmp89,
	mov	QWORD PTR [rbp-8], rax	# D.132568, tmp89
	xor	eax, eax	# tmp89
	mov	rdx, QWORD PTR [rbp-32]	# D.132567, this
	mov	rax, QWORD PTR [rbp-24]	# tmp88, .result_ptr
	mov	rsi, rdx	#, D.132567
	mov	rdi, rax	#, tmp88
	call	_ZNKSt7__cxx1110_List_baseI3AntSaIS1_EE13get_allocatorEv	#
	mov	rax, QWORD PTR [rbp-24]	#, .result_ptr
	mov	rcx, QWORD PTR [rbp-8]	# tmp90, D.132568
	xor	rcx, QWORD PTR fs:40	# tmp90,
	je	.L356	#,
	call	__stack_chk_fail	#
.L356:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9519:
	.size	_ZNKSt7__cxx114listI3AntSaIS1_EE13get_allocatorEv, .-_ZNKSt7__cxx114listI3AntSaIS1_EE13get_allocatorEv
	.section	.text._ZNSaI3AntED2Ev,"axG",@progbits,_ZNSaI3AntED5Ev,comdat
	.align 2
	.weak	_ZNSaI3AntED2Ev
	.type	_ZNSaI3AntED2Ev, @function
_ZNSaI3AntED2Ev:
.LFB9521:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	rax, QWORD PTR [rbp-8]	# tmp87, this
	mov	rdi, rax	#, tmp87
	call	_ZN9__gnu_cxx13new_allocatorI3AntED2Ev	#
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9521:
	.size	_ZNSaI3AntED2Ev, .-_ZNSaI3AntED2Ev
	.weak	_ZNSaI3AntED1Ev
	.set	_ZNSaI3AntED1Ev,_ZNSaI3AntED2Ev
	.section	.text._ZNSt7__cxx114listI3AntSaIS1_EEC2ISt20_List_const_iteratorIS1_EvEET_S7_RKS2_,"axG",@progbits,_ZNSt7__cxx114listI3AntSaIS1_EEC5ISt20_List_const_iteratorIS1_EvEET_S7_RKS2_,comdat
	.align 2
	.weak	_ZNSt7__cxx114listI3AntSaIS1_EEC2ISt20_List_const_iteratorIS1_EvEET_S7_RKS2_
	.type	_ZNSt7__cxx114listI3AntSaIS1_EEC2ISt20_List_const_iteratorIS1_EvEET_S7_RKS2_, @function
_ZNSt7__cxx114listI3AntSaIS1_EEC2ISt20_List_const_iteratorIS1_EvEET_S7_RKS2_:
.LFB9524:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA9524
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	sub	rsp, 56	#,
	.cfi_offset 3, -24
	mov	QWORD PTR [rbp-40], rdi	# this, this
	mov	QWORD PTR [rbp-48], rsi	# __first, __first
	mov	QWORD PTR [rbp-64], rdx	# __last, __last
	mov	QWORD PTR [rbp-56], rcx	# __a, __a
	mov	rax, QWORD PTR fs:40	# tmp99,
	mov	QWORD PTR [rbp-24], rax	# D.132574, tmp99
	xor	eax, eax	# tmp99
	mov	rdx, QWORD PTR [rbp-56]	# tmp91, __a
	lea	rax, [rbp-25]	# tmp92,
	mov	rsi, rdx	#, tmp91
	mov	rdi, rax	#, tmp92
	call	_ZNSaISt10_List_nodeI3AntEEC1IS0_EERKSaIT_E	#
	mov	rax, QWORD PTR [rbp-40]	# D.132572, this
	lea	rdx, [rbp-25]	# tmp93,
	mov	rsi, rdx	#, tmp93
	mov	rdi, rax	#, D.132572
	call	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EEC2ERKSaISt10_List_nodeIS1_EE	#
	lea	rax, [rbp-25]	# tmp94,
	mov	rdi, rax	#, tmp94
	call	_ZNSaISt10_List_nodeI3AntEED1Ev	#
	mov	rdx, QWORD PTR [rbp-64]	# tmp95, __last
	mov	rcx, QWORD PTR [rbp-48]	# tmp96, __first
	mov	rax, QWORD PTR [rbp-40]	# tmp97, this
	sub	rsp, 8	#,
	push	rbx	# D.132073
	mov	rsi, rcx	#, tmp96
	mov	rdi, rax	#, tmp97
.LEHB24:
	.cfi_escape 0x2e,0x10
	call	_ZNSt7__cxx114listI3AntSaIS1_EE22_M_initialize_dispatchISt20_List_const_iteratorIS1_EEEvT_S7_St12__false_type	#
.LEHE24:
	add	rsp, 16	#,
	nop
	mov	rax, QWORD PTR [rbp-24]	# tmp100, D.132574
	xor	rax, QWORD PTR fs:40	# tmp100,
	je	.L360	#,
	jmp	.L362	#
.L361:
	mov	rbx, rax	# tmp98,
	mov	rax, QWORD PTR [rbp-40]	# D.132572, this
	mov	rdi, rax	#, D.132572
	call	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EED2Ev	#
	mov	rax, rbx	# D.132571, tmp98
	mov	rdi, rax	#, D.132571
.LEHB25:
	call	_Unwind_Resume	#
.LEHE25:
.L362:
	call	__stack_chk_fail	#
.L360:
	mov	rbx, QWORD PTR [rbp-8]	#,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9524:
	.section	.gcc_except_table
.LLSDA9524:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9524-.LLSDACSB9524
.LLSDACSB9524:
	.uleb128 .LEHB24-.LFB9524
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L361-.LFB9524
	.uleb128 0
	.uleb128 .LEHB25-.LFB9524
	.uleb128 .LEHE25-.LEHB25
	.uleb128 0
	.uleb128 0
.LLSDACSE9524:
	.section	.text._ZNSt7__cxx114listI3AntSaIS1_EEC2ISt20_List_const_iteratorIS1_EvEET_S7_RKS2_,"axG",@progbits,_ZNSt7__cxx114listI3AntSaIS1_EEC5ISt20_List_const_iteratorIS1_EvEET_S7_RKS2_,comdat
	.size	_ZNSt7__cxx114listI3AntSaIS1_EEC2ISt20_List_const_iteratorIS1_EvEET_S7_RKS2_, .-_ZNSt7__cxx114listI3AntSaIS1_EEC2ISt20_List_const_iteratorIS1_EvEET_S7_RKS2_
	.weak	_ZNSt7__cxx114listI3AntSaIS1_EEC1ISt20_List_const_iteratorIS1_EvEET_S7_RKS2_
	.set	_ZNSt7__cxx114listI3AntSaIS1_EEC1ISt20_List_const_iteratorIS1_EvEET_S7_RKS2_,_ZNSt7__cxx114listI3AntSaIS1_EEC2ISt20_List_const_iteratorIS1_EvEET_S7_RKS2_
	.section	.text._ZNSt7__cxx114listI3AntSaIS1_EE6spliceESt20_List_const_iteratorIS1_ERS3_,"axG",@progbits,_ZNSt7__cxx114listI3AntSaIS1_EE6spliceESt20_List_const_iteratorIS1_ERS3_,comdat
	.align 2
	.weak	_ZNSt7__cxx114listI3AntSaIS1_EE6spliceESt20_List_const_iteratorIS1_ERS3_
	.type	_ZNSt7__cxx114listI3AntSaIS1_EE6spliceESt20_List_const_iteratorIS1_ERS3_, @function
_ZNSt7__cxx114listI3AntSaIS1_EE6spliceESt20_List_const_iteratorIS1_ERS3_:
.LFB9526:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	QWORD PTR [rbp-16], rsi	# __position, __position
	mov	QWORD PTR [rbp-24], rdx	# __x, __x
	mov	rax, QWORD PTR [rbp-24]	# tmp88, __x
	mov	rdi, rax	#, tmp88
	call	_ZSt4moveIRNSt7__cxx114listI3AntSaIS2_EEEEONSt16remove_referenceIT_E4typeEOS7_	#
	mov	rdx, rax	# D.132575,
	mov	rcx, QWORD PTR [rbp-16]	# tmp89, __position
	mov	rax, QWORD PTR [rbp-8]	# tmp90, this
	mov	rsi, rcx	#, tmp89
	mov	rdi, rax	#, tmp90
	call	_ZNSt7__cxx114listI3AntSaIS1_EE6spliceESt20_List_const_iteratorIS1_EOS3_	#
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9526:
	.size	_ZNSt7__cxx114listI3AntSaIS1_EE6spliceESt20_List_const_iteratorIS1_ERS3_, .-_ZNSt7__cxx114listI3AntSaIS1_EE6spliceESt20_List_const_iteratorIS1_ERS3_
	.section	.text._ZNSt8__detail4_ModImLm2147483647ELm1ELm0ELb1ELb1EE6__calcEm,"axG",@progbits,_ZNSt8__detail4_ModImLm2147483647ELm1ELm0ELb1ELb1EE6__calcEm,comdat
	.weak	_ZNSt8__detail4_ModImLm2147483647ELm1ELm0ELb1ELb1EE6__calcEm
	.type	_ZNSt8__detail4_ModImLm2147483647ELm1ELm0ELb1ELb1EE6__calcEm, @function
_ZNSt8__detail4_ModImLm2147483647ELm1ELm0ELb1ELb1EE6__calcEm:
.LFB9578:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-24], rdi	# __x, __x
	mov	rax, QWORD PTR [rbp-24]	# tmp89, __x
	mov	QWORD PTR [rbp-8], rax	# __res, tmp89
	mov	rcx, QWORD PTR [rbp-8]	# tmp91, __res
	movabs	rdx, 8589934597	# tmp93,
	mov	rax, rcx	# tmp101, tmp91
	mul	rdx	# tmp93
	mov	rax, rcx	# tmp94, tmp91
	sub	rax, rdx	# tmp94, tmp92
	shr	rax	# tmp95
	add	rax, rdx	# tmp96, tmp92
	shr	rax, 30	# tmp90,
	mov	rdx, rax	# tmp90, tmp90
	mov	rax, rdx	# tmp97, tmp90
	sal	rax, 31	# tmp98,
	sub	rax, rdx	# tmp97, tmp90
	sub	rcx, rax	# tmp99, tmp97
	mov	rax, rcx	# tmp99, tmp99
	mov	QWORD PTR [rbp-8], rax	# __res, tmp99
	mov	rax, QWORD PTR [rbp-8]	# D.132576, __res
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9578:
	.size	_ZNSt8__detail4_ModImLm2147483647ELm1ELm0ELb1ELb1EE6__calcEm, .-_ZNSt8__detail4_ModImLm2147483647ELm1ELm0ELb1ELb1EE6__calcEm
	.section	.text._ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE3maxEv,"axG",@progbits,_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE3maxEv,comdat
	.weak	_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE3maxEv
	.type	_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE3maxEv, @function
_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE3maxEv:
.LFB9580:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	eax, 2147483646	# D.132577,
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9580:
	.size	_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE3maxEv, .-_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE3maxEv
	.section	.text._ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE3minEv,"axG",@progbits,_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE3minEv,comdat
	.weak	_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE3minEv
	.type	_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE3minEv, @function
_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE3minEv:
.LFB9581:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	eax, 1	# D.132578,
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9581:
	.size	_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE3minEv, .-_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE3minEv
	.section	.text._ZSt18generate_canonicalIfLm24ESt26linear_congruential_engineImLm16807ELm0ELm2147483647EEET_RT1_,"axG",@progbits,_ZSt18generate_canonicalIfLm24ESt26linear_congruential_engineImLm16807ELm0ELm2147483647EEET_RT1_,comdat
	.weak	_ZSt18generate_canonicalIfLm24ESt26linear_congruential_engineImLm16807ELm0ELm2147483647EEET_RT1_
	.type	_ZSt18generate_canonicalIfLm24ESt26linear_congruential_engineImLm16807ELm0ELm2147483647EEET_RT1_, @function
_ZSt18generate_canonicalIfLm24ESt26linear_congruential_engineImLm16807ELm0ELm2147483647EEET_RT1_:
.LFB9579:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	sub	rsp, 136	#,
	.cfi_offset 3, -24
	mov	QWORD PTR [rbp-104], rdi	# __urng, __urng
	mov	rax, QWORD PTR fs:40	# tmp142,
	mov	QWORD PTR [rbp-24], rax	# D.132584, tmp142
	xor	eax, eax	# tmp142
	mov	QWORD PTR [rbp-80], 24	# D.129812,
	mov	QWORD PTR [rbp-88], 24	# D.129811,
	lea	rdx, [rbp-80]	# tmp109,
	lea	rax, [rbp-88]	# tmp110,
	mov	rsi, rdx	#, tmp109
	mov	rdi, rax	#, tmp110
	call	_ZSt3minImERKT_S2_S2_	#
	mov	rax, QWORD PTR [rax]	# tmp111, *_9
	mov	QWORD PTR [rbp-64], rax	# __b, tmp111
	call	_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE3maxEv	#
	mov	QWORD PTR [rbp-128], rax	# %sfp, D.132580
	fild	QWORD PTR [rbp-128]	# %sfp
	fstp	TBYTE PTR [rbp-128]	# %sfp
	test	rax, rax	# D.132580
	jns	.L371	#,
	fld	TBYTE PTR .LC22[rip]	#
	fld	TBYTE PTR [rbp-128]	# %sfp
	faddp	st(1), st	#,
	fstp	TBYTE PTR [rbp-128]	# %sfp
.L371:
	call	_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE3minEv	#
	mov	QWORD PTR [rbp-136], rax	# %sfp, D.132580
	fild	QWORD PTR [rbp-136]	# %sfp
	test	rax, rax	# D.132580
	jns	.L372	#,
	fld	TBYTE PTR .LC22[rip]	#
	faddp	st(1), st	#,
.L372:
	fld	TBYTE PTR [rbp-128]	# %sfp
	fsubrp	st(1), st	#,
	fld1
	faddp	st(1), st	#,
	fstp	TBYTE PTR [rbp-48]	# __r
	push	QWORD PTR [rbp-40]	# __r
	push	QWORD PTR [rbp-48]	# __r
	call	_ZSt3loge	#
	add	rsp, 16	#,
	fstp	TBYTE PTR [rbp-128]	# %sfp
	fld	TBYTE PTR .LC24[rip]	#
	lea	rsp, [rsp-16]	#,
	fstp	TBYTE PTR [rsp]	#
	call	_ZSt3loge	#
	add	rsp, 16	#,
	fld	TBYTE PTR [rbp-128]	# %sfp
	fdivrp	st(1), st	#,
	fld	TBYTE PTR .LC25[rip]	#
	fxch	st(1)	#
	fucomi	st, st(1)	#,
	fstp	st(1)	#
	jnb	.L373	#,
	fnstcw	WORD PTR [rbp-110]	#
	movzx	eax, WORD PTR [rbp-110]	# tmp140,
	or	ah, 12	# tmp140,
	mov	WORD PTR [rbp-112], ax	#, tmp140
	fldcw	WORD PTR [rbp-112]	#
	fistp	QWORD PTR [rbp-56]	# __log2r
	fldcw	WORD PTR [rbp-110]	#
	jmp	.L374	#
.L373:
	fld	TBYTE PTR .LC25[rip]	#
	fsubp	st(1), st	#,
	fnstcw	WORD PTR [rbp-110]	#
	movzx	eax, WORD PTR [rbp-110]	# tmp141,
	or	ah, 12	# tmp141,
	mov	WORD PTR [rbp-112], ax	#, tmp141
	fldcw	WORD PTR [rbp-112]	#
	fistp	QWORD PTR [rbp-56]	# __log2r
	fldcw	WORD PTR [rbp-110]	#
	movabs	rax, -9223372036854775808	# tmp120,
	xor	QWORD PTR [rbp-56], rax	# __log2r, tmp120
.L374:
	mov	rax, QWORD PTR [rbp-56]	# tmp121, __log2r
	mov	QWORD PTR [rbp-56], rax	# __log2r, tmp121
	mov	rdx, QWORD PTR [rbp-64]	# tmp122, __b
	mov	rax, QWORD PTR [rbp-56]	# tmp123, __log2r
	add	rax, rdx	# D.132580, tmp122
	sub	rax, 1	# D.132580,
	mov	edx, 0	# tmp125,
	div	QWORD PTR [rbp-56]	# __log2r
	mov	QWORD PTR [rbp-80], rax	# D.129819, D.132580
	mov	QWORD PTR [rbp-88], 1	# D.129818,
	lea	rdx, [rbp-80]	# tmp126,
	lea	rax, [rbp-88]	# tmp127,
	mov	rsi, rdx	#, tmp126
	mov	rdi, rax	#, tmp127
	call	_ZSt3maxImERKT_S2_S2_	#
	mov	rax, QWORD PTR [rax]	# tmp128, *_33
	mov	QWORD PTR [rbp-72], rax	# __k, tmp128
	pxor	xmm0, xmm0	# tmp129
	movss	DWORD PTR [rbp-96], xmm0	# __sum, tmp129
	movss	xmm0, DWORD PTR .LC2[rip]	# tmp130,
	movss	DWORD PTR [rbp-92], xmm0	# __tmp, tmp130
.L378:
	cmp	QWORD PTR [rbp-72], 0	# __k,
	je	.L375	#,
	mov	rax, QWORD PTR [rbp-104]	# tmp131, __urng
	mov	rdi, rax	#, tmp131
	call	_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EEclEv	#
	mov	rbx, rax	# D.132580,
	call	_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE3minEv	#
	sub	rbx, rax	# D.132580, D.132580
	mov	rax, rbx	# D.132580, D.132580
	test	rax, rax	# D.132580
	js	.L376	#,
	pxor	xmm0, xmm0	# D.132582
	cvtsi2ssq	xmm0, rax	# D.132582, D.132580
	jmp	.L377	#
.L376:
	mov	rdx, rax	# tmp133, D.132580
	shr	rdx	# tmp133
	and	eax, 1	# tmp134,
	or	rdx, rax	# tmp133, tmp134
	pxor	xmm0, xmm0	# tmp132
	cvtsi2ssq	xmm0, rdx	# tmp132, tmp133
	addss	xmm0, xmm0	# D.132582, tmp132
.L377:
	mulss	xmm0, DWORD PTR [rbp-92]	# D.132582, __tmp
	movss	xmm1, DWORD PTR [rbp-96]	# tmp136, __sum
	addss	xmm0, xmm1	# tmp135, tmp136
	movss	DWORD PTR [rbp-96], xmm0	# __sum, tmp135
	fld	DWORD PTR [rbp-92]	# __tmp
	fld	TBYTE PTR [rbp-48]	# __r
	fmulp	st(1), st	#,
	fstp	DWORD PTR [rbp-92]	# __tmp
	sub	QWORD PTR [rbp-72], 1	# __k,
	jmp	.L378	#
.L375:
	movss	xmm0, DWORD PTR [rbp-96]	# tmp138, __sum
	divss	xmm0, DWORD PTR [rbp-92]	# D.132582, __tmp
	mov	rax, QWORD PTR [rbp-24]	# tmp145, D.132584
	xor	rax, QWORD PTR fs:40	# tmp145,
	je	.L381	#,
	call	__stack_chk_fail	#
.L381:
	mov	rbx, QWORD PTR [rbp-8]	#,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9579:
	.size	_ZSt18generate_canonicalIfLm24ESt26linear_congruential_engineImLm16807ELm0ELm2147483647EEET_RT1_, .-_ZSt18generate_canonicalIfLm24ESt26linear_congruential_engineImLm16807ELm0ELm2147483647EEET_RT1_
	.section	.text._ZNSaISt10_List_nodeI3AntEEC2Ev,"axG",@progbits,_ZNSaISt10_List_nodeI3AntEEC5Ev,comdat
	.align 2
	.weak	_ZNSaISt10_List_nodeI3AntEEC2Ev
	.type	_ZNSaISt10_List_nodeI3AntEEC2Ev, @function
_ZNSaISt10_List_nodeI3AntEEC2Ev:
.LFB9583:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	rax, QWORD PTR [rbp-8]	# tmp87, this
	mov	rdi, rax	#, tmp87
	call	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEEC2Ev	#
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9583:
	.size	_ZNSaISt10_List_nodeI3AntEEC2Ev, .-_ZNSaISt10_List_nodeI3AntEEC2Ev
	.weak	_ZNSaISt10_List_nodeI3AntEEC1Ev
	.set	_ZNSaISt10_List_nodeI3AntEEC1Ev,_ZNSaISt10_List_nodeI3AntEEC2Ev
	.section	.text._ZNSt10_List_nodeImEC2IJEEEDpOT_,"axG",@progbits,_ZNSt10_List_nodeImEC5IJEEEDpOT_,comdat
	.align 2
	.weak	_ZNSt10_List_nodeImEC2IJEEEDpOT_
	.type	_ZNSt10_List_nodeImEC2IJEEEDpOT_, @function
_ZNSt10_List_nodeImEC2IJEEEDpOT_:
.LFB9586:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	rax, QWORD PTR [rbp-8]	# tmp87, this
	mov	QWORD PTR [rax], 0	# this_2(D)->D.69288._M_next,
	mov	rax, QWORD PTR [rbp-8]	# tmp88, this
	mov	QWORD PTR [rax+8], 0	# this_2(D)->D.69288._M_prev,
	mov	rax, QWORD PTR [rbp-8]	# tmp89, this
	mov	QWORD PTR [rax+16], 0	# this_2(D)->_M_data,
	nop
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9586:
	.size	_ZNSt10_List_nodeImEC2IJEEEDpOT_, .-_ZNSt10_List_nodeImEC2IJEEEDpOT_
	.weak	_ZNSt10_List_nodeImEC2IIEEEDpOT_
	.set	_ZNSt10_List_nodeImEC2IIEEEDpOT_,_ZNSt10_List_nodeImEC2IJEEEDpOT_
	.weak	_ZNSt10_List_nodeImEC1IJEEEDpOT_
	.set	_ZNSt10_List_nodeImEC1IJEEEDpOT_,_ZNSt10_List_nodeImEC2IJEEEDpOT_
	.weak	_ZNSt10_List_nodeImEC1IIEEEDpOT_
	.set	_ZNSt10_List_nodeImEC1IIEEEDpOT_,_ZNSt10_List_nodeImEC1IJEEEDpOT_
	.section	.text._ZNSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_get_nodeEv,"axG",@progbits,_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_get_nodeEv,comdat
	.align 2
	.weak	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_get_nodeEv
	.type	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_get_nodeEv, @function
_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_get_nodeEv:
.LFB9588:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	rax, QWORD PTR [rbp-8]	# D.132586, this
	mov	edx, 0	#,
	mov	esi, 1	#,
	mov	rdi, rax	#, D.132586
	call	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEE8allocateEmPKv	#
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9588:
	.size	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_get_nodeEv, .-_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_get_nodeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEE9constructIS3_JRKS2_EEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEE9constructIS3_JRKS2_EEEvPT_DpOT0_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEE9constructIS3_JRKS2_EEEvPT_DpOT0_
	.type	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEE9constructIS3_JRKS2_EEEvPT_DpOT0_, @function
_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEE9constructIS3_JRKS2_EEEvPT_DpOT0_:
.LFB9589:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	sub	rsp, 40	#,
	.cfi_offset 3, -24
	mov	QWORD PTR [rbp-24], rdi	# this, this
	mov	QWORD PTR [rbp-32], rsi	# __p, __p
	mov	QWORD PTR [rbp-40], rdx	# __args#0, __args#0
	mov	rax, QWORD PTR [rbp-40]	# tmp92, __args#0
	mov	rdi, rax	#, tmp92
	call	_ZSt7forwardIRK3AntEOT_RNSt16remove_referenceIS3_E4typeE	#
	mov	rbx, rax	# D.132588,
	mov	rax, QWORD PTR [rbp-32]	# D.132589, __p
	mov	rsi, rax	#, D.132589
	mov	edi, 1080	#,
	call	_ZnwmPv	#
	test	rax, rax	# D.132589
	je	.L389	#,
	mov	rsi, rbx	#, D.132588
	mov	rdi, rax	#, D.132589
	call	_ZNSt10_List_nodeI3AntEC1IJRKS0_EEEDpOT_	#
.L389:
	nop
	add	rsp, 40	#,
	pop	rbx	#
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9589:
	.size	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEE9constructIS3_JRKS2_EEEvPT_DpOT0_, .-_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEE9constructIS3_JRKS2_EEEvPT_DpOT0_
	.weak	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEE9constructIS3_IRKS2_EEEvPT_DpOT0_
	.set	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEE9constructIS3_IRKS2_EEEvPT_DpOT0_,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEE9constructIS3_JRKS2_EEEvPT_DpOT0_
	.section	.text._ZNSt7__cxx114listI3AntSaIS1_EE25_M_check_equal_allocatorsERS3_,"axG",@progbits,_ZNSt7__cxx114listI3AntSaIS1_EE25_M_check_equal_allocatorsERS3_,comdat
	.align 2
	.weak	_ZNSt7__cxx114listI3AntSaIS1_EE25_M_check_equal_allocatorsERS3_
	.type	_ZNSt7__cxx114listI3AntSaIS1_EE25_M_check_equal_allocatorsERS3_, @function
_ZNSt7__cxx114listI3AntSaIS1_EE25_M_check_equal_allocatorsERS3_:
.LFB9590:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	sub	rsp, 24	#,
	.cfi_offset 3, -24
	mov	QWORD PTR [rbp-24], rdi	# this, this
	mov	QWORD PTR [rbp-32], rsi	# __x, __x
	mov	rax, QWORD PTR [rbp-32]	# D.132591, __x
	mov	rdi, rax	#, D.132591
	call	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE21_M_get_Node_allocatorEv	#
	mov	rbx, rax	# D.132592,
	mov	rax, QWORD PTR [rbp-24]	# D.132591, this
	mov	rdi, rax	#, D.132591
	call	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE21_M_get_Node_allocatorEv	#
	mov	rsi, rbx	#, D.132592
	mov	rdi, rax	#, D.132592
	call	_ZNSt11__alloc_neqISaISt10_List_nodeI3AntEELb1EE8_S_do_itERKS3_S6_	#
	test	al, al	# D.132593
	je	.L392	#,
	call	abort	#
.L392:
	nop
	add	rsp, 24	#,
	pop	rbx	#
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9590:
	.size	_ZNSt7__cxx114listI3AntSaIS1_EE25_M_check_equal_allocatorsERS3_, .-_ZNSt7__cxx114listI3AntSaIS1_EE25_M_check_equal_allocatorsERS3_
	.section	.text._ZNSt7__cxx114listI3AntSaIS1_EE11_M_transferESt14_List_iteratorIS1_ES5_S5_,"axG",@progbits,_ZNSt7__cxx114listI3AntSaIS1_EE11_M_transferESt14_List_iteratorIS1_ES5_S5_,comdat
	.align 2
	.weak	_ZNSt7__cxx114listI3AntSaIS1_EE11_M_transferESt14_List_iteratorIS1_ES5_S5_
	.type	_ZNSt7__cxx114listI3AntSaIS1_EE11_M_transferESt14_List_iteratorIS1_ES5_S5_, @function
_ZNSt7__cxx114listI3AntSaIS1_EE11_M_transferESt14_List_iteratorIS1_ES5_S5_:
.LFB9591:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	QWORD PTR [rbp-16], rsi	# __position, __position
	mov	QWORD PTR [rbp-32], rdx	# __first, __first
	mov	QWORD PTR [rbp-48], rcx	# __last, __last
	mov	rdx, QWORD PTR [rbp-48]	# D.132594, __last._M_node
	mov	rcx, QWORD PTR [rbp-32]	# D.132594, __first._M_node
	mov	rax, QWORD PTR [rbp-16]	# D.132594, __position._M_node
	mov	rsi, rcx	#, D.132594
	mov	rdi, rax	#, D.132594
	call	_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_	#
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9591:
	.size	_ZNSt7__cxx114listI3AntSaIS1_EE11_M_transferESt14_List_iteratorIS1_ES5_S5_, .-_ZNSt7__cxx114listI3AntSaIS1_EE11_M_transferESt14_List_iteratorIS1_ES5_S5_
	.section	.text._ZNSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_dec_sizeEm,"axG",@progbits,_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_dec_sizeEm,comdat
	.align 2
	.weak	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_dec_sizeEm
	.type	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_dec_sizeEm, @function
_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_dec_sizeEm:
.LFB9592:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	QWORD PTR [rbp-16], rsi	# __n, __n
	mov	rax, QWORD PTR [rbp-8]	# tmp89, this
	mov	rax, QWORD PTR [rax+16]	# D.132595, this_2(D)->_M_impl._M_node._M_data
	sub	rax, QWORD PTR [rbp-16]	# D.132595, __n
	mov	rdx, rax	# D.132595, D.132595
	mov	rax, QWORD PTR [rbp-8]	# tmp90, this
	mov	QWORD PTR [rax+16], rdx	# this_2(D)->_M_impl._M_node._M_data, D.132595
	nop
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9592:
	.size	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_dec_sizeEm, .-_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_dec_sizeEm
	.section	.text._ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEE10deallocateEPS3_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEE10deallocateEPS3_m,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEE10deallocateEPS3_m
	.type	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEE10deallocateEPS3_m, @function
_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEE10deallocateEPS3_m:
.LFB9593:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	QWORD PTR [rbp-16], rsi	# __p, __p
	mov	QWORD PTR [rbp-24], rdx	# D.123086, D.123086
	mov	rax, QWORD PTR [rbp-16]	# tmp87, __p
	mov	rdi, rax	#, tmp87
	call	_ZdlPv	#
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9593:
	.size	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEE10deallocateEPS3_m, .-_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEE10deallocateEPS3_m
	.section	.text._ZNSt7__cxx114listI3AntSaIS1_EE8_M_eraseESt14_List_iteratorIS1_E,"axG",@progbits,_ZNSt7__cxx114listI3AntSaIS1_EE8_M_eraseESt14_List_iteratorIS1_E,comdat
	.align 2
	.weak	_ZNSt7__cxx114listI3AntSaIS1_EE8_M_eraseESt14_List_iteratorIS1_E
	.type	_ZNSt7__cxx114listI3AntSaIS1_EE8_M_eraseESt14_List_iteratorIS1_E, @function
_ZNSt7__cxx114listI3AntSaIS1_EE8_M_eraseESt14_List_iteratorIS1_E:
.LFB9594:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR [rbp-24], rdi	# this, this
	mov	QWORD PTR [rbp-32], rsi	# __position, __position
	mov	rax, QWORD PTR [rbp-24]	# D.132596, this
	mov	esi, 1	#,
	mov	rdi, rax	#, D.132596
	call	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_dec_sizeEm	#
	mov	rax, QWORD PTR [rbp-32]	# D.132597, __position._M_node
	mov	rdi, rax	#, D.132597
	call	_ZNSt8__detail15_List_node_base9_M_unhookEv	#
	mov	rax, QWORD PTR [rbp-32]	# tmp92, __position._M_node
	mov	QWORD PTR [rbp-8], rax	# __n, tmp92
	mov	rax, QWORD PTR [rbp-24]	# D.132596, this
	mov	rdi, rax	#, D.132596
	call	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE21_M_get_Node_allocatorEv	#
	mov	rdx, rax	# D.132598,
	mov	rax, QWORD PTR [rbp-8]	# tmp93, __n
	mov	rsi, rax	#, tmp93
	mov	rdi, rdx	#, D.132598
	call	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEE7destroyIS3_EEvPT_	#
	mov	rax, QWORD PTR [rbp-24]	# D.132596, this
	mov	rdx, QWORD PTR [rbp-8]	# tmp94, __n
	mov	rsi, rdx	#, tmp94
	mov	rdi, rax	#, D.132596
	call	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_put_nodeEPSt10_List_nodeIS1_E	#
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9594:
	.size	_ZNSt7__cxx114listI3AntSaIS1_EE8_M_eraseESt14_List_iteratorIS1_E, .-_ZNSt7__cxx114listI3AntSaIS1_EE8_M_eraseESt14_List_iteratorIS1_E
	.section	.text._ZNKSt7__cxx1110_List_baseI3AntSaIS1_EE13get_allocatorEv,"axG",@progbits,_ZNKSt7__cxx1110_List_baseI3AntSaIS1_EE13get_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt7__cxx1110_List_baseI3AntSaIS1_EE13get_allocatorEv
	.type	_ZNKSt7__cxx1110_List_baseI3AntSaIS1_EE13get_allocatorEv, @function
_ZNKSt7__cxx1110_List_baseI3AntSaIS1_EE13get_allocatorEv:
.LFB9595:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR [rbp-8], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR [rbp-16], rsi	# this, this
	mov	rax, QWORD PTR [rbp-16]	# tmp88, this
	mov	rdi, rax	#, tmp88
	call	_ZNKSt7__cxx1110_List_baseI3AntSaIS1_EE21_M_get_Node_allocatorEv	#
	mov	rdx, rax	# D.132599,
	mov	rax, QWORD PTR [rbp-8]	# tmp89, .result_ptr
	mov	rsi, rdx	#, D.132599
	mov	rdi, rax	#, tmp89
	call	_ZNSaI3AntEC1ISt10_List_nodeIS_EEERKSaIT_E	#
	mov	rax, QWORD PTR [rbp-8]	#, .result_ptr
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9595:
	.size	_ZNKSt7__cxx1110_List_baseI3AntSaIS1_EE13get_allocatorEv, .-_ZNKSt7__cxx1110_List_baseI3AntSaIS1_EE13get_allocatorEv
	.section	.text._ZN9__gnu_cxx13new_allocatorI3AntED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI3AntED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI3AntED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorI3AntED2Ev, @function
_ZN9__gnu_cxx13new_allocatorI3AntED2Ev:
.LFB9600:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	nop
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9600:
	.size	_ZN9__gnu_cxx13new_allocatorI3AntED2Ev, .-_ZN9__gnu_cxx13new_allocatorI3AntED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorI3AntED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorI3AntED1Ev,_ZN9__gnu_cxx13new_allocatorI3AntED2Ev
	.section	.text._ZNSaISt10_List_nodeI3AntEEC2IS0_EERKSaIT_E,"axG",@progbits,_ZNSaISt10_List_nodeI3AntEEC5IS0_EERKSaIT_E,comdat
	.align 2
	.weak	_ZNSaISt10_List_nodeI3AntEEC2IS0_EERKSaIT_E
	.type	_ZNSaISt10_List_nodeI3AntEEC2IS0_EERKSaIT_E, @function
_ZNSaISt10_List_nodeI3AntEEC2IS0_EERKSaIT_E:
.LFB9603:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	QWORD PTR [rbp-16], rsi	# D.129546, D.129546
	mov	rax, QWORD PTR [rbp-8]	# tmp87, this
	mov	rdi, rax	#, tmp87
	call	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEEC2Ev	#
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9603:
	.size	_ZNSaISt10_List_nodeI3AntEEC2IS0_EERKSaIT_E, .-_ZNSaISt10_List_nodeI3AntEEC2IS0_EERKSaIT_E
	.weak	_ZNSaISt10_List_nodeI3AntEEC1IS0_EERKSaIT_E
	.set	_ZNSaISt10_List_nodeI3AntEEC1IS0_EERKSaIT_E,_ZNSaISt10_List_nodeI3AntEEC2IS0_EERKSaIT_E
	.section	.text._ZNSt7__cxx1110_List_baseI3AntSaIS1_EEC2ERKSaISt10_List_nodeIS1_EE,"axG",@progbits,_ZNSt7__cxx1110_List_baseI3AntSaIS1_EEC5ERKSaISt10_List_nodeIS1_EE,comdat
	.align 2
	.weak	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EEC2ERKSaISt10_List_nodeIS1_EE
	.type	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EEC2ERKSaISt10_List_nodeIS1_EE, @function
_ZNSt7__cxx1110_List_baseI3AntSaIS1_EEC2ERKSaISt10_List_nodeIS1_EE:
.LFB9606:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	QWORD PTR [rbp-16], rsi	# __a, __a
	mov	rax, QWORD PTR [rbp-8]	# D.132601, this
	mov	rdx, QWORD PTR [rbp-16]	# tmp88, __a
	mov	rsi, rdx	#, tmp88
	mov	rdi, rax	#, D.132601
	call	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE10_List_implC1ERKSaISt10_List_nodeIS1_EE	#
	mov	rax, QWORD PTR [rbp-8]	# tmp89, this
	mov	rdi, rax	#, tmp89
	call	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE7_M_initEv	#
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9606:
	.size	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EEC2ERKSaISt10_List_nodeIS1_EE, .-_ZNSt7__cxx1110_List_baseI3AntSaIS1_EEC2ERKSaISt10_List_nodeIS1_EE
	.weak	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EEC1ERKSaISt10_List_nodeIS1_EE
	.set	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EEC1ERKSaISt10_List_nodeIS1_EE,_ZNSt7__cxx1110_List_baseI3AntSaIS1_EEC2ERKSaISt10_List_nodeIS1_EE
	.section	.text._ZNSt7__cxx114listI3AntSaIS1_EE22_M_initialize_dispatchISt20_List_const_iteratorIS1_EEEvT_S7_St12__false_type,"axG",@progbits,_ZNSt7__cxx114listI3AntSaIS1_EE22_M_initialize_dispatchISt20_List_const_iteratorIS1_EEEvT_S7_St12__false_type,comdat
	.align 2
	.weak	_ZNSt7__cxx114listI3AntSaIS1_EE22_M_initialize_dispatchISt20_List_const_iteratorIS1_EEEvT_S7_St12__false_type
	.type	_ZNSt7__cxx114listI3AntSaIS1_EE22_M_initialize_dispatchISt20_List_const_iteratorIS1_EEEvT_S7_St12__false_type, @function
_ZNSt7__cxx114listI3AntSaIS1_EE22_M_initialize_dispatchISt20_List_const_iteratorIS1_EEEvT_S7_St12__false_type:
.LFB9608:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	QWORD PTR [rbp-16], rsi	# __first, __first
	mov	QWORD PTR [rbp-32], rdx	# __last, __last
.L404:
	lea	rdx, [rbp-32]	# tmp89,
	lea	rax, [rbp-16]	# tmp90,
	mov	rsi, rdx	#, tmp89
	mov	rdi, rax	#, tmp90
	call	_ZNKSt20_List_const_iteratorI3AntEneERKS1_	#
	test	al, al	# D.132602
	je	.L405	#,
	lea	rax, [rbp-16]	# tmp91,
	mov	rdi, rax	#, tmp91
	call	_ZNKSt20_List_const_iteratorI3AntEdeEv	#
	mov	rdx, rax	# D.132603,
	mov	rax, QWORD PTR [rbp-8]	# tmp92, this
	mov	rsi, rdx	#, D.132603
	mov	rdi, rax	#, tmp92
	call	_ZNSt7__cxx114listI3AntSaIS1_EE12emplace_backIJRKS1_EEEvDpOT_	#
	lea	rax, [rbp-16]	# tmp93,
	mov	rdi, rax	#, tmp93
	call	_ZNSt20_List_const_iteratorI3AntEppEv	#
	jmp	.L404	#
.L405:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9608:
	.size	_ZNSt7__cxx114listI3AntSaIS1_EE22_M_initialize_dispatchISt20_List_const_iteratorIS1_EEEvT_S7_St12__false_type, .-_ZNSt7__cxx114listI3AntSaIS1_EE22_M_initialize_dispatchISt20_List_const_iteratorIS1_EEEvT_S7_St12__false_type
	.section	.text._ZNSt7__cxx114listI3AntSaIS1_EE6spliceESt20_List_const_iteratorIS1_EOS3_,"axG",@progbits,_ZNSt7__cxx114listI3AntSaIS1_EE6spliceESt20_List_const_iteratorIS1_EOS3_,comdat
	.align 2
	.weak	_ZNSt7__cxx114listI3AntSaIS1_EE6spliceESt20_List_const_iteratorIS1_EOS3_
	.type	_ZNSt7__cxx114listI3AntSaIS1_EE6spliceESt20_List_const_iteratorIS1_EOS3_, @function
_ZNSt7__cxx114listI3AntSaIS1_EE6spliceESt20_List_const_iteratorIS1_EOS3_:
.LFB9609:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	r12	#
	push	rbx	#
	sub	rsp, 32	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	mov	QWORD PTR [rbp-24], rdi	# this, this
	mov	QWORD PTR [rbp-32], rsi	# __position, __position
	mov	QWORD PTR [rbp-40], rdx	# __x, __x
	mov	rax, QWORD PTR [rbp-40]	# tmp96, __x
	mov	rdi, rax	#, tmp96
	call	_ZNKSt7__cxx114listI3AntSaIS1_EE5emptyEv	#
	xor	eax, 1	# D.132604,
	test	al, al	# D.132604
	je	.L408	#,
	mov	rdx, QWORD PTR [rbp-40]	# tmp97, __x
	mov	rax, QWORD PTR [rbp-24]	# tmp98, this
	mov	rsi, rdx	#, tmp97
	mov	rdi, rax	#, tmp98
	call	_ZNSt7__cxx114listI3AntSaIS1_EE25_M_check_equal_allocatorsERS3_	#
	mov	rax, QWORD PTR [rbp-40]	# tmp99, __x
	mov	rdi, rax	#, tmp99
	call	_ZNSt7__cxx114listI3AntSaIS1_EE3endEv	#
	mov	r12, rax	# D.132099,
	mov	rax, QWORD PTR [rbp-40]	# tmp100, __x
	mov	rdi, rax	#, tmp100
	call	_ZNSt7__cxx114listI3AntSaIS1_EE5beginEv	#
	mov	rbx, rax	# D.132100,
	lea	rax, [rbp-32]	# tmp101,
	mov	rdi, rax	#, tmp101
	call	_ZNKSt20_List_const_iteratorI3AntE13_M_const_castEv	#
	mov	rsi, rax	# D.132101,
	mov	rax, QWORD PTR [rbp-24]	# tmp102, this
	mov	rcx, r12	#, D.132099
	mov	rdx, rbx	#, D.132100
	mov	rdi, rax	#, tmp102
	call	_ZNSt7__cxx114listI3AntSaIS1_EE11_M_transferESt14_List_iteratorIS1_ES5_S5_	#
	mov	rax, QWORD PTR [rbp-40]	# D.132605, __x
	mov	rdi, rax	#, D.132605
	call	_ZNKSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_get_sizeEv	#
	mov	rdx, rax	# D.132606,
	mov	rax, QWORD PTR [rbp-24]	# D.132605, this
	mov	rsi, rdx	#, D.132606
	mov	rdi, rax	#, D.132605
	call	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_inc_sizeEm	#
	mov	rax, QWORD PTR [rbp-40]	# D.132605, __x
	mov	esi, 0	#,
	mov	rdi, rax	#, D.132605
	call	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE11_M_set_sizeEm	#
.L408:
	nop
	add	rsp, 32	#,
	pop	rbx	#
	pop	r12	#
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9609:
	.size	_ZNSt7__cxx114listI3AntSaIS1_EE6spliceESt20_List_const_iteratorIS1_EOS3_, .-_ZNSt7__cxx114listI3AntSaIS1_EE6spliceESt20_List_const_iteratorIS1_EOS3_
	.section	.text._ZSt3minImERKT_S2_S2_,"axG",@progbits,_ZSt3minImERKT_S2_S2_,comdat
	.weak	_ZSt3minImERKT_S2_S2_
	.type	_ZSt3minImERKT_S2_S2_, @function
_ZSt3minImERKT_S2_S2_:
.LFB9642:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# __a, __a
	mov	QWORD PTR [rbp-16], rsi	# __b, __b
	mov	rax, QWORD PTR [rbp-16]	# tmp91, __b
	mov	rdx, QWORD PTR [rax]	# D.132608, *__b_3(D)
	mov	rax, QWORD PTR [rbp-8]	# tmp92, __a
	mov	rax, QWORD PTR [rax]	# D.132608, *__a_5(D)
	cmp	rdx, rax	# D.132608, D.132608
	jnb	.L410	#,
	mov	rax, QWORD PTR [rbp-16]	# D.132607, __b
	jmp	.L411	#
.L410:
	mov	rax, QWORD PTR [rbp-8]	# D.132607, __a
.L411:
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9642:
	.size	_ZSt3minImERKT_S2_S2_, .-_ZSt3minImERKT_S2_S2_
	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.weak	_ZSt3maxImERKT_S2_S2_
	.type	_ZSt3maxImERKT_S2_S2_, @function
_ZSt3maxImERKT_S2_S2_:
.LFB9643:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# __a, __a
	mov	QWORD PTR [rbp-16], rsi	# __b, __b
	mov	rax, QWORD PTR [rbp-8]	# tmp91, __a
	mov	rdx, QWORD PTR [rax]	# D.132610, *__a_3(D)
	mov	rax, QWORD PTR [rbp-16]	# tmp92, __b
	mov	rax, QWORD PTR [rax]	# D.132610, *__b_5(D)
	cmp	rdx, rax	# D.132610, D.132610
	jnb	.L413	#,
	mov	rax, QWORD PTR [rbp-16]	# D.132609, __b
	jmp	.L414	#
.L413:
	mov	rax, QWORD PTR [rbp-8]	# D.132609, __a
.L414:
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9643:
	.size	_ZSt3maxImERKT_S2_S2_, .-_ZSt3maxImERKT_S2_S2_
	.section	.text._ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EEclEv,"axG",@progbits,_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EEclEv,comdat
	.align 2
	.weak	_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EEclEv
	.type	_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EEclEv, @function
_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EEclEv:
.LFB9644:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	rax, QWORD PTR [rbp-8]	# tmp91, this
	mov	rax, QWORD PTR [rax]	# D.132611, this_2(D)->_M_x
	mov	rdi, rax	#, D.132611
	call	_ZNSt8__detail5__modImLm2147483647ELm16807ELm0EEET_S1_	#
	mov	rdx, rax	# D.132611,
	mov	rax, QWORD PTR [rbp-8]	# tmp92, this
	mov	QWORD PTR [rax], rdx	# this_2(D)->_M_x, D.132611
	mov	rax, QWORD PTR [rbp-8]	# tmp93, this
	mov	rax, QWORD PTR [rax]	# D.132612, this_2(D)->_M_x
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9644:
	.size	_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EEclEv, .-_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EEclEv
	.section	.text._ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEEC2Ev:
.LFB9646:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	nop
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9646:
	.size	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEEC2Ev, .-_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEEC1Ev,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEEC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEE8allocateEmPKv:
.LFB9648:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	QWORD PTR [rbp-16], rsi	# __n, __n
	mov	QWORD PTR [rbp-24], rdx	# D.123082, D.123082
	mov	rax, QWORD PTR [rbp-8]	# tmp92, this
	mov	rdi, rax	#, tmp92
	call	_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEE8max_sizeEv	#
	cmp	rax, QWORD PTR [rbp-16]	# D.132613, __n
	setb	al	#, D.132614
	test	al, al	# D.132614
	je	.L419	#,
	call	_ZSt17__throw_bad_allocv	#
.L419:
	mov	rax, QWORD PTR [rbp-16]	# tmp93, __n
	imul	rax, rax, 1080	# D.132613, tmp93,
	mov	rdi, rax	#, D.132613
	call	_Znwm	#
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9648:
	.size	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEE8allocateEmPKv
	.section	.text._ZNSt10_List_nodeI3AntEC2IJRKS0_EEEDpOT_,"axG",@progbits,_ZNSt10_List_nodeI3AntEC5IJRKS0_EEEDpOT_,comdat
	.align 2
	.weak	_ZNSt10_List_nodeI3AntEC2IJRKS0_EEEDpOT_
	.type	_ZNSt10_List_nodeI3AntEC2IJRKS0_EEEDpOT_, @function
_ZNSt10_List_nodeI3AntEC2IJRKS0_EEEDpOT_:
.LFB9650:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	QWORD PTR [rbp-16], rsi	# __args#0, __args#0
	mov	rax, QWORD PTR [rbp-8]	# tmp88, this
	mov	QWORD PTR [rax], 0	# this_2(D)->D.126514._M_next,
	mov	rax, QWORD PTR [rbp-8]	# tmp89, this
	mov	QWORD PTR [rax+8], 0	# this_2(D)->D.126514._M_prev,
	mov	rax, QWORD PTR [rbp-16]	# tmp90, __args#0
	mov	rdi, rax	#, tmp90
	call	_ZSt7forwardIRK3AntEOT_RNSt16remove_referenceIS3_E4typeE	#
	mov	rdx, rax	# D.132616,
	mov	rax, QWORD PTR [rbp-8]	# tmp91, this
	add	rax, 16	# tmp92,
	mov	ecx, 132	# tmp94,
	mov	rdi, rax	# tmp92, tmp92
	mov	rsi, rdx	# tmp93, tmp93
	rep movsq
	mov	rdx, rsi	# tmp93, tmp93
	mov	rax, rdi	# tmp92, tmp92
	mov	ecx, DWORD PTR [rdx]	# tmp95, *_7
	mov	DWORD PTR [rax], ecx	# this_2(D)->_M_data, tmp95
	lea	rax, [rax+4]	# tmp92,
	lea	rdx, [rdx+4]	# tmp93,
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9650:
	.size	_ZNSt10_List_nodeI3AntEC2IJRKS0_EEEDpOT_, .-_ZNSt10_List_nodeI3AntEC2IJRKS0_EEEDpOT_
	.weak	_ZNSt10_List_nodeI3AntEC2IIRKS0_EEEDpOT_
	.set	_ZNSt10_List_nodeI3AntEC2IIRKS0_EEEDpOT_,_ZNSt10_List_nodeI3AntEC2IJRKS0_EEEDpOT_
	.weak	_ZNSt10_List_nodeI3AntEC1IJRKS0_EEEDpOT_
	.set	_ZNSt10_List_nodeI3AntEC1IJRKS0_EEEDpOT_,_ZNSt10_List_nodeI3AntEC2IJRKS0_EEEDpOT_
	.weak	_ZNSt10_List_nodeI3AntEC1IIRKS0_EEEDpOT_
	.set	_ZNSt10_List_nodeI3AntEC1IIRKS0_EEEDpOT_,_ZNSt10_List_nodeI3AntEC1IJRKS0_EEEDpOT_
	.section	.text._ZNSt11__alloc_neqISaISt10_List_nodeI3AntEELb1EE8_S_do_itERKS3_S6_,"axG",@progbits,_ZNSt11__alloc_neqISaISt10_List_nodeI3AntEELb1EE8_S_do_itERKS3_S6_,comdat
	.weak	_ZNSt11__alloc_neqISaISt10_List_nodeI3AntEELb1EE8_S_do_itERKS3_S6_
	.type	_ZNSt11__alloc_neqISaISt10_List_nodeI3AntEELb1EE8_S_do_itERKS3_S6_, @function
_ZNSt11__alloc_neqISaISt10_List_nodeI3AntEELb1EE8_S_do_itERKS3_S6_:
.LFB9652:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# D.129891, D.129891
	mov	QWORD PTR [rbp-16], rsi	# D.129892, D.129892
	mov	eax, 0	# D.132617,
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9652:
	.size	_ZNSt11__alloc_neqISaISt10_List_nodeI3AntEELb1EE8_S_do_itERKS3_S6_, .-_ZNSt11__alloc_neqISaISt10_List_nodeI3AntEELb1EE8_S_do_itERKS3_S6_
	.section	.text._ZNKSt7__cxx1110_List_baseI3AntSaIS1_EE21_M_get_Node_allocatorEv,"axG",@progbits,_ZNKSt7__cxx1110_List_baseI3AntSaIS1_EE21_M_get_Node_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt7__cxx1110_List_baseI3AntSaIS1_EE21_M_get_Node_allocatorEv
	.type	_ZNKSt7__cxx1110_List_baseI3AntSaIS1_EE21_M_get_Node_allocatorEv, @function
_ZNKSt7__cxx1110_List_baseI3AntSaIS1_EE21_M_get_Node_allocatorEv:
.LFB9653:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	rax, QWORD PTR [rbp-8]	# D.132618, this
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9653:
	.size	_ZNKSt7__cxx1110_List_baseI3AntSaIS1_EE21_M_get_Node_allocatorEv, .-_ZNKSt7__cxx1110_List_baseI3AntSaIS1_EE21_M_get_Node_allocatorEv
	.section	.text._ZNSaI3AntEC2ISt10_List_nodeIS_EEERKSaIT_E,"axG",@progbits,_ZNSaI3AntEC5ISt10_List_nodeIS_EEERKSaIT_E,comdat
	.align 2
	.weak	_ZNSaI3AntEC2ISt10_List_nodeIS_EEERKSaIT_E
	.type	_ZNSaI3AntEC2ISt10_List_nodeIS_EEERKSaIT_E, @function
_ZNSaI3AntEC2ISt10_List_nodeIS_EEERKSaIT_E:
.LFB9655:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	QWORD PTR [rbp-16], rsi	# D.129908, D.129908
	mov	rax, QWORD PTR [rbp-8]	# tmp87, this
	mov	rdi, rax	#, tmp87
	call	_ZN9__gnu_cxx13new_allocatorI3AntEC2Ev	#
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9655:
	.size	_ZNSaI3AntEC2ISt10_List_nodeIS_EEERKSaIT_E, .-_ZNSaI3AntEC2ISt10_List_nodeIS_EEERKSaIT_E
	.weak	_ZNSaI3AntEC1ISt10_List_nodeIS_EEERKSaIT_E
	.set	_ZNSaI3AntEC1ISt10_List_nodeIS_EEERKSaIT_E,_ZNSaI3AntEC2ISt10_List_nodeIS_EEERKSaIT_E
	.section	.text._ZNSt7__cxx1110_List_baseI3AntSaIS1_EE10_List_implC2ERKSaISt10_List_nodeIS1_EE,"axG",@progbits,_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE10_List_implC5ERKSaISt10_List_nodeIS1_EE,comdat
	.align 2
	.weak	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE10_List_implC2ERKSaISt10_List_nodeIS1_EE
	.type	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE10_List_implC2ERKSaISt10_List_nodeIS1_EE, @function
_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE10_List_implC2ERKSaISt10_List_nodeIS1_EE:
.LFB9661:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	QWORD PTR [rbp-16], rsi	# __a, __a
	mov	rdx, QWORD PTR [rbp-16]	# tmp88, __a
	mov	rax, QWORD PTR [rbp-8]	# tmp89, this
	mov	rsi, rdx	#, tmp88
	mov	rdi, rax	#, tmp89
	call	_ZNSaISt10_List_nodeI3AntEEC2ERKS2_	#
	mov	rax, QWORD PTR [rbp-8]	# D.132619, this
	mov	rdi, rax	#, D.132619
	call	_ZNSt10_List_nodeImEC1IJEEEDpOT_	#
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9661:
	.size	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE10_List_implC2ERKSaISt10_List_nodeIS1_EE, .-_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE10_List_implC2ERKSaISt10_List_nodeIS1_EE
	.weak	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE10_List_implC1ERKSaISt10_List_nodeIS1_EE
	.set	_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE10_List_implC1ERKSaISt10_List_nodeIS1_EE,_ZNSt7__cxx1110_List_baseI3AntSaIS1_EE10_List_implC2ERKSaISt10_List_nodeIS1_EE
	.section	.text._ZNSt7__cxx114listI3AntSaIS1_EE12emplace_backIJRKS1_EEEvDpOT_,"axG",@progbits,_ZNSt7__cxx114listI3AntSaIS1_EE12emplace_backIJRKS1_EEEvDpOT_,comdat
	.align 2
	.weak	_ZNSt7__cxx114listI3AntSaIS1_EE12emplace_backIJRKS1_EEEvDpOT_
	.type	_ZNSt7__cxx114listI3AntSaIS1_EE12emplace_backIJRKS1_EEEvDpOT_, @function
_ZNSt7__cxx114listI3AntSaIS1_EE12emplace_backIJRKS1_EEEvDpOT_:
.LFB9663:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	sub	rsp, 24	#,
	.cfi_offset 3, -24
	mov	QWORD PTR [rbp-24], rdi	# this, this
	mov	QWORD PTR [rbp-32], rsi	# __args#0, __args#0
	mov	rax, QWORD PTR [rbp-32]	# tmp89, __args#0
	mov	rdi, rax	#, tmp89
	call	_ZSt7forwardIRK3AntEOT_RNSt16remove_referenceIS3_E4typeE	#
	mov	rbx, rax	# D.132620,
	mov	rax, QWORD PTR [rbp-24]	# tmp90, this
	mov	rdi, rax	#, tmp90
	call	_ZNSt7__cxx114listI3AntSaIS1_EE3endEv	#
	mov	rcx, rax	# D.132088,
	mov	rax, QWORD PTR [rbp-24]	# tmp91, this
	mov	rdx, rbx	#, D.132620
	mov	rsi, rcx	#, D.132088
	mov	rdi, rax	#, tmp91
	call	_ZNSt7__cxx114listI3AntSaIS1_EE9_M_insertIJRKS1_EEEvSt14_List_iteratorIS1_EDpOT_	#
	nop
	add	rsp, 24	#,
	pop	rbx	#
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9663:
	.size	_ZNSt7__cxx114listI3AntSaIS1_EE12emplace_backIJRKS1_EEEvDpOT_, .-_ZNSt7__cxx114listI3AntSaIS1_EE12emplace_backIJRKS1_EEEvDpOT_
	.weak	_ZNSt7__cxx114listI3AntSaIS1_EE12emplace_backIIRKS1_EEEvDpOT_
	.set	_ZNSt7__cxx114listI3AntSaIS1_EE12emplace_backIIRKS1_EEEvDpOT_,_ZNSt7__cxx114listI3AntSaIS1_EE12emplace_backIJRKS1_EEEvDpOT_
	.section	.text._ZNSt8__detail5__modImLm2147483647ELm16807ELm0EEET_S1_,"axG",@progbits,_ZNSt8__detail5__modImLm2147483647ELm16807ELm0EEET_S1_,comdat
	.weak	_ZNSt8__detail5__modImLm2147483647ELm16807ELm0EEET_S1_
	.type	_ZNSt8__detail5__modImLm2147483647ELm16807ELm0EEET_S1_, @function
_ZNSt8__detail5__modImLm2147483647ELm16807ELm0EEET_S1_:
.LFB9683:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR [rbp-8], rdi	# __x, __x
	mov	rax, QWORD PTR [rbp-8]	# tmp89, __x
	mov	rdi, rax	#, tmp89
	call	_ZNSt8__detail4_ModImLm2147483647ELm16807ELm0ELb1ELb1EE6__calcEm	#
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9683:
	.size	_ZNSt8__detail5__modImLm2147483647ELm16807ELm0EEET_S1_, .-_ZNSt8__detail5__modImLm2147483647ELm16807ELm0EEET_S1_
	.section	.text._ZNK9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEE8max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEE8max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEE8max_sizeEv:
.LFB9684:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	movabs	rax, 17080318586768103	# D.132622,
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9684:
	.size	_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEE8max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorI3AntEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI3AntEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI3AntEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorI3AntEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorI3AntEC2Ev:
.LFB9686:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	nop
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9686:
	.size	_ZN9__gnu_cxx13new_allocatorI3AntEC2Ev, .-_ZN9__gnu_cxx13new_allocatorI3AntEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorI3AntEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorI3AntEC1Ev,_ZN9__gnu_cxx13new_allocatorI3AntEC2Ev
	.section	.text._ZNSaISt10_List_nodeI3AntEEC2ERKS2_,"axG",@progbits,_ZNSaISt10_List_nodeI3AntEEC5ERKS2_,comdat
	.align 2
	.weak	_ZNSaISt10_List_nodeI3AntEEC2ERKS2_
	.type	_ZNSaISt10_List_nodeI3AntEEC2ERKS2_, @function
_ZNSaISt10_List_nodeI3AntEEC2ERKS2_:
.LFB9689:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	QWORD PTR [rbp-16], rsi	# __a, __a
	mov	rdx, QWORD PTR [rbp-16]	# tmp87, __a
	mov	rax, QWORD PTR [rbp-8]	# tmp88, this
	mov	rsi, rdx	#, tmp87
	mov	rdi, rax	#, tmp88
	call	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEEC2ERKS4_	#
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9689:
	.size	_ZNSaISt10_List_nodeI3AntEEC2ERKS2_, .-_ZNSaISt10_List_nodeI3AntEEC2ERKS2_
	.weak	_ZNSaISt10_List_nodeI3AntEEC1ERKS2_
	.set	_ZNSaISt10_List_nodeI3AntEEC1ERKS2_,_ZNSaISt10_List_nodeI3AntEEC2ERKS2_
	.section	.text._ZNSt8__detail4_ModImLm2147483647ELm16807ELm0ELb1ELb1EE6__calcEm,"axG",@progbits,_ZNSt8__detail4_ModImLm2147483647ELm16807ELm0ELb1ELb1EE6__calcEm,comdat
	.weak	_ZNSt8__detail4_ModImLm2147483647ELm16807ELm0ELb1ELb1EE6__calcEm
	.type	_ZNSt8__detail4_ModImLm2147483647ELm16807ELm0ELb1ELb1EE6__calcEm, @function
_ZNSt8__detail4_ModImLm2147483647ELm16807ELm0ELb1ELb1EE6__calcEm:
.LFB9699:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-24], rdi	# __x, __x
	mov	rax, QWORD PTR [rbp-24]	# tmp90, __x
	imul	rax, rax, 16807	# tmp89, tmp90,
	mov	QWORD PTR [rbp-8], rax	# __res, tmp89
	mov	rcx, QWORD PTR [rbp-8]	# tmp92, __res
	movabs	rdx, 8589934597	# tmp94,
	mov	rax, rcx	# tmp102, tmp92
	mul	rdx	# tmp94
	mov	rax, rcx	# tmp95, tmp92
	sub	rax, rdx	# tmp95, tmp93
	shr	rax	# tmp96
	add	rax, rdx	# tmp97, tmp93
	shr	rax, 30	# tmp91,
	mov	rdx, rax	# tmp91, tmp91
	mov	rax, rdx	# tmp98, tmp91
	sal	rax, 31	# tmp99,
	sub	rax, rdx	# tmp98, tmp91
	sub	rcx, rax	# tmp100, tmp98
	mov	rax, rcx	# tmp100, tmp100
	mov	QWORD PTR [rbp-8], rax	# __res, tmp100
	mov	rax, QWORD PTR [rbp-8]	# D.132623, __res
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9699:
	.size	_ZNSt8__detail4_ModImLm2147483647ELm16807ELm0ELb1ELb1EE6__calcEm, .-_ZNSt8__detail4_ModImLm2147483647ELm16807ELm0ELb1ELb1EE6__calcEm
	.section	.text._ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEEC2ERKS4_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEEC5ERKS4_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEEC2ERKS4_
	.type	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEEC2ERKS4_, @function
_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEEC2ERKS4_:
.LFB9701:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	QWORD PTR [rbp-16], rsi	# D.123126, D.123126
	nop
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9701:
	.size	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEEC2ERKS4_, .-_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEEC2ERKS4_
	.weak	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEEC1ERKS4_
	.set	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEEC1ERKS4_,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeI3AntEEC2ERKS4_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB9724:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 64	#,
	mov	DWORD PTR [rbp-52], edi	# __initialize_p, __initialize_p
	mov	DWORD PTR [rbp-56], esi	# __priority, __priority
	mov	rax, QWORD PTR fs:40	# tmp91,
	mov	QWORD PTR [rbp-8], rax	# D.132625, tmp91
	xor	eax, eax	# tmp91
	cmp	DWORD PTR [rbp-52], 1	# __initialize_p,
	jne	.L441	#,
	cmp	DWORD PTR [rbp-56], 65535	# __priority,
	jne	.L441	#,
	mov	edi, OFFSET FLAT:_ZStL8__ioinit	#,
	call	_ZNSt8ios_base4InitC1Ev	#
	mov	edx, OFFSET FLAT:__dso_handle	#,
	mov	esi, OFFSET FLAT:_ZStL8__ioinit	#,
	mov	edi, OFFSET FLAT:_ZNSt8ios_base4InitD1Ev	#,
	call	__cxa_atexit	#
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:generator	#,
	call	_ZNSt26linear_congruential_engineImLm16807ELm0ELm2147483647EEC1Em	#
	movss	xmm1, DWORD PTR .LC26[rip]	#,
	pxor	xmm0, xmm0	#
	mov	edi, OFFSET FLAT:distribution	#,
	call	_ZNSt19normal_distributionIfEC1Eff	#
	lea	rax, [rbp-48]	# tmp89,
	pxor	xmm3, xmm3	#
	pxor	xmm2, xmm2	#
	pxor	xmm1, xmm1	#
	pxor	xmm0, xmm0	#
	mov	rdi, rax	#, tmp89
	call	_ZN2cv7Scalar_IdEC1Edddd	#
	mov	edx, DWORD PTR SIZE[rip]	# D.132624, SIZE
	mov	eax, DWORD PTR SIZE[rip+4]	# D.132624, SIZE
	lea	rcx, [rbp-48]	# tmp90,
	mov	r8, rcx	#, tmp90
	mov	ecx, 16	#,
	mov	esi, eax	#, D.132624
	mov	edi, OFFSET FLAT:screen	#,
	call	_ZN2cv3MatC1EiiiRKNS_7Scalar_IdEE	#
	mov	edx, OFFSET FLAT:__dso_handle	#,
	mov	esi, OFFSET FLAT:screen	#,
	mov	edi, OFFSET FLAT:_ZN2cv3MatD1Ev	#,
	call	__cxa_atexit	#
	mov	edi, OFFSET FLAT:_Z4antsB5cxx11	#,
	call	_ZNSt7__cxx114listI3AntSaIS1_EEC1Ev	#
	mov	edx, OFFSET FLAT:__dso_handle	#,
	mov	esi, OFFSET FLAT:_Z4antsB5cxx11	#,
	mov	edi, OFFSET FLAT:_ZNSt7__cxx114listI3AntSaIS1_EED1Ev	#,
	call	__cxa_atexit	#
.L441:
	nop
	mov	rax, QWORD PTR [rbp-8]	# tmp92, D.132625
	xor	rax, QWORD PTR fs:40	# tmp92,
	je	.L440	#,
	call	__stack_chk_fail	#
.L440:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9724:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_SIZE, @function
_GLOBAL__sub_I_SIZE:
.LFB9725:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	esi, 65535	#,
	mov	edi, 1	#,
	call	_Z41__static_initialization_and_destruction_0ii	#
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9725:
	.size	_GLOBAL__sub_I_SIZE, .-_GLOBAL__sub_I_SIZE
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_SIZE
	.section	.rodata
	.align 16
.LC1:
	.long	2147483648
	.long	0
	.long	0
	.long	0
	.align 4
.LC2:
	.long	1065353216
	.align 4
.LC4:
	.long	1259902592
	.align 4
.LC5:
	.long	1073741824
	.align 8
.LC6:
	.long	0
	.long	1072693248
	.align 4
.LC7:
	.long	1120403456
	.align 4
.LC18:
	.long	1107296256
	.align 4
.LC19:
	.long	1098907648
	.align 4
.LC21:
	.long	3221225472
	.align 16
.LC22:
	.long	0
	.long	2147483648
	.long	16447
	.long	0
	.align 16
.LC24:
	.long	0
	.long	2147483648
	.long	16384
	.long	0
	.align 16
.LC25:
	.long	0
	.long	2147483648
	.long	16446
	.long	0
	.align 4
.LC26:
	.long	1056964608
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
