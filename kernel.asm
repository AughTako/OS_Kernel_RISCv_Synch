
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	31013103          	ld	sp,784(sp) # 80007310 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	270030ef          	jal	ra,8000328c <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv16interruptRoutineEv>:

.align 4
.global _ZN5Riscv16interruptRoutineEv
.type _ZN5Riscv16interruptRoutineEv, @function
_ZN5Riscv16interruptRoutineEv:
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
        sd x\index, \index * 8(sp)
    .endr
    80001004:	00113423          	sd	ra,8(sp)
    80001008:	00213823          	sd	sp,16(sp)
    8000100c:	00313c23          	sd	gp,24(sp)
    80001010:	02413023          	sd	tp,32(sp)
    80001014:	02513423          	sd	t0,40(sp)
    80001018:	02613823          	sd	t1,48(sp)
    8000101c:	02713c23          	sd	t2,56(sp)
    80001020:	04813023          	sd	s0,64(sp)
    80001024:	04913423          	sd	s1,72(sp)
    80001028:	04a13823          	sd	a0,80(sp)
    8000102c:	04b13c23          	sd	a1,88(sp)
    80001030:	06c13023          	sd	a2,96(sp)
    80001034:	06d13423          	sd	a3,104(sp)
    80001038:	06e13823          	sd	a4,112(sp)
    8000103c:	06f13c23          	sd	a5,120(sp)
    80001040:	09013023          	sd	a6,128(sp)
    80001044:	09113423          	sd	a7,136(sp)
    80001048:	09213823          	sd	s2,144(sp)
    8000104c:	09313c23          	sd	s3,152(sp)
    80001050:	0b413023          	sd	s4,160(sp)
    80001054:	0b513423          	sd	s5,168(sp)
    80001058:	0b613823          	sd	s6,176(sp)
    8000105c:	0b713c23          	sd	s7,184(sp)
    80001060:	0d813023          	sd	s8,192(sp)
    80001064:	0d913423          	sd	s9,200(sp)
    80001068:	0da13823          	sd	s10,208(sp)
    8000106c:	0db13c23          	sd	s11,216(sp)
    80001070:	0fc13023          	sd	t3,224(sp)
    80001074:	0fd13423          	sd	t4,232(sp)
    80001078:	0fe13823          	sd	t5,240(sp)
    8000107c:	0ff13c23          	sd	t6,248(sp)

    sd sp, (backupSP), t0
    80001080:	00006297          	auipc	t0,0x6
    80001084:	3222b023          	sd	sp,800(t0) # 800073a0 <backupSP>
    call _ZN5Riscv16interruptHandlerEv
    80001088:	19d010ef          	jal	ra,80002a24 <_ZN5Riscv16interruptHandlerEv>

    .irp index,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
        ld x\index, \index * 8(sp)
    .endr
    8000108c:	00813083          	ld	ra,8(sp)
    80001090:	01013103          	ld	sp,16(sp)
    80001094:	01813183          	ld	gp,24(sp)
    80001098:	02013203          	ld	tp,32(sp)
    8000109c:	02813283          	ld	t0,40(sp)
    800010a0:	03013303          	ld	t1,48(sp)
    800010a4:	03813383          	ld	t2,56(sp)
    800010a8:	04013403          	ld	s0,64(sp)
    800010ac:	04813483          	ld	s1,72(sp)
    800010b0:	05013503          	ld	a0,80(sp)
    800010b4:	05813583          	ld	a1,88(sp)
    800010b8:	06013603          	ld	a2,96(sp)
    800010bc:	06813683          	ld	a3,104(sp)
    800010c0:	07013703          	ld	a4,112(sp)
    800010c4:	07813783          	ld	a5,120(sp)
    800010c8:	08013803          	ld	a6,128(sp)
    800010cc:	08813883          	ld	a7,136(sp)
    800010d0:	09013903          	ld	s2,144(sp)
    800010d4:	09813983          	ld	s3,152(sp)
    800010d8:	0a013a03          	ld	s4,160(sp)
    800010dc:	0a813a83          	ld	s5,168(sp)
    800010e0:	0b013b03          	ld	s6,176(sp)
    800010e4:	0b813b83          	ld	s7,184(sp)
    800010e8:	0c013c03          	ld	s8,192(sp)
    800010ec:	0c813c83          	ld	s9,200(sp)
    800010f0:	0d013d03          	ld	s10,208(sp)
    800010f4:	0d813d83          	ld	s11,216(sp)
    800010f8:	0e013e03          	ld	t3,224(sp)
    800010fc:	0e813e83          	ld	t4,232(sp)
    80001100:	0f013f03          	ld	t5,240(sp)
    80001104:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001108:	10010113          	addi	sp,sp,256
    8000110c:	10200073          	sret

0000000080001110 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001110:	f0010113          	addi	sp,sp,-256
    // https://sourceware.org/binutils/docs/as/Irp.html
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001114:	00313c23          	sd	gp,24(sp)
    80001118:	02413023          	sd	tp,32(sp)
    8000111c:	02513423          	sd	t0,40(sp)
    80001120:	02613823          	sd	t1,48(sp)
    80001124:	02713c23          	sd	t2,56(sp)
    80001128:	04813023          	sd	s0,64(sp)
    8000112c:	04913423          	sd	s1,72(sp)
    80001130:	04a13823          	sd	a0,80(sp)
    80001134:	04b13c23          	sd	a1,88(sp)
    80001138:	06c13023          	sd	a2,96(sp)
    8000113c:	06d13423          	sd	a3,104(sp)
    80001140:	06e13823          	sd	a4,112(sp)
    80001144:	06f13c23          	sd	a5,120(sp)
    80001148:	09013023          	sd	a6,128(sp)
    8000114c:	09113423          	sd	a7,136(sp)
    80001150:	09213823          	sd	s2,144(sp)
    80001154:	09313c23          	sd	s3,152(sp)
    80001158:	0b413023          	sd	s4,160(sp)
    8000115c:	0b513423          	sd	s5,168(sp)
    80001160:	0b613823          	sd	s6,176(sp)
    80001164:	0b713c23          	sd	s7,184(sp)
    80001168:	0d813023          	sd	s8,192(sp)
    8000116c:	0d913423          	sd	s9,200(sp)
    80001170:	0da13823          	sd	s10,208(sp)
    80001174:	0db13c23          	sd	s11,216(sp)
    80001178:	0fc13023          	sd	t3,224(sp)
    8000117c:	0fd13423          	sd	t4,232(sp)
    80001180:	0fe13823          	sd	t5,240(sp)
    80001184:	0ff13c23          	sd	t6,248(sp)
    ret
    80001188:	00008067          	ret

000000008000118c <_ZN5Riscv12popRegistersEv>:
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    // https://sourceware.org/binutils/docs/as/Irp.html
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000118c:	01813183          	ld	gp,24(sp)
    80001190:	02013203          	ld	tp,32(sp)
    80001194:	02813283          	ld	t0,40(sp)
    80001198:	03013303          	ld	t1,48(sp)
    8000119c:	03813383          	ld	t2,56(sp)
    800011a0:	04013403          	ld	s0,64(sp)
    800011a4:	04813483          	ld	s1,72(sp)
    800011a8:	05013503          	ld	a0,80(sp)
    800011ac:	05813583          	ld	a1,88(sp)
    800011b0:	06013603          	ld	a2,96(sp)
    800011b4:	06813683          	ld	a3,104(sp)
    800011b8:	07013703          	ld	a4,112(sp)
    800011bc:	07813783          	ld	a5,120(sp)
    800011c0:	08013803          	ld	a6,128(sp)
    800011c4:	08813883          	ld	a7,136(sp)
    800011c8:	09013903          	ld	s2,144(sp)
    800011cc:	09813983          	ld	s3,152(sp)
    800011d0:	0a013a03          	ld	s4,160(sp)
    800011d4:	0a813a83          	ld	s5,168(sp)
    800011d8:	0b013b03          	ld	s6,176(sp)
    800011dc:	0b813b83          	ld	s7,184(sp)
    800011e0:	0c013c03          	ld	s8,192(sp)
    800011e4:	0c813c83          	ld	s9,200(sp)
    800011e8:	0d013d03          	ld	s10,208(sp)
    800011ec:	0d813d83          	ld	s11,216(sp)
    800011f0:	0e013e03          	ld	t3,224(sp)
    800011f4:	0e813e83          	ld	t4,232(sp)
    800011f8:	0f013f03          	ld	t5,240(sp)
    800011fc:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001200:	10010113          	addi	sp,sp,256
    ret
    80001204:	00008067          	ret

0000000080001208 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001208:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    8000120c:	00b29a63          	bne	t0,a1,80001220 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001210:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001214:	fe029ae3          	bnez	t0,80001208 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001218:	00000513          	li	a0,0
    jr ra                  # Return.
    8000121c:	00008067          	ret

0000000080001220 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001220:	00100513          	li	a0,1
    80001224:	00008067          	ret

0000000080001228 <_ZN3CCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3CCB13contextSwitchEPNS_7ContextES1_
.type _ZN3CCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3CCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    80001228:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    8000122c:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001230:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    80001234:	0085b103          	ld	sp,8(a1)

    80001238:	00008067          	ret

000000008000123c <_Z9mem_allocm>:
/* =========================================================================================================
 * This file contains the system calls to the riscv.cpp file that handles the codes of the specific C calls.
 * =========================================================================================================
 * */

void* mem_alloc(size_t size){
    8000123c:	ff010113          	addi	sp,sp,-16
    80001240:	00813423          	sd	s0,8(sp)
    80001244:	01010413          	addi	s0,sp,16
    if(size <= 0) return nullptr;
    80001248:	02050c63          	beqz	a0,80001280 <_Z9mem_allocm+0x44>
    uint64 numBlocks = (size + 24)/MEM_BLOCK_SIZE + ((size + 24) % MEM_BLOCK_SIZE ? 1 : 0);
    8000124c:	01850513          	addi	a0,a0,24
    80001250:	00655793          	srli	a5,a0,0x6
    80001254:	03f57513          	andi	a0,a0,63
    80001258:	00050463          	beqz	a0,80001260 <_Z9mem_allocm+0x24>
    8000125c:	00100513          	li	a0,1
    80001260:	00a78533          	add	a0,a5,a0
    void* address = nullptr;
    __asm__ volatile ("mv a1, %0" : : "r" (numBlocks));
    80001264:	00050593          	mv	a1,a0
    __asm__ volatile ("li a0, 1");
    80001268:	00100513          	li	a0,1
    __asm__ volatile ("ecall");
    8000126c:	00000073          	ecall
    __asm__ volatile ("mv %0, a0" : "=r" (address));
    80001270:	00050513          	mv	a0,a0
    return address;
}
    80001274:	00813403          	ld	s0,8(sp)
    80001278:	01010113          	addi	sp,sp,16
    8000127c:	00008067          	ret
    if(size <= 0) return nullptr;
    80001280:	00000513          	li	a0,0
    80001284:	ff1ff06f          	j	80001274 <_Z9mem_allocm+0x38>

0000000080001288 <_Z8mem_freePv>:

void mem_free(void* address){
    80001288:	ff010113          	addi	sp,sp,-16
    8000128c:	00813423          	sd	s0,8(sp)
    80001290:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (address));
    80001294:	00050593          	mv	a1,a0
    __asm__ volatile ("li a0, 0x02");
    80001298:	00200513          	li	a0,2
    __asm__ volatile ("ecall");
    8000129c:	00000073          	ecall
}
    800012a0:	00813403          	ld	s0,8(sp)
    800012a4:	01010113          	addi	sp,sp,16
    800012a8:	00008067          	ret

00000000800012ac <_Z13thread_createPP3CCBPFvPvES2_>:

int thread_create(thread_t* handle, void (*start_routine)(void*), void* args){
    800012ac:	ff010113          	addi	sp,sp,-16
    800012b0:	00813423          	sd	s0,8(sp)
    800012b4:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a3, %0" : : "r" (args));
    800012b8:	00060693          	mv	a3,a2
    __asm__ volatile("mv a2, %0" : : "r" (start_routine));
    800012bc:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    800012c0:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x11");
    800012c4:	01100513          	li	a0,17
    __asm__ volatile("ecall");
    800012c8:	00000073          	ecall
    return 0;
}
    800012cc:	00000513          	li	a0,0
    800012d0:	00813403          	ld	s0,8(sp)
    800012d4:	01010113          	addi	sp,sp,16
    800012d8:	00008067          	ret

00000000800012dc <_Z15thread_dispatchv>:

void thread_dispatch(){
    800012dc:	ff010113          	addi	sp,sp,-16
    800012e0:	00813423          	sd	s0,8(sp)
    800012e4:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    800012e8:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    800012ec:	00000073          	ecall
}
    800012f0:	00813403          	ld	s0,8(sp)
    800012f4:	01010113          	addi	sp,sp,16
    800012f8:	00008067          	ret

00000000800012fc <_Z11thread_exitv>:

int thread_exit(){
    800012fc:	ff010113          	addi	sp,sp,-16
    80001300:	00813423          	sd	s0,8(sp)
    80001304:	01010413          	addi	s0,sp,16
    __asm__ volatile ("li a0, 0x12");
    80001308:	01200513          	li	a0,18
    __asm__ volatile ("ecall");
    8000130c:	00000073          	ecall
    return 0;
}
    80001310:	00000513          	li	a0,0
    80001314:	00813403          	ld	s0,8(sp)
    80001318:	01010113          	addi	sp,sp,16
    8000131c:	00008067          	ret

0000000080001320 <_Z25thread_create_NOT_STARTEDPP3CCBPFvPvES2_>:

int thread_create_NOT_STARTED(thread_t* handle, void (*start_routine)(void*), void* args){
    80001320:	ff010113          	addi	sp,sp,-16
    80001324:	00813423          	sd	s0,8(sp)
    80001328:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a3, %0" : : "r" (args));
    8000132c:	00060693          	mv	a3,a2
    __asm__ volatile("mv a2, %0" : : "r" (start_routine));
    80001330:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    80001334:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x14");
    80001338:	01400513          	li	a0,20
    __asm__ volatile("ecall");
    8000133c:	00000073          	ecall
    return 0;
}
    80001340:	00000513          	li	a0,0
    80001344:	00813403          	ld	s0,8(sp)
    80001348:	01010113          	addi	sp,sp,16
    8000134c:	00008067          	ret

0000000080001350 <_Z8sem_openPP13Semaphore_sysj>:
int sem_open (sem_t* handle, unsigned init) {
    80001350:	ff010113          	addi	sp,sp,-16
    80001354:	00813423          	sd	s0,8(sp)
    80001358:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a2, %0" : : "r" (init));
    8000135c:	00058613          	mv	a2,a1
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    80001360:	00050593          	mv	a1,a0
    __asm__ volatile ("li a0, 0x21");
    80001364:	02100513          	li	a0,33
    __asm__ volatile ("ecall");
    80001368:	00000073          	ecall
    return 0;
}
    8000136c:	00000513          	li	a0,0
    80001370:	00813403          	ld	s0,8(sp)
    80001374:	01010113          	addi	sp,sp,16
    80001378:	00008067          	ret

000000008000137c <_Z9sem_closeP13Semaphore_sys>:

int sem_close (sem_t handle) {
    8000137c:	ff010113          	addi	sp,sp,-16
    80001380:	00813423          	sd	s0,8(sp)
    80001384:	01010413          	addi	s0,sp,16
    if (!handle) return -1;
    80001388:	02050063          	beqz	a0,800013a8 <_Z9sem_closeP13Semaphore_sys+0x2c>
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    8000138c:	00050593          	mv	a1,a0
    __asm__ volatile ("li a0, 0x22");
    80001390:	02200513          	li	a0,34
    __asm__ volatile ("ecall");
    80001394:	00000073          	ecall
    return 0;
    80001398:	00000513          	li	a0,0
}
    8000139c:	00813403          	ld	s0,8(sp)
    800013a0:	01010113          	addi	sp,sp,16
    800013a4:	00008067          	ret
    if (!handle) return -1;
    800013a8:	fff00513          	li	a0,-1
    800013ac:	ff1ff06f          	j	8000139c <_Z9sem_closeP13Semaphore_sys+0x20>

00000000800013b0 <_Z8sem_waitP13Semaphore_sys>:

int sem_wait (sem_t sem) {
    800013b0:	ff010113          	addi	sp,sp,-16
    800013b4:	00813423          	sd	s0,8(sp)
    800013b8:	01010413          	addi	s0,sp,16
    if (!sem) return -1;
    800013bc:	02050063          	beqz	a0,800013dc <_Z8sem_waitP13Semaphore_sys+0x2c>
    __asm__ volatile ("mv a1, %0" : : "r" (sem));
    800013c0:	00050593          	mv	a1,a0
    __asm__ volatile ("li a0, 0x23");
    800013c4:	02300513          	li	a0,35
    __asm__ volatile ("ecall");
    800013c8:	00000073          	ecall
    return 0;
    800013cc:	00000513          	li	a0,0
}
    800013d0:	00813403          	ld	s0,8(sp)
    800013d4:	01010113          	addi	sp,sp,16
    800013d8:	00008067          	ret
    if (!sem) return -1;
    800013dc:	fff00513          	li	a0,-1
    800013e0:	ff1ff06f          	j	800013d0 <_Z8sem_waitP13Semaphore_sys+0x20>

00000000800013e4 <_Z10sem_signalP13Semaphore_sys>:

int sem_signal (sem_t sem) {
    800013e4:	ff010113          	addi	sp,sp,-16
    800013e8:	00813423          	sd	s0,8(sp)
    800013ec:	01010413          	addi	s0,sp,16
    if (!sem) return -1;
    800013f0:	02050063          	beqz	a0,80001410 <_Z10sem_signalP13Semaphore_sys+0x2c>
    __asm__ volatile ("mv a1, %0" : : "r" (sem));
    800013f4:	00050593          	mv	a1,a0
    __asm__ volatile ("li a0, 0x24");
    800013f8:	02400513          	li	a0,36
    __asm__ volatile ("ecall");
    800013fc:	00000073          	ecall
    return 0;
    80001400:	00000513          	li	a0,0
}
    80001404:	00813403          	ld	s0,8(sp)
    80001408:	01010113          	addi	sp,sp,16
    8000140c:	00008067          	ret
    if (!sem) return -1;
    80001410:	fff00513          	li	a0,-1
    80001414:	ff1ff06f          	j	80001404 <_Z10sem_signalP13Semaphore_sys+0x20>

0000000080001418 <_Z4getcv>:

char getc() {
    80001418:	ff010113          	addi	sp,sp,-16
    8000141c:	00113423          	sd	ra,8(sp)
    80001420:	00813023          	sd	s0,0(sp)
    80001424:	01010413          	addi	s0,sp,16
    return __getc();
    80001428:	00004097          	auipc	ra,0x4
    8000142c:	f60080e7          	jalr	-160(ra) # 80005388 <__getc>
}
    80001430:	00813083          	ld	ra,8(sp)
    80001434:	00013403          	ld	s0,0(sp)
    80001438:	01010113          	addi	sp,sp,16
    8000143c:	00008067          	ret

0000000080001440 <_Z4putcc>:
void putc(char c) {
    80001440:	ff010113          	addi	sp,sp,-16
    80001444:	00113423          	sd	ra,8(sp)
    80001448:	00813023          	sd	s0,0(sp)
    8000144c:	01010413          	addi	s0,sp,16
    __putc(c);
    80001450:	00004097          	auipc	ra,0x4
    80001454:	efc080e7          	jalr	-260(ra) # 8000534c <__putc>
    80001458:	00813083          	ld	ra,8(sp)
    8000145c:	00013403          	ld	s0,0(sp)
    80001460:	01010113          	addi	sp,sp,16
    80001464:	00008067          	ret

0000000080001468 <_ZN13Semaphore_sys3getEv>:
//
// Created by os on 6/26/22.
//
#include "../h/Semaphore.hpp"

CCB *Semaphore_sys::get(){
    80001468:	fe010113          	addi	sp,sp,-32
    8000146c:	00113c23          	sd	ra,24(sp)
    80001470:	00813823          	sd	s0,16(sp)
    80001474:	00913423          	sd	s1,8(sp)
    80001478:	02010413          	addi	s0,sp,32
    8000147c:	00050793          	mv	a5,a0
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80001480:	00853503          	ld	a0,8(a0)
    80001484:	02050e63          	beqz	a0,800014c0 <_ZN13Semaphore_sys3getEv+0x58>

        Elem *elem = head;
        head = head->next;
    80001488:	00853703          	ld	a4,8(a0)
    8000148c:	00e7b423          	sd	a4,8(a5)
        if (!head) { tail = 0; }
    80001490:	02070463          	beqz	a4,800014b8 <_ZN13Semaphore_sys3getEv+0x50>

        T *ret = elem->data;
    80001494:	00053483          	ld	s1,0(a0)
            MemoryAllocator::free(address);
    80001498:	00002097          	auipc	ra,0x2
    8000149c:	a18080e7          	jalr	-1512(ra) # 80002eb0 <_ZN15MemoryAllocator4freeEPv>
    return Semaphore_sys::blockedQueue.removeFirst();
}
    800014a0:	00048513          	mv	a0,s1
    800014a4:	01813083          	ld	ra,24(sp)
    800014a8:	01013403          	ld	s0,16(sp)
    800014ac:	00813483          	ld	s1,8(sp)
    800014b0:	02010113          	addi	sp,sp,32
    800014b4:	00008067          	ret
        if (!head) { tail = 0; }
    800014b8:	0007b823          	sd	zero,16(a5)
    800014bc:	fd9ff06f          	j	80001494 <_ZN13Semaphore_sys3getEv+0x2c>
        if (!head) { return 0; }
    800014c0:	00050493          	mv	s1,a0
    return Semaphore_sys::blockedQueue.removeFirst();
    800014c4:	fddff06f          	j	800014a0 <_ZN13Semaphore_sys3getEv+0x38>

00000000800014c8 <_ZN13Semaphore_sys3putEP3CCB>:

void Semaphore_sys::put(CCB *ccb){
    800014c8:	fe010113          	addi	sp,sp,-32
    800014cc:	00113c23          	sd	ra,24(sp)
    800014d0:	00813823          	sd	s0,16(sp)
    800014d4:	00913423          	sd	s1,8(sp)
    800014d8:	01213023          	sd	s2,0(sp)
    800014dc:	02010413          	addi	s0,sp,32
    800014e0:	00050493          	mv	s1,a0
    800014e4:	00058913          	mv	s2,a1
            return MemoryAllocator::allocateB(size);
    800014e8:	01000513          	li	a0,16
    800014ec:	00002097          	auipc	ra,0x2
    800014f0:	92c080e7          	jalr	-1748(ra) # 80002e18 <_ZN15MemoryAllocator9allocateBEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800014f4:	01253023          	sd	s2,0(a0)
    800014f8:	00053423          	sd	zero,8(a0)
        if (tail)
    800014fc:	0104b783          	ld	a5,16(s1)
    80001500:	02078263          	beqz	a5,80001524 <_ZN13Semaphore_sys3putEP3CCB+0x5c>
            tail->next = elem;
    80001504:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001508:	00a4b823          	sd	a0,16(s1)
    Semaphore_sys::blockedQueue.addLast(ccb);
}
    8000150c:	01813083          	ld	ra,24(sp)
    80001510:	01013403          	ld	s0,16(sp)
    80001514:	00813483          	ld	s1,8(sp)
    80001518:	00013903          	ld	s2,0(sp)
    8000151c:	02010113          	addi	sp,sp,32
    80001520:	00008067          	ret
            head = tail = elem;
    80001524:	00a4b823          	sd	a0,16(s1)
    80001528:	00a4b423          	sd	a0,8(s1)
    8000152c:	fe1ff06f          	j	8000150c <_ZN13Semaphore_sys3putEP3CCB+0x44>

0000000080001530 <_ZN13Semaphore_sys5blockEv>:
void Semaphore_sys::block() {
    80001530:	fe010113          	addi	sp,sp,-32
    80001534:	00113c23          	sd	ra,24(sp)
    80001538:	00813823          	sd	s0,16(sp)
    8000153c:	00913423          	sd	s1,8(sp)
    80001540:	02010413          	addi	s0,sp,32
    put(CCB::running);
    80001544:	00006497          	auipc	s1,0x6
    80001548:	dd44b483          	ld	s1,-556(s1) # 80007318 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000154c:	0004b583          	ld	a1,0(s1)
    80001550:	00000097          	auipc	ra,0x0
    80001554:	f78080e7          	jalr	-136(ra) # 800014c8 <_ZN13Semaphore_sys3putEP3CCB>
    CCB::running->setBlocked(true);
    80001558:	0004b783          	ld	a5,0(s1)
    }

    bool isFinished() const { return finished; }
    bool isBlocked() const { return blocked; }
    void setFinished(bool value) { finished = value;}
    void setBlocked(bool value) { blocked = value; }
    8000155c:	00100713          	li	a4,1
    80001560:	02e784a3          	sb	a4,41(a5)
    CCB::dispatch();
    80001564:	00001097          	auipc	ra,0x1
    80001568:	0a0080e7          	jalr	160(ra) # 80002604 <_ZN3CCB8dispatchEv>
}
    8000156c:	01813083          	ld	ra,24(sp)
    80001570:	01013403          	ld	s0,16(sp)
    80001574:	00813483          	ld	s1,8(sp)
    80001578:	02010113          	addi	sp,sp,32
    8000157c:	00008067          	ret

0000000080001580 <_ZN13Semaphore_sys7unblockEv>:

void Semaphore_sys::unblock() {
    80001580:	fe010113          	addi	sp,sp,-32
    80001584:	00113c23          	sd	ra,24(sp)
    80001588:	00813823          	sd	s0,16(sp)
    8000158c:	00913423          	sd	s1,8(sp)
    80001590:	02010413          	addi	s0,sp,32
    80001594:	00050793          	mv	a5,a0
        if (!head) { return 0; }
    80001598:	00853503          	ld	a0,8(a0)
    8000159c:	04050463          	beqz	a0,800015e4 <_ZN13Semaphore_sys7unblockEv+0x64>
        head = head->next;
    800015a0:	00853703          	ld	a4,8(a0)
    800015a4:	00e7b423          	sd	a4,8(a5)
        if (!head) { tail = 0; }
    800015a8:	02070a63          	beqz	a4,800015dc <_ZN13Semaphore_sys7unblockEv+0x5c>
        T *ret = elem->data;
    800015ac:	00053483          	ld	s1,0(a0)
            MemoryAllocator::free(address);
    800015b0:	00002097          	auipc	ra,0x2
    800015b4:	900080e7          	jalr	-1792(ra) # 80002eb0 <_ZN15MemoryAllocator4freeEPv>
    800015b8:	020484a3          	sb	zero,41(s1)
    CCB* thread = blockedQueue.removeFirst();
    thread->setBlocked(false);
    Scheduler::put(thread);
    800015bc:	00048513          	mv	a0,s1
    800015c0:	00001097          	auipc	ra,0x1
    800015c4:	e28080e7          	jalr	-472(ra) # 800023e8 <_ZN9Scheduler3putEP3CCB>
}
    800015c8:	01813083          	ld	ra,24(sp)
    800015cc:	01013403          	ld	s0,16(sp)
    800015d0:	00813483          	ld	s1,8(sp)
    800015d4:	02010113          	addi	sp,sp,32
    800015d8:	00008067          	ret
        if (!head) { tail = 0; }
    800015dc:	0007b823          	sd	zero,16(a5)
    800015e0:	fcdff06f          	j	800015ac <_ZN13Semaphore_sys7unblockEv+0x2c>
        if (!head) { return 0; }
    800015e4:	00050493          	mv	s1,a0
    800015e8:	fd1ff06f          	j	800015b8 <_ZN13Semaphore_sys7unblockEv+0x38>

00000000800015ec <_ZN13Semaphore_sys6signalEv>:

void Semaphore_sys::signal() {
    if(++val <= 0) unblock();
    800015ec:	00052783          	lw	a5,0(a0)
    800015f0:	0017879b          	addiw	a5,a5,1
    800015f4:	0007871b          	sext.w	a4,a5
    800015f8:	00f52023          	sw	a5,0(a0)
    800015fc:	00e05463          	blez	a4,80001604 <_ZN13Semaphore_sys6signalEv+0x18>
    80001600:	00008067          	ret
void Semaphore_sys::signal() {
    80001604:	ff010113          	addi	sp,sp,-16
    80001608:	00113423          	sd	ra,8(sp)
    8000160c:	00813023          	sd	s0,0(sp)
    80001610:	01010413          	addi	s0,sp,16
    if(++val <= 0) unblock();
    80001614:	00000097          	auipc	ra,0x0
    80001618:	f6c080e7          	jalr	-148(ra) # 80001580 <_ZN13Semaphore_sys7unblockEv>
}
    8000161c:	00813083          	ld	ra,8(sp)
    80001620:	00013403          	ld	s0,0(sp)
    80001624:	01010113          	addi	sp,sp,16
    80001628:	00008067          	ret

000000008000162c <_ZN13Semaphore_sys4waitEv>:

void Semaphore_sys::wait() {
    if(--val < 0) block();
    8000162c:	00052783          	lw	a5,0(a0)
    80001630:	fff7879b          	addiw	a5,a5,-1
    80001634:	00f52023          	sw	a5,0(a0)
    80001638:	02079713          	slli	a4,a5,0x20
    8000163c:	00074463          	bltz	a4,80001644 <_ZN13Semaphore_sys4waitEv+0x18>
    80001640:	00008067          	ret
void Semaphore_sys::wait() {
    80001644:	ff010113          	addi	sp,sp,-16
    80001648:	00113423          	sd	ra,8(sp)
    8000164c:	00813023          	sd	s0,0(sp)
    80001650:	01010413          	addi	s0,sp,16
    if(--val < 0) block();
    80001654:	00000097          	auipc	ra,0x0
    80001658:	edc080e7          	jalr	-292(ra) # 80001530 <_ZN13Semaphore_sys5blockEv>
}
    8000165c:	00813083          	ld	ra,8(sp)
    80001660:	00013403          	ld	s0,0(sp)
    80001664:	01010113          	addi	sp,sp,16
    80001668:	00008067          	ret

000000008000166c <_ZN13Semaphore_sys15createSemaphoreEj>:

sem_t Semaphore_sys::createSemaphore(unsigned int init) {
    8000166c:	fe010113          	addi	sp,sp,-32
    80001670:	00113c23          	sd	ra,24(sp)
    80001674:	00813823          	sd	s0,16(sp)
    80001678:	00913423          	sd	s1,8(sp)
    8000167c:	02010413          	addi	s0,sp,32
    80001680:	00050493          	mv	s1,a0
#include "tcb.hpp"
class Semaphore_sys {
public:
    Semaphore_sys(unsigned init = 1): val(init) {}
    void* operator new(size_t size) {
        return MemoryAllocator::allocateB(size);
    80001684:	01800513          	li	a0,24
    80001688:	00001097          	auipc	ra,0x1
    8000168c:	790080e7          	jalr	1936(ra) # 80002e18 <_ZN15MemoryAllocator9allocateBEm>
    Semaphore_sys(unsigned init = 1): val(init) {}
    80001690:	00952023          	sw	s1,0(a0)
    List() : head(0), tail(0) {}
    80001694:	00053423          	sd	zero,8(a0)
    80001698:	00053823          	sd	zero,16(a0)
    return new Semaphore_sys(init);
}
    8000169c:	01813083          	ld	ra,24(sp)
    800016a0:	01013403          	ld	s0,16(sp)
    800016a4:	00813483          	ld	s1,8(sp)
    800016a8:	02010113          	addi	sp,sp,32
    800016ac:	00008067          	ret

00000000800016b0 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800016b0:	fe010113          	addi	sp,sp,-32
    800016b4:	00113c23          	sd	ra,24(sp)
    800016b8:	00813823          	sd	s0,16(sp)
    800016bc:	00913423          	sd	s1,8(sp)
    800016c0:	02010413          	addi	s0,sp,32
    800016c4:	00050493          	mv	s1,a0
    LOCK();
    800016c8:	00100613          	li	a2,1
    800016cc:	00000593          	li	a1,0
    800016d0:	00006517          	auipc	a0,0x6
    800016d4:	cb050513          	addi	a0,a0,-848 # 80007380 <lockPrint>
    800016d8:	00000097          	auipc	ra,0x0
    800016dc:	b30080e7          	jalr	-1232(ra) # 80001208 <copy_and_swap>
    800016e0:	fe0514e3          	bnez	a0,800016c8 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800016e4:	0004c503          	lbu	a0,0(s1)
    800016e8:	00050a63          	beqz	a0,800016fc <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    800016ec:	00000097          	auipc	ra,0x0
    800016f0:	d54080e7          	jalr	-684(ra) # 80001440 <_Z4putcc>
        string++;
    800016f4:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800016f8:	fedff06f          	j	800016e4 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    800016fc:	00000613          	li	a2,0
    80001700:	00100593          	li	a1,1
    80001704:	00006517          	auipc	a0,0x6
    80001708:	c7c50513          	addi	a0,a0,-900 # 80007380 <lockPrint>
    8000170c:	00000097          	auipc	ra,0x0
    80001710:	afc080e7          	jalr	-1284(ra) # 80001208 <copy_and_swap>
    80001714:	fe0514e3          	bnez	a0,800016fc <_Z11printStringPKc+0x4c>
}
    80001718:	01813083          	ld	ra,24(sp)
    8000171c:	01013403          	ld	s0,16(sp)
    80001720:	00813483          	ld	s1,8(sp)
    80001724:	02010113          	addi	sp,sp,32
    80001728:	00008067          	ret

000000008000172c <_Z9getStringPci>:

char* getString(char *buf, int max) {
    8000172c:	fd010113          	addi	sp,sp,-48
    80001730:	02113423          	sd	ra,40(sp)
    80001734:	02813023          	sd	s0,32(sp)
    80001738:	00913c23          	sd	s1,24(sp)
    8000173c:	01213823          	sd	s2,16(sp)
    80001740:	01313423          	sd	s3,8(sp)
    80001744:	01413023          	sd	s4,0(sp)
    80001748:	03010413          	addi	s0,sp,48
    8000174c:	00050993          	mv	s3,a0
    80001750:	00058a13          	mv	s4,a1
    LOCK();
    80001754:	00100613          	li	a2,1
    80001758:	00000593          	li	a1,0
    8000175c:	00006517          	auipc	a0,0x6
    80001760:	c2450513          	addi	a0,a0,-988 # 80007380 <lockPrint>
    80001764:	00000097          	auipc	ra,0x0
    80001768:	aa4080e7          	jalr	-1372(ra) # 80001208 <copy_and_swap>
    8000176c:	fe0514e3          	bnez	a0,80001754 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80001770:	00000913          	li	s2,0
    80001774:	00090493          	mv	s1,s2
    80001778:	0019091b          	addiw	s2,s2,1
    8000177c:	03495a63          	bge	s2,s4,800017b0 <_Z9getStringPci+0x84>
        cc = getc();
    80001780:	00000097          	auipc	ra,0x0
    80001784:	c98080e7          	jalr	-872(ra) # 80001418 <_Z4getcv>
        if(cc < 1)
    80001788:	02050463          	beqz	a0,800017b0 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    8000178c:	009984b3          	add	s1,s3,s1
    80001790:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80001794:	00a00793          	li	a5,10
    80001798:	00f50a63          	beq	a0,a5,800017ac <_Z9getStringPci+0x80>
    8000179c:	00d00793          	li	a5,13
    800017a0:	fcf51ae3          	bne	a0,a5,80001774 <_Z9getStringPci+0x48>
        buf[i++] = c;
    800017a4:	00090493          	mv	s1,s2
    800017a8:	0080006f          	j	800017b0 <_Z9getStringPci+0x84>
    800017ac:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800017b0:	009984b3          	add	s1,s3,s1
    800017b4:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800017b8:	00000613          	li	a2,0
    800017bc:	00100593          	li	a1,1
    800017c0:	00006517          	auipc	a0,0x6
    800017c4:	bc050513          	addi	a0,a0,-1088 # 80007380 <lockPrint>
    800017c8:	00000097          	auipc	ra,0x0
    800017cc:	a40080e7          	jalr	-1472(ra) # 80001208 <copy_and_swap>
    800017d0:	fe0514e3          	bnez	a0,800017b8 <_Z9getStringPci+0x8c>
    return buf;
}
    800017d4:	00098513          	mv	a0,s3
    800017d8:	02813083          	ld	ra,40(sp)
    800017dc:	02013403          	ld	s0,32(sp)
    800017e0:	01813483          	ld	s1,24(sp)
    800017e4:	01013903          	ld	s2,16(sp)
    800017e8:	00813983          	ld	s3,8(sp)
    800017ec:	00013a03          	ld	s4,0(sp)
    800017f0:	03010113          	addi	sp,sp,48
    800017f4:	00008067          	ret

00000000800017f8 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800017f8:	ff010113          	addi	sp,sp,-16
    800017fc:	00813423          	sd	s0,8(sp)
    80001800:	01010413          	addi	s0,sp,16
    80001804:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80001808:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    8000180c:	0006c603          	lbu	a2,0(a3)
    80001810:	fd06071b          	addiw	a4,a2,-48
    80001814:	0ff77713          	andi	a4,a4,255
    80001818:	00900793          	li	a5,9
    8000181c:	02e7e063          	bltu	a5,a4,8000183c <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80001820:	0025179b          	slliw	a5,a0,0x2
    80001824:	00a787bb          	addw	a5,a5,a0
    80001828:	0017979b          	slliw	a5,a5,0x1
    8000182c:	00168693          	addi	a3,a3,1
    80001830:	00c787bb          	addw	a5,a5,a2
    80001834:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80001838:	fd5ff06f          	j	8000180c <_Z11stringToIntPKc+0x14>
    return n;
}
    8000183c:	00813403          	ld	s0,8(sp)
    80001840:	01010113          	addi	sp,sp,16
    80001844:	00008067          	ret

0000000080001848 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80001848:	fc010113          	addi	sp,sp,-64
    8000184c:	02113c23          	sd	ra,56(sp)
    80001850:	02813823          	sd	s0,48(sp)
    80001854:	02913423          	sd	s1,40(sp)
    80001858:	03213023          	sd	s2,32(sp)
    8000185c:	01313c23          	sd	s3,24(sp)
    80001860:	04010413          	addi	s0,sp,64
    80001864:	00050493          	mv	s1,a0
    80001868:	00058913          	mv	s2,a1
    8000186c:	00060993          	mv	s3,a2
    LOCK();
    80001870:	00100613          	li	a2,1
    80001874:	00000593          	li	a1,0
    80001878:	00006517          	auipc	a0,0x6
    8000187c:	b0850513          	addi	a0,a0,-1272 # 80007380 <lockPrint>
    80001880:	00000097          	auipc	ra,0x0
    80001884:	988080e7          	jalr	-1656(ra) # 80001208 <copy_and_swap>
    80001888:	fe0514e3          	bnez	a0,80001870 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    8000188c:	00098463          	beqz	s3,80001894 <_Z8printIntiii+0x4c>
    80001890:	0804c463          	bltz	s1,80001918 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80001894:	0004851b          	sext.w	a0,s1
    neg = 0;
    80001898:	00000593          	li	a1,0
    }

    i = 0;
    8000189c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800018a0:	0009079b          	sext.w	a5,s2
    800018a4:	0325773b          	remuw	a4,a0,s2
    800018a8:	00048613          	mv	a2,s1
    800018ac:	0014849b          	addiw	s1,s1,1
    800018b0:	02071693          	slli	a3,a4,0x20
    800018b4:	0206d693          	srli	a3,a3,0x20
    800018b8:	00006717          	auipc	a4,0x6
    800018bc:	93870713          	addi	a4,a4,-1736 # 800071f0 <digits>
    800018c0:	00d70733          	add	a4,a4,a3
    800018c4:	00074683          	lbu	a3,0(a4)
    800018c8:	fd040713          	addi	a4,s0,-48
    800018cc:	00c70733          	add	a4,a4,a2
    800018d0:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800018d4:	0005071b          	sext.w	a4,a0
    800018d8:	0325553b          	divuw	a0,a0,s2
    800018dc:	fcf772e3          	bgeu	a4,a5,800018a0 <_Z8printIntiii+0x58>
    if(neg)
    800018e0:	00058c63          	beqz	a1,800018f8 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    800018e4:	fd040793          	addi	a5,s0,-48
    800018e8:	009784b3          	add	s1,a5,s1
    800018ec:	02d00793          	li	a5,45
    800018f0:	fef48823          	sb	a5,-16(s1)
    800018f4:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800018f8:	fff4849b          	addiw	s1,s1,-1
    800018fc:	0204c463          	bltz	s1,80001924 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80001900:	fd040793          	addi	a5,s0,-48
    80001904:	009787b3          	add	a5,a5,s1
    80001908:	ff07c503          	lbu	a0,-16(a5)
    8000190c:	00000097          	auipc	ra,0x0
    80001910:	b34080e7          	jalr	-1228(ra) # 80001440 <_Z4putcc>
    80001914:	fe5ff06f          	j	800018f8 <_Z8printIntiii+0xb0>
        x = -xx;
    80001918:	4090053b          	negw	a0,s1
        neg = 1;
    8000191c:	00100593          	li	a1,1
        x = -xx;
    80001920:	f7dff06f          	j	8000189c <_Z8printIntiii+0x54>

    UNLOCK();
    80001924:	00000613          	li	a2,0
    80001928:	00100593          	li	a1,1
    8000192c:	00006517          	auipc	a0,0x6
    80001930:	a5450513          	addi	a0,a0,-1452 # 80007380 <lockPrint>
    80001934:	00000097          	auipc	ra,0x0
    80001938:	8d4080e7          	jalr	-1836(ra) # 80001208 <copy_and_swap>
    8000193c:	fe0514e3          	bnez	a0,80001924 <_Z8printIntiii+0xdc>
    80001940:	03813083          	ld	ra,56(sp)
    80001944:	03013403          	ld	s0,48(sp)
    80001948:	02813483          	ld	s1,40(sp)
    8000194c:	02013903          	ld	s2,32(sp)
    80001950:	01813983          	ld	s3,24(sp)
    80001954:	04010113          	addi	sp,sp,64
    80001958:	00008067          	ret

000000008000195c <_Z9fibonaccim>:
bool finishedA = false;
bool finishedB = false;
bool finishedC = false;
bool finishedD = false;

uint64 fibonacci(uint64 n) {
    8000195c:	fe010113          	addi	sp,sp,-32
    80001960:	00113c23          	sd	ra,24(sp)
    80001964:	00813823          	sd	s0,16(sp)
    80001968:	00913423          	sd	s1,8(sp)
    8000196c:	01213023          	sd	s2,0(sp)
    80001970:	02010413          	addi	s0,sp,32
    80001974:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001978:	00100793          	li	a5,1
    8000197c:	02a7f863          	bgeu	a5,a0,800019ac <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80001980:	00a00793          	li	a5,10
    80001984:	02f577b3          	remu	a5,a0,a5
    80001988:	02078e63          	beqz	a5,800019c4 <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8000198c:	fff48513          	addi	a0,s1,-1
    80001990:	00000097          	auipc	ra,0x0
    80001994:	fcc080e7          	jalr	-52(ra) # 8000195c <_Z9fibonaccim>
    80001998:	00050913          	mv	s2,a0
    8000199c:	ffe48513          	addi	a0,s1,-2
    800019a0:	00000097          	auipc	ra,0x0
    800019a4:	fbc080e7          	jalr	-68(ra) # 8000195c <_Z9fibonaccim>
    800019a8:	00a90533          	add	a0,s2,a0
}
    800019ac:	01813083          	ld	ra,24(sp)
    800019b0:	01013403          	ld	s0,16(sp)
    800019b4:	00813483          	ld	s1,8(sp)
    800019b8:	00013903          	ld	s2,0(sp)
    800019bc:	02010113          	addi	sp,sp,32
    800019c0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800019c4:	00000097          	auipc	ra,0x0
    800019c8:	918080e7          	jalr	-1768(ra) # 800012dc <_Z15thread_dispatchv>
    800019cc:	fc1ff06f          	j	8000198c <_Z9fibonaccim+0x30>

00000000800019d0 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    800019d0:	fe010113          	addi	sp,sp,-32
    800019d4:	00113c23          	sd	ra,24(sp)
    800019d8:	00813823          	sd	s0,16(sp)
    800019dc:	00913423          	sd	s1,8(sp)
    800019e0:	01213023          	sd	s2,0(sp)
    800019e4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800019e8:	00000913          	li	s2,0
    800019ec:	0380006f          	j	80001a24 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800019f0:	00000097          	auipc	ra,0x0
    800019f4:	8ec080e7          	jalr	-1812(ra) # 800012dc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800019f8:	00148493          	addi	s1,s1,1
    800019fc:	000027b7          	lui	a5,0x2
    80001a00:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001a04:	0097ee63          	bltu	a5,s1,80001a20 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80001a08:	00000713          	li	a4,0
    80001a0c:	000077b7          	lui	a5,0x7
    80001a10:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001a14:	fce7eee3          	bltu	a5,a4,800019f0 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80001a18:	00170713          	addi	a4,a4,1
    80001a1c:	ff1ff06f          	j	80001a0c <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80001a20:	00190913          	addi	s2,s2,1
    80001a24:	00900793          	li	a5,9
    80001a28:	0527e063          	bltu	a5,s2,80001a68 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80001a2c:	00004517          	auipc	a0,0x4
    80001a30:	5f450513          	addi	a0,a0,1524 # 80006020 <CONSOLE_STATUS+0x10>
    80001a34:	00000097          	auipc	ra,0x0
    80001a38:	c7c080e7          	jalr	-900(ra) # 800016b0 <_Z11printStringPKc>
    80001a3c:	00000613          	li	a2,0
    80001a40:	00a00593          	li	a1,10
    80001a44:	0009051b          	sext.w	a0,s2
    80001a48:	00000097          	auipc	ra,0x0
    80001a4c:	e00080e7          	jalr	-512(ra) # 80001848 <_Z8printIntiii>
    80001a50:	00004517          	auipc	a0,0x4
    80001a54:	6e050513          	addi	a0,a0,1760 # 80006130 <CONSOLE_STATUS+0x120>
    80001a58:	00000097          	auipc	ra,0x0
    80001a5c:	c58080e7          	jalr	-936(ra) # 800016b0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80001a60:	00000493          	li	s1,0
    80001a64:	f99ff06f          	j	800019fc <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80001a68:	00004517          	auipc	a0,0x4
    80001a6c:	5c050513          	addi	a0,a0,1472 # 80006028 <CONSOLE_STATUS+0x18>
    80001a70:	00000097          	auipc	ra,0x0
    80001a74:	c40080e7          	jalr	-960(ra) # 800016b0 <_Z11printStringPKc>
    finishedA = true;
    80001a78:	00100793          	li	a5,1
    80001a7c:	00006717          	auipc	a4,0x6
    80001a80:	90f70623          	sb	a5,-1780(a4) # 80007388 <finishedA>
}
    80001a84:	01813083          	ld	ra,24(sp)
    80001a88:	01013403          	ld	s0,16(sp)
    80001a8c:	00813483          	ld	s1,8(sp)
    80001a90:	00013903          	ld	s2,0(sp)
    80001a94:	02010113          	addi	sp,sp,32
    80001a98:	00008067          	ret

