	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"helloworld.cpp"
	.def	main;
	.scl	2;
	.type	32;
	.endef
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
main:                                   # @main
.Lfunc_begin0:
.seh_proc main
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	pushq	%rbp
	.seh_pushreg %rbp
	subq	$384, %rsp                      # imm = 0x180
	.seh_stackalloc 384
	leaq	128(%rsp), %rbp
	.seh_setframe %rbp, 128
	.seh_endprologue
	callq	__main
	movl	$0, 252(%rbp)
	leaq	64(%rbp), %rcx
	movq	%rcx, 56(%rbp)
.Ltmp0:
	leaq	.L.str(%rip), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne190104ILi0EEEPKc
.Ltmp1:
	jmp	.LBB0_1
.LBB0_1:
	leaq	88(%rbp), %rcx
	movq	%rcx, 56(%rbp)
.Ltmp2:
	leaq	.L.str.1(%rip), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne190104ILi0EEEPKc
.Ltmp3:
	jmp	.LBB0_2
.LBB0_2:
	leaq	112(%rbp), %rcx
	movq	%rcx, 56(%rbp)
.Ltmp4:
	leaq	.L.str.2(%rip), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne190104ILi0EEEPKc
.Ltmp5:
	jmp	.LBB0_3
.LBB0_3:
	leaq	136(%rbp), %rcx
	movq	%rcx, 56(%rbp)
.Ltmp6:
	leaq	.L.str.3(%rip), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne190104ILi0EEEPKc
.Ltmp7:
	jmp	.LBB0_4
.LBB0_4:
	leaq	160(%rbp), %rcx
	movq	%rcx, 56(%rbp)
.Ltmp8:
	leaq	.L.str.4(%rip), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne190104ILi0EEEPKc
.Ltmp9:
	jmp	.LBB0_5
.LBB0_5:
	leaq	184(%rbp), %rcx
	movq	%rcx, 56(%rbp)
.Ltmp10:
	leaq	.L.str.5(%rip), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne190104ILi0EEEPKc
.Ltmp11:
	jmp	.LBB0_6
.LBB0_6:
	leaq	64(%rbp), %rax
	movq	%rax, 208(%rbp)
	movq	$6, 216(%rbp)
.Ltmp13:
	leaq	224(%rbp), %rcx
	leaq	208(%rbp), %rdx
	callq	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC2B8ne190104ESt16initializer_listIS6_E
.Ltmp14:
	jmp	.LBB0_7
.LBB0_7:
	leaq	64(%rbp), %rax
	movq	%rax, -8(%rbp)                  # 8-byte Spill
	addq	$144, %rax
	movq	%rax, (%rbp)                    # 8-byte Spill
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	movq	(%rbp), %rcx                    # 8-byte Reload
	addq	$-24, %rcx
	movq	%rcx, -16(%rbp)                 # 8-byte Spill
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	-8(%rbp), %rcx                  # 8-byte Reload
	movq	-16(%rbp), %rax                 # 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rax, (%rbp)                    # 8-byte Spill
	jne	.LBB0_8
# %bb.9:
.Ltmp16:
	movq	.refptr._ZNSt3__14coutE(%rip), %rcx
	leaq	.L.str.6(%rip), %rdx
	callq	_ZNSt3__1lsB8ne190104INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp17:
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	jmp	.LBB0_10
.LBB0_10:
.Ltmp18:
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	leaq	_ZNSt3__14endlB8ne190104IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_(%rip), %rdx
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne190104EPFRS3_S4_E
.Ltmp19:
	jmp	.LBB0_11
.LBB0_11:
.Ltmp20:
	movq	.refptr._ZNSt3__14coutE(%rip), %rcx
	leaq	_ZNSt3__14endlB8ne190104IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_(%rip), %rdx
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne190104EPFRS3_S4_E
.Ltmp21:
	jmp	.LBB0_12
.LBB0_12:
	leaq	224(%rbp), %rax
	movq	%rax, 32(%rbp)
	movq	32(%rbp), %rcx
	callq	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5beginB8ne190104Ev
	movq	%rax, 24(%rbp)
	movq	32(%rbp), %rcx
	callq	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB8ne190104Ev
	movq	%rax, 16(%rbp)
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	leaq	24(%rbp), %rcx
	leaq	16(%rbp), %rdx
	callq	_ZNSt3__1neB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEbRKNS_11__wrap_iterIT_EESC_
	testb	$1, %al
	jne	.LBB0_14
	jmp	.LBB0_25