0000000080001a9c <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80001a9c:	fe010113          	addi	sp,sp,-32
    80001aa0:	00113c23          	sd	ra,24(sp)
    80001aa4:	00813823          	sd	s0,16(sp)
    80001aa8:	00913423          	sd	s1,8(sp)
    80001aac:	01213023          	sd	s2,0(sp)
    80001ab0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80001ab4:	00000913          	li	s2,0
    80001ab8:	0380006f          	j	80001af0 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80001abc:	00000097          	auipc	ra,0x0
    80001ac0:	820080e7          	jalr	-2016(ra) # 800012dc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80001ac4:	00148493          	addi	s1,s1,1
    80001ac8:	000027b7          	lui	a5,0x2
    80001acc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001ad0:	0097ee63          	bltu	a5,s1,80001aec <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80001ad4:	00000713          	li	a4,0
    80001ad8:	000077b7          	lui	a5,0x7
    80001adc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001ae0:	fce7eee3          	bltu	a5,a4,80001abc <_ZN7WorkerB11workerBodyBEPv+0x20>
    80001ae4:	00170713          	addi	a4,a4,1
    80001ae8:	ff1ff06f          	j	80001ad8 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80001aec:	00190913          	addi	s2,s2,1
    80001af0:	00f00793          	li	a5,15
    80001af4:	0527e063          	bltu	a5,s2,80001b34 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80001af8:	00004517          	auipc	a0,0x4
    80001afc:	54050513          	addi	a0,a0,1344 # 80006038 <CONSOLE_STATUS+0x28>
    80001b00:	00000097          	auipc	ra,0x0
    80001b04:	bb0080e7          	jalr	-1104(ra) # 800016b0 <_Z11printStringPKc>
    80001b08:	00000613          	li	a2,0
    80001b0c:	00a00593          	li	a1,10
    80001b10:	0009051b          	sext.w	a0,s2
    80001b14:	00000097          	auipc	ra,0x0
    80001b18:	d34080e7          	jalr	-716(ra) # 80001848 <_Z8printIntiii>
    80001b1c:	00004517          	auipc	a0,0x4
    80001b20:	61450513          	addi	a0,a0,1556 # 80006130 <CONSOLE_STATUS+0x120>
    80001b24:	00000097          	auipc	ra,0x0
    80001b28:	b8c080e7          	jalr	-1140(ra) # 800016b0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80001b2c:	00000493          	li	s1,0
    80001b30:	f99ff06f          	j	80001ac8 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80001b34:	00004517          	auipc	a0,0x4
    80001b38:	50c50513          	addi	a0,a0,1292 # 80006040 <CONSOLE_STATUS+0x30>
    80001b3c:	00000097          	auipc	ra,0x0
    80001b40:	b74080e7          	jalr	-1164(ra) # 800016b0 <_Z11printStringPKc>
    finishedB = true;
    80001b44:	00100793          	li	a5,1
    80001b48:	00006717          	auipc	a4,0x6
    80001b4c:	84f700a3          	sb	a5,-1983(a4) # 80007389 <finishedB>
    thread_dispatch();
    80001b50:	fffff097          	auipc	ra,0xfffff
    80001b54:	78c080e7          	jalr	1932(ra) # 800012dc <_Z15thread_dispatchv>
}
    80001b58:	01813083          	ld	ra,24(sp)
    80001b5c:	01013403          	ld	s0,16(sp)
    80001b60:	00813483          	ld	s1,8(sp)
    80001b64:	00013903          	ld	s2,0(sp)
    80001b68:	02010113          	addi	sp,sp,32
    80001b6c:	00008067          	ret

0000000080001b70 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80001b70:	fe010113          	addi	sp,sp,-32
    80001b74:	00113c23          	sd	ra,24(sp)
    80001b78:	00813823          	sd	s0,16(sp)
    80001b7c:	00913423          	sd	s1,8(sp)
    80001b80:	01213023          	sd	s2,0(sp)
    80001b84:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80001b88:	00000493          	li	s1,0
    80001b8c:	0400006f          	j	80001bcc <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80001b90:	00004517          	auipc	a0,0x4
    80001b94:	4c050513          	addi	a0,a0,1216 # 80006050 <CONSOLE_STATUS+0x40>
    80001b98:	00000097          	auipc	ra,0x0
    80001b9c:	b18080e7          	jalr	-1256(ra) # 800016b0 <_Z11printStringPKc>
    80001ba0:	00000613          	li	a2,0
    80001ba4:	00a00593          	li	a1,10
    80001ba8:	00048513          	mv	a0,s1
    80001bac:	00000097          	auipc	ra,0x0
    80001bb0:	c9c080e7          	jalr	-868(ra) # 80001848 <_Z8printIntiii>
    80001bb4:	00004517          	auipc	a0,0x4
    80001bb8:	57c50513          	addi	a0,a0,1404 # 80006130 <CONSOLE_STATUS+0x120>
    80001bbc:	00000097          	auipc	ra,0x0
    80001bc0:	af4080e7          	jalr	-1292(ra) # 800016b0 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80001bc4:	0014849b          	addiw	s1,s1,1
    80001bc8:	0ff4f493          	andi	s1,s1,255
    80001bcc:	00200793          	li	a5,2
    80001bd0:	fc97f0e3          	bgeu	a5,s1,80001b90 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80001bd4:	00004517          	auipc	a0,0x4
    80001bd8:	48450513          	addi	a0,a0,1156 # 80006058 <CONSOLE_STATUS+0x48>
    80001bdc:	00000097          	auipc	ra,0x0
    80001be0:	ad4080e7          	jalr	-1324(ra) # 800016b0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001be4:	00700313          	li	t1,7
    thread_dispatch();
    80001be8:	fffff097          	auipc	ra,0xfffff
    80001bec:	6f4080e7          	jalr	1780(ra) # 800012dc <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001bf0:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80001bf4:	00004517          	auipc	a0,0x4
    80001bf8:	47450513          	addi	a0,a0,1140 # 80006068 <CONSOLE_STATUS+0x58>
    80001bfc:	00000097          	auipc	ra,0x0
    80001c00:	ab4080e7          	jalr	-1356(ra) # 800016b0 <_Z11printStringPKc>
    80001c04:	00000613          	li	a2,0
    80001c08:	00a00593          	li	a1,10
    80001c0c:	0009051b          	sext.w	a0,s2
    80001c10:	00000097          	auipc	ra,0x0
    80001c14:	c38080e7          	jalr	-968(ra) # 80001848 <_Z8printIntiii>
    80001c18:	00004517          	auipc	a0,0x4
    80001c1c:	51850513          	addi	a0,a0,1304 # 80006130 <CONSOLE_STATUS+0x120>
    80001c20:	00000097          	auipc	ra,0x0
    80001c24:	a90080e7          	jalr	-1392(ra) # 800016b0 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80001c28:	00c00513          	li	a0,12
    80001c2c:	00000097          	auipc	ra,0x0
    80001c30:	d30080e7          	jalr	-720(ra) # 8000195c <_Z9fibonaccim>
    80001c34:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80001c38:	00004517          	auipc	a0,0x4
    80001c3c:	43850513          	addi	a0,a0,1080 # 80006070 <CONSOLE_STATUS+0x60>
    80001c40:	00000097          	auipc	ra,0x0
    80001c44:	a70080e7          	jalr	-1424(ra) # 800016b0 <_Z11printStringPKc>
    80001c48:	00000613          	li	a2,0
    80001c4c:	00a00593          	li	a1,10
    80001c50:	0009051b          	sext.w	a0,s2
    80001c54:	00000097          	auipc	ra,0x0
    80001c58:	bf4080e7          	jalr	-1036(ra) # 80001848 <_Z8printIntiii>
    80001c5c:	00004517          	auipc	a0,0x4
    80001c60:	4d450513          	addi	a0,a0,1236 # 80006130 <CONSOLE_STATUS+0x120>
    80001c64:	00000097          	auipc	ra,0x0
    80001c68:	a4c080e7          	jalr	-1460(ra) # 800016b0 <_Z11printStringPKc>
    80001c6c:	0400006f          	j	80001cac <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80001c70:	00004517          	auipc	a0,0x4
    80001c74:	3e050513          	addi	a0,a0,992 # 80006050 <CONSOLE_STATUS+0x40>
    80001c78:	00000097          	auipc	ra,0x0
    80001c7c:	a38080e7          	jalr	-1480(ra) # 800016b0 <_Z11printStringPKc>
    80001c80:	00000613          	li	a2,0
    80001c84:	00a00593          	li	a1,10
    80001c88:	00048513          	mv	a0,s1
    80001c8c:	00000097          	auipc	ra,0x0
    80001c90:	bbc080e7          	jalr	-1092(ra) # 80001848 <_Z8printIntiii>
    80001c94:	00004517          	auipc	a0,0x4
    80001c98:	49c50513          	addi	a0,a0,1180 # 80006130 <CONSOLE_STATUS+0x120>
    80001c9c:	00000097          	auipc	ra,0x0
    80001ca0:	a14080e7          	jalr	-1516(ra) # 800016b0 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80001ca4:	0014849b          	addiw	s1,s1,1
    80001ca8:	0ff4f493          	andi	s1,s1,255
    80001cac:	00500793          	li	a5,5
    80001cb0:	fc97f0e3          	bgeu	a5,s1,80001c70 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80001cb4:	00004517          	auipc	a0,0x4
    80001cb8:	37450513          	addi	a0,a0,884 # 80006028 <CONSOLE_STATUS+0x18>
    80001cbc:	00000097          	auipc	ra,0x0
    80001cc0:	9f4080e7          	jalr	-1548(ra) # 800016b0 <_Z11printStringPKc>
    finishedC = true;
    80001cc4:	00100793          	li	a5,1
    80001cc8:	00005717          	auipc	a4,0x5
    80001ccc:	6cf70123          	sb	a5,1730(a4) # 8000738a <finishedC>
    thread_dispatch();
    80001cd0:	fffff097          	auipc	ra,0xfffff
    80001cd4:	60c080e7          	jalr	1548(ra) # 800012dc <_Z15thread_dispatchv>
}
    80001cd8:	01813083          	ld	ra,24(sp)
    80001cdc:	01013403          	ld	s0,16(sp)
    80001ce0:	00813483          	ld	s1,8(sp)
    80001ce4:	00013903          	ld	s2,0(sp)
    80001ce8:	02010113          	addi	sp,sp,32
    80001cec:	00008067          	ret

0000000080001cf0 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80001cf0:	fe010113          	addi	sp,sp,-32
    80001cf4:	00113c23          	sd	ra,24(sp)
    80001cf8:	00813823          	sd	s0,16(sp)
    80001cfc:	00913423          	sd	s1,8(sp)
    80001d00:	01213023          	sd	s2,0(sp)
    80001d04:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80001d08:	00a00493          	li	s1,10
    80001d0c:	0400006f          	j	80001d4c <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80001d10:	00004517          	auipc	a0,0x4
    80001d14:	37050513          	addi	a0,a0,880 # 80006080 <CONSOLE_STATUS+0x70>
    80001d18:	00000097          	auipc	ra,0x0
    80001d1c:	998080e7          	jalr	-1640(ra) # 800016b0 <_Z11printStringPKc>
    80001d20:	00000613          	li	a2,0
    80001d24:	00a00593          	li	a1,10
    80001d28:	00048513          	mv	a0,s1
    80001d2c:	00000097          	auipc	ra,0x0
    80001d30:	b1c080e7          	jalr	-1252(ra) # 80001848 <_Z8printIntiii>
    80001d34:	00004517          	auipc	a0,0x4
    80001d38:	3fc50513          	addi	a0,a0,1020 # 80006130 <CONSOLE_STATUS+0x120>
    80001d3c:	00000097          	auipc	ra,0x0
    80001d40:	974080e7          	jalr	-1676(ra) # 800016b0 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80001d44:	0014849b          	addiw	s1,s1,1
    80001d48:	0ff4f493          	andi	s1,s1,255
    80001d4c:	00c00793          	li	a5,12
    80001d50:	fc97f0e3          	bgeu	a5,s1,80001d10 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80001d54:	00004517          	auipc	a0,0x4
    80001d58:	33450513          	addi	a0,a0,820 # 80006088 <CONSOLE_STATUS+0x78>
    80001d5c:	00000097          	auipc	ra,0x0
    80001d60:	954080e7          	jalr	-1708(ra) # 800016b0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001d64:	00500313          	li	t1,5
    thread_dispatch();
    80001d68:	fffff097          	auipc	ra,0xfffff
    80001d6c:	574080e7          	jalr	1396(ra) # 800012dc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80001d70:	01000513          	li	a0,16
    80001d74:	00000097          	auipc	ra,0x0
    80001d78:	be8080e7          	jalr	-1048(ra) # 8000195c <_Z9fibonaccim>
    80001d7c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80001d80:	00004517          	auipc	a0,0x4
    80001d84:	31850513          	addi	a0,a0,792 # 80006098 <CONSOLE_STATUS+0x88>
    80001d88:	00000097          	auipc	ra,0x0
    80001d8c:	928080e7          	jalr	-1752(ra) # 800016b0 <_Z11printStringPKc>
    80001d90:	00000613          	li	a2,0
    80001d94:	00a00593          	li	a1,10
    80001d98:	0009051b          	sext.w	a0,s2
    80001d9c:	00000097          	auipc	ra,0x0
    80001da0:	aac080e7          	jalr	-1364(ra) # 80001848 <_Z8printIntiii>
    80001da4:	00004517          	auipc	a0,0x4
    80001da8:	38c50513          	addi	a0,a0,908 # 80006130 <CONSOLE_STATUS+0x120>
    80001dac:	00000097          	auipc	ra,0x0
    80001db0:	904080e7          	jalr	-1788(ra) # 800016b0 <_Z11printStringPKc>
    80001db4:	0400006f          	j	80001df4 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80001db8:	00004517          	auipc	a0,0x4
    80001dbc:	2c850513          	addi	a0,a0,712 # 80006080 <CONSOLE_STATUS+0x70>
    80001dc0:	00000097          	auipc	ra,0x0
    80001dc4:	8f0080e7          	jalr	-1808(ra) # 800016b0 <_Z11printStringPKc>
    80001dc8:	00000613          	li	a2,0
    80001dcc:	00a00593          	li	a1,10
    80001dd0:	00048513          	mv	a0,s1
    80001dd4:	00000097          	auipc	ra,0x0
    80001dd8:	a74080e7          	jalr	-1420(ra) # 80001848 <_Z8printIntiii>
    80001ddc:	00004517          	auipc	a0,0x4
    80001de0:	35450513          	addi	a0,a0,852 # 80006130 <CONSOLE_STATUS+0x120>
    80001de4:	00000097          	auipc	ra,0x0
    80001de8:	8cc080e7          	jalr	-1844(ra) # 800016b0 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80001dec:	0014849b          	addiw	s1,s1,1
    80001df0:	0ff4f493          	andi	s1,s1,255
    80001df4:	00f00793          	li	a5,15
    80001df8:	fc97f0e3          	bgeu	a5,s1,80001db8 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80001dfc:	00004517          	auipc	a0,0x4
    80001e00:	2ac50513          	addi	a0,a0,684 # 800060a8 <CONSOLE_STATUS+0x98>
    80001e04:	00000097          	auipc	ra,0x0
    80001e08:	8ac080e7          	jalr	-1876(ra) # 800016b0 <_Z11printStringPKc>
    finishedD = true;
    80001e0c:	00100793          	li	a5,1
    80001e10:	00005717          	auipc	a4,0x5
    80001e14:	56f70da3          	sb	a5,1403(a4) # 8000738b <finishedD>
    thread_dispatch();
    80001e18:	fffff097          	auipc	ra,0xfffff
    80001e1c:	4c4080e7          	jalr	1220(ra) # 800012dc <_Z15thread_dispatchv>
}
    80001e20:	01813083          	ld	ra,24(sp)
    80001e24:	01013403          	ld	s0,16(sp)
    80001e28:	00813483          	ld	s1,8(sp)
    80001e2c:	00013903          	ld	s2,0(sp)
    80001e30:	02010113          	addi	sp,sp,32
    80001e34:	00008067          	ret

0000000080001e38 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80001e38:	fc010113          	addi	sp,sp,-64
    80001e3c:	02113c23          	sd	ra,56(sp)
    80001e40:	02813823          	sd	s0,48(sp)
    80001e44:	02913423          	sd	s1,40(sp)
    80001e48:	03213023          	sd	s2,32(sp)
    80001e4c:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80001e50:	01000513          	li	a0,16
    80001e54:	00001097          	auipc	ra,0x1
    80001e58:	8f0080e7          	jalr	-1808(ra) # 80002744 <_Znwm>
    80001e5c:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80001e60:	00001097          	auipc	ra,0x1
    80001e64:	a3c080e7          	jalr	-1476(ra) # 8000289c <_ZN6ThreadC1Ev>
    80001e68:	00005797          	auipc	a5,0x5
    80001e6c:	3b078793          	addi	a5,a5,944 # 80007218 <_ZTV7WorkerA+0x10>
    80001e70:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80001e74:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80001e78:	00004517          	auipc	a0,0x4
    80001e7c:	24050513          	addi	a0,a0,576 # 800060b8 <CONSOLE_STATUS+0xa8>
    80001e80:	00000097          	auipc	ra,0x0
    80001e84:	830080e7          	jalr	-2000(ra) # 800016b0 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80001e88:	01000513          	li	a0,16
    80001e8c:	00001097          	auipc	ra,0x1
    80001e90:	8b8080e7          	jalr	-1864(ra) # 80002744 <_Znwm>
    80001e94:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80001e98:	00001097          	auipc	ra,0x1
    80001e9c:	a04080e7          	jalr	-1532(ra) # 8000289c <_ZN6ThreadC1Ev>
    80001ea0:	00005797          	auipc	a5,0x5
    80001ea4:	3a078793          	addi	a5,a5,928 # 80007240 <_ZTV7WorkerB+0x10>
    80001ea8:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80001eac:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80001eb0:	00004517          	auipc	a0,0x4
    80001eb4:	22050513          	addi	a0,a0,544 # 800060d0 <CONSOLE_STATUS+0xc0>
    80001eb8:	fffff097          	auipc	ra,0xfffff
    80001ebc:	7f8080e7          	jalr	2040(ra) # 800016b0 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80001ec0:	01000513          	li	a0,16
    80001ec4:	00001097          	auipc	ra,0x1
    80001ec8:	880080e7          	jalr	-1920(ra) # 80002744 <_Znwm>
    80001ecc:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80001ed0:	00001097          	auipc	ra,0x1
    80001ed4:	9cc080e7          	jalr	-1588(ra) # 8000289c <_ZN6ThreadC1Ev>
    80001ed8:	00005797          	auipc	a5,0x5
    80001edc:	39078793          	addi	a5,a5,912 # 80007268 <_ZTV7WorkerC+0x10>
    80001ee0:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80001ee4:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80001ee8:	00004517          	auipc	a0,0x4
    80001eec:	20050513          	addi	a0,a0,512 # 800060e8 <CONSOLE_STATUS+0xd8>
    80001ef0:	fffff097          	auipc	ra,0xfffff
    80001ef4:	7c0080e7          	jalr	1984(ra) # 800016b0 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80001ef8:	01000513          	li	a0,16
    80001efc:	00001097          	auipc	ra,0x1
    80001f00:	848080e7          	jalr	-1976(ra) # 80002744 <_Znwm>
    80001f04:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80001f08:	00001097          	auipc	ra,0x1
    80001f0c:	994080e7          	jalr	-1644(ra) # 8000289c <_ZN6ThreadC1Ev>
    80001f10:	00005797          	auipc	a5,0x5
    80001f14:	38078793          	addi	a5,a5,896 # 80007290 <_ZTV7WorkerD+0x10>
    80001f18:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80001f1c:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80001f20:	00004517          	auipc	a0,0x4
    80001f24:	1e050513          	addi	a0,a0,480 # 80006100 <CONSOLE_STATUS+0xf0>
    80001f28:	fffff097          	auipc	ra,0xfffff
    80001f2c:	788080e7          	jalr	1928(ra) # 800016b0 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80001f30:	00000493          	li	s1,0
    80001f34:	00300793          	li	a5,3
    80001f38:	0297c663          	blt	a5,s1,80001f64 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80001f3c:	00349793          	slli	a5,s1,0x3
    80001f40:	fe040713          	addi	a4,s0,-32
    80001f44:	00f707b3          	add	a5,a4,a5
    80001f48:	fe07b503          	ld	a0,-32(a5)
    80001f4c:	00001097          	auipc	ra,0x1
    80001f50:	9bc080e7          	jalr	-1604(ra) # 80002908 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80001f54:	0014849b          	addiw	s1,s1,1
    80001f58:	fddff06f          	j	80001f34 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80001f5c:	00001097          	auipc	ra,0x1
    80001f60:	984080e7          	jalr	-1660(ra) # 800028e0 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80001f64:	00005797          	auipc	a5,0x5
    80001f68:	4247c783          	lbu	a5,1060(a5) # 80007388 <finishedA>
    80001f6c:	fe0788e3          	beqz	a5,80001f5c <_Z20Threads_CPP_API_testv+0x124>
    80001f70:	00005797          	auipc	a5,0x5
    80001f74:	4197c783          	lbu	a5,1049(a5) # 80007389 <finishedB>
    80001f78:	fe0782e3          	beqz	a5,80001f5c <_Z20Threads_CPP_API_testv+0x124>
    80001f7c:	00005797          	auipc	a5,0x5
    80001f80:	40e7c783          	lbu	a5,1038(a5) # 8000738a <finishedC>
    80001f84:	fc078ce3          	beqz	a5,80001f5c <_Z20Threads_CPP_API_testv+0x124>
    80001f88:	00005797          	auipc	a5,0x5
    80001f8c:	4037c783          	lbu	a5,1027(a5) # 8000738b <finishedD>
    80001f90:	fc0786e3          	beqz	a5,80001f5c <_Z20Threads_CPP_API_testv+0x124>
    }
    printString("Dispecovani\n");
    80001f94:	00004517          	auipc	a0,0x4
    80001f98:	18450513          	addi	a0,a0,388 # 80006118 <CONSOLE_STATUS+0x108>
    80001f9c:	fffff097          	auipc	ra,0xfffff
    80001fa0:	714080e7          	jalr	1812(ra) # 800016b0 <_Z11printStringPKc>
    for (auto thread: threads) { delete thread; }
    80001fa4:	fc040493          	addi	s1,s0,-64
    80001fa8:	0080006f          	j	80001fb0 <_Z20Threads_CPP_API_testv+0x178>
    80001fac:	00848493          	addi	s1,s1,8
    80001fb0:	fe040793          	addi	a5,s0,-32
    80001fb4:	00f48e63          	beq	s1,a5,80001fd0 <_Z20Threads_CPP_API_testv+0x198>
    80001fb8:	0004b503          	ld	a0,0(s1)
    80001fbc:	fe0508e3          	beqz	a0,80001fac <_Z20Threads_CPP_API_testv+0x174>
    80001fc0:	00053783          	ld	a5,0(a0)
    80001fc4:	0087b783          	ld	a5,8(a5)
    80001fc8:	000780e7          	jalr	a5
    80001fcc:	fe1ff06f          	j	80001fac <_Z20Threads_CPP_API_testv+0x174>
    printString("Obrisani\n");
    80001fd0:	00004517          	auipc	a0,0x4
    80001fd4:	15850513          	addi	a0,a0,344 # 80006128 <CONSOLE_STATUS+0x118>
    80001fd8:	fffff097          	auipc	ra,0xfffff
    80001fdc:	6d8080e7          	jalr	1752(ra) # 800016b0 <_Z11printStringPKc>
}
    80001fe0:	03813083          	ld	ra,56(sp)
    80001fe4:	03013403          	ld	s0,48(sp)
    80001fe8:	02813483          	ld	s1,40(sp)
    80001fec:	02013903          	ld	s2,32(sp)
    80001ff0:	04010113          	addi	sp,sp,64
    80001ff4:	00008067          	ret
    80001ff8:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80001ffc:	00048513          	mv	a0,s1
    80002000:	00000097          	auipc	ra,0x0
    80002004:	794080e7          	jalr	1940(ra) # 80002794 <_ZdlPv>
    80002008:	00090513          	mv	a0,s2
    8000200c:	00006097          	auipc	ra,0x6
    80002010:	47c080e7          	jalr	1148(ra) # 80008488 <_Unwind_Resume>
    80002014:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80002018:	00048513          	mv	a0,s1
    8000201c:	00000097          	auipc	ra,0x0
    80002020:	778080e7          	jalr	1912(ra) # 80002794 <_ZdlPv>
    80002024:	00090513          	mv	a0,s2
    80002028:	00006097          	auipc	ra,0x6
    8000202c:	460080e7          	jalr	1120(ra) # 80008488 <_Unwind_Resume>
    80002030:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80002034:	00048513          	mv	a0,s1
    80002038:	00000097          	auipc	ra,0x0
    8000203c:	75c080e7          	jalr	1884(ra) # 80002794 <_ZdlPv>
    80002040:	00090513          	mv	a0,s2
    80002044:	00006097          	auipc	ra,0x6
    80002048:	444080e7          	jalr	1092(ra) # 80008488 <_Unwind_Resume>
    8000204c:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80002050:	00048513          	mv	a0,s1
    80002054:	00000097          	auipc	ra,0x0
    80002058:	740080e7          	jalr	1856(ra) # 80002794 <_ZdlPv>
    8000205c:	00090513          	mv	a0,s2
    80002060:	00006097          	auipc	ra,0x6
    80002064:	428080e7          	jalr	1064(ra) # 80008488 <_Unwind_Resume>

0000000080002068 <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain() {
    80002068:	ff010113          	addi	sp,sp,-16
    8000206c:	00113423          	sd	ra,8(sp)
    80002070:	00813023          	sd	s0,0(sp)
    80002074:	01010413          	addi	s0,sp,16
    //Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta
    80002078:	00000097          	auipc	ra,0x0
    8000207c:	dc0080e7          	jalr	-576(ra) # 80001e38 <_Z20Threads_CPP_API_testv>
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    80002080:	00813083          	ld	ra,8(sp)
    80002084:	00013403          	ld	s0,0(sp)
    80002088:	01010113          	addi	sp,sp,16
    8000208c:	00008067          	ret

0000000080002090 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80002090:	ff010113          	addi	sp,sp,-16
    80002094:	00113423          	sd	ra,8(sp)
    80002098:	00813023          	sd	s0,0(sp)
    8000209c:	01010413          	addi	s0,sp,16
    800020a0:	00005797          	auipc	a5,0x5
    800020a4:	17878793          	addi	a5,a5,376 # 80007218 <_ZTV7WorkerA+0x10>
    800020a8:	00f53023          	sd	a5,0(a0)
    800020ac:	00000097          	auipc	ra,0x0
    800020b0:	62c080e7          	jalr	1580(ra) # 800026d8 <_ZN6ThreadD1Ev>
    800020b4:	00813083          	ld	ra,8(sp)
    800020b8:	00013403          	ld	s0,0(sp)
    800020bc:	01010113          	addi	sp,sp,16
    800020c0:	00008067          	ret

00000000800020c4 <_ZN7WorkerAD0Ev>:
    800020c4:	fe010113          	addi	sp,sp,-32
    800020c8:	00113c23          	sd	ra,24(sp)
    800020cc:	00813823          	sd	s0,16(sp)
    800020d0:	00913423          	sd	s1,8(sp)
    800020d4:	02010413          	addi	s0,sp,32
    800020d8:	00050493          	mv	s1,a0
    800020dc:	00005797          	auipc	a5,0x5
    800020e0:	13c78793          	addi	a5,a5,316 # 80007218 <_ZTV7WorkerA+0x10>
    800020e4:	00f53023          	sd	a5,0(a0)
    800020e8:	00000097          	auipc	ra,0x0
    800020ec:	5f0080e7          	jalr	1520(ra) # 800026d8 <_ZN6ThreadD1Ev>
    800020f0:	00048513          	mv	a0,s1
    800020f4:	00000097          	auipc	ra,0x0
    800020f8:	6a0080e7          	jalr	1696(ra) # 80002794 <_ZdlPv>
    800020fc:	01813083          	ld	ra,24(sp)
    80002100:	01013403          	ld	s0,16(sp)
    80002104:	00813483          	ld	s1,8(sp)
    80002108:	02010113          	addi	sp,sp,32
    8000210c:	00008067          	ret

0000000080002110 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80002110:	ff010113          	addi	sp,sp,-16
    80002114:	00113423          	sd	ra,8(sp)
    80002118:	00813023          	sd	s0,0(sp)
    8000211c:	01010413          	addi	s0,sp,16
    80002120:	00005797          	auipc	a5,0x5
    80002124:	12078793          	addi	a5,a5,288 # 80007240 <_ZTV7WorkerB+0x10>
    80002128:	00f53023          	sd	a5,0(a0)
    8000212c:	00000097          	auipc	ra,0x0
    80002130:	5ac080e7          	jalr	1452(ra) # 800026d8 <_ZN6ThreadD1Ev>
    80002134:	00813083          	ld	ra,8(sp)
    80002138:	00013403          	ld	s0,0(sp)
    8000213c:	01010113          	addi	sp,sp,16
    80002140:	00008067          	ret

0000000080002144 <_ZN7WorkerBD0Ev>:
    80002144:	fe010113          	addi	sp,sp,-32
    80002148:	00113c23          	sd	ra,24(sp)
    8000214c:	00813823          	sd	s0,16(sp)
    80002150:	00913423          	sd	s1,8(sp)
    80002154:	02010413          	addi	s0,sp,32
    80002158:	00050493          	mv	s1,a0
    8000215c:	00005797          	auipc	a5,0x5
    80002160:	0e478793          	addi	a5,a5,228 # 80007240 <_ZTV7WorkerB+0x10>
    80002164:	00f53023          	sd	a5,0(a0)
    80002168:	00000097          	auipc	ra,0x0
    8000216c:	570080e7          	jalr	1392(ra) # 800026d8 <_ZN6ThreadD1Ev>
    80002170:	00048513          	mv	a0,s1
    80002174:	00000097          	auipc	ra,0x0
    80002178:	620080e7          	jalr	1568(ra) # 80002794 <_ZdlPv>
    8000217c:	01813083          	ld	ra,24(sp)
    80002180:	01013403          	ld	s0,16(sp)
    80002184:	00813483          	ld	s1,8(sp)
    80002188:	02010113          	addi	sp,sp,32
    8000218c:	00008067          	ret

0000000080002190 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80002190:	ff010113          	addi	sp,sp,-16
    80002194:	00113423          	sd	ra,8(sp)
    80002198:	00813023          	sd	s0,0(sp)
    8000219c:	01010413          	addi	s0,sp,16
    800021a0:	00005797          	auipc	a5,0x5
    800021a4:	0c878793          	addi	a5,a5,200 # 80007268 <_ZTV7WorkerC+0x10>
    800021a8:	00f53023          	sd	a5,0(a0)
    800021ac:	00000097          	auipc	ra,0x0
    800021b0:	52c080e7          	jalr	1324(ra) # 800026d8 <_ZN6ThreadD1Ev>
    800021b4:	00813083          	ld	ra,8(sp)
    800021b8:	00013403          	ld	s0,0(sp)
    800021bc:	01010113          	addi	sp,sp,16
    800021c0:	00008067          	ret

00000000800021c4 <_ZN7WorkerCD0Ev>:
    800021c4:	fe010113          	addi	sp,sp,-32
    800021c8:	00113c23          	sd	ra,24(sp)
    800021cc:	00813823          	sd	s0,16(sp)
    800021d0:	00913423          	sd	s1,8(sp)
    800021d4:	02010413          	addi	s0,sp,32
    800021d8:	00050493          	mv	s1,a0
    800021dc:	00005797          	auipc	a5,0x5
    800021e0:	08c78793          	addi	a5,a5,140 # 80007268 <_ZTV7WorkerC+0x10>
    800021e4:	00f53023          	sd	a5,0(a0)
    800021e8:	00000097          	auipc	ra,0x0
    800021ec:	4f0080e7          	jalr	1264(ra) # 800026d8 <_ZN6ThreadD1Ev>
    800021f0:	00048513          	mv	a0,s1
    800021f4:	00000097          	auipc	ra,0x0
    800021f8:	5a0080e7          	jalr	1440(ra) # 80002794 <_ZdlPv>
    800021fc:	01813083          	ld	ra,24(sp)
    80002200:	01013403          	ld	s0,16(sp)
    80002204:	00813483          	ld	s1,8(sp)
    80002208:	02010113          	addi	sp,sp,32
    8000220c:	00008067          	ret

0000000080002210 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80002210:	ff010113          	addi	sp,sp,-16
    80002214:	00113423          	sd	ra,8(sp)
    80002218:	00813023          	sd	s0,0(sp)
    8000221c:	01010413          	addi	s0,sp,16
    80002220:	00005797          	auipc	a5,0x5
    80002224:	07078793          	addi	a5,a5,112 # 80007290 <_ZTV7WorkerD+0x10>
    80002228:	00f53023          	sd	a5,0(a0)
    8000222c:	00000097          	auipc	ra,0x0
    80002230:	4ac080e7          	jalr	1196(ra) # 800026d8 <_ZN6ThreadD1Ev>
    80002234:	00813083          	ld	ra,8(sp)
    80002238:	00013403          	ld	s0,0(sp)
    8000223c:	01010113          	addi	sp,sp,16
    80002240:	00008067          	ret

0000000080002244 <_ZN7WorkerDD0Ev>:
    80002244:	fe010113          	addi	sp,sp,-32
    80002248:	00113c23          	sd	ra,24(sp)
    8000224c:	00813823          	sd	s0,16(sp)
    80002250:	00913423          	sd	s1,8(sp)
    80002254:	02010413          	addi	s0,sp,32
    80002258:	00050493          	mv	s1,a0
    8000225c:	00005797          	auipc	a5,0x5
    80002260:	03478793          	addi	a5,a5,52 # 80007290 <_ZTV7WorkerD+0x10>
    80002264:	00f53023          	sd	a5,0(a0)
    80002268:	00000097          	auipc	ra,0x0
    8000226c:	470080e7          	jalr	1136(ra) # 800026d8 <_ZN6ThreadD1Ev>
    80002270:	00048513          	mv	a0,s1
    80002274:	00000097          	auipc	ra,0x0
    80002278:	520080e7          	jalr	1312(ra) # 80002794 <_ZdlPv>
    8000227c:	01813083          	ld	ra,24(sp)
    80002280:	01013403          	ld	s0,16(sp)
    80002284:	00813483          	ld	s1,8(sp)
    80002288:	02010113          	addi	sp,sp,32
    8000228c:	00008067          	ret

0000000080002290 <_ZN7WorkerA3runEv>:
    void run() override {
    80002290:	ff010113          	addi	sp,sp,-16
    80002294:	00113423          	sd	ra,8(sp)
    80002298:	00813023          	sd	s0,0(sp)
    8000229c:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800022a0:	00000593          	li	a1,0
    800022a4:	fffff097          	auipc	ra,0xfffff
    800022a8:	72c080e7          	jalr	1836(ra) # 800019d0 <_ZN7WorkerA11workerBodyAEPv>
    }
    800022ac:	00813083          	ld	ra,8(sp)
    800022b0:	00013403          	ld	s0,0(sp)
    800022b4:	01010113          	addi	sp,sp,16
    800022b8:	00008067          	ret

00000000800022bc <_ZN7WorkerB3runEv>:
    void run() override {
    800022bc:	ff010113          	addi	sp,sp,-16
    800022c0:	00113423          	sd	ra,8(sp)
    800022c4:	00813023          	sd	s0,0(sp)
    800022c8:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800022cc:	00000593          	li	a1,0
    800022d0:	fffff097          	auipc	ra,0xfffff
    800022d4:	7cc080e7          	jalr	1996(ra) # 80001a9c <_ZN7WorkerB11workerBodyBEPv>
    }
    800022d8:	00813083          	ld	ra,8(sp)
    800022dc:	00013403          	ld	s0,0(sp)
    800022e0:	01010113          	addi	sp,sp,16
    800022e4:	00008067          	ret

00000000800022e8 <_ZN7WorkerC3runEv>:
    void run() override {
    800022e8:	ff010113          	addi	sp,sp,-16
    800022ec:	00113423          	sd	ra,8(sp)
    800022f0:	00813023          	sd	s0,0(sp)
    800022f4:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800022f8:	00000593          	li	a1,0
    800022fc:	00000097          	auipc	ra,0x0
    80002300:	874080e7          	jalr	-1932(ra) # 80001b70 <_ZN7WorkerC11workerBodyCEPv>
    }
    80002304:	00813083          	ld	ra,8(sp)
    80002308:	00013403          	ld	s0,0(sp)
    8000230c:	01010113          	addi	sp,sp,16
    80002310:	00008067          	ret

0000000080002314 <_ZN7WorkerD3runEv>:
    void run() override {
    80002314:	ff010113          	addi	sp,sp,-16
    80002318:	00113423          	sd	ra,8(sp)
    8000231c:	00813023          	sd	s0,0(sp)
    80002320:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80002324:	00000593          	li	a1,0
    80002328:	00000097          	auipc	ra,0x0
    8000232c:	9c8080e7          	jalr	-1592(ra) # 80001cf0 <_ZN7WorkerD11workerBodyDEPv>
    }
    80002330:	00813083          	ld	ra,8(sp)
    80002334:	00013403          	ld	s0,0(sp)
    80002338:	01010113          	addi	sp,sp,16
    8000233c:	00008067          	ret

0000000080002340 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(CCB *ccb)
{
    readyCoroutineQueue.addLast(ccb);
    80002340:	ff010113          	addi	sp,sp,-16
    80002344:	00813423          	sd	s0,8(sp)
    80002348:	01010413          	addi	s0,sp,16
    8000234c:	00100793          	li	a5,1
    80002350:	00f50863          	beq	a0,a5,80002360 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002354:	00813403          	ld	s0,8(sp)
    80002358:	01010113          	addi	sp,sp,16
    8000235c:	00008067          	ret
    80002360:	000107b7          	lui	a5,0x10
    80002364:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002368:	fef596e3          	bne	a1,a5,80002354 <_Z41__static_initialization_and_destruction_0ii+0x14>
    8000236c:	00005797          	auipc	a5,0x5
    80002370:	02478793          	addi	a5,a5,36 # 80007390 <_ZN9Scheduler19readyCoroutineQueueE>
    80002374:	0007b023          	sd	zero,0(a5)
    80002378:	0007b423          	sd	zero,8(a5)
    8000237c:	fd9ff06f          	j	80002354 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002380 <_ZN9Scheduler3getEv>:
{
    80002380:	fe010113          	addi	sp,sp,-32
    80002384:	00113c23          	sd	ra,24(sp)
    80002388:	00813823          	sd	s0,16(sp)
    8000238c:	00913423          	sd	s1,8(sp)
    80002390:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    80002394:	00005517          	auipc	a0,0x5
    80002398:	ffc53503          	ld	a0,-4(a0) # 80007390 <_ZN9Scheduler19readyCoroutineQueueE>
    8000239c:	04050263          	beqz	a0,800023e0 <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    800023a0:	00853783          	ld	a5,8(a0)
    800023a4:	00005717          	auipc	a4,0x5
    800023a8:	fef73623          	sd	a5,-20(a4) # 80007390 <_ZN9Scheduler19readyCoroutineQueueE>
        if (!head) { tail = 0; }
    800023ac:	02078463          	beqz	a5,800023d4 <_ZN9Scheduler3getEv+0x54>
        T *ret = elem->data;
    800023b0:	00053483          	ld	s1,0(a0)
            MemoryAllocator::free(address);
    800023b4:	00001097          	auipc	ra,0x1
    800023b8:	afc080e7          	jalr	-1284(ra) # 80002eb0 <_ZN15MemoryAllocator4freeEPv>
}
    800023bc:	00048513          	mv	a0,s1
    800023c0:	01813083          	ld	ra,24(sp)
    800023c4:	01013403          	ld	s0,16(sp)
    800023c8:	00813483          	ld	s1,8(sp)
    800023cc:	02010113          	addi	sp,sp,32
    800023d0:	00008067          	ret
        if (!head) { tail = 0; }
    800023d4:	00005797          	auipc	a5,0x5
    800023d8:	fc07b223          	sd	zero,-60(a5) # 80007398 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    800023dc:	fd5ff06f          	j	800023b0 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    800023e0:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    800023e4:	fd9ff06f          	j	800023bc <_ZN9Scheduler3getEv+0x3c>

00000000800023e8 <_ZN9Scheduler3putEP3CCB>:
{
    800023e8:	fe010113          	addi	sp,sp,-32
    800023ec:	00113c23          	sd	ra,24(sp)
    800023f0:	00813823          	sd	s0,16(sp)
    800023f4:	00913423          	sd	s1,8(sp)
    800023f8:	02010413          	addi	s0,sp,32
    800023fc:	00050493          	mv	s1,a0
            return MemoryAllocator::allocateB(size);
    80002400:	01000513          	li	a0,16
    80002404:	00001097          	auipc	ra,0x1
    80002408:	a14080e7          	jalr	-1516(ra) # 80002e18 <_ZN15MemoryAllocator9allocateBEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    8000240c:	00953023          	sd	s1,0(a0)
    80002410:	00053423          	sd	zero,8(a0)
        if (tail)
    80002414:	00005797          	auipc	a5,0x5
    80002418:	f847b783          	ld	a5,-124(a5) # 80007398 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    8000241c:	02078263          	beqz	a5,80002440 <_ZN9Scheduler3putEP3CCB+0x58>
            tail->next = elem;
    80002420:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002424:	00005797          	auipc	a5,0x5
    80002428:	f6a7ba23          	sd	a0,-140(a5) # 80007398 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    8000242c:	01813083          	ld	ra,24(sp)
    80002430:	01013403          	ld	s0,16(sp)
    80002434:	00813483          	ld	s1,8(sp)
    80002438:	02010113          	addi	sp,sp,32
    8000243c:	00008067          	ret
            head = tail = elem;
    80002440:	00005797          	auipc	a5,0x5
    80002444:	f5078793          	addi	a5,a5,-176 # 80007390 <_ZN9Scheduler19readyCoroutineQueueE>
    80002448:	00a7b423          	sd	a0,8(a5)
    8000244c:	00a7b023          	sd	a0,0(a5)
    80002450:	fddff06f          	j	8000242c <_ZN9Scheduler3putEP3CCB+0x44>

0000000080002454 <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    80002454:	ff010113          	addi	sp,sp,-16
    80002458:	00113423          	sd	ra,8(sp)
    8000245c:	00813023          	sd	s0,0(sp)
    80002460:	01010413          	addi	s0,sp,16
    80002464:	000105b7          	lui	a1,0x10
    80002468:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    8000246c:	00100513          	li	a0,1
    80002470:	00000097          	auipc	ra,0x0
    80002474:	ed0080e7          	jalr	-304(ra) # 80002340 <_Z41__static_initialization_and_destruction_0ii>
    80002478:	00813083          	ld	ra,8(sp)
    8000247c:	00013403          	ld	s0,0(sp)
    80002480:	01010113          	addi	sp,sp,16
    80002484:	00008067          	ret

0000000080002488 <main>:
#include "../h/printing.hpp"
#include "../h/syscall_c.h"
void userMain();
uint64 backupSP;

void main(){
    80002488:	ff010113          	addi	sp,sp,-16
    8000248c:	00113423          	sd	ra,8(sp)
    80002490:	00813023          	sd	s0,0(sp)
    80002494:	01010413          	addi	s0,sp,16

    //Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    Riscv::w_stvec((uint64) &Riscv::interruptRoutine);
    80002498:	00005797          	auipc	a5,0x5
    8000249c:	e687b783          	ld	a5,-408(a5) # 80007300 <_GLOBAL_OFFSET_TABLE_+0x8>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800024a0:	10579073          	csrw	stvec,a5
    thread_create(&CCB::running, nullptr, nullptr);
    800024a4:	00000613          	li	a2,0
    800024a8:	00000593          	li	a1,0
    800024ac:	00005517          	auipc	a0,0x5
    800024b0:	e6c53503          	ld	a0,-404(a0) # 80007318 <_GLOBAL_OFFSET_TABLE_+0x20>
    800024b4:	fffff097          	auipc	ra,0xfffff
    800024b8:	df8080e7          	jalr	-520(ra) # 800012ac <_Z13thread_createPP3CCBPFvPvES2_>
    userMain();
    800024bc:	00000097          	auipc	ra,0x0
    800024c0:	bac080e7          	jalr	-1108(ra) # 80002068 <_Z8userMainv>
    printString("Vraceno\n");
    800024c4:	00004517          	auipc	a0,0x4
    800024c8:	c7450513          	addi	a0,a0,-908 # 80006138 <CONSOLE_STATUS+0x128>
    800024cc:	fffff097          	auipc	ra,0xfffff
    800024d0:	1e4080e7          	jalr	484(ra) # 800016b0 <_Z11printStringPKc>
}
    800024d4:	00813083          	ld	ra,8(sp)
    800024d8:	00013403          	ld	s0,0(sp)
    800024dc:	01010113          	addi	sp,sp,16
    800024e0:	00008067          	ret

00000000800024e4 <_ZN3CCB13threadWrapperEv>:
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    running = Scheduler::get();
    CCB::contextSwitch(&old->context, &running->context);
}

void CCB::threadWrapper() {
    800024e4:	fe010113          	addi	sp,sp,-32
    800024e8:	00113c23          	sd	ra,24(sp)
    800024ec:	00813823          	sd	s0,16(sp)
    800024f0:	00913423          	sd	s1,8(sp)
    800024f4:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    800024f8:	00000097          	auipc	ra,0x0
    800024fc:	500080e7          	jalr	1280(ra) # 800029f8 <_ZN5Riscv10popSppSpieEv>
    running->body(running->args);
    80002500:	00005497          	auipc	s1,0x5
    80002504:	ea848493          	addi	s1,s1,-344 # 800073a8 <_ZN3CCB7runningE>
    80002508:	0004b783          	ld	a5,0(s1)
    8000250c:	0007b703          	ld	a4,0(a5)
    80002510:	0107b503          	ld	a0,16(a5)
    80002514:	000700e7          	jalr	a4
    running->setFinished(true);
    80002518:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value;}
    8000251c:	00100713          	li	a4,1
    80002520:	02e78423          	sb	a4,40(a5)
    thread_dispatch();
    80002524:	fffff097          	auipc	ra,0xfffff
    80002528:	db8080e7          	jalr	-584(ra) # 800012dc <_Z15thread_dispatchv>
    8000252c:	01813083          	ld	ra,24(sp)
    80002530:	01013403          	ld	s0,16(sp)
    80002534:	00813483          	ld	s1,8(sp)
    80002538:	02010113          	addi	sp,sp,32
    8000253c:	00008067          	ret

0000000080002540 <_ZN3CCB15createCoroutineEPFvPvES0_>:
{
    80002540:	fd010113          	addi	sp,sp,-48
    80002544:	02113423          	sd	ra,40(sp)
    80002548:	02813023          	sd	s0,32(sp)
    8000254c:	00913c23          	sd	s1,24(sp)
    80002550:	01213823          	sd	s2,16(sp)
    80002554:	01313423          	sd	s3,8(sp)
    80002558:	03010413          	addi	s0,sp,48
    8000255c:	00050913          	mv	s2,a0
    80002560:	00058993          	mv	s3,a1
        return MemoryAllocator::allocateB(size);
    80002564:	03000513          	li	a0,48
    80002568:	00001097          	auipc	ra,0x1
    8000256c:	8b0080e7          	jalr	-1872(ra) # 80002e18 <_ZN15MemoryAllocator9allocateBEm>
    80002570:	00050493          	mv	s1,a0
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            finished(false),
            blocked(false),
            started(false)
    80002574:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? (uint64*) MemoryAllocator::allocateB(sizeof(uint64) * STACK_SIZE) : nullptr),
    80002578:	00090a63          	beqz	s2,8000258c <_ZN3CCB15createCoroutineEPFvPvES0_+0x4c>
    8000257c:	00002537          	lui	a0,0x2
    80002580:	00001097          	auipc	ra,0x1
    80002584:	898080e7          	jalr	-1896(ra) # 80002e18 <_ZN15MemoryAllocator9allocateBEm>
    80002588:	0080006f          	j	80002590 <_ZN3CCB15createCoroutineEPFvPvES0_+0x50>
    8000258c:	00000513          	li	a0,0
            started(false)
    80002590:	00a4b423          	sd	a0,8(s1)
    80002594:	0134b823          	sd	s3,16(s1)
    80002598:	00000797          	auipc	a5,0x0
    8000259c:	f4c78793          	addi	a5,a5,-180 # 800024e4 <_ZN3CCB13threadWrapperEv>
    800025a0:	00f4bc23          	sd	a5,24(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    800025a4:	02050e63          	beqz	a0,800025e0 <_ZN3CCB15createCoroutineEPFvPvES0_+0xa0>
    800025a8:	000027b7          	lui	a5,0x2
    800025ac:	00f50533          	add	a0,a0,a5
            started(false)
    800025b0:	02a4b023          	sd	a0,32(s1)
    800025b4:	02048423          	sb	zero,40(s1)
    800025b8:	020484a3          	sb	zero,41(s1)
    800025bc:	02048523          	sb	zero,42(s1)
}
    800025c0:	00048513          	mv	a0,s1
    800025c4:	02813083          	ld	ra,40(sp)
    800025c8:	02013403          	ld	s0,32(sp)
    800025cc:	01813483          	ld	s1,24(sp)
    800025d0:	01013903          	ld	s2,16(sp)
    800025d4:	00813983          	ld	s3,8(sp)
    800025d8:	03010113          	addi	sp,sp,48
    800025dc:	00008067          	ret
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    800025e0:	00000513          	li	a0,0
    800025e4:	fcdff06f          	j	800025b0 <_ZN3CCB15createCoroutineEPFvPvES0_+0x70>
    800025e8:	00050913          	mv	s2,a0
        MemoryAllocator::free(address);
    800025ec:	00048513          	mv	a0,s1
    800025f0:	00001097          	auipc	ra,0x1
    800025f4:	8c0080e7          	jalr	-1856(ra) # 80002eb0 <_ZN15MemoryAllocator4freeEPv>
    800025f8:	00090513          	mv	a0,s2
    800025fc:	00006097          	auipc	ra,0x6
    80002600:	e8c080e7          	jalr	-372(ra) # 80008488 <_Unwind_Resume>

0000000080002604 <_ZN3CCB8dispatchEv>:
{
    80002604:	fe010113          	addi	sp,sp,-32
    80002608:	00113c23          	sd	ra,24(sp)
    8000260c:	00813823          	sd	s0,16(sp)
    80002610:	00913423          	sd	s1,8(sp)
    80002614:	02010413          	addi	s0,sp,32
    CCB *old = running;
    80002618:	00005497          	auipc	s1,0x5
    8000261c:	d904b483          	ld	s1,-624(s1) # 800073a8 <_ZN3CCB7runningE>
    bool isFinished() const { return finished; }
    80002620:	0284c783          	lbu	a5,40(s1)
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    80002624:	00079663          	bnez	a5,80002630 <_ZN3CCB8dispatchEv+0x2c>
    bool isBlocked() const { return blocked; }
    80002628:	0294c783          	lbu	a5,41(s1)
    8000262c:	02078c63          	beqz	a5,80002664 <_ZN3CCB8dispatchEv+0x60>
    running = Scheduler::get();
    80002630:	00000097          	auipc	ra,0x0
    80002634:	d50080e7          	jalr	-688(ra) # 80002380 <_ZN9Scheduler3getEv>
    80002638:	00005797          	auipc	a5,0x5
    8000263c:	d6a7b823          	sd	a0,-656(a5) # 800073a8 <_ZN3CCB7runningE>
    CCB::contextSwitch(&old->context, &running->context);
    80002640:	01850593          	addi	a1,a0,24 # 2018 <_entry-0x7fffdfe8>
    80002644:	01848513          	addi	a0,s1,24
    80002648:	fffff097          	auipc	ra,0xfffff
    8000264c:	be0080e7          	jalr	-1056(ra) # 80001228 <_ZN3CCB13contextSwitchEPNS_7ContextES1_>
}
    80002650:	01813083          	ld	ra,24(sp)
    80002654:	01013403          	ld	s0,16(sp)
    80002658:	00813483          	ld	s1,8(sp)
    8000265c:	02010113          	addi	sp,sp,32
    80002660:	00008067          	ret
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    80002664:	00048513          	mv	a0,s1
    80002668:	00000097          	auipc	ra,0x0
    8000266c:	d80080e7          	jalr	-640(ra) # 800023e8 <_ZN9Scheduler3putEP3CCB>
    80002670:	fc1ff06f          	j	80002630 <_ZN3CCB8dispatchEv+0x2c>

0000000080002674 <_ZN3CCB5yieldEv>:
{
    80002674:	ff010113          	addi	sp,sp,-16
    80002678:	00113423          	sd	ra,8(sp)
    8000267c:	00813023          	sd	s0,0(sp)
    80002680:	01010413          	addi	s0,sp,16
    Riscv::pushRegisters();
    80002684:	fffff097          	auipc	ra,0xfffff
    80002688:	a8c080e7          	jalr	-1396(ra) # 80001110 <_ZN5Riscv13pushRegistersEv>
    CCB::dispatch();
    8000268c:	00000097          	auipc	ra,0x0
    80002690:	f78080e7          	jalr	-136(ra) # 80002604 <_ZN3CCB8dispatchEv>
    Riscv::popRegisters();
    80002694:	fffff097          	auipc	ra,0xfffff
    80002698:	af8080e7          	jalr	-1288(ra) # 8000118c <_ZN5Riscv12popRegistersEv>
}
    8000269c:	00813083          	ld	ra,8(sp)
    800026a0:	00013403          	ld	s0,0(sp)
    800026a4:	01010113          	addi	sp,sp,16
    800026a8:	00008067          	ret

00000000800026ac <_ZN6Thread7wrapperEPv>:
Thread::~Thread() {
    thread_exit();
}
void Thread::dispatch() { thread_dispatch(); }

void Thread::wrapper(void *args) { ((Thread*) args)->run(); }
    800026ac:	ff010113          	addi	sp,sp,-16
    800026b0:	00113423          	sd	ra,8(sp)
    800026b4:	00813023          	sd	s0,0(sp)
    800026b8:	01010413          	addi	s0,sp,16
    800026bc:	00053783          	ld	a5,0(a0)
    800026c0:	0107b783          	ld	a5,16(a5)
    800026c4:	000780e7          	jalr	a5
    800026c8:	00813083          	ld	ra,8(sp)
    800026cc:	00013403          	ld	s0,0(sp)
    800026d0:	01010113          	addi	sp,sp,16
    800026d4:	00008067          	ret

00000000800026d8 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    800026d8:	ff010113          	addi	sp,sp,-16
    800026dc:	00113423          	sd	ra,8(sp)
    800026e0:	00813023          	sd	s0,0(sp)
    800026e4:	01010413          	addi	s0,sp,16
    800026e8:	00005797          	auipc	a5,0x5
    800026ec:	bd878793          	addi	a5,a5,-1064 # 800072c0 <_ZTV6Thread+0x10>
    800026f0:	00f53023          	sd	a5,0(a0)
    thread_exit();
    800026f4:	fffff097          	auipc	ra,0xfffff
    800026f8:	c08080e7          	jalr	-1016(ra) # 800012fc <_Z11thread_exitv>
}
    800026fc:	00813083          	ld	ra,8(sp)
    80002700:	00013403          	ld	s0,0(sp)
    80002704:	01010113          	addi	sp,sp,16
    80002708:	00008067          	ret

000000008000270c <_ZN9SemaphoreD1Ev>:
   return sem_signal(myHandle);
}
int Semaphore::wait() {
    return sem_wait(myHandle);
}
Semaphore::~Semaphore() {
    8000270c:	ff010113          	addi	sp,sp,-16
    80002710:	00113423          	sd	ra,8(sp)
    80002714:	00813023          	sd	s0,0(sp)
    80002718:	01010413          	addi	s0,sp,16
    8000271c:	00005797          	auipc	a5,0x5
    80002720:	bcc78793          	addi	a5,a5,-1076 # 800072e8 <_ZTV9Semaphore+0x10>
    80002724:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80002728:	00853503          	ld	a0,8(a0)
    8000272c:	fffff097          	auipc	ra,0xfffff
    80002730:	c50080e7          	jalr	-944(ra) # 8000137c <_Z9sem_closeP13Semaphore_sys>
}
    80002734:	00813083          	ld	ra,8(sp)
    80002738:	00013403          	ld	s0,0(sp)
    8000273c:	01010113          	addi	sp,sp,16
    80002740:	00008067          	ret

0000000080002744 <_Znwm>:
void* operator new(size_t size) {
    80002744:	ff010113          	addi	sp,sp,-16
    80002748:	00113423          	sd	ra,8(sp)
    8000274c:	00813023          	sd	s0,0(sp)
    80002750:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80002754:	fffff097          	auipc	ra,0xfffff
    80002758:	ae8080e7          	jalr	-1304(ra) # 8000123c <_Z9mem_allocm>
}
    8000275c:	00813083          	ld	ra,8(sp)
    80002760:	00013403          	ld	s0,0(sp)
    80002764:	01010113          	addi	sp,sp,16
    80002768:	00008067          	ret

000000008000276c <_Znam>:
void* operator new[](size_t size) {
    8000276c:	ff010113          	addi	sp,sp,-16
    80002770:	00113423          	sd	ra,8(sp)
    80002774:	00813023          	sd	s0,0(sp)
    80002778:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    8000277c:	fffff097          	auipc	ra,0xfffff
    80002780:	ac0080e7          	jalr	-1344(ra) # 8000123c <_Z9mem_allocm>
}
    80002784:	00813083          	ld	ra,8(sp)
    80002788:	00013403          	ld	s0,0(sp)
    8000278c:	01010113          	addi	sp,sp,16
    80002790:	00008067          	ret

0000000080002794 <_ZdlPv>:
void operator delete(void* address) {
    80002794:	ff010113          	addi	sp,sp,-16
    80002798:	00113423          	sd	ra,8(sp)
    8000279c:	00813023          	sd	s0,0(sp)
    800027a0:	01010413          	addi	s0,sp,16
    mem_free(address);
    800027a4:	fffff097          	auipc	ra,0xfffff
    800027a8:	ae4080e7          	jalr	-1308(ra) # 80001288 <_Z8mem_freePv>
}
    800027ac:	00813083          	ld	ra,8(sp)
    800027b0:	00013403          	ld	s0,0(sp)
    800027b4:	01010113          	addi	sp,sp,16
    800027b8:	00008067          	ret

00000000800027bc <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    800027bc:	fe010113          	addi	sp,sp,-32
    800027c0:	00113c23          	sd	ra,24(sp)
    800027c4:	00813823          	sd	s0,16(sp)
    800027c8:	00913423          	sd	s1,8(sp)
    800027cc:	02010413          	addi	s0,sp,32
    800027d0:	00050493          	mv	s1,a0
}
    800027d4:	00000097          	auipc	ra,0x0
    800027d8:	f04080e7          	jalr	-252(ra) # 800026d8 <_ZN6ThreadD1Ev>
    800027dc:	00048513          	mv	a0,s1
    800027e0:	00000097          	auipc	ra,0x0
    800027e4:	fb4080e7          	jalr	-76(ra) # 80002794 <_ZdlPv>
    800027e8:	01813083          	ld	ra,24(sp)
    800027ec:	01013403          	ld	s0,16(sp)
    800027f0:	00813483          	ld	s1,8(sp)
    800027f4:	02010113          	addi	sp,sp,32
    800027f8:	00008067          	ret

00000000800027fc <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800027fc:	fe010113          	addi	sp,sp,-32
    80002800:	00113c23          	sd	ra,24(sp)
    80002804:	00813823          	sd	s0,16(sp)
    80002808:	00913423          	sd	s1,8(sp)
    8000280c:	02010413          	addi	s0,sp,32
    80002810:	00050493          	mv	s1,a0
}
    80002814:	00000097          	auipc	ra,0x0
    80002818:	ef8080e7          	jalr	-264(ra) # 8000270c <_ZN9SemaphoreD1Ev>
    8000281c:	00048513          	mv	a0,s1
    80002820:	00000097          	auipc	ra,0x0
    80002824:	f74080e7          	jalr	-140(ra) # 80002794 <_ZdlPv>
    80002828:	01813083          	ld	ra,24(sp)
    8000282c:	01013403          	ld	s0,16(sp)
    80002830:	00813483          	ld	s1,8(sp)
    80002834:	02010113          	addi	sp,sp,32
    80002838:	00008067          	ret

000000008000283c <_ZdaPv>:
void operator delete[](void* address) {
    8000283c:	ff010113          	addi	sp,sp,-16
    80002840:	00113423          	sd	ra,8(sp)
    80002844:	00813023          	sd	s0,0(sp)
    80002848:	01010413          	addi	s0,sp,16
    mem_free(address);
    8000284c:	fffff097          	auipc	ra,0xfffff
    80002850:	a3c080e7          	jalr	-1476(ra) # 80001288 <_Z8mem_freePv>
}
    80002854:	00813083          	ld	ra,8(sp)
    80002858:	00013403          	ld	s0,0(sp)
    8000285c:	01010113          	addi	sp,sp,16
    80002860:	00008067          	ret

0000000080002864 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args) {
    80002864:	ff010113          	addi	sp,sp,-16
    80002868:	00113423          	sd	ra,8(sp)
    8000286c:	00813023          	sd	s0,0(sp)
    80002870:	01010413          	addi	s0,sp,16
    80002874:	00005797          	auipc	a5,0x5
    80002878:	a4c78793          	addi	a5,a5,-1460 # 800072c0 <_ZTV6Thread+0x10>
    8000287c:	00f53023          	sd	a5,0(a0)
    thread_create_NOT_STARTED(&myHandle, body, args);
    80002880:	00850513          	addi	a0,a0,8
    80002884:	fffff097          	auipc	ra,0xfffff
    80002888:	a9c080e7          	jalr	-1380(ra) # 80001320 <_Z25thread_create_NOT_STARTEDPP3CCBPFvPvES2_>
}
    8000288c:	00813083          	ld	ra,8(sp)
    80002890:	00013403          	ld	s0,0(sp)
    80002894:	01010113          	addi	sp,sp,16
    80002898:	00008067          	ret

000000008000289c <_ZN6ThreadC1Ev>:
Thread::Thread() {
    8000289c:	ff010113          	addi	sp,sp,-16
    800028a0:	00113423          	sd	ra,8(sp)
    800028a4:	00813023          	sd	s0,0(sp)
    800028a8:	01010413          	addi	s0,sp,16
    800028ac:	00005797          	auipc	a5,0x5
    800028b0:	a1478793          	addi	a5,a5,-1516 # 800072c0 <_ZTV6Thread+0x10>
    800028b4:	00f53023          	sd	a5,0(a0)
    thread_create_NOT_STARTED(&myHandle, wrapper, this);
    800028b8:	00050613          	mv	a2,a0
    800028bc:	00000597          	auipc	a1,0x0
    800028c0:	df058593          	addi	a1,a1,-528 # 800026ac <_ZN6Thread7wrapperEPv>
    800028c4:	00850513          	addi	a0,a0,8
    800028c8:	fffff097          	auipc	ra,0xfffff
    800028cc:	a58080e7          	jalr	-1448(ra) # 80001320 <_Z25thread_create_NOT_STARTEDPP3CCBPFvPvES2_>
}
    800028d0:	00813083          	ld	ra,8(sp)
    800028d4:	00013403          	ld	s0,0(sp)
    800028d8:	01010113          	addi	sp,sp,16
    800028dc:	00008067          	ret

00000000800028e0 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() { thread_dispatch(); }
    800028e0:	ff010113          	addi	sp,sp,-16
    800028e4:	00113423          	sd	ra,8(sp)
    800028e8:	00813023          	sd	s0,0(sp)
    800028ec:	01010413          	addi	s0,sp,16
    800028f0:	fffff097          	auipc	ra,0xfffff
    800028f4:	9ec080e7          	jalr	-1556(ra) # 800012dc <_Z15thread_dispatchv>
    800028f8:	00813083          	ld	ra,8(sp)
    800028fc:	00013403          	ld	s0,0(sp)
    80002900:	01010113          	addi	sp,sp,16
    80002904:	00008067          	ret

0000000080002908 <_ZN6Thread5startEv>:
int Thread::start() {
    80002908:	fe010113          	addi	sp,sp,-32
    8000290c:	00113c23          	sd	ra,24(sp)
    80002910:	00813823          	sd	s0,16(sp)
    80002914:	00913423          	sd	s1,8(sp)
    80002918:	02010413          	addi	s0,sp,32
    8000291c:	00050493          	mv	s1,a0
    Scheduler::put(myHandle);
    80002920:	00853503          	ld	a0,8(a0)
    80002924:	00000097          	auipc	ra,0x0
    80002928:	ac4080e7          	jalr	-1340(ra) # 800023e8 <_ZN9Scheduler3putEP3CCB>
    myHandle->setStarted(true);
    8000292c:	0084b783          	ld	a5,8(s1)
    void setStarted(bool value) { started = value; }
    80002930:	00100713          	li	a4,1
    80002934:	02e78523          	sb	a4,42(a5)
}
    80002938:	00100513          	li	a0,1
    8000293c:	01813083          	ld	ra,24(sp)
    80002940:	01013403          	ld	s0,16(sp)
    80002944:	00813483          	ld	s1,8(sp)
    80002948:	02010113          	addi	sp,sp,32
    8000294c:	00008067          	ret