.LBB0_14:                               #   in Loop: Header=BB0_13 Depth=1
	leaq	24(%rbp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEdeB8ne190104Ev
	movq	%rax, 8(%rbp)
	movq	8(%rbp), %rdx
.Ltmp32:
	movq	.refptr._ZNSt3__14coutE(%rip), %rcx
	callq	_ZNSt3__1lsB8ne190104IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
.Ltmp33:
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	jmp	.LBB0_15
.LBB0_15:                               #   in Loop: Header=BB0_13 Depth=1
.Ltmp34:
	movq	-32(%rbp), %rcx                 # 8-byte Reload
	leaq	.L.str.7(%rip), %rdx
	callq	_ZNSt3__1lsB8ne190104INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp35:
	jmp	.LBB0_16
.LBB0_16:                               #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_17
.LBB0_17:                               #   in Loop: Header=BB0_13 Depth=1
	leaq	24(%rbp), %rcx
	callq	_ZNSt3__111__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEppB8ne190104Ev
	jmp	.LBB0_13
.LBB0_18:
.Ltmp12:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 48(%rbp)
	movl	%eax, 44(%rbp)
	movq	56(%rbp), %rax
	leaq	64(%rbp), %rcx
	cmpq	%rax, %rcx
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	je	.LBB0_20
.LBB0_19:                               # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rcx                 # 8-byte Reload
	addq	$-24, %rcx
	movq	%rcx, -48(%rbp)                 # 8-byte Spill
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	-48(%rbp), %rax                 # 8-byte Reload
	leaq	64(%rbp), %rcx
	cmpq	%rcx, %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	jne	.LBB0_19
.LBB0_20:
	jmp	.LBB0_31
.LBB0_21:
.Ltmp15:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 48(%rbp)
	movl	%eax, 44(%rbp)
	leaq	64(%rbp), %rax
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	addq	$144, %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
.LBB0_22:                               # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rcx                 # 8-byte Reload
	addq	$-24, %rcx
	movq	%rcx, -72(%rbp)                 # 8-byte Spill
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	-64(%rbp), %rcx                 # 8-byte Reload
	movq	-72(%rbp), %rax                 # 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	jne	.LBB0_22
# %bb.23:
	jmp	.LBB0_31
.LBB0_24:
.Ltmp36:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 48(%rbp)
	movl	%eax, 44(%rbp)
	leaq	224(%rbp), %rcx
	callq	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne190104Ev
	jmp	.LBB0_31
.LBB0_25:
.Ltmp22:
	movq	.refptr._ZNSt3__14coutE(%rip), %rcx
	leaq	_ZNSt3__14endlB8ne190104IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_(%rip), %rdx
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne190104EPFRS3_S4_E
.Ltmp23:
	jmp	.LBB0_26
.LBB0_26:
.Ltmp24:
	movq	.refptr._ZNSt3__14coutE(%rip), %rcx
	leaq	.L.str.8(%rip), %rdx
	callq	_ZNSt3__1lsB8ne190104INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp25:
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	jmp	.LBB0_27
.LBB0_27:
.Ltmp26:
	movq	-80(%rbp), %rcx                 # 8-byte Reload
	leaq	_ZNSt3__14endlB8ne190104IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_(%rip), %rdx
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne190104EPFRS3_S4_E
.Ltmp27:
	jmp	.LBB0_28
.LBB0_28:
.Ltmp28:
	movq	.refptr._ZNSt3__14coutE(%rip), %rcx
	leaq	.L.str.9(%rip), %rdx
	callq	_ZNSt3__1lsB8ne190104INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.Ltmp29:
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	jmp	.LBB0_29
.LBB0_29:
.Ltmp30:
	movq	-88(%rbp), %rcx                 # 8-byte Reload
	leaq	_ZNSt3__14endlB8ne190104IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_(%rip), %rdx
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne190104EPFRS3_S4_E
.Ltmp31:
	jmp	.LBB0_30
.LBB0_30:
	leaq	224(%rbp), %rcx
	callq	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne190104Ev
	movl	252(%rbp), %eax
	addq	$384, %rsp                      # imm = 0x180
	popq	%rbp
	retq
.LBB0_31:
	movq	48(%rbp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end0:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table0:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp11-.Ltmp0                 #   Call between .Ltmp0 and .Ltmp11
	.uleb128 .Ltmp12-.Lfunc_begin0          #     jumps to .Ltmp12
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 3 <<
	.uleb128 .Ltmp14-.Ltmp13                #   Call between .Ltmp13 and .Ltmp14
	.uleb128 .Ltmp15-.Lfunc_begin0          #     jumps to .Ltmp15
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin0          # >> Call Site 4 <<
	.uleb128 .Ltmp31-.Ltmp16                #   Call between .Ltmp16 and .Ltmp31
	.uleb128 .Ltmp36-.Lfunc_begin0          #     jumps to .Ltmp36
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Lfunc_end0-.Ltmp31            #   Call between .Ltmp31 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne190104ILi0EEEPKc;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne190104ILi0EEEPKc,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne190104ILi0EEEPKc
	.globl	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne190104ILi0EEEPKc # -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne190104ILi0EEEPKc
	.p2align	4, 0x90
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne190104ILi0EEEPKc: # @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne190104ILi0EEEPKc
.seh_proc _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne190104ILi0EEEPKc
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	leaq	55(%rsp), %rdx
	leaq	54(%rsp), %r8
	callq	_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B8ne190104INS_18__default_init_tagESA_EEOT_OT0_
	movq	56(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rcx
	callq	_ZNSt3__111char_traitsIcE6lengthB8ne190104EPKc
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcy
	nop
	addq	$72, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC2B8ne190104ESt16initializer_listIS6_E;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC2B8ne190104ESt16initializer_listIS6_E,"xr",discard,_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC2B8ne190104ESt16initializer_listIS6_E
	.globl	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC2B8ne190104ESt16initializer_listIS6_E # -- Begin function _ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC2B8ne190104ESt16initializer_listIS6_E
	.p2align	4, 0x90
_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC2B8ne190104ESt16initializer_listIS6_E: # @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC2B8ne190104ESt16initializer_listIS6_E
.Lfunc_begin1:
.seh_proc _ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC2B8ne190104ESt16initializer_listIS6_E
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$136, %rsp
	.seh_stackalloc 136
	.seh_endprologue
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	movq	%rcx, 128(%rsp)
	movq	%rdx, 120(%rsp)
	movq	128(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	$0, (%rcx)
	movq	$0, 8(%rcx)
	addq	$16, %rcx
	movq	$0, 112(%rsp)
	leaq	112(%rsp), %rdx
	leaq	111(%rsp), %r8
	callq	_ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC2B8ne190104IDnNS_18__default_init_tagEEEOT_OT0_
	movq	48(%rsp), %rdx                  # 8-byte Reload
	leaq	80(%rsp), %rcx
	callq	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__destroy_vectorC2B8ne190104ERS8_
	movq	80(%rsp), %rdx
	leaq	88(%rsp), %rcx
	callq	_ZNSt3__122__make_exception_guardB8ne190104INS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESC_
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt16initializer_listINSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4sizeB8ne190104Ev
	cmpq	$0, %rax
	jbe	.LBB2_5
# %bb.1:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt16initializer_listINSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4sizeB8ne190104Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
.Ltmp37:
	callq	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__vallocateB8ne190104Ey
.Ltmp38:
	jmp	.LBB2_2
.LBB2_2:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt16initializer_listINSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE5beginB8ne190104Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNKSt16initializer_listINSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE3endB8ne190104Ev
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt16initializer_listINSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4sizeB8ne190104Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movq	40(%rsp), %r8                   # 8-byte Reload
	movq	%rax, %r9
.Ltmp39:
	callq	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__construct_at_endIPKS6_SB_EEvT_T0_y
.Ltmp40:
	jmp	.LBB2_3
.LBB2_3:
	jmp	.LBB2_5
.LBB2_4:
.Ltmp41:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 72(%rsp)
	movl	%eax, 68(%rsp)
	leaq	88(%rsp), %rcx
	callq	_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEED2B8ne190104Ev
	jmp	.LBB2_6
.LBB2_5:
	leaq	88(%rsp), %rcx
	callq	_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEE10__completeB8ne190104Ev
	leaq	88(%rsp), %rcx
	callq	_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEED2B8ne190104Ev
	nop
	addq	$136, %rsp
	retq
.LBB2_6:
	movq	72(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end1:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC2B8ne190104ESt16initializer_listIS6_E,"xr",discard,_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC2B8ne190104ESt16initializer_listIS6_E
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC2B8ne190104ESt16initializer_listIS6_E,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table2:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp37-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp37
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp40-.Ltmp37                #   Call between .Ltmp37 and .Ltmp40
	.uleb128 .Ltmp41-.Lfunc_begin1          #     jumps to .Ltmp41
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Lfunc_end1-.Ltmp40            #   Call between .Ltmp40 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC2B8ne190104ESt16initializer_listIS6_E,"xr",discard,_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC2B8ne190104ESt16initializer_listIS6_E
                                        # -- End function
	.def	_ZNSt3__1lsB8ne190104INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__1lsB8ne190104INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc,"xr",discard,_ZNSt3__1lsB8ne190104INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.globl	_ZNSt3__1lsB8ne190104INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc # -- Begin function _ZNSt3__1lsB8ne190104INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.p2align	4, 0x90
_ZNSt3__1lsB8ne190104INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc: # @_ZNSt3__1lsB8ne190104INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
.seh_proc _ZNSt3__1lsB8ne190104INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rcx
	callq	_ZNSt3__111char_traitsIcE6lengthB8ne190104EPKc
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__124__put_character_sequenceB8ne190104IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y
	nop
	addq	$72, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne190104EPFRS3_S4_E;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne190104EPFRS3_S4_E,"xr",discard,_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne190104EPFRS3_S4_E
	.globl	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne190104EPFRS3_S4_E # -- Begin function _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne190104EPFRS3_S4_E
	.p2align	4, 0x90
_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne190104EPFRS3_S4_E: # @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne190104EPFRS3_S4_E
.seh_proc _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne190104EPFRS3_S4_E
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	*40(%rsp)
	nop
	addq	$56, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__14endlB8ne190104IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__14endlB8ne190104IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_,"xr",discard,_ZNSt3__14endlB8ne190104IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.globl	_ZNSt3__14endlB8ne190104IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_ # -- Begin function _ZNSt3__14endlB8ne190104IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.p2align	4, 0x90
_ZNSt3__14endlB8ne190104IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_: # @_ZNSt3__14endlB8ne190104IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
.seh_proc _ZNSt3__14endlB8ne190104IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rcx
	movq	(%rcx), %rax
	addq	-24(%rax), %rcx
	movl	$10, %edx
	callq	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne190104Ec
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movb	%al, %dl
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	movq	48(%rsp), %rcx
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	movq	48(%rsp), %rax
	addq	$56, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5beginB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5beginB8ne190104Ev,"xr",discard,_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5beginB8ne190104Ev
	.globl	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5beginB8ne190104Ev # -- Begin function _ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5beginB8ne190104Ev
	.p2align	4, 0x90
_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5beginB8ne190104Ev: # @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5beginB8ne190104Ev
.seh_proc _ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5beginB8ne190104Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	40(%rsp), %rcx
	movq	(%rcx), %rdx
	callq	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__make_iterB8ne190104EPS6_
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	addq	$56, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB8ne190104Ev,"xr",discard,_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB8ne190104Ev
	.globl	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB8ne190104Ev # -- Begin function _ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB8ne190104Ev
	.p2align	4, 0x90
_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB8ne190104Ev: # @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB8ne190104Ev
.seh_proc _ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB8ne190104Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	40(%rsp), %rcx
	movq	8(%rcx), %rdx
	callq	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__make_iterB8ne190104EPS6_
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	addq	$56, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__1neB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEbRKNS_11__wrap_iterIT_EESC_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__1neB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEbRKNS_11__wrap_iterIT_EESC_,"xr",discard,_ZNSt3__1neB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEbRKNS_11__wrap_iterIT_EESC_
	.globl	_ZNSt3__1neB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEbRKNS_11__wrap_iterIT_EESC_ # -- Begin function _ZNSt3__1neB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEbRKNS_11__wrap_iterIT_EESC_
	.p2align	4, 0x90
_ZNSt3__1neB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEbRKNS_11__wrap_iterIT_EESC_: # @_ZNSt3__1neB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEbRKNS_11__wrap_iterIT_EESC_
.seh_proc _ZNSt3__1neB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEbRKNS_11__wrap_iterIT_EESC_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZNSt3__1eqB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEbRKNS_11__wrap_iterIT_EESC_
	xorb	$-1, %al
	andb	$1, %al
	addq	$56, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__111__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEdeB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__111__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEdeB8ne190104Ev,"xr",discard,_ZNKSt3__111__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEdeB8ne190104Ev
	.globl	_ZNKSt3__111__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEdeB8ne190104Ev # -- Begin function _ZNKSt3__111__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEdeB8ne190104Ev
	.p2align	4, 0x90
_ZNKSt3__111__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEdeB8ne190104Ev: # @_ZNKSt3__111__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEdeB8ne190104Ev
.seh_proc _ZNKSt3__111__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEdeB8ne190104Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	(%rax), %rax
	popq	%rcx
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__1lsB8ne190104IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__1lsB8ne190104IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE,"xr",discard,_ZNSt3__1lsB8ne190104IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	.globl	_ZNSt3__1lsB8ne190104IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE # -- Begin function _ZNSt3__1lsB8ne190104IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	.p2align	4, 0x90
_ZNSt3__1lsB8ne190104IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE: # @_ZNSt3__1lsB8ne190104IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
.seh_proc _ZNSt3__1lsB8ne190104IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rcx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne190104Ev
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rcx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB8ne190104Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__124__put_character_sequenceB8ne190104IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y
	nop
	addq	$72, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__111__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEppB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEppB8ne190104Ev,"xr",discard,_ZNSt3__111__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEppB8ne190104Ev
	.globl	_ZNSt3__111__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEppB8ne190104Ev # -- Begin function _ZNSt3__111__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEppB8ne190104Ev
	.p2align	4, 0x90
_ZNSt3__111__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEppB8ne190104Ev: # @_ZNSt3__111__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEppB8ne190104Ev
.seh_proc _ZNSt3__111__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEppB8ne190104Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	(%rax), %rcx
	addq	$24, %rcx
	movq	%rcx, (%rax)
	popq	%rcx
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne190104Ev,"xr",discard,_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne190104Ev
	.globl	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne190104Ev # -- Begin function _ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne190104Ev
	.p2align	4, 0x90
_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne190104Ev: # @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne190104Ev
.Lfunc_begin2:
.seh_proc _ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne190104Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rdx
.Ltmp42:
	leaq	40(%rsp), %rcx
	callq	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__destroy_vectorC2B8ne190104ERS8_
.Ltmp43:
	jmp	.LBB12_1
.LBB12_1:
	leaq	40(%rsp), %rcx
	callq	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__destroy_vectorclB8ne190104Ev
	nop
	addq	$56, %rsp
	retq
.LBB12_2:
.Ltmp44:
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end2:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne190104Ev,"xr",discard,_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne190104Ev
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne190104Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table12:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp42-.Lfunc_begin2          # >> Call Site 1 <<
	.uleb128 .Ltmp43-.Ltmp42                #   Call between .Ltmp42 and .Ltmp43
	.uleb128 .Ltmp44-.Lfunc_begin2          #     jumps to .Ltmp44
	.byte	1                               #   On action: 1
.Lcst_end2:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne190104Ev,"xr",discard,_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne190104Ev
                                        # -- End function
	.def	_ZNSt3__1eqB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEbRKNS_11__wrap_iterIT_EESC_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__1eqB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEbRKNS_11__wrap_iterIT_EESC_,"xr",discard,_ZNSt3__1eqB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEbRKNS_11__wrap_iterIT_EESC_
	.globl	_ZNSt3__1eqB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEbRKNS_11__wrap_iterIT_EESC_ # -- Begin function _ZNSt3__1eqB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEbRKNS_11__wrap_iterIT_EESC_
	.p2align	4, 0x90
_ZNSt3__1eqB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEbRKNS_11__wrap_iterIT_EESC_: # @_ZNSt3__1eqB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEbRKNS_11__wrap_iterIT_EESC_
.seh_proc _ZNSt3__1eqB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEbRKNS_11__wrap_iterIT_EESC_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE4baseB8ne190104Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rcx
	callq	_ZNKSt3__111__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE4baseB8ne190104Ev
	movq	%rax, %rcx
	movq	32(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	sete	%al
	andb	$1, %al
	addq	$56, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__111__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE4baseB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__111__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE4baseB8ne190104Ev,"xr",discard,_ZNKSt3__111__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE4baseB8ne190104Ev
	.globl	_ZNKSt3__111__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE4baseB8ne190104Ev # -- Begin function _ZNKSt3__111__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE4baseB8ne190104Ev
	.p2align	4, 0x90
_ZNKSt3__111__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE4baseB8ne190104Ev: # @_ZNKSt3__111__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE4baseB8ne190104Ev
.seh_proc _ZNKSt3__111__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE4baseB8ne190104Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	(%rax), %rax
	popq	%rcx
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B8ne190104INS_18__default_init_tagESA_EEOT_OT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B8ne190104INS_18__default_init_tagESA_EEOT_OT0_,"xr",discard,_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B8ne190104INS_18__default_init_tagESA_EEOT_OT0_
	.globl	_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B8ne190104INS_18__default_init_tagESA_EEOT_OT0_ # -- Begin function _ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B8ne190104INS_18__default_init_tagESA_EEOT_OT0_
	.p2align	4, 0x90
_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B8ne190104INS_18__default_init_tagESA_EEOT_OT0_: # @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B8ne190104INS_18__default_init_tagESA_EEOT_OT0_
.seh_proc _ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B8ne190104INS_18__default_init_tagESA_EEOT_OT0_
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movb	47(%rsp), %dl
	callq	_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B8ne190104ENS_18__default_init_tagE
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movb	46(%rsp), %dl
	callq	_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B8ne190104ENS_18__default_init_tagE
	nop
	addq	$72, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__111char_traitsIcE6lengthB8ne190104EPKc;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111char_traitsIcE6lengthB8ne190104EPKc,"xr",discard,_ZNSt3__111char_traitsIcE6lengthB8ne190104EPKc
	.globl	_ZNSt3__111char_traitsIcE6lengthB8ne190104EPKc # -- Begin function _ZNSt3__111char_traitsIcE6lengthB8ne190104EPKc
	.p2align	4, 0x90
_ZNSt3__111char_traitsIcE6lengthB8ne190104EPKc: # @_ZNSt3__111char_traitsIcE6lengthB8ne190104EPKc
.seh_proc _ZNSt3__111char_traitsIcE6lengthB8ne190104EPKc
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNSt3__118__constexpr_strlenB8ne190104IcEEyPKT_
	nop
	addq	$40, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B8ne190104ENS_18__default_init_tagE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B8ne190104ENS_18__default_init_tagE,"xr",discard,_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B8ne190104ENS_18__default_init_tagE
	.globl	_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B8ne190104ENS_18__default_init_tagE # -- Begin function _ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B8ne190104ENS_18__default_init_tagE
	.p2align	4, 0x90
_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B8ne190104ENS_18__default_init_tagE: # @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B8ne190104ENS_18__default_init_tagE
.seh_proc _ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B8ne190104ENS_18__default_init_tagE
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movb	%dl, 15(%rsp)
	movq	%rcx, (%rsp)
	addq	$16, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B8ne190104ENS_18__default_init_tagE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B8ne190104ENS_18__default_init_tagE,"xr",discard,_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B8ne190104ENS_18__default_init_tagE
	.globl	_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B8ne190104ENS_18__default_init_tagE # -- Begin function _ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B8ne190104ENS_18__default_init_tagE
	.p2align	4, 0x90
_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B8ne190104ENS_18__default_init_tagE: # @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B8ne190104ENS_18__default_init_tagE
.seh_proc _ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B8ne190104ENS_18__default_init_tagE
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movb	%dl, 55(%rsp)
	movq	%rcx, 40(%rsp)
	movq	40(%rsp), %rcx
	callq	_ZNSt3__19allocatorIcEC2B8ne190104Ev
	nop
	addq	$56, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__19allocatorIcEC2B8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19allocatorIcEC2B8ne190104Ev,"xr",discard,_ZNSt3__19allocatorIcEC2B8ne190104Ev
	.globl	_ZNSt3__19allocatorIcEC2B8ne190104Ev # -- Begin function _ZNSt3__19allocatorIcEC2B8ne190104Ev
	.p2align	4, 0x90
_ZNSt3__19allocatorIcEC2B8ne190104Ev:   # @_ZNSt3__19allocatorIcEC2B8ne190104Ev
.seh_proc _ZNSt3__19allocatorIcEC2B8ne190104Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne190104Ev
	nop
	addq	$40, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne190104Ev,"xr",discard,_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne190104Ev
	.globl	_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne190104Ev # -- Begin function _ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne190104Ev
	.p2align	4, 0x90
_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne190104Ev: # @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne190104Ev
.seh_proc _ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne190104Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	popq	%rax
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__118__constexpr_strlenB8ne190104IcEEyPKT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__118__constexpr_strlenB8ne190104IcEEyPKT_,"xr",discard,_ZNSt3__118__constexpr_strlenB8ne190104IcEEyPKT_
	.globl	_ZNSt3__118__constexpr_strlenB8ne190104IcEEyPKT_ # -- Begin function _ZNSt3__118__constexpr_strlenB8ne190104IcEEyPKT_
	.p2align	4, 0x90
_ZNSt3__118__constexpr_strlenB8ne190104IcEEyPKT_: # @_ZNSt3__118__constexpr_strlenB8ne190104IcEEyPKT_
.seh_proc _ZNSt3__118__constexpr_strlenB8ne190104IcEEyPKT_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	strlen
	nop
	addq	$40, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC2B8ne190104IDnNS_18__default_init_tagEEEOT_OT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC2B8ne190104IDnNS_18__default_init_tagEEEOT_OT0_,"xr",discard,_ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC2B8ne190104IDnNS_18__default_init_tagEEEOT_OT0_
	.globl	_ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC2B8ne190104IDnNS_18__default_init_tagEEEOT_OT0_ # -- Begin function _ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC2B8ne190104IDnNS_18__default_init_tagEEEOT_OT0_
	.p2align	4, 0x90
_ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC2B8ne190104IDnNS_18__default_init_tagEEEOT_OT0_: # @_ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC2B8ne190104IDnNS_18__default_init_tagEEEOT_OT0_
.seh_proc _ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC2B8ne190104IDnNS_18__default_init_tagEEEOT_OT0_
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rdx
	callq	_ZNSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EEC2B8ne190104IDnTnNS_9enable_ifIXntsr7is_sameIS8_u7__decayIT_EEE5valueEiE4typeELi0EEEOSB_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movb	47(%rsp), %dl
	callq	_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEELi1ELb1EEC2B8ne190104ENS_18__default_init_tagE
	nop
	addq	$72, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__122__make_exception_guardB8ne190104INS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESC_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__122__make_exception_guardB8ne190104INS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESC_,"xr",discard,_ZNSt3__122__make_exception_guardB8ne190104INS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESC_
	.globl	_ZNSt3__122__make_exception_guardB8ne190104INS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESC_ # -- Begin function _ZNSt3__122__make_exception_guardB8ne190104INS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESC_
	.p2align	4, 0x90
_ZNSt3__122__make_exception_guardB8ne190104INS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESC_: # @_ZNSt3__122__make_exception_guardB8ne190104INS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESC_
.seh_proc _ZNSt3__122__make_exception_guardB8ne190104INS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESC_
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rdx
	callq	_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEEC2B8ne190104ESA_
	movq	40(%rsp), %rax                  # 8-byte Reload
	addq	$72, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__destroy_vectorC2B8ne190104ERS8_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__destroy_vectorC2B8ne190104ERS8_,"xr",discard,_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__destroy_vectorC2B8ne190104ERS8_
	.globl	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__destroy_vectorC2B8ne190104ERS8_ # -- Begin function _ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__destroy_vectorC2B8ne190104ERS8_
	.p2align	4, 0x90
_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__destroy_vectorC2B8ne190104ERS8_: # @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__destroy_vectorC2B8ne190104ERS8_
.seh_proc _ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__destroy_vectorC2B8ne190104ERS8_
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	8(%rsp), %rax
	movq	(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$16, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt16initializer_listINSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4sizeB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt16initializer_listINSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4sizeB8ne190104Ev,"xr",discard,_ZNKSt16initializer_listINSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4sizeB8ne190104Ev
	.globl	_ZNKSt16initializer_listINSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4sizeB8ne190104Ev # -- Begin function _ZNKSt16initializer_listINSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4sizeB8ne190104Ev
	.p2align	4, 0x90
_ZNKSt16initializer_listINSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4sizeB8ne190104Ev: # @_ZNKSt16initializer_listINSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4sizeB8ne190104Ev
.seh_proc _ZNKSt16initializer_listINSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4sizeB8ne190104Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	8(%rax), %rax
	popq	%rcx
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__vallocateB8ne190104Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__vallocateB8ne190104Ey,"xr",discard,_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__vallocateB8ne190104Ey
	.globl	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__vallocateB8ne190104Ey # -- Begin function _ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__vallocateB8ne190104Ey
	.p2align	4, 0x90
_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__vallocateB8ne190104Ey: # @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__vallocateB8ne190104Ey
.seh_proc _ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__vallocateB8ne190104Ey
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	80(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8max_sizeEv
	movq	%rax, %rcx
	movq	48(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jbe	.LBB26_2
# %bb.1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE20__throw_length_errorB8ne190104Ev
.LBB26_2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__allocB8ne190104Ev
	movq	%rax, %rdx
	movq	72(%rsp), %r8
	leaq	56(%rsp), %rcx
	callq	_ZNSt3__119__allocate_at_leastB8ne190104INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSA_y
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rax
	movq	%rax, (%rcx)
	movq	56(%rsp), %rax
	movq	%rax, 8(%rcx)
	movq	(%rcx), %rax
	imulq	$24, 64(%rsp), %rdx
	addq	%rdx, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE9__end_capB8ne190104Ev
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rdx, (%rax)
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE14__annotate_newB8ne190104Ey
	nop
	addq	$88, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__construct_at_endIPKS6_SB_EEvT_T0_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__construct_at_endIPKS6_SB_EEvT_T0_y,"xr",discard,_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__construct_at_endIPKS6_SB_EEvT_T0_y
	.globl	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__construct_at_endIPKS6_SB_EEvT_T0_y # -- Begin function _ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__construct_at_endIPKS6_SB_EEvT_T0_y
	.p2align	4, 0x90
_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__construct_at_endIPKS6_SB_EEvT_T0_y: # @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__construct_at_endIPKS6_SB_EEvT_T0_y
.Lfunc_begin3:
.seh_proc _ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__construct_at_endIPKS6_SB_EEvT_T0_y
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$120, %rsp
	.seh_stackalloc 120
	.seh_endprologue
	movq	%rcx, 112(%rsp)
	movq	%rdx, 104(%rsp)
	movq	%r8, 96(%rsp)
	movq	%r9, 88(%rsp)
	movq	112(%rsp), %rdx
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movq	88(%rsp), %r8
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE21_ConstructTransactionC2B8ne190104ERS8_y
	movq	32(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__allocB8ne190104Ev
	movq	%rax, %rcx
	movq	104(%rsp), %rdx
	movq	96(%rsp), %r8
	movq	72(%rsp), %r9
.Ltmp45:
	callq	_ZNSt3__130__uninitialized_allocator_copyB8ne190104INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPKS6_S9_PS6_EET2_RT_T0_T1_SB_
.Ltmp46:
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB27_1
.LBB27_1:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 72(%rsp)
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE21_ConstructTransactionD2B8ne190104Ev
	nop
	addq	$120, %rsp
	retq
.LBB27_2:
.Ltmp47:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 56(%rsp)
	movl	%eax, 52(%rsp)
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE21_ConstructTransactionD2B8ne190104Ev
# %bb.3:
	movq	56(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end3:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__construct_at_endIPKS6_SB_EEvT_T0_y,"xr",discard,_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__construct_at_endIPKS6_SB_EEvT_T0_y
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__construct_at_endIPKS6_SB_EEvT_T0_y,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table27:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp45-.Lfunc_begin3          # >> Call Site 1 <<
	.uleb128 .Ltmp46-.Ltmp45                #   Call between .Ltmp45 and .Ltmp46
	.uleb128 .Ltmp47-.Lfunc_begin3          #     jumps to .Ltmp47
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Lfunc_end3-.Ltmp46            #   Call between .Ltmp46 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__construct_at_endIPKS6_SB_EEvT_T0_y,"xr",discard,_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__construct_at_endIPKS6_SB_EEvT_T0_y
                                        # -- End function
	.def	_ZNKSt16initializer_listINSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE5beginB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt16initializer_listINSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE5beginB8ne190104Ev,"xr",discard,_ZNKSt16initializer_listINSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE5beginB8ne190104Ev
	.globl	_ZNKSt16initializer_listINSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE5beginB8ne190104Ev # -- Begin function _ZNKSt16initializer_listINSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE5beginB8ne190104Ev
	.p2align	4, 0x90
_ZNKSt16initializer_listINSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE5beginB8ne190104Ev: # @_ZNKSt16initializer_listINSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE5beginB8ne190104Ev
.seh_proc _ZNKSt16initializer_listINSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE5beginB8ne190104Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	(%rax), %rax
	popq	%rcx
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt16initializer_listINSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE3endB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt16initializer_listINSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE3endB8ne190104Ev,"xr",discard,_ZNKSt16initializer_listINSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE3endB8ne190104Ev
	.globl	_ZNKSt16initializer_listINSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE3endB8ne190104Ev # -- Begin function _ZNKSt16initializer_listINSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE3endB8ne190104Ev
	.p2align	4, 0x90
_ZNKSt16initializer_listINSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE3endB8ne190104Ev: # @_ZNKSt16initializer_listINSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE3endB8ne190104Ev
.seh_proc _ZNKSt16initializer_listINSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE3endB8ne190104Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rcx
	movq	(%rcx), %rax
	imulq	$24, 8(%rcx), %rcx
	addq	%rcx, %rax
	popq	%rcx
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEE10__completeB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEE10__completeB8ne190104Ev,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEE10__completeB8ne190104Ev
	.globl	_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEE10__completeB8ne190104Ev # -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEE10__completeB8ne190104Ev
	.p2align	4, 0x90
_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEE10__completeB8ne190104Ev: # @_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEE10__completeB8ne190104Ev
.seh_proc _ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEE10__completeB8ne190104Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movb	$1, 8(%rax)
	popq	%rax
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEED2B8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEED2B8ne190104Ev,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEED2B8ne190104Ev
	.globl	_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEED2B8ne190104Ev # -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEED2B8ne190104Ev
	.p2align	4, 0x90
_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEED2B8ne190104Ev: # @_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEED2B8ne190104Ev
.Lfunc_begin4:
.seh_proc _ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEED2B8ne190104Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	testb	$1, 8(%rax)
	jne	.LBB31_3
# %bb.1:
.Ltmp48:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__destroy_vectorclB8ne190104Ev
.Ltmp49:
	jmp	.LBB31_2
.LBB31_2:
	jmp	.LBB31_3
.LBB31_3:
	addq	$56, %rsp
	retq
.LBB31_4:
.Ltmp50:
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end4:
	.seh_handlerdata
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEED2B8ne190104Ev,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEED2B8ne190104Ev
	.seh_endproc
	.section	.xdata$_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEED2B8ne190104Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table31:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp48-.Lfunc_begin4          # >> Call Site 1 <<
	.uleb128 .Ltmp49-.Ltmp48                #   Call between .Ltmp48 and .Ltmp49
	.uleb128 .Ltmp50-.Lfunc_begin4          #     jumps to .Ltmp50
	.byte	1                               #   On action: 1
.Lcst_end4:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEED2B8ne190104Ev,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEED2B8ne190104Ev
                                        # -- End function
	.def	_ZNSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EEC2B8ne190104IDnTnNS_9enable_ifIXntsr7is_sameIS8_u7__decayIT_EEE5valueEiE4typeELi0EEEOSB_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EEC2B8ne190104IDnTnNS_9enable_ifIXntsr7is_sameIS8_u7__decayIT_EEE5valueEiE4typeELi0EEEOSB_,"xr",discard,_ZNSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EEC2B8ne190104IDnTnNS_9enable_ifIXntsr7is_sameIS8_u7__decayIT_EEE5valueEiE4typeELi0EEEOSB_
	.globl	_ZNSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EEC2B8ne190104IDnTnNS_9enable_ifIXntsr7is_sameIS8_u7__decayIT_EEE5valueEiE4typeELi0EEEOSB_ # -- Begin function _ZNSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EEC2B8ne190104IDnTnNS_9enable_ifIXntsr7is_sameIS8_u7__decayIT_EEE5valueEiE4typeELi0EEEOSB_
	.p2align	4, 0x90
_ZNSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EEC2B8ne190104IDnTnNS_9enable_ifIXntsr7is_sameIS8_u7__decayIT_EEE5valueEiE4typeELi0EEEOSB_: # @_ZNSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EEC2B8ne190104IDnTnNS_9enable_ifIXntsr7is_sameIS8_u7__decayIT_EEE5valueEiE4typeELi0EEEOSB_
.seh_proc _ZNSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EEC2B8ne190104IDnTnNS_9enable_ifIXntsr7is_sameIS8_u7__decayIT_EEE5valueEiE4typeELi0EEEOSB_
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	8(%rsp), %rax
	movq	$0, (%rax)
	addq	$16, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEELi1ELb1EEC2B8ne190104ENS_18__default_init_tagE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEELi1ELb1EEC2B8ne190104ENS_18__default_init_tagE,"xr",discard,_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEELi1ELb1EEC2B8ne190104ENS_18__default_init_tagE
	.globl	_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEELi1ELb1EEC2B8ne190104ENS_18__default_init_tagE # -- Begin function _ZNSt3__122__compressed_pair_elemINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEELi1ELb1EEC2B8ne190104ENS_18__default_init_tagE
	.p2align	4, 0x90
_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEELi1ELb1EEC2B8ne190104ENS_18__default_init_tagE: # @_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEELi1ELb1EEC2B8ne190104ENS_18__default_init_tagE
.seh_proc _ZNSt3__122__compressed_pair_elemINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEELi1ELb1EEC2B8ne190104ENS_18__default_init_tagE
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movb	%dl, 55(%rsp)
	movq	%rcx, 40(%rsp)
	movq	40(%rsp), %rcx
	callq	_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEEC2B8ne190104Ev
	nop
	addq	$56, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEEC2B8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEEC2B8ne190104Ev,"xr",discard,_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEEC2B8ne190104Ev
	.globl	_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEEC2B8ne190104Ev # -- Begin function _ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEEC2B8ne190104Ev
	.p2align	4, 0x90
_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEEC2B8ne190104Ev: # @_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEEC2B8ne190104Ev
.seh_proc _ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEEC2B8ne190104Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEC2B8ne190104Ev
	nop
	addq	$40, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEC2B8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEC2B8ne190104Ev,"xr",discard,_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEC2B8ne190104Ev
	.globl	_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEC2B8ne190104Ev # -- Begin function _ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEC2B8ne190104Ev
	.p2align	4, 0x90
_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEC2B8ne190104Ev: # @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEC2B8ne190104Ev
.seh_proc _ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEC2B8ne190104Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	popq	%rax
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEEC2B8ne190104ESA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEEC2B8ne190104ESA_,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEEC2B8ne190104ESA_
	.globl	_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEEC2B8ne190104ESA_ # -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEEC2B8ne190104ESA_
	.p2align	4, 0x90
_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEEC2B8ne190104ESA_: # @_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEEC2B8ne190104ESA_
.seh_proc _ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEEC2B8ne190104ESA_
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rdx, 8(%rsp)
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	movb	$0, 8(%rax)
	addq	$16, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8max_sizeEv;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8max_sizeEv,"xr",discard,_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8max_sizeEv
	.globl	_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8max_sizeEv # -- Begin function _ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8max_sizeEv
	.p2align	4, 0x90
_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8max_sizeEv: # @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8max_sizeEv
.Lfunc_begin5:
.seh_proc _ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8max_sizeEv
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	callq	_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__allocB8ne190104Ev
	movq	%rax, %rcx
	callq	_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE8max_sizeB8ne190104IS7_TnNS_9enable_ifIXsr14__has_max_sizeIKT_EE5valueEiE4typeELi0EEEyRKS7_
	movq	%rax, 56(%rsp)
	callq	_ZNSt3__114numeric_limitsIxE3maxB8ne190104Ev
	movq	%rax, 48(%rsp)
.Ltmp51:
	leaq	56(%rsp), %rcx
	leaq	48(%rsp), %rdx
	callq	_ZNSt3__13minB8ne190104IyEERKT_S3_S3_
.Ltmp52:
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB37_1
.LBB37_1:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	addq	$72, %rsp
	retq
.LBB37_2:
.Ltmp53:
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end5:
	.seh_handlerdata
	.section	.text$_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8max_sizeEv,"xr",discard,_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8max_sizeEv
	.seh_endproc
	.section	.xdata$_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8max_sizeEv,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table37:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp51-.Lfunc_begin5          # >> Call Site 1 <<
	.uleb128 .Ltmp52-.Ltmp51                #   Call between .Ltmp51 and .Ltmp52
	.uleb128 .Ltmp53-.Lfunc_begin5          #     jumps to .Ltmp53
	.byte	1                               #   On action: 1
.Lcst_end5:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8max_sizeEv,"xr",discard,_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8max_sizeEv
                                        # -- End function
	.def	_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE20__throw_length_errorB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE20__throw_length_errorB8ne190104Ev,"xr",discard,_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE20__throw_length_errorB8ne190104Ev
	.globl	_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE20__throw_length_errorB8ne190104Ev # -- Begin function _ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE20__throw_length_errorB8ne190104Ev
	.p2align	4, 0x90
_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE20__throw_length_errorB8ne190104Ev: # @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE20__throw_length_errorB8ne190104Ev
.seh_proc _ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE20__throw_length_errorB8ne190104Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	leaq	.L.str.10(%rip), %rcx
	callq	_ZNSt3__120__throw_length_errorB8ne190104EPKc
	int3
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__allocate_at_leastB8ne190104INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSA_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__allocate_at_leastB8ne190104INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSA_y,"xr",discard,_ZNSt3__119__allocate_at_leastB8ne190104INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSA_y
	.globl	_ZNSt3__119__allocate_at_leastB8ne190104INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSA_y # -- Begin function _ZNSt3__119__allocate_at_leastB8ne190104INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSA_y
	.p2align	4, 0x90
_ZNSt3__119__allocate_at_leastB8ne190104INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSA_y: # @_ZNSt3__119__allocate_at_leastB8ne190104INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSA_y
.seh_proc _ZNSt3__119__allocate_at_leastB8ne190104INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSA_y
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	%rcx, %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	56(%rsp), %rcx
	movq	48(%rsp), %rdx
	callq	_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE8allocateB8ne190104Ey
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	%rdx, (%rcx)
	movq	48(%rsp), %rdx
	movq	%rdx, 8(%rcx)
	addq	$72, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__allocB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__allocB8ne190104Ev,"xr",discard,_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__allocB8ne190104Ev
	.globl	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__allocB8ne190104Ev # -- Begin function _ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__allocB8ne190104Ev
	.p2align	4, 0x90
_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__allocB8ne190104Ev: # @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__allocB8ne190104Ev
.seh_proc _ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__allocB8ne190104Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	addq	$16, %rcx
	callq	_ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE6secondB8ne190104Ev
	nop
	addq	$40, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE9__end_capB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE9__end_capB8ne190104Ev,"xr",discard,_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE9__end_capB8ne190104Ev
	.globl	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE9__end_capB8ne190104Ev # -- Begin function _ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE9__end_capB8ne190104Ev
	.p2align	4, 0x90
_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE9__end_capB8ne190104Ev: # @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE9__end_capB8ne190104Ev
.seh_proc _ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE9__end_capB8ne190104Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	addq	$16, %rcx
	callq	_ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5firstB8ne190104Ev
	nop
	addq	$40, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE14__annotate_newB8ne190104Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE14__annotate_newB8ne190104Ey,"xr",discard,_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE14__annotate_newB8ne190104Ey
	.globl	_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE14__annotate_newB8ne190104Ey # -- Begin function _ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE14__annotate_newB8ne190104Ey
	.p2align	4, 0x90
_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE14__annotate_newB8ne190104Ey: # @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE14__annotate_newB8ne190104Ey
.seh_proc _ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE14__annotate_newB8ne190104Ey
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	addq	$16, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__13minB8ne190104IyEERKT_S3_S3_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__13minB8ne190104IyEERKT_S3_S3_,"xr",discard,_ZNSt3__13minB8ne190104IyEERKT_S3_S3_
	.globl	_ZNSt3__13minB8ne190104IyEERKT_S3_S3_ # -- Begin function _ZNSt3__13minB8ne190104IyEERKT_S3_S3_
	.p2align	4, 0x90
_ZNSt3__13minB8ne190104IyEERKT_S3_S3_:  # @_ZNSt3__13minB8ne190104IyEERKT_S3_S3_
.seh_proc _ZNSt3__13minB8ne190104IyEERKT_S3_S3_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	movb	39(%rsp), %r8b
	callq	_ZNSt3__13minB8ne190104IyNS_6__lessIvvEEEERKT_S5_S5_T0_
	nop
	addq	$56, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE8max_sizeB8ne190104IS7_TnNS_9enable_ifIXsr14__has_max_sizeIKT_EE5valueEiE4typeELi0EEEyRKS7_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE8max_sizeB8ne190104IS7_TnNS_9enable_ifIXsr14__has_max_sizeIKT_EE5valueEiE4typeELi0EEEyRKS7_,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE8max_sizeB8ne190104IS7_TnNS_9enable_ifIXsr14__has_max_sizeIKT_EE5valueEiE4typeELi0EEEyRKS7_
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE8max_sizeB8ne190104IS7_TnNS_9enable_ifIXsr14__has_max_sizeIKT_EE5valueEiE4typeELi0EEEyRKS7_ # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE8max_sizeB8ne190104IS7_TnNS_9enable_ifIXsr14__has_max_sizeIKT_EE5valueEiE4typeELi0EEEyRKS7_
	.p2align	4, 0x90
_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE8max_sizeB8ne190104IS7_TnNS_9enable_ifIXsr14__has_max_sizeIKT_EE5valueEiE4typeELi0EEEyRKS7_: # @_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE8max_sizeB8ne190104IS7_TnNS_9enable_ifIXsr14__has_max_sizeIKT_EE5valueEiE4typeELi0EEEyRKS7_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE8max_sizeB8ne190104IS7_TnNS_9enable_ifIXsr14__has_max_sizeIKT_EE5valueEiE4typeELi0EEEyRKS7_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNKSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE8max_sizeB8ne190104Ev
	nop
	addq	$40, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__allocB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__allocB8ne190104Ev,"xr",discard,_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__allocB8ne190104Ev
	.globl	_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__allocB8ne190104Ev # -- Begin function _ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__allocB8ne190104Ev
	.p2align	4, 0x90
_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__allocB8ne190104Ev: # @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__allocB8ne190104Ev
.seh_proc _ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__allocB8ne190104Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	addq	$16, %rcx
	callq	_ZNKSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE6secondB8ne190104Ev
	nop
	addq	$40, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114numeric_limitsIxE3maxB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114numeric_limitsIxE3maxB8ne190104Ev,"xr",discard,_ZNSt3__114numeric_limitsIxE3maxB8ne190104Ev
	.globl	_ZNSt3__114numeric_limitsIxE3maxB8ne190104Ev # -- Begin function _ZNSt3__114numeric_limitsIxE3maxB8ne190104Ev
	.p2align	4, 0x90
_ZNSt3__114numeric_limitsIxE3maxB8ne190104Ev: # @_ZNSt3__114numeric_limitsIxE3maxB8ne190104Ev
.seh_proc _ZNSt3__114numeric_limitsIxE3maxB8ne190104Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	callq	_ZNSt3__123__libcpp_numeric_limitsIxLb1EE3maxB8ne190104Ev
	nop
	addq	$40, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	__clang_call_terminate;
	.scl	2;
	.type	32;
	.endef
	.section	.text$__clang_call_terminate,"xr",discard,__clang_call_terminate
	.globl	__clang_call_terminate          # -- Begin function __clang_call_terminate
	.p2align	4, 0x90
__clang_call_terminate:                 # @__clang_call_terminate
.seh_proc __clang_call_terminate
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	callq	__cxa_begin_catch
	callq	_ZSt9terminatev
	int3
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__13minB8ne190104IyNS_6__lessIvvEEEERKT_S5_S5_T0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__13minB8ne190104IyNS_6__lessIvvEEEERKT_S5_S5_T0_,"xr",discard,_ZNSt3__13minB8ne190104IyNS_6__lessIvvEEEERKT_S5_S5_T0_
	.globl	_ZNSt3__13minB8ne190104IyNS_6__lessIvvEEEERKT_S5_S5_T0_ # -- Begin function _ZNSt3__13minB8ne190104IyNS_6__lessIvvEEEERKT_S5_S5_T0_
	.p2align	4, 0x90
_ZNSt3__13minB8ne190104IyNS_6__lessIvvEEEERKT_S5_S5_T0_: # @_ZNSt3__13minB8ne190104IyNS_6__lessIvvEEEERKT_S5_S5_T0_
.seh_proc _ZNSt3__13minB8ne190104IyNS_6__lessIvvEEEERKT_S5_S5_T0_
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movb	%r8b, 71(%rsp)
	movq	%rcx, 56(%rsp)
	movq	%rdx, 48(%rsp)
	movq	48(%rsp), %rdx
	movq	56(%rsp), %r8
	leaq	71(%rsp), %rcx
	callq	_ZNKSt3__16__lessIvvEclB8ne190104IyyEEbRKT_RKT0_
	testb	$1, %al
	jne	.LBB48_1
	jmp	.LBB48_2
.LBB48_1:
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB48_3
.LBB48_2:
	movq	56(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
.LBB48_3:
	movq	40(%rsp), %rax                  # 8-byte Reload
	addq	$72, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16__lessIvvEclB8ne190104IyyEEbRKT_RKT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16__lessIvvEclB8ne190104IyyEEbRKT_RKT0_,"xr",discard,_ZNKSt3__16__lessIvvEclB8ne190104IyyEEbRKT_RKT0_
	.globl	_ZNKSt3__16__lessIvvEclB8ne190104IyyEEbRKT_RKT0_ # -- Begin function _ZNKSt3__16__lessIvvEclB8ne190104IyyEEbRKT_RKT0_
	.p2align	4, 0x90
_ZNKSt3__16__lessIvvEclB8ne190104IyyEEbRKT_RKT0_: # @_ZNKSt3__16__lessIvvEclB8ne190104IyyEEbRKT_RKT0_
.seh_proc _ZNKSt3__16__lessIvvEclB8ne190104IyyEEbRKT_RKT0_
# %bb.0:
	subq	$24, %rsp
	.seh_stackalloc 24
	.seh_endprologue
	movq	%rcx, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movq	%r8, (%rsp)
	movq	8(%rsp), %rax
	movq	(%rax), %rax
	movq	(%rsp), %rcx
	cmpq	(%rcx), %rax
	setb	%al
	andb	$1, %al
	addq	$24, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE8max_sizeB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE8max_sizeB8ne190104Ev,"xr",discard,_ZNKSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE8max_sizeB8ne190104Ev
	.globl	_ZNKSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE8max_sizeB8ne190104Ev # -- Begin function _ZNKSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE8max_sizeB8ne190104Ev
	.p2align	4, 0x90
_ZNKSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE8max_sizeB8ne190104Ev: # @_ZNKSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE8max_sizeB8ne190104Ev
.seh_proc _ZNKSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE8max_sizeB8ne190104Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movabsq	$768614336404564650, %rax       # imm = 0xAAAAAAAAAAAAAAA
	popq	%rcx
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE6secondB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE6secondB8ne190104Ev,"xr",discard,_ZNKSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE6secondB8ne190104Ev
	.globl	_ZNKSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE6secondB8ne190104Ev # -- Begin function _ZNKSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE6secondB8ne190104Ev
	.p2align	4, 0x90
_ZNKSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE6secondB8ne190104Ev: # @_ZNKSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE6secondB8ne190104Ev
.seh_proc _ZNKSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE6secondB8ne190104Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNKSt3__122__compressed_pair_elemINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEELi1ELb1EE5__getB8ne190104Ev
	nop
	addq	$40, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__122__compressed_pair_elemINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEELi1ELb1EE5__getB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__122__compressed_pair_elemINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEELi1ELb1EE5__getB8ne190104Ev,"xr",discard,_ZNKSt3__122__compressed_pair_elemINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEELi1ELb1EE5__getB8ne190104Ev
	.globl	_ZNKSt3__122__compressed_pair_elemINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEELi1ELb1EE5__getB8ne190104Ev # -- Begin function _ZNKSt3__122__compressed_pair_elemINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEELi1ELb1EE5__getB8ne190104Ev
	.p2align	4, 0x90
_ZNKSt3__122__compressed_pair_elemINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEELi1ELb1EE5__getB8ne190104Ev: # @_ZNKSt3__122__compressed_pair_elemINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEELi1ELb1EE5__getB8ne190104Ev
.seh_proc _ZNKSt3__122__compressed_pair_elemINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEELi1ELb1EE5__getB8ne190104Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	popq	%rcx
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__123__libcpp_numeric_limitsIxLb1EE3maxB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__123__libcpp_numeric_limitsIxLb1EE3maxB8ne190104Ev,"xr",discard,_ZNSt3__123__libcpp_numeric_limitsIxLb1EE3maxB8ne190104Ev
	.globl	_ZNSt3__123__libcpp_numeric_limitsIxLb1EE3maxB8ne190104Ev # -- Begin function _ZNSt3__123__libcpp_numeric_limitsIxLb1EE3maxB8ne190104Ev
	.p2align	4, 0x90
_ZNSt3__123__libcpp_numeric_limitsIxLb1EE3maxB8ne190104Ev: # @_ZNSt3__123__libcpp_numeric_limitsIxLb1EE3maxB8ne190104Ev
# %bb.0:
	movabsq	$9223372036854775807, %rax      # imm = 0x7FFFFFFFFFFFFFFF
	retq
                                        # -- End function
	.def	_ZNSt3__120__throw_length_errorB8ne190104EPKc;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__120__throw_length_errorB8ne190104EPKc,"xr",discard,_ZNSt3__120__throw_length_errorB8ne190104EPKc
	.globl	_ZNSt3__120__throw_length_errorB8ne190104EPKc # -- Begin function _ZNSt3__120__throw_length_errorB8ne190104EPKc
	.p2align	4, 0x90
_ZNSt3__120__throw_length_errorB8ne190104EPKc: # @_ZNSt3__120__throw_length_errorB8ne190104EPKc
.Lfunc_begin6:
.seh_proc _ZNSt3__120__throw_length_errorB8ne190104EPKc
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movl	$16, %ecx
	callq	__cxa_allocate_exception
	movq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	64(%rsp), %rdx
.Ltmp54:
	callq	_ZNSt12length_errorC2B8ne190104EPKc
.Ltmp55:
	jmp	.LBB54_1
.LBB54_1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	leaq	_ZTISt12length_error(%rip), %rdx
	leaq	_ZNSt12length_errorD1Ev(%rip), %r8
	callq	__cxa_throw
.LBB54_2:
.Ltmp56:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movq	%rax, %rdx
	movq	32(%rsp), %rax                  # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	movq	%rdx, 56(%rsp)
	movl	%eax, 52(%rsp)
	callq	__cxa_free_exception
# %bb.3:
	movq	56(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end6:
	.seh_handlerdata
	.section	.text$_ZNSt3__120__throw_length_errorB8ne190104EPKc,"xr",discard,_ZNSt3__120__throw_length_errorB8ne190104EPKc
	.seh_endproc
	.section	.xdata$_ZNSt3__120__throw_length_errorB8ne190104EPKc,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table54:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Lfunc_begin6-.Lfunc_begin6    # >> Call Site 1 <<
	.uleb128 .Ltmp54-.Lfunc_begin6          #   Call between .Lfunc_begin6 and .Ltmp54
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp54-.Lfunc_begin6          # >> Call Site 2 <<
	.uleb128 .Ltmp55-.Ltmp54                #   Call between .Ltmp54 and .Ltmp55
	.uleb128 .Ltmp56-.Lfunc_begin6          #     jumps to .Ltmp56
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp55-.Lfunc_begin6          # >> Call Site 3 <<
	.uleb128 .Lfunc_end6-.Ltmp55            #   Call between .Ltmp55 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__120__throw_length_errorB8ne190104EPKc,"xr",discard,_ZNSt3__120__throw_length_errorB8ne190104EPKc
                                        # -- End function
	.def	_ZNSt12length_errorC2B8ne190104EPKc;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt12length_errorC2B8ne190104EPKc,"xr",discard,_ZNSt12length_errorC2B8ne190104EPKc
	.globl	_ZNSt12length_errorC2B8ne190104EPKc # -- Begin function _ZNSt12length_errorC2B8ne190104EPKc
	.p2align	4, 0x90
_ZNSt12length_errorC2B8ne190104EPKc:    # @_ZNSt12length_errorC2B8ne190104EPKc
.seh_proc _ZNSt12length_errorC2B8ne190104EPKc
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rdx
	callq	_ZNSt11logic_errorC2EPKc
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	.refptr._ZTVSt12length_error(%rip), %rcx
	addq	$16, %rcx
	movq	%rcx, (%rax)
	addq	$56, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE8allocateB8ne190104Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE8allocateB8ne190104Ey,"xr",discard,_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE8allocateB8ne190104Ey
	.globl	_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE8allocateB8ne190104Ey # -- Begin function _ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE8allocateB8ne190104Ey
	.p2align	4, 0x90
_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE8allocateB8ne190104Ey: # @_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE8allocateB8ne190104Ey
.seh_proc _ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE8allocateB8ne190104Ey
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE8max_sizeB8ne190104IS7_TnNS_9enable_ifIXsr14__has_max_sizeIKT_EE5valueEiE4typeELi0EEEyRKS7_
	movq	%rax, %rcx
	movq	32(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	jbe	.LBB56_2
# %bb.1:
	callq	_ZSt28__throw_bad_array_new_lengthB8ne190104v
.LBB56_2:
	imulq	$24, 40(%rsp), %rcx
	movl	$8, %edx
	callq	_ZNSt3__117__libcpp_allocateB8ne190104Eyy
	nop
	addq	$56, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZSt28__throw_bad_array_new_lengthB8ne190104v;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZSt28__throw_bad_array_new_lengthB8ne190104v,"xr",discard,_ZSt28__throw_bad_array_new_lengthB8ne190104v
	.globl	_ZSt28__throw_bad_array_new_lengthB8ne190104v # -- Begin function _ZSt28__throw_bad_array_new_lengthB8ne190104v
	.p2align	4, 0x90
_ZSt28__throw_bad_array_new_lengthB8ne190104v: # @_ZSt28__throw_bad_array_new_lengthB8ne190104v
.seh_proc _ZSt28__throw_bad_array_new_lengthB8ne190104v
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movl	$8, %ecx
	callq	__cxa_allocate_exception
	movq	%rax, %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	_ZNSt20bad_array_new_lengthC1Ev
	movq	32(%rsp), %rcx                  # 8-byte Reload
	leaq	_ZTISt20bad_array_new_length(%rip), %rdx
	leaq	_ZNSt20bad_array_new_lengthD1Ev(%rip), %r8
	callq	__cxa_throw
	int3
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__117__libcpp_allocateB8ne190104Eyy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__117__libcpp_allocateB8ne190104Eyy,"xr",discard,_ZNSt3__117__libcpp_allocateB8ne190104Eyy
	.globl	_ZNSt3__117__libcpp_allocateB8ne190104Eyy # -- Begin function _ZNSt3__117__libcpp_allocateB8ne190104Eyy
	.p2align	4, 0x90
_ZNSt3__117__libcpp_allocateB8ne190104Eyy: # @_ZNSt3__117__libcpp_allocateB8ne190104Eyy
.seh_proc _ZNSt3__117__libcpp_allocateB8ne190104Eyy
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 56(%rsp)
	movq	%rdx, 48(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZNSt3__124__is_overaligned_for_newB8ne190104Ey
	testb	$1, %al
	jne	.LBB58_1
	jmp	.LBB58_2
.LBB58_1:
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	56(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZNSt3__121__libcpp_operator_newB8ne190104IJySt11align_val_tEEEPvDpT_
	movq	%rax, 64(%rsp)
	jmp	.LBB58_3
.LBB58_2:
	movq	56(%rsp), %rcx
	callq	_ZNSt3__121__libcpp_operator_newB8ne190104IJyEEEPvDpT_
	movq	%rax, 64(%rsp)
.LBB58_3:
	movq	64(%rsp), %rax
	addq	$72, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__124__is_overaligned_for_newB8ne190104Ey;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__124__is_overaligned_for_newB8ne190104Ey,"xr",discard,_ZNSt3__124__is_overaligned_for_newB8ne190104Ey
	.globl	_ZNSt3__124__is_overaligned_for_newB8ne190104Ey # -- Begin function _ZNSt3__124__is_overaligned_for_newB8ne190104Ey
	.p2align	4, 0x90
_ZNSt3__124__is_overaligned_for_newB8ne190104Ey: # @_ZNSt3__124__is_overaligned_for_newB8ne190104Ey
.seh_proc _ZNSt3__124__is_overaligned_for_newB8ne190104Ey
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	cmpq	$16, (%rsp)
	seta	%al
	andb	$1, %al
	popq	%rcx
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__121__libcpp_operator_newB8ne190104IJySt11align_val_tEEEPvDpT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__121__libcpp_operator_newB8ne190104IJySt11align_val_tEEEPvDpT_,"xr",discard,_ZNSt3__121__libcpp_operator_newB8ne190104IJySt11align_val_tEEEPvDpT_
	.globl	_ZNSt3__121__libcpp_operator_newB8ne190104IJySt11align_val_tEEEPvDpT_ # -- Begin function _ZNSt3__121__libcpp_operator_newB8ne190104IJySt11align_val_tEEEPvDpT_
	.p2align	4, 0x90
_ZNSt3__121__libcpp_operator_newB8ne190104IJySt11align_val_tEEEPvDpT_: # @_ZNSt3__121__libcpp_operator_newB8ne190104IJySt11align_val_tEEEPvDpT_
.seh_proc _ZNSt3__121__libcpp_operator_newB8ne190104IJySt11align_val_tEEEPvDpT_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZnwySt11align_val_t
	nop
	addq	$56, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__121__libcpp_operator_newB8ne190104IJyEEEPvDpT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__121__libcpp_operator_newB8ne190104IJyEEEPvDpT_,"xr",discard,_ZNSt3__121__libcpp_operator_newB8ne190104IJyEEEPvDpT_
	.globl	_ZNSt3__121__libcpp_operator_newB8ne190104IJyEEEPvDpT_ # -- Begin function _ZNSt3__121__libcpp_operator_newB8ne190104IJyEEEPvDpT_
	.p2align	4, 0x90
_ZNSt3__121__libcpp_operator_newB8ne190104IJyEEEPvDpT_: # @_ZNSt3__121__libcpp_operator_newB8ne190104IJyEEEPvDpT_
.seh_proc _ZNSt3__121__libcpp_operator_newB8ne190104IJyEEEPvDpT_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_Znwy
	nop
	addq	$40, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE6secondB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE6secondB8ne190104Ev,"xr",discard,_ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE6secondB8ne190104Ev
	.globl	_ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE6secondB8ne190104Ev # -- Begin function _ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE6secondB8ne190104Ev
	.p2align	4, 0x90
_ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE6secondB8ne190104Ev: # @_ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE6secondB8ne190104Ev
.seh_proc _ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE6secondB8ne190104Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEELi1ELb1EE5__getB8ne190104Ev
	nop
	addq	$40, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEELi1ELb1EE5__getB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEELi1ELb1EE5__getB8ne190104Ev,"xr",discard,_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEELi1ELb1EE5__getB8ne190104Ev
	.globl	_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEELi1ELb1EE5__getB8ne190104Ev # -- Begin function _ZNSt3__122__compressed_pair_elemINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEELi1ELb1EE5__getB8ne190104Ev
	.p2align	4, 0x90
_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEELi1ELb1EE5__getB8ne190104Ev: # @_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEELi1ELb1EE5__getB8ne190104Ev
.seh_proc _ZNSt3__122__compressed_pair_elemINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEELi1ELb1EE5__getB8ne190104Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	popq	%rcx
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5firstB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5firstB8ne190104Ev,"xr",discard,_ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5firstB8ne190104Ev
	.globl	_ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5firstB8ne190104Ev # -- Begin function _ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5firstB8ne190104Ev
	.p2align	4, 0x90
_ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5firstB8ne190104Ev: # @_ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5firstB8ne190104Ev
.seh_proc _ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5firstB8ne190104Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getB8ne190104Ev
	nop
	addq	$40, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getB8ne190104Ev,"xr",discard,_ZNSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getB8ne190104Ev
	.globl	_ZNSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getB8ne190104Ev # -- Begin function _ZNSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getB8ne190104Ev
	.p2align	4, 0x90
_ZNSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getB8ne190104Ev: # @_ZNSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getB8ne190104Ev
.seh_proc _ZNSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getB8ne190104Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	popq	%rcx
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE21_ConstructTransactionC2B8ne190104ERS8_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE21_ConstructTransactionC2B8ne190104ERS8_y,"xr",discard,_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE21_ConstructTransactionC2B8ne190104ERS8_y
	.globl	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE21_ConstructTransactionC2B8ne190104ERS8_y # -- Begin function _ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE21_ConstructTransactionC2B8ne190104ERS8_y
	.p2align	4, 0x90
_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE21_ConstructTransactionC2B8ne190104ERS8_y: # @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE21_ConstructTransactionC2B8ne190104ERS8_y
.seh_proc _ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE21_ConstructTransactionC2B8ne190104ERS8_y
# %bb.0:
	subq	$24, %rsp
	.seh_stackalloc 24
	.seh_endprologue
	movq	%rcx, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movq	%r8, (%rsp)
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	8(%rsp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, 8(%rax)
	movq	8(%rsp), %rcx
	movq	8(%rcx), %rcx
	imulq	$24, (%rsp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, 16(%rax)
	addq	$24, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__130__uninitialized_allocator_copyB8ne190104INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPKS6_S9_PS6_EET2_RT_T0_T1_SB_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__130__uninitialized_allocator_copyB8ne190104INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPKS6_S9_PS6_EET2_RT_T0_T1_SB_,"xr",discard,_ZNSt3__130__uninitialized_allocator_copyB8ne190104INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPKS6_S9_PS6_EET2_RT_T0_T1_SB_
	.globl	_ZNSt3__130__uninitialized_allocator_copyB8ne190104INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPKS6_S9_PS6_EET2_RT_T0_T1_SB_ # -- Begin function _ZNSt3__130__uninitialized_allocator_copyB8ne190104INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPKS6_S9_PS6_EET2_RT_T0_T1_SB_
	.p2align	4, 0x90
_ZNSt3__130__uninitialized_allocator_copyB8ne190104INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPKS6_S9_PS6_EET2_RT_T0_T1_SB_: # @_ZNSt3__130__uninitialized_allocator_copyB8ne190104INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPKS6_S9_PS6_EET2_RT_T0_T1_SB_
.seh_proc _ZNSt3__130__uninitialized_allocator_copyB8ne190104INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPKS6_S9_PS6_EET2_RT_T0_T1_SB_
# %bb.0:
	subq	$120, %rsp
	.seh_stackalloc 120
	.seh_endprologue
	movq	%rcx, 112(%rsp)
	movq	%rdx, 104(%rsp)
	movq	%r8, 96(%rsp)
	movq	%r9, 88(%rsp)
	movq	104(%rsp), %rdx
	movq	96(%rsp), %r8
	leaq	72(%rsp), %rcx
	callq	_ZNSt3__114__unwrap_rangeB8ne190104IPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EENS_4pairIT0_SA_EET_SC_
	movq	112(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	80(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	88(%rsp), %rcx
	callq	_ZNSt3__113__unwrap_iterB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_18__unwrap_iter_implIS7_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISB_EEEESB_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %r8                   # 8-byte Reload
	movq	%rax, %r9
	callq	_ZNSt3__135__uninitialized_allocator_copy_implB8ne190104INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPKS6_S9_PS6_EET2_RT_T0_T1_SB_
	movq	%rax, 64(%rsp)
	movq	88(%rsp), %rcx
	movq	64(%rsp), %rdx
	callq	_ZNSt3__113__rewrap_iterB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_NS_18__unwrap_iter_implIS7_Lb1EEEEET_SA_T0_
	nop
	addq	$120, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE21_ConstructTransactionD2B8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE21_ConstructTransactionD2B8ne190104Ev,"xr",discard,_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE21_ConstructTransactionD2B8ne190104Ev
	.globl	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE21_ConstructTransactionD2B8ne190104Ev # -- Begin function _ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE21_ConstructTransactionD2B8ne190104Ev
	.p2align	4, 0x90
_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE21_ConstructTransactionD2B8ne190104Ev: # @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE21_ConstructTransactionD2B8ne190104Ev
.seh_proc _ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE21_ConstructTransactionD2B8ne190104Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	8(%rax), %rcx
	movq	(%rax), %rax
	movq	%rcx, 8(%rax)
	popq	%rax
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__unwrap_rangeB8ne190104IPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EENS_4pairIT0_SA_EET_SC_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__unwrap_rangeB8ne190104IPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EENS_4pairIT0_SA_EET_SC_,"xr",discard,_ZNSt3__114__unwrap_rangeB8ne190104IPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EENS_4pairIT0_SA_EET_SC_
	.globl	_ZNSt3__114__unwrap_rangeB8ne190104IPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EENS_4pairIT0_SA_EET_SC_ # -- Begin function _ZNSt3__114__unwrap_rangeB8ne190104IPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EENS_4pairIT0_SA_EET_SC_
	.p2align	4, 0x90
_ZNSt3__114__unwrap_rangeB8ne190104IPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EENS_4pairIT0_SA_EET_SC_: # @_ZNSt3__114__unwrap_rangeB8ne190104IPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EENS_4pairIT0_SA_EET_SC_
.seh_proc _ZNSt3__114__unwrap_rangeB8ne190104IPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EENS_4pairIT0_SA_EET_SC_
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	%rcx, %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%r8, 64(%rsp)
	movq	72(%rsp), %rcx
	callq	_ZNSt3__113__unwrap_iterB8ne190104IPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_18__unwrap_iter_implIS8_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISC_EEEESC_
	movq	%rax, 56(%rsp)
	movq	64(%rsp), %rcx
	callq	_ZNSt3__113__unwrap_iterB8ne190104IPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_18__unwrap_iter_implIS8_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISC_EEEESC_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)
	leaq	56(%rsp), %rdx
	leaq	48(%rsp), %r8
	callq	_ZNSt3__19make_pairB8ne190104IPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENSA_IT0_E4typeEEEOSB_OSE_
	movq	40(%rsp), %rax                  # 8-byte Reload
	addq	$88, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__135__uninitialized_allocator_copy_implB8ne190104INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPKS6_S9_PS6_EET2_RT_T0_T1_SB_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__135__uninitialized_allocator_copy_implB8ne190104INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPKS6_S9_PS6_EET2_RT_T0_T1_SB_,"xr",discard,_ZNSt3__135__uninitialized_allocator_copy_implB8ne190104INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPKS6_S9_PS6_EET2_RT_T0_T1_SB_
	.globl	_ZNSt3__135__uninitialized_allocator_copy_implB8ne190104INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPKS6_S9_PS6_EET2_RT_T0_T1_SB_ # -- Begin function _ZNSt3__135__uninitialized_allocator_copy_implB8ne190104INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPKS6_S9_PS6_EET2_RT_T0_T1_SB_
	.p2align	4, 0x90
_ZNSt3__135__uninitialized_allocator_copy_implB8ne190104INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPKS6_S9_PS6_EET2_RT_T0_T1_SB_: # @_ZNSt3__135__uninitialized_allocator_copy_implB8ne190104INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPKS6_S9_PS6_EET2_RT_T0_T1_SB_
.Lfunc_begin7:
.seh_proc _ZNSt3__135__uninitialized_allocator_copy_implB8ne190104INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPKS6_S9_PS6_EET2_RT_T0_T1_SB_
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$168, %rsp
	.seh_stackalloc 168
	.seh_endprologue
	movq	%rcx, 160(%rsp)
	movq	%rdx, 152(%rsp)
	movq	%r8, 144(%rsp)
	movq	%r9, 136(%rsp)
	movq	136(%rsp), %rax
	movq	%rax, 128(%rsp)
	movq	160(%rsp), %rdx
	leaq	72(%rsp), %rcx
	leaq	128(%rsp), %r8
	leaq	136(%rsp), %r9
	callq	_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPS6_EC2B8ne190104ERS7_RS8_SB_
	leaq	96(%rsp), %rcx
	leaq	72(%rsp), %rdx
	callq	_ZNSt3__122__make_exception_guardB8ne190104INS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEEENS_28__exception_guard_exceptionsIT_EESC_
.LBB70_1:                               # =>This Inner Loop Header: Depth=1
	movq	152(%rsp), %rax
	cmpq	144(%rsp), %rax
	je	.LBB70_5
# %bb.2:                                #   in Loop: Header=BB70_1 Depth=1
	movq	160(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	136(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB8ne190104INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEPT_S8_
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	152(%rsp), %r8
.Ltmp57:
	callq	_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9constructB8ne190104IS6_JRKS6_ETnNS_9enable_ifIXsr15__has_constructIS7_PT_DpT0_EE5valueEiE4typeELi0EEEvRS7_SE_DpOSF_
.Ltmp58:
	jmp	.LBB70_3
.LBB70_3:                               #   in Loop: Header=BB70_1 Depth=1
	movq	152(%rsp), %rax
	addq	$24, %rax
	movq	%rax, 152(%rsp)
	movq	136(%rsp), %rax
	addq	$24, %rax
	movq	%rax, 136(%rsp)
	jmp	.LBB70_1
.LBB70_4:
.Ltmp59:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 64(%rsp)
	movl	%eax, 60(%rsp)
	leaq	96(%rsp), %rcx
	callq	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEED2B8ne190104Ev
	jmp	.LBB70_6
.LBB70_5:
	leaq	96(%rsp), %rcx
	callq	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEE10__completeB8ne190104Ev
	movq	136(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	leaq	96(%rsp), %rcx
	callq	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEED2B8ne190104Ev
	movq	40(%rsp), %rax                  # 8-byte Reload
	addq	$168, %rsp
	retq
.LBB70_6:
	movq	64(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end7:
	.seh_handlerdata
	.section	.text$_ZNSt3__135__uninitialized_allocator_copy_implB8ne190104INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPKS6_S9_PS6_EET2_RT_T0_T1_SB_,"xr",discard,_ZNSt3__135__uninitialized_allocator_copy_implB8ne190104INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPKS6_S9_PS6_EET2_RT_T0_T1_SB_
	.seh_endproc
	.section	.xdata$_ZNSt3__135__uninitialized_allocator_copy_implB8ne190104INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPKS6_S9_PS6_EET2_RT_T0_T1_SB_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table70:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Lfunc_begin7-.Lfunc_begin7    # >> Call Site 1 <<
	.uleb128 .Ltmp57-.Lfunc_begin7          #   Call between .Lfunc_begin7 and .Ltmp57
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp57-.Lfunc_begin7          # >> Call Site 2 <<
	.uleb128 .Ltmp58-.Ltmp57                #   Call between .Ltmp57 and .Ltmp58
	.uleb128 .Ltmp59-.Lfunc_begin7          #     jumps to .Ltmp59
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp58-.Lfunc_begin7          # >> Call Site 3 <<
	.uleb128 .Lfunc_end7-.Ltmp58            #   Call between .Ltmp58 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__135__uninitialized_allocator_copy_implB8ne190104INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPKS6_S9_PS6_EET2_RT_T0_T1_SB_,"xr",discard,_ZNSt3__135__uninitialized_allocator_copy_implB8ne190104INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPKS6_S9_PS6_EET2_RT_T0_T1_SB_
                                        # -- End function
	.def	_ZNSt3__113__unwrap_iterB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_18__unwrap_iter_implIS7_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISB_EEEESB_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__113__unwrap_iterB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_18__unwrap_iter_implIS7_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISB_EEEESB_,"xr",discard,_ZNSt3__113__unwrap_iterB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_18__unwrap_iter_implIS7_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISB_EEEESB_
	.globl	_ZNSt3__113__unwrap_iterB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_18__unwrap_iter_implIS7_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISB_EEEESB_ # -- Begin function _ZNSt3__113__unwrap_iterB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_18__unwrap_iter_implIS7_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISB_EEEESB_
	.p2align	4, 0x90
_ZNSt3__113__unwrap_iterB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_18__unwrap_iter_implIS7_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISB_EEEESB_: # @_ZNSt3__113__unwrap_iterB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_18__unwrap_iter_implIS7_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISB_EEEESB_
.seh_proc _ZNSt3__113__unwrap_iterB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_18__unwrap_iter_implIS7_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISB_EEEESB_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNSt3__118__unwrap_iter_implIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb1EE8__unwrapB8ne190104ES7_
	nop
	addq	$40, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__113__rewrap_iterB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_NS_18__unwrap_iter_implIS7_Lb1EEEEET_SA_T0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__113__rewrap_iterB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_NS_18__unwrap_iter_implIS7_Lb1EEEEET_SA_T0_,"xr",discard,_ZNSt3__113__rewrap_iterB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_NS_18__unwrap_iter_implIS7_Lb1EEEEET_SA_T0_
	.globl	_ZNSt3__113__rewrap_iterB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_NS_18__unwrap_iter_implIS7_Lb1EEEEET_SA_T0_ # -- Begin function _ZNSt3__113__rewrap_iterB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_NS_18__unwrap_iter_implIS7_Lb1EEEEET_SA_T0_
	.p2align	4, 0x90
_ZNSt3__113__rewrap_iterB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_NS_18__unwrap_iter_implIS7_Lb1EEEEET_SA_T0_: # @_ZNSt3__113__rewrap_iterB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_NS_18__unwrap_iter_implIS7_Lb1EEEEET_SA_T0_
.Lfunc_begin8:
.seh_proc _ZNSt3__113__rewrap_iterB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_NS_18__unwrap_iter_implIS7_Lb1EEEEET_SA_T0_
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
.Ltmp60:
	callq	_ZNSt3__118__unwrap_iter_implIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb1EE8__rewrapB8ne190104ES7_S7_
.Ltmp61:
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB72_1
.LBB72_1:
	movq	32(%rsp), %rax                  # 8-byte Reload
	addq	$56, %rsp
	retq
.LBB72_2:
.Ltmp62:
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end8:
	.seh_handlerdata
	.section	.text$_ZNSt3__113__rewrap_iterB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_NS_18__unwrap_iter_implIS7_Lb1EEEEET_SA_T0_,"xr",discard,_ZNSt3__113__rewrap_iterB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_NS_18__unwrap_iter_implIS7_Lb1EEEEET_SA_T0_
	.seh_endproc
	.section	.xdata$_ZNSt3__113__rewrap_iterB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_NS_18__unwrap_iter_implIS7_Lb1EEEEET_SA_T0_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table72:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Ltmp60-.Lfunc_begin8          # >> Call Site 1 <<
	.uleb128 .Ltmp61-.Ltmp60                #   Call between .Ltmp60 and .Ltmp61
	.uleb128 .Ltmp62-.Lfunc_begin8          #     jumps to .Ltmp62
	.byte	1                               #   On action: 1
.Lcst_end8:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase3:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__113__rewrap_iterB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_NS_18__unwrap_iter_implIS7_Lb1EEEEET_SA_T0_,"xr",discard,_ZNSt3__113__rewrap_iterB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_NS_18__unwrap_iter_implIS7_Lb1EEEEET_SA_T0_
                                        # -- End function
	.def	_ZNSt3__19make_pairB8ne190104IPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENSA_IT0_E4typeEEEOSB_OSE_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19make_pairB8ne190104IPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENSA_IT0_E4typeEEEOSB_OSE_,"xr",discard,_ZNSt3__19make_pairB8ne190104IPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENSA_IT0_E4typeEEEOSB_OSE_
	.globl	_ZNSt3__19make_pairB8ne190104IPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENSA_IT0_E4typeEEEOSB_OSE_ # -- Begin function _ZNSt3__19make_pairB8ne190104IPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENSA_IT0_E4typeEEEOSB_OSE_
	.p2align	4, 0x90
_ZNSt3__19make_pairB8ne190104IPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENSA_IT0_E4typeEEEOSB_OSE_: # @_ZNSt3__19make_pairB8ne190104IPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENSA_IT0_E4typeEEEOSB_OSE_
.seh_proc _ZNSt3__19make_pairB8ne190104IPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENSA_IT0_E4typeEEEOSB_OSE_
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	56(%rsp), %rdx
	movq	48(%rsp), %r8
	callq	_ZNSt3__14pairIPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EC2B8ne190104IS8_S8_TnNS_9enable_ifIXclsr10_CheckArgsE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSC_OSD_
	movq	40(%rsp), %rax                  # 8-byte Reload
	addq	$72, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__113__unwrap_iterB8ne190104IPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_18__unwrap_iter_implIS8_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISC_EEEESC_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__113__unwrap_iterB8ne190104IPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_18__unwrap_iter_implIS8_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISC_EEEESC_,"xr",discard,_ZNSt3__113__unwrap_iterB8ne190104IPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_18__unwrap_iter_implIS8_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISC_EEEESC_
	.globl	_ZNSt3__113__unwrap_iterB8ne190104IPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_18__unwrap_iter_implIS8_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISC_EEEESC_ # -- Begin function _ZNSt3__113__unwrap_iterB8ne190104IPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_18__unwrap_iter_implIS8_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISC_EEEESC_
	.p2align	4, 0x90
_ZNSt3__113__unwrap_iterB8ne190104IPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_18__unwrap_iter_implIS8_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISC_EEEESC_: # @_ZNSt3__113__unwrap_iterB8ne190104IPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_18__unwrap_iter_implIS8_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISC_EEEESC_
.seh_proc _ZNSt3__113__unwrap_iterB8ne190104IPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_18__unwrap_iter_implIS8_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISC_EEEESC_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNSt3__118__unwrap_iter_implIPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb1EE8__unwrapB8ne190104ES8_
	nop
	addq	$40, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__14pairIPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EC2B8ne190104IS8_S8_TnNS_9enable_ifIXclsr10_CheckArgsE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSC_OSD_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__14pairIPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EC2B8ne190104IS8_S8_TnNS_9enable_ifIXclsr10_CheckArgsE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSC_OSD_,"xr",discard,_ZNSt3__14pairIPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EC2B8ne190104IS8_S8_TnNS_9enable_ifIXclsr10_CheckArgsE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSC_OSD_
	.globl	_ZNSt3__14pairIPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EC2B8ne190104IS8_S8_TnNS_9enable_ifIXclsr10_CheckArgsE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSC_OSD_ # -- Begin function _ZNSt3__14pairIPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EC2B8ne190104IS8_S8_TnNS_9enable_ifIXclsr10_CheckArgsE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSC_OSD_
	.p2align	4, 0x90
_ZNSt3__14pairIPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EC2B8ne190104IS8_S8_TnNS_9enable_ifIXclsr10_CheckArgsE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSC_OSD_: # @_ZNSt3__14pairIPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EC2B8ne190104IS8_S8_TnNS_9enable_ifIXclsr10_CheckArgsE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSC_OSD_
.seh_proc _ZNSt3__14pairIPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EC2B8ne190104IS8_S8_TnNS_9enable_ifIXclsr10_CheckArgsE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSC_OSD_
# %bb.0:
	subq	$24, %rsp
	.seh_stackalloc 24
	.seh_endprologue
	movq	%rcx, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movq	%r8, (%rsp)
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	(%rsp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, 8(%rax)
	addq	$24, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__118__unwrap_iter_implIPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb1EE8__unwrapB8ne190104ES8_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__118__unwrap_iter_implIPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb1EE8__unwrapB8ne190104ES8_,"xr",discard,_ZNSt3__118__unwrap_iter_implIPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb1EE8__unwrapB8ne190104ES8_
	.globl	_ZNSt3__118__unwrap_iter_implIPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb1EE8__unwrapB8ne190104ES8_ # -- Begin function _ZNSt3__118__unwrap_iter_implIPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb1EE8__unwrapB8ne190104ES8_
	.p2align	4, 0x90
_ZNSt3__118__unwrap_iter_implIPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb1EE8__unwrapB8ne190104ES8_: # @_ZNSt3__118__unwrap_iter_implIPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb1EE8__unwrapB8ne190104ES8_
.seh_proc _ZNSt3__118__unwrap_iter_implIPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb1EE8__unwrapB8ne190104ES8_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB8ne190104IKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEPT_S9_
	nop
	addq	$40, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112__to_addressB8ne190104IKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEPT_S9_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__to_addressB8ne190104IKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEPT_S9_,"xr",discard,_ZNSt3__112__to_addressB8ne190104IKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEPT_S9_
	.globl	_ZNSt3__112__to_addressB8ne190104IKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEPT_S9_ # -- Begin function _ZNSt3__112__to_addressB8ne190104IKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEPT_S9_
	.p2align	4, 0x90
_ZNSt3__112__to_addressB8ne190104IKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEPT_S9_: # @_ZNSt3__112__to_addressB8ne190104IKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEPT_S9_
.seh_proc _ZNSt3__112__to_addressB8ne190104IKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEPT_S9_
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	popq	%rcx
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__122__make_exception_guardB8ne190104INS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEEENS_28__exception_guard_exceptionsIT_EESC_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__122__make_exception_guardB8ne190104INS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEEENS_28__exception_guard_exceptionsIT_EESC_,"xr",discard,_ZNSt3__122__make_exception_guardB8ne190104INS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEEENS_28__exception_guard_exceptionsIT_EESC_
	.globl	_ZNSt3__122__make_exception_guardB8ne190104INS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEEENS_28__exception_guard_exceptionsIT_EESC_ # -- Begin function _ZNSt3__122__make_exception_guardB8ne190104INS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEEENS_28__exception_guard_exceptionsIT_EESC_
	.p2align	4, 0x90
_ZNSt3__122__make_exception_guardB8ne190104INS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEEENS_28__exception_guard_exceptionsIT_EESC_: # @_ZNSt3__122__make_exception_guardB8ne190104INS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEEENS_28__exception_guard_exceptionsIT_EESC_
.seh_proc _ZNSt3__122__make_exception_guardB8ne190104INS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEEENS_28__exception_guard_exceptionsIT_EESC_
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	(%rdx), %rax
	movq	%rax, 48(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 56(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 64(%rsp)
	leaq	48(%rsp), %rdx
	callq	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEEC2B8ne190104ESA_
	movq	40(%rsp), %rax                  # 8-byte Reload
	addq	$88, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPS6_EC2B8ne190104ERS7_RS8_SB_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPS6_EC2B8ne190104ERS7_RS8_SB_,"xr",discard,_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPS6_EC2B8ne190104ERS7_RS8_SB_
	.globl	_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPS6_EC2B8ne190104ERS7_RS8_SB_ # -- Begin function _ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPS6_EC2B8ne190104ERS7_RS8_SB_
	.p2align	4, 0x90
_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPS6_EC2B8ne190104ERS7_RS8_SB_: # @_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPS6_EC2B8ne190104ERS7_RS8_SB_
.seh_proc _ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPS6_EC2B8ne190104ERS7_RS8_SB_
# %bb.0:
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%r8, 8(%rsp)
	movq	%r9, (%rsp)
	movq	24(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	8(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	(%rsp), %rcx
	movq	%rcx, 16(%rax)
	addq	$32, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9constructB8ne190104IS6_JRKS6_ETnNS_9enable_ifIXsr15__has_constructIS7_PT_DpT0_EE5valueEiE4typeELi0EEEvRS7_SE_DpOSF_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9constructB8ne190104IS6_JRKS6_ETnNS_9enable_ifIXsr15__has_constructIS7_PT_DpT0_EE5valueEiE4typeELi0EEEvRS7_SE_DpOSF_,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9constructB8ne190104IS6_JRKS6_ETnNS_9enable_ifIXsr15__has_constructIS7_PT_DpT0_EE5valueEiE4typeELi0EEEvRS7_SE_DpOSF_
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9constructB8ne190104IS6_JRKS6_ETnNS_9enable_ifIXsr15__has_constructIS7_PT_DpT0_EE5valueEiE4typeELi0EEEvRS7_SE_DpOSF_ # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9constructB8ne190104IS6_JRKS6_ETnNS_9enable_ifIXsr15__has_constructIS7_PT_DpT0_EE5valueEiE4typeELi0EEEvRS7_SE_DpOSF_
	.p2align	4, 0x90
_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9constructB8ne190104IS6_JRKS6_ETnNS_9enable_ifIXsr15__has_constructIS7_PT_DpT0_EE5valueEiE4typeELi0EEEvRS7_SE_DpOSF_: # @_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9constructB8ne190104IS6_JRKS6_ETnNS_9enable_ifIXsr15__has_constructIS7_PT_DpT0_EE5valueEiE4typeELi0EEEvRS7_SE_DpOSF_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9constructB8ne190104IS6_JRKS6_ETnNS_9enable_ifIXsr15__has_constructIS7_PT_DpT0_EE5valueEiE4typeELi0EEEvRS7_SE_DpOSF_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	movq	32(%rsp), %r8
	callq	_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE9constructB8ne190104IS5_JRKS5_EEEvPT_DpOT0_
	nop
	addq	$56, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112__to_addressB8ne190104INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEPT_S8_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__to_addressB8ne190104INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEPT_S8_,"xr",discard,_ZNSt3__112__to_addressB8ne190104INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEPT_S8_
	.globl	_ZNSt3__112__to_addressB8ne190104INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEPT_S8_ # -- Begin function _ZNSt3__112__to_addressB8ne190104INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEPT_S8_
	.p2align	4, 0x90
_ZNSt3__112__to_addressB8ne190104INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEPT_S8_: # @_ZNSt3__112__to_addressB8ne190104INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEPT_S8_
.seh_proc _ZNSt3__112__to_addressB8ne190104INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEPT_S8_
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	popq	%rcx
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEE10__completeB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEE10__completeB8ne190104Ev,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEE10__completeB8ne190104Ev
	.globl	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEE10__completeB8ne190104Ev # -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEE10__completeB8ne190104Ev
	.p2align	4, 0x90
_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEE10__completeB8ne190104Ev: # @_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEE10__completeB8ne190104Ev
.seh_proc _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEE10__completeB8ne190104Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movb	$1, 24(%rax)
	popq	%rax
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEED2B8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEED2B8ne190104Ev,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEED2B8ne190104Ev
	.globl	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEED2B8ne190104Ev # -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEED2B8ne190104Ev
	.p2align	4, 0x90
_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEED2B8ne190104Ev: # @_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEED2B8ne190104Ev
.Lfunc_begin9:
.seh_proc _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEED2B8ne190104Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	testb	$1, 24(%rax)
	jne	.LBB83_3
# %bb.1:
.Ltmp63:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPS6_EclB8ne190104Ev
.Ltmp64:
	jmp	.LBB83_2
.LBB83_2:
	jmp	.LBB83_3
.LBB83_3:
	addq	$56, %rsp
	retq
.LBB83_4:
.Ltmp65:
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end9:
	.seh_handlerdata
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEED2B8ne190104Ev,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEED2B8ne190104Ev
	.seh_endproc
	.section	.xdata$_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEED2B8ne190104Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table83:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Ltmp63-.Lfunc_begin9          # >> Call Site 1 <<
	.uleb128 .Ltmp64-.Ltmp63                #   Call between .Ltmp63 and .Ltmp64
	.uleb128 .Ltmp65-.Lfunc_begin9          #     jumps to .Ltmp65
	.byte	1                               #   On action: 1
.Lcst_end9:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase4:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEED2B8ne190104Ev,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEED2B8ne190104Ev
                                        # -- End function
	.def	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEEC2B8ne190104ESA_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEEC2B8ne190104ESA_,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEEC2B8ne190104ESA_
	.globl	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEEC2B8ne190104ESA_ # -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEEC2B8ne190104ESA_
	.p2align	4, 0x90
_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEEC2B8ne190104ESA_: # @_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEEC2B8ne190104ESA_
.seh_proc _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEEC2B8ne190104ESA_
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	8(%rsp), %rax
	movq	(%rdx), %rcx
	movq	%rcx, (%rax)
	movq	8(%rdx), %rcx
	movq	%rcx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	%rcx, 16(%rax)
	movb	$0, 24(%rax)
	addq	$16, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE9constructB8ne190104IS5_JRKS5_EEEvPT_DpOT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE9constructB8ne190104IS5_JRKS5_EEEvPT_DpOT0_,"xr",discard,_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE9constructB8ne190104IS5_JRKS5_EEEvPT_DpOT0_
	.globl	_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE9constructB8ne190104IS5_JRKS5_EEEvPT_DpOT0_ # -- Begin function _ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE9constructB8ne190104IS5_JRKS5_EEEvPT_DpOT0_
	.p2align	4, 0x90
_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE9constructB8ne190104IS5_JRKS5_EEEvPT_DpOT0_: # @_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE9constructB8ne190104IS5_JRKS5_EEEvPT_DpOT0_
.seh_proc _ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE9constructB8ne190104IS5_JRKS5_EEEvPT_DpOT0_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	40(%rsp), %rcx
	movq	32(%rsp), %rdx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_
	nop
	addq	$56, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPS6_EclB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPS6_EclB8ne190104Ev,"xr",discard,_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPS6_EclB8ne190104Ev
	.globl	_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPS6_EclB8ne190104Ev # -- Begin function _ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPS6_EclB8ne190104Ev
	.p2align	4, 0x90
_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPS6_EclB8ne190104Ev: # @_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPS6_EclB8ne190104Ev
.seh_proc _ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPS6_EclB8ne190104Ev
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rcx, 80(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	16(%rax), %rax
	movq	(%rax), %rdx
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B8ne190104ES7_
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rax
	movq	(%rax), %rdx
	leaq	48(%rsp), %rcx
	callq	_ZNSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B8ne190104ES7_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	leaq	64(%rsp), %rdx
	leaq	48(%rsp), %r8
	callq	_ZNSt3__119__allocator_destroyB8ne190104INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16reverse_iteratorIPS6_EESA_EEvRT_T0_T1_
	nop
	addq	$88, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__allocator_destroyB8ne190104INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16reverse_iteratorIPS6_EESA_EEvRT_T0_T1_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__allocator_destroyB8ne190104INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16reverse_iteratorIPS6_EESA_EEvRT_T0_T1_,"xr",discard,_ZNSt3__119__allocator_destroyB8ne190104INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16reverse_iteratorIPS6_EESA_EEvRT_T0_T1_
	.globl	_ZNSt3__119__allocator_destroyB8ne190104INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16reverse_iteratorIPS6_EESA_EEvRT_T0_T1_ # -- Begin function _ZNSt3__119__allocator_destroyB8ne190104INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16reverse_iteratorIPS6_EESA_EEvRT_T0_T1_
	.p2align	4, 0x90
_ZNSt3__119__allocator_destroyB8ne190104INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16reverse_iteratorIPS6_EESA_EEvRT_T0_T1_: # @_ZNSt3__119__allocator_destroyB8ne190104INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16reverse_iteratorIPS6_EESA_EEvRT_T0_T1_
.seh_proc _ZNSt3__119__allocator_destroyB8ne190104INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16reverse_iteratorIPS6_EESA_EEvRT_T0_T1_
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%r8, 48(%rsp)                   # 8-byte Spill
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%r8, 64(%rsp)
.LBB87_1:                               # =>This Inner Loop Header: Depth=1
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__1neB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEbRKNS_16reverse_iteratorIT_EERKNS8_IT0_EE
	testb	$1, %al
	jne	.LBB87_2
	jmp	.LBB87_4
.LBB87_2:                               #   in Loop: Header=BB87_1 Depth=1
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	80(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__112__to_addressB8ne190104INS_16reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEETnNS_9enable_ifIXsr4_AndINS_8is_classIT_EENS_15_IsFancyPointerISC_EEEE5valueEiE4typeELi0EEEu7__decayIDTclsr19__to_address_helperISC_EE6__callclsr3stdE7declvalIRKSC_EEEEESJ_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne190104IS6_TnNS_9enable_ifIXsr13__has_destroyIS7_PT_EE5valueEiE4typeELi0EEEvRS7_SC_
# %bb.3:                                #   in Loop: Header=BB87_1 Depth=1
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEppB8ne190104Ev
	jmp	.LBB87_1
.LBB87_4:
	addq	$88, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B8ne190104ES7_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B8ne190104ES7_,"xr",discard,_ZNSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B8ne190104ES7_
	.globl	_ZNSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B8ne190104ES7_ # -- Begin function _ZNSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B8ne190104ES7_
	.p2align	4, 0x90
_ZNSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B8ne190104ES7_: # @_ZNSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B8ne190104ES7_
.seh_proc _ZNSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B8ne190104ES7_
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	8(%rsp), %rax
	movq	(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	(%rsp), %rcx
	movq	%rcx, 8(%rax)
	addq	$16, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__1neB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEbRKNS_16reverse_iteratorIT_EERKNS8_IT0_EE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__1neB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEbRKNS_16reverse_iteratorIT_EERKNS8_IT0_EE,"xr",discard,_ZNSt3__1neB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEbRKNS_16reverse_iteratorIT_EERKNS8_IT0_EE
	.globl	_ZNSt3__1neB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEbRKNS_16reverse_iteratorIT_EERKNS8_IT0_EE # -- Begin function _ZNSt3__1neB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEbRKNS_16reverse_iteratorIT_EERKNS8_IT0_EE
	.p2align	4, 0x90
_ZNSt3__1neB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEbRKNS_16reverse_iteratorIT_EERKNS8_IT0_EE: # @_ZNSt3__1neB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEbRKNS_16reverse_iteratorIT_EERKNS8_IT0_EE
.seh_proc _ZNSt3__1neB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEbRKNS_16reverse_iteratorIT_EERKNS8_IT0_EE
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZNKSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE4baseB8ne190104Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rcx
	callq	_ZNKSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE4baseB8ne190104Ev
	movq	%rax, %rcx
	movq	32(%rsp), %rax                  # 8-byte Reload
	cmpq	%rcx, %rax
	setne	%al
	andb	$1, %al
	addq	$56, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne190104IS6_TnNS_9enable_ifIXsr13__has_destroyIS7_PT_EE5valueEiE4typeELi0EEEvRS7_SC_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne190104IS6_TnNS_9enable_ifIXsr13__has_destroyIS7_PT_EE5valueEiE4typeELi0EEEvRS7_SC_,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne190104IS6_TnNS_9enable_ifIXsr13__has_destroyIS7_PT_EE5valueEiE4typeELi0EEEvRS7_SC_
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne190104IS6_TnNS_9enable_ifIXsr13__has_destroyIS7_PT_EE5valueEiE4typeELi0EEEvRS7_SC_ # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne190104IS6_TnNS_9enable_ifIXsr13__has_destroyIS7_PT_EE5valueEiE4typeELi0EEEvRS7_SC_
	.p2align	4, 0x90
_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne190104IS6_TnNS_9enable_ifIXsr13__has_destroyIS7_PT_EE5valueEiE4typeELi0EEEvRS7_SC_: # @_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne190104IS6_TnNS_9enable_ifIXsr13__has_destroyIS7_PT_EE5valueEiE4typeELi0EEEvRS7_SC_
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne190104IS6_TnNS_9enable_ifIXsr13__has_destroyIS7_PT_EE5valueEiE4typeELi0EEEvRS7_SC_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE7destroyB8ne190104EPS5_
	nop
	addq	$56, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112__to_addressB8ne190104INS_16reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEETnNS_9enable_ifIXsr4_AndINS_8is_classIT_EENS_15_IsFancyPointerISC_EEEE5valueEiE4typeELi0EEEu7__decayIDTclsr19__to_address_helperISC_EE6__callclsr3stdE7declvalIRKSC_EEEEESJ_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__to_addressB8ne190104INS_16reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEETnNS_9enable_ifIXsr4_AndINS_8is_classIT_EENS_15_IsFancyPointerISC_EEEE5valueEiE4typeELi0EEEu7__decayIDTclsr19__to_address_helperISC_EE6__callclsr3stdE7declvalIRKSC_EEEEESJ_,"xr",discard,_ZNSt3__112__to_addressB8ne190104INS_16reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEETnNS_9enable_ifIXsr4_AndINS_8is_classIT_EENS_15_IsFancyPointerISC_EEEE5valueEiE4typeELi0EEEu7__decayIDTclsr19__to_address_helperISC_EE6__callclsr3stdE7declvalIRKSC_EEEEESJ_
	.globl	_ZNSt3__112__to_addressB8ne190104INS_16reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEETnNS_9enable_ifIXsr4_AndINS_8is_classIT_EENS_15_IsFancyPointerISC_EEEE5valueEiE4typeELi0EEEu7__decayIDTclsr19__to_address_helperISC_EE6__callclsr3stdE7declvalIRKSC_EEEEESJ_ # -- Begin function _ZNSt3__112__to_addressB8ne190104INS_16reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEETnNS_9enable_ifIXsr4_AndINS_8is_classIT_EENS_15_IsFancyPointerISC_EEEE5valueEiE4typeELi0EEEu7__decayIDTclsr19__to_address_helperISC_EE6__callclsr3stdE7declvalIRKSC_EEEEESJ_
	.p2align	4, 0x90
_ZNSt3__112__to_addressB8ne190104INS_16reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEETnNS_9enable_ifIXsr4_AndINS_8is_classIT_EENS_15_IsFancyPointerISC_EEEE5valueEiE4typeELi0EEEu7__decayIDTclsr19__to_address_helperISC_EE6__callclsr3stdE7declvalIRKSC_EEEEESJ_: # @_ZNSt3__112__to_addressB8ne190104INS_16reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEETnNS_9enable_ifIXsr4_AndINS_8is_classIT_EENS_15_IsFancyPointerISC_EEEE5valueEiE4typeELi0EEEu7__decayIDTclsr19__to_address_helperISC_EE6__callclsr3stdE7declvalIRKSC_EEEEESJ_
.seh_proc _ZNSt3__112__to_addressB8ne190104INS_16reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEETnNS_9enable_ifIXsr4_AndINS_8is_classIT_EENS_15_IsFancyPointerISC_EEEE5valueEiE4typeELi0EEEu7__decayIDTclsr19__to_address_helperISC_EE6__callclsr3stdE7declvalIRKSC_EEEEESJ_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNSt3__119__to_address_helperINS_16reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvE6__callB8ne190104ERKS9_
	nop
	addq	$40, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEppB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEppB8ne190104Ev,"xr",discard,_ZNSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEppB8ne190104Ev
	.globl	_ZNSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEppB8ne190104Ev # -- Begin function _ZNSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEppB8ne190104Ev
	.p2align	4, 0x90
_ZNSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEppB8ne190104Ev: # @_ZNSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEppB8ne190104Ev
.seh_proc _ZNSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEppB8ne190104Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	8(%rax), %rcx
	addq	$-24, %rcx
	movq	%rcx, 8(%rax)
	popq	%rcx
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE4baseB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE4baseB8ne190104Ev,"xr",discard,_ZNKSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE4baseB8ne190104Ev
	.globl	_ZNKSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE4baseB8ne190104Ev # -- Begin function _ZNKSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE4baseB8ne190104Ev
	.p2align	4, 0x90
_ZNKSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE4baseB8ne190104Ev: # @_ZNKSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE4baseB8ne190104Ev
.seh_proc _ZNKSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE4baseB8ne190104Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	8(%rax), %rax
	popq	%rcx
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE7destroyB8ne190104EPS5_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE7destroyB8ne190104EPS5_,"xr",discard,_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE7destroyB8ne190104EPS5_
	.globl	_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE7destroyB8ne190104EPS5_ # -- Begin function _ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE7destroyB8ne190104EPS5_
	.p2align	4, 0x90
_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE7destroyB8ne190104EPS5_: # @_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE7destroyB8ne190104EPS5_
.seh_proc _ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE7destroyB8ne190104EPS5_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	40(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	nop
	addq	$56, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__119__to_address_helperINS_16reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvE6__callB8ne190104ERKS9_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__to_address_helperINS_16reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvE6__callB8ne190104ERKS9_,"xr",discard,_ZNSt3__119__to_address_helperINS_16reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvE6__callB8ne190104ERKS9_
	.globl	_ZNSt3__119__to_address_helperINS_16reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvE6__callB8ne190104ERKS9_ # -- Begin function _ZNSt3__119__to_address_helperINS_16reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvE6__callB8ne190104ERKS9_
	.p2align	4, 0x90
_ZNSt3__119__to_address_helperINS_16reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvE6__callB8ne190104ERKS9_: # @_ZNSt3__119__to_address_helperINS_16reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvE6__callB8ne190104ERKS9_
.Lfunc_begin10:
.seh_proc _ZNSt3__119__to_address_helperINS_16reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvE6__callB8ne190104ERKS9_
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
.Ltmp66:
	callq	_ZNKSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEptB8ne190104Ev
.Ltmp67:
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB95_1
.LBB95_1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__112__to_addressB8ne190104INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEPT_S8_
	nop
	addq	$56, %rsp
	retq
.LBB95_2:
.Ltmp68:
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end10:
	.seh_handlerdata
	.section	.text$_ZNSt3__119__to_address_helperINS_16reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvE6__callB8ne190104ERKS9_,"xr",discard,_ZNSt3__119__to_address_helperINS_16reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvE6__callB8ne190104ERKS9_
	.seh_endproc
	.section	.xdata$_ZNSt3__119__to_address_helperINS_16reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvE6__callB8ne190104ERKS9_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table95:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Ltmp66-.Lfunc_begin10         # >> Call Site 1 <<
	.uleb128 .Ltmp67-.Ltmp66                #   Call between .Ltmp66 and .Ltmp67
	.uleb128 .Ltmp68-.Lfunc_begin10         #     jumps to .Ltmp68
	.byte	1                               #   On action: 1
.Lcst_end10:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase5:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__119__to_address_helperINS_16reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvE6__callB8ne190104ERKS9_,"xr",discard,_ZNSt3__119__to_address_helperINS_16reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvE6__callB8ne190104ERKS9_
                                        # -- End function
	.def	_ZNKSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEptB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEptB8ne190104Ev,"xr",discard,_ZNKSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEptB8ne190104Ev
	.globl	_ZNKSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEptB8ne190104Ev # -- Begin function _ZNKSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEptB8ne190104Ev
	.p2align	4, 0x90
_ZNKSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEptB8ne190104Ev: # @_ZNKSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEptB8ne190104Ev
.seh_proc _ZNKSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEptB8ne190104Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNKSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEdeB8ne190104Ev
	nop
	addq	$40, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEdeB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEdeB8ne190104Ev,"xr",discard,_ZNKSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEdeB8ne190104Ev
	.globl	_ZNKSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEdeB8ne190104Ev # -- Begin function _ZNKSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEdeB8ne190104Ev
	.p2align	4, 0x90
_ZNKSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEdeB8ne190104Ev: # @_ZNKSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEdeB8ne190104Ev
.seh_proc _ZNKSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEdeB8ne190104Ev
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	8(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, (%rsp)
	movq	(%rsp), %rax
	addq	$-24, %rax
	movq	%rax, (%rsp)
	addq	$16, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__118__unwrap_iter_implIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb1EE8__unwrapB8ne190104ES7_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__118__unwrap_iter_implIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb1EE8__unwrapB8ne190104ES7_,"xr",discard,_ZNSt3__118__unwrap_iter_implIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb1EE8__unwrapB8ne190104ES7_
	.globl	_ZNSt3__118__unwrap_iter_implIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb1EE8__unwrapB8ne190104ES7_ # -- Begin function _ZNSt3__118__unwrap_iter_implIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb1EE8__unwrapB8ne190104ES7_
	.p2align	4, 0x90
_ZNSt3__118__unwrap_iter_implIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb1EE8__unwrapB8ne190104ES7_: # @_ZNSt3__118__unwrap_iter_implIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb1EE8__unwrapB8ne190104ES7_
.seh_proc _ZNSt3__118__unwrap_iter_implIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb1EE8__unwrapB8ne190104ES7_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB8ne190104INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEPT_S8_
	nop
	addq	$40, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__118__unwrap_iter_implIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb1EE8__rewrapB8ne190104ES7_S7_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__118__unwrap_iter_implIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb1EE8__rewrapB8ne190104ES7_S7_,"xr",discard,_ZNSt3__118__unwrap_iter_implIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb1EE8__rewrapB8ne190104ES7_S7_
	.globl	_ZNSt3__118__unwrap_iter_implIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb1EE8__rewrapB8ne190104ES7_S7_ # -- Begin function _ZNSt3__118__unwrap_iter_implIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb1EE8__rewrapB8ne190104ES7_S7_
	.p2align	4, 0x90
_ZNSt3__118__unwrap_iter_implIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb1EE8__rewrapB8ne190104ES7_S7_: # @_ZNSt3__118__unwrap_iter_implIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb1EE8__rewrapB8ne190104ES7_S7_
.seh_proc _ZNSt3__118__unwrap_iter_implIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb1EE8__rewrapB8ne190104ES7_S7_
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	64(%rsp), %rcx
	callq	_ZNSt3__112__to_addressB8ne190104INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEPT_S8_
	movq	%rax, %rcx
	movq	40(%rsp), %rax                  # 8-byte Reload
	subq	%rcx, %rax
	movl	$24, %ecx
	cqto
	idivq	%rcx
	movq	%rax, %rcx
	movq	48(%rsp), %rax                  # 8-byte Reload
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	addq	$72, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__destroy_vectorclB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__destroy_vectorclB8ne190104Ev,"xr",discard,_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__destroy_vectorclB8ne190104Ev
	.globl	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__destroy_vectorclB8ne190104Ev # -- Begin function _ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__destroy_vectorclB8ne190104Ev
	.p2align	4, 0x90
_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__destroy_vectorclB8ne190104Ev: # @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__destroy_vectorclB8ne190104Ev
.seh_proc _ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__destroy_vectorclB8ne190104Ev
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	(%rax), %rax
	cmpq	$0, (%rax)
	je	.LBB100_2
# %bb.1:
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	callq	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne190104Ev
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	callq	_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE17__annotate_deleteB8ne190104Ev
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	callq	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__allocB8ne190104Ev
	movq	%rax, %rcx
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	callq	_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8capacityB8ne190104Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, %r8
	callq	_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE10deallocateB8ne190104ERS7_PS6_y
.LBB100_2:
	nop
	addq	$72, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne190104Ev,"xr",discard,_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne190104Ev
	.globl	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne190104Ev # -- Begin function _ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne190104Ev
	.p2align	4, 0x90
_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne190104Ev: # @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne190104Ev
.seh_proc _ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne190104Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	movq	(%rcx), %rdx
	callq	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE22__base_destruct_at_endB8ne190104EPS6_
	nop
	addq	$40, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE17__annotate_deleteB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE17__annotate_deleteB8ne190104Ev,"xr",discard,_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE17__annotate_deleteB8ne190104Ev
	.globl	_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE17__annotate_deleteB8ne190104Ev # -- Begin function _ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE17__annotate_deleteB8ne190104Ev
	.p2align	4, 0x90
_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE17__annotate_deleteB8ne190104Ev: # @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE17__annotate_deleteB8ne190104Ev
.seh_proc _ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE17__annotate_deleteB8ne190104Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	popq	%rax
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE10deallocateB8ne190104ERS7_PS6_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE10deallocateB8ne190104ERS7_PS6_y,"xr",discard,_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE10deallocateB8ne190104ERS7_PS6_y
	.globl	_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE10deallocateB8ne190104ERS7_PS6_y # -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE10deallocateB8ne190104ERS7_PS6_y
	.p2align	4, 0x90
_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE10deallocateB8ne190104ERS7_PS6_y: # @_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE10deallocateB8ne190104ERS7_PS6_y
.seh_proc _ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE10deallocateB8ne190104ERS7_PS6_y
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	movq	32(%rsp), %r8
	callq	_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE10deallocateB8ne190104EPS5_y
	nop
	addq	$56, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8capacityB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8capacityB8ne190104Ev,"xr",discard,_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8capacityB8ne190104Ev
	.globl	_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8capacityB8ne190104Ev # -- Begin function _ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8capacityB8ne190104Ev
	.p2align	4, 0x90
_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8capacityB8ne190104Ev: # @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8capacityB8ne190104Ev
.seh_proc _ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8capacityB8ne190104Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE9__end_capB8ne190104Ev
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	movl	$24, %ecx
	cqto
	idivq	%rcx
	addq	$56, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE22__base_destruct_at_endB8ne190104EPS6_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE22__base_destruct_at_endB8ne190104EPS6_,"xr",discard,_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE22__base_destruct_at_endB8ne190104EPS6_
	.globl	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE22__base_destruct_at_endB8ne190104EPS6_ # -- Begin function _ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE22__base_destruct_at_endB8ne190104EPS6_
	.p2align	4, 0x90
_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE22__base_destruct_at_endB8ne190104EPS6_: # @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE22__base_destruct_at_endB8ne190104EPS6_
.Lfunc_begin11:
.seh_proc _ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE22__base_destruct_at_endB8ne190104EPS6_
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	8(%rax), %rax
	movq	%rax, 48(%rsp)
.LBB105_1:                              # =>This Inner Loop Header: Depth=1
	movq	56(%rsp), %rax
	cmpq	48(%rsp), %rax
	je	.LBB105_4
# %bb.2:                                #   in Loop: Header=BB105_1 Depth=1
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__allocB8ne190104Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rcx
	addq	$-24, %rcx
	movq	%rcx, 48(%rsp)
	callq	_ZNSt3__112__to_addressB8ne190104INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEPT_S8_
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
.Ltmp69:
	callq	_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne190104IS6_TnNS_9enable_ifIXsr13__has_destroyIS7_PT_EE5valueEiE4typeELi0EEEvRS7_SC_
.Ltmp70:
	jmp	.LBB105_3
.LBB105_3:                              #   in Loop: Header=BB105_1 Depth=1
	jmp	.LBB105_1
.LBB105_4:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	56(%rsp), %rcx
	movq	%rcx, 8(%rax)
	addq	$72, %rsp
	retq
.LBB105_5:
.Ltmp71:
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end11:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE22__base_destruct_at_endB8ne190104EPS6_,"xr",discard,_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE22__base_destruct_at_endB8ne190104EPS6_
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE22__base_destruct_at_endB8ne190104EPS6_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table105:
.Lexception11:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Ltmp69-.Lfunc_begin11         # >> Call Site 1 <<
	.uleb128 .Ltmp70-.Ltmp69                #   Call between .Ltmp69 and .Ltmp70
	.uleb128 .Ltmp71-.Lfunc_begin11         #     jumps to .Ltmp71
	.byte	1                               #   On action: 1
.Lcst_end11:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase6:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE22__base_destruct_at_endB8ne190104EPS6_,"xr",discard,_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE22__base_destruct_at_endB8ne190104EPS6_
                                        # -- End function
	.def	_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE10deallocateB8ne190104EPS5_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE10deallocateB8ne190104EPS5_y,"xr",discard,_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE10deallocateB8ne190104EPS5_y
	.globl	_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE10deallocateB8ne190104EPS5_y # -- Begin function _ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE10deallocateB8ne190104EPS5_y
	.p2align	4, 0x90
_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE10deallocateB8ne190104EPS5_y: # @_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE10deallocateB8ne190104EPS5_y
.Lfunc_begin12:
.seh_proc _ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE10deallocateB8ne190104EPS5_y
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	40(%rsp), %rcx
	movq	32(%rsp), %rax
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rdx
.Ltmp72:
	movl	$8, %r8d
	callq	_ZNSt3__119__libcpp_deallocateB8ne190104EPvyy
.Ltmp73:
	jmp	.LBB106_1
.LBB106_1:
	addq	$56, %rsp
	retq
.LBB106_2:
.Ltmp74:
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end12:
	.seh_handlerdata
	.section	.text$_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE10deallocateB8ne190104EPS5_y,"xr",discard,_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE10deallocateB8ne190104EPS5_y
	.seh_endproc
	.section	.xdata$_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE10deallocateB8ne190104EPS5_y,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table106:
.Lexception12:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase7-.Lttbaseref7
.Lttbaseref7:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end12-.Lcst_begin12
.Lcst_begin12:
	.uleb128 .Ltmp72-.Lfunc_begin12         # >> Call Site 1 <<
	.uleb128 .Ltmp73-.Ltmp72                #   Call between .Ltmp72 and .Ltmp73
	.uleb128 .Ltmp74-.Lfunc_begin12         #     jumps to .Ltmp74
	.byte	1                               #   On action: 1
.Lcst_end12:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase7:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE10deallocateB8ne190104EPS5_y,"xr",discard,_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE10deallocateB8ne190104EPS5_y
                                        # -- End function
	.def	_ZNSt3__119__libcpp_deallocateB8ne190104EPvyy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119__libcpp_deallocateB8ne190104EPvyy,"xr",discard,_ZNSt3__119__libcpp_deallocateB8ne190104EPvyy
	.globl	_ZNSt3__119__libcpp_deallocateB8ne190104EPvyy # -- Begin function _ZNSt3__119__libcpp_deallocateB8ne190104EPvyy
	.p2align	4, 0x90
_ZNSt3__119__libcpp_deallocateB8ne190104EPvyy: # @_ZNSt3__119__libcpp_deallocateB8ne190104EPvyy
.seh_proc _ZNSt3__119__libcpp_deallocateB8ne190104EPvyy
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZNSt3__124__is_overaligned_for_newB8ne190104Ey
	testb	$1, %al
	jne	.LBB107_1
	jmp	.LBB107_2
.LBB107_1:
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	64(%rsp), %rcx
	movq	56(%rsp), %rdx
	movq	40(%rsp), %r8
	callq	_ZNSt3__127__do_deallocate_handle_sizeB8ne190104IJSt11align_val_tEEEvPvyDpT_
	jmp	.LBB107_3
.LBB107_2:
	movq	64(%rsp), %rcx
	movq	56(%rsp), %rdx
	callq	_ZNSt3__127__do_deallocate_handle_sizeB8ne190104IJEEEvPvyDpT_
.LBB107_3:
	nop
	addq	$72, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__127__do_deallocate_handle_sizeB8ne190104IJSt11align_val_tEEEvPvyDpT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__127__do_deallocate_handle_sizeB8ne190104IJSt11align_val_tEEEvPvyDpT_,"xr",discard,_ZNSt3__127__do_deallocate_handle_sizeB8ne190104IJSt11align_val_tEEEvPvyDpT_
	.globl	_ZNSt3__127__do_deallocate_handle_sizeB8ne190104IJSt11align_val_tEEEvPvyDpT_ # -- Begin function _ZNSt3__127__do_deallocate_handle_sizeB8ne190104IJSt11align_val_tEEEvPvyDpT_
	.p2align	4, 0x90
_ZNSt3__127__do_deallocate_handle_sizeB8ne190104IJSt11align_val_tEEEvPvyDpT_: # @_ZNSt3__127__do_deallocate_handle_sizeB8ne190104IJSt11align_val_tEEEvPvyDpT_
.seh_proc _ZNSt3__127__do_deallocate_handle_sizeB8ne190104IJSt11align_val_tEEEvPvyDpT_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	48(%rsp), %rcx
	movq	32(%rsp), %rdx
	callq	_ZNSt3__124__libcpp_operator_deleteB8ne190104IJPvSt11align_val_tEEEvDpT_
	nop
	addq	$56, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__127__do_deallocate_handle_sizeB8ne190104IJEEEvPvyDpT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__127__do_deallocate_handle_sizeB8ne190104IJEEEvPvyDpT_,"xr",discard,_ZNSt3__127__do_deallocate_handle_sizeB8ne190104IJEEEvPvyDpT_
	.globl	_ZNSt3__127__do_deallocate_handle_sizeB8ne190104IJEEEvPvyDpT_ # -- Begin function _ZNSt3__127__do_deallocate_handle_sizeB8ne190104IJEEEvPvyDpT_
	.p2align	4, 0x90
_ZNSt3__127__do_deallocate_handle_sizeB8ne190104IJEEEvPvyDpT_: # @_ZNSt3__127__do_deallocate_handle_sizeB8ne190104IJEEEvPvyDpT_
.seh_proc _ZNSt3__127__do_deallocate_handle_sizeB8ne190104IJEEEvPvyDpT_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	callq	_ZNSt3__124__libcpp_operator_deleteB8ne190104IJPvEEEvDpT_
	nop
	addq	$56, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__124__libcpp_operator_deleteB8ne190104IJPvSt11align_val_tEEEvDpT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__124__libcpp_operator_deleteB8ne190104IJPvSt11align_val_tEEEvDpT_,"xr",discard,_ZNSt3__124__libcpp_operator_deleteB8ne190104IJPvSt11align_val_tEEEvDpT_
	.globl	_ZNSt3__124__libcpp_operator_deleteB8ne190104IJPvSt11align_val_tEEEvDpT_ # -- Begin function _ZNSt3__124__libcpp_operator_deleteB8ne190104IJPvSt11align_val_tEEEvDpT_
	.p2align	4, 0x90
_ZNSt3__124__libcpp_operator_deleteB8ne190104IJPvSt11align_val_tEEEvDpT_: # @_ZNSt3__124__libcpp_operator_deleteB8ne190104IJPvSt11align_val_tEEEvDpT_
.seh_proc _ZNSt3__124__libcpp_operator_deleteB8ne190104IJPvSt11align_val_tEEEvDpT_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	callq	_ZdlPvSt11align_val_t
	nop
	addq	$56, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__124__libcpp_operator_deleteB8ne190104IJPvEEEvDpT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__124__libcpp_operator_deleteB8ne190104IJPvEEEvDpT_,"xr",discard,_ZNSt3__124__libcpp_operator_deleteB8ne190104IJPvEEEvDpT_
	.globl	_ZNSt3__124__libcpp_operator_deleteB8ne190104IJPvEEEvDpT_ # -- Begin function _ZNSt3__124__libcpp_operator_deleteB8ne190104IJPvEEEvDpT_
	.p2align	4, 0x90
_ZNSt3__124__libcpp_operator_deleteB8ne190104IJPvEEEvDpT_: # @_ZNSt3__124__libcpp_operator_deleteB8ne190104IJPvEEEvDpT_
.seh_proc _ZNSt3__124__libcpp_operator_deleteB8ne190104IJPvEEEvDpT_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZdlPv
	nop
	addq	$40, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE9__end_capB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE9__end_capB8ne190104Ev,"xr",discard,_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE9__end_capB8ne190104Ev
	.globl	_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE9__end_capB8ne190104Ev # -- Begin function _ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE9__end_capB8ne190104Ev
	.p2align	4, 0x90
_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE9__end_capB8ne190104Ev: # @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE9__end_capB8ne190104Ev
.seh_proc _ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE9__end_capB8ne190104Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	addq	$16, %rcx
	callq	_ZNKSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5firstB8ne190104Ev
	nop
	addq	$40, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5firstB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5firstB8ne190104Ev,"xr",discard,_ZNKSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5firstB8ne190104Ev
	.globl	_ZNKSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5firstB8ne190104Ev # -- Begin function _ZNKSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5firstB8ne190104Ev
	.p2align	4, 0x90
_ZNKSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5firstB8ne190104Ev: # @_ZNKSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5firstB8ne190104Ev
.seh_proc _ZNKSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5firstB8ne190104Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNKSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getB8ne190104Ev
	nop
	addq	$40, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getB8ne190104Ev,"xr",discard,_ZNKSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getB8ne190104Ev
	.globl	_ZNKSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getB8ne190104Ev # -- Begin function _ZNKSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getB8ne190104Ev
	.p2align	4, 0x90
_ZNKSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getB8ne190104Ev: # @_ZNKSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getB8ne190104Ev
.seh_proc _ZNKSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getB8ne190104Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	popq	%rcx
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__124__put_character_sequenceB8ne190104IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__124__put_character_sequenceB8ne190104IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y,"xr",discard,_ZNSt3__124__put_character_sequenceB8ne190104IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y
	.globl	_ZNSt3__124__put_character_sequenceB8ne190104IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y # -- Begin function _ZNSt3__124__put_character_sequenceB8ne190104IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y
	.p2align	4, 0x90
_ZNSt3__124__put_character_sequenceB8ne190104IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y: # @_ZNSt3__124__put_character_sequenceB8ne190104IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y
.Lfunc_begin13:
.seh_proc _ZNSt3__124__put_character_sequenceB8ne190104IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$184, %rsp
	.seh_stackalloc 184
	.seh_endprologue
	movq	%rcx, 176(%rsp)
	movq	%rdx, 168(%rsp)
	movq	%r8, 160(%rsp)
	movq	176(%rsp), %rdx
.Ltmp75:
	leaq	144(%rsp), %rcx
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC2ERS3_
.Ltmp76:
	jmp	.LBB115_1
.LBB115_1:
.Ltmp78:
	leaq	144(%rsp), %rcx
	callq	_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne190104Ev
.Ltmp79:
	movb	%al, 111(%rsp)                  # 1-byte Spill
	jmp	.LBB115_2
.LBB115_2:
	movb	111(%rsp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB115_3
	jmp	.LBB115_18
.LBB115_3:
	movq	176(%rsp), %rdx
	leaq	112(%rsp), %rcx
	callq	_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne190104ERNS_13basic_ostreamIcS2_EE
	movq	168(%rsp), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	176(%rsp), %rcx
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	addq	%rax, %rcx
.Ltmp80:
	callq	_ZNKSt3__18ios_base5flagsB8ne190104Ev
.Ltmp81:
	movl	%eax, 104(%rsp)                 # 4-byte Spill
	jmp	.LBB115_4
.LBB115_4:
	movl	104(%rsp), %eax                 # 4-byte Reload
	andl	$176, %eax
	cmpl	$32, %eax
	jne	.LBB115_6
# %bb.5:
	movq	168(%rsp), %rax
	addq	160(%rsp), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	jmp	.LBB115_7
.LBB115_6:
	movq	168(%rsp), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
.LBB115_7:
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	168(%rsp), %rax
	movq	160(%rsp), %rcx
	addq	%rcx, %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	176(%rsp), %rcx
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	addq	%rax, %rcx
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
.Ltmp82:
	callq	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne190104Ev
.Ltmp83:
	movb	%al, 87(%rsp)                   # 1-byte Spill
	jmp	.LBB115_8
.LBB115_8:
	movq	64(%rsp), %r9                   # 8-byte Reload
	movq	56(%rsp), %r8                   # 8-byte Reload
	movq	96(%rsp), %rdx                  # 8-byte Reload
	movq	72(%rsp), %r10                  # 8-byte Reload
	movb	87(%rsp), %r11b                 # 1-byte Reload
	movq	112(%rsp), %rcx
.Ltmp84:
	movq	%rsp, %rax
	movb	%r11b, 40(%rax)
	movq	%r10, 32(%rax)
	callq	_ZNSt3__116__pad_and_outputB8ne190104IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
.Ltmp85:
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	jmp	.LBB115_9
.LBB115_9:
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 120(%rsp)
	leaq	120(%rsp), %rcx
	callq	_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne190104Ev
	testb	$1, %al
	jne	.LBB115_10
	jmp	.LBB115_17
.LBB115_10:
	movq	176(%rsp), %rcx
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	addq	%rax, %rcx
.Ltmp86:
	movl	$5, %edx
	callq	_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne190104Ej
.Ltmp87:
	jmp	.LBB115_11
.LBB115_11:
	jmp	.LBB115_17
.LBB115_12:
.Ltmp77:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 136(%rsp)
	movl	%eax, 132(%rsp)
	jmp	.LBB115_14
.LBB115_13:
.Ltmp88:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 136(%rsp)
	movl	%eax, 132(%rsp)
	leaq	144(%rsp), %rcx
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev
.LBB115_14:
	movq	136(%rsp), %rcx
	callq	__cxa_begin_catch
	movq	176(%rsp), %rcx
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	addq	%rax, %rcx
.Ltmp89:
	callq	_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
.Ltmp90:
	jmp	.LBB115_15
.LBB115_15:
	callq	__cxa_end_catch
.LBB115_16:
	movq	176(%rsp), %rax
	addq	$184, %rsp
	retq
.LBB115_17:
	jmp	.LBB115_18
.LBB115_18:
	leaq	144(%rsp), %rcx
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev
	jmp	.LBB115_16
.LBB115_19:
.Ltmp91:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 136(%rsp)
	movl	%eax, 132(%rsp)
.Ltmp92:
	callq	__cxa_end_catch
.Ltmp93:
	jmp	.LBB115_20
.LBB115_20:
	jmp	.LBB115_21
.LBB115_21:
	movq	136(%rsp), %rcx
	callq	_Unwind_Resume
.LBB115_22:
.Ltmp94:
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end13:
	.seh_handlerdata
	.section	.text$_ZNSt3__124__put_character_sequenceB8ne190104IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y,"xr",discard,_ZNSt3__124__put_character_sequenceB8ne190104IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y
	.seh_endproc
	.section	.xdata$_ZNSt3__124__put_character_sequenceB8ne190104IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table115:
.Lexception13:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase8-.Lttbaseref8
.Lttbaseref8:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end13-.Lcst_begin13
.Lcst_begin13:
	.uleb128 .Ltmp75-.Lfunc_begin13         # >> Call Site 1 <<
	.uleb128 .Ltmp76-.Ltmp75                #   Call between .Ltmp75 and .Ltmp76
	.uleb128 .Ltmp77-.Lfunc_begin13         #     jumps to .Ltmp77
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp78-.Lfunc_begin13         # >> Call Site 2 <<
	.uleb128 .Ltmp87-.Ltmp78                #   Call between .Ltmp78 and .Ltmp87
	.uleb128 .Ltmp88-.Lfunc_begin13         #     jumps to .Ltmp88
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp87-.Lfunc_begin13         # >> Call Site 3 <<
	.uleb128 .Ltmp89-.Ltmp87                #   Call between .Ltmp87 and .Ltmp89
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp89-.Lfunc_begin13         # >> Call Site 4 <<
	.uleb128 .Ltmp90-.Ltmp89                #   Call between .Ltmp89 and .Ltmp90
	.uleb128 .Ltmp91-.Lfunc_begin13         #     jumps to .Ltmp91
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp90-.Lfunc_begin13         # >> Call Site 5 <<
	.uleb128 .Ltmp92-.Ltmp90                #   Call between .Ltmp90 and .Ltmp92
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp92-.Lfunc_begin13         # >> Call Site 6 <<
	.uleb128 .Ltmp93-.Ltmp92                #   Call between .Ltmp92 and .Ltmp93
	.uleb128 .Ltmp94-.Lfunc_begin13         #     jumps to .Ltmp94
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp93-.Lfunc_begin13         # >> Call Site 7 <<
	.uleb128 .Lfunc_end13-.Ltmp93           #   Call between .Ltmp93 and .Lfunc_end13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end13:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase8:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__124__put_character_sequenceB8ne190104IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y,"xr",discard,_ZNSt3__124__put_character_sequenceB8ne190104IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y
                                        # -- End function
	.def	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC2ERS3_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC2ERS3_,"xr",discard,_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC2ERS3_
	.globl	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC2ERS3_ # -- Begin function _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC2ERS3_
	.p2align	4, 0x90
_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC2ERS3_: # @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC2ERS3_
.seh_proc _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC2ERS3_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movb	$0, (%rax)
	movq	40(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	40(%rsp), %rcx
	movq	(%rcx), %rax
	addq	-24(%rax), %rcx
	callq	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4goodB8ne190104Ev
	testb	$1, %al
	jne	.LBB116_1
	jmp	.LBB116_4
.LBB116_1:
	movq	40(%rsp), %rcx
	movq	(%rcx), %rax
	addq	-24(%rax), %rcx
	callq	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE3tieB8ne190104Ev
	cmpq	$0, %rax
	je	.LBB116_3
# %bb.2:
	movq	40(%rsp), %rcx
	movq	(%rcx), %rax
	addq	-24(%rax), %rcx
	callq	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE3tieB8ne190104Ev
	movq	%rax, %rcx
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
.LBB116_3:
	movq	32(%rsp), %rax                  # 8-byte Reload
	movb	$1, (%rax)
.LBB116_4:
	addq	$56, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne190104Ev,"xr",discard,_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne190104Ev
	.globl	_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne190104Ev # -- Begin function _ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne190104Ev
	.p2align	4, 0x90
_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne190104Ev: # @_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne190104Ev
.seh_proc _ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne190104Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movb	(%rax), %al
	andb	$1, %al
	popq	%rcx
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__116__pad_and_outputB8ne190104IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116__pad_and_outputB8ne190104IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_,"xr",discard,_ZNSt3__116__pad_and_outputB8ne190104IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	_ZNSt3__116__pad_and_outputB8ne190104IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ # -- Begin function _ZNSt3__116__pad_and_outputB8ne190104IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	4, 0x90
_ZNSt3__116__pad_and_outputB8ne190104IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: # @_ZNSt3__116__pad_and_outputB8ne190104IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
.Lfunc_begin14:
.seh_proc _ZNSt3__116__pad_and_outputB8ne190104IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$168, %rsp
	.seh_stackalloc 168
	.seh_endprologue
	movb	216(%rsp), %al
	movq	208(%rsp), %rax
	movq	%rcx, 152(%rsp)
	movq	%rdx, 144(%rsp)
	movq	%r8, 136(%rsp)
	movq	%r9, 128(%rsp)
	cmpq	$0, 152(%rsp)
	jne	.LBB118_2
# %bb.1:
	movq	152(%rsp), %rax
	movq	%rax, 160(%rsp)
	jmp	.LBB118_22
.LBB118_2:
	movq	128(%rsp), %rax
	movq	144(%rsp), %rcx
	subq	%rcx, %rax
	movq	%rax, 120(%rsp)
	movq	208(%rsp), %rcx
	callq	_ZNKSt3__18ios_base5widthB8ne190104Ev
	movq	%rax, 112(%rsp)
	movq	112(%rsp), %rax
	cmpq	120(%rsp), %rax
	jle	.LBB118_4
# %bb.3:
	movq	120(%rsp), %rcx
	movq	112(%rsp), %rax
	subq	%rcx, %rax
	movq	%rax, 112(%rsp)
	jmp	.LBB118_5
.LBB118_4:
	movq	$0, 112(%rsp)
.LBB118_5:
	movq	136(%rsp), %rax
	movq	144(%rsp), %rcx
	subq	%rcx, %rax
	movq	%rax, 104(%rsp)
	cmpq	$0, 104(%rsp)
	jle	.LBB118_9
# %bb.6:
	movq	152(%rsp), %rcx
	movq	144(%rsp), %rdx
	movq	104(%rsp), %r8
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne190104EPKcx
	cmpq	104(%rsp), %rax
	je	.LBB118_8
# %bb.7:
	movq	$0, 152(%rsp)
	movq	152(%rsp), %rax
	movq	%rax, 160(%rsp)
	jmp	.LBB118_22
.LBB118_8:
	jmp	.LBB118_9
.LBB118_9:
	cmpq	$0, 112(%rsp)
	jle	.LBB118_17
# %bb.10:
	movq	112(%rsp), %rdx
	movb	216(%rsp), %r8b
	leaq	80(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne190104Eyc
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	152(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne190104Ev
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movq	112(%rsp), %r8
.Ltmp95:
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne190104EPKcx
.Ltmp96:
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	jmp	.LBB118_11
.LBB118_11:
	movq	56(%rsp), %rax                  # 8-byte Reload
	cmpq	112(%rsp), %rax
	je	.LBB118_14
# %bb.12:
	movq	$0, 152(%rsp)
	movq	152(%rsp), %rax
	movq	%rax, 160(%rsp)
	movl	$1, 64(%rsp)
	jmp	.LBB118_15
.LBB118_13:
.Ltmp97:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 72(%rsp)
	movl	%eax, 68(%rsp)
	leaq	80(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	.LBB118_23
.LBB118_14:
	movl	$0, 64(%rsp)
.LBB118_15:
	leaq	80(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movl	64(%rsp), %eax
	testl	%eax, %eax
	je	.LBB118_16
	jmp	.LBB118_25
.LBB118_25:
	jmp	.LBB118_22
.LBB118_16:
	jmp	.LBB118_17
.LBB118_17:
	movq	128(%rsp), %rax
	movq	136(%rsp), %rcx
	subq	%rcx, %rax
	movq	%rax, 104(%rsp)
	cmpq	$0, 104(%rsp)
	jle	.LBB118_21
# %bb.18:
	movq	152(%rsp), %rcx
	movq	136(%rsp), %rdx
	movq	104(%rsp), %r8
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne190104EPKcx
	cmpq	104(%rsp), %rax
	je	.LBB118_20
# %bb.19:
	movq	$0, 152(%rsp)
	movq	152(%rsp), %rax
	movq	%rax, 160(%rsp)
	jmp	.LBB118_22
.LBB118_20:
	jmp	.LBB118_21
.LBB118_21:
	movq	208(%rsp), %rcx
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	_ZNSt3__18ios_base5widthB8ne190104Ex
	movq	152(%rsp), %rax
	movq	%rax, 160(%rsp)
.LBB118_22:
	movq	160(%rsp), %rax
	addq	$168, %rsp
	retq
.LBB118_23:
	movq	72(%rsp), %rcx
	callq	_Unwind_Resume
# %bb.24:
	int3
.Lfunc_end14:
	.seh_handlerdata
	.section	.text$_ZNSt3__116__pad_and_outputB8ne190104IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_,"xr",discard,_ZNSt3__116__pad_and_outputB8ne190104IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.seh_endproc
	.section	.xdata$_ZNSt3__116__pad_and_outputB8ne190104IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table118:
.Lexception14:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end14-.Lcst_begin14
.Lcst_begin14:
	.uleb128 .Lfunc_begin14-.Lfunc_begin14  # >> Call Site 1 <<
	.uleb128 .Ltmp95-.Lfunc_begin14         #   Call between .Lfunc_begin14 and .Ltmp95
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp95-.Lfunc_begin14         # >> Call Site 2 <<
	.uleb128 .Ltmp96-.Ltmp95                #   Call between .Ltmp95 and .Ltmp96
	.uleb128 .Ltmp97-.Lfunc_begin14         #     jumps to .Ltmp97
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp96-.Lfunc_begin14         # >> Call Site 3 <<
	.uleb128 .Lfunc_end14-.Ltmp96           #   Call between .Ltmp96 and .Lfunc_end14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end14:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__116__pad_and_outputB8ne190104IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_,"xr",discard,_ZNSt3__116__pad_and_outputB8ne190104IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
                                        # -- End function
	.def	_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne190104ERNS_13basic_ostreamIcS2_EE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne190104ERNS_13basic_ostreamIcS2_EE,"xr",discard,_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne190104ERNS_13basic_ostreamIcS2_EE
	.globl	_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne190104ERNS_13basic_ostreamIcS2_EE # -- Begin function _ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne190104ERNS_13basic_ostreamIcS2_EE
	.p2align	4, 0x90
_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne190104ERNS_13basic_ostreamIcS2_EE: # @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne190104ERNS_13basic_ostreamIcS2_EE
.Lfunc_begin15:
.seh_proc _ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne190104ERNS_13basic_ostreamIcS2_EE
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rcx
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	addq	%rax, %rcx
.Ltmp98:
	callq	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne190104Ev
.Ltmp99:
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	jmp	.LBB119_1
.LBB119_1:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, (%rax)
	addq	$72, %rsp
	retq
.LBB119_2:
.Ltmp100:
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end15:
	.seh_handlerdata
	.section	.text$_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne190104ERNS_13basic_ostreamIcS2_EE,"xr",discard,_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne190104ERNS_13basic_ostreamIcS2_EE
	.seh_endproc
	.section	.xdata$_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne190104ERNS_13basic_ostreamIcS2_EE,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table119:
.Lexception15:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase9-.Lttbaseref9
.Lttbaseref9:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end15-.Lcst_begin15
.Lcst_begin15:
	.uleb128 .Ltmp98-.Lfunc_begin15         # >> Call Site 1 <<
	.uleb128 .Ltmp99-.Ltmp98                #   Call between .Ltmp98 and .Ltmp99
	.uleb128 .Ltmp100-.Lfunc_begin15        #     jumps to .Ltmp100
	.byte	1                               #   On action: 1
.Lcst_end15:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase9:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne190104ERNS_13basic_ostreamIcS2_EE,"xr",discard,_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne190104ERNS_13basic_ostreamIcS2_EE
                                        # -- End function
	.def	_ZNKSt3__18ios_base5flagsB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__18ios_base5flagsB8ne190104Ev,"xr",discard,_ZNKSt3__18ios_base5flagsB8ne190104Ev
	.globl	_ZNKSt3__18ios_base5flagsB8ne190104Ev # -- Begin function _ZNKSt3__18ios_base5flagsB8ne190104Ev
	.p2align	4, 0x90
_ZNKSt3__18ios_base5flagsB8ne190104Ev:  # @_ZNKSt3__18ios_base5flagsB8ne190104Ev
.seh_proc _ZNKSt3__18ios_base5flagsB8ne190104Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movl	8(%rax), %eax
	popq	%rcx
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne190104Ev,"xr",discard,_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne190104Ev
	.globl	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne190104Ev # -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne190104Ev
	.p2align	4, 0x90
_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne190104Ev: # @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne190104Ev
.seh_proc _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne190104Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	addq	$144, %rcx
	callq	_ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB8ne190104Ev
	testb	$1, %al
	jne	.LBB121_2
# %bb.1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movl	$32, %edx
	callq	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne190104Ec
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movsbl	%al, %edx
	addq	$144, %rcx
	callq	_ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB8ne190104Ei
.LBB121_2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	addq	$144, %rcx
	callq	_ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB8ne190104Ev
                                        # kill: def $al killed $al killed $eax
	nop
	addq	$56, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne190104Ev,"xr",discard,_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne190104Ev
	.globl	_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne190104Ev # -- Begin function _ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne190104Ev
	.p2align	4, 0x90
_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne190104Ev: # @_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne190104Ev
.seh_proc _ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne190104Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	cmpq	$0, (%rax)
	sete	%al
	andb	$1, %al
	popq	%rcx
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne190104Ej;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne190104Ej,"xr",discard,_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne190104Ej
	.globl	_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne190104Ej # -- Begin function _ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne190104Ej
	.p2align	4, 0x90
_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne190104Ej: # @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne190104Ej
.seh_proc _ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne190104Ej
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movl	%edx, 44(%rsp)
	movq	48(%rsp), %rcx
	movl	44(%rsp), %edx
	callq	_ZNSt3__18ios_base8setstateB8ne190104Ej
	nop
	addq	$56, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev,"xr",discard,_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev
	.globl	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev # -- Begin function _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev
	.p2align	4, 0x90
_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev: # @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev
.Lfunc_begin16:
.seh_proc _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
	movq	%rcx, 96(%rsp)
	movq	96(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	8(%rax), %rcx
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	addq	%rax, %rcx
.Ltmp101:
	callq	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne190104Ev
.Ltmp102:
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	jmp	.LBB124_1
.LBB124_1:
	movq	72(%rsp), %rax                  # 8-byte Reload
	cmpq	$0, %rax
	je	.LBB124_16
# %bb.2:
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rcx
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	addq	%rax, %rcx
.Ltmp103:
	callq	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4goodB8ne190104Ev
.Ltmp104:
	movb	%al, 63(%rsp)                   # 1-byte Spill
	jmp	.LBB124_3
.LBB124_3:
	movb	63(%rsp), %al                   # 1-byte Reload
	testb	$1, %al
	jne	.LBB124_4
	jmp	.LBB124_16
.LBB124_4:
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rcx
	movq	(%rcx), %rax
	addq	-24(%rax), %rcx
	callq	_ZNKSt3__18ios_base5flagsB8ne190104Ev
	andl	$8192, %eax                     # imm = 0x2000
	cmpl	$0, %eax
	je	.LBB124_16
# %bb.5:
	callq	_ZSt18uncaught_exceptionv
	testb	$1, %al
	jne	.LBB124_16
# %bb.6:
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rcx
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	addq	%rax, %rcx
.Ltmp105:
	callq	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne190104Ev
.Ltmp106:
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	jmp	.LBB124_7
.LBB124_7:
.Ltmp107:
	movq	48(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7pubsyncB8ne190104Ev
.Ltmp108:
	movl	%eax, 44(%rsp)                  # 4-byte Spill
	jmp	.LBB124_8
.LBB124_8:
	movl	44(%rsp), %eax                  # 4-byte Reload
	cmpl	$-1, %eax
	jne	.LBB124_15
# %bb.9:
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rcx
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	addq	%rax, %rcx
.Ltmp109:
	movl	$1, %edx
	callq	_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne190104Ej
.Ltmp110:
	jmp	.LBB124_10
.LBB124_10:
	jmp	.LBB124_15
.LBB124_11:
.Ltmp111:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 88(%rsp)
	movl	%eax, 84(%rsp)
# %bb.12:
	movq	88(%rsp), %rcx
	callq	__cxa_begin_catch
.Ltmp112:
	callq	__cxa_end_catch
.Ltmp113:
	jmp	.LBB124_13
.LBB124_13:
	jmp	.LBB124_14
.LBB124_14:
	jmp	.LBB124_16
.LBB124_15:
	jmp	.LBB124_14
.LBB124_16:
	addq	$104, %rsp
	retq
.LBB124_17:
.Ltmp114:
	movq	%rax, %rcx
                                        # kill: def $eax killed $edx killed $rdx
	callq	__clang_call_terminate
	int3
.Lfunc_end16:
	.seh_handlerdata
	.section	.text$_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev,"xr",discard,_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev
	.seh_endproc
	.section	.xdata$_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table124:
.Lexception16:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase10-.Lttbaseref10
.Lttbaseref10:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end16-.Lcst_begin16
.Lcst_begin16:
	.uleb128 .Ltmp101-.Lfunc_begin16        # >> Call Site 1 <<
	.uleb128 .Ltmp104-.Ltmp101              #   Call between .Ltmp101 and .Ltmp104
	.uleb128 .Ltmp114-.Lfunc_begin16        #     jumps to .Ltmp114
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp105-.Lfunc_begin16        # >> Call Site 2 <<
	.uleb128 .Ltmp110-.Ltmp105              #   Call between .Ltmp105 and .Ltmp110
	.uleb128 .Ltmp111-.Lfunc_begin16        #     jumps to .Ltmp111
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp110-.Lfunc_begin16        # >> Call Site 3 <<
	.uleb128 .Ltmp112-.Ltmp110              #   Call between .Ltmp110 and .Ltmp112
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp112-.Lfunc_begin16        # >> Call Site 4 <<
	.uleb128 .Ltmp113-.Ltmp112              #   Call between .Ltmp112 and .Ltmp113
	.uleb128 .Ltmp114-.Lfunc_begin16        #     jumps to .Ltmp114
	.byte	1                               #   On action: 1
.Lcst_end16:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase10:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev,"xr",discard,_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD2Ev
                                        # -- End function
	.def	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4goodB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4goodB8ne190104Ev,"xr",discard,_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4goodB8ne190104Ev
	.globl	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4goodB8ne190104Ev # -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4goodB8ne190104Ev
	.p2align	4, 0x90
_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4goodB8ne190104Ev: # @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4goodB8ne190104Ev
.seh_proc _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4goodB8ne190104Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNKSt3__18ios_base4goodB8ne190104Ev
	andb	$1, %al
	addq	$40, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE3tieB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE3tieB8ne190104Ev,"xr",discard,_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE3tieB8ne190104Ev
	.globl	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE3tieB8ne190104Ev # -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE3tieB8ne190104Ev
	.p2align	4, 0x90
_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE3tieB8ne190104Ev: # @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE3tieB8ne190104Ev
.seh_proc _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE3tieB8ne190104Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	136(%rax), %rax
	popq	%rcx
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__18ios_base4goodB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__18ios_base4goodB8ne190104Ev,"xr",discard,_ZNKSt3__18ios_base4goodB8ne190104Ev
	.globl	_ZNKSt3__18ios_base4goodB8ne190104Ev # -- Begin function _ZNKSt3__18ios_base4goodB8ne190104Ev
	.p2align	4, 0x90
_ZNKSt3__18ios_base4goodB8ne190104Ev:   # @_ZNKSt3__18ios_base4goodB8ne190104Ev
.seh_proc _ZNKSt3__18ios_base4goodB8ne190104Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	cmpl	$0, 32(%rax)
	sete	%al
	andb	$1, %al
	popq	%rcx
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__18ios_base5widthB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__18ios_base5widthB8ne190104Ev,"xr",discard,_ZNKSt3__18ios_base5widthB8ne190104Ev
	.globl	_ZNKSt3__18ios_base5widthB8ne190104Ev # -- Begin function _ZNKSt3__18ios_base5widthB8ne190104Ev
	.p2align	4, 0x90
_ZNKSt3__18ios_base5widthB8ne190104Ev:  # @_ZNKSt3__18ios_base5widthB8ne190104Ev
.seh_proc _ZNKSt3__18ios_base5widthB8ne190104Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	24(%rax), %rax
	popq	%rcx
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne190104EPKcx;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne190104EPKcx,"xr",discard,_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne190104EPKcx
	.globl	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne190104EPKcx # -- Begin function _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne190104EPKcx
	.p2align	4, 0x90
_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne190104EPKcx: # @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne190104EPKcx
.seh_proc _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne190104EPKcx
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	48(%rsp), %rcx
	movq	40(%rsp), %rdx
	movq	32(%rsp), %r8
	movq	(%rcx), %rax
	callq	*96(%rax)
	nop
	addq	$56, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne190104Eyc;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne190104Eyc,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne190104Eyc
	.globl	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne190104Eyc # -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne190104Eyc
	.p2align	4, 0x90
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne190104Eyc: # @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne190104Eyc
.seh_proc _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne190104Eyc
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movb	%r8b, 55(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	leaq	54(%rsp), %rdx
	leaq	53(%rsp), %r8
	callq	_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B8ne190104INS_18__default_init_tagESA_EEOT_OT0_
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx
	movb	55(%rsp), %r8b
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEyc
	nop
	addq	$72, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne190104Ev,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne190104Ev
	.globl	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne190104Ev # -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne190104Ev
	.p2align	4, 0x90
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne190104Ev: # @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne190104Ev
.seh_proc _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne190104Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne190104Ev
	movq	%rax, %rcx
	callq	_ZNSt3__112__to_addressB8ne190104IcEEPT_S2_
	nop
	addq	$40, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__18ios_base5widthB8ne190104Ex;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__18ios_base5widthB8ne190104Ex,"xr",discard,_ZNSt3__18ios_base5widthB8ne190104Ex
	.globl	_ZNSt3__18ios_base5widthB8ne190104Ex # -- Begin function _ZNSt3__18ios_base5widthB8ne190104Ex
	.p2align	4, 0x90
_ZNSt3__18ios_base5widthB8ne190104Ex:   # @_ZNSt3__18ios_base5widthB8ne190104Ex
.seh_proc _ZNSt3__18ios_base5widthB8ne190104Ex
# %bb.0:
	subq	$24, %rsp
	.seh_stackalloc 24
	.seh_endprologue
	movq	%rcx, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movq	16(%rsp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	(%rsp), %rax
	addq	$24, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112__to_addressB8ne190104IcEEPT_S2_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__to_addressB8ne190104IcEEPT_S2_,"xr",discard,_ZNSt3__112__to_addressB8ne190104IcEEPT_S2_
	.globl	_ZNSt3__112__to_addressB8ne190104IcEEPT_S2_ # -- Begin function _ZNSt3__112__to_addressB8ne190104IcEEPT_S2_
	.p2align	4, 0x90
_ZNSt3__112__to_addressB8ne190104IcEEPT_S2_: # @_ZNSt3__112__to_addressB8ne190104IcEEPT_S2_
.seh_proc _ZNSt3__112__to_addressB8ne190104IcEEPT_S2_
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	popq	%rcx
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne190104Ev,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne190104Ev
	.globl	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne190104Ev # -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne190104Ev
	.p2align	4, 0x90
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne190104Ev: # @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne190104Ev
.seh_proc _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne190104Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne190104Ev
	testb	$1, %al
	jne	.LBB134_1
	jmp	.LBB134_2
.LBB134_1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne190104Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB134_3
.LBB134_2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne190104Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
.LBB134_3:
	movq	32(%rsp), %rax                  # 8-byte Reload
	addq	$56, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne190104Ev,"xr",discard,_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne190104Ev
	.globl	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne190104Ev # -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne190104Ev
	.p2align	4, 0x90
_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne190104Ev: # @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne190104Ev
.seh_proc _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne190104Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne190104Ev
	movb	(%rax), %al
	andb	$1, %al
	cmpb	$0, %al
	setne	%al
	andb	$1, %al
	addq	$40, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne190104Ev,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne190104Ev
	.globl	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne190104Ev # -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne190104Ev
	.p2align	4, 0x90
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne190104Ev: # @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne190104Ev
.seh_proc _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne190104Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne190104Ev
	movq	16(%rax), %rax
	addq	$40, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne190104Ev,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne190104Ev
	.globl	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne190104Ev # -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne190104Ev
	.p2align	4, 0x90
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne190104Ev: # @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne190104Ev
.seh_proc _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne190104Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne190104Ev
	movq	%rax, %rcx
	addq	$1, %rcx
	callq	_ZNSt3__114pointer_traitsIPcE10pointer_toB8ne190104ERc
	nop
	addq	$40, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne190104Ev,"xr",discard,_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne190104Ev
	.globl	_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne190104Ev # -- Begin function _ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne190104Ev
	.p2align	4, 0x90
_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne190104Ev: # @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne190104Ev
.seh_proc _ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne190104Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne190104Ev
	nop
	addq	$40, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne190104Ev,"xr",discard,_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne190104Ev
	.globl	_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne190104Ev # -- Begin function _ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne190104Ev
	.p2align	4, 0x90
_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne190104Ev: # @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne190104Ev
.seh_proc _ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne190104Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	popq	%rcx
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne190104Ev,"xr",discard,_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne190104Ev
	.globl	_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne190104Ev # -- Begin function _ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne190104Ev
	.p2align	4, 0x90
_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne190104Ev: # @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne190104Ev
.seh_proc _ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne190104Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne190104Ev
	nop
	addq	$40, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne190104Ev,"xr",discard,_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne190104Ev
	.globl	_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne190104Ev # -- Begin function _ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne190104Ev
	.p2align	4, 0x90
_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne190104Ev: # @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne190104Ev
.seh_proc _ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne190104Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	popq	%rcx
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114pointer_traitsIPcE10pointer_toB8ne190104ERc;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114pointer_traitsIPcE10pointer_toB8ne190104ERc,"xr",discard,_ZNSt3__114pointer_traitsIPcE10pointer_toB8ne190104ERc
	.globl	_ZNSt3__114pointer_traitsIPcE10pointer_toB8ne190104ERc # -- Begin function _ZNSt3__114pointer_traitsIPcE10pointer_toB8ne190104ERc
	.p2align	4, 0x90
_ZNSt3__114pointer_traitsIPcE10pointer_toB8ne190104ERc: # @_ZNSt3__114pointer_traitsIPcE10pointer_toB8ne190104ERc
.seh_proc _ZNSt3__114pointer_traitsIPcE10pointer_toB8ne190104ERc
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	popq	%rcx
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne190104Ev,"xr",discard,_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne190104Ev
	.globl	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne190104Ev # -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne190104Ev
	.p2align	4, 0x90
_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne190104Ev: # @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne190104Ev
.seh_proc _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne190104Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNKSt3__18ios_base5rdbufB8ne190104Ev
	nop
	addq	$40, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__18ios_base5rdbufB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__18ios_base5rdbufB8ne190104Ev,"xr",discard,_ZNKSt3__18ios_base5rdbufB8ne190104Ev
	.globl	_ZNKSt3__18ios_base5rdbufB8ne190104Ev # -- Begin function _ZNKSt3__18ios_base5rdbufB8ne190104Ev
	.p2align	4, 0x90
_ZNKSt3__18ios_base5rdbufB8ne190104Ev:  # @_ZNKSt3__18ios_base5rdbufB8ne190104Ev
.seh_proc _ZNKSt3__18ios_base5rdbufB8ne190104Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	40(%rax), %rax
	popq	%rcx
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB8ne190104Ev,"xr",discard,_ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB8ne190104Ev
	.globl	_ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB8ne190104Ev # -- Begin function _ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB8ne190104Ev
	.p2align	4, 0x90
_ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB8ne190104Ev: # @_ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB8ne190104Ev
.seh_proc _ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB8ne190104Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rax
	movl	(%rax), %eax
	movl	%eax, 44(%rsp)                  # 4-byte Spill
	callq	_ZNSt3__111char_traitsIcE3eofB8ne190104Ev
	movl	%eax, %ecx
	movl	44(%rsp), %eax                  # 4-byte Reload
	cmpl	%ecx, %eax
	setne	%al
	andb	$1, %al
	addq	$56, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne190104Ec;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne190104Ec,"xr",discard,_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne190104Ec
	.globl	_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne190104Ec # -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne190104Ec
	.p2align	4, 0x90
_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne190104Ec: # @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne190104Ec
.Lfunc_begin17:
.seh_proc _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne190104Ec
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
	movq	%rcx, 96(%rsp)
	movb	%dl, 95(%rsp)
	movq	96(%rsp), %rdx
	leaq	80(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__18ios_base6getlocEv
	movq	48(%rsp), %rcx                  # 8-byte Reload
.Ltmp115:
	callq	_ZNSt3__19use_facetB8ne190104INS_5ctypeIcEEEERKT_RKNS_6localeE
.Ltmp116:
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	jmp	.LBB146_1
.LBB146_1:
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movb	95(%rsp), %dl
.Ltmp117:
	callq	_ZNKSt3__15ctypeIcE5widenB8ne190104Ec
.Ltmp118:
	movb	%al, 47(%rsp)                   # 1-byte Spill
	jmp	.LBB146_2
.LBB146_2:
	leaq	80(%rsp), %rcx
	callq	_ZNSt3__16localeD1Ev
	movb	47(%rsp), %al                   # 1-byte Reload
	addq	$104, %rsp
	retq
.LBB146_3:
.Ltmp119:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 72(%rsp)
	movl	%eax, 68(%rsp)
	leaq	80(%rsp), %rcx
	callq	_ZNSt3__16localeD1Ev
# %bb.4:
	movq	72(%rsp), %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end17:
	.seh_handlerdata
	.section	.text$_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne190104Ec,"xr",discard,_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne190104Ec
	.seh_endproc
	.section	.xdata$_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne190104Ec,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table146:
.Lexception17:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end17-.Lcst_begin17
.Lcst_begin17:
	.uleb128 .Lfunc_begin17-.Lfunc_begin17  # >> Call Site 1 <<
	.uleb128 .Ltmp115-.Lfunc_begin17        #   Call between .Lfunc_begin17 and .Ltmp115
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp115-.Lfunc_begin17        # >> Call Site 2 <<
	.uleb128 .Ltmp118-.Ltmp115              #   Call between .Ltmp115 and .Ltmp118
	.uleb128 .Ltmp119-.Lfunc_begin17        #     jumps to .Ltmp119
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp118-.Lfunc_begin17        # >> Call Site 3 <<
	.uleb128 .Lfunc_end17-.Ltmp118          #   Call between .Ltmp118 and .Lfunc_end17
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end17:
	.p2align	2, 0x0
	.section	.text$_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne190104Ec,"xr",discard,_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne190104Ec
                                        # -- End function
	.def	_ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB8ne190104Ei;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB8ne190104Ei,"xr",discard,_ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB8ne190104Ei
	.globl	_ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB8ne190104Ei # -- Begin function _ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB8ne190104Ei
	.p2align	4, 0x90
_ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB8ne190104Ei: # @_ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB8ne190104Ei
.seh_proc _ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB8ne190104Ei
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movl	%edx, 4(%rsp)
	movq	8(%rsp), %rax
	movl	4(%rsp), %ecx
	movl	%ecx, (%rax)
	addq	$16, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB8ne190104Ev,"xr",discard,_ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB8ne190104Ev
	.globl	_ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB8ne190104Ev # -- Begin function _ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB8ne190104Ev
	.p2align	4, 0x90
_ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB8ne190104Ev: # @_ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB8ne190104Ev
.seh_proc _ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB8ne190104Ev
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movl	(%rax), %eax
	popq	%rcx
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__111char_traitsIcE3eofB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111char_traitsIcE3eofB8ne190104Ev,"xr",discard,_ZNSt3__111char_traitsIcE3eofB8ne190104Ev
	.globl	_ZNSt3__111char_traitsIcE3eofB8ne190104Ev # -- Begin function _ZNSt3__111char_traitsIcE3eofB8ne190104Ev
	.p2align	4, 0x90
_ZNSt3__111char_traitsIcE3eofB8ne190104Ev: # @_ZNSt3__111char_traitsIcE3eofB8ne190104Ev
# %bb.0:
	movl	$4294967295, %eax               # imm = 0xFFFFFFFF
	retq
                                        # -- End function
	.def	_ZNSt3__19use_facetB8ne190104INS_5ctypeIcEEEERKT_RKNS_6localeE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__19use_facetB8ne190104INS_5ctypeIcEEEERKT_RKNS_6localeE,"xr",discard,_ZNSt3__19use_facetB8ne190104INS_5ctypeIcEEEERKT_RKNS_6localeE
	.globl	_ZNSt3__19use_facetB8ne190104INS_5ctypeIcEEEERKT_RKNS_6localeE # -- Begin function _ZNSt3__19use_facetB8ne190104INS_5ctypeIcEEEERKT_RKNS_6localeE
	.p2align	4, 0x90
_ZNSt3__19use_facetB8ne190104INS_5ctypeIcEEEERKT_RKNS_6localeE: # @_ZNSt3__19use_facetB8ne190104INS_5ctypeIcEEEERKT_RKNS_6localeE
.seh_proc _ZNSt3__19use_facetB8ne190104INS_5ctypeIcEEEERKT_RKNS_6localeE
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	movq	.refptr._ZNSt3__15ctypeIcE2idE(%rip), %rdx
	callq	_ZNKSt3__16locale9use_facetERNS0_2idE
	nop
	addq	$40, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__15ctypeIcE5widenB8ne190104Ec;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__15ctypeIcE5widenB8ne190104Ec,"xr",discard,_ZNKSt3__15ctypeIcE5widenB8ne190104Ec
	.globl	_ZNKSt3__15ctypeIcE5widenB8ne190104Ec # -- Begin function _ZNKSt3__15ctypeIcE5widenB8ne190104Ec
	.p2align	4, 0x90
_ZNKSt3__15ctypeIcE5widenB8ne190104Ec:  # @_ZNKSt3__15ctypeIcE5widenB8ne190104Ec
.seh_proc _ZNKSt3__15ctypeIcE5widenB8ne190104Ec
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movb	%dl, 47(%rsp)
	movq	48(%rsp), %rcx
	movb	47(%rsp), %dl
	movq	(%rcx), %rax
	callq	*56(%rax)
	nop
	addq	$56, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__18ios_base8setstateB8ne190104Ej;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__18ios_base8setstateB8ne190104Ej,"xr",discard,_ZNSt3__18ios_base8setstateB8ne190104Ej
	.globl	_ZNSt3__18ios_base8setstateB8ne190104Ej # -- Begin function _ZNSt3__18ios_base8setstateB8ne190104Ej
	.p2align	4, 0x90
_ZNSt3__18ios_base8setstateB8ne190104Ej: # @_ZNSt3__18ios_base8setstateB8ne190104Ej
.seh_proc _ZNSt3__18ios_base8setstateB8ne190104Ej
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movl	%edx, 44(%rsp)
	movq	48(%rsp), %rcx
	movl	32(%rcx), %edx
	orl	44(%rsp), %edx
	callq	_ZNSt3__18ios_base5clearEj
	nop
	addq	$56, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7pubsyncB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7pubsyncB8ne190104Ev,"xr",discard,_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7pubsyncB8ne190104Ev
	.globl	_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7pubsyncB8ne190104Ev # -- Begin function _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7pubsyncB8ne190104Ev
	.p2align	4, 0x90
_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7pubsyncB8ne190104Ev: # @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7pubsyncB8ne190104Ev
.seh_proc _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7pubsyncB8ne190104Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	movq	(%rcx), %rax
	callq	*48(%rax)
	nop
	addq	$40, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__make_iterB8ne190104EPS6_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__make_iterB8ne190104EPS6_,"xr",discard,_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__make_iterB8ne190104EPS6_
	.globl	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__make_iterB8ne190104EPS6_ # -- Begin function _ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__make_iterB8ne190104EPS6_
	.p2align	4, 0x90
_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__make_iterB8ne190104EPS6_: # @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__make_iterB8ne190104EPS6_
.seh_proc _ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__make_iterB8ne190104EPS6_
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 40(%rsp)
	movq	%rdx, 32(%rsp)
	movq	32(%rsp), %rdx
	leaq	48(%rsp), %rcx
	callq	_ZNSt3__111__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B8ne190104ES7_
	movq	48(%rsp), %rax
	addq	$56, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__111__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B8ne190104ES7_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__111__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B8ne190104ES7_,"xr",discard,_ZNSt3__111__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B8ne190104ES7_
	.globl	_ZNSt3__111__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B8ne190104ES7_ # -- Begin function _ZNSt3__111__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B8ne190104ES7_
	.p2align	4, 0x90
_ZNSt3__111__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B8ne190104ES7_: # @_ZNSt3__111__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B8ne190104ES7_
.seh_proc _ZNSt3__111__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B8ne190104ES7_
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	8(%rsp), %rax
	movq	(%rsp), %rcx
	movq	%rcx, (%rax)
	addq	$16, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne190104Ev,"xr",discard,_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne190104Ev
	.globl	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne190104Ev # -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne190104Ev
	.p2align	4, 0x90
_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne190104Ev: # @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne190104Ev
.seh_proc _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne190104Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne190104Ev
	movq	%rax, %rcx
	callq	_ZNSt3__112__to_addressB8ne190104IKcEEPT_S3_
	nop
	addq	$40, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB8ne190104Ev,"xr",discard,_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB8ne190104Ev
	.globl	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB8ne190104Ev # -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB8ne190104Ev
	.p2align	4, 0x90
_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB8ne190104Ev: # @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB8ne190104Ev
.seh_proc _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB8ne190104Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne190104Ev
	testb	$1, %al
	jne	.LBB157_1
	jmp	.LBB157_2
.LBB157_1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB8ne190104Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB157_3
.LBB157_2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB8ne190104Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
.LBB157_3:
	movq	32(%rsp), %rax                  # 8-byte Reload
	addq	$56, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112__to_addressB8ne190104IKcEEPT_S3_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__to_addressB8ne190104IKcEEPT_S3_,"xr",discard,_ZNSt3__112__to_addressB8ne190104IKcEEPT_S3_
	.globl	_ZNSt3__112__to_addressB8ne190104IKcEEPT_S3_ # -- Begin function _ZNSt3__112__to_addressB8ne190104IKcEEPT_S3_
	.p2align	4, 0x90
_ZNSt3__112__to_addressB8ne190104IKcEEPT_S3_: # @_ZNSt3__112__to_addressB8ne190104IKcEEPT_S3_
.seh_proc _ZNSt3__112__to_addressB8ne190104IKcEEPT_S3_
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	popq	%rcx
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne190104Ev,"xr",discard,_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne190104Ev
	.globl	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne190104Ev # -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne190104Ev
	.p2align	4, 0x90
_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne190104Ev: # @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne190104Ev
.seh_proc _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne190104Ev
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne190104Ev
	testb	$1, %al
	jne	.LBB159_1
	jmp	.LBB159_2
.LBB159_1:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne190104Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB159_3
.LBB159_2:
	movq	40(%rsp), %rcx                  # 8-byte Reload
	callq	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne190104Ev
	movq	%rax, 32(%rsp)                  # 8-byte Spill
.LBB159_3:
	movq	32(%rsp), %rax                  # 8-byte Reload
	addq	$56, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne190104Ev,"xr",discard,_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne190104Ev
	.globl	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne190104Ev # -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne190104Ev
	.p2align	4, 0x90
_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne190104Ev: # @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne190104Ev
.seh_proc _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne190104Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne190104Ev
	movq	16(%rax), %rax
	addq	$40, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne190104Ev,"xr",discard,_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne190104Ev
	.globl	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne190104Ev # -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne190104Ev
	.p2align	4, 0x90
_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne190104Ev: # @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne190104Ev
.seh_proc _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne190104Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne190104Ev
	movq	%rax, %rcx
	addq	$1, %rcx
	callq	_ZNSt3__114pointer_traitsIPKcE10pointer_toB8ne190104ERS1_
	nop
	addq	$40, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114pointer_traitsIPKcE10pointer_toB8ne190104ERS1_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114pointer_traitsIPKcE10pointer_toB8ne190104ERS1_,"xr",discard,_ZNSt3__114pointer_traitsIPKcE10pointer_toB8ne190104ERS1_
	.globl	_ZNSt3__114pointer_traitsIPKcE10pointer_toB8ne190104ERS1_ # -- Begin function _ZNSt3__114pointer_traitsIPKcE10pointer_toB8ne190104ERS1_
	.p2align	4, 0x90
_ZNSt3__114pointer_traitsIPKcE10pointer_toB8ne190104ERS1_: # @_ZNSt3__114pointer_traitsIPKcE10pointer_toB8ne190104ERS1_
.seh_proc _ZNSt3__114pointer_traitsIPKcE10pointer_toB8ne190104ERS1_
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	popq	%rcx
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB8ne190104Ev,"xr",discard,_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB8ne190104Ev
	.globl	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB8ne190104Ev # -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB8ne190104Ev
	.p2align	4, 0x90
_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB8ne190104Ev: # @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB8ne190104Ev
.seh_proc _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB8ne190104Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne190104Ev
	movq	8(%rax), %rax
	addq	$40, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB8ne190104Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB8ne190104Ev,"xr",discard,_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB8ne190104Ev
	.globl	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB8ne190104Ev # -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB8ne190104Ev
	.p2align	4, 0x90
_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB8ne190104Ev: # @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB8ne190104Ev
.seh_proc _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB8ne190104Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rcx
	callq	_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne190104Ev
	movb	(%rax), %al
	shrb	%al
	movzbl	%al, %eax
                                        # kill: def $rax killed $eax
	addq	$40, %rsp
	retq
	.seh_endproc
                                        # -- End function
	.section	.rdata,"dr"
.L.str:                                 # @.str
	.asciz	"Hello"

.L.str.1:                               # @.str.1
	.asciz	"C++"

.L.str.2:                               # @.str.2
	.asciz	"World"

.L.str.3:                               # @.str.3
	.asciz	"from"

.L.str.4:                               # @.str.4
	.asciz	"VS Code"

.L.str.5:                               # @.str.5
	.asciz	"and the C++ extension!"

.L.str.6:                               # @.str.6
	.asciz	"Starting main"

.L.str.7:                               # @.str.7
	.asciz	" "

.L.str.8:                               # @.str.8
	.asciz	"\nHello, World!!!\n"

.L.str.9:                               # @.str.9
	.asciz	"Ending main"

.L.str.10:                              # @.str.10
	.asciz	"vector"

	.section	.rdata$_ZTSSt12length_error,"dr",discard,_ZTSSt12length_error
	.globl	_ZTSSt12length_error            # @_ZTSSt12length_error
_ZTSSt12length_error:
	.asciz	"St12length_error"

	.section	.rdata$_ZTSSt11logic_error,"dr",discard,_ZTSSt11logic_error
	.globl	_ZTSSt11logic_error             # @_ZTSSt11logic_error
_ZTSSt11logic_error:
	.asciz	"St11logic_error"

	.section	.rdata$_ZTSSt9exception,"dr",discard,_ZTSSt9exception
	.globl	_ZTSSt9exception                # @_ZTSSt9exception
_ZTSSt9exception:
	.asciz	"St9exception"

	.section	.rdata$_ZTISt9exception,"dr",discard,_ZTISt9exception
	.globl	_ZTISt9exception                # @_ZTISt9exception
	.p2align	3, 0x0
_ZTISt9exception:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSSt9exception

	.section	.rdata$_ZTISt11logic_error,"dr",discard,_ZTISt11logic_error
	.globl	_ZTISt11logic_error             # @_ZTISt11logic_error
	.p2align	3, 0x0
_ZTISt11logic_error:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt11logic_error
	.quad	_ZTISt9exception

	.section	.rdata$_ZTISt12length_error,"dr",discard,_ZTISt12length_error
	.globl	_ZTISt12length_error            # @_ZTISt12length_error
	.p2align	3, 0x0
_ZTISt12length_error:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt12length_error
	.quad	_ZTISt11logic_error

	.section	.rdata$_ZTSSt20bad_array_new_length,"dr",discard,_ZTSSt20bad_array_new_length
	.globl	_ZTSSt20bad_array_new_length    # @_ZTSSt20bad_array_new_length
_ZTSSt20bad_array_new_length:
	.asciz	"St20bad_array_new_length"

	.section	.rdata$_ZTSSt9bad_alloc,"dr",discard,_ZTSSt9bad_alloc
	.globl	_ZTSSt9bad_alloc                # @_ZTSSt9bad_alloc
_ZTSSt9bad_alloc:
	.asciz	"St9bad_alloc"

	.section	.rdata$_ZTISt9bad_alloc,"dr",discard,_ZTISt9bad_alloc
	.globl	_ZTISt9bad_alloc                # @_ZTISt9bad_alloc
	.p2align	3, 0x0
_ZTISt9bad_alloc:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt9bad_alloc
	.quad	_ZTISt9exception

	.section	.rdata$_ZTISt20bad_array_new_length,"dr",discard,_ZTISt20bad_array_new_length
	.globl	_ZTISt20bad_array_new_length    # @_ZTISt20bad_array_new_length
	.p2align	3, 0x0
_ZTISt20bad_array_new_length:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt20bad_array_new_length
	.quad	_ZTISt9bad_alloc

	.section	.drectve,"yni"
	.ascii	" -exclude-symbols:__clang_call_terminate"
	.section	.rdata$.refptr._ZNSt3__14coutE,"dr",discard,.refptr._ZNSt3__14coutE
	.p2align	3, 0x0
	.globl	.refptr._ZNSt3__14coutE
.refptr._ZNSt3__14coutE:
	.quad	_ZNSt3__14coutE
	.section	.rdata$.refptr._ZNSt3__15ctypeIcE2idE,"dr",discard,.refptr._ZNSt3__15ctypeIcE2idE
	.p2align	3, 0x0
	.globl	.refptr._ZNSt3__15ctypeIcE2idE
.refptr._ZNSt3__15ctypeIcE2idE:
	.quad	_ZNSt3__15ctypeIcE2idE
	.section	.rdata$.refptr._ZTVSt12length_error,"dr",discard,.refptr._ZTVSt12length_error
	.p2align	3, 0x0
	.globl	.refptr._ZTVSt12length_error
.refptr._ZTVSt12length_error:
	.quad	_ZTVSt12length_error
	.addrsig
	.addrsig_sym __gxx_personality_seh0
	.addrsig_sym _ZNSt3__1lsB8ne190104INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.addrsig_sym _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne190104EPFRS3_S4_E
	.addrsig_sym _ZNSt3__14endlB8ne190104IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.addrsig_sym _ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5beginB8ne190104Ev
	.addrsig_sym _ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE3endB8ne190104Ev
	.addrsig_sym _ZNSt3__1neB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEbRKNS_11__wrap_iterIT_EESC_
	.addrsig_sym _ZNKSt3__111__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEdeB8ne190104Ev
	.addrsig_sym _ZNSt3__1lsB8ne190104IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	.addrsig_sym _ZNSt3__111__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEppB8ne190104Ev
	.addrsig_sym _ZNSt3__1eqB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEbRKNS_11__wrap_iterIT_EESC_
	.addrsig_sym _ZNKSt3__111__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE4baseB8ne190104Ev
	.addrsig_sym _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcy
	.addrsig_sym _ZNSt3__111char_traitsIcE6lengthB8ne190104EPKc
	.addrsig_sym _ZNSt3__118__constexpr_strlenB8ne190104IcEEyPKT_
	.addrsig_sym strlen
	.addrsig_sym _ZNSt3__122__make_exception_guardB8ne190104INS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESC_
	.addrsig_sym _ZNKSt16initializer_listINSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE4sizeB8ne190104Ev
	.addrsig_sym _ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__vallocateB8ne190104Ey
	.addrsig_sym _ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__construct_at_endIPKS6_SB_EEvT_T0_y
	.addrsig_sym _ZNKSt16initializer_listINSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE5beginB8ne190104Ev
	.addrsig_sym _ZNKSt16initializer_listINSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE3endB8ne190104Ev
	.addrsig_sym _ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEE10__completeB8ne190104Ev
	.addrsig_sym _ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8max_sizeEv
	.addrsig_sym _ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE20__throw_length_errorB8ne190104Ev
	.addrsig_sym _ZNSt3__119__allocate_at_leastB8ne190104INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSA_y
	.addrsig_sym _ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__allocB8ne190104Ev
	.addrsig_sym _ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE9__end_capB8ne190104Ev
	.addrsig_sym _ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE14__annotate_newB8ne190104Ey
	.addrsig_sym _ZNSt3__13minB8ne190104IyEERKT_S3_S3_
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE8max_sizeB8ne190104IS7_TnNS_9enable_ifIXsr14__has_max_sizeIKT_EE5valueEiE4typeELi0EEEyRKS7_
	.addrsig_sym _ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__allocB8ne190104Ev
	.addrsig_sym _ZNSt3__114numeric_limitsIxE3maxB8ne190104Ev
	.addrsig_sym __clang_call_terminate
	.addrsig_sym __cxa_begin_catch
	.addrsig_sym _ZSt9terminatev
	.addrsig_sym _ZNSt3__13minB8ne190104IyNS_6__lessIvvEEEERKT_S5_S5_T0_
	.addrsig_sym _ZNKSt3__16__lessIvvEclB8ne190104IyyEEbRKT_RKT0_
	.addrsig_sym _ZNKSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE8max_sizeB8ne190104Ev
	.addrsig_sym _ZNKSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE6secondB8ne190104Ev
	.addrsig_sym _ZNKSt3__122__compressed_pair_elemINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEELi1ELb1EE5__getB8ne190104Ev
	.addrsig_sym _ZNSt3__123__libcpp_numeric_limitsIxLb1EE3maxB8ne190104Ev
	.addrsig_sym _ZNSt3__120__throw_length_errorB8ne190104EPKc
	.addrsig_sym __cxa_allocate_exception
	.addrsig_sym __cxa_free_exception
	.addrsig_sym __cxa_throw
	.addrsig_sym _ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE8allocateB8ne190104Ey
	.addrsig_sym _ZSt28__throw_bad_array_new_lengthB8ne190104v
	.addrsig_sym _ZNSt3__117__libcpp_allocateB8ne190104Eyy
	.addrsig_sym _ZNSt3__124__is_overaligned_for_newB8ne190104Ey
	.addrsig_sym _ZNSt3__121__libcpp_operator_newB8ne190104IJySt11align_val_tEEEPvDpT_
	.addrsig_sym _ZNSt3__121__libcpp_operator_newB8ne190104IJyEEEPvDpT_
	.addrsig_sym _ZnwySt11align_val_t
	.addrsig_sym _Znwy
	.addrsig_sym _ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE6secondB8ne190104Ev
	.addrsig_sym _ZNSt3__122__compressed_pair_elemINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEELi1ELb1EE5__getB8ne190104Ev
	.addrsig_sym _ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5firstB8ne190104Ev
	.addrsig_sym _ZNSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getB8ne190104Ev
	.addrsig_sym _ZNSt3__130__uninitialized_allocator_copyB8ne190104INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPKS6_S9_PS6_EET2_RT_T0_T1_SB_
	.addrsig_sym _ZNSt3__114__unwrap_rangeB8ne190104IPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EENS_4pairIT0_SA_EET_SC_
	.addrsig_sym _ZNSt3__135__uninitialized_allocator_copy_implB8ne190104INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPKS6_S9_PS6_EET2_RT_T0_T1_SB_
	.addrsig_sym _ZNSt3__113__unwrap_iterB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_18__unwrap_iter_implIS7_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISB_EEEESB_
	.addrsig_sym _ZNSt3__113__rewrap_iterB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_NS_18__unwrap_iter_implIS7_Lb1EEEEET_SA_T0_
	.addrsig_sym _ZNSt3__19make_pairB8ne190104IPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENSA_IT0_E4typeEEEOSB_OSE_
	.addrsig_sym _ZNSt3__113__unwrap_iterB8ne190104IPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_18__unwrap_iter_implIS8_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalISC_EEEESC_
	.addrsig_sym _ZNSt3__118__unwrap_iter_implIPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb1EE8__unwrapB8ne190104ES8_
	.addrsig_sym _ZNSt3__112__to_addressB8ne190104IKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEPT_S9_
	.addrsig_sym _ZNSt3__122__make_exception_guardB8ne190104INS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEEENS_28__exception_guard_exceptionsIT_EESC_
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9constructB8ne190104IS6_JRKS6_ETnNS_9enable_ifIXsr15__has_constructIS7_PT_DpT0_EE5valueEiE4typeELi0EEEvRS7_SE_DpOSF_
	.addrsig_sym _ZNSt3__112__to_addressB8ne190104INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEPT_S8_
	.addrsig_sym _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEE10__completeB8ne190104Ev
	.addrsig_sym _ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE9constructB8ne190104IS5_JRKS5_EEEvPT_DpOT0_
	.addrsig_sym _ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPS6_EclB8ne190104Ev
	.addrsig_sym _ZNSt3__119__allocator_destroyB8ne190104INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16reverse_iteratorIPS6_EESA_EEvRT_T0_T1_
	.addrsig_sym _ZNSt3__1neB8ne190104IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEbRKNS_16reverse_iteratorIT_EERKNS8_IT0_EE
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne190104IS6_TnNS_9enable_ifIXsr13__has_destroyIS7_PT_EE5valueEiE4typeELi0EEEvRS7_SC_
	.addrsig_sym _ZNSt3__112__to_addressB8ne190104INS_16reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEETnNS_9enable_ifIXsr4_AndINS_8is_classIT_EENS_15_IsFancyPointerISC_EEEE5valueEiE4typeELi0EEEu7__decayIDTclsr19__to_address_helperISC_EE6__callclsr3stdE7declvalIRKSC_EEEEESJ_
	.addrsig_sym _ZNSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEppB8ne190104Ev
	.addrsig_sym _ZNKSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE4baseB8ne190104Ev
	.addrsig_sym _ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE7destroyB8ne190104EPS5_
	.addrsig_sym _ZNSt3__119__to_address_helperINS_16reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvE6__callB8ne190104ERKS9_
	.addrsig_sym _ZNKSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEptB8ne190104Ev
	.addrsig_sym _ZNKSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEdeB8ne190104Ev
	.addrsig_sym _ZNSt3__118__unwrap_iter_implIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb1EE8__unwrapB8ne190104ES7_
	.addrsig_sym _ZNSt3__118__unwrap_iter_implIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb1EE8__rewrapB8ne190104ES7_S7_
	.addrsig_sym _ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__destroy_vectorclB8ne190104Ev
	.addrsig_sym _ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne190104Ev
	.addrsig_sym _ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE17__annotate_deleteB8ne190104Ev
	.addrsig_sym _ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE10deallocateB8ne190104ERS7_PS6_y
	.addrsig_sym _ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8capacityB8ne190104Ev
	.addrsig_sym _ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE22__base_destruct_at_endB8ne190104EPS6_
	.addrsig_sym _ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE10deallocateB8ne190104EPS5_y
	.addrsig_sym _ZNSt3__119__libcpp_deallocateB8ne190104EPvyy
	.addrsig_sym _ZNSt3__127__do_deallocate_handle_sizeB8ne190104IJSt11align_val_tEEEvPvyDpT_
	.addrsig_sym _ZNSt3__127__do_deallocate_handle_sizeB8ne190104IJEEEvPvyDpT_
	.addrsig_sym _ZNSt3__124__libcpp_operator_deleteB8ne190104IJPvSt11align_val_tEEEvDpT_
	.addrsig_sym _ZdlPvSt11align_val_t
	.addrsig_sym _ZNSt3__124__libcpp_operator_deleteB8ne190104IJPvEEEvDpT_
	.addrsig_sym _ZdlPv
	.addrsig_sym _ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE9__end_capB8ne190104Ev
	.addrsig_sym _ZNKSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5firstB8ne190104Ev
	.addrsig_sym _ZNKSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getB8ne190104Ev
	.addrsig_sym _ZNSt3__124__put_character_sequenceB8ne190104IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y
	.addrsig_sym _ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne190104Ev
	.addrsig_sym _ZNSt3__116__pad_and_outputB8ne190104IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.addrsig_sym _ZNKSt3__18ios_base5flagsB8ne190104Ev
	.addrsig_sym _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne190104Ev
	.addrsig_sym _ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne190104Ev
	.addrsig_sym _ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne190104Ej
	.addrsig_sym _ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
	.addrsig_sym __cxa_end_catch
	.addrsig_sym _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4goodB8ne190104Ev
	.addrsig_sym _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE3tieB8ne190104Ev
	.addrsig_sym _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	.addrsig_sym _ZNKSt3__18ios_base4goodB8ne190104Ev
	.addrsig_sym _ZNKSt3__18ios_base5widthB8ne190104Ev
	.addrsig_sym _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne190104EPKcx
	.addrsig_sym _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne190104Ev
	.addrsig_sym _ZNSt3__18ios_base5widthB8ne190104Ex
	.addrsig_sym _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEyc
	.addrsig_sym _ZNSt3__112__to_addressB8ne190104IcEEPT_S2_
	.addrsig_sym _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne190104Ev
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne190104Ev
	.addrsig_sym _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne190104Ev
	.addrsig_sym _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne190104Ev
	.addrsig_sym _ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne190104Ev
	.addrsig_sym _ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne190104Ev
	.addrsig_sym _ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne190104Ev
	.addrsig_sym _ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne190104Ev
	.addrsig_sym _ZNSt3__114pointer_traitsIPcE10pointer_toB8ne190104ERc
	.addrsig_sym _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne190104Ev
	.addrsig_sym _ZNKSt3__18ios_base5rdbufB8ne190104Ev
	.addrsig_sym _ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB8ne190104Ev
	.addrsig_sym _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne190104Ec
	.addrsig_sym _ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB8ne190104Ei
	.addrsig_sym _ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB8ne190104Ev
	.addrsig_sym _ZNSt3__111char_traitsIcE3eofB8ne190104Ev
	.addrsig_sym _ZNSt3__19use_facetB8ne190104INS_5ctypeIcEEEERKT_RKNS_6localeE
	.addrsig_sym _ZNKSt3__18ios_base6getlocEv
	.addrsig_sym _ZNKSt3__15ctypeIcE5widenB8ne190104Ec
	.addrsig_sym _ZNKSt3__16locale9use_facetERNS0_2idE
	.addrsig_sym _ZNSt3__18ios_base8setstateB8ne190104Ej
	.addrsig_sym _ZNSt3__18ios_base5clearEj
	.addrsig_sym _ZSt18uncaught_exceptionv
	.addrsig_sym _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7pubsyncB8ne190104Ev
	.addrsig_sym _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	.addrsig_sym _ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__make_iterB8ne190104EPS6_
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne190104Ev
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB8ne190104Ev
	.addrsig_sym _ZNSt3__112__to_addressB8ne190104IKcEEPT_S3_
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne190104Ev
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne190104Ev
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne190104Ev
	.addrsig_sym _ZNSt3__114pointer_traitsIPKcE10pointer_toB8ne190104ERS1_
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB8ne190104Ev
	.addrsig_sym _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB8ne190104Ev
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZNSt3__14coutE
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTSSt12length_error
	.addrsig_sym _ZTSSt11logic_error
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTSSt9exception
	.addrsig_sym _ZTISt9exception
	.addrsig_sym _ZTISt11logic_error
	.addrsig_sym _ZTISt12length_error
	.addrsig_sym _ZTSSt20bad_array_new_length
	.addrsig_sym _ZTSSt9bad_alloc
	.addrsig_sym _ZTISt9bad_alloc
	.addrsig_sym _ZTISt20bad_array_new_length
	.addrsig_sym _ZNSt3__15ctypeIcE2idE