0000000080002950 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80002950:	ff010113          	addi	sp,sp,-16
    80002954:	00113423          	sd	ra,8(sp)
    80002958:	00813023          	sd	s0,0(sp)
    8000295c:	01010413          	addi	s0,sp,16
   return sem_signal(myHandle);
    80002960:	00853503          	ld	a0,8(a0)
    80002964:	fffff097          	auipc	ra,0xfffff
    80002968:	a80080e7          	jalr	-1408(ra) # 800013e4 <_Z10sem_signalP13Semaphore_sys>
}
    8000296c:	00813083          	ld	ra,8(sp)
    80002970:	00013403          	ld	s0,0(sp)
    80002974:	01010113          	addi	sp,sp,16
    80002978:	00008067          	ret

000000008000297c <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    8000297c:	ff010113          	addi	sp,sp,-16
    80002980:	00113423          	sd	ra,8(sp)
    80002984:	00813023          	sd	s0,0(sp)
    80002988:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    8000298c:	00853503          	ld	a0,8(a0)
    80002990:	fffff097          	auipc	ra,0xfffff
    80002994:	a20080e7          	jalr	-1504(ra) # 800013b0 <_Z8sem_waitP13Semaphore_sys>
}
    80002998:	00813083          	ld	ra,8(sp)
    8000299c:	00013403          	ld	s0,0(sp)
    800029a0:	01010113          	addi	sp,sp,16
    800029a4:	00008067          	ret

00000000800029a8 <_ZN9SemaphoreC1Ej>:

Semaphore::Semaphore(unsigned int init) {
    800029a8:	ff010113          	addi	sp,sp,-16
    800029ac:	00113423          	sd	ra,8(sp)
    800029b0:	00813023          	sd	s0,0(sp)
    800029b4:	01010413          	addi	s0,sp,16
    800029b8:	00005797          	auipc	a5,0x5
    800029bc:	93078793          	addi	a5,a5,-1744 # 800072e8 <_ZTV9Semaphore+0x10>
    800029c0:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    800029c4:	00850513          	addi	a0,a0,8
    800029c8:	fffff097          	auipc	ra,0xfffff
    800029cc:	988080e7          	jalr	-1656(ra) # 80001350 <_Z8sem_openPP13Semaphore_sysj>
    800029d0:	00813083          	ld	ra,8(sp)
    800029d4:	00013403          	ld	s0,0(sp)
    800029d8:	01010113          	addi	sp,sp,16
    800029dc:	00008067          	ret

00000000800029e0 <_ZN6Thread3runEv>:
    static void wrapper(void* args);
private:
    thread_t myHandle;
protected:
    Thread();
    virtual void run() {}
    800029e0:	ff010113          	addi	sp,sp,-16
    800029e4:	00813423          	sd	s0,8(sp)
    800029e8:	01010413          	addi	s0,sp,16
    800029ec:	00813403          	ld	s0,8(sp)
    800029f0:	01010113          	addi	sp,sp,16
    800029f4:	00008067          	ret

00000000800029f8 <_ZN5Riscv10popSppSpieEv>:

extern uint64 backupSP;


void Riscv::popSppSpie()
{
    800029f8:	ff010113          	addi	sp,sp,-16
    800029fc:	00813423          	sd	s0,8(sp)
    80002a00:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002a04:	10000793          	li	a5,256
    80002a08:	1007a073          	csrs	sstatus,a5
    ms_sstatus(SSTATUS_SPP);
    __asm__ volatile ("csrw sepc, ra");
    80002a0c:	14109073          	csrw	sepc,ra
    __asm__ volatile ("csrc sip, 0x02");
    80002a10:	14417073          	csrci	sip,2
    __asm__ volatile ("sret");
    80002a14:	10200073          	sret
}
    80002a18:	00813403          	ld	s0,8(sp)
    80002a1c:	01010113          	addi	sp,sp,16
    80002a20:	00008067          	ret

0000000080002a24 <_ZN5Riscv16interruptHandlerEv>:

void Riscv::interruptHandler() {
    80002a24:	f7010113          	addi	sp,sp,-144
    80002a28:	08113423          	sd	ra,136(sp)
    80002a2c:	08813023          	sd	s0,128(sp)
    80002a30:	06913c23          	sd	s1,120(sp)
    80002a34:	07213823          	sd	s2,112(sp)
    80002a38:	09010413          	addi	s0,sp,144
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80002a3c:	142027f3          	csrr	a5,scause
    80002a40:	f6f43c23          	sd	a5,-136(s0)
    return scause;
    80002a44:	f7843703          	ld	a4,-136(s0)
    uint64 scause = Riscv::r_scause();
    if (scause == INTR_TIMER)
    80002a48:	fff00793          	li	a5,-1
    80002a4c:	03f79793          	slli	a5,a5,0x3f
    80002a50:	00178793          	addi	a5,a5,1
    80002a54:	02f70663          	beq	a4,a5,80002a80 <_ZN5Riscv16interruptHandlerEv+0x5c>
        //     w_sstatus(sstatus);
        //     w_sepc(sepc);
        // }
        mc_sip(SIP_SSIP);
    }
    else if(scause == ECALL_USER || scause == ECALL_SUPERVISOR){
    80002a58:	ff870793          	addi	a5,a4,-8
    80002a5c:	00100693          	li	a3,1
    80002a60:	04f6f463          	bgeu	a3,a5,80002aa8 <_ZN5Riscv16interruptHandlerEv+0x84>
            w_sepc(sepc);
            w_sstatus(sstatus);
        }

    }
    else if (scause == 0x8000000000000009UL) {
    80002a64:	fff00793          	li	a5,-1
    80002a68:	03f79793          	slli	a5,a5,0x3f
    80002a6c:	00978793          	addi	a5,a5,9
    80002a70:	00f71c63          	bne	a4,a5,80002a88 <_ZN5Riscv16interruptHandlerEv+0x64>
        console_handler();
    80002a74:	00003097          	auipc	ra,0x3
    80002a78:	94c080e7          	jalr	-1716(ra) # 800053c0 <console_handler>
    80002a7c:	00c0006f          	j	80002a88 <_ZN5Riscv16interruptHandlerEv+0x64>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002a80:	00200793          	li	a5,2
    80002a84:	1447b073          	csrc	sip,a5
    //else {
    //    printString("Error ");
    //    printInteger(r_scause());
    //    printString("\n");
    //}
    console_handler();
    80002a88:	00003097          	auipc	ra,0x3
    80002a8c:	938080e7          	jalr	-1736(ra) # 800053c0 <console_handler>
    80002a90:	08813083          	ld	ra,136(sp)
    80002a94:	08013403          	ld	s0,128(sp)
    80002a98:	07813483          	ld	s1,120(sp)
    80002a9c:	07013903          	ld	s2,112(sp)
    80002aa0:	09010113          	addi	sp,sp,144
    80002aa4:	00008067          	ret
        __asm__ volatile("mv %0, a0" : "=r" (intrId));
    80002aa8:	00050793          	mv	a5,a0
        if(intrId == MEM_ALLOC){
    80002aac:	00100713          	li	a4,1
    80002ab0:	08e78063          	beq	a5,a4,80002b30 <_ZN5Riscv16interruptHandlerEv+0x10c>
        else if(intrId == MEM_FREE){
    80002ab4:	00200713          	li	a4,2
    80002ab8:	0ae78663          	beq	a5,a4,80002b64 <_ZN5Riscv16interruptHandlerEv+0x140>
        else if(intrId == THREAD_CREATE_NOSTART){
    80002abc:	01400713          	li	a4,20
    80002ac0:	0ce78c63          	beq	a5,a4,80002b98 <_ZN5Riscv16interruptHandlerEv+0x174>
        else if(intrId == THREAD_CREATE){
    80002ac4:	01100713          	li	a4,17
    80002ac8:	10e78863          	beq	a5,a4,80002bd8 <_ZN5Riscv16interruptHandlerEv+0x1b4>
        else if(intrId == THREAD_DISPATCH) {
    80002acc:	01300713          	li	a4,19
    80002ad0:	14e78863          	beq	a5,a4,80002c20 <_ZN5Riscv16interruptHandlerEv+0x1fc>
        else if(intrId == THREAD_EXIT){
    80002ad4:	01200713          	li	a4,18
    80002ad8:	16e78c63          	beq	a5,a4,80002c50 <_ZN5Riscv16interruptHandlerEv+0x22c>
        else if(intrId == SEM_OPEN) {
    80002adc:	02100713          	li	a4,33
    80002ae0:	18e78e63          	beq	a5,a4,80002c7c <_ZN5Riscv16interruptHandlerEv+0x258>
        else if(intrId == SEM_CLOSE) {
    80002ae4:	02200713          	li	a4,34
    80002ae8:	1ce78263          	beq	a5,a4,80002cac <_ZN5Riscv16interruptHandlerEv+0x288>
        else if(intrId == SEM_SIGNAL) {
    80002aec:	02400713          	li	a4,36
    80002af0:	1ee78263          	beq	a5,a4,80002cd4 <_ZN5Riscv16interruptHandlerEv+0x2b0>
        else if(intrId == SEM_WAIT) {
    80002af4:	02300713          	li	a4,35
    80002af8:	f8e798e3          	bne	a5,a4,80002a88 <_ZN5Riscv16interruptHandlerEv+0x64>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002afc:	141027f3          	csrr	a5,sepc
    80002b00:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80002b04:	fd843483          	ld	s1,-40(s0)
            uint64 sepc = r_sepc() + 4;
    80002b08:	00448493          	addi	s1,s1,4
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002b0c:	100027f3          	csrr	a5,sstatus
    80002b10:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80002b14:	fd043903          	ld	s2,-48(s0)
            __asm__ volatile ("mv %0, a1" : "=r" (handle));
    80002b18:	00058513          	mv	a0,a1
            handle->wait();
    80002b1c:	fffff097          	auipc	ra,0xfffff
    80002b20:	b10080e7          	jalr	-1264(ra) # 8000162c <_ZN13Semaphore_sys4waitEv>
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002b24:	14149073          	csrw	sepc,s1
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002b28:	10091073          	csrw	sstatus,s2
}
    80002b2c:	f5dff06f          	j	80002a88 <_ZN5Riscv16interruptHandlerEv+0x64>
            asm ("mv %0, a1" : "=r" (numBlocks));
    80002b30:	00058513          	mv	a0,a1
            MemoryAllocator::allocate(numBlocks);
    80002b34:	00000097          	auipc	ra,0x0
    80002b38:	1c4080e7          	jalr	452(ra) # 80002cf8 <_ZN15MemoryAllocator8allocateEm>
            __asm__ volatile("sd a0, 0x50(%0)" : : "r" (backupSP));
    80002b3c:	00004797          	auipc	a5,0x4
    80002b40:	7ec7b783          	ld	a5,2028(a5) # 80007328 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002b44:	0007b783          	ld	a5,0(a5)
    80002b48:	04a7b823          	sd	a0,80(a5)
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002b4c:	141027f3          	csrr	a5,sepc
    80002b50:	f8f43023          	sd	a5,-128(s0)
    return sepc;
    80002b54:	f8043783          	ld	a5,-128(s0)
            w_sepc(r_sepc() + 4);
    80002b58:	00478793          	addi	a5,a5,4
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002b5c:	14179073          	csrw	sepc,a5
}
    80002b60:	f29ff06f          	j	80002a88 <_ZN5Riscv16interruptHandlerEv+0x64>
            __asm__ volatile("mv %0, a1" : "=r" (address));
    80002b64:	00058513          	mv	a0,a1
            MemoryAllocator::free(address);
    80002b68:	00000097          	auipc	ra,0x0
    80002b6c:	348080e7          	jalr	840(ra) # 80002eb0 <_ZN15MemoryAllocator4freeEPv>
            __asm__ volatile("sd a0, 0x50(%0)" : : "r" (backupSP));
    80002b70:	00004797          	auipc	a5,0x4
    80002b74:	7b87b783          	ld	a5,1976(a5) # 80007328 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002b78:	0007b783          	ld	a5,0(a5)
    80002b7c:	04a7b823          	sd	a0,80(a5)
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002b80:	141027f3          	csrr	a5,sepc
    80002b84:	f8f43423          	sd	a5,-120(s0)
    return sepc;
    80002b88:	f8843783          	ld	a5,-120(s0)
            w_sepc(r_sepc() + 4);
    80002b8c:	00478793          	addi	a5,a5,4
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002b90:	14179073          	csrw	sepc,a5
}
    80002b94:	ef5ff06f          	j	80002a88 <_ZN5Riscv16interruptHandlerEv+0x64>
            __asm__ volatile ("mv %0, a1" : "=r" (handle));
    80002b98:	00058493          	mv	s1,a1
            __asm__ volatile ("mv %0, a2" : "=r" (body));
    80002b9c:	00060513          	mv	a0,a2
            __asm__ volatile ("ld a3, 0x68(%0)" : : "r" (backupSP));
    80002ba0:	00004797          	auipc	a5,0x4
    80002ba4:	7887b783          	ld	a5,1928(a5) # 80007328 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002ba8:	0007b783          	ld	a5,0(a5)
    80002bac:	0687b683          	ld	a3,104(a5)
            __asm__ volatile ("mv %0, a3" : "=r" (args));
    80002bb0:	00068593          	mv	a1,a3
            *handle = CCB::createCoroutine(body, args);
    80002bb4:	00000097          	auipc	ra,0x0
    80002bb8:	98c080e7          	jalr	-1652(ra) # 80002540 <_ZN3CCB15createCoroutineEPFvPvES0_>
    80002bbc:	00a4b023          	sd	a0,0(s1)
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002bc0:	141027f3          	csrr	a5,sepc
    80002bc4:	f8f43823          	sd	a5,-112(s0)
    return sepc;
    80002bc8:	f9043783          	ld	a5,-112(s0)
            w_sepc(r_sepc() + 4);
    80002bcc:	00478793          	addi	a5,a5,4
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002bd0:	14179073          	csrw	sepc,a5
}
    80002bd4:	eb5ff06f          	j	80002a88 <_ZN5Riscv16interruptHandlerEv+0x64>
            __asm__ volatile ("mv %0, a1" : "=r" (handle));
    80002bd8:	00058493          	mv	s1,a1
            __asm__ volatile ("mv %0, a2" : "=r" (body));
    80002bdc:	00060513          	mv	a0,a2
            __asm__ volatile ("ld a3, 0x68(%0)" : : "r" (backupSP));
    80002be0:	00004797          	auipc	a5,0x4
    80002be4:	7487b783          	ld	a5,1864(a5) # 80007328 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002be8:	0007b783          	ld	a5,0(a5)
    80002bec:	0687b683          	ld	a3,104(a5)
            __asm__ volatile ("mv %0, a3" : "=r" (args));
    80002bf0:	00068593          	mv	a1,a3
            *handle = CCB::createCoroutine(body, args);
    80002bf4:	00000097          	auipc	ra,0x0
    80002bf8:	94c080e7          	jalr	-1716(ra) # 80002540 <_ZN3CCB15createCoroutineEPFvPvES0_>
    80002bfc:	00a4b023          	sd	a0,0(s1)
            Scheduler::put(*handle);
    80002c00:	fffff097          	auipc	ra,0xfffff
    80002c04:	7e8080e7          	jalr	2024(ra) # 800023e8 <_ZN9Scheduler3putEP3CCB>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002c08:	141027f3          	csrr	a5,sepc
    80002c0c:	f8f43c23          	sd	a5,-104(s0)
    return sepc;
    80002c10:	f9843783          	ld	a5,-104(s0)
            w_sepc(r_sepc() + 4);
    80002c14:	00478793          	addi	a5,a5,4
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002c18:	14179073          	csrw	sepc,a5
}
    80002c1c:	e6dff06f          	j	80002a88 <_ZN5Riscv16interruptHandlerEv+0x64>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002c20:	141027f3          	csrr	a5,sepc
    80002c24:	faf43423          	sd	a5,-88(s0)
    return sepc;
    80002c28:	fa843483          	ld	s1,-88(s0)
            uint64 sepc = r_sepc() + 4;
    80002c2c:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002c30:	100027f3          	csrr	a5,sstatus
    80002c34:	faf43023          	sd	a5,-96(s0)
    return sstatus;
    80002c38:	fa043903          	ld	s2,-96(s0)
            CCB::dispatch();
    80002c3c:	00000097          	auipc	ra,0x0
    80002c40:	9c8080e7          	jalr	-1592(ra) # 80002604 <_ZN3CCB8dispatchEv>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002c44:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002c48:	14149073          	csrw	sepc,s1
}
    80002c4c:	e3dff06f          	j	80002a88 <_ZN5Riscv16interruptHandlerEv+0x64>
            CCB::running->setFinished(true);
    80002c50:	00004797          	auipc	a5,0x4
    80002c54:	6c87b783          	ld	a5,1736(a5) # 80007318 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002c58:	0007b783          	ld	a5,0(a5)
    void setFinished(bool value) { finished = value;}
    80002c5c:	00100713          	li	a4,1
    80002c60:	02e78423          	sb	a4,40(a5)
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002c64:	141027f3          	csrr	a5,sepc
    80002c68:	faf43823          	sd	a5,-80(s0)
    return sepc;
    80002c6c:	fb043783          	ld	a5,-80(s0)
            w_sepc(r_sepc() + 4);
    80002c70:	00478793          	addi	a5,a5,4
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002c74:	14179073          	csrw	sepc,a5
}
    80002c78:	e11ff06f          	j	80002a88 <_ZN5Riscv16interruptHandlerEv+0x64>
            __asm__ volatile ("mv %0, a1" : "=r" (handle));
    80002c7c:	00058493          	mv	s1,a1
            __asm__ volatile ("mv %0, a2" : "=r" (init));
    80002c80:	00060513          	mv	a0,a2
            *handle = Semaphore_sys::createSemaphore(init);
    80002c84:	0005051b          	sext.w	a0,a0
    80002c88:	fffff097          	auipc	ra,0xfffff
    80002c8c:	9e4080e7          	jalr	-1564(ra) # 8000166c <_ZN13Semaphore_sys15createSemaphoreEj>
    80002c90:	00a4b023          	sd	a0,0(s1)
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002c94:	141027f3          	csrr	a5,sepc
    80002c98:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    80002c9c:	fb843783          	ld	a5,-72(s0)
            w_sepc(r_sepc() + 4);
    80002ca0:	00478793          	addi	a5,a5,4
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002ca4:	14179073          	csrw	sepc,a5
}
    80002ca8:	de1ff06f          	j	80002a88 <_ZN5Riscv16interruptHandlerEv+0x64>
            __asm__ volatile ("mv %0, a1" : "=r" (handle));
    80002cac:	00058513          	mv	a0,a1
            delete handle;
    80002cb0:	00050663          	beqz	a0,80002cbc <_ZN5Riscv16interruptHandlerEv+0x298>
    }
    void operator delete(void* address) {
        MemoryAllocator::free(address);
    80002cb4:	00000097          	auipc	ra,0x0
    80002cb8:	1fc080e7          	jalr	508(ra) # 80002eb0 <_ZN15MemoryAllocator4freeEPv>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002cbc:	141027f3          	csrr	a5,sepc
    80002cc0:	fcf43023          	sd	a5,-64(s0)
    return sepc;
    80002cc4:	fc043783          	ld	a5,-64(s0)
            w_sepc(r_sepc() + 4);
    80002cc8:	00478793          	addi	a5,a5,4
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002ccc:	14179073          	csrw	sepc,a5
}
    80002cd0:	db9ff06f          	j	80002a88 <_ZN5Riscv16interruptHandlerEv+0x64>
            __asm__ volatile ("mv %0, a1" : "=r" (handle));
    80002cd4:	00058513          	mv	a0,a1
            handle->signal();
    80002cd8:	fffff097          	auipc	ra,0xfffff
    80002cdc:	914080e7          	jalr	-1772(ra) # 800015ec <_ZN13Semaphore_sys6signalEv>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002ce0:	141027f3          	csrr	a5,sepc
    80002ce4:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80002ce8:	fc843783          	ld	a5,-56(s0)
            w_sepc(r_sepc() + 4);
    80002cec:	00478793          	addi	a5,a5,4
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002cf0:	14179073          	csrw	sepc,a5
}
    80002cf4:	d95ff06f          	j	80002a88 <_ZN5Riscv16interruptHandlerEv+0x64>

0000000080002cf8 <_ZN15MemoryAllocator8allocateEm>:
void *MemoryAllocator::allocateB(size_t size) {
    uint64 numOfBlocks = (size+sizeof(BlockHeader))/MEM_BLOCK_SIZE + ((size+sizeof(BlockHeader)) % MEM_BLOCK_SIZE > 0 ? 1 : 0);
    return allocate(numOfBlocks);
}

void* MemoryAllocator::allocate(size_t numOfBlocks) {
    80002cf8:	ff010113          	addi	sp,sp,-16
    80002cfc:	00813423          	sd	s0,8(sp)
    80002d00:	01010413          	addi	s0,sp,16
    80002d04:	00050793          	mv	a5,a0
    if (!flag){
    80002d08:	00004717          	auipc	a4,0x4
    80002d0c:	6a874703          	lbu	a4,1704(a4) # 800073b0 <_ZN15MemoryAllocator4flagE>
    80002d10:	04071463          	bnez	a4,80002d58 <_ZN15MemoryAllocator8allocateEm+0x60>
        fmem_head = (BlockHeader*) HEAP_START_ADDR;
    80002d14:	00004717          	auipc	a4,0x4
    80002d18:	5f473703          	ld	a4,1524(a4) # 80007308 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002d1c:	00073603          	ld	a2,0(a4)
    80002d20:	00004697          	auipc	a3,0x4
    80002d24:	69068693          	addi	a3,a3,1680 # 800073b0 <_ZN15MemoryAllocator4flagE>
    80002d28:	00c6b423          	sd	a2,8(a3)
        fmem_head->size = ((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR) / MEM_BLOCK_SIZE;
    80002d2c:	00004717          	auipc	a4,0x4
    80002d30:	5f473703          	ld	a4,1524(a4) # 80007320 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002d34:	00073703          	ld	a4,0(a4)
    80002d38:	40c70733          	sub	a4,a4,a2
    80002d3c:	00675713          	srli	a4,a4,0x6
    80002d40:	00e63023          	sd	a4,0(a2)
        fmem_head->prev = fmem_head->next = nullptr;
    80002d44:	0086b703          	ld	a4,8(a3)
    80002d48:	00073423          	sd	zero,8(a4)
    80002d4c:	00073823          	sd	zero,16(a4)
        flag = true;
    80002d50:	00100713          	li	a4,1
    80002d54:	00e68023          	sb	a4,0(a3)
    }
    if (fmem_head == nullptr) return nullptr;
    80002d58:	00004517          	auipc	a0,0x4
    80002d5c:	66053503          	ld	a0,1632(a0) # 800073b8 <_ZN15MemoryAllocator9fmem_headE>
    80002d60:	06050663          	beqz	a0,80002dcc <_ZN15MemoryAllocator8allocateEm+0xd4>
    BlockHeader* blk = nullptr;
    for (BlockHeader* current = fmem_head; current; current = current->next)
    80002d64:	00050a63          	beqz	a0,80002d78 <_ZN15MemoryAllocator8allocateEm+0x80>
        if ((!blk && current->size >= numOfBlocks)) {
    80002d68:	00053703          	ld	a4,0(a0)
    80002d6c:	00f77663          	bgeu	a4,a5,80002d78 <_ZN15MemoryAllocator8allocateEm+0x80>
    for (BlockHeader* current = fmem_head; current; current = current->next)
    80002d70:	00853503          	ld	a0,8(a0)
    80002d74:	ff1ff06f          	j	80002d64 <_ZN15MemoryAllocator8allocateEm+0x6c>
            blk = current;
            break;
        }
    if (!blk) return nullptr;
    80002d78:	04050a63          	beqz	a0,80002dcc <_ZN15MemoryAllocator8allocateEm+0xd4>
    size_t remainingNumOfBlocks = blk->size - numOfBlocks;
    80002d7c:	00053703          	ld	a4,0(a0)
    80002d80:	40f706b3          	sub	a3,a4,a5
    if (remainingNumOfBlocks > 0) {
    80002d84:	06f70063          	beq	a4,a5,80002de4 <_ZN15MemoryAllocator8allocateEm+0xec>
        blk->size = numOfBlocks;
    80002d88:	00f53023          	sd	a5,0(a0)
        BlockHeader* newBlk = (BlockHeader*)((char*)blk + numOfBlocks*MEM_BLOCK_SIZE);
    80002d8c:	00679793          	slli	a5,a5,0x6
    80002d90:	00f507b3          	add	a5,a0,a5
        if (blk->next) blk->next->prev = newBlk;
    80002d94:	00853703          	ld	a4,8(a0)
    80002d98:	00070463          	beqz	a4,80002da0 <_ZN15MemoryAllocator8allocateEm+0xa8>
    80002d9c:	00f73823          	sd	a5,16(a4)
        if (blk->prev) blk->prev->next = newBlk;
    80002da0:	01053703          	ld	a4,16(a0)
    80002da4:	02070a63          	beqz	a4,80002dd8 <_ZN15MemoryAllocator8allocateEm+0xe0>
    80002da8:	00f73423          	sd	a5,8(a4)
        else fmem_head = newBlk;
        newBlk->next = blk->next;
    80002dac:	00853703          	ld	a4,8(a0)
    80002db0:	00e7b423          	sd	a4,8(a5)
        newBlk->prev = blk->prev;
    80002db4:	01053703          	ld	a4,16(a0)
    80002db8:	00e7b823          	sd	a4,16(a5)
        newBlk->size = remainingNumOfBlocks;
    80002dbc:	00d7b023          	sd	a3,0(a5)
    else {
        if (blk->next) blk->next->prev = blk->prev;
        if (blk->prev) blk->prev->next = blk->next;
        else fmem_head = blk->next;
    }
    blk->next = nullptr;
    80002dc0:	00053423          	sd	zero,8(a0)
    blk->prev = nullptr;
    80002dc4:	00053823          	sd	zero,16(a0)
    return (char*)blk + sizeof(BlockHeader);
    80002dc8:	01850513          	addi	a0,a0,24
}
    80002dcc:	00813403          	ld	s0,8(sp)
    80002dd0:	01010113          	addi	sp,sp,16
    80002dd4:	00008067          	ret
        else fmem_head = newBlk;
    80002dd8:	00004717          	auipc	a4,0x4
    80002ddc:	5ef73023          	sd	a5,1504(a4) # 800073b8 <_ZN15MemoryAllocator9fmem_headE>
    80002de0:	fcdff06f          	j	80002dac <_ZN15MemoryAllocator8allocateEm+0xb4>
        if (blk->next) blk->next->prev = blk->prev;
    80002de4:	00853783          	ld	a5,8(a0)
    80002de8:	00078663          	beqz	a5,80002df4 <_ZN15MemoryAllocator8allocateEm+0xfc>
    80002dec:	01053703          	ld	a4,16(a0)
    80002df0:	00e7b823          	sd	a4,16(a5)
        if (blk->prev) blk->prev->next = blk->next;
    80002df4:	01053783          	ld	a5,16(a0)
    80002df8:	00078863          	beqz	a5,80002e08 <_ZN15MemoryAllocator8allocateEm+0x110>
    80002dfc:	00853703          	ld	a4,8(a0)
    80002e00:	00e7b423          	sd	a4,8(a5)
    80002e04:	fbdff06f          	j	80002dc0 <_ZN15MemoryAllocator8allocateEm+0xc8>
        else fmem_head = blk->next;
    80002e08:	00853783          	ld	a5,8(a0)
    80002e0c:	00004717          	auipc	a4,0x4
    80002e10:	5af73623          	sd	a5,1452(a4) # 800073b8 <_ZN15MemoryAllocator9fmem_headE>
    80002e14:	fadff06f          	j	80002dc0 <_ZN15MemoryAllocator8allocateEm+0xc8>

0000000080002e18 <_ZN15MemoryAllocator9allocateBEm>:
void *MemoryAllocator::allocateB(size_t size) {
    80002e18:	ff010113          	addi	sp,sp,-16
    80002e1c:	00113423          	sd	ra,8(sp)
    80002e20:	00813023          	sd	s0,0(sp)
    80002e24:	01010413          	addi	s0,sp,16
    uint64 numOfBlocks = (size+sizeof(BlockHeader))/MEM_BLOCK_SIZE + ((size+sizeof(BlockHeader)) % MEM_BLOCK_SIZE > 0 ? 1 : 0);
    80002e28:	01850513          	addi	a0,a0,24
    80002e2c:	00655793          	srli	a5,a0,0x6
    80002e30:	03f57513          	andi	a0,a0,63
    80002e34:	00050463          	beqz	a0,80002e3c <_ZN15MemoryAllocator9allocateBEm+0x24>
    80002e38:	00100513          	li	a0,1
    return allocate(numOfBlocks);
    80002e3c:	00a78533          	add	a0,a5,a0
    80002e40:	00000097          	auipc	ra,0x0
    80002e44:	eb8080e7          	jalr	-328(ra) # 80002cf8 <_ZN15MemoryAllocator8allocateEm>
}
    80002e48:	00813083          	ld	ra,8(sp)
    80002e4c:	00013403          	ld	s0,0(sp)
    80002e50:	01010113          	addi	sp,sp,16
    80002e54:	00008067          	ret

0000000080002e58 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>:
    tryToJoin(newBlk);
    tryToJoin(newBlk->prev);
    return 0;
}

void MemoryAllocator::tryToJoin(BlockHeader * blk) {
    80002e58:	ff010113          	addi	sp,sp,-16
    80002e5c:	00813423          	sd	s0,8(sp)
    80002e60:	01010413          	addi	s0,sp,16
    if (!blk) return;
    80002e64:	00050e63          	beqz	a0,80002e80 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x28>
    if (blk->next && (char*)blk + blk->size * MEM_BLOCK_SIZE == (char*)blk->next){
    80002e68:	00853703          	ld	a4,8(a0)
    80002e6c:	00070a63          	beqz	a4,80002e80 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x28>
    80002e70:	00053783          	ld	a5,0(a0)
    80002e74:	00679793          	slli	a5,a5,0x6
    80002e78:	00f507b3          	add	a5,a0,a5
    80002e7c:	00f70863          	beq	a4,a5,80002e8c <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x34>
        BlockHeader* nextBlk = blk->next;
        blk->next = nextBlk->next;
        if (blk->next) blk->next->prev = blk;
        blk->size += nextBlk->size;
    }
    80002e80:	00813403          	ld	s0,8(sp)
    80002e84:	01010113          	addi	sp,sp,16
    80002e88:	00008067          	ret
        blk->next = nextBlk->next;
    80002e8c:	00873783          	ld	a5,8(a4)
    80002e90:	00f53423          	sd	a5,8(a0)
        if (blk->next) blk->next->prev = blk;
    80002e94:	00078463          	beqz	a5,80002e9c <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x44>
    80002e98:	00a7b823          	sd	a0,16(a5)
        blk->size += nextBlk->size;
    80002e9c:	00073703          	ld	a4,0(a4)
    80002ea0:	00053783          	ld	a5,0(a0)
    80002ea4:	00e787b3          	add	a5,a5,a4
    80002ea8:	00f53023          	sd	a5,0(a0)
    80002eac:	fd5ff06f          	j	80002e80 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x28>

0000000080002eb0 <_ZN15MemoryAllocator4freeEPv>:
    if (addr == nullptr) return 0;
    80002eb0:	0a050a63          	beqz	a0,80002f64 <_ZN15MemoryAllocator4freeEPv+0xb4>
int MemoryAllocator::free(void* addr) {
    80002eb4:	fe010113          	addi	sp,sp,-32
    80002eb8:	00113c23          	sd	ra,24(sp)
    80002ebc:	00813823          	sd	s0,16(sp)
    80002ec0:	00913423          	sd	s1,8(sp)
    80002ec4:	02010413          	addi	s0,sp,32
    80002ec8:	00050493          	mv	s1,a0
    BlockHeader* newBlk = (BlockHeader*) ((char*)addr - sizeof(BlockHeader));
    80002ecc:	fe850513          	addi	a0,a0,-24
    if (newBlk < fmem_head) {
    80002ed0:	00004797          	auipc	a5,0x4
    80002ed4:	4e87b783          	ld	a5,1256(a5) # 800073b8 <_ZN15MemoryAllocator9fmem_headE>
    80002ed8:	04f57263          	bgeu	a0,a5,80002f1c <_ZN15MemoryAllocator4freeEPv+0x6c>
        newBlk->next = fmem_head;
    80002edc:	fef4b823          	sd	a5,-16(s1)
        fmem_head->prev = newBlk;
    80002ee0:	00a7b823          	sd	a0,16(a5)
        newBlk->prev = nullptr;
    80002ee4:	fe04bc23          	sd	zero,-8(s1)
        fmem_head = newBlk;
    80002ee8:	00004797          	auipc	a5,0x4
    80002eec:	4ca7b823          	sd	a0,1232(a5) # 800073b8 <_ZN15MemoryAllocator9fmem_headE>
    tryToJoin(newBlk);
    80002ef0:	00000097          	auipc	ra,0x0
    80002ef4:	f68080e7          	jalr	-152(ra) # 80002e58 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>
    tryToJoin(newBlk->prev);
    80002ef8:	ff84b503          	ld	a0,-8(s1)
    80002efc:	00000097          	auipc	ra,0x0
    80002f00:	f5c080e7          	jalr	-164(ra) # 80002e58 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>
}
    80002f04:	00000513          	li	a0,0
    80002f08:	01813083          	ld	ra,24(sp)
    80002f0c:	01013403          	ld	s0,16(sp)
    80002f10:	00813483          	ld	s1,8(sp)
    80002f14:	02010113          	addi	sp,sp,32
    80002f18:	00008067          	ret
    else if (fmem_head == nullptr){
    80002f1c:	00078e63          	beqz	a5,80002f38 <_ZN15MemoryAllocator4freeEPv+0x88>
        BlockHeader* blk = fmem_head, *prev = nullptr;
    80002f20:	00000713          	li	a4,0
        while(blk && blk < newBlk){
    80002f24:	02078463          	beqz	a5,80002f4c <_ZN15MemoryAllocator4freeEPv+0x9c>
    80002f28:	02a7f263          	bgeu	a5,a0,80002f4c <_ZN15MemoryAllocator4freeEPv+0x9c>
            prev = blk;
    80002f2c:	00078713          	mv	a4,a5
            blk = blk->next;
    80002f30:	0087b783          	ld	a5,8(a5)
        while(blk && blk < newBlk){
    80002f34:	ff1ff06f          	j	80002f24 <_ZN15MemoryAllocator4freeEPv+0x74>
        fmem_head = newBlk;
    80002f38:	00004797          	auipc	a5,0x4
    80002f3c:	48a7b023          	sd	a0,1152(a5) # 800073b8 <_ZN15MemoryAllocator9fmem_headE>
        newBlk->next = newBlk->prev = nullptr;
    80002f40:	fe04bc23          	sd	zero,-8(s1)
    80002f44:	fe04b823          	sd	zero,-16(s1)
        return 0;
    80002f48:	fbdff06f          	j	80002f04 <_ZN15MemoryAllocator4freeEPv+0x54>
        newBlk->next = blk;
    80002f4c:	fef4b823          	sd	a5,-16(s1)
        if (blk) blk->prev = newBlk;
    80002f50:	00078463          	beqz	a5,80002f58 <_ZN15MemoryAllocator4freeEPv+0xa8>
    80002f54:	00a7b823          	sd	a0,16(a5)
        newBlk->prev = prev;
    80002f58:	fee4bc23          	sd	a4,-8(s1)
        prev->next = newBlk;
    80002f5c:	00a73423          	sd	a0,8(a4)
    80002f60:	f91ff06f          	j	80002ef0 <_ZN15MemoryAllocator4freeEPv+0x40>
}
    80002f64:	00000513          	li	a0,0
    80002f68:	00008067          	ret

0000000080002f6c <_ZN6BufferC1Ei>:
#include "../h/buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80002f6c:	fe010113          	addi	sp,sp,-32
    80002f70:	00113c23          	sd	ra,24(sp)
    80002f74:	00813823          	sd	s0,16(sp)
    80002f78:	00913423          	sd	s1,8(sp)
    80002f7c:	01213023          	sd	s2,0(sp)
    80002f80:	02010413          	addi	s0,sp,32
    80002f84:	00050493          	mv	s1,a0
    80002f88:	00058913          	mv	s2,a1
    80002f8c:	0015879b          	addiw	a5,a1,1
    80002f90:	0007851b          	sext.w	a0,a5
    80002f94:	00f4a023          	sw	a5,0(s1)
    80002f98:	0004a823          	sw	zero,16(s1)
    80002f9c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80002fa0:	00251513          	slli	a0,a0,0x2
    80002fa4:	ffffe097          	auipc	ra,0xffffe
    80002fa8:	298080e7          	jalr	664(ra) # 8000123c <_Z9mem_allocm>
    80002fac:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80002fb0:	00000593          	li	a1,0
    80002fb4:	02048513          	addi	a0,s1,32
    80002fb8:	ffffe097          	auipc	ra,0xffffe
    80002fbc:	398080e7          	jalr	920(ra) # 80001350 <_Z8sem_openPP13Semaphore_sysj>
    sem_open(&spaceAvailable, _cap);
    80002fc0:	00090593          	mv	a1,s2
    80002fc4:	01848513          	addi	a0,s1,24
    80002fc8:	ffffe097          	auipc	ra,0xffffe
    80002fcc:	388080e7          	jalr	904(ra) # 80001350 <_Z8sem_openPP13Semaphore_sysj>
    sem_open(&mutexHead, 1);
    80002fd0:	00100593          	li	a1,1
    80002fd4:	02848513          	addi	a0,s1,40
    80002fd8:	ffffe097          	auipc	ra,0xffffe
    80002fdc:	378080e7          	jalr	888(ra) # 80001350 <_Z8sem_openPP13Semaphore_sysj>
    sem_open(&mutexTail, 1);
    80002fe0:	00100593          	li	a1,1
    80002fe4:	03048513          	addi	a0,s1,48
    80002fe8:	ffffe097          	auipc	ra,0xffffe
    80002fec:	368080e7          	jalr	872(ra) # 80001350 <_Z8sem_openPP13Semaphore_sysj>
}
    80002ff0:	01813083          	ld	ra,24(sp)
    80002ff4:	01013403          	ld	s0,16(sp)
    80002ff8:	00813483          	ld	s1,8(sp)
    80002ffc:	00013903          	ld	s2,0(sp)
    80003000:	02010113          	addi	sp,sp,32
    80003004:	00008067          	ret

0000000080003008 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80003008:	fe010113          	addi	sp,sp,-32
    8000300c:	00113c23          	sd	ra,24(sp)
    80003010:	00813823          	sd	s0,16(sp)
    80003014:	00913423          	sd	s1,8(sp)
    80003018:	01213023          	sd	s2,0(sp)
    8000301c:	02010413          	addi	s0,sp,32
    80003020:	00050493          	mv	s1,a0
    80003024:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80003028:	01853503          	ld	a0,24(a0)
    8000302c:	ffffe097          	auipc	ra,0xffffe
    80003030:	384080e7          	jalr	900(ra) # 800013b0 <_Z8sem_waitP13Semaphore_sys>

    sem_wait(mutexTail);
    80003034:	0304b503          	ld	a0,48(s1)
    80003038:	ffffe097          	auipc	ra,0xffffe
    8000303c:	378080e7          	jalr	888(ra) # 800013b0 <_Z8sem_waitP13Semaphore_sys>
    buffer[tail] = val;
    80003040:	0084b783          	ld	a5,8(s1)
    80003044:	0144a703          	lw	a4,20(s1)
    80003048:	00271713          	slli	a4,a4,0x2
    8000304c:	00e787b3          	add	a5,a5,a4
    80003050:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80003054:	0144a783          	lw	a5,20(s1)
    80003058:	0017879b          	addiw	a5,a5,1
    8000305c:	0004a703          	lw	a4,0(s1)
    80003060:	02e7e7bb          	remw	a5,a5,a4
    80003064:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80003068:	0304b503          	ld	a0,48(s1)
    8000306c:	ffffe097          	auipc	ra,0xffffe
    80003070:	378080e7          	jalr	888(ra) # 800013e4 <_Z10sem_signalP13Semaphore_sys>

    sem_signal(itemAvailable);
    80003074:	0204b503          	ld	a0,32(s1)
    80003078:	ffffe097          	auipc	ra,0xffffe
    8000307c:	36c080e7          	jalr	876(ra) # 800013e4 <_Z10sem_signalP13Semaphore_sys>

}
    80003080:	01813083          	ld	ra,24(sp)
    80003084:	01013403          	ld	s0,16(sp)
    80003088:	00813483          	ld	s1,8(sp)
    8000308c:	00013903          	ld	s2,0(sp)
    80003090:	02010113          	addi	sp,sp,32
    80003094:	00008067          	ret

0000000080003098 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80003098:	fe010113          	addi	sp,sp,-32
    8000309c:	00113c23          	sd	ra,24(sp)
    800030a0:	00813823          	sd	s0,16(sp)
    800030a4:	00913423          	sd	s1,8(sp)
    800030a8:	01213023          	sd	s2,0(sp)
    800030ac:	02010413          	addi	s0,sp,32
    800030b0:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800030b4:	02053503          	ld	a0,32(a0)
    800030b8:	ffffe097          	auipc	ra,0xffffe
    800030bc:	2f8080e7          	jalr	760(ra) # 800013b0 <_Z8sem_waitP13Semaphore_sys>

    sem_wait(mutexHead);
    800030c0:	0284b503          	ld	a0,40(s1)
    800030c4:	ffffe097          	auipc	ra,0xffffe
    800030c8:	2ec080e7          	jalr	748(ra) # 800013b0 <_Z8sem_waitP13Semaphore_sys>

    int ret = buffer[head];
    800030cc:	0084b703          	ld	a4,8(s1)
    800030d0:	0104a783          	lw	a5,16(s1)
    800030d4:	00279693          	slli	a3,a5,0x2
    800030d8:	00d70733          	add	a4,a4,a3
    800030dc:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800030e0:	0017879b          	addiw	a5,a5,1
    800030e4:	0004a703          	lw	a4,0(s1)
    800030e8:	02e7e7bb          	remw	a5,a5,a4
    800030ec:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800030f0:	0284b503          	ld	a0,40(s1)
    800030f4:	ffffe097          	auipc	ra,0xffffe
    800030f8:	2f0080e7          	jalr	752(ra) # 800013e4 <_Z10sem_signalP13Semaphore_sys>

    sem_signal(spaceAvailable);
    800030fc:	0184b503          	ld	a0,24(s1)
    80003100:	ffffe097          	auipc	ra,0xffffe
    80003104:	2e4080e7          	jalr	740(ra) # 800013e4 <_Z10sem_signalP13Semaphore_sys>

    return ret;
}
    80003108:	00090513          	mv	a0,s2
    8000310c:	01813083          	ld	ra,24(sp)
    80003110:	01013403          	ld	s0,16(sp)
    80003114:	00813483          	ld	s1,8(sp)
    80003118:	00013903          	ld	s2,0(sp)
    8000311c:	02010113          	addi	sp,sp,32
    80003120:	00008067          	ret

0000000080003124 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80003124:	fe010113          	addi	sp,sp,-32
    80003128:	00113c23          	sd	ra,24(sp)
    8000312c:	00813823          	sd	s0,16(sp)
    80003130:	00913423          	sd	s1,8(sp)
    80003134:	01213023          	sd	s2,0(sp)
    80003138:	02010413          	addi	s0,sp,32
    8000313c:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80003140:	02853503          	ld	a0,40(a0)
    80003144:	ffffe097          	auipc	ra,0xffffe
    80003148:	26c080e7          	jalr	620(ra) # 800013b0 <_Z8sem_waitP13Semaphore_sys>
    sem_wait(mutexTail);
    8000314c:	0304b503          	ld	a0,48(s1)
    80003150:	ffffe097          	auipc	ra,0xffffe
    80003154:	260080e7          	jalr	608(ra) # 800013b0 <_Z8sem_waitP13Semaphore_sys>

    if (tail >= head) {
    80003158:	0144a783          	lw	a5,20(s1)
    8000315c:	0104a903          	lw	s2,16(s1)
    80003160:	0327ce63          	blt	a5,s2,8000319c <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80003164:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80003168:	0304b503          	ld	a0,48(s1)
    8000316c:	ffffe097          	auipc	ra,0xffffe
    80003170:	278080e7          	jalr	632(ra) # 800013e4 <_Z10sem_signalP13Semaphore_sys>
    sem_signal(mutexHead);
    80003174:	0284b503          	ld	a0,40(s1)
    80003178:	ffffe097          	auipc	ra,0xffffe
    8000317c:	26c080e7          	jalr	620(ra) # 800013e4 <_Z10sem_signalP13Semaphore_sys>

    return ret;
}
    80003180:	00090513          	mv	a0,s2
    80003184:	01813083          	ld	ra,24(sp)
    80003188:	01013403          	ld	s0,16(sp)
    8000318c:	00813483          	ld	s1,8(sp)
    80003190:	00013903          	ld	s2,0(sp)
    80003194:	02010113          	addi	sp,sp,32
    80003198:	00008067          	ret
        ret = cap - head + tail;
    8000319c:	0004a703          	lw	a4,0(s1)
    800031a0:	4127093b          	subw	s2,a4,s2
    800031a4:	00f9093b          	addw	s2,s2,a5
    800031a8:	fc1ff06f          	j	80003168 <_ZN6Buffer6getCntEv+0x44>

00000000800031ac <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800031ac:	fe010113          	addi	sp,sp,-32
    800031b0:	00113c23          	sd	ra,24(sp)
    800031b4:	00813823          	sd	s0,16(sp)
    800031b8:	00913423          	sd	s1,8(sp)
    800031bc:	02010413          	addi	s0,sp,32
    800031c0:	00050493          	mv	s1,a0
    putc('\n');
    800031c4:	00a00513          	li	a0,10
    800031c8:	ffffe097          	auipc	ra,0xffffe
    800031cc:	278080e7          	jalr	632(ra) # 80001440 <_Z4putcc>
    printString("Buffer deleted!\n");
    800031d0:	00003517          	auipc	a0,0x3
    800031d4:	f7850513          	addi	a0,a0,-136 # 80006148 <CONSOLE_STATUS+0x138>
    800031d8:	ffffe097          	auipc	ra,0xffffe
    800031dc:	4d8080e7          	jalr	1240(ra) # 800016b0 <_Z11printStringPKc>
    while (getCnt() > 0) {
    800031e0:	00048513          	mv	a0,s1
    800031e4:	00000097          	auipc	ra,0x0
    800031e8:	f40080e7          	jalr	-192(ra) # 80003124 <_ZN6Buffer6getCntEv>
    800031ec:	02a05c63          	blez	a0,80003224 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800031f0:	0084b783          	ld	a5,8(s1)
    800031f4:	0104a703          	lw	a4,16(s1)
    800031f8:	00271713          	slli	a4,a4,0x2
    800031fc:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80003200:	0007c503          	lbu	a0,0(a5)
    80003204:	ffffe097          	auipc	ra,0xffffe
    80003208:	23c080e7          	jalr	572(ra) # 80001440 <_Z4putcc>
        head = (head + 1) % cap;
    8000320c:	0104a783          	lw	a5,16(s1)
    80003210:	0017879b          	addiw	a5,a5,1
    80003214:	0004a703          	lw	a4,0(s1)
    80003218:	02e7e7bb          	remw	a5,a5,a4
    8000321c:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80003220:	fc1ff06f          	j	800031e0 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80003224:	02100513          	li	a0,33
    80003228:	ffffe097          	auipc	ra,0xffffe
    8000322c:	218080e7          	jalr	536(ra) # 80001440 <_Z4putcc>
    putc('\n');
    80003230:	00a00513          	li	a0,10
    80003234:	ffffe097          	auipc	ra,0xffffe
    80003238:	20c080e7          	jalr	524(ra) # 80001440 <_Z4putcc>
    mem_free(buffer);
    8000323c:	0084b503          	ld	a0,8(s1)
    80003240:	ffffe097          	auipc	ra,0xffffe
    80003244:	048080e7          	jalr	72(ra) # 80001288 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80003248:	0204b503          	ld	a0,32(s1)
    8000324c:	ffffe097          	auipc	ra,0xffffe
    80003250:	130080e7          	jalr	304(ra) # 8000137c <_Z9sem_closeP13Semaphore_sys>
    sem_close(spaceAvailable);
    80003254:	0184b503          	ld	a0,24(s1)
    80003258:	ffffe097          	auipc	ra,0xffffe
    8000325c:	124080e7          	jalr	292(ra) # 8000137c <_Z9sem_closeP13Semaphore_sys>
    sem_close(mutexTail);
    80003260:	0304b503          	ld	a0,48(s1)
    80003264:	ffffe097          	auipc	ra,0xffffe
    80003268:	118080e7          	jalr	280(ra) # 8000137c <_Z9sem_closeP13Semaphore_sys>
    sem_close(mutexHead);
    8000326c:	0284b503          	ld	a0,40(s1)
    80003270:	ffffe097          	auipc	ra,0xffffe
    80003274:	10c080e7          	jalr	268(ra) # 8000137c <_Z9sem_closeP13Semaphore_sys>
}
    80003278:	01813083          	ld	ra,24(sp)
    8000327c:	01013403          	ld	s0,16(sp)
    80003280:	00813483          	ld	s1,8(sp)
    80003284:	02010113          	addi	sp,sp,32
    80003288:	00008067          	ret

000000008000328c <start>:
    8000328c:	ff010113          	addi	sp,sp,-16
    80003290:	00813423          	sd	s0,8(sp)
    80003294:	01010413          	addi	s0,sp,16
    80003298:	300027f3          	csrr	a5,mstatus
    8000329c:	ffffe737          	lui	a4,0xffffe
    800032a0:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff61df>
    800032a4:	00e7f7b3          	and	a5,a5,a4
    800032a8:	00001737          	lui	a4,0x1
    800032ac:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800032b0:	00e7e7b3          	or	a5,a5,a4
    800032b4:	30079073          	csrw	mstatus,a5
    800032b8:	00000797          	auipc	a5,0x0
    800032bc:	16078793          	addi	a5,a5,352 # 80003418 <system_main>
    800032c0:	34179073          	csrw	mepc,a5
    800032c4:	00000793          	li	a5,0
    800032c8:	18079073          	csrw	satp,a5
    800032cc:	000107b7          	lui	a5,0x10
    800032d0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800032d4:	30279073          	csrw	medeleg,a5
    800032d8:	30379073          	csrw	mideleg,a5
    800032dc:	104027f3          	csrr	a5,sie
    800032e0:	2227e793          	ori	a5,a5,546
    800032e4:	10479073          	csrw	sie,a5
    800032e8:	fff00793          	li	a5,-1
    800032ec:	00a7d793          	srli	a5,a5,0xa
    800032f0:	3b079073          	csrw	pmpaddr0,a5
    800032f4:	00f00793          	li	a5,15
    800032f8:	3a079073          	csrw	pmpcfg0,a5
    800032fc:	f14027f3          	csrr	a5,mhartid
    80003300:	0200c737          	lui	a4,0x200c
    80003304:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003308:	0007869b          	sext.w	a3,a5
    8000330c:	00269713          	slli	a4,a3,0x2
    80003310:	000f4637          	lui	a2,0xf4
    80003314:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003318:	00d70733          	add	a4,a4,a3
    8000331c:	0037979b          	slliw	a5,a5,0x3
    80003320:	020046b7          	lui	a3,0x2004
    80003324:	00d787b3          	add	a5,a5,a3
    80003328:	00c585b3          	add	a1,a1,a2
    8000332c:	00371693          	slli	a3,a4,0x3
    80003330:	00004717          	auipc	a4,0x4
    80003334:	09070713          	addi	a4,a4,144 # 800073c0 <timer_scratch>
    80003338:	00b7b023          	sd	a1,0(a5)
    8000333c:	00d70733          	add	a4,a4,a3
    80003340:	00f73c23          	sd	a5,24(a4)
    80003344:	02c73023          	sd	a2,32(a4)
    80003348:	34071073          	csrw	mscratch,a4
    8000334c:	00000797          	auipc	a5,0x0
    80003350:	6e478793          	addi	a5,a5,1764 # 80003a30 <timervec>
    80003354:	30579073          	csrw	mtvec,a5
    80003358:	300027f3          	csrr	a5,mstatus
    8000335c:	0087e793          	ori	a5,a5,8
    80003360:	30079073          	csrw	mstatus,a5
    80003364:	304027f3          	csrr	a5,mie
    80003368:	0807e793          	ori	a5,a5,128
    8000336c:	30479073          	csrw	mie,a5
    80003370:	f14027f3          	csrr	a5,mhartid
    80003374:	0007879b          	sext.w	a5,a5
    80003378:	00078213          	mv	tp,a5
    8000337c:	30200073          	mret
    80003380:	00813403          	ld	s0,8(sp)
    80003384:	01010113          	addi	sp,sp,16
    80003388:	00008067          	ret

000000008000338c <timerinit>:
    8000338c:	ff010113          	addi	sp,sp,-16
    80003390:	00813423          	sd	s0,8(sp)
    80003394:	01010413          	addi	s0,sp,16
    80003398:	f14027f3          	csrr	a5,mhartid
    8000339c:	0200c737          	lui	a4,0x200c
    800033a0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800033a4:	0007869b          	sext.w	a3,a5
    800033a8:	00269713          	slli	a4,a3,0x2
    800033ac:	000f4637          	lui	a2,0xf4
    800033b0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800033b4:	00d70733          	add	a4,a4,a3
    800033b8:	0037979b          	slliw	a5,a5,0x3
    800033bc:	020046b7          	lui	a3,0x2004
    800033c0:	00d787b3          	add	a5,a5,a3
    800033c4:	00c585b3          	add	a1,a1,a2
    800033c8:	00371693          	slli	a3,a4,0x3
    800033cc:	00004717          	auipc	a4,0x4
    800033d0:	ff470713          	addi	a4,a4,-12 # 800073c0 <timer_scratch>
    800033d4:	00b7b023          	sd	a1,0(a5)
    800033d8:	00d70733          	add	a4,a4,a3
    800033dc:	00f73c23          	sd	a5,24(a4)
    800033e0:	02c73023          	sd	a2,32(a4)
    800033e4:	34071073          	csrw	mscratch,a4
    800033e8:	00000797          	auipc	a5,0x0
    800033ec:	64878793          	addi	a5,a5,1608 # 80003a30 <timervec>
    800033f0:	30579073          	csrw	mtvec,a5
    800033f4:	300027f3          	csrr	a5,mstatus
    800033f8:	0087e793          	ori	a5,a5,8
    800033fc:	30079073          	csrw	mstatus,a5
    80003400:	304027f3          	csrr	a5,mie
    80003404:	0807e793          	ori	a5,a5,128
    80003408:	30479073          	csrw	mie,a5
    8000340c:	00813403          	ld	s0,8(sp)
    80003410:	01010113          	addi	sp,sp,16
    80003414:	00008067          	ret

0000000080003418 <system_main>:
    80003418:	fe010113          	addi	sp,sp,-32
    8000341c:	00813823          	sd	s0,16(sp)
    80003420:	00913423          	sd	s1,8(sp)
    80003424:	00113c23          	sd	ra,24(sp)
    80003428:	02010413          	addi	s0,sp,32
    8000342c:	00000097          	auipc	ra,0x0
    80003430:	0c4080e7          	jalr	196(ra) # 800034f0 <cpuid>
    80003434:	00004497          	auipc	s1,0x4
    80003438:	f1c48493          	addi	s1,s1,-228 # 80007350 <started>
    8000343c:	02050263          	beqz	a0,80003460 <system_main+0x48>
    80003440:	0004a783          	lw	a5,0(s1)
    80003444:	0007879b          	sext.w	a5,a5
    80003448:	fe078ce3          	beqz	a5,80003440 <system_main+0x28>
    8000344c:	0ff0000f          	fence
    80003450:	00003517          	auipc	a0,0x3
    80003454:	d4050513          	addi	a0,a0,-704 # 80006190 <CONSOLE_STATUS+0x180>
    80003458:	00001097          	auipc	ra,0x1
    8000345c:	a74080e7          	jalr	-1420(ra) # 80003ecc <panic>
    80003460:	00001097          	auipc	ra,0x1
    80003464:	9c8080e7          	jalr	-1592(ra) # 80003e28 <consoleinit>
    80003468:	00001097          	auipc	ra,0x1
    8000346c:	154080e7          	jalr	340(ra) # 800045bc <printfinit>
    80003470:	00003517          	auipc	a0,0x3
    80003474:	cc050513          	addi	a0,a0,-832 # 80006130 <CONSOLE_STATUS+0x120>
    80003478:	00001097          	auipc	ra,0x1
    8000347c:	ab0080e7          	jalr	-1360(ra) # 80003f28 <__printf>
    80003480:	00003517          	auipc	a0,0x3
    80003484:	ce050513          	addi	a0,a0,-800 # 80006160 <CONSOLE_STATUS+0x150>
    80003488:	00001097          	auipc	ra,0x1
    8000348c:	aa0080e7          	jalr	-1376(ra) # 80003f28 <__printf>
    80003490:	00003517          	auipc	a0,0x3
    80003494:	ca050513          	addi	a0,a0,-864 # 80006130 <CONSOLE_STATUS+0x120>
    80003498:	00001097          	auipc	ra,0x1
    8000349c:	a90080e7          	jalr	-1392(ra) # 80003f28 <__printf>
    800034a0:	00001097          	auipc	ra,0x1
    800034a4:	4a8080e7          	jalr	1192(ra) # 80004948 <kinit>
    800034a8:	00000097          	auipc	ra,0x0
    800034ac:	148080e7          	jalr	328(ra) # 800035f0 <trapinit>
    800034b0:	00000097          	auipc	ra,0x0
    800034b4:	16c080e7          	jalr	364(ra) # 8000361c <trapinithart>
    800034b8:	00000097          	auipc	ra,0x0
    800034bc:	5b8080e7          	jalr	1464(ra) # 80003a70 <plicinit>
    800034c0:	00000097          	auipc	ra,0x0
    800034c4:	5d8080e7          	jalr	1496(ra) # 80003a98 <plicinithart>
    800034c8:	00000097          	auipc	ra,0x0
    800034cc:	078080e7          	jalr	120(ra) # 80003540 <userinit>
    800034d0:	0ff0000f          	fence
    800034d4:	00100793          	li	a5,1
    800034d8:	00003517          	auipc	a0,0x3
    800034dc:	ca050513          	addi	a0,a0,-864 # 80006178 <CONSOLE_STATUS+0x168>
    800034e0:	00f4a023          	sw	a5,0(s1)
    800034e4:	00001097          	auipc	ra,0x1
    800034e8:	a44080e7          	jalr	-1468(ra) # 80003f28 <__printf>
    800034ec:	0000006f          	j	800034ec <system_main+0xd4>

00000000800034f0 <cpuid>:
    800034f0:	ff010113          	addi	sp,sp,-16
    800034f4:	00813423          	sd	s0,8(sp)
    800034f8:	01010413          	addi	s0,sp,16
    800034fc:	00020513          	mv	a0,tp
    80003500:	00813403          	ld	s0,8(sp)
    80003504:	0005051b          	sext.w	a0,a0
    80003508:	01010113          	addi	sp,sp,16
    8000350c:	00008067          	ret

0000000080003510 <mycpu>:
    80003510:	ff010113          	addi	sp,sp,-16
    80003514:	00813423          	sd	s0,8(sp)
    80003518:	01010413          	addi	s0,sp,16
    8000351c:	00020793          	mv	a5,tp
    80003520:	00813403          	ld	s0,8(sp)
    80003524:	0007879b          	sext.w	a5,a5
    80003528:	00779793          	slli	a5,a5,0x7
    8000352c:	00005517          	auipc	a0,0x5
    80003530:	ec450513          	addi	a0,a0,-316 # 800083f0 <cpus>
    80003534:	00f50533          	add	a0,a0,a5
    80003538:	01010113          	addi	sp,sp,16
    8000353c:	00008067          	ret

0000000080003540 <userinit>:
    80003540:	ff010113          	addi	sp,sp,-16
    80003544:	00813423          	sd	s0,8(sp)
    80003548:	01010413          	addi	s0,sp,16
    8000354c:	00813403          	ld	s0,8(sp)
    80003550:	01010113          	addi	sp,sp,16
    80003554:	fffff317          	auipc	t1,0xfffff
    80003558:	f3430067          	jr	-204(t1) # 80002488 <main>

000000008000355c <either_copyout>:
    8000355c:	ff010113          	addi	sp,sp,-16
    80003560:	00813023          	sd	s0,0(sp)
    80003564:	00113423          	sd	ra,8(sp)
    80003568:	01010413          	addi	s0,sp,16
    8000356c:	02051663          	bnez	a0,80003598 <either_copyout+0x3c>
    80003570:	00058513          	mv	a0,a1
    80003574:	00060593          	mv	a1,a2
    80003578:	0006861b          	sext.w	a2,a3
    8000357c:	00002097          	auipc	ra,0x2
    80003580:	c58080e7          	jalr	-936(ra) # 800051d4 <__memmove>
    80003584:	00813083          	ld	ra,8(sp)
    80003588:	00013403          	ld	s0,0(sp)
    8000358c:	00000513          	li	a0,0
    80003590:	01010113          	addi	sp,sp,16
    80003594:	00008067          	ret
    80003598:	00003517          	auipc	a0,0x3
    8000359c:	c2050513          	addi	a0,a0,-992 # 800061b8 <CONSOLE_STATUS+0x1a8>
    800035a0:	00001097          	auipc	ra,0x1
    800035a4:	92c080e7          	jalr	-1748(ra) # 80003ecc <panic>

00000000800035a8 <either_copyin>:
    800035a8:	ff010113          	addi	sp,sp,-16
    800035ac:	00813023          	sd	s0,0(sp)
    800035b0:	00113423          	sd	ra,8(sp)
    800035b4:	01010413          	addi	s0,sp,16
    800035b8:	02059463          	bnez	a1,800035e0 <either_copyin+0x38>
    800035bc:	00060593          	mv	a1,a2
    800035c0:	0006861b          	sext.w	a2,a3
    800035c4:	00002097          	auipc	ra,0x2
    800035c8:	c10080e7          	jalr	-1008(ra) # 800051d4 <__memmove>
    800035cc:	00813083          	ld	ra,8(sp)
    800035d0:	00013403          	ld	s0,0(sp)
    800035d4:	00000513          	li	a0,0
    800035d8:	01010113          	addi	sp,sp,16
    800035dc:	00008067          	ret
    800035e0:	00003517          	auipc	a0,0x3
    800035e4:	c0050513          	addi	a0,a0,-1024 # 800061e0 <CONSOLE_STATUS+0x1d0>
    800035e8:	00001097          	auipc	ra,0x1
    800035ec:	8e4080e7          	jalr	-1820(ra) # 80003ecc <panic>

00000000800035f0 <trapinit>:
    800035f0:	ff010113          	addi	sp,sp,-16
    800035f4:	00813423          	sd	s0,8(sp)
    800035f8:	01010413          	addi	s0,sp,16
    800035fc:	00813403          	ld	s0,8(sp)
    80003600:	00003597          	auipc	a1,0x3
    80003604:	c0858593          	addi	a1,a1,-1016 # 80006208 <CONSOLE_STATUS+0x1f8>
    80003608:	00005517          	auipc	a0,0x5
    8000360c:	e6850513          	addi	a0,a0,-408 # 80008470 <tickslock>
    80003610:	01010113          	addi	sp,sp,16
    80003614:	00001317          	auipc	t1,0x1
    80003618:	5c430067          	jr	1476(t1) # 80004bd8 <initlock>

000000008000361c <trapinithart>:
    8000361c:	ff010113          	addi	sp,sp,-16
    80003620:	00813423          	sd	s0,8(sp)
    80003624:	01010413          	addi	s0,sp,16
    80003628:	00000797          	auipc	a5,0x0
    8000362c:	2f878793          	addi	a5,a5,760 # 80003920 <kernelvec>
    80003630:	10579073          	csrw	stvec,a5
    80003634:	00813403          	ld	s0,8(sp)
    80003638:	01010113          	addi	sp,sp,16
    8000363c:	00008067          	ret

0000000080003640 <usertrap>:
    80003640:	ff010113          	addi	sp,sp,-16
    80003644:	00813423          	sd	s0,8(sp)
    80003648:	01010413          	addi	s0,sp,16
    8000364c:	00813403          	ld	s0,8(sp)
    80003650:	01010113          	addi	sp,sp,16
    80003654:	00008067          	ret

0000000080003658 <usertrapret>:
    80003658:	ff010113          	addi	sp,sp,-16
    8000365c:	00813423          	sd	s0,8(sp)
    80003660:	01010413          	addi	s0,sp,16
    80003664:	00813403          	ld	s0,8(sp)
    80003668:	01010113          	addi	sp,sp,16
    8000366c:	00008067          	ret

0000000080003670 <kerneltrap>:
    80003670:	fe010113          	addi	sp,sp,-32
    80003674:	00813823          	sd	s0,16(sp)
    80003678:	00113c23          	sd	ra,24(sp)
    8000367c:	00913423          	sd	s1,8(sp)
    80003680:	02010413          	addi	s0,sp,32
    80003684:	142025f3          	csrr	a1,scause
    80003688:	100027f3          	csrr	a5,sstatus
    8000368c:	0027f793          	andi	a5,a5,2
    80003690:	10079c63          	bnez	a5,800037a8 <kerneltrap+0x138>
    80003694:	142027f3          	csrr	a5,scause
    80003698:	0207ce63          	bltz	a5,800036d4 <kerneltrap+0x64>
    8000369c:	00003517          	auipc	a0,0x3
    800036a0:	bb450513          	addi	a0,a0,-1100 # 80006250 <CONSOLE_STATUS+0x240>
    800036a4:	00001097          	auipc	ra,0x1
    800036a8:	884080e7          	jalr	-1916(ra) # 80003f28 <__printf>
    800036ac:	141025f3          	csrr	a1,sepc
    800036b0:	14302673          	csrr	a2,stval
    800036b4:	00003517          	auipc	a0,0x3
    800036b8:	bac50513          	addi	a0,a0,-1108 # 80006260 <CONSOLE_STATUS+0x250>
    800036bc:	00001097          	auipc	ra,0x1
    800036c0:	86c080e7          	jalr	-1940(ra) # 80003f28 <__printf>
    800036c4:	00003517          	auipc	a0,0x3
    800036c8:	bb450513          	addi	a0,a0,-1100 # 80006278 <CONSOLE_STATUS+0x268>
    800036cc:	00001097          	auipc	ra,0x1
    800036d0:	800080e7          	jalr	-2048(ra) # 80003ecc <panic>
    800036d4:	0ff7f713          	andi	a4,a5,255
    800036d8:	00900693          	li	a3,9
    800036dc:	04d70063          	beq	a4,a3,8000371c <kerneltrap+0xac>
    800036e0:	fff00713          	li	a4,-1
    800036e4:	03f71713          	slli	a4,a4,0x3f
    800036e8:	00170713          	addi	a4,a4,1
    800036ec:	fae798e3          	bne	a5,a4,8000369c <kerneltrap+0x2c>
    800036f0:	00000097          	auipc	ra,0x0
    800036f4:	e00080e7          	jalr	-512(ra) # 800034f0 <cpuid>
    800036f8:	06050663          	beqz	a0,80003764 <kerneltrap+0xf4>
    800036fc:	144027f3          	csrr	a5,sip
    80003700:	ffd7f793          	andi	a5,a5,-3
    80003704:	14479073          	csrw	sip,a5
    80003708:	01813083          	ld	ra,24(sp)
    8000370c:	01013403          	ld	s0,16(sp)
    80003710:	00813483          	ld	s1,8(sp)
    80003714:	02010113          	addi	sp,sp,32
    80003718:	00008067          	ret
    8000371c:	00000097          	auipc	ra,0x0
    80003720:	3c8080e7          	jalr	968(ra) # 80003ae4 <plic_claim>
    80003724:	00a00793          	li	a5,10
    80003728:	00050493          	mv	s1,a0
    8000372c:	06f50863          	beq	a0,a5,8000379c <kerneltrap+0x12c>
    80003730:	fc050ce3          	beqz	a0,80003708 <kerneltrap+0x98>
    80003734:	00050593          	mv	a1,a0
    80003738:	00003517          	auipc	a0,0x3
    8000373c:	af850513          	addi	a0,a0,-1288 # 80006230 <CONSOLE_STATUS+0x220>
    80003740:	00000097          	auipc	ra,0x0
    80003744:	7e8080e7          	jalr	2024(ra) # 80003f28 <__printf>
    80003748:	01013403          	ld	s0,16(sp)
    8000374c:	01813083          	ld	ra,24(sp)
    80003750:	00048513          	mv	a0,s1
    80003754:	00813483          	ld	s1,8(sp)
    80003758:	02010113          	addi	sp,sp,32
    8000375c:	00000317          	auipc	t1,0x0
    80003760:	3c030067          	jr	960(t1) # 80003b1c <plic_complete>
    80003764:	00005517          	auipc	a0,0x5
    80003768:	d0c50513          	addi	a0,a0,-756 # 80008470 <tickslock>
    8000376c:	00001097          	auipc	ra,0x1
    80003770:	490080e7          	jalr	1168(ra) # 80004bfc <acquire>
    80003774:	00004717          	auipc	a4,0x4
    80003778:	be070713          	addi	a4,a4,-1056 # 80007354 <ticks>
    8000377c:	00072783          	lw	a5,0(a4)
    80003780:	00005517          	auipc	a0,0x5
    80003784:	cf050513          	addi	a0,a0,-784 # 80008470 <tickslock>
    80003788:	0017879b          	addiw	a5,a5,1
    8000378c:	00f72023          	sw	a5,0(a4)
    80003790:	00001097          	auipc	ra,0x1
    80003794:	538080e7          	jalr	1336(ra) # 80004cc8 <release>
    80003798:	f65ff06f          	j	800036fc <kerneltrap+0x8c>
    8000379c:	00001097          	auipc	ra,0x1
    800037a0:	094080e7          	jalr	148(ra) # 80004830 <uartintr>
    800037a4:	fa5ff06f          	j	80003748 <kerneltrap+0xd8>
    800037a8:	00003517          	auipc	a0,0x3
    800037ac:	a6850513          	addi	a0,a0,-1432 # 80006210 <CONSOLE_STATUS+0x200>
    800037b0:	00000097          	auipc	ra,0x0
    800037b4:	71c080e7          	jalr	1820(ra) # 80003ecc <panic>

00000000800037b8 <clockintr>:
    800037b8:	fe010113          	addi	sp,sp,-32
    800037bc:	00813823          	sd	s0,16(sp)
    800037c0:	00913423          	sd	s1,8(sp)
    800037c4:	00113c23          	sd	ra,24(sp)
    800037c8:	02010413          	addi	s0,sp,32
    800037cc:	00005497          	auipc	s1,0x5
    800037d0:	ca448493          	addi	s1,s1,-860 # 80008470 <tickslock>
    800037d4:	00048513          	mv	a0,s1
    800037d8:	00001097          	auipc	ra,0x1
    800037dc:	424080e7          	jalr	1060(ra) # 80004bfc <acquire>
    800037e0:	00004717          	auipc	a4,0x4
    800037e4:	b7470713          	addi	a4,a4,-1164 # 80007354 <ticks>
    800037e8:	00072783          	lw	a5,0(a4)
    800037ec:	01013403          	ld	s0,16(sp)
    800037f0:	01813083          	ld	ra,24(sp)
    800037f4:	00048513          	mv	a0,s1
    800037f8:	0017879b          	addiw	a5,a5,1
    800037fc:	00813483          	ld	s1,8(sp)
    80003800:	00f72023          	sw	a5,0(a4)
    80003804:	02010113          	addi	sp,sp,32
    80003808:	00001317          	auipc	t1,0x1
    8000380c:	4c030067          	jr	1216(t1) # 80004cc8 <release>

0000000080003810 <devintr>:
    80003810:	142027f3          	csrr	a5,scause
    80003814:	00000513          	li	a0,0
    80003818:	0007c463          	bltz	a5,80003820 <devintr+0x10>
    8000381c:	00008067          	ret
    80003820:	fe010113          	addi	sp,sp,-32
    80003824:	00813823          	sd	s0,16(sp)
    80003828:	00113c23          	sd	ra,24(sp)
    8000382c:	00913423          	sd	s1,8(sp)
    80003830:	02010413          	addi	s0,sp,32
    80003834:	0ff7f713          	andi	a4,a5,255
    80003838:	00900693          	li	a3,9
    8000383c:	04d70c63          	beq	a4,a3,80003894 <devintr+0x84>
    80003840:	fff00713          	li	a4,-1
    80003844:	03f71713          	slli	a4,a4,0x3f
    80003848:	00170713          	addi	a4,a4,1
    8000384c:	00e78c63          	beq	a5,a4,80003864 <devintr+0x54>
    80003850:	01813083          	ld	ra,24(sp)
    80003854:	01013403          	ld	s0,16(sp)
    80003858:	00813483          	ld	s1,8(sp)
    8000385c:	02010113          	addi	sp,sp,32
    80003860:	00008067          	ret
    80003864:	00000097          	auipc	ra,0x0
    80003868:	c8c080e7          	jalr	-884(ra) # 800034f0 <cpuid>
    8000386c:	06050663          	beqz	a0,800038d8 <devintr+0xc8>
    80003870:	144027f3          	csrr	a5,sip
    80003874:	ffd7f793          	andi	a5,a5,-3
    80003878:	14479073          	csrw	sip,a5
    8000387c:	01813083          	ld	ra,24(sp)
    80003880:	01013403          	ld	s0,16(sp)
    80003884:	00813483          	ld	s1,8(sp)
    80003888:	00200513          	li	a0,2
    8000388c:	02010113          	addi	sp,sp,32
    80003890:	00008067          	ret
    80003894:	00000097          	auipc	ra,0x0
    80003898:	250080e7          	jalr	592(ra) # 80003ae4 <plic_claim>
    8000389c:	00a00793          	li	a5,10
    800038a0:	00050493          	mv	s1,a0
    800038a4:	06f50663          	beq	a0,a5,80003910 <devintr+0x100>
    800038a8:	00100513          	li	a0,1
    800038ac:	fa0482e3          	beqz	s1,80003850 <devintr+0x40>
    800038b0:	00048593          	mv	a1,s1
    800038b4:	00003517          	auipc	a0,0x3
    800038b8:	97c50513          	addi	a0,a0,-1668 # 80006230 <CONSOLE_STATUS+0x220>
    800038bc:	00000097          	auipc	ra,0x0
    800038c0:	66c080e7          	jalr	1644(ra) # 80003f28 <__printf>
    800038c4:	00048513          	mv	a0,s1
    800038c8:	00000097          	auipc	ra,0x0
    800038cc:	254080e7          	jalr	596(ra) # 80003b1c <plic_complete>
    800038d0:	00100513          	li	a0,1
    800038d4:	f7dff06f          	j	80003850 <devintr+0x40>
    800038d8:	00005517          	auipc	a0,0x5
    800038dc:	b9850513          	addi	a0,a0,-1128 # 80008470 <tickslock>
    800038e0:	00001097          	auipc	ra,0x1
    800038e4:	31c080e7          	jalr	796(ra) # 80004bfc <acquire>
    800038e8:	00004717          	auipc	a4,0x4
    800038ec:	a6c70713          	addi	a4,a4,-1428 # 80007354 <ticks>
    800038f0:	00072783          	lw	a5,0(a4)
    800038f4:	00005517          	auipc	a0,0x5
    800038f8:	b7c50513          	addi	a0,a0,-1156 # 80008470 <tickslock>
    800038fc:	0017879b          	addiw	a5,a5,1
    80003900:	00f72023          	sw	a5,0(a4)
    80003904:	00001097          	auipc	ra,0x1
    80003908:	3c4080e7          	jalr	964(ra) # 80004cc8 <release>
    8000390c:	f65ff06f          	j	80003870 <devintr+0x60>
    80003910:	00001097          	auipc	ra,0x1
    80003914:	f20080e7          	jalr	-224(ra) # 80004830 <uartintr>
    80003918:	fadff06f          	j	800038c4 <devintr+0xb4>
    8000391c:	0000                	unimp
	...

0000000080003920 <kernelvec>:
    80003920:	f0010113          	addi	sp,sp,-256
    80003924:	00113023          	sd	ra,0(sp)
    80003928:	00213423          	sd	sp,8(sp)
    8000392c:	00313823          	sd	gp,16(sp)
    80003930:	00413c23          	sd	tp,24(sp)
    80003934:	02513023          	sd	t0,32(sp)
    80003938:	02613423          	sd	t1,40(sp)
    8000393c:	02713823          	sd	t2,48(sp)
    80003940:	02813c23          	sd	s0,56(sp)
    80003944:	04913023          	sd	s1,64(sp)
    80003948:	04a13423          	sd	a0,72(sp)
    8000394c:	04b13823          	sd	a1,80(sp)
    80003950:	04c13c23          	sd	a2,88(sp)
    80003954:	06d13023          	sd	a3,96(sp)
    80003958:	06e13423          	sd	a4,104(sp)
    8000395c:	06f13823          	sd	a5,112(sp)
    80003960:	07013c23          	sd	a6,120(sp)
    80003964:	09113023          	sd	a7,128(sp)
    80003968:	09213423          	sd	s2,136(sp)
    8000396c:	09313823          	sd	s3,144(sp)
    80003970:	09413c23          	sd	s4,152(sp)
    80003974:	0b513023          	sd	s5,160(sp)
    80003978:	0b613423          	sd	s6,168(sp)
    8000397c:	0b713823          	sd	s7,176(sp)
    80003980:	0b813c23          	sd	s8,184(sp)
    80003984:	0d913023          	sd	s9,192(sp)
    80003988:	0da13423          	sd	s10,200(sp)
    8000398c:	0db13823          	sd	s11,208(sp)
    80003990:	0dc13c23          	sd	t3,216(sp)
    80003994:	0fd13023          	sd	t4,224(sp)
    80003998:	0fe13423          	sd	t5,232(sp)
    8000399c:	0ff13823          	sd	t6,240(sp)
    800039a0:	cd1ff0ef          	jal	ra,80003670 <kerneltrap>
    800039a4:	00013083          	ld	ra,0(sp)
    800039a8:	00813103          	ld	sp,8(sp)
    800039ac:	01013183          	ld	gp,16(sp)
    800039b0:	02013283          	ld	t0,32(sp)
    800039b4:	02813303          	ld	t1,40(sp)
    800039b8:	03013383          	ld	t2,48(sp)
    800039bc:	03813403          	ld	s0,56(sp)
    800039c0:	04013483          	ld	s1,64(sp)
    800039c4:	04813503          	ld	a0,72(sp)
    800039c8:	05013583          	ld	a1,80(sp)
    800039cc:	05813603          	ld	a2,88(sp)
    800039d0:	06013683          	ld	a3,96(sp)
    800039d4:	06813703          	ld	a4,104(sp)
    800039d8:	07013783          	ld	a5,112(sp)
    800039dc:	07813803          	ld	a6,120(sp)
    800039e0:	08013883          	ld	a7,128(sp)
    800039e4:	08813903          	ld	s2,136(sp)
    800039e8:	09013983          	ld	s3,144(sp)
    800039ec:	09813a03          	ld	s4,152(sp)
    800039f0:	0a013a83          	ld	s5,160(sp)
    800039f4:	0a813b03          	ld	s6,168(sp)
    800039f8:	0b013b83          	ld	s7,176(sp)
    800039fc:	0b813c03          	ld	s8,184(sp)
    80003a00:	0c013c83          	ld	s9,192(sp)
    80003a04:	0c813d03          	ld	s10,200(sp)
    80003a08:	0d013d83          	ld	s11,208(sp)
    80003a0c:	0d813e03          	ld	t3,216(sp)
    80003a10:	0e013e83          	ld	t4,224(sp)
    80003a14:	0e813f03          	ld	t5,232(sp)
    80003a18:	0f013f83          	ld	t6,240(sp)
    80003a1c:	10010113          	addi	sp,sp,256
    80003a20:	10200073          	sret
    80003a24:	00000013          	nop
    80003a28:	00000013          	nop
    80003a2c:	00000013          	nop

0000000080003a30 <timervec>:
    80003a30:	34051573          	csrrw	a0,mscratch,a0
    80003a34:	00b53023          	sd	a1,0(a0)
    80003a38:	00c53423          	sd	a2,8(a0)
    80003a3c:	00d53823          	sd	a3,16(a0)
    80003a40:	01853583          	ld	a1,24(a0)
    80003a44:	02053603          	ld	a2,32(a0)
    80003a48:	0005b683          	ld	a3,0(a1)
    80003a4c:	00c686b3          	add	a3,a3,a2
    80003a50:	00d5b023          	sd	a3,0(a1)
    80003a54:	00200593          	li	a1,2
    80003a58:	14459073          	csrw	sip,a1
    80003a5c:	01053683          	ld	a3,16(a0)
    80003a60:	00853603          	ld	a2,8(a0)
    80003a64:	00053583          	ld	a1,0(a0)
    80003a68:	34051573          	csrrw	a0,mscratch,a0
    80003a6c:	30200073          	mret

0000000080003a70 <plicinit>:
    80003a70:	ff010113          	addi	sp,sp,-16
    80003a74:	00813423          	sd	s0,8(sp)
    80003a78:	01010413          	addi	s0,sp,16
    80003a7c:	00813403          	ld	s0,8(sp)
    80003a80:	0c0007b7          	lui	a5,0xc000
    80003a84:	00100713          	li	a4,1
    80003a88:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80003a8c:	00e7a223          	sw	a4,4(a5)
    80003a90:	01010113          	addi	sp,sp,16
    80003a94:	00008067          	ret

0000000080003a98 <plicinithart>:
    80003a98:	ff010113          	addi	sp,sp,-16
    80003a9c:	00813023          	sd	s0,0(sp)
    80003aa0:	00113423          	sd	ra,8(sp)
    80003aa4:	01010413          	addi	s0,sp,16
    80003aa8:	00000097          	auipc	ra,0x0
    80003aac:	a48080e7          	jalr	-1464(ra) # 800034f0 <cpuid>
    80003ab0:	0085171b          	slliw	a4,a0,0x8
    80003ab4:	0c0027b7          	lui	a5,0xc002
    80003ab8:	00e787b3          	add	a5,a5,a4
    80003abc:	40200713          	li	a4,1026
    80003ac0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003ac4:	00813083          	ld	ra,8(sp)
    80003ac8:	00013403          	ld	s0,0(sp)
    80003acc:	00d5151b          	slliw	a0,a0,0xd
    80003ad0:	0c2017b7          	lui	a5,0xc201
    80003ad4:	00a78533          	add	a0,a5,a0
    80003ad8:	00052023          	sw	zero,0(a0)
    80003adc:	01010113          	addi	sp,sp,16
    80003ae0:	00008067          	ret

0000000080003ae4 <plic_claim>:
    80003ae4:	ff010113          	addi	sp,sp,-16
    80003ae8:	00813023          	sd	s0,0(sp)
    80003aec:	00113423          	sd	ra,8(sp)
    80003af0:	01010413          	addi	s0,sp,16
    80003af4:	00000097          	auipc	ra,0x0
    80003af8:	9fc080e7          	jalr	-1540(ra) # 800034f0 <cpuid>
    80003afc:	00813083          	ld	ra,8(sp)
    80003b00:	00013403          	ld	s0,0(sp)
    80003b04:	00d5151b          	slliw	a0,a0,0xd
    80003b08:	0c2017b7          	lui	a5,0xc201
    80003b0c:	00a78533          	add	a0,a5,a0
    80003b10:	00452503          	lw	a0,4(a0)
    80003b14:	01010113          	addi	sp,sp,16
    80003b18:	00008067          	ret

0000000080003b1c <plic_complete>:
    80003b1c:	fe010113          	addi	sp,sp,-32
    80003b20:	00813823          	sd	s0,16(sp)
    80003b24:	00913423          	sd	s1,8(sp)
    80003b28:	00113c23          	sd	ra,24(sp)
    80003b2c:	02010413          	addi	s0,sp,32
    80003b30:	00050493          	mv	s1,a0
    80003b34:	00000097          	auipc	ra,0x0
    80003b38:	9bc080e7          	jalr	-1604(ra) # 800034f0 <cpuid>
    80003b3c:	01813083          	ld	ra,24(sp)
    80003b40:	01013403          	ld	s0,16(sp)
    80003b44:	00d5179b          	slliw	a5,a0,0xd
    80003b48:	0c201737          	lui	a4,0xc201
    80003b4c:	00f707b3          	add	a5,a4,a5
    80003b50:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80003b54:	00813483          	ld	s1,8(sp)
    80003b58:	02010113          	addi	sp,sp,32
    80003b5c:	00008067          	ret

0000000080003b60 <consolewrite>:
    80003b60:	fb010113          	addi	sp,sp,-80
    80003b64:	04813023          	sd	s0,64(sp)
    80003b68:	04113423          	sd	ra,72(sp)
    80003b6c:	02913c23          	sd	s1,56(sp)
    80003b70:	03213823          	sd	s2,48(sp)
    80003b74:	03313423          	sd	s3,40(sp)
    80003b78:	03413023          	sd	s4,32(sp)
    80003b7c:	01513c23          	sd	s5,24(sp)
    80003b80:	05010413          	addi	s0,sp,80
    80003b84:	06c05c63          	blez	a2,80003bfc <consolewrite+0x9c>
    80003b88:	00060993          	mv	s3,a2
    80003b8c:	00050a13          	mv	s4,a0
    80003b90:	00058493          	mv	s1,a1
    80003b94:	00000913          	li	s2,0
    80003b98:	fff00a93          	li	s5,-1
    80003b9c:	01c0006f          	j	80003bb8 <consolewrite+0x58>
    80003ba0:	fbf44503          	lbu	a0,-65(s0)
    80003ba4:	0019091b          	addiw	s2,s2,1
    80003ba8:	00148493          	addi	s1,s1,1
    80003bac:	00001097          	auipc	ra,0x1
    80003bb0:	a9c080e7          	jalr	-1380(ra) # 80004648 <uartputc>
    80003bb4:	03298063          	beq	s3,s2,80003bd4 <consolewrite+0x74>
    80003bb8:	00048613          	mv	a2,s1
    80003bbc:	00100693          	li	a3,1
    80003bc0:	000a0593          	mv	a1,s4
    80003bc4:	fbf40513          	addi	a0,s0,-65
    80003bc8:	00000097          	auipc	ra,0x0
    80003bcc:	9e0080e7          	jalr	-1568(ra) # 800035a8 <either_copyin>
    80003bd0:	fd5518e3          	bne	a0,s5,80003ba0 <consolewrite+0x40>
    80003bd4:	04813083          	ld	ra,72(sp)
    80003bd8:	04013403          	ld	s0,64(sp)
    80003bdc:	03813483          	ld	s1,56(sp)
    80003be0:	02813983          	ld	s3,40(sp)
    80003be4:	02013a03          	ld	s4,32(sp)
    80003be8:	01813a83          	ld	s5,24(sp)
    80003bec:	00090513          	mv	a0,s2
    80003bf0:	03013903          	ld	s2,48(sp)
    80003bf4:	05010113          	addi	sp,sp,80
    80003bf8:	00008067          	ret
    80003bfc:	00000913          	li	s2,0
    80003c00:	fd5ff06f          	j	80003bd4 <consolewrite+0x74>

0000000080003c04 <consoleread>:
    80003c04:	f9010113          	addi	sp,sp,-112
    80003c08:	06813023          	sd	s0,96(sp)
    80003c0c:	04913c23          	sd	s1,88(sp)
    80003c10:	05213823          	sd	s2,80(sp)
    80003c14:	05313423          	sd	s3,72(sp)
    80003c18:	05413023          	sd	s4,64(sp)
    80003c1c:	03513c23          	sd	s5,56(sp)
    80003c20:	03613823          	sd	s6,48(sp)
    80003c24:	03713423          	sd	s7,40(sp)
    80003c28:	03813023          	sd	s8,32(sp)
    80003c2c:	06113423          	sd	ra,104(sp)
    80003c30:	01913c23          	sd	s9,24(sp)
    80003c34:	07010413          	addi	s0,sp,112
    80003c38:	00060b93          	mv	s7,a2
    80003c3c:	00050913          	mv	s2,a0
    80003c40:	00058c13          	mv	s8,a1
    80003c44:	00060b1b          	sext.w	s6,a2
    80003c48:	00005497          	auipc	s1,0x5
    80003c4c:	85048493          	addi	s1,s1,-1968 # 80008498 <cons>
    80003c50:	00400993          	li	s3,4
    80003c54:	fff00a13          	li	s4,-1
    80003c58:	00a00a93          	li	s5,10
    80003c5c:	05705e63          	blez	s7,80003cb8 <consoleread+0xb4>
    80003c60:	09c4a703          	lw	a4,156(s1)
    80003c64:	0984a783          	lw	a5,152(s1)
    80003c68:	0007071b          	sext.w	a4,a4
    80003c6c:	08e78463          	beq	a5,a4,80003cf4 <consoleread+0xf0>
    80003c70:	07f7f713          	andi	a4,a5,127
    80003c74:	00e48733          	add	a4,s1,a4
    80003c78:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80003c7c:	0017869b          	addiw	a3,a5,1
    80003c80:	08d4ac23          	sw	a3,152(s1)
    80003c84:	00070c9b          	sext.w	s9,a4
    80003c88:	0b370663          	beq	a4,s3,80003d34 <consoleread+0x130>
    80003c8c:	00100693          	li	a3,1
    80003c90:	f9f40613          	addi	a2,s0,-97
    80003c94:	000c0593          	mv	a1,s8
    80003c98:	00090513          	mv	a0,s2
    80003c9c:	f8e40fa3          	sb	a4,-97(s0)
    80003ca0:	00000097          	auipc	ra,0x0
    80003ca4:	8bc080e7          	jalr	-1860(ra) # 8000355c <either_copyout>
    80003ca8:	01450863          	beq	a0,s4,80003cb8 <consoleread+0xb4>
    80003cac:	001c0c13          	addi	s8,s8,1
    80003cb0:	fffb8b9b          	addiw	s7,s7,-1
    80003cb4:	fb5c94e3          	bne	s9,s5,80003c5c <consoleread+0x58>
    80003cb8:	000b851b          	sext.w	a0,s7
    80003cbc:	06813083          	ld	ra,104(sp)
    80003cc0:	06013403          	ld	s0,96(sp)
    80003cc4:	05813483          	ld	s1,88(sp)
    80003cc8:	05013903          	ld	s2,80(sp)
    80003ccc:	04813983          	ld	s3,72(sp)
    80003cd0:	04013a03          	ld	s4,64(sp)
    80003cd4:	03813a83          	ld	s5,56(sp)
    80003cd8:	02813b83          	ld	s7,40(sp)
    80003cdc:	02013c03          	ld	s8,32(sp)
    80003ce0:	01813c83          	ld	s9,24(sp)
    80003ce4:	40ab053b          	subw	a0,s6,a0
    80003ce8:	03013b03          	ld	s6,48(sp)
    80003cec:	07010113          	addi	sp,sp,112
    80003cf0:	00008067          	ret
    80003cf4:	00001097          	auipc	ra,0x1
    80003cf8:	1d8080e7          	jalr	472(ra) # 80004ecc <push_on>
    80003cfc:	0984a703          	lw	a4,152(s1)
    80003d00:	09c4a783          	lw	a5,156(s1)
    80003d04:	0007879b          	sext.w	a5,a5
    80003d08:	fef70ce3          	beq	a4,a5,80003d00 <consoleread+0xfc>
    80003d0c:	00001097          	auipc	ra,0x1
    80003d10:	234080e7          	jalr	564(ra) # 80004f40 <pop_on>
    80003d14:	0984a783          	lw	a5,152(s1)
    80003d18:	07f7f713          	andi	a4,a5,127
    80003d1c:	00e48733          	add	a4,s1,a4
    80003d20:	01874703          	lbu	a4,24(a4)
    80003d24:	0017869b          	addiw	a3,a5,1
    80003d28:	08d4ac23          	sw	a3,152(s1)
    80003d2c:	00070c9b          	sext.w	s9,a4
    80003d30:	f5371ee3          	bne	a4,s3,80003c8c <consoleread+0x88>
    80003d34:	000b851b          	sext.w	a0,s7
    80003d38:	f96bf2e3          	bgeu	s7,s6,80003cbc <consoleread+0xb8>
    80003d3c:	08f4ac23          	sw	a5,152(s1)
    80003d40:	f7dff06f          	j	80003cbc <consoleread+0xb8>

0000000080003d44 <consputc>:
    80003d44:	10000793          	li	a5,256
    80003d48:	00f50663          	beq	a0,a5,80003d54 <consputc+0x10>
    80003d4c:	00001317          	auipc	t1,0x1
    80003d50:	9f430067          	jr	-1548(t1) # 80004740 <uartputc_sync>
    80003d54:	ff010113          	addi	sp,sp,-16
    80003d58:	00113423          	sd	ra,8(sp)
    80003d5c:	00813023          	sd	s0,0(sp)
    80003d60:	01010413          	addi	s0,sp,16
    80003d64:	00800513          	li	a0,8
    80003d68:	00001097          	auipc	ra,0x1
    80003d6c:	9d8080e7          	jalr	-1576(ra) # 80004740 <uartputc_sync>
    80003d70:	02000513          	li	a0,32
    80003d74:	00001097          	auipc	ra,0x1
    80003d78:	9cc080e7          	jalr	-1588(ra) # 80004740 <uartputc_sync>
    80003d7c:	00013403          	ld	s0,0(sp)
    80003d80:	00813083          	ld	ra,8(sp)
    80003d84:	00800513          	li	a0,8
    80003d88:	01010113          	addi	sp,sp,16
    80003d8c:	00001317          	auipc	t1,0x1
    80003d90:	9b430067          	jr	-1612(t1) # 80004740 <uartputc_sync>

0000000080003d94 <consoleintr>:
    80003d94:	fe010113          	addi	sp,sp,-32
    80003d98:	00813823          	sd	s0,16(sp)
    80003d9c:	00913423          	sd	s1,8(sp)
    80003da0:	01213023          	sd	s2,0(sp)
    80003da4:	00113c23          	sd	ra,24(sp)
    80003da8:	02010413          	addi	s0,sp,32
    80003dac:	00004917          	auipc	s2,0x4
    80003db0:	6ec90913          	addi	s2,s2,1772 # 80008498 <cons>
    80003db4:	00050493          	mv	s1,a0
    80003db8:	00090513          	mv	a0,s2
    80003dbc:	00001097          	auipc	ra,0x1
    80003dc0:	e40080e7          	jalr	-448(ra) # 80004bfc <acquire>
    80003dc4:	02048c63          	beqz	s1,80003dfc <consoleintr+0x68>
    80003dc8:	0a092783          	lw	a5,160(s2)
    80003dcc:	09892703          	lw	a4,152(s2)
    80003dd0:	07f00693          	li	a3,127
    80003dd4:	40e7873b          	subw	a4,a5,a4
    80003dd8:	02e6e263          	bltu	a3,a4,80003dfc <consoleintr+0x68>
    80003ddc:	00d00713          	li	a4,13
    80003de0:	04e48063          	beq	s1,a4,80003e20 <consoleintr+0x8c>
    80003de4:	07f7f713          	andi	a4,a5,127
    80003de8:	00e90733          	add	a4,s2,a4
    80003dec:	0017879b          	addiw	a5,a5,1
    80003df0:	0af92023          	sw	a5,160(s2)
    80003df4:	00970c23          	sb	s1,24(a4)
    80003df8:	08f92e23          	sw	a5,156(s2)
    80003dfc:	01013403          	ld	s0,16(sp)
    80003e00:	01813083          	ld	ra,24(sp)
    80003e04:	00813483          	ld	s1,8(sp)
    80003e08:	00013903          	ld	s2,0(sp)
    80003e0c:	00004517          	auipc	a0,0x4
    80003e10:	68c50513          	addi	a0,a0,1676 # 80008498 <cons>
    80003e14:	02010113          	addi	sp,sp,32
    80003e18:	00001317          	auipc	t1,0x1
    80003e1c:	eb030067          	jr	-336(t1) # 80004cc8 <release>
    80003e20:	00a00493          	li	s1,10
    80003e24:	fc1ff06f          	j	80003de4 <consoleintr+0x50>

0000000080003e28 <consoleinit>:
    80003e28:	fe010113          	addi	sp,sp,-32
    80003e2c:	00113c23          	sd	ra,24(sp)
    80003e30:	00813823          	sd	s0,16(sp)
    80003e34:	00913423          	sd	s1,8(sp)
    80003e38:	02010413          	addi	s0,sp,32
    80003e3c:	00004497          	auipc	s1,0x4
    80003e40:	65c48493          	addi	s1,s1,1628 # 80008498 <cons>
    80003e44:	00048513          	mv	a0,s1
    80003e48:	00002597          	auipc	a1,0x2
    80003e4c:	44058593          	addi	a1,a1,1088 # 80006288 <CONSOLE_STATUS+0x278>
    80003e50:	00001097          	auipc	ra,0x1
    80003e54:	d88080e7          	jalr	-632(ra) # 80004bd8 <initlock>
    80003e58:	00000097          	auipc	ra,0x0
    80003e5c:	7ac080e7          	jalr	1964(ra) # 80004604 <uartinit>
    80003e60:	01813083          	ld	ra,24(sp)
    80003e64:	01013403          	ld	s0,16(sp)
    80003e68:	00000797          	auipc	a5,0x0
    80003e6c:	d9c78793          	addi	a5,a5,-612 # 80003c04 <consoleread>
    80003e70:	0af4bc23          	sd	a5,184(s1)
    80003e74:	00000797          	auipc	a5,0x0
    80003e78:	cec78793          	addi	a5,a5,-788 # 80003b60 <consolewrite>
    80003e7c:	0cf4b023          	sd	a5,192(s1)
    80003e80:	00813483          	ld	s1,8(sp)
    80003e84:	02010113          	addi	sp,sp,32
    80003e88:	00008067          	ret

0000000080003e8c <console_read>:
    80003e8c:	ff010113          	addi	sp,sp,-16
    80003e90:	00813423          	sd	s0,8(sp)
    80003e94:	01010413          	addi	s0,sp,16
    80003e98:	00813403          	ld	s0,8(sp)
    80003e9c:	00004317          	auipc	t1,0x4
    80003ea0:	6b433303          	ld	t1,1716(t1) # 80008550 <devsw+0x10>
    80003ea4:	01010113          	addi	sp,sp,16
    80003ea8:	00030067          	jr	t1

0000000080003eac <console_write>:
    80003eac:	ff010113          	addi	sp,sp,-16
    80003eb0:	00813423          	sd	s0,8(sp)
    80003eb4:	01010413          	addi	s0,sp,16
    80003eb8:	00813403          	ld	s0,8(sp)
    80003ebc:	00004317          	auipc	t1,0x4
    80003ec0:	69c33303          	ld	t1,1692(t1) # 80008558 <devsw+0x18>
    80003ec4:	01010113          	addi	sp,sp,16
    80003ec8:	00030067          	jr	t1

0000000080003ecc <panic>:
    80003ecc:	fe010113          	addi	sp,sp,-32
    80003ed0:	00113c23          	sd	ra,24(sp)
    80003ed4:	00813823          	sd	s0,16(sp)
    80003ed8:	00913423          	sd	s1,8(sp)
    80003edc:	02010413          	addi	s0,sp,32
    80003ee0:	00050493          	mv	s1,a0
    80003ee4:	00002517          	auipc	a0,0x2
    80003ee8:	3ac50513          	addi	a0,a0,940 # 80006290 <CONSOLE_STATUS+0x280>
    80003eec:	00004797          	auipc	a5,0x4
    80003ef0:	7007a623          	sw	zero,1804(a5) # 800085f8 <pr+0x18>
    80003ef4:	00000097          	auipc	ra,0x0
    80003ef8:	034080e7          	jalr	52(ra) # 80003f28 <__printf>
    80003efc:	00048513          	mv	a0,s1
    80003f00:	00000097          	auipc	ra,0x0
    80003f04:	028080e7          	jalr	40(ra) # 80003f28 <__printf>
    80003f08:	00002517          	auipc	a0,0x2
    80003f0c:	22850513          	addi	a0,a0,552 # 80006130 <CONSOLE_STATUS+0x120>
    80003f10:	00000097          	auipc	ra,0x0
    80003f14:	018080e7          	jalr	24(ra) # 80003f28 <__printf>
    80003f18:	00100793          	li	a5,1
    80003f1c:	00003717          	auipc	a4,0x3
    80003f20:	42f72e23          	sw	a5,1084(a4) # 80007358 <panicked>
    80003f24:	0000006f          	j	80003f24 <panic+0x58>

0000000080003f28 <__printf>:
    80003f28:	f3010113          	addi	sp,sp,-208
    80003f2c:	08813023          	sd	s0,128(sp)
    80003f30:	07313423          	sd	s3,104(sp)
    80003f34:	09010413          	addi	s0,sp,144
    80003f38:	05813023          	sd	s8,64(sp)
    80003f3c:	08113423          	sd	ra,136(sp)
    80003f40:	06913c23          	sd	s1,120(sp)
    80003f44:	07213823          	sd	s2,112(sp)
    80003f48:	07413023          	sd	s4,96(sp)
    80003f4c:	05513c23          	sd	s5,88(sp)
    80003f50:	05613823          	sd	s6,80(sp)
    80003f54:	05713423          	sd	s7,72(sp)
    80003f58:	03913c23          	sd	s9,56(sp)
    80003f5c:	03a13823          	sd	s10,48(sp)
    80003f60:	03b13423          	sd	s11,40(sp)
    80003f64:	00004317          	auipc	t1,0x4
    80003f68:	67c30313          	addi	t1,t1,1660 # 800085e0 <pr>
    80003f6c:	01832c03          	lw	s8,24(t1)
    80003f70:	00b43423          	sd	a1,8(s0)
    80003f74:	00c43823          	sd	a2,16(s0)
    80003f78:	00d43c23          	sd	a3,24(s0)
    80003f7c:	02e43023          	sd	a4,32(s0)
    80003f80:	02f43423          	sd	a5,40(s0)
    80003f84:	03043823          	sd	a6,48(s0)
    80003f88:	03143c23          	sd	a7,56(s0)
    80003f8c:	00050993          	mv	s3,a0
    80003f90:	4a0c1663          	bnez	s8,8000443c <__printf+0x514>
    80003f94:	60098c63          	beqz	s3,800045ac <__printf+0x684>
    80003f98:	0009c503          	lbu	a0,0(s3)
    80003f9c:	00840793          	addi	a5,s0,8
    80003fa0:	f6f43c23          	sd	a5,-136(s0)
    80003fa4:	00000493          	li	s1,0
    80003fa8:	22050063          	beqz	a0,800041c8 <__printf+0x2a0>
    80003fac:	00002a37          	lui	s4,0x2
    80003fb0:	00018ab7          	lui	s5,0x18
    80003fb4:	000f4b37          	lui	s6,0xf4
    80003fb8:	00989bb7          	lui	s7,0x989
    80003fbc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003fc0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003fc4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003fc8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80003fcc:	00148c9b          	addiw	s9,s1,1
    80003fd0:	02500793          	li	a5,37
    80003fd4:	01998933          	add	s2,s3,s9
    80003fd8:	38f51263          	bne	a0,a5,8000435c <__printf+0x434>
    80003fdc:	00094783          	lbu	a5,0(s2)
    80003fe0:	00078c9b          	sext.w	s9,a5
    80003fe4:	1e078263          	beqz	a5,800041c8 <__printf+0x2a0>
    80003fe8:	0024849b          	addiw	s1,s1,2
    80003fec:	07000713          	li	a4,112
    80003ff0:	00998933          	add	s2,s3,s1
    80003ff4:	38e78a63          	beq	a5,a4,80004388 <__printf+0x460>
    80003ff8:	20f76863          	bltu	a4,a5,80004208 <__printf+0x2e0>
    80003ffc:	42a78863          	beq	a5,a0,8000442c <__printf+0x504>
    80004000:	06400713          	li	a4,100
    80004004:	40e79663          	bne	a5,a4,80004410 <__printf+0x4e8>
    80004008:	f7843783          	ld	a5,-136(s0)
    8000400c:	0007a603          	lw	a2,0(a5)
    80004010:	00878793          	addi	a5,a5,8
    80004014:	f6f43c23          	sd	a5,-136(s0)
    80004018:	42064a63          	bltz	a2,8000444c <__printf+0x524>
    8000401c:	00a00713          	li	a4,10
    80004020:	02e677bb          	remuw	a5,a2,a4
    80004024:	00002d97          	auipc	s11,0x2
    80004028:	294d8d93          	addi	s11,s11,660 # 800062b8 <digits>
    8000402c:	00900593          	li	a1,9
    80004030:	0006051b          	sext.w	a0,a2
    80004034:	00000c93          	li	s9,0
    80004038:	02079793          	slli	a5,a5,0x20
    8000403c:	0207d793          	srli	a5,a5,0x20
    80004040:	00fd87b3          	add	a5,s11,a5
    80004044:	0007c783          	lbu	a5,0(a5)
    80004048:	02e656bb          	divuw	a3,a2,a4
    8000404c:	f8f40023          	sb	a5,-128(s0)
    80004050:	14c5d863          	bge	a1,a2,800041a0 <__printf+0x278>
    80004054:	06300593          	li	a1,99
    80004058:	00100c93          	li	s9,1
    8000405c:	02e6f7bb          	remuw	a5,a3,a4
    80004060:	02079793          	slli	a5,a5,0x20
    80004064:	0207d793          	srli	a5,a5,0x20
    80004068:	00fd87b3          	add	a5,s11,a5
    8000406c:	0007c783          	lbu	a5,0(a5)
    80004070:	02e6d73b          	divuw	a4,a3,a4
    80004074:	f8f400a3          	sb	a5,-127(s0)
    80004078:	12a5f463          	bgeu	a1,a0,800041a0 <__printf+0x278>
    8000407c:	00a00693          	li	a3,10
    80004080:	00900593          	li	a1,9
    80004084:	02d777bb          	remuw	a5,a4,a3
    80004088:	02079793          	slli	a5,a5,0x20
    8000408c:	0207d793          	srli	a5,a5,0x20
    80004090:	00fd87b3          	add	a5,s11,a5
    80004094:	0007c503          	lbu	a0,0(a5)
    80004098:	02d757bb          	divuw	a5,a4,a3
    8000409c:	f8a40123          	sb	a0,-126(s0)
    800040a0:	48e5f263          	bgeu	a1,a4,80004524 <__printf+0x5fc>
    800040a4:	06300513          	li	a0,99
    800040a8:	02d7f5bb          	remuw	a1,a5,a3
    800040ac:	02059593          	slli	a1,a1,0x20
    800040b0:	0205d593          	srli	a1,a1,0x20
    800040b4:	00bd85b3          	add	a1,s11,a1
    800040b8:	0005c583          	lbu	a1,0(a1)
    800040bc:	02d7d7bb          	divuw	a5,a5,a3
    800040c0:	f8b401a3          	sb	a1,-125(s0)
    800040c4:	48e57263          	bgeu	a0,a4,80004548 <__printf+0x620>
    800040c8:	3e700513          	li	a0,999
    800040cc:	02d7f5bb          	remuw	a1,a5,a3
    800040d0:	02059593          	slli	a1,a1,0x20
    800040d4:	0205d593          	srli	a1,a1,0x20
    800040d8:	00bd85b3          	add	a1,s11,a1
    800040dc:	0005c583          	lbu	a1,0(a1)
    800040e0:	02d7d7bb          	divuw	a5,a5,a3
    800040e4:	f8b40223          	sb	a1,-124(s0)
    800040e8:	46e57663          	bgeu	a0,a4,80004554 <__printf+0x62c>
    800040ec:	02d7f5bb          	remuw	a1,a5,a3
    800040f0:	02059593          	slli	a1,a1,0x20
    800040f4:	0205d593          	srli	a1,a1,0x20
    800040f8:	00bd85b3          	add	a1,s11,a1
    800040fc:	0005c583          	lbu	a1,0(a1)
    80004100:	02d7d7bb          	divuw	a5,a5,a3
    80004104:	f8b402a3          	sb	a1,-123(s0)
    80004108:	46ea7863          	bgeu	s4,a4,80004578 <__printf+0x650>
    8000410c:	02d7f5bb          	remuw	a1,a5,a3
    80004110:	02059593          	slli	a1,a1,0x20
    80004114:	0205d593          	srli	a1,a1,0x20
    80004118:	00bd85b3          	add	a1,s11,a1
    8000411c:	0005c583          	lbu	a1,0(a1)
    80004120:	02d7d7bb          	divuw	a5,a5,a3
    80004124:	f8b40323          	sb	a1,-122(s0)
    80004128:	3eeaf863          	bgeu	s5,a4,80004518 <__printf+0x5f0>
    8000412c:	02d7f5bb          	remuw	a1,a5,a3
    80004130:	02059593          	slli	a1,a1,0x20
    80004134:	0205d593          	srli	a1,a1,0x20
    80004138:	00bd85b3          	add	a1,s11,a1
    8000413c:	0005c583          	lbu	a1,0(a1)
    80004140:	02d7d7bb          	divuw	a5,a5,a3
    80004144:	f8b403a3          	sb	a1,-121(s0)
    80004148:	42eb7e63          	bgeu	s6,a4,80004584 <__printf+0x65c>
    8000414c:	02d7f5bb          	remuw	a1,a5,a3
    80004150:	02059593          	slli	a1,a1,0x20
    80004154:	0205d593          	srli	a1,a1,0x20
    80004158:	00bd85b3          	add	a1,s11,a1
    8000415c:	0005c583          	lbu	a1,0(a1)
    80004160:	02d7d7bb          	divuw	a5,a5,a3
    80004164:	f8b40423          	sb	a1,-120(s0)
    80004168:	42ebfc63          	bgeu	s7,a4,800045a0 <__printf+0x678>
    8000416c:	02079793          	slli	a5,a5,0x20
    80004170:	0207d793          	srli	a5,a5,0x20
    80004174:	00fd8db3          	add	s11,s11,a5
    80004178:	000dc703          	lbu	a4,0(s11)
    8000417c:	00a00793          	li	a5,10
    80004180:	00900c93          	li	s9,9
    80004184:	f8e404a3          	sb	a4,-119(s0)
    80004188:	00065c63          	bgez	a2,800041a0 <__printf+0x278>
    8000418c:	f9040713          	addi	a4,s0,-112
    80004190:	00f70733          	add	a4,a4,a5
    80004194:	02d00693          	li	a3,45
    80004198:	fed70823          	sb	a3,-16(a4)
    8000419c:	00078c93          	mv	s9,a5
    800041a0:	f8040793          	addi	a5,s0,-128
    800041a4:	01978cb3          	add	s9,a5,s9
    800041a8:	f7f40d13          	addi	s10,s0,-129
    800041ac:	000cc503          	lbu	a0,0(s9)
    800041b0:	fffc8c93          	addi	s9,s9,-1
    800041b4:	00000097          	auipc	ra,0x0
    800041b8:	b90080e7          	jalr	-1136(ra) # 80003d44 <consputc>
    800041bc:	ffac98e3          	bne	s9,s10,800041ac <__printf+0x284>
    800041c0:	00094503          	lbu	a0,0(s2)
    800041c4:	e00514e3          	bnez	a0,80003fcc <__printf+0xa4>
    800041c8:	1a0c1663          	bnez	s8,80004374 <__printf+0x44c>
    800041cc:	08813083          	ld	ra,136(sp)
    800041d0:	08013403          	ld	s0,128(sp)
    800041d4:	07813483          	ld	s1,120(sp)
    800041d8:	07013903          	ld	s2,112(sp)
    800041dc:	06813983          	ld	s3,104(sp)
    800041e0:	06013a03          	ld	s4,96(sp)
    800041e4:	05813a83          	ld	s5,88(sp)
    800041e8:	05013b03          	ld	s6,80(sp)
    800041ec:	04813b83          	ld	s7,72(sp)
    800041f0:	04013c03          	ld	s8,64(sp)
    800041f4:	03813c83          	ld	s9,56(sp)
    800041f8:	03013d03          	ld	s10,48(sp)
    800041fc:	02813d83          	ld	s11,40(sp)
    80004200:	0d010113          	addi	sp,sp,208
    80004204:	00008067          	ret
    80004208:	07300713          	li	a4,115
    8000420c:	1ce78a63          	beq	a5,a4,800043e0 <__printf+0x4b8>
    80004210:	07800713          	li	a4,120
    80004214:	1ee79e63          	bne	a5,a4,80004410 <__printf+0x4e8>
    80004218:	f7843783          	ld	a5,-136(s0)
    8000421c:	0007a703          	lw	a4,0(a5)
    80004220:	00878793          	addi	a5,a5,8
    80004224:	f6f43c23          	sd	a5,-136(s0)
    80004228:	28074263          	bltz	a4,800044ac <__printf+0x584>
    8000422c:	00002d97          	auipc	s11,0x2
    80004230:	08cd8d93          	addi	s11,s11,140 # 800062b8 <digits>
    80004234:	00f77793          	andi	a5,a4,15
    80004238:	00fd87b3          	add	a5,s11,a5
    8000423c:	0007c683          	lbu	a3,0(a5)
    80004240:	00f00613          	li	a2,15
    80004244:	0007079b          	sext.w	a5,a4
    80004248:	f8d40023          	sb	a3,-128(s0)
    8000424c:	0047559b          	srliw	a1,a4,0x4
    80004250:	0047569b          	srliw	a3,a4,0x4
    80004254:	00000c93          	li	s9,0
    80004258:	0ee65063          	bge	a2,a4,80004338 <__printf+0x410>
    8000425c:	00f6f693          	andi	a3,a3,15
    80004260:	00dd86b3          	add	a3,s11,a3
    80004264:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80004268:	0087d79b          	srliw	a5,a5,0x8
    8000426c:	00100c93          	li	s9,1
    80004270:	f8d400a3          	sb	a3,-127(s0)
    80004274:	0cb67263          	bgeu	a2,a1,80004338 <__printf+0x410>
    80004278:	00f7f693          	andi	a3,a5,15
    8000427c:	00dd86b3          	add	a3,s11,a3
    80004280:	0006c583          	lbu	a1,0(a3)
    80004284:	00f00613          	li	a2,15
    80004288:	0047d69b          	srliw	a3,a5,0x4
    8000428c:	f8b40123          	sb	a1,-126(s0)
    80004290:	0047d593          	srli	a1,a5,0x4
    80004294:	28f67e63          	bgeu	a2,a5,80004530 <__printf+0x608>
    80004298:	00f6f693          	andi	a3,a3,15
    8000429c:	00dd86b3          	add	a3,s11,a3
    800042a0:	0006c503          	lbu	a0,0(a3)
    800042a4:	0087d813          	srli	a6,a5,0x8
    800042a8:	0087d69b          	srliw	a3,a5,0x8
    800042ac:	f8a401a3          	sb	a0,-125(s0)
    800042b0:	28b67663          	bgeu	a2,a1,8000453c <__printf+0x614>
    800042b4:	00f6f693          	andi	a3,a3,15
    800042b8:	00dd86b3          	add	a3,s11,a3
    800042bc:	0006c583          	lbu	a1,0(a3)
    800042c0:	00c7d513          	srli	a0,a5,0xc
    800042c4:	00c7d69b          	srliw	a3,a5,0xc
    800042c8:	f8b40223          	sb	a1,-124(s0)
    800042cc:	29067a63          	bgeu	a2,a6,80004560 <__printf+0x638>
    800042d0:	00f6f693          	andi	a3,a3,15
    800042d4:	00dd86b3          	add	a3,s11,a3
    800042d8:	0006c583          	lbu	a1,0(a3)
    800042dc:	0107d813          	srli	a6,a5,0x10
    800042e0:	0107d69b          	srliw	a3,a5,0x10
    800042e4:	f8b402a3          	sb	a1,-123(s0)
    800042e8:	28a67263          	bgeu	a2,a0,8000456c <__printf+0x644>
    800042ec:	00f6f693          	andi	a3,a3,15
    800042f0:	00dd86b3          	add	a3,s11,a3
    800042f4:	0006c683          	lbu	a3,0(a3)
    800042f8:	0147d79b          	srliw	a5,a5,0x14
    800042fc:	f8d40323          	sb	a3,-122(s0)
    80004300:	21067663          	bgeu	a2,a6,8000450c <__printf+0x5e4>
    80004304:	02079793          	slli	a5,a5,0x20
    80004308:	0207d793          	srli	a5,a5,0x20
    8000430c:	00fd8db3          	add	s11,s11,a5
    80004310:	000dc683          	lbu	a3,0(s11)
    80004314:	00800793          	li	a5,8
    80004318:	00700c93          	li	s9,7
    8000431c:	f8d403a3          	sb	a3,-121(s0)
    80004320:	00075c63          	bgez	a4,80004338 <__printf+0x410>
    80004324:	f9040713          	addi	a4,s0,-112
    80004328:	00f70733          	add	a4,a4,a5
    8000432c:	02d00693          	li	a3,45
    80004330:	fed70823          	sb	a3,-16(a4)
    80004334:	00078c93          	mv	s9,a5
    80004338:	f8040793          	addi	a5,s0,-128
    8000433c:	01978cb3          	add	s9,a5,s9
    80004340:	f7f40d13          	addi	s10,s0,-129
    80004344:	000cc503          	lbu	a0,0(s9)
    80004348:	fffc8c93          	addi	s9,s9,-1
    8000434c:	00000097          	auipc	ra,0x0
    80004350:	9f8080e7          	jalr	-1544(ra) # 80003d44 <consputc>
    80004354:	ff9d18e3          	bne	s10,s9,80004344 <__printf+0x41c>
    80004358:	0100006f          	j	80004368 <__printf+0x440>
    8000435c:	00000097          	auipc	ra,0x0
    80004360:	9e8080e7          	jalr	-1560(ra) # 80003d44 <consputc>
    80004364:	000c8493          	mv	s1,s9
    80004368:	00094503          	lbu	a0,0(s2)
    8000436c:	c60510e3          	bnez	a0,80003fcc <__printf+0xa4>
    80004370:	e40c0ee3          	beqz	s8,800041cc <__printf+0x2a4>
    80004374:	00004517          	auipc	a0,0x4
    80004378:	26c50513          	addi	a0,a0,620 # 800085e0 <pr>
    8000437c:	00001097          	auipc	ra,0x1
    80004380:	94c080e7          	jalr	-1716(ra) # 80004cc8 <release>
    80004384:	e49ff06f          	j	800041cc <__printf+0x2a4>
    80004388:	f7843783          	ld	a5,-136(s0)
    8000438c:	03000513          	li	a0,48
    80004390:	01000d13          	li	s10,16
    80004394:	00878713          	addi	a4,a5,8
    80004398:	0007bc83          	ld	s9,0(a5)
    8000439c:	f6e43c23          	sd	a4,-136(s0)
    800043a0:	00000097          	auipc	ra,0x0
    800043a4:	9a4080e7          	jalr	-1628(ra) # 80003d44 <consputc>
    800043a8:	07800513          	li	a0,120
    800043ac:	00000097          	auipc	ra,0x0
    800043b0:	998080e7          	jalr	-1640(ra) # 80003d44 <consputc>
    800043b4:	00002d97          	auipc	s11,0x2
    800043b8:	f04d8d93          	addi	s11,s11,-252 # 800062b8 <digits>
    800043bc:	03ccd793          	srli	a5,s9,0x3c
    800043c0:	00fd87b3          	add	a5,s11,a5
    800043c4:	0007c503          	lbu	a0,0(a5)
    800043c8:	fffd0d1b          	addiw	s10,s10,-1
    800043cc:	004c9c93          	slli	s9,s9,0x4
    800043d0:	00000097          	auipc	ra,0x0
    800043d4:	974080e7          	jalr	-1676(ra) # 80003d44 <consputc>
    800043d8:	fe0d12e3          	bnez	s10,800043bc <__printf+0x494>
    800043dc:	f8dff06f          	j	80004368 <__printf+0x440>
    800043e0:	f7843783          	ld	a5,-136(s0)
    800043e4:	0007bc83          	ld	s9,0(a5)
    800043e8:	00878793          	addi	a5,a5,8
    800043ec:	f6f43c23          	sd	a5,-136(s0)
    800043f0:	000c9a63          	bnez	s9,80004404 <__printf+0x4dc>
    800043f4:	1080006f          	j	800044fc <__printf+0x5d4>
    800043f8:	001c8c93          	addi	s9,s9,1
    800043fc:	00000097          	auipc	ra,0x0
    80004400:	948080e7          	jalr	-1720(ra) # 80003d44 <consputc>
    80004404:	000cc503          	lbu	a0,0(s9)
    80004408:	fe0518e3          	bnez	a0,800043f8 <__printf+0x4d0>
    8000440c:	f5dff06f          	j	80004368 <__printf+0x440>
    80004410:	02500513          	li	a0,37
    80004414:	00000097          	auipc	ra,0x0
    80004418:	930080e7          	jalr	-1744(ra) # 80003d44 <consputc>
    8000441c:	000c8513          	mv	a0,s9
    80004420:	00000097          	auipc	ra,0x0
    80004424:	924080e7          	jalr	-1756(ra) # 80003d44 <consputc>
    80004428:	f41ff06f          	j	80004368 <__printf+0x440>
    8000442c:	02500513          	li	a0,37
    80004430:	00000097          	auipc	ra,0x0
    80004434:	914080e7          	jalr	-1772(ra) # 80003d44 <consputc>
    80004438:	f31ff06f          	j	80004368 <__printf+0x440>
    8000443c:	00030513          	mv	a0,t1
    80004440:	00000097          	auipc	ra,0x0
    80004444:	7bc080e7          	jalr	1980(ra) # 80004bfc <acquire>
    80004448:	b4dff06f          	j	80003f94 <__printf+0x6c>
    8000444c:	40c0053b          	negw	a0,a2
    80004450:	00a00713          	li	a4,10
    80004454:	02e576bb          	remuw	a3,a0,a4
    80004458:	00002d97          	auipc	s11,0x2
    8000445c:	e60d8d93          	addi	s11,s11,-416 # 800062b8 <digits>
    80004460:	ff700593          	li	a1,-9
    80004464:	02069693          	slli	a3,a3,0x20
    80004468:	0206d693          	srli	a3,a3,0x20
    8000446c:	00dd86b3          	add	a3,s11,a3
    80004470:	0006c683          	lbu	a3,0(a3)
    80004474:	02e557bb          	divuw	a5,a0,a4
    80004478:	f8d40023          	sb	a3,-128(s0)
    8000447c:	10b65e63          	bge	a2,a1,80004598 <__printf+0x670>
    80004480:	06300593          	li	a1,99
    80004484:	02e7f6bb          	remuw	a3,a5,a4
    80004488:	02069693          	slli	a3,a3,0x20
    8000448c:	0206d693          	srli	a3,a3,0x20
    80004490:	00dd86b3          	add	a3,s11,a3
    80004494:	0006c683          	lbu	a3,0(a3)
    80004498:	02e7d73b          	divuw	a4,a5,a4
    8000449c:	00200793          	li	a5,2
    800044a0:	f8d400a3          	sb	a3,-127(s0)
    800044a4:	bca5ece3          	bltu	a1,a0,8000407c <__printf+0x154>
    800044a8:	ce5ff06f          	j	8000418c <__printf+0x264>
    800044ac:	40e007bb          	negw	a5,a4
    800044b0:	00002d97          	auipc	s11,0x2
    800044b4:	e08d8d93          	addi	s11,s11,-504 # 800062b8 <digits>
    800044b8:	00f7f693          	andi	a3,a5,15
    800044bc:	00dd86b3          	add	a3,s11,a3
    800044c0:	0006c583          	lbu	a1,0(a3)
    800044c4:	ff100613          	li	a2,-15
    800044c8:	0047d69b          	srliw	a3,a5,0x4
    800044cc:	f8b40023          	sb	a1,-128(s0)
    800044d0:	0047d59b          	srliw	a1,a5,0x4
    800044d4:	0ac75e63          	bge	a4,a2,80004590 <__printf+0x668>
    800044d8:	00f6f693          	andi	a3,a3,15
    800044dc:	00dd86b3          	add	a3,s11,a3
    800044e0:	0006c603          	lbu	a2,0(a3)
    800044e4:	00f00693          	li	a3,15
    800044e8:	0087d79b          	srliw	a5,a5,0x8
    800044ec:	f8c400a3          	sb	a2,-127(s0)
    800044f0:	d8b6e4e3          	bltu	a3,a1,80004278 <__printf+0x350>
    800044f4:	00200793          	li	a5,2
    800044f8:	e2dff06f          	j	80004324 <__printf+0x3fc>
    800044fc:	00002c97          	auipc	s9,0x2
    80004500:	d9cc8c93          	addi	s9,s9,-612 # 80006298 <CONSOLE_STATUS+0x288>
    80004504:	02800513          	li	a0,40
    80004508:	ef1ff06f          	j	800043f8 <__printf+0x4d0>
    8000450c:	00700793          	li	a5,7
    80004510:	00600c93          	li	s9,6
    80004514:	e0dff06f          	j	80004320 <__printf+0x3f8>
    80004518:	00700793          	li	a5,7
    8000451c:	00600c93          	li	s9,6
    80004520:	c69ff06f          	j	80004188 <__printf+0x260>
    80004524:	00300793          	li	a5,3
    80004528:	00200c93          	li	s9,2
    8000452c:	c5dff06f          	j	80004188 <__printf+0x260>
    80004530:	00300793          	li	a5,3
    80004534:	00200c93          	li	s9,2
    80004538:	de9ff06f          	j	80004320 <__printf+0x3f8>
    8000453c:	00400793          	li	a5,4
    80004540:	00300c93          	li	s9,3
    80004544:	dddff06f          	j	80004320 <__printf+0x3f8>
    80004548:	00400793          	li	a5,4
    8000454c:	00300c93          	li	s9,3
    80004550:	c39ff06f          	j	80004188 <__printf+0x260>
    80004554:	00500793          	li	a5,5
    80004558:	00400c93          	li	s9,4
    8000455c:	c2dff06f          	j	80004188 <__printf+0x260>
    80004560:	00500793          	li	a5,5
    80004564:	00400c93          	li	s9,4
    80004568:	db9ff06f          	j	80004320 <__printf+0x3f8>
    8000456c:	00600793          	li	a5,6
    80004570:	00500c93          	li	s9,5
    80004574:	dadff06f          	j	80004320 <__printf+0x3f8>
    80004578:	00600793          	li	a5,6
    8000457c:	00500c93          	li	s9,5
    80004580:	c09ff06f          	j	80004188 <__printf+0x260>
    80004584:	00800793          	li	a5,8
    80004588:	00700c93          	li	s9,7
    8000458c:	bfdff06f          	j	80004188 <__printf+0x260>
    80004590:	00100793          	li	a5,1
    80004594:	d91ff06f          	j	80004324 <__printf+0x3fc>
    80004598:	00100793          	li	a5,1
    8000459c:	bf1ff06f          	j	8000418c <__printf+0x264>
    800045a0:	00900793          	li	a5,9
    800045a4:	00800c93          	li	s9,8
    800045a8:	be1ff06f          	j	80004188 <__printf+0x260>
    800045ac:	00002517          	auipc	a0,0x2
    800045b0:	cf450513          	addi	a0,a0,-780 # 800062a0 <CONSOLE_STATUS+0x290>
    800045b4:	00000097          	auipc	ra,0x0
    800045b8:	918080e7          	jalr	-1768(ra) # 80003ecc <panic>

00000000800045bc <printfinit>:
    800045bc:	fe010113          	addi	sp,sp,-32
    800045c0:	00813823          	sd	s0,16(sp)
    800045c4:	00913423          	sd	s1,8(sp)
    800045c8:	00113c23          	sd	ra,24(sp)
    800045cc:	02010413          	addi	s0,sp,32
    800045d0:	00004497          	auipc	s1,0x4
    800045d4:	01048493          	addi	s1,s1,16 # 800085e0 <pr>
    800045d8:	00048513          	mv	a0,s1
    800045dc:	00002597          	auipc	a1,0x2
    800045e0:	cd458593          	addi	a1,a1,-812 # 800062b0 <CONSOLE_STATUS+0x2a0>
    800045e4:	00000097          	auipc	ra,0x0
    800045e8:	5f4080e7          	jalr	1524(ra) # 80004bd8 <initlock>
    800045ec:	01813083          	ld	ra,24(sp)
    800045f0:	01013403          	ld	s0,16(sp)
    800045f4:	0004ac23          	sw	zero,24(s1)
    800045f8:	00813483          	ld	s1,8(sp)
    800045fc:	02010113          	addi	sp,sp,32
    80004600:	00008067          	ret

0000000080004604 <uartinit>:
    80004604:	ff010113          	addi	sp,sp,-16
    80004608:	00813423          	sd	s0,8(sp)
    8000460c:	01010413          	addi	s0,sp,16
    80004610:	100007b7          	lui	a5,0x10000
    80004614:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004618:	f8000713          	li	a4,-128
    8000461c:	00e781a3          	sb	a4,3(a5)
    80004620:	00300713          	li	a4,3
    80004624:	00e78023          	sb	a4,0(a5)
    80004628:	000780a3          	sb	zero,1(a5)
    8000462c:	00e781a3          	sb	a4,3(a5)
    80004630:	00700693          	li	a3,7
    80004634:	00d78123          	sb	a3,2(a5)
    80004638:	00e780a3          	sb	a4,1(a5)
    8000463c:	00813403          	ld	s0,8(sp)
    80004640:	01010113          	addi	sp,sp,16
    80004644:	00008067          	ret

0000000080004648 <uartputc>:
    80004648:	00003797          	auipc	a5,0x3
    8000464c:	d107a783          	lw	a5,-752(a5) # 80007358 <panicked>
    80004650:	00078463          	beqz	a5,80004658 <uartputc+0x10>
    80004654:	0000006f          	j	80004654 <uartputc+0xc>
    80004658:	fd010113          	addi	sp,sp,-48
    8000465c:	02813023          	sd	s0,32(sp)
    80004660:	00913c23          	sd	s1,24(sp)
    80004664:	01213823          	sd	s2,16(sp)
    80004668:	01313423          	sd	s3,8(sp)
    8000466c:	02113423          	sd	ra,40(sp)
    80004670:	03010413          	addi	s0,sp,48
    80004674:	00003917          	auipc	s2,0x3
    80004678:	cec90913          	addi	s2,s2,-788 # 80007360 <uart_tx_r>
    8000467c:	00093783          	ld	a5,0(s2)
    80004680:	00003497          	auipc	s1,0x3
    80004684:	ce848493          	addi	s1,s1,-792 # 80007368 <uart_tx_w>
    80004688:	0004b703          	ld	a4,0(s1)
    8000468c:	02078693          	addi	a3,a5,32
    80004690:	00050993          	mv	s3,a0
    80004694:	02e69c63          	bne	a3,a4,800046cc <uartputc+0x84>
    80004698:	00001097          	auipc	ra,0x1
    8000469c:	834080e7          	jalr	-1996(ra) # 80004ecc <push_on>
    800046a0:	00093783          	ld	a5,0(s2)
    800046a4:	0004b703          	ld	a4,0(s1)
    800046a8:	02078793          	addi	a5,a5,32
    800046ac:	00e79463          	bne	a5,a4,800046b4 <uartputc+0x6c>
    800046b0:	0000006f          	j	800046b0 <uartputc+0x68>
    800046b4:	00001097          	auipc	ra,0x1
    800046b8:	88c080e7          	jalr	-1908(ra) # 80004f40 <pop_on>
    800046bc:	00093783          	ld	a5,0(s2)
    800046c0:	0004b703          	ld	a4,0(s1)
    800046c4:	02078693          	addi	a3,a5,32
    800046c8:	fce688e3          	beq	a3,a4,80004698 <uartputc+0x50>
    800046cc:	01f77693          	andi	a3,a4,31
    800046d0:	00004597          	auipc	a1,0x4
    800046d4:	f3058593          	addi	a1,a1,-208 # 80008600 <uart_tx_buf>
    800046d8:	00d586b3          	add	a3,a1,a3
    800046dc:	00170713          	addi	a4,a4,1
    800046e0:	01368023          	sb	s3,0(a3)
    800046e4:	00e4b023          	sd	a4,0(s1)
    800046e8:	10000637          	lui	a2,0x10000
    800046ec:	02f71063          	bne	a4,a5,8000470c <uartputc+0xc4>
    800046f0:	0340006f          	j	80004724 <uartputc+0xdc>
    800046f4:	00074703          	lbu	a4,0(a4)
    800046f8:	00f93023          	sd	a5,0(s2)
    800046fc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004700:	00093783          	ld	a5,0(s2)
    80004704:	0004b703          	ld	a4,0(s1)
    80004708:	00f70e63          	beq	a4,a5,80004724 <uartputc+0xdc>
    8000470c:	00564683          	lbu	a3,5(a2)
    80004710:	01f7f713          	andi	a4,a5,31
    80004714:	00e58733          	add	a4,a1,a4
    80004718:	0206f693          	andi	a3,a3,32
    8000471c:	00178793          	addi	a5,a5,1
    80004720:	fc069ae3          	bnez	a3,800046f4 <uartputc+0xac>
    80004724:	02813083          	ld	ra,40(sp)
    80004728:	02013403          	ld	s0,32(sp)
    8000472c:	01813483          	ld	s1,24(sp)
    80004730:	01013903          	ld	s2,16(sp)
    80004734:	00813983          	ld	s3,8(sp)
    80004738:	03010113          	addi	sp,sp,48
    8000473c:	00008067          	ret

0000000080004740 <uartputc_sync>:
    80004740:	ff010113          	addi	sp,sp,-16
    80004744:	00813423          	sd	s0,8(sp)
    80004748:	01010413          	addi	s0,sp,16
    8000474c:	00003717          	auipc	a4,0x3
    80004750:	c0c72703          	lw	a4,-1012(a4) # 80007358 <panicked>
    80004754:	02071663          	bnez	a4,80004780 <uartputc_sync+0x40>
    80004758:	00050793          	mv	a5,a0
    8000475c:	100006b7          	lui	a3,0x10000
    80004760:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004764:	02077713          	andi	a4,a4,32
    80004768:	fe070ce3          	beqz	a4,80004760 <uartputc_sync+0x20>
    8000476c:	0ff7f793          	andi	a5,a5,255
    80004770:	00f68023          	sb	a5,0(a3)
    80004774:	00813403          	ld	s0,8(sp)
    80004778:	01010113          	addi	sp,sp,16
    8000477c:	00008067          	ret
    80004780:	0000006f          	j	80004780 <uartputc_sync+0x40>

0000000080004784 <uartstart>:
    80004784:	ff010113          	addi	sp,sp,-16
    80004788:	00813423          	sd	s0,8(sp)
    8000478c:	01010413          	addi	s0,sp,16
    80004790:	00003617          	auipc	a2,0x3
    80004794:	bd060613          	addi	a2,a2,-1072 # 80007360 <uart_tx_r>
    80004798:	00003517          	auipc	a0,0x3
    8000479c:	bd050513          	addi	a0,a0,-1072 # 80007368 <uart_tx_w>
    800047a0:	00063783          	ld	a5,0(a2)
    800047a4:	00053703          	ld	a4,0(a0)
    800047a8:	04f70263          	beq	a4,a5,800047ec <uartstart+0x68>
    800047ac:	100005b7          	lui	a1,0x10000
    800047b0:	00004817          	auipc	a6,0x4
    800047b4:	e5080813          	addi	a6,a6,-432 # 80008600 <uart_tx_buf>
    800047b8:	01c0006f          	j	800047d4 <uartstart+0x50>
    800047bc:	0006c703          	lbu	a4,0(a3)
    800047c0:	00f63023          	sd	a5,0(a2)
    800047c4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800047c8:	00063783          	ld	a5,0(a2)
    800047cc:	00053703          	ld	a4,0(a0)
    800047d0:	00f70e63          	beq	a4,a5,800047ec <uartstart+0x68>
    800047d4:	01f7f713          	andi	a4,a5,31
    800047d8:	00e806b3          	add	a3,a6,a4
    800047dc:	0055c703          	lbu	a4,5(a1)
    800047e0:	00178793          	addi	a5,a5,1
    800047e4:	02077713          	andi	a4,a4,32
    800047e8:	fc071ae3          	bnez	a4,800047bc <uartstart+0x38>
    800047ec:	00813403          	ld	s0,8(sp)
    800047f0:	01010113          	addi	sp,sp,16
    800047f4:	00008067          	ret

00000000800047f8 <uartgetc>:
    800047f8:	ff010113          	addi	sp,sp,-16
    800047fc:	00813423          	sd	s0,8(sp)
    80004800:	01010413          	addi	s0,sp,16
    80004804:	10000737          	lui	a4,0x10000
    80004808:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000480c:	0017f793          	andi	a5,a5,1
    80004810:	00078c63          	beqz	a5,80004828 <uartgetc+0x30>
    80004814:	00074503          	lbu	a0,0(a4)
    80004818:	0ff57513          	andi	a0,a0,255
    8000481c:	00813403          	ld	s0,8(sp)
    80004820:	01010113          	addi	sp,sp,16
    80004824:	00008067          	ret
    80004828:	fff00513          	li	a0,-1
    8000482c:	ff1ff06f          	j	8000481c <uartgetc+0x24>

0000000080004830 <uartintr>:
    80004830:	100007b7          	lui	a5,0x10000
    80004834:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004838:	0017f793          	andi	a5,a5,1
    8000483c:	0a078463          	beqz	a5,800048e4 <uartintr+0xb4>
    80004840:	fe010113          	addi	sp,sp,-32
    80004844:	00813823          	sd	s0,16(sp)
    80004848:	00913423          	sd	s1,8(sp)
    8000484c:	00113c23          	sd	ra,24(sp)
    80004850:	02010413          	addi	s0,sp,32
    80004854:	100004b7          	lui	s1,0x10000
    80004858:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000485c:	0ff57513          	andi	a0,a0,255
    80004860:	fffff097          	auipc	ra,0xfffff
    80004864:	534080e7          	jalr	1332(ra) # 80003d94 <consoleintr>
    80004868:	0054c783          	lbu	a5,5(s1)
    8000486c:	0017f793          	andi	a5,a5,1
    80004870:	fe0794e3          	bnez	a5,80004858 <uartintr+0x28>
    80004874:	00003617          	auipc	a2,0x3
    80004878:	aec60613          	addi	a2,a2,-1300 # 80007360 <uart_tx_r>
    8000487c:	00003517          	auipc	a0,0x3
    80004880:	aec50513          	addi	a0,a0,-1300 # 80007368 <uart_tx_w>
    80004884:	00063783          	ld	a5,0(a2)
    80004888:	00053703          	ld	a4,0(a0)
    8000488c:	04f70263          	beq	a4,a5,800048d0 <uartintr+0xa0>
    80004890:	100005b7          	lui	a1,0x10000
    80004894:	00004817          	auipc	a6,0x4
    80004898:	d6c80813          	addi	a6,a6,-660 # 80008600 <uart_tx_buf>
    8000489c:	01c0006f          	j	800048b8 <uartintr+0x88>
    800048a0:	0006c703          	lbu	a4,0(a3)
    800048a4:	00f63023          	sd	a5,0(a2)
    800048a8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800048ac:	00063783          	ld	a5,0(a2)
    800048b0:	00053703          	ld	a4,0(a0)
    800048b4:	00f70e63          	beq	a4,a5,800048d0 <uartintr+0xa0>
    800048b8:	01f7f713          	andi	a4,a5,31
    800048bc:	00e806b3          	add	a3,a6,a4
    800048c0:	0055c703          	lbu	a4,5(a1)
    800048c4:	00178793          	addi	a5,a5,1
    800048c8:	02077713          	andi	a4,a4,32
    800048cc:	fc071ae3          	bnez	a4,800048a0 <uartintr+0x70>
    800048d0:	01813083          	ld	ra,24(sp)
    800048d4:	01013403          	ld	s0,16(sp)
    800048d8:	00813483          	ld	s1,8(sp)
    800048dc:	02010113          	addi	sp,sp,32
    800048e0:	00008067          	ret
    800048e4:	00003617          	auipc	a2,0x3
    800048e8:	a7c60613          	addi	a2,a2,-1412 # 80007360 <uart_tx_r>
    800048ec:	00003517          	auipc	a0,0x3
    800048f0:	a7c50513          	addi	a0,a0,-1412 # 80007368 <uart_tx_w>
    800048f4:	00063783          	ld	a5,0(a2)
    800048f8:	00053703          	ld	a4,0(a0)
    800048fc:	04f70263          	beq	a4,a5,80004940 <uartintr+0x110>
    80004900:	100005b7          	lui	a1,0x10000
    80004904:	00004817          	auipc	a6,0x4
    80004908:	cfc80813          	addi	a6,a6,-772 # 80008600 <uart_tx_buf>
    8000490c:	01c0006f          	j	80004928 <uartintr+0xf8>
    80004910:	0006c703          	lbu	a4,0(a3)
    80004914:	00f63023          	sd	a5,0(a2)
    80004918:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000491c:	00063783          	ld	a5,0(a2)
    80004920:	00053703          	ld	a4,0(a0)
    80004924:	02f70063          	beq	a4,a5,80004944 <uartintr+0x114>
    80004928:	01f7f713          	andi	a4,a5,31
    8000492c:	00e806b3          	add	a3,a6,a4
    80004930:	0055c703          	lbu	a4,5(a1)
    80004934:	00178793          	addi	a5,a5,1
    80004938:	02077713          	andi	a4,a4,32
    8000493c:	fc071ae3          	bnez	a4,80004910 <uartintr+0xe0>
    80004940:	00008067          	ret
    80004944:	00008067          	ret

0000000080004948 <kinit>:
    80004948:	fc010113          	addi	sp,sp,-64
    8000494c:	02913423          	sd	s1,40(sp)
    80004950:	fffff7b7          	lui	a5,0xfffff
    80004954:	00005497          	auipc	s1,0x5
    80004958:	ccb48493          	addi	s1,s1,-821 # 8000961f <end+0xfff>
    8000495c:	02813823          	sd	s0,48(sp)
    80004960:	01313c23          	sd	s3,24(sp)
    80004964:	00f4f4b3          	and	s1,s1,a5
    80004968:	02113c23          	sd	ra,56(sp)
    8000496c:	03213023          	sd	s2,32(sp)
    80004970:	01413823          	sd	s4,16(sp)
    80004974:	01513423          	sd	s5,8(sp)
    80004978:	04010413          	addi	s0,sp,64
    8000497c:	000017b7          	lui	a5,0x1
    80004980:	01100993          	li	s3,17
    80004984:	00f487b3          	add	a5,s1,a5
    80004988:	01b99993          	slli	s3,s3,0x1b
    8000498c:	06f9e063          	bltu	s3,a5,800049ec <kinit+0xa4>
    80004990:	00004a97          	auipc	s5,0x4
    80004994:	c90a8a93          	addi	s5,s5,-880 # 80008620 <end>
    80004998:	0754ec63          	bltu	s1,s5,80004a10 <kinit+0xc8>
    8000499c:	0734fa63          	bgeu	s1,s3,80004a10 <kinit+0xc8>
    800049a0:	00088a37          	lui	s4,0x88
    800049a4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800049a8:	00003917          	auipc	s2,0x3
    800049ac:	9c890913          	addi	s2,s2,-1592 # 80007370 <kmem>
    800049b0:	00ca1a13          	slli	s4,s4,0xc
    800049b4:	0140006f          	j	800049c8 <kinit+0x80>
    800049b8:	000017b7          	lui	a5,0x1
    800049bc:	00f484b3          	add	s1,s1,a5
    800049c0:	0554e863          	bltu	s1,s5,80004a10 <kinit+0xc8>
    800049c4:	0534f663          	bgeu	s1,s3,80004a10 <kinit+0xc8>
    800049c8:	00001637          	lui	a2,0x1
    800049cc:	00100593          	li	a1,1
    800049d0:	00048513          	mv	a0,s1
    800049d4:	00000097          	auipc	ra,0x0
    800049d8:	5e4080e7          	jalr	1508(ra) # 80004fb8 <__memset>
    800049dc:	00093783          	ld	a5,0(s2)
    800049e0:	00f4b023          	sd	a5,0(s1)
    800049e4:	00993023          	sd	s1,0(s2)
    800049e8:	fd4498e3          	bne	s1,s4,800049b8 <kinit+0x70>
    800049ec:	03813083          	ld	ra,56(sp)
    800049f0:	03013403          	ld	s0,48(sp)
    800049f4:	02813483          	ld	s1,40(sp)
    800049f8:	02013903          	ld	s2,32(sp)
    800049fc:	01813983          	ld	s3,24(sp)
    80004a00:	01013a03          	ld	s4,16(sp)
    80004a04:	00813a83          	ld	s5,8(sp)
    80004a08:	04010113          	addi	sp,sp,64
    80004a0c:	00008067          	ret
    80004a10:	00002517          	auipc	a0,0x2
    80004a14:	8c050513          	addi	a0,a0,-1856 # 800062d0 <digits+0x18>
    80004a18:	fffff097          	auipc	ra,0xfffff
    80004a1c:	4b4080e7          	jalr	1204(ra) # 80003ecc <panic>

0000000080004a20 <freerange>:
    80004a20:	fc010113          	addi	sp,sp,-64
    80004a24:	000017b7          	lui	a5,0x1
    80004a28:	02913423          	sd	s1,40(sp)
    80004a2c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80004a30:	009504b3          	add	s1,a0,s1
    80004a34:	fffff537          	lui	a0,0xfffff
    80004a38:	02813823          	sd	s0,48(sp)
    80004a3c:	02113c23          	sd	ra,56(sp)
    80004a40:	03213023          	sd	s2,32(sp)
    80004a44:	01313c23          	sd	s3,24(sp)
    80004a48:	01413823          	sd	s4,16(sp)
    80004a4c:	01513423          	sd	s5,8(sp)
    80004a50:	01613023          	sd	s6,0(sp)
    80004a54:	04010413          	addi	s0,sp,64
    80004a58:	00a4f4b3          	and	s1,s1,a0
    80004a5c:	00f487b3          	add	a5,s1,a5
    80004a60:	06f5e463          	bltu	a1,a5,80004ac8 <freerange+0xa8>
    80004a64:	00004a97          	auipc	s5,0x4
    80004a68:	bbca8a93          	addi	s5,s5,-1092 # 80008620 <end>
    80004a6c:	0954e263          	bltu	s1,s5,80004af0 <freerange+0xd0>
    80004a70:	01100993          	li	s3,17
    80004a74:	01b99993          	slli	s3,s3,0x1b
    80004a78:	0734fc63          	bgeu	s1,s3,80004af0 <freerange+0xd0>
    80004a7c:	00058a13          	mv	s4,a1
    80004a80:	00003917          	auipc	s2,0x3
    80004a84:	8f090913          	addi	s2,s2,-1808 # 80007370 <kmem>
    80004a88:	00002b37          	lui	s6,0x2
    80004a8c:	0140006f          	j	80004aa0 <freerange+0x80>
    80004a90:	000017b7          	lui	a5,0x1
    80004a94:	00f484b3          	add	s1,s1,a5
    80004a98:	0554ec63          	bltu	s1,s5,80004af0 <freerange+0xd0>
    80004a9c:	0534fa63          	bgeu	s1,s3,80004af0 <freerange+0xd0>
    80004aa0:	00001637          	lui	a2,0x1
    80004aa4:	00100593          	li	a1,1
    80004aa8:	00048513          	mv	a0,s1
    80004aac:	00000097          	auipc	ra,0x0
    80004ab0:	50c080e7          	jalr	1292(ra) # 80004fb8 <__memset>
    80004ab4:	00093703          	ld	a4,0(s2)
    80004ab8:	016487b3          	add	a5,s1,s6
    80004abc:	00e4b023          	sd	a4,0(s1)
    80004ac0:	00993023          	sd	s1,0(s2)
    80004ac4:	fcfa76e3          	bgeu	s4,a5,80004a90 <freerange+0x70>
    80004ac8:	03813083          	ld	ra,56(sp)
    80004acc:	03013403          	ld	s0,48(sp)
    80004ad0:	02813483          	ld	s1,40(sp)
    80004ad4:	02013903          	ld	s2,32(sp)
    80004ad8:	01813983          	ld	s3,24(sp)
    80004adc:	01013a03          	ld	s4,16(sp)
    80004ae0:	00813a83          	ld	s5,8(sp)
    80004ae4:	00013b03          	ld	s6,0(sp)
    80004ae8:	04010113          	addi	sp,sp,64
    80004aec:	00008067          	ret
    80004af0:	00001517          	auipc	a0,0x1
    80004af4:	7e050513          	addi	a0,a0,2016 # 800062d0 <digits+0x18>
    80004af8:	fffff097          	auipc	ra,0xfffff
    80004afc:	3d4080e7          	jalr	980(ra) # 80003ecc <panic>

0000000080004b00 <kfree>:
    80004b00:	fe010113          	addi	sp,sp,-32
    80004b04:	00813823          	sd	s0,16(sp)
    80004b08:	00113c23          	sd	ra,24(sp)
    80004b0c:	00913423          	sd	s1,8(sp)
    80004b10:	02010413          	addi	s0,sp,32
    80004b14:	03451793          	slli	a5,a0,0x34
    80004b18:	04079c63          	bnez	a5,80004b70 <kfree+0x70>
    80004b1c:	00004797          	auipc	a5,0x4
    80004b20:	b0478793          	addi	a5,a5,-1276 # 80008620 <end>
    80004b24:	00050493          	mv	s1,a0
    80004b28:	04f56463          	bltu	a0,a5,80004b70 <kfree+0x70>
    80004b2c:	01100793          	li	a5,17
    80004b30:	01b79793          	slli	a5,a5,0x1b
    80004b34:	02f57e63          	bgeu	a0,a5,80004b70 <kfree+0x70>
    80004b38:	00001637          	lui	a2,0x1
    80004b3c:	00100593          	li	a1,1
    80004b40:	00000097          	auipc	ra,0x0
    80004b44:	478080e7          	jalr	1144(ra) # 80004fb8 <__memset>
    80004b48:	00003797          	auipc	a5,0x3
    80004b4c:	82878793          	addi	a5,a5,-2008 # 80007370 <kmem>
    80004b50:	0007b703          	ld	a4,0(a5)
    80004b54:	01813083          	ld	ra,24(sp)
    80004b58:	01013403          	ld	s0,16(sp)
    80004b5c:	00e4b023          	sd	a4,0(s1)
    80004b60:	0097b023          	sd	s1,0(a5)
    80004b64:	00813483          	ld	s1,8(sp)
    80004b68:	02010113          	addi	sp,sp,32
    80004b6c:	00008067          	ret
    80004b70:	00001517          	auipc	a0,0x1
    80004b74:	76050513          	addi	a0,a0,1888 # 800062d0 <digits+0x18>
    80004b78:	fffff097          	auipc	ra,0xfffff
    80004b7c:	354080e7          	jalr	852(ra) # 80003ecc <panic>

0000000080004b80 <kalloc>:
    80004b80:	fe010113          	addi	sp,sp,-32
    80004b84:	00813823          	sd	s0,16(sp)
    80004b88:	00913423          	sd	s1,8(sp)
    80004b8c:	00113c23          	sd	ra,24(sp)
    80004b90:	02010413          	addi	s0,sp,32
    80004b94:	00002797          	auipc	a5,0x2
    80004b98:	7dc78793          	addi	a5,a5,2012 # 80007370 <kmem>
    80004b9c:	0007b483          	ld	s1,0(a5)
    80004ba0:	02048063          	beqz	s1,80004bc0 <kalloc+0x40>
    80004ba4:	0004b703          	ld	a4,0(s1)
    80004ba8:	00001637          	lui	a2,0x1
    80004bac:	00500593          	li	a1,5
    80004bb0:	00048513          	mv	a0,s1
    80004bb4:	00e7b023          	sd	a4,0(a5)
    80004bb8:	00000097          	auipc	ra,0x0
    80004bbc:	400080e7          	jalr	1024(ra) # 80004fb8 <__memset>
    80004bc0:	01813083          	ld	ra,24(sp)
    80004bc4:	01013403          	ld	s0,16(sp)
    80004bc8:	00048513          	mv	a0,s1
    80004bcc:	00813483          	ld	s1,8(sp)
    80004bd0:	02010113          	addi	sp,sp,32
    80004bd4:	00008067          	ret

0000000080004bd8 <initlock>:
    80004bd8:	ff010113          	addi	sp,sp,-16
    80004bdc:	00813423          	sd	s0,8(sp)
    80004be0:	01010413          	addi	s0,sp,16
    80004be4:	00813403          	ld	s0,8(sp)
    80004be8:	00b53423          	sd	a1,8(a0)
    80004bec:	00052023          	sw	zero,0(a0)
    80004bf0:	00053823          	sd	zero,16(a0)
    80004bf4:	01010113          	addi	sp,sp,16
    80004bf8:	00008067          	ret

0000000080004bfc <acquire>:
    80004bfc:	fe010113          	addi	sp,sp,-32
    80004c00:	00813823          	sd	s0,16(sp)
    80004c04:	00913423          	sd	s1,8(sp)
    80004c08:	00113c23          	sd	ra,24(sp)
    80004c0c:	01213023          	sd	s2,0(sp)
    80004c10:	02010413          	addi	s0,sp,32
    80004c14:	00050493          	mv	s1,a0
    80004c18:	10002973          	csrr	s2,sstatus
    80004c1c:	100027f3          	csrr	a5,sstatus
    80004c20:	ffd7f793          	andi	a5,a5,-3
    80004c24:	10079073          	csrw	sstatus,a5
    80004c28:	fffff097          	auipc	ra,0xfffff
    80004c2c:	8e8080e7          	jalr	-1816(ra) # 80003510 <mycpu>
    80004c30:	07852783          	lw	a5,120(a0)
    80004c34:	06078e63          	beqz	a5,80004cb0 <acquire+0xb4>
    80004c38:	fffff097          	auipc	ra,0xfffff
    80004c3c:	8d8080e7          	jalr	-1832(ra) # 80003510 <mycpu>
    80004c40:	07852783          	lw	a5,120(a0)
    80004c44:	0004a703          	lw	a4,0(s1)
    80004c48:	0017879b          	addiw	a5,a5,1
    80004c4c:	06f52c23          	sw	a5,120(a0)
    80004c50:	04071063          	bnez	a4,80004c90 <acquire+0x94>
    80004c54:	00100713          	li	a4,1
    80004c58:	00070793          	mv	a5,a4
    80004c5c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80004c60:	0007879b          	sext.w	a5,a5
    80004c64:	fe079ae3          	bnez	a5,80004c58 <acquire+0x5c>
    80004c68:	0ff0000f          	fence
    80004c6c:	fffff097          	auipc	ra,0xfffff
    80004c70:	8a4080e7          	jalr	-1884(ra) # 80003510 <mycpu>
    80004c74:	01813083          	ld	ra,24(sp)
    80004c78:	01013403          	ld	s0,16(sp)
    80004c7c:	00a4b823          	sd	a0,16(s1)
    80004c80:	00013903          	ld	s2,0(sp)
    80004c84:	00813483          	ld	s1,8(sp)
    80004c88:	02010113          	addi	sp,sp,32
    80004c8c:	00008067          	ret
    80004c90:	0104b903          	ld	s2,16(s1)
    80004c94:	fffff097          	auipc	ra,0xfffff
    80004c98:	87c080e7          	jalr	-1924(ra) # 80003510 <mycpu>
    80004c9c:	faa91ce3          	bne	s2,a0,80004c54 <acquire+0x58>
    80004ca0:	00001517          	auipc	a0,0x1
    80004ca4:	63850513          	addi	a0,a0,1592 # 800062d8 <digits+0x20>
    80004ca8:	fffff097          	auipc	ra,0xfffff
    80004cac:	224080e7          	jalr	548(ra) # 80003ecc <panic>
    80004cb0:	00195913          	srli	s2,s2,0x1
    80004cb4:	fffff097          	auipc	ra,0xfffff
    80004cb8:	85c080e7          	jalr	-1956(ra) # 80003510 <mycpu>
    80004cbc:	00197913          	andi	s2,s2,1
    80004cc0:	07252e23          	sw	s2,124(a0)
    80004cc4:	f75ff06f          	j	80004c38 <acquire+0x3c>

0000000080004cc8 <release>:
    80004cc8:	fe010113          	addi	sp,sp,-32
    80004ccc:	00813823          	sd	s0,16(sp)
    80004cd0:	00113c23          	sd	ra,24(sp)
    80004cd4:	00913423          	sd	s1,8(sp)
    80004cd8:	01213023          	sd	s2,0(sp)
    80004cdc:	02010413          	addi	s0,sp,32
    80004ce0:	00052783          	lw	a5,0(a0)
    80004ce4:	00079a63          	bnez	a5,80004cf8 <release+0x30>
    80004ce8:	00001517          	auipc	a0,0x1
    80004cec:	5f850513          	addi	a0,a0,1528 # 800062e0 <digits+0x28>
    80004cf0:	fffff097          	auipc	ra,0xfffff
    80004cf4:	1dc080e7          	jalr	476(ra) # 80003ecc <panic>
    80004cf8:	01053903          	ld	s2,16(a0)
    80004cfc:	00050493          	mv	s1,a0
    80004d00:	fffff097          	auipc	ra,0xfffff
    80004d04:	810080e7          	jalr	-2032(ra) # 80003510 <mycpu>
    80004d08:	fea910e3          	bne	s2,a0,80004ce8 <release+0x20>
    80004d0c:	0004b823          	sd	zero,16(s1)
    80004d10:	0ff0000f          	fence
    80004d14:	0f50000f          	fence	iorw,ow
    80004d18:	0804a02f          	amoswap.w	zero,zero,(s1)
    80004d1c:	ffffe097          	auipc	ra,0xffffe
    80004d20:	7f4080e7          	jalr	2036(ra) # 80003510 <mycpu>
    80004d24:	100027f3          	csrr	a5,sstatus
    80004d28:	0027f793          	andi	a5,a5,2
    80004d2c:	04079a63          	bnez	a5,80004d80 <release+0xb8>
    80004d30:	07852783          	lw	a5,120(a0)
    80004d34:	02f05e63          	blez	a5,80004d70 <release+0xa8>
    80004d38:	fff7871b          	addiw	a4,a5,-1
    80004d3c:	06e52c23          	sw	a4,120(a0)
    80004d40:	00071c63          	bnez	a4,80004d58 <release+0x90>
    80004d44:	07c52783          	lw	a5,124(a0)
    80004d48:	00078863          	beqz	a5,80004d58 <release+0x90>
    80004d4c:	100027f3          	csrr	a5,sstatus
    80004d50:	0027e793          	ori	a5,a5,2
    80004d54:	10079073          	csrw	sstatus,a5
    80004d58:	01813083          	ld	ra,24(sp)
    80004d5c:	01013403          	ld	s0,16(sp)
    80004d60:	00813483          	ld	s1,8(sp)
    80004d64:	00013903          	ld	s2,0(sp)
    80004d68:	02010113          	addi	sp,sp,32
    80004d6c:	00008067          	ret
    80004d70:	00001517          	auipc	a0,0x1
    80004d74:	59050513          	addi	a0,a0,1424 # 80006300 <digits+0x48>
    80004d78:	fffff097          	auipc	ra,0xfffff
    80004d7c:	154080e7          	jalr	340(ra) # 80003ecc <panic>
    80004d80:	00001517          	auipc	a0,0x1
    80004d84:	56850513          	addi	a0,a0,1384 # 800062e8 <digits+0x30>
    80004d88:	fffff097          	auipc	ra,0xfffff
    80004d8c:	144080e7          	jalr	324(ra) # 80003ecc <panic>

0000000080004d90 <holding>:
    80004d90:	00052783          	lw	a5,0(a0)
    80004d94:	00079663          	bnez	a5,80004da0 <holding+0x10>
    80004d98:	00000513          	li	a0,0
    80004d9c:	00008067          	ret
    80004da0:	fe010113          	addi	sp,sp,-32
    80004da4:	00813823          	sd	s0,16(sp)
    80004da8:	00913423          	sd	s1,8(sp)
    80004dac:	00113c23          	sd	ra,24(sp)
    80004db0:	02010413          	addi	s0,sp,32
    80004db4:	01053483          	ld	s1,16(a0)
    80004db8:	ffffe097          	auipc	ra,0xffffe
    80004dbc:	758080e7          	jalr	1880(ra) # 80003510 <mycpu>
    80004dc0:	01813083          	ld	ra,24(sp)
    80004dc4:	01013403          	ld	s0,16(sp)
    80004dc8:	40a48533          	sub	a0,s1,a0
    80004dcc:	00153513          	seqz	a0,a0
    80004dd0:	00813483          	ld	s1,8(sp)
    80004dd4:	02010113          	addi	sp,sp,32
    80004dd8:	00008067          	ret

0000000080004ddc <push_off>:
    80004ddc:	fe010113          	addi	sp,sp,-32
    80004de0:	00813823          	sd	s0,16(sp)
    80004de4:	00113c23          	sd	ra,24(sp)
    80004de8:	00913423          	sd	s1,8(sp)
    80004dec:	02010413          	addi	s0,sp,32
    80004df0:	100024f3          	csrr	s1,sstatus
    80004df4:	100027f3          	csrr	a5,sstatus
    80004df8:	ffd7f793          	andi	a5,a5,-3
    80004dfc:	10079073          	csrw	sstatus,a5
    80004e00:	ffffe097          	auipc	ra,0xffffe
    80004e04:	710080e7          	jalr	1808(ra) # 80003510 <mycpu>
    80004e08:	07852783          	lw	a5,120(a0)
    80004e0c:	02078663          	beqz	a5,80004e38 <push_off+0x5c>
    80004e10:	ffffe097          	auipc	ra,0xffffe
    80004e14:	700080e7          	jalr	1792(ra) # 80003510 <mycpu>
    80004e18:	07852783          	lw	a5,120(a0)
    80004e1c:	01813083          	ld	ra,24(sp)
    80004e20:	01013403          	ld	s0,16(sp)
    80004e24:	0017879b          	addiw	a5,a5,1
    80004e28:	06f52c23          	sw	a5,120(a0)
    80004e2c:	00813483          	ld	s1,8(sp)
    80004e30:	02010113          	addi	sp,sp,32
    80004e34:	00008067          	ret
    80004e38:	0014d493          	srli	s1,s1,0x1
    80004e3c:	ffffe097          	auipc	ra,0xffffe
    80004e40:	6d4080e7          	jalr	1748(ra) # 80003510 <mycpu>
    80004e44:	0014f493          	andi	s1,s1,1
    80004e48:	06952e23          	sw	s1,124(a0)
    80004e4c:	fc5ff06f          	j	80004e10 <push_off+0x34>

0000000080004e50 <pop_off>:
    80004e50:	ff010113          	addi	sp,sp,-16
    80004e54:	00813023          	sd	s0,0(sp)
    80004e58:	00113423          	sd	ra,8(sp)
    80004e5c:	01010413          	addi	s0,sp,16
    80004e60:	ffffe097          	auipc	ra,0xffffe
    80004e64:	6b0080e7          	jalr	1712(ra) # 80003510 <mycpu>
    80004e68:	100027f3          	csrr	a5,sstatus
    80004e6c:	0027f793          	andi	a5,a5,2
    80004e70:	04079663          	bnez	a5,80004ebc <pop_off+0x6c>
    80004e74:	07852783          	lw	a5,120(a0)
    80004e78:	02f05a63          	blez	a5,80004eac <pop_off+0x5c>
    80004e7c:	fff7871b          	addiw	a4,a5,-1
    80004e80:	06e52c23          	sw	a4,120(a0)
    80004e84:	00071c63          	bnez	a4,80004e9c <pop_off+0x4c>
    80004e88:	07c52783          	lw	a5,124(a0)
    80004e8c:	00078863          	beqz	a5,80004e9c <pop_off+0x4c>
    80004e90:	100027f3          	csrr	a5,sstatus
    80004e94:	0027e793          	ori	a5,a5,2
    80004e98:	10079073          	csrw	sstatus,a5
    80004e9c:	00813083          	ld	ra,8(sp)
    80004ea0:	00013403          	ld	s0,0(sp)
    80004ea4:	01010113          	addi	sp,sp,16
    80004ea8:	00008067          	ret
    80004eac:	00001517          	auipc	a0,0x1
    80004eb0:	45450513          	addi	a0,a0,1108 # 80006300 <digits+0x48>
    80004eb4:	fffff097          	auipc	ra,0xfffff
    80004eb8:	018080e7          	jalr	24(ra) # 80003ecc <panic>
    80004ebc:	00001517          	auipc	a0,0x1
    80004ec0:	42c50513          	addi	a0,a0,1068 # 800062e8 <digits+0x30>
    80004ec4:	fffff097          	auipc	ra,0xfffff
    80004ec8:	008080e7          	jalr	8(ra) # 80003ecc <panic>

0000000080004ecc <push_on>:
    80004ecc:	fe010113          	addi	sp,sp,-32
    80004ed0:	00813823          	sd	s0,16(sp)
    80004ed4:	00113c23          	sd	ra,24(sp)
    80004ed8:	00913423          	sd	s1,8(sp)
    80004edc:	02010413          	addi	s0,sp,32
    80004ee0:	100024f3          	csrr	s1,sstatus
    80004ee4:	100027f3          	csrr	a5,sstatus
    80004ee8:	0027e793          	ori	a5,a5,2
    80004eec:	10079073          	csrw	sstatus,a5
    80004ef0:	ffffe097          	auipc	ra,0xffffe
    80004ef4:	620080e7          	jalr	1568(ra) # 80003510 <mycpu>
    80004ef8:	07852783          	lw	a5,120(a0)
    80004efc:	02078663          	beqz	a5,80004f28 <push_on+0x5c>
    80004f00:	ffffe097          	auipc	ra,0xffffe
    80004f04:	610080e7          	jalr	1552(ra) # 80003510 <mycpu>
    80004f08:	07852783          	lw	a5,120(a0)
    80004f0c:	01813083          	ld	ra,24(sp)
    80004f10:	01013403          	ld	s0,16(sp)
    80004f14:	0017879b          	addiw	a5,a5,1
    80004f18:	06f52c23          	sw	a5,120(a0)
    80004f1c:	00813483          	ld	s1,8(sp)
    80004f20:	02010113          	addi	sp,sp,32
    80004f24:	00008067          	ret
    80004f28:	0014d493          	srli	s1,s1,0x1
    80004f2c:	ffffe097          	auipc	ra,0xffffe
    80004f30:	5e4080e7          	jalr	1508(ra) # 80003510 <mycpu>
    80004f34:	0014f493          	andi	s1,s1,1
    80004f38:	06952e23          	sw	s1,124(a0)
    80004f3c:	fc5ff06f          	j	80004f00 <push_on+0x34>

0000000080004f40 <pop_on>:
    80004f40:	ff010113          	addi	sp,sp,-16
    80004f44:	00813023          	sd	s0,0(sp)
    80004f48:	00113423          	sd	ra,8(sp)
    80004f4c:	01010413          	addi	s0,sp,16
    80004f50:	ffffe097          	auipc	ra,0xffffe
    80004f54:	5c0080e7          	jalr	1472(ra) # 80003510 <mycpu>
    80004f58:	100027f3          	csrr	a5,sstatus
    80004f5c:	0027f793          	andi	a5,a5,2
    80004f60:	04078463          	beqz	a5,80004fa8 <pop_on+0x68>
    80004f64:	07852783          	lw	a5,120(a0)
    80004f68:	02f05863          	blez	a5,80004f98 <pop_on+0x58>
    80004f6c:	fff7879b          	addiw	a5,a5,-1
    80004f70:	06f52c23          	sw	a5,120(a0)
    80004f74:	07853783          	ld	a5,120(a0)
    80004f78:	00079863          	bnez	a5,80004f88 <pop_on+0x48>
    80004f7c:	100027f3          	csrr	a5,sstatus
    80004f80:	ffd7f793          	andi	a5,a5,-3
    80004f84:	10079073          	csrw	sstatus,a5
    80004f88:	00813083          	ld	ra,8(sp)
    80004f8c:	00013403          	ld	s0,0(sp)
    80004f90:	01010113          	addi	sp,sp,16
    80004f94:	00008067          	ret
    80004f98:	00001517          	auipc	a0,0x1
    80004f9c:	39050513          	addi	a0,a0,912 # 80006328 <digits+0x70>
    80004fa0:	fffff097          	auipc	ra,0xfffff
    80004fa4:	f2c080e7          	jalr	-212(ra) # 80003ecc <panic>
    80004fa8:	00001517          	auipc	a0,0x1
    80004fac:	36050513          	addi	a0,a0,864 # 80006308 <digits+0x50>
    80004fb0:	fffff097          	auipc	ra,0xfffff
    80004fb4:	f1c080e7          	jalr	-228(ra) # 80003ecc <panic>

0000000080004fb8 <__memset>:
    80004fb8:	ff010113          	addi	sp,sp,-16
    80004fbc:	00813423          	sd	s0,8(sp)
    80004fc0:	01010413          	addi	s0,sp,16
    80004fc4:	1a060e63          	beqz	a2,80005180 <__memset+0x1c8>
    80004fc8:	40a007b3          	neg	a5,a0
    80004fcc:	0077f793          	andi	a5,a5,7
    80004fd0:	00778693          	addi	a3,a5,7
    80004fd4:	00b00813          	li	a6,11
    80004fd8:	0ff5f593          	andi	a1,a1,255
    80004fdc:	fff6071b          	addiw	a4,a2,-1
    80004fe0:	1b06e663          	bltu	a3,a6,8000518c <__memset+0x1d4>
    80004fe4:	1cd76463          	bltu	a4,a3,800051ac <__memset+0x1f4>
    80004fe8:	1a078e63          	beqz	a5,800051a4 <__memset+0x1ec>
    80004fec:	00b50023          	sb	a1,0(a0)
    80004ff0:	00100713          	li	a4,1
    80004ff4:	1ae78463          	beq	a5,a4,8000519c <__memset+0x1e4>
    80004ff8:	00b500a3          	sb	a1,1(a0)
    80004ffc:	00200713          	li	a4,2
    80005000:	1ae78a63          	beq	a5,a4,800051b4 <__memset+0x1fc>
    80005004:	00b50123          	sb	a1,2(a0)
    80005008:	00300713          	li	a4,3
    8000500c:	18e78463          	beq	a5,a4,80005194 <__memset+0x1dc>
    80005010:	00b501a3          	sb	a1,3(a0)
    80005014:	00400713          	li	a4,4
    80005018:	1ae78263          	beq	a5,a4,800051bc <__memset+0x204>
    8000501c:	00b50223          	sb	a1,4(a0)
    80005020:	00500713          	li	a4,5
    80005024:	1ae78063          	beq	a5,a4,800051c4 <__memset+0x20c>
    80005028:	00b502a3          	sb	a1,5(a0)
    8000502c:	00700713          	li	a4,7
    80005030:	18e79e63          	bne	a5,a4,800051cc <__memset+0x214>
    80005034:	00b50323          	sb	a1,6(a0)
    80005038:	00700e93          	li	t4,7
    8000503c:	00859713          	slli	a4,a1,0x8
    80005040:	00e5e733          	or	a4,a1,a4
    80005044:	01059e13          	slli	t3,a1,0x10
    80005048:	01c76e33          	or	t3,a4,t3
    8000504c:	01859313          	slli	t1,a1,0x18
    80005050:	006e6333          	or	t1,t3,t1
    80005054:	02059893          	slli	a7,a1,0x20
    80005058:	40f60e3b          	subw	t3,a2,a5
    8000505c:	011368b3          	or	a7,t1,a7
    80005060:	02859813          	slli	a6,a1,0x28
    80005064:	0108e833          	or	a6,a7,a6
    80005068:	03059693          	slli	a3,a1,0x30
    8000506c:	003e589b          	srliw	a7,t3,0x3
    80005070:	00d866b3          	or	a3,a6,a3
    80005074:	03859713          	slli	a4,a1,0x38
    80005078:	00389813          	slli	a6,a7,0x3
    8000507c:	00f507b3          	add	a5,a0,a5
    80005080:	00e6e733          	or	a4,a3,a4
    80005084:	000e089b          	sext.w	a7,t3
    80005088:	00f806b3          	add	a3,a6,a5
    8000508c:	00e7b023          	sd	a4,0(a5)
    80005090:	00878793          	addi	a5,a5,8
    80005094:	fed79ce3          	bne	a5,a3,8000508c <__memset+0xd4>
    80005098:	ff8e7793          	andi	a5,t3,-8
    8000509c:	0007871b          	sext.w	a4,a5
    800050a0:	01d787bb          	addw	a5,a5,t4
    800050a4:	0ce88e63          	beq	a7,a4,80005180 <__memset+0x1c8>
    800050a8:	00f50733          	add	a4,a0,a5
    800050ac:	00b70023          	sb	a1,0(a4)
    800050b0:	0017871b          	addiw	a4,a5,1
    800050b4:	0cc77663          	bgeu	a4,a2,80005180 <__memset+0x1c8>
    800050b8:	00e50733          	add	a4,a0,a4
    800050bc:	00b70023          	sb	a1,0(a4)
    800050c0:	0027871b          	addiw	a4,a5,2
    800050c4:	0ac77e63          	bgeu	a4,a2,80005180 <__memset+0x1c8>
    800050c8:	00e50733          	add	a4,a0,a4
    800050cc:	00b70023          	sb	a1,0(a4)
    800050d0:	0037871b          	addiw	a4,a5,3
    800050d4:	0ac77663          	bgeu	a4,a2,80005180 <__memset+0x1c8>
    800050d8:	00e50733          	add	a4,a0,a4
    800050dc:	00b70023          	sb	a1,0(a4)
    800050e0:	0047871b          	addiw	a4,a5,4
    800050e4:	08c77e63          	bgeu	a4,a2,80005180 <__memset+0x1c8>
    800050e8:	00e50733          	add	a4,a0,a4
    800050ec:	00b70023          	sb	a1,0(a4)
    800050f0:	0057871b          	addiw	a4,a5,5
    800050f4:	08c77663          	bgeu	a4,a2,80005180 <__memset+0x1c8>
    800050f8:	00e50733          	add	a4,a0,a4
    800050fc:	00b70023          	sb	a1,0(a4)
    80005100:	0067871b          	addiw	a4,a5,6
    80005104:	06c77e63          	bgeu	a4,a2,80005180 <__memset+0x1c8>
    80005108:	00e50733          	add	a4,a0,a4
    8000510c:	00b70023          	sb	a1,0(a4)
    80005110:	0077871b          	addiw	a4,a5,7
    80005114:	06c77663          	bgeu	a4,a2,80005180 <__memset+0x1c8>
    80005118:	00e50733          	add	a4,a0,a4
    8000511c:	00b70023          	sb	a1,0(a4)
    80005120:	0087871b          	addiw	a4,a5,8
    80005124:	04c77e63          	bgeu	a4,a2,80005180 <__memset+0x1c8>
    80005128:	00e50733          	add	a4,a0,a4
    8000512c:	00b70023          	sb	a1,0(a4)
    80005130:	0097871b          	addiw	a4,a5,9
    80005134:	04c77663          	bgeu	a4,a2,80005180 <__memset+0x1c8>
    80005138:	00e50733          	add	a4,a0,a4
    8000513c:	00b70023          	sb	a1,0(a4)
    80005140:	00a7871b          	addiw	a4,a5,10
    80005144:	02c77e63          	bgeu	a4,a2,80005180 <__memset+0x1c8>
    80005148:	00e50733          	add	a4,a0,a4
    8000514c:	00b70023          	sb	a1,0(a4)
    80005150:	00b7871b          	addiw	a4,a5,11
    80005154:	02c77663          	bgeu	a4,a2,80005180 <__memset+0x1c8>
    80005158:	00e50733          	add	a4,a0,a4
    8000515c:	00b70023          	sb	a1,0(a4)
    80005160:	00c7871b          	addiw	a4,a5,12
    80005164:	00c77e63          	bgeu	a4,a2,80005180 <__memset+0x1c8>
    80005168:	00e50733          	add	a4,a0,a4
    8000516c:	00b70023          	sb	a1,0(a4)
    80005170:	00d7879b          	addiw	a5,a5,13
    80005174:	00c7f663          	bgeu	a5,a2,80005180 <__memset+0x1c8>
    80005178:	00f507b3          	add	a5,a0,a5
    8000517c:	00b78023          	sb	a1,0(a5)
    80005180:	00813403          	ld	s0,8(sp)
    80005184:	01010113          	addi	sp,sp,16
    80005188:	00008067          	ret
    8000518c:	00b00693          	li	a3,11
    80005190:	e55ff06f          	j	80004fe4 <__memset+0x2c>
    80005194:	00300e93          	li	t4,3
    80005198:	ea5ff06f          	j	8000503c <__memset+0x84>
    8000519c:	00100e93          	li	t4,1
    800051a0:	e9dff06f          	j	8000503c <__memset+0x84>
    800051a4:	00000e93          	li	t4,0
    800051a8:	e95ff06f          	j	8000503c <__memset+0x84>
    800051ac:	00000793          	li	a5,0
    800051b0:	ef9ff06f          	j	800050a8 <__memset+0xf0>
    800051b4:	00200e93          	li	t4,2
    800051b8:	e85ff06f          	j	8000503c <__memset+0x84>
    800051bc:	00400e93          	li	t4,4
    800051c0:	e7dff06f          	j	8000503c <__memset+0x84>
    800051c4:	00500e93          	li	t4,5
    800051c8:	e75ff06f          	j	8000503c <__memset+0x84>
    800051cc:	00600e93          	li	t4,6
    800051d0:	e6dff06f          	j	8000503c <__memset+0x84>

00000000800051d4 <__memmove>:
    800051d4:	ff010113          	addi	sp,sp,-16
    800051d8:	00813423          	sd	s0,8(sp)
    800051dc:	01010413          	addi	s0,sp,16
    800051e0:	0e060863          	beqz	a2,800052d0 <__memmove+0xfc>
    800051e4:	fff6069b          	addiw	a3,a2,-1
    800051e8:	0006881b          	sext.w	a6,a3
    800051ec:	0ea5e863          	bltu	a1,a0,800052dc <__memmove+0x108>
    800051f0:	00758713          	addi	a4,a1,7
    800051f4:	00a5e7b3          	or	a5,a1,a0
    800051f8:	40a70733          	sub	a4,a4,a0
    800051fc:	0077f793          	andi	a5,a5,7
    80005200:	00f73713          	sltiu	a4,a4,15
    80005204:	00174713          	xori	a4,a4,1
    80005208:	0017b793          	seqz	a5,a5
    8000520c:	00e7f7b3          	and	a5,a5,a4
    80005210:	10078863          	beqz	a5,80005320 <__memmove+0x14c>
    80005214:	00900793          	li	a5,9
    80005218:	1107f463          	bgeu	a5,a6,80005320 <__memmove+0x14c>
    8000521c:	0036581b          	srliw	a6,a2,0x3
    80005220:	fff8081b          	addiw	a6,a6,-1
    80005224:	02081813          	slli	a6,a6,0x20
    80005228:	01d85893          	srli	a7,a6,0x1d
    8000522c:	00858813          	addi	a6,a1,8
    80005230:	00058793          	mv	a5,a1
    80005234:	00050713          	mv	a4,a0
    80005238:	01088833          	add	a6,a7,a6
    8000523c:	0007b883          	ld	a7,0(a5)
    80005240:	00878793          	addi	a5,a5,8
    80005244:	00870713          	addi	a4,a4,8
    80005248:	ff173c23          	sd	a7,-8(a4)
    8000524c:	ff0798e3          	bne	a5,a6,8000523c <__memmove+0x68>
    80005250:	ff867713          	andi	a4,a2,-8
    80005254:	02071793          	slli	a5,a4,0x20
    80005258:	0207d793          	srli	a5,a5,0x20
    8000525c:	00f585b3          	add	a1,a1,a5
    80005260:	40e686bb          	subw	a3,a3,a4
    80005264:	00f507b3          	add	a5,a0,a5
    80005268:	06e60463          	beq	a2,a4,800052d0 <__memmove+0xfc>
    8000526c:	0005c703          	lbu	a4,0(a1)
    80005270:	00e78023          	sb	a4,0(a5)
    80005274:	04068e63          	beqz	a3,800052d0 <__memmove+0xfc>
    80005278:	0015c603          	lbu	a2,1(a1)
    8000527c:	00100713          	li	a4,1
    80005280:	00c780a3          	sb	a2,1(a5)
    80005284:	04e68663          	beq	a3,a4,800052d0 <__memmove+0xfc>
    80005288:	0025c603          	lbu	a2,2(a1)
    8000528c:	00200713          	li	a4,2
    80005290:	00c78123          	sb	a2,2(a5)
    80005294:	02e68e63          	beq	a3,a4,800052d0 <__memmove+0xfc>
    80005298:	0035c603          	lbu	a2,3(a1)
    8000529c:	00300713          	li	a4,3
    800052a0:	00c781a3          	sb	a2,3(a5)
    800052a4:	02e68663          	beq	a3,a4,800052d0 <__memmove+0xfc>
    800052a8:	0045c603          	lbu	a2,4(a1)
    800052ac:	00400713          	li	a4,4
    800052b0:	00c78223          	sb	a2,4(a5)
    800052b4:	00e68e63          	beq	a3,a4,800052d0 <__memmove+0xfc>
    800052b8:	0055c603          	lbu	a2,5(a1)
    800052bc:	00500713          	li	a4,5
    800052c0:	00c782a3          	sb	a2,5(a5)
    800052c4:	00e68663          	beq	a3,a4,800052d0 <__memmove+0xfc>
    800052c8:	0065c703          	lbu	a4,6(a1)
    800052cc:	00e78323          	sb	a4,6(a5)
    800052d0:	00813403          	ld	s0,8(sp)
    800052d4:	01010113          	addi	sp,sp,16
    800052d8:	00008067          	ret
    800052dc:	02061713          	slli	a4,a2,0x20
    800052e0:	02075713          	srli	a4,a4,0x20
    800052e4:	00e587b3          	add	a5,a1,a4
    800052e8:	f0f574e3          	bgeu	a0,a5,800051f0 <__memmove+0x1c>
    800052ec:	02069613          	slli	a2,a3,0x20
    800052f0:	02065613          	srli	a2,a2,0x20
    800052f4:	fff64613          	not	a2,a2
    800052f8:	00e50733          	add	a4,a0,a4
    800052fc:	00c78633          	add	a2,a5,a2
    80005300:	fff7c683          	lbu	a3,-1(a5)
    80005304:	fff78793          	addi	a5,a5,-1
    80005308:	fff70713          	addi	a4,a4,-1
    8000530c:	00d70023          	sb	a3,0(a4)
    80005310:	fec798e3          	bne	a5,a2,80005300 <__memmove+0x12c>
    80005314:	00813403          	ld	s0,8(sp)
    80005318:	01010113          	addi	sp,sp,16
    8000531c:	00008067          	ret
    80005320:	02069713          	slli	a4,a3,0x20
    80005324:	02075713          	srli	a4,a4,0x20
    80005328:	00170713          	addi	a4,a4,1
    8000532c:	00e50733          	add	a4,a0,a4
    80005330:	00050793          	mv	a5,a0
    80005334:	0005c683          	lbu	a3,0(a1)
    80005338:	00178793          	addi	a5,a5,1
    8000533c:	00158593          	addi	a1,a1,1
    80005340:	fed78fa3          	sb	a3,-1(a5)
    80005344:	fee798e3          	bne	a5,a4,80005334 <__memmove+0x160>
    80005348:	f89ff06f          	j	800052d0 <__memmove+0xfc>

000000008000534c <__putc>:
    8000534c:	fe010113          	addi	sp,sp,-32
    80005350:	00813823          	sd	s0,16(sp)
    80005354:	00113c23          	sd	ra,24(sp)
    80005358:	02010413          	addi	s0,sp,32
    8000535c:	00050793          	mv	a5,a0
    80005360:	fef40593          	addi	a1,s0,-17
    80005364:	00100613          	li	a2,1
    80005368:	00000513          	li	a0,0
    8000536c:	fef407a3          	sb	a5,-17(s0)
    80005370:	fffff097          	auipc	ra,0xfffff
    80005374:	b3c080e7          	jalr	-1220(ra) # 80003eac <console_write>
    80005378:	01813083          	ld	ra,24(sp)
    8000537c:	01013403          	ld	s0,16(sp)
    80005380:	02010113          	addi	sp,sp,32
    80005384:	00008067          	ret

0000000080005388 <__getc>:
    80005388:	fe010113          	addi	sp,sp,-32
    8000538c:	00813823          	sd	s0,16(sp)
    80005390:	00113c23          	sd	ra,24(sp)
    80005394:	02010413          	addi	s0,sp,32
    80005398:	fe840593          	addi	a1,s0,-24
    8000539c:	00100613          	li	a2,1
    800053a0:	00000513          	li	a0,0
    800053a4:	fffff097          	auipc	ra,0xfffff
    800053a8:	ae8080e7          	jalr	-1304(ra) # 80003e8c <console_read>
    800053ac:	fe844503          	lbu	a0,-24(s0)
    800053b0:	01813083          	ld	ra,24(sp)
    800053b4:	01013403          	ld	s0,16(sp)
    800053b8:	02010113          	addi	sp,sp,32
    800053bc:	00008067          	ret

00000000800053c0 <console_handler>:
    800053c0:	fe010113          	addi	sp,sp,-32
    800053c4:	00813823          	sd	s0,16(sp)
    800053c8:	00113c23          	sd	ra,24(sp)
    800053cc:	00913423          	sd	s1,8(sp)
    800053d0:	02010413          	addi	s0,sp,32
    800053d4:	14202773          	csrr	a4,scause
    800053d8:	100027f3          	csrr	a5,sstatus
    800053dc:	0027f793          	andi	a5,a5,2
    800053e0:	06079e63          	bnez	a5,8000545c <console_handler+0x9c>
    800053e4:	00074c63          	bltz	a4,800053fc <console_handler+0x3c>
    800053e8:	01813083          	ld	ra,24(sp)
    800053ec:	01013403          	ld	s0,16(sp)
    800053f0:	00813483          	ld	s1,8(sp)
    800053f4:	02010113          	addi	sp,sp,32
    800053f8:	00008067          	ret
    800053fc:	0ff77713          	andi	a4,a4,255
    80005400:	00900793          	li	a5,9
    80005404:	fef712e3          	bne	a4,a5,800053e8 <console_handler+0x28>
    80005408:	ffffe097          	auipc	ra,0xffffe
    8000540c:	6dc080e7          	jalr	1756(ra) # 80003ae4 <plic_claim>
    80005410:	00a00793          	li	a5,10
    80005414:	00050493          	mv	s1,a0
    80005418:	02f50c63          	beq	a0,a5,80005450 <console_handler+0x90>
    8000541c:	fc0506e3          	beqz	a0,800053e8 <console_handler+0x28>
    80005420:	00050593          	mv	a1,a0
    80005424:	00001517          	auipc	a0,0x1
    80005428:	e0c50513          	addi	a0,a0,-500 # 80006230 <CONSOLE_STATUS+0x220>
    8000542c:	fffff097          	auipc	ra,0xfffff
    80005430:	afc080e7          	jalr	-1284(ra) # 80003f28 <__printf>
    80005434:	01013403          	ld	s0,16(sp)
    80005438:	01813083          	ld	ra,24(sp)
    8000543c:	00048513          	mv	a0,s1
    80005440:	00813483          	ld	s1,8(sp)
    80005444:	02010113          	addi	sp,sp,32
    80005448:	ffffe317          	auipc	t1,0xffffe
    8000544c:	6d430067          	jr	1748(t1) # 80003b1c <plic_complete>
    80005450:	fffff097          	auipc	ra,0xfffff
    80005454:	3e0080e7          	jalr	992(ra) # 80004830 <uartintr>
    80005458:	fddff06f          	j	80005434 <console_handler+0x74>
    8000545c:	00001517          	auipc	a0,0x1
    80005460:	ed450513          	addi	a0,a0,-300 # 80006330 <digits+0x78>
    80005464:	fffff097          	auipc	ra,0xfffff
    80005468:	a68080e7          	jalr	-1432(ra) # 80003ecc <panic>
	...
