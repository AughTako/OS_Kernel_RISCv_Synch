
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	9b013103          	ld	sp,-1616(sp) # 800059b0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	2bc020ef          	jal	ra,800022d8 <start>

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
    80001080:	00005297          	auipc	t0,0x5
    80001084:	9a22bc23          	sd	sp,-1608(t0) # 80005a38 <backupSP>
    call _ZN5Riscv16interruptHandlerEv
    80001088:	49d000ef          	jal	ra,80001d24 <_ZN5Riscv16interruptHandlerEv>

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

0000000080001208 <_ZN3CCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3CCB13contextSwitchEPNS_7ContextES1_
.type _ZN3CCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3CCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    80001208:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    8000120c:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001210:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    80001214:	0085b103          	ld	sp,8(a1)

    80001218:	00008067          	ret

000000008000121c <_Z9mem_allocm>:
/* =========================================================================================================
 * This file contains the system calls to the riscv.cpp file that handles the codes of the specific C calls.
 * =========================================================================================================
 * */

void* mem_alloc(size_t size){
    8000121c:	ff010113          	addi	sp,sp,-16
    80001220:	00813423          	sd	s0,8(sp)
    80001224:	01010413          	addi	s0,sp,16
    if(size <= 0) return nullptr;
    80001228:	02050c63          	beqz	a0,80001260 <_Z9mem_allocm+0x44>
    uint64 numBlocks = (size + 24)/MEM_BLOCK_SIZE + ((size + 24) % MEM_BLOCK_SIZE ? 1 : 0);
    8000122c:	01850513          	addi	a0,a0,24
    80001230:	00655793          	srli	a5,a0,0x6
    80001234:	03f57513          	andi	a0,a0,63
    80001238:	00050463          	beqz	a0,80001240 <_Z9mem_allocm+0x24>
    8000123c:	00100513          	li	a0,1
    80001240:	00a78533          	add	a0,a5,a0
    void* address = nullptr;
    __asm__ volatile ("mv a1, %0" : : "r" (numBlocks));
    80001244:	00050593          	mv	a1,a0
    __asm__ volatile ("li a0, 1");
    80001248:	00100513          	li	a0,1
    __asm__ volatile ("ecall");
    8000124c:	00000073          	ecall
    __asm__ volatile ("mv %0, a0" : "=r" (address));
    80001250:	00050513          	mv	a0,a0
    return address;
}
    80001254:	00813403          	ld	s0,8(sp)
    80001258:	01010113          	addi	sp,sp,16
    8000125c:	00008067          	ret
    if(size <= 0) return nullptr;
    80001260:	00000513          	li	a0,0
    80001264:	ff1ff06f          	j	80001254 <_Z9mem_allocm+0x38>

0000000080001268 <_Z8mem_freePv>:

void mem_free(void* address){
    80001268:	ff010113          	addi	sp,sp,-16
    8000126c:	00813423          	sd	s0,8(sp)
    80001270:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (address));
    80001274:	00050593          	mv	a1,a0
    __asm__ volatile ("li a0, 0x02");
    80001278:	00200513          	li	a0,2
    __asm__ volatile ("ecall");
    8000127c:	00000073          	ecall
}
    80001280:	00813403          	ld	s0,8(sp)
    80001284:	01010113          	addi	sp,sp,16
    80001288:	00008067          	ret

000000008000128c <_Z13thread_createPP3CCBPFvPvES2_>:

int thread_create(thread_t* handle, void (*start_routine)(void*), void* args){
    8000128c:	ff010113          	addi	sp,sp,-16
    80001290:	00813423          	sd	s0,8(sp)
    80001294:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a3, %0" : : "r" (args));
    80001298:	00060693          	mv	a3,a2
    __asm__ volatile("mv a2, %0" : : "r" (start_routine));
    8000129c:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    800012a0:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x11");
    800012a4:	01100513          	li	a0,17
    __asm__ volatile("ecall");
    800012a8:	00000073          	ecall
    return 0;
}
    800012ac:	00000513          	li	a0,0
    800012b0:	00813403          	ld	s0,8(sp)
    800012b4:	01010113          	addi	sp,sp,16
    800012b8:	00008067          	ret

00000000800012bc <_Z15thread_dispatchv>:

void thread_dispatch(){
    800012bc:	ff010113          	addi	sp,sp,-16
    800012c0:	00813423          	sd	s0,8(sp)
    800012c4:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    800012c8:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    800012cc:	00000073          	ecall
}
    800012d0:	00813403          	ld	s0,8(sp)
    800012d4:	01010113          	addi	sp,sp,16
    800012d8:	00008067          	ret

00000000800012dc <_Z11thread_exitv>:

int thread_exit(){
    800012dc:	ff010113          	addi	sp,sp,-16
    800012e0:	00813423          	sd	s0,8(sp)
    800012e4:	01010413          	addi	s0,sp,16
    __asm__ volatile ("li a0, 0x12");
    800012e8:	01200513          	li	a0,18
    __asm__ volatile ("ecall");
    800012ec:	00000073          	ecall
    return 0;
}
    800012f0:	00000513          	li	a0,0
    800012f4:	00813403          	ld	s0,8(sp)
    800012f8:	01010113          	addi	sp,sp,16
    800012fc:	00008067          	ret

0000000080001300 <_Z25thread_create_NOT_STARTEDPP3CCBPFvPvES2_>:

int thread_create_NOT_STARTED(thread_t* handle, void (*start_routine)(void*), void* args){
    80001300:	ff010113          	addi	sp,sp,-16
    80001304:	00813423          	sd	s0,8(sp)
    80001308:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a3, %0" : : "r" (args));
    8000130c:	00060693          	mv	a3,a2
    __asm__ volatile("mv a2, %0" : : "r" (start_routine));
    80001310:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    80001314:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x11");
    80001318:	01100513          	li	a0,17
    __asm__ volatile("ecall");
    8000131c:	00000073          	ecall
    return 0;
}
    80001320:	00000513          	li	a0,0
    80001324:	00813403          	ld	s0,8(sp)
    80001328:	01010113          	addi	sp,sp,16
    8000132c:	00008067          	ret

0000000080001330 <_Z12workersBodyAPv>:
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workersBodyA(void* arg) {
    80001330:	fe010113          	addi	sp,sp,-32
    80001334:	00113c23          	sd	ra,24(sp)
    80001338:	00813823          	sd	s0,16(sp)
    8000133c:	00913423          	sd	s1,8(sp)
    80001340:	01213023          	sd	s2,0(sp)
    80001344:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80001348:	00000913          	li	s2,0
    8000134c:	0380006f          	j	80001384 <_Z12workersBodyAPv+0x54>
        printString("A: i="); printInteger(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80001350:	00000097          	auipc	ra,0x0
    80001354:	f6c080e7          	jalr	-148(ra) # 800012bc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80001358:	00148493          	addi	s1,s1,1
    8000135c:	000027b7          	lui	a5,0x2
    80001360:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001364:	0097ee63          	bltu	a5,s1,80001380 <_Z12workersBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80001368:	00000713          	li	a4,0
    8000136c:	000077b7          	lui	a5,0x7
    80001370:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001374:	fce7eee3          	bltu	a5,a4,80001350 <_Z12workersBodyAPv+0x20>
    80001378:	00170713          	addi	a4,a4,1
    8000137c:	ff1ff06f          	j	8000136c <_Z12workersBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80001380:	00190913          	addi	s2,s2,1
    80001384:	00900793          	li	a5,9
    80001388:	0327ec63          	bltu	a5,s2,800013c0 <_Z12workersBodyAPv+0x90>
        printString("A: i="); printInteger(i); printString("\n");
    8000138c:	00004517          	auipc	a0,0x4
    80001390:	c9450513          	addi	a0,a0,-876 # 80005020 <CONSOLE_STATUS+0x10>
    80001394:	00001097          	auipc	ra,0x1
    80001398:	e18080e7          	jalr	-488(ra) # 800021ac <_Z11printStringPKc>
    8000139c:	00090513          	mv	a0,s2
    800013a0:	00001097          	auipc	ra,0x1
    800013a4:	e7c080e7          	jalr	-388(ra) # 8000221c <_Z12printIntegerm>
    800013a8:	00004517          	auipc	a0,0x4
    800013ac:	e9850513          	addi	a0,a0,-360 # 80005240 <_ZZ12printIntegermE6digits+0x120>
    800013b0:	00001097          	auipc	ra,0x1
    800013b4:	dfc080e7          	jalr	-516(ra) # 800021ac <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800013b8:	00000493          	li	s1,0
    800013bc:	fa1ff06f          	j	8000135c <_Z12workersBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    800013c0:	00004517          	auipc	a0,0x4
    800013c4:	c6850513          	addi	a0,a0,-920 # 80005028 <CONSOLE_STATUS+0x18>
    800013c8:	00001097          	auipc	ra,0x1
    800013cc:	de4080e7          	jalr	-540(ra) # 800021ac <_Z11printStringPKc>
    finishedddddddA = true;
    800013d0:	00100793          	li	a5,1
    800013d4:	00004717          	auipc	a4,0x4
    800013d8:	64f70623          	sb	a5,1612(a4) # 80005a20 <finishedddddddA>
}
    800013dc:	01813083          	ld	ra,24(sp)
    800013e0:	01013403          	ld	s0,16(sp)
    800013e4:	00813483          	ld	s1,8(sp)
    800013e8:	00013903          	ld	s2,0(sp)
    800013ec:	02010113          	addi	sp,sp,32
    800013f0:	00008067          	ret

00000000800013f4 <_Z12workersBodyBPv>:

void workersBodyB(void* arg) {
    800013f4:	fe010113          	addi	sp,sp,-32
    800013f8:	00113c23          	sd	ra,24(sp)
    800013fc:	00813823          	sd	s0,16(sp)
    80001400:	00913423          	sd	s1,8(sp)
    80001404:	01213023          	sd	s2,0(sp)
    80001408:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000140c:	00000913          	li	s2,0
    80001410:	0380006f          	j	80001448 <_Z12workersBodyBPv+0x54>
        printString("B: i="); printInteger(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80001414:	00000097          	auipc	ra,0x0
    80001418:	ea8080e7          	jalr	-344(ra) # 800012bc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000141c:	00148493          	addi	s1,s1,1
    80001420:	000027b7          	lui	a5,0x2
    80001424:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001428:	0097ee63          	bltu	a5,s1,80001444 <_Z12workersBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000142c:	00000713          	li	a4,0
    80001430:	000077b7          	lui	a5,0x7
    80001434:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001438:	fce7eee3          	bltu	a5,a4,80001414 <_Z12workersBodyBPv+0x20>
    8000143c:	00170713          	addi	a4,a4,1
    80001440:	ff1ff06f          	j	80001430 <_Z12workersBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80001444:	00190913          	addi	s2,s2,1
    80001448:	00f00793          	li	a5,15
    8000144c:	0327ec63          	bltu	a5,s2,80001484 <_Z12workersBodyBPv+0x90>
        printString("B: i="); printInteger(i); printString("\n");
    80001450:	00004517          	auipc	a0,0x4
    80001454:	be850513          	addi	a0,a0,-1048 # 80005038 <CONSOLE_STATUS+0x28>
    80001458:	00001097          	auipc	ra,0x1
    8000145c:	d54080e7          	jalr	-684(ra) # 800021ac <_Z11printStringPKc>
    80001460:	00090513          	mv	a0,s2
    80001464:	00001097          	auipc	ra,0x1
    80001468:	db8080e7          	jalr	-584(ra) # 8000221c <_Z12printIntegerm>
    8000146c:	00004517          	auipc	a0,0x4
    80001470:	dd450513          	addi	a0,a0,-556 # 80005240 <_ZZ12printIntegermE6digits+0x120>
    80001474:	00001097          	auipc	ra,0x1
    80001478:	d38080e7          	jalr	-712(ra) # 800021ac <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000147c:	00000493          	li	s1,0
    80001480:	fa1ff06f          	j	80001420 <_Z12workersBodyBPv+0x2c>
        }
    }
    printString("B finished!\n");
    80001484:	00004517          	auipc	a0,0x4
    80001488:	bbc50513          	addi	a0,a0,-1092 # 80005040 <CONSOLE_STATUS+0x30>
    8000148c:	00001097          	auipc	ra,0x1
    80001490:	d20080e7          	jalr	-736(ra) # 800021ac <_Z11printStringPKc>
    finishedddddddB = true;
    80001494:	00100793          	li	a5,1
    80001498:	00004717          	auipc	a4,0x4
    8000149c:	58f704a3          	sb	a5,1417(a4) # 80005a21 <finishedddddddB>
    thread_dispatch();
    800014a0:	00000097          	auipc	ra,0x0
    800014a4:	e1c080e7          	jalr	-484(ra) # 800012bc <_Z15thread_dispatchv>
}
    800014a8:	01813083          	ld	ra,24(sp)
    800014ac:	01013403          	ld	s0,16(sp)
    800014b0:	00813483          	ld	s1,8(sp)
    800014b4:	00013903          	ld	s2,0(sp)
    800014b8:	02010113          	addi	sp,sp,32
    800014bc:	00008067          	ret

00000000800014c0 <_Z9fibonaccim>:
uint64 fibonacci(uint64 n) {
    800014c0:	fe010113          	addi	sp,sp,-32
    800014c4:	00113c23          	sd	ra,24(sp)
    800014c8:	00813823          	sd	s0,16(sp)
    800014cc:	00913423          	sd	s1,8(sp)
    800014d0:	01213023          	sd	s2,0(sp)
    800014d4:	02010413          	addi	s0,sp,32
    800014d8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800014dc:	00100793          	li	a5,1
    800014e0:	02a7f863          	bgeu	a5,a0,80001510 <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800014e4:	00a00793          	li	a5,10
    800014e8:	02f577b3          	remu	a5,a0,a5
    800014ec:	02078e63          	beqz	a5,80001528 <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800014f0:	fff48513          	addi	a0,s1,-1
    800014f4:	00000097          	auipc	ra,0x0
    800014f8:	fcc080e7          	jalr	-52(ra) # 800014c0 <_Z9fibonaccim>
    800014fc:	00050913          	mv	s2,a0
    80001500:	ffe48513          	addi	a0,s1,-2
    80001504:	00000097          	auipc	ra,0x0
    80001508:	fbc080e7          	jalr	-68(ra) # 800014c0 <_Z9fibonaccim>
    8000150c:	00a90533          	add	a0,s2,a0
}
    80001510:	01813083          	ld	ra,24(sp)
    80001514:	01013403          	ld	s0,16(sp)
    80001518:	00813483          	ld	s1,8(sp)
    8000151c:	00013903          	ld	s2,0(sp)
    80001520:	02010113          	addi	sp,sp,32
    80001524:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80001528:	00000097          	auipc	ra,0x0
    8000152c:	d94080e7          	jalr	-620(ra) # 800012bc <_Z15thread_dispatchv>
    80001530:	fc1ff06f          	j	800014f0 <_Z9fibonaccim+0x30>

0000000080001534 <_Z12workersBodyCPv>:

void workersBodyC(void* arg) {
    80001534:	fe010113          	addi	sp,sp,-32
    80001538:	00113c23          	sd	ra,24(sp)
    8000153c:	00813823          	sd	s0,16(sp)
    80001540:	00913423          	sd	s1,8(sp)
    80001544:	01213023          	sd	s2,0(sp)
    80001548:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000154c:	00000493          	li	s1,0
    80001550:	0380006f          	j	80001588 <_Z12workersBodyCPv+0x54>
    for (; i < 3; i++) {
        printString("C: i="); printInteger(i); printString("\n");
    80001554:	00004517          	auipc	a0,0x4
    80001558:	afc50513          	addi	a0,a0,-1284 # 80005050 <CONSOLE_STATUS+0x40>
    8000155c:	00001097          	auipc	ra,0x1
    80001560:	c50080e7          	jalr	-944(ra) # 800021ac <_Z11printStringPKc>
    80001564:	00048513          	mv	a0,s1
    80001568:	00001097          	auipc	ra,0x1
    8000156c:	cb4080e7          	jalr	-844(ra) # 8000221c <_Z12printIntegerm>
    80001570:	00004517          	auipc	a0,0x4
    80001574:	cd050513          	addi	a0,a0,-816 # 80005240 <_ZZ12printIntegermE6digits+0x120>
    80001578:	00001097          	auipc	ra,0x1
    8000157c:	c34080e7          	jalr	-972(ra) # 800021ac <_Z11printStringPKc>
    for (; i < 3; i++) {
    80001580:	0014849b          	addiw	s1,s1,1
    80001584:	0ff4f493          	andi	s1,s1,255
    80001588:	00200793          	li	a5,2
    8000158c:	fc97f4e3          	bgeu	a5,s1,80001554 <_Z12workersBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    80001590:	00004517          	auipc	a0,0x4
    80001594:	ac850513          	addi	a0,a0,-1336 # 80005058 <CONSOLE_STATUS+0x48>
    80001598:	00001097          	auipc	ra,0x1
    8000159c:	c14080e7          	jalr	-1004(ra) # 800021ac <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800015a0:	00700313          	li	t1,7
    thread_dispatch();
    800015a4:	00000097          	auipc	ra,0x0
    800015a8:	d18080e7          	jalr	-744(ra) # 800012bc <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800015ac:	00030913          	mv	s2,t1

    printString("C: t1="); printInteger(t1); printString("\n");
    800015b0:	00004517          	auipc	a0,0x4
    800015b4:	ab850513          	addi	a0,a0,-1352 # 80005068 <CONSOLE_STATUS+0x58>
    800015b8:	00001097          	auipc	ra,0x1
    800015bc:	bf4080e7          	jalr	-1036(ra) # 800021ac <_Z11printStringPKc>
    800015c0:	00090513          	mv	a0,s2
    800015c4:	00001097          	auipc	ra,0x1
    800015c8:	c58080e7          	jalr	-936(ra) # 8000221c <_Z12printIntegerm>
    800015cc:	00004517          	auipc	a0,0x4
    800015d0:	c7450513          	addi	a0,a0,-908 # 80005240 <_ZZ12printIntegermE6digits+0x120>
    800015d4:	00001097          	auipc	ra,0x1
    800015d8:	bd8080e7          	jalr	-1064(ra) # 800021ac <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800015dc:	00c00513          	li	a0,12
    800015e0:	00000097          	auipc	ra,0x0
    800015e4:	ee0080e7          	jalr	-288(ra) # 800014c0 <_Z9fibonaccim>
    800015e8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInteger(result); printString("\n");
    800015ec:	00004517          	auipc	a0,0x4
    800015f0:	a8450513          	addi	a0,a0,-1404 # 80005070 <CONSOLE_STATUS+0x60>
    800015f4:	00001097          	auipc	ra,0x1
    800015f8:	bb8080e7          	jalr	-1096(ra) # 800021ac <_Z11printStringPKc>
    800015fc:	00090513          	mv	a0,s2
    80001600:	00001097          	auipc	ra,0x1
    80001604:	c1c080e7          	jalr	-996(ra) # 8000221c <_Z12printIntegerm>
    80001608:	00004517          	auipc	a0,0x4
    8000160c:	c3850513          	addi	a0,a0,-968 # 80005240 <_ZZ12printIntegermE6digits+0x120>
    80001610:	00001097          	auipc	ra,0x1
    80001614:	b9c080e7          	jalr	-1124(ra) # 800021ac <_Z11printStringPKc>
    80001618:	0380006f          	j	80001650 <_Z12workersBodyCPv+0x11c>

    for (; i < 6; i++) {
        printString("C: i="); printInteger(i); printString("\n");
    8000161c:	00004517          	auipc	a0,0x4
    80001620:	a3450513          	addi	a0,a0,-1484 # 80005050 <CONSOLE_STATUS+0x40>
    80001624:	00001097          	auipc	ra,0x1
    80001628:	b88080e7          	jalr	-1144(ra) # 800021ac <_Z11printStringPKc>
    8000162c:	00048513          	mv	a0,s1
    80001630:	00001097          	auipc	ra,0x1
    80001634:	bec080e7          	jalr	-1044(ra) # 8000221c <_Z12printIntegerm>
    80001638:	00004517          	auipc	a0,0x4
    8000163c:	c0850513          	addi	a0,a0,-1016 # 80005240 <_ZZ12printIntegermE6digits+0x120>
    80001640:	00001097          	auipc	ra,0x1
    80001644:	b6c080e7          	jalr	-1172(ra) # 800021ac <_Z11printStringPKc>
    for (; i < 6; i++) {
    80001648:	0014849b          	addiw	s1,s1,1
    8000164c:	0ff4f493          	andi	s1,s1,255
    80001650:	00500793          	li	a5,5
    80001654:	fc97f4e3          	bgeu	a5,s1,8000161c <_Z12workersBodyCPv+0xe8>
    }

    printString("A finished!\n");
    80001658:	00004517          	auipc	a0,0x4
    8000165c:	9d050513          	addi	a0,a0,-1584 # 80005028 <CONSOLE_STATUS+0x18>
    80001660:	00001097          	auipc	ra,0x1
    80001664:	b4c080e7          	jalr	-1204(ra) # 800021ac <_Z11printStringPKc>
    finishedddddddC = true;
    80001668:	00100793          	li	a5,1
    8000166c:	00004717          	auipc	a4,0x4
    80001670:	3af70b23          	sb	a5,950(a4) # 80005a22 <finishedddddddC>
    thread_dispatch();
    80001674:	00000097          	auipc	ra,0x0
    80001678:	c48080e7          	jalr	-952(ra) # 800012bc <_Z15thread_dispatchv>
}
    8000167c:	01813083          	ld	ra,24(sp)
    80001680:	01013403          	ld	s0,16(sp)
    80001684:	00813483          	ld	s1,8(sp)
    80001688:	00013903          	ld	s2,0(sp)
    8000168c:	02010113          	addi	sp,sp,32
    80001690:	00008067          	ret

0000000080001694 <_Z12workersBodyDPv>:

void workersBodyD(void* arg) {
    80001694:	fe010113          	addi	sp,sp,-32
    80001698:	00113c23          	sd	ra,24(sp)
    8000169c:	00813823          	sd	s0,16(sp)
    800016a0:	00913423          	sd	s1,8(sp)
    800016a4:	01213023          	sd	s2,0(sp)
    800016a8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800016ac:	00a00493          	li	s1,10
    800016b0:	0380006f          	j	800016e8 <_Z12workersBodyDPv+0x54>
    for (; i < 13; i++) {
        printString("D: i="); printInteger(i); printString("\n");
    800016b4:	00004517          	auipc	a0,0x4
    800016b8:	9cc50513          	addi	a0,a0,-1588 # 80005080 <CONSOLE_STATUS+0x70>
    800016bc:	00001097          	auipc	ra,0x1
    800016c0:	af0080e7          	jalr	-1296(ra) # 800021ac <_Z11printStringPKc>
    800016c4:	00048513          	mv	a0,s1
    800016c8:	00001097          	auipc	ra,0x1
    800016cc:	b54080e7          	jalr	-1196(ra) # 8000221c <_Z12printIntegerm>
    800016d0:	00004517          	auipc	a0,0x4
    800016d4:	b7050513          	addi	a0,a0,-1168 # 80005240 <_ZZ12printIntegermE6digits+0x120>
    800016d8:	00001097          	auipc	ra,0x1
    800016dc:	ad4080e7          	jalr	-1324(ra) # 800021ac <_Z11printStringPKc>
    for (; i < 13; i++) {
    800016e0:	0014849b          	addiw	s1,s1,1
    800016e4:	0ff4f493          	andi	s1,s1,255
    800016e8:	00c00793          	li	a5,12
    800016ec:	fc97f4e3          	bgeu	a5,s1,800016b4 <_Z12workersBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800016f0:	00004517          	auipc	a0,0x4
    800016f4:	99850513          	addi	a0,a0,-1640 # 80005088 <CONSOLE_STATUS+0x78>
    800016f8:	00001097          	auipc	ra,0x1
    800016fc:	ab4080e7          	jalr	-1356(ra) # 800021ac <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001700:	00500313          	li	t1,5
    thread_dispatch();
    80001704:	00000097          	auipc	ra,0x0
    80001708:	bb8080e7          	jalr	-1096(ra) # 800012bc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000170c:	01000513          	li	a0,16
    80001710:	00000097          	auipc	ra,0x0
    80001714:	db0080e7          	jalr	-592(ra) # 800014c0 <_Z9fibonaccim>
    80001718:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInteger(result); printString("\n");
    8000171c:	00004517          	auipc	a0,0x4
    80001720:	97c50513          	addi	a0,a0,-1668 # 80005098 <CONSOLE_STATUS+0x88>
    80001724:	00001097          	auipc	ra,0x1
    80001728:	a88080e7          	jalr	-1400(ra) # 800021ac <_Z11printStringPKc>
    8000172c:	00090513          	mv	a0,s2
    80001730:	00001097          	auipc	ra,0x1
    80001734:	aec080e7          	jalr	-1300(ra) # 8000221c <_Z12printIntegerm>
    80001738:	00004517          	auipc	a0,0x4
    8000173c:	b0850513          	addi	a0,a0,-1272 # 80005240 <_ZZ12printIntegermE6digits+0x120>
    80001740:	00001097          	auipc	ra,0x1
    80001744:	a6c080e7          	jalr	-1428(ra) # 800021ac <_Z11printStringPKc>
    80001748:	0380006f          	j	80001780 <_Z12workersBodyDPv+0xec>

    for (; i < 16; i++) {
        printString("D: i="); printInteger(i); printString("\n");
    8000174c:	00004517          	auipc	a0,0x4
    80001750:	93450513          	addi	a0,a0,-1740 # 80005080 <CONSOLE_STATUS+0x70>
    80001754:	00001097          	auipc	ra,0x1
    80001758:	a58080e7          	jalr	-1448(ra) # 800021ac <_Z11printStringPKc>
    8000175c:	00048513          	mv	a0,s1
    80001760:	00001097          	auipc	ra,0x1
    80001764:	abc080e7          	jalr	-1348(ra) # 8000221c <_Z12printIntegerm>
    80001768:	00004517          	auipc	a0,0x4
    8000176c:	ad850513          	addi	a0,a0,-1320 # 80005240 <_ZZ12printIntegermE6digits+0x120>
    80001770:	00001097          	auipc	ra,0x1
    80001774:	a3c080e7          	jalr	-1476(ra) # 800021ac <_Z11printStringPKc>
    for (; i < 16; i++) {
    80001778:	0014849b          	addiw	s1,s1,1
    8000177c:	0ff4f493          	andi	s1,s1,255
    80001780:	00f00793          	li	a5,15
    80001784:	fc97f4e3          	bgeu	a5,s1,8000174c <_Z12workersBodyDPv+0xb8>
    }

    printString("D finished!\n");
    80001788:	00004517          	auipc	a0,0x4
    8000178c:	92050513          	addi	a0,a0,-1760 # 800050a8 <CONSOLE_STATUS+0x98>
    80001790:	00001097          	auipc	ra,0x1
    80001794:	a1c080e7          	jalr	-1508(ra) # 800021ac <_Z11printStringPKc>
    finishedddddddD = true;
    80001798:	00100793          	li	a5,1
    8000179c:	00004717          	auipc	a4,0x4
    800017a0:	28f703a3          	sb	a5,647(a4) # 80005a23 <finishedddddddD>
    thread_dispatch();
    800017a4:	00000097          	auipc	ra,0x0
    800017a8:	b18080e7          	jalr	-1256(ra) # 800012bc <_Z15thread_dispatchv>
}
    800017ac:	01813083          	ld	ra,24(sp)
    800017b0:	01013403          	ld	s0,16(sp)
    800017b4:	00813483          	ld	s1,8(sp)
    800017b8:	00013903          	ld	s2,0(sp)
    800017bc:	02010113          	addi	sp,sp,32
    800017c0:	00008067          	ret

00000000800017c4 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800017c4:	fd010113          	addi	sp,sp,-48
    800017c8:	02113423          	sd	ra,40(sp)
    800017cc:	02813023          	sd	s0,32(sp)
    800017d0:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workersBodyA, nullptr);
    800017d4:	00000613          	li	a2,0
    800017d8:	00000597          	auipc	a1,0x0
    800017dc:	b5858593          	addi	a1,a1,-1192 # 80001330 <_Z12workersBodyAPv>
    800017e0:	fd040513          	addi	a0,s0,-48
    800017e4:	00000097          	auipc	ra,0x0
    800017e8:	aa8080e7          	jalr	-1368(ra) # 8000128c <_Z13thread_createPP3CCBPFvPvES2_>
    printString("ThreadA created\n");
    800017ec:	00004517          	auipc	a0,0x4
    800017f0:	8cc50513          	addi	a0,a0,-1844 # 800050b8 <CONSOLE_STATUS+0xa8>
    800017f4:	00001097          	auipc	ra,0x1
    800017f8:	9b8080e7          	jalr	-1608(ra) # 800021ac <_Z11printStringPKc>

    thread_create(&threads[1], workersBodyB, nullptr);
    800017fc:	00000613          	li	a2,0
    80001800:	00000597          	auipc	a1,0x0
    80001804:	bf458593          	addi	a1,a1,-1036 # 800013f4 <_Z12workersBodyBPv>
    80001808:	fd840513          	addi	a0,s0,-40
    8000180c:	00000097          	auipc	ra,0x0
    80001810:	a80080e7          	jalr	-1408(ra) # 8000128c <_Z13thread_createPP3CCBPFvPvES2_>
    printString("ThreadB created\n");
    80001814:	00004517          	auipc	a0,0x4
    80001818:	8bc50513          	addi	a0,a0,-1860 # 800050d0 <CONSOLE_STATUS+0xc0>
    8000181c:	00001097          	auipc	ra,0x1
    80001820:	990080e7          	jalr	-1648(ra) # 800021ac <_Z11printStringPKc>

    thread_create(&threads[2], workersBodyC, nullptr);
    80001824:	00000613          	li	a2,0
    80001828:	00000597          	auipc	a1,0x0
    8000182c:	d0c58593          	addi	a1,a1,-756 # 80001534 <_Z12workersBodyCPv>
    80001830:	fe040513          	addi	a0,s0,-32
    80001834:	00000097          	auipc	ra,0x0
    80001838:	a58080e7          	jalr	-1448(ra) # 8000128c <_Z13thread_createPP3CCBPFvPvES2_>
    printString("ThreadC created\n");
    8000183c:	00004517          	auipc	a0,0x4
    80001840:	8ac50513          	addi	a0,a0,-1876 # 800050e8 <CONSOLE_STATUS+0xd8>
    80001844:	00001097          	auipc	ra,0x1
    80001848:	968080e7          	jalr	-1688(ra) # 800021ac <_Z11printStringPKc>

    thread_create(&threads[3], workersBodyD, nullptr);
    8000184c:	00000613          	li	a2,0
    80001850:	00000597          	auipc	a1,0x0
    80001854:	e4458593          	addi	a1,a1,-444 # 80001694 <_Z12workersBodyDPv>
    80001858:	fe840513          	addi	a0,s0,-24
    8000185c:	00000097          	auipc	ra,0x0
    80001860:	a30080e7          	jalr	-1488(ra) # 8000128c <_Z13thread_createPP3CCBPFvPvES2_>
    printString("ThreadD created\n");
    80001864:	00004517          	auipc	a0,0x4
    80001868:	89c50513          	addi	a0,a0,-1892 # 80005100 <CONSOLE_STATUS+0xf0>
    8000186c:	00001097          	auipc	ra,0x1
    80001870:	940080e7          	jalr	-1728(ra) # 800021ac <_Z11printStringPKc>
    80001874:	00c0006f          	j	80001880 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedddddddA && finishedddddddB && finishedddddddC && finishedddddddD)) {
        thread_dispatch();
    80001878:	00000097          	auipc	ra,0x0
    8000187c:	a44080e7          	jalr	-1468(ra) # 800012bc <_Z15thread_dispatchv>
    while (!(finishedddddddA && finishedddddddB && finishedddddddC && finishedddddddD)) {
    80001880:	00004797          	auipc	a5,0x4
    80001884:	1a07c783          	lbu	a5,416(a5) # 80005a20 <finishedddddddA>
    80001888:	fe0788e3          	beqz	a5,80001878 <_Z18Threads_C_API_testv+0xb4>
    8000188c:	00004797          	auipc	a5,0x4
    80001890:	1957c783          	lbu	a5,405(a5) # 80005a21 <finishedddddddB>
    80001894:	fe0782e3          	beqz	a5,80001878 <_Z18Threads_C_API_testv+0xb4>
    80001898:	00004797          	auipc	a5,0x4
    8000189c:	18a7c783          	lbu	a5,394(a5) # 80005a22 <finishedddddddC>
    800018a0:	fc078ce3          	beqz	a5,80001878 <_Z18Threads_C_API_testv+0xb4>
    800018a4:	00004797          	auipc	a5,0x4
    800018a8:	17f7c783          	lbu	a5,383(a5) # 80005a23 <finishedddddddD>
    800018ac:	fc0786e3          	beqz	a5,80001878 <_Z18Threads_C_API_testv+0xb4>
    }

}
    800018b0:	02813083          	ld	ra,40(sp)
    800018b4:	02013403          	ld	s0,32(sp)
    800018b8:	03010113          	addi	sp,sp,48
    800018bc:	00008067          	ret

00000000800018c0 <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain() {
    800018c0:	ff010113          	addi	sp,sp,-16
    800018c4:	00113423          	sd	ra,8(sp)
    800018c8:	00813023          	sd	s0,0(sp)
    800018cc:	01010413          	addi	s0,sp,16
    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    800018d0:	00000097          	auipc	ra,0x0
    800018d4:	ef4080e7          	jalr	-268(ra) # 800017c4 <_Z18Threads_C_API_testv>
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    800018d8:	00813083          	ld	ra,8(sp)
    800018dc:	00013403          	ld	s0,0(sp)
    800018e0:	01010113          	addi	sp,sp,16
    800018e4:	00008067          	ret

00000000800018e8 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(CCB *ccb)
{
    readyCoroutineQueue.addLast(ccb);
    800018e8:	ff010113          	addi	sp,sp,-16
    800018ec:	00813423          	sd	s0,8(sp)
    800018f0:	01010413          	addi	s0,sp,16
    800018f4:	00100793          	li	a5,1
    800018f8:	00f50863          	beq	a0,a5,80001908 <_Z41__static_initialization_and_destruction_0ii+0x20>
    800018fc:	00813403          	ld	s0,8(sp)
    80001900:	01010113          	addi	sp,sp,16
    80001904:	00008067          	ret
    80001908:	000107b7          	lui	a5,0x10
    8000190c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001910:	fef596e3          	bne	a1,a5,800018fc <_Z41__static_initialization_and_destruction_0ii+0x14>

    void operator delete(void* address) {
        MemoryAllocator::free(address);
    }

    List() : head(0), tail(0) {}
    80001914:	00004797          	auipc	a5,0x4
    80001918:	11478793          	addi	a5,a5,276 # 80005a28 <_ZN9Scheduler19readyCoroutineQueueE>
    8000191c:	0007b023          	sd	zero,0(a5)
    80001920:	0007b423          	sd	zero,8(a5)
    80001924:	fd9ff06f          	j	800018fc <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001928 <_ZN9Scheduler3getEv>:
{
    80001928:	fe010113          	addi	sp,sp,-32
    8000192c:	00113c23          	sd	ra,24(sp)
    80001930:	00813823          	sd	s0,16(sp)
    80001934:	00913423          	sd	s1,8(sp)
    80001938:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    8000193c:	00004517          	auipc	a0,0x4
    80001940:	0ec53503          	ld	a0,236(a0) # 80005a28 <_ZN9Scheduler19readyCoroutineQueueE>
    80001944:	04050263          	beqz	a0,80001988 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    80001948:	00853783          	ld	a5,8(a0)
    8000194c:	00004717          	auipc	a4,0x4
    80001950:	0cf73e23          	sd	a5,220(a4) # 80005a28 <_ZN9Scheduler19readyCoroutineQueueE>
        if (!head) { tail = 0; }
    80001954:	02078463          	beqz	a5,8000197c <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    80001958:	00053483          	ld	s1,0(a0)
            MemoryAllocator::free(address);
    8000195c:	00000097          	auipc	ra,0x0
    80001960:	794080e7          	jalr	1940(ra) # 800020f0 <_ZN15MemoryAllocator4freeEPv>
}
    80001964:	00048513          	mv	a0,s1
    80001968:	01813083          	ld	ra,24(sp)
    8000196c:	01013403          	ld	s0,16(sp)
    80001970:	00813483          	ld	s1,8(sp)
    80001974:	02010113          	addi	sp,sp,32
    80001978:	00008067          	ret
        if (!head) { tail = 0; }
    8000197c:	00004797          	auipc	a5,0x4
    80001980:	0a07ba23          	sd	zero,180(a5) # 80005a30 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80001984:	fd5ff06f          	j	80001958 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80001988:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    8000198c:	fd9ff06f          	j	80001964 <_ZN9Scheduler3getEv+0x3c>

0000000080001990 <_ZN9Scheduler3putEP3CCB>:
{
    80001990:	fe010113          	addi	sp,sp,-32
    80001994:	00113c23          	sd	ra,24(sp)
    80001998:	00813823          	sd	s0,16(sp)
    8000199c:	00913423          	sd	s1,8(sp)
    800019a0:	02010413          	addi	s0,sp,32
    800019a4:	00050493          	mv	s1,a0
            return MemoryAllocator::allocateB(size);
    800019a8:	01000513          	li	a0,16
    800019ac:	00000097          	auipc	ra,0x0
    800019b0:	6ac080e7          	jalr	1708(ra) # 80002058 <_ZN15MemoryAllocator9allocateBEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800019b4:	00953023          	sd	s1,0(a0)
    800019b8:	00053423          	sd	zero,8(a0)
        if (tail)
    800019bc:	00004797          	auipc	a5,0x4
    800019c0:	0747b783          	ld	a5,116(a5) # 80005a30 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    800019c4:	02078263          	beqz	a5,800019e8 <_ZN9Scheduler3putEP3CCB+0x58>
            tail->next = elem;
    800019c8:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800019cc:	00004797          	auipc	a5,0x4
    800019d0:	06a7b223          	sd	a0,100(a5) # 80005a30 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    800019d4:	01813083          	ld	ra,24(sp)
    800019d8:	01013403          	ld	s0,16(sp)
    800019dc:	00813483          	ld	s1,8(sp)
    800019e0:	02010113          	addi	sp,sp,32
    800019e4:	00008067          	ret
            head = tail = elem;
    800019e8:	00004797          	auipc	a5,0x4
    800019ec:	04078793          	addi	a5,a5,64 # 80005a28 <_ZN9Scheduler19readyCoroutineQueueE>
    800019f0:	00a7b423          	sd	a0,8(a5)
    800019f4:	00a7b023          	sd	a0,0(a5)
    800019f8:	fddff06f          	j	800019d4 <_ZN9Scheduler3putEP3CCB+0x44>

00000000800019fc <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    800019fc:	ff010113          	addi	sp,sp,-16
    80001a00:	00113423          	sd	ra,8(sp)
    80001a04:	00813023          	sd	s0,0(sp)
    80001a08:	01010413          	addi	s0,sp,16
    80001a0c:	000105b7          	lui	a1,0x10
    80001a10:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001a14:	00100513          	li	a0,1
    80001a18:	00000097          	auipc	ra,0x0
    80001a1c:	ed0080e7          	jalr	-304(ra) # 800018e8 <_Z41__static_initialization_and_destruction_0ii>
    80001a20:	00813083          	ld	ra,8(sp)
    80001a24:	00013403          	ld	s0,0(sp)
    80001a28:	01010113          	addi	sp,sp,16
    80001a2c:	00008067          	ret

0000000080001a30 <main>:
#include "../h/print.hpp"
#include "../h/syscall_c.h"
void userMain();
uint64 backupSP;

void main(){
    80001a30:	ff010113          	addi	sp,sp,-16
    80001a34:	00113423          	sd	ra,8(sp)
    80001a38:	00813023          	sd	s0,0(sp)
    80001a3c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001a40:	10000793          	li	a5,256
    80001a44:	1007a073          	csrs	sstatus,a5

    Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    Riscv::w_stvec((uint64) &Riscv::interruptRoutine);
    80001a48:	00004797          	auipc	a5,0x4
    80001a4c:	f587b783          	ld	a5,-168(a5) # 800059a0 <_GLOBAL_OFFSET_TABLE_+0x8>
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001a50:	10579073          	csrw	stvec,a5
    MemoryAllocator::init();
    80001a54:	00000097          	auipc	ra,0x0
    80001a58:	4b0080e7          	jalr	1200(ra) # 80001f04 <_ZN15MemoryAllocator4initEv>
    thread_create(&CCB::running, nullptr, nullptr);
    80001a5c:	00000613          	li	a2,0
    80001a60:	00000593          	li	a1,0
    80001a64:	00004517          	auipc	a0,0x4
    80001a68:	f5453503          	ld	a0,-172(a0) # 800059b8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001a6c:	00000097          	auipc	ra,0x0
    80001a70:	820080e7          	jalr	-2016(ra) # 8000128c <_Z13thread_createPP3CCBPFvPvES2_>
    userMain();
    80001a74:	00000097          	auipc	ra,0x0
    80001a78:	e4c080e7          	jalr	-436(ra) # 800018c0 <_Z8userMainv>
}
    80001a7c:	00813083          	ld	ra,8(sp)
    80001a80:	00013403          	ld	s0,0(sp)
    80001a84:	01010113          	addi	sp,sp,16
    80001a88:	00008067          	ret

0000000080001a8c <_ZN3CCB13threadWrapperEv>:
    running = Scheduler::get();

    CCB::contextSwitch(&old->context, &running->context);
}

void CCB::threadWrapper() {
    80001a8c:	fe010113          	addi	sp,sp,-32
    80001a90:	00113c23          	sd	ra,24(sp)
    80001a94:	00813823          	sd	s0,16(sp)
    80001a98:	00913423          	sd	s1,8(sp)
    80001a9c:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80001aa0:	00000097          	auipc	ra,0x0
    80001aa4:	258080e7          	jalr	600(ra) # 80001cf8 <_ZN5Riscv10popSppSpieEv>
    running->body(running->args);
    80001aa8:	00004497          	auipc	s1,0x4
    80001aac:	f9848493          	addi	s1,s1,-104 # 80005a40 <_ZN3CCB7runningE>
    80001ab0:	0004b783          	ld	a5,0(s1)
    80001ab4:	0007b703          	ld	a4,0(a5)
    80001ab8:	0107b503          	ld	a0,16(a5)
    80001abc:	000700e7          	jalr	a4
    running->setFinished(true);
    80001ac0:	0004b783          	ld	a5,0(s1)
        MemoryAllocator::free(address);
    }

    bool isFinished() const { return finished; }

    void setFinished(bool value) { finished = value;}
    80001ac4:	00100713          	li	a4,1
    80001ac8:	02e78423          	sb	a4,40(a5)
    thread_dispatch();
    80001acc:	fffff097          	auipc	ra,0xfffff
    80001ad0:	7f0080e7          	jalr	2032(ra) # 800012bc <_Z15thread_dispatchv>
    80001ad4:	01813083          	ld	ra,24(sp)
    80001ad8:	01013403          	ld	s0,16(sp)
    80001adc:	00813483          	ld	s1,8(sp)
    80001ae0:	02010113          	addi	sp,sp,32
    80001ae4:	00008067          	ret

0000000080001ae8 <_ZN3CCB15createCoroutineEPFvPvES0_>:
{
    80001ae8:	fd010113          	addi	sp,sp,-48
    80001aec:	02113423          	sd	ra,40(sp)
    80001af0:	02813023          	sd	s0,32(sp)
    80001af4:	00913c23          	sd	s1,24(sp)
    80001af8:	01213823          	sd	s2,16(sp)
    80001afc:	01313423          	sd	s3,8(sp)
    80001b00:	03010413          	addi	s0,sp,48
    80001b04:	00050913          	mv	s2,a0
    80001b08:	00058993          	mv	s3,a1
        return MemoryAllocator::allocateB(size);
    80001b0c:	03000513          	li	a0,48
    80001b10:	00000097          	auipc	ra,0x0
    80001b14:	548080e7          	jalr	1352(ra) # 80002058 <_ZN15MemoryAllocator9allocateBEm>
    80001b18:	00050493          	mv	s1,a0
            stack(body != nullptr ? (uint64*) MemoryAllocator::allocateB(sizeof(uint64) * STACK_SIZE) : nullptr),
            args(arg),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            finished(false)
    80001b1c:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? (uint64*) MemoryAllocator::allocateB(sizeof(uint64) * STACK_SIZE) : nullptr),
    80001b20:	00090a63          	beqz	s2,80001b34 <_ZN3CCB15createCoroutineEPFvPvES0_+0x4c>
    80001b24:	00002537          	lui	a0,0x2
    80001b28:	00000097          	auipc	ra,0x0
    80001b2c:	530080e7          	jalr	1328(ra) # 80002058 <_ZN15MemoryAllocator9allocateBEm>
    80001b30:	0080006f          	j	80001b38 <_ZN3CCB15createCoroutineEPFvPvES0_+0x50>
    80001b34:	00000513          	li	a0,0
            finished(false)
    80001b38:	00a4b423          	sd	a0,8(s1)
    80001b3c:	0134b823          	sd	s3,16(s1)
    80001b40:	00000797          	auipc	a5,0x0
    80001b44:	f4c78793          	addi	a5,a5,-180 # 80001a8c <_ZN3CCB13threadWrapperEv>
    80001b48:	00f4bc23          	sd	a5,24(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001b4c:	02050463          	beqz	a0,80001b74 <_ZN3CCB15createCoroutineEPFvPvES0_+0x8c>
    80001b50:	000027b7          	lui	a5,0x2
    80001b54:	00f507b3          	add	a5,a0,a5
            finished(false)
    80001b58:	02f4b023          	sd	a5,32(s1)
    80001b5c:	02048423          	sb	zero,40(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    80001b60:	02090c63          	beqz	s2,80001b98 <_ZN3CCB15createCoroutineEPFvPvES0_+0xb0>
    80001b64:	00048513          	mv	a0,s1
    80001b68:	00000097          	auipc	ra,0x0
    80001b6c:	e28080e7          	jalr	-472(ra) # 80001990 <_ZN9Scheduler3putEP3CCB>
    80001b70:	0280006f          	j	80001b98 <_ZN3CCB15createCoroutineEPFvPvES0_+0xb0>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001b74:	00000793          	li	a5,0
    80001b78:	fe1ff06f          	j	80001b58 <_ZN3CCB15createCoroutineEPFvPvES0_+0x70>
    80001b7c:	00050913          	mv	s2,a0
        MemoryAllocator::free(address);
    80001b80:	00048513          	mv	a0,s1
    80001b84:	00000097          	auipc	ra,0x0
    80001b88:	56c080e7          	jalr	1388(ra) # 800020f0 <_ZN15MemoryAllocator4freeEPv>
    80001b8c:	00090513          	mv	a0,s2
    80001b90:	00005097          	auipc	ra,0x5
    80001b94:	f88080e7          	jalr	-120(ra) # 80006b18 <_Unwind_Resume>
}
    80001b98:	00048513          	mv	a0,s1
    80001b9c:	02813083          	ld	ra,40(sp)
    80001ba0:	02013403          	ld	s0,32(sp)
    80001ba4:	01813483          	ld	s1,24(sp)
    80001ba8:	01013903          	ld	s2,16(sp)
    80001bac:	00813983          	ld	s3,8(sp)
    80001bb0:	03010113          	addi	sp,sp,48
    80001bb4:	00008067          	ret

0000000080001bb8 <_ZN3CCB8dispatchEv>:
{
    80001bb8:	fe010113          	addi	sp,sp,-32
    80001bbc:	00113c23          	sd	ra,24(sp)
    80001bc0:	00813823          	sd	s0,16(sp)
    80001bc4:	00913423          	sd	s1,8(sp)
    80001bc8:	02010413          	addi	s0,sp,32
    CCB *old = running;
    80001bcc:	00004497          	auipc	s1,0x4
    80001bd0:	e744b483          	ld	s1,-396(s1) # 80005a40 <_ZN3CCB7runningE>
    bool isFinished() const { return finished; }
    80001bd4:	0284c783          	lbu	a5,40(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    80001bd8:	02078c63          	beqz	a5,80001c10 <_ZN3CCB8dispatchEv+0x58>
    running = Scheduler::get();
    80001bdc:	00000097          	auipc	ra,0x0
    80001be0:	d4c080e7          	jalr	-692(ra) # 80001928 <_ZN9Scheduler3getEv>
    80001be4:	00004797          	auipc	a5,0x4
    80001be8:	e4a7be23          	sd	a0,-420(a5) # 80005a40 <_ZN3CCB7runningE>
    CCB::contextSwitch(&old->context, &running->context);
    80001bec:	01850593          	addi	a1,a0,24 # 2018 <_entry-0x7fffdfe8>
    80001bf0:	01848513          	addi	a0,s1,24
    80001bf4:	fffff097          	auipc	ra,0xfffff
    80001bf8:	614080e7          	jalr	1556(ra) # 80001208 <_ZN3CCB13contextSwitchEPNS_7ContextES1_>
}
    80001bfc:	01813083          	ld	ra,24(sp)
    80001c00:	01013403          	ld	s0,16(sp)
    80001c04:	00813483          	ld	s1,8(sp)
    80001c08:	02010113          	addi	sp,sp,32
    80001c0c:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    80001c10:	00048513          	mv	a0,s1
    80001c14:	00000097          	auipc	ra,0x0
    80001c18:	d7c080e7          	jalr	-644(ra) # 80001990 <_ZN9Scheduler3putEP3CCB>
    80001c1c:	fc1ff06f          	j	80001bdc <_ZN3CCB8dispatchEv+0x24>

0000000080001c20 <_ZN3CCB5yieldEv>:
{
    80001c20:	ff010113          	addi	sp,sp,-16
    80001c24:	00113423          	sd	ra,8(sp)
    80001c28:	00813023          	sd	s0,0(sp)
    80001c2c:	01010413          	addi	s0,sp,16
    Riscv::pushRegisters();
    80001c30:	fffff097          	auipc	ra,0xfffff
    80001c34:	4e0080e7          	jalr	1248(ra) # 80001110 <_ZN5Riscv13pushRegistersEv>
    CCB::dispatch();
    80001c38:	00000097          	auipc	ra,0x0
    80001c3c:	f80080e7          	jalr	-128(ra) # 80001bb8 <_ZN3CCB8dispatchEv>
    Riscv::popRegisters();
    80001c40:	fffff097          	auipc	ra,0xfffff
    80001c44:	54c080e7          	jalr	1356(ra) # 8000118c <_ZN5Riscv12popRegistersEv>
}
    80001c48:	00813083          	ld	ra,8(sp)
    80001c4c:	00013403          	ld	s0,0(sp)
    80001c50:	01010113          	addi	sp,sp,16
    80001c54:	00008067          	ret

0000000080001c58 <_Znwm>:
// Created by os on 6/22/22.
//
#include "../h/syscall_cpp.hpp"
#include "../h/syscall_c.h"

void* operator new(size_t size) {
    80001c58:	ff010113          	addi	sp,sp,-16
    80001c5c:	00113423          	sd	ra,8(sp)
    80001c60:	00813023          	sd	s0,0(sp)
    80001c64:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001c68:	fffff097          	auipc	ra,0xfffff
    80001c6c:	5b4080e7          	jalr	1460(ra) # 8000121c <_Z9mem_allocm>
}
    80001c70:	00813083          	ld	ra,8(sp)
    80001c74:	00013403          	ld	s0,0(sp)
    80001c78:	01010113          	addi	sp,sp,16
    80001c7c:	00008067          	ret

0000000080001c80 <_Znam>:
void* operator new[](size_t size) {
    80001c80:	ff010113          	addi	sp,sp,-16
    80001c84:	00113423          	sd	ra,8(sp)
    80001c88:	00813023          	sd	s0,0(sp)
    80001c8c:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001c90:	fffff097          	auipc	ra,0xfffff
    80001c94:	58c080e7          	jalr	1420(ra) # 8000121c <_Z9mem_allocm>
}
    80001c98:	00813083          	ld	ra,8(sp)
    80001c9c:	00013403          	ld	s0,0(sp)
    80001ca0:	01010113          	addi	sp,sp,16
    80001ca4:	00008067          	ret

0000000080001ca8 <_ZdlPv>:
void operator delete(void* address) {
    80001ca8:	ff010113          	addi	sp,sp,-16
    80001cac:	00113423          	sd	ra,8(sp)
    80001cb0:	00813023          	sd	s0,0(sp)
    80001cb4:	01010413          	addi	s0,sp,16
    mem_free(address);
    80001cb8:	fffff097          	auipc	ra,0xfffff
    80001cbc:	5b0080e7          	jalr	1456(ra) # 80001268 <_Z8mem_freePv>
}
    80001cc0:	00813083          	ld	ra,8(sp)
    80001cc4:	00013403          	ld	s0,0(sp)
    80001cc8:	01010113          	addi	sp,sp,16
    80001ccc:	00008067          	ret

0000000080001cd0 <_ZdaPv>:
void operator delete[](void* address) {
    80001cd0:	ff010113          	addi	sp,sp,-16
    80001cd4:	00113423          	sd	ra,8(sp)
    80001cd8:	00813023          	sd	s0,0(sp)
    80001cdc:	01010413          	addi	s0,sp,16
    mem_free(address);
    80001ce0:	fffff097          	auipc	ra,0xfffff
    80001ce4:	588080e7          	jalr	1416(ra) # 80001268 <_Z8mem_freePv>
}
    80001ce8:	00813083          	ld	ra,8(sp)
    80001cec:	00013403          	ld	s0,0(sp)
    80001cf0:	01010113          	addi	sp,sp,16
    80001cf4:	00008067          	ret

0000000080001cf8 <_ZN5Riscv10popSppSpieEv>:
#define THREAD_DISPATCH 0x13
extern uint64 backupSP;


void Riscv::popSppSpie()
{
    80001cf8:	ff010113          	addi	sp,sp,-16
    80001cfc:	00813423          	sd	s0,8(sp)
    80001d00:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001d04:	14109073          	csrw	sepc,ra
    __asm__ volatile ("csrc sip, 0x02");
    80001d08:	14417073          	csrci	sip,2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001d0c:	10000793          	li	a5,256
    80001d10:	1007a073          	csrs	sstatus,a5
    ms_sstatus(SSTATUS_SPP);
    __asm__ volatile ("sret");
    80001d14:	10200073          	sret
}
    80001d18:	00813403          	ld	s0,8(sp)
    80001d1c:	01010113          	addi	sp,sp,16
    80001d20:	00008067          	ret

0000000080001d24 <_ZN5Riscv16interruptHandlerEv>:

void Riscv::interruptHandler() {
    80001d24:	fa010113          	addi	sp,sp,-96
    80001d28:	04113c23          	sd	ra,88(sp)
    80001d2c:	04813823          	sd	s0,80(sp)
    80001d30:	04913423          	sd	s1,72(sp)
    80001d34:	05213023          	sd	s2,64(sp)
    80001d38:	06010413          	addi	s0,sp,96
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001d3c:	142027f3          	csrr	a5,scause
    80001d40:	faf43023          	sd	a5,-96(s0)
    return scause;
    80001d44:	fa043703          	ld	a4,-96(s0)
    uint64 scause = Riscv::r_scause();
    if (scause == INTR_TIMER)
    80001d48:	fff00793          	li	a5,-1
    80001d4c:	03f79793          	slli	a5,a5,0x3f
    80001d50:	00178793          	addi	a5,a5,1
    80001d54:	04f70a63          	beq	a4,a5,80001da8 <_ZN5Riscv16interruptHandlerEv+0x84>
        //     w_sstatus(sstatus);
        //     w_sepc(sepc);
        // }
        // mc_sip(SIP_SSIP);
    }
    else if(scause == ECALL_USER || scause == ECALL_SUPERVISOR){
    80001d58:	ff870793          	addi	a5,a4,-8
    80001d5c:	00100693          	li	a3,1
    80001d60:	06f6f063          	bgeu	a3,a5,80001dc0 <_ZN5Riscv16interruptHandlerEv+0x9c>
            CCB::yield();
            w_sepc(r_sepc() + 4);
        }

    }
    else if (scause == 0x8000000000000009UL) {
    80001d64:	fff00793          	li	a5,-1
    80001d68:	03f79793          	slli	a5,a5,0x3f
    80001d6c:	00978793          	addi	a5,a5,9
    80001d70:	18f70463          	beq	a4,a5,80001ef8 <_ZN5Riscv16interruptHandlerEv+0x1d4>
        console_handler();
    }
    else {
        printString("Error ");
    80001d74:	00003517          	auipc	a0,0x3
    80001d78:	3a450513          	addi	a0,a0,932 # 80005118 <CONSOLE_STATUS+0x108>
    80001d7c:	00000097          	auipc	ra,0x0
    80001d80:	430080e7          	jalr	1072(ra) # 800021ac <_Z11printStringPKc>
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001d84:	142027f3          	csrr	a5,scause
    80001d88:	fcf43c23          	sd	a5,-40(s0)
    return scause;
    80001d8c:	fd843503          	ld	a0,-40(s0)
        printInteger(r_scause());
    80001d90:	00000097          	auipc	ra,0x0
    80001d94:	48c080e7          	jalr	1164(ra) # 8000221c <_Z12printIntegerm>
        printString("\n");
    80001d98:	00003517          	auipc	a0,0x3
    80001d9c:	4a850513          	addi	a0,a0,1192 # 80005240 <_ZZ12printIntegermE6digits+0x120>
    80001da0:	00000097          	auipc	ra,0x0
    80001da4:	40c080e7          	jalr	1036(ra) # 800021ac <_Z11printStringPKc>
    }
    80001da8:	05813083          	ld	ra,88(sp)
    80001dac:	05013403          	ld	s0,80(sp)
    80001db0:	04813483          	ld	s1,72(sp)
    80001db4:	04013903          	ld	s2,64(sp)
    80001db8:	06010113          	addi	sp,sp,96
    80001dbc:	00008067          	ret
        __asm__ volatile("mv %0, a0" : "=r" (intrId));
    80001dc0:	00050793          	mv	a5,a0
        if(intrId == MEM_ALLOC){
    80001dc4:	00100713          	li	a4,1
    80001dc8:	04e78c63          	beq	a5,a4,80001e20 <_ZN5Riscv16interruptHandlerEv+0xfc>
        else if(intrId == MEM_FREE){
    80001dcc:	00200713          	li	a4,2
    80001dd0:	08e78263          	beq	a5,a4,80001e54 <_ZN5Riscv16interruptHandlerEv+0x130>
        else if(intrId == THREAD_CREATE){
    80001dd4:	01100713          	li	a4,17
    80001dd8:	0ae78863          	beq	a5,a4,80001e88 <_ZN5Riscv16interruptHandlerEv+0x164>
        else if(intrId == THREAD_DISPATCH) {
    80001ddc:	01300713          	li	a4,19
    80001de0:	0ee78463          	beq	a5,a4,80001ec8 <_ZN5Riscv16interruptHandlerEv+0x1a4>
        else if(intrId == THREAD_EXIT){
    80001de4:	01200713          	li	a4,18
    80001de8:	fce790e3          	bne	a5,a4,80001da8 <_ZN5Riscv16interruptHandlerEv+0x84>
            CCB::running->setFinished(true);
    80001dec:	00004797          	auipc	a5,0x4
    80001df0:	bcc7b783          	ld	a5,-1076(a5) # 800059b8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001df4:	0007b783          	ld	a5,0(a5)
    void setFinished(bool value) { finished = value;}
    80001df8:	00100713          	li	a4,1
    80001dfc:	02e78423          	sb	a4,40(a5)
            CCB::yield();
    80001e00:	00000097          	auipc	ra,0x0
    80001e04:	e20080e7          	jalr	-480(ra) # 80001c20 <_ZN3CCB5yieldEv>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001e08:	141027f3          	csrr	a5,sepc
    80001e0c:	fcf43823          	sd	a5,-48(s0)
    return sepc;
    80001e10:	fd043783          	ld	a5,-48(s0)
            w_sepc(r_sepc() + 4);
    80001e14:	00478793          	addi	a5,a5,4
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001e18:	14179073          	csrw	sepc,a5
}
    80001e1c:	f8dff06f          	j	80001da8 <_ZN5Riscv16interruptHandlerEv+0x84>
            asm ("mv %0, a1" : "=r" (numBlocks));
    80001e20:	00058513          	mv	a0,a1
            MemoryAllocator::allocate(numBlocks);
    80001e24:	00000097          	auipc	ra,0x0
    80001e28:	134080e7          	jalr	308(ra) # 80001f58 <_ZN15MemoryAllocator8allocateEm>
            __asm__ volatile("sd a0, 0x50(%0)" : : "r" (backupSP));
    80001e2c:	00004797          	auipc	a5,0x4
    80001e30:	b9c7b783          	ld	a5,-1124(a5) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001e34:	0007b783          	ld	a5,0(a5)
    80001e38:	04a7b823          	sd	a0,80(a5)
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001e3c:	141027f3          	csrr	a5,sepc
    80001e40:	faf43423          	sd	a5,-88(s0)
    return sepc;
    80001e44:	fa843783          	ld	a5,-88(s0)
            w_sepc(r_sepc() + 4);
    80001e48:	00478793          	addi	a5,a5,4
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001e4c:	14179073          	csrw	sepc,a5
}
    80001e50:	f59ff06f          	j	80001da8 <_ZN5Riscv16interruptHandlerEv+0x84>
            __asm__ volatile("mv %0, a1" : "=r" (address));
    80001e54:	00058513          	mv	a0,a1
            MemoryAllocator::free(address);
    80001e58:	00000097          	auipc	ra,0x0
    80001e5c:	298080e7          	jalr	664(ra) # 800020f0 <_ZN15MemoryAllocator4freeEPv>
            __asm__ volatile("sd a0, 0x50(%0)" : : "r" (backupSP));
    80001e60:	00004797          	auipc	a5,0x4
    80001e64:	b687b783          	ld	a5,-1176(a5) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001e68:	0007b783          	ld	a5,0(a5)
    80001e6c:	04a7b823          	sd	a0,80(a5)
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001e70:	141027f3          	csrr	a5,sepc
    80001e74:	faf43823          	sd	a5,-80(s0)
    return sepc;
    80001e78:	fb043783          	ld	a5,-80(s0)
            w_sepc(r_sepc() + 4);
    80001e7c:	00478793          	addi	a5,a5,4
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001e80:	14179073          	csrw	sepc,a5
}
    80001e84:	f25ff06f          	j	80001da8 <_ZN5Riscv16interruptHandlerEv+0x84>
            __asm__ volatile ("mv %0, a1" : "=r" (handle));
    80001e88:	00058493          	mv	s1,a1
            __asm__ volatile ("mv %0, a2" : "=r" (body));
    80001e8c:	00060513          	mv	a0,a2
            __asm__ volatile ("ld a3, 0x68(%0)" : : "r" (backupSP));
    80001e90:	00004797          	auipc	a5,0x4
    80001e94:	b387b783          	ld	a5,-1224(a5) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001e98:	0007b783          	ld	a5,0(a5)
    80001e9c:	0687b683          	ld	a3,104(a5)
            __asm__ volatile ("mv %0, a3" : "=r" (args));
    80001ea0:	00068593          	mv	a1,a3
            *handle = CCB::createCoroutine(body, args);
    80001ea4:	00000097          	auipc	ra,0x0
    80001ea8:	c44080e7          	jalr	-956(ra) # 80001ae8 <_ZN3CCB15createCoroutineEPFvPvES0_>
    80001eac:	00a4b023          	sd	a0,0(s1)
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001eb0:	141027f3          	csrr	a5,sepc
    80001eb4:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    80001eb8:	fb843783          	ld	a5,-72(s0)
            w_sepc(r_sepc() + 4);
    80001ebc:	00478793          	addi	a5,a5,4
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001ec0:	14179073          	csrw	sepc,a5
}
    80001ec4:	ee5ff06f          	j	80001da8 <_ZN5Riscv16interruptHandlerEv+0x84>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001ec8:	141027f3          	csrr	a5,sepc
    80001ecc:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80001ed0:	fc843483          	ld	s1,-56(s0)
            uint64 sepc = r_sepc() + 4;
    80001ed4:	00448493          	addi	s1,s1,4
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001ed8:	100027f3          	csrr	a5,sstatus
    80001edc:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80001ee0:	fc043903          	ld	s2,-64(s0)
            CCB::dispatch();
    80001ee4:	00000097          	auipc	ra,0x0
    80001ee8:	cd4080e7          	jalr	-812(ra) # 80001bb8 <_ZN3CCB8dispatchEv>
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001eec:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001ef0:	14149073          	csrw	sepc,s1
}
    80001ef4:	eb5ff06f          	j	80001da8 <_ZN5Riscv16interruptHandlerEv+0x84>
        console_handler();
    80001ef8:	00002097          	auipc	ra,0x2
    80001efc:	518080e7          	jalr	1304(ra) # 80004410 <console_handler>
    80001f00:	ea9ff06f          	j	80001da8 <_ZN5Riscv16interruptHandlerEv+0x84>

0000000080001f04 <_ZN15MemoryAllocator4initEv>:

#include "../h/MemoryAllocator.hpp"

BlockHeader* MemoryAllocator::fmem_head = nullptr;

void MemoryAllocator::init() {
    80001f04:	ff010113          	addi	sp,sp,-16
    80001f08:	00813423          	sd	s0,8(sp)
    80001f0c:	01010413          	addi	s0,sp,16
    fmem_head = (BlockHeader*) HEAP_START_ADDR;
    80001f10:	00004797          	auipc	a5,0x4
    80001f14:	a987b783          	ld	a5,-1384(a5) # 800059a8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001f18:	0007b703          	ld	a4,0(a5)
    80001f1c:	00004697          	auipc	a3,0x4
    80001f20:	b2c68693          	addi	a3,a3,-1236 # 80005a48 <_ZN15MemoryAllocator9fmem_headE>
    80001f24:	00e6b023          	sd	a4,0(a3)
    fmem_head->size = (((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR) / MEM_BLOCK_SIZE);
    80001f28:	00004797          	auipc	a5,0x4
    80001f2c:	a987b783          	ld	a5,-1384(a5) # 800059c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001f30:	0007b783          	ld	a5,0(a5)
    80001f34:	40e787b3          	sub	a5,a5,a4
    80001f38:	0067d793          	srli	a5,a5,0x6
    80001f3c:	00f73023          	sd	a5,0(a4)
    fmem_head->prev = fmem_head->next = nullptr;
    80001f40:	0006b783          	ld	a5,0(a3)
    80001f44:	0007b423          	sd	zero,8(a5)
    80001f48:	0007b823          	sd	zero,16(a5)
}
    80001f4c:	00813403          	ld	s0,8(sp)
    80001f50:	01010113          	addi	sp,sp,16
    80001f54:	00008067          	ret

0000000080001f58 <_ZN15MemoryAllocator8allocateEm>:
void *MemoryAllocator::allocateB(size_t size) {
    uint64 numOfBlocks = (size+sizeof(BlockHeader))/MEM_BLOCK_SIZE + ((size+sizeof(BlockHeader)) % MEM_BLOCK_SIZE > 0 ? 1 : 0);
    return allocate(numOfBlocks);
}

void* MemoryAllocator::allocate(size_t numOfBlocks) {
    80001f58:	ff010113          	addi	sp,sp,-16
    80001f5c:	00813423          	sd	s0,8(sp)
    80001f60:	01010413          	addi	s0,sp,16
    80001f64:	00050713          	mv	a4,a0
    if (fmem_head == nullptr) return nullptr;
    80001f68:	00004517          	auipc	a0,0x4
    80001f6c:	ae053503          	ld	a0,-1312(a0) # 80005a48 <_ZN15MemoryAllocator9fmem_headE>
    80001f70:	08050a63          	beqz	a0,80002004 <_ZN15MemoryAllocator8allocateEm+0xac>

    BlockHeader* blk = nullptr;
    80001f74:	00000793          	li	a5,0
    80001f78:	0140006f          	j	80001f8c <_ZN15MemoryAllocator8allocateEm+0x34>
    for (BlockHeader* curr = fmem_head; curr; curr = curr->next)
        if ((!blk && curr->size >= numOfBlocks) || (blk && curr->size >= numOfBlocks && blk->size > curr->size)) blk = curr;
    80001f7c:	00053683          	ld	a3,0(a0)
    80001f80:	00e6ea63          	bltu	a3,a4,80001f94 <_ZN15MemoryAllocator8allocateEm+0x3c>
    80001f84:	00050793          	mv	a5,a0
    for (BlockHeader* curr = fmem_head; curr; curr = curr->next)
    80001f88:	00853503          	ld	a0,8(a0)
    80001f8c:	02050263          	beqz	a0,80001fb0 <_ZN15MemoryAllocator8allocateEm+0x58>
        if ((!blk && curr->size >= numOfBlocks) || (blk && curr->size >= numOfBlocks && blk->size > curr->size)) blk = curr;
    80001f90:	fe0786e3          	beqz	a5,80001f7c <_ZN15MemoryAllocator8allocateEm+0x24>
    80001f94:	fe078ae3          	beqz	a5,80001f88 <_ZN15MemoryAllocator8allocateEm+0x30>
    80001f98:	00053683          	ld	a3,0(a0)
    80001f9c:	fee6e6e3          	bltu	a3,a4,80001f88 <_ZN15MemoryAllocator8allocateEm+0x30>
    80001fa0:	0007b603          	ld	a2,0(a5)
    80001fa4:	fec6f2e3          	bgeu	a3,a2,80001f88 <_ZN15MemoryAllocator8allocateEm+0x30>
    80001fa8:	00050793          	mv	a5,a0
    80001fac:	fddff06f          	j	80001f88 <_ZN15MemoryAllocator8allocateEm+0x30>

    if (!blk) return nullptr;
    80001fb0:	0a078063          	beqz	a5,80002050 <_ZN15MemoryAllocator8allocateEm+0xf8>

    size_t remainingNumOfBlocks = blk->size - numOfBlocks;
    80001fb4:	0007b683          	ld	a3,0(a5)
    80001fb8:	40e68633          	sub	a2,a3,a4
    if (remainingNumOfBlocks > 0) {
    80001fbc:	06e68063          	beq	a3,a4,8000201c <_ZN15MemoryAllocator8allocateEm+0xc4>
        blk->size = numOfBlocks;
    80001fc0:	00e7b023          	sd	a4,0(a5)
        BlockHeader* newBlk = (BlockHeader*)((char*)blk + numOfBlocks*MEM_BLOCK_SIZE);
    80001fc4:	00671713          	slli	a4,a4,0x6
    80001fc8:	00e78733          	add	a4,a5,a4

        if (blk->next) blk->next->prev = newBlk;
    80001fcc:	0087b683          	ld	a3,8(a5)
    80001fd0:	00068463          	beqz	a3,80001fd8 <_ZN15MemoryAllocator8allocateEm+0x80>
    80001fd4:	00e6b823          	sd	a4,16(a3)
        if (blk->prev) blk->prev->next = newBlk;
    80001fd8:	0107b683          	ld	a3,16(a5)
    80001fdc:	02068a63          	beqz	a3,80002010 <_ZN15MemoryAllocator8allocateEm+0xb8>
    80001fe0:	00e6b423          	sd	a4,8(a3)
        else fmem_head = newBlk;

        newBlk->next = blk->next;
    80001fe4:	0087b683          	ld	a3,8(a5)
    80001fe8:	00d73423          	sd	a3,8(a4)
        newBlk->prev = blk->prev;
    80001fec:	0107b683          	ld	a3,16(a5)
    80001ff0:	00d73823          	sd	a3,16(a4)
        newBlk->size = remainingNumOfBlocks;
    80001ff4:	00c73023          	sd	a2,0(a4)
    else {
        if (blk->next) blk->next->prev = blk->prev;
        if (blk->prev) blk->prev->next = blk->next;
        else fmem_head = blk->next;
    }
    blk->next = blk->prev = nullptr;
    80001ff8:	0007b823          	sd	zero,16(a5)
    80001ffc:	0007b423          	sd	zero,8(a5)
    return (char*)blk + sizeof(BlockHeader);
    80002000:	01878513          	addi	a0,a5,24
}
    80002004:	00813403          	ld	s0,8(sp)
    80002008:	01010113          	addi	sp,sp,16
    8000200c:	00008067          	ret
        else fmem_head = newBlk;
    80002010:	00004697          	auipc	a3,0x4
    80002014:	a2e6bc23          	sd	a4,-1480(a3) # 80005a48 <_ZN15MemoryAllocator9fmem_headE>
    80002018:	fcdff06f          	j	80001fe4 <_ZN15MemoryAllocator8allocateEm+0x8c>
        if (blk->next) blk->next->prev = blk->prev;
    8000201c:	0087b703          	ld	a4,8(a5)
    80002020:	00070663          	beqz	a4,8000202c <_ZN15MemoryAllocator8allocateEm+0xd4>
    80002024:	0107b683          	ld	a3,16(a5)
    80002028:	00d73823          	sd	a3,16(a4)
        if (blk->prev) blk->prev->next = blk->next;
    8000202c:	0107b703          	ld	a4,16(a5)
    80002030:	00070863          	beqz	a4,80002040 <_ZN15MemoryAllocator8allocateEm+0xe8>
    80002034:	0087b683          	ld	a3,8(a5)
    80002038:	00d73423          	sd	a3,8(a4)
    8000203c:	fbdff06f          	j	80001ff8 <_ZN15MemoryAllocator8allocateEm+0xa0>
        else fmem_head = blk->next;
    80002040:	0087b703          	ld	a4,8(a5)
    80002044:	00004697          	auipc	a3,0x4
    80002048:	a0e6b223          	sd	a4,-1532(a3) # 80005a48 <_ZN15MemoryAllocator9fmem_headE>
    8000204c:	fadff06f          	j	80001ff8 <_ZN15MemoryAllocator8allocateEm+0xa0>
    if (!blk) return nullptr;
    80002050:	00078513          	mv	a0,a5
    80002054:	fb1ff06f          	j	80002004 <_ZN15MemoryAllocator8allocateEm+0xac>

0000000080002058 <_ZN15MemoryAllocator9allocateBEm>:
void *MemoryAllocator::allocateB(size_t size) {
    80002058:	ff010113          	addi	sp,sp,-16
    8000205c:	00113423          	sd	ra,8(sp)
    80002060:	00813023          	sd	s0,0(sp)
    80002064:	01010413          	addi	s0,sp,16
    uint64 numOfBlocks = (size+sizeof(BlockHeader))/MEM_BLOCK_SIZE + ((size+sizeof(BlockHeader)) % MEM_BLOCK_SIZE > 0 ? 1 : 0);
    80002068:	01850513          	addi	a0,a0,24
    8000206c:	00655793          	srli	a5,a0,0x6
    80002070:	03f57513          	andi	a0,a0,63
    80002074:	00050463          	beqz	a0,8000207c <_ZN15MemoryAllocator9allocateBEm+0x24>
    80002078:	00100513          	li	a0,1
    return allocate(numOfBlocks);
    8000207c:	00a78533          	add	a0,a5,a0
    80002080:	00000097          	auipc	ra,0x0
    80002084:	ed8080e7          	jalr	-296(ra) # 80001f58 <_ZN15MemoryAllocator8allocateEm>
}
    80002088:	00813083          	ld	ra,8(sp)
    8000208c:	00013403          	ld	s0,0(sp)
    80002090:	01010113          	addi	sp,sp,16
    80002094:	00008067          	ret

0000000080002098 <_ZN15MemoryAllocator9joinUpperEP11BlockHeader>:

    return 0;

}

void MemoryAllocator::joinUpper(BlockHeader * blk) {
    80002098:	ff010113          	addi	sp,sp,-16
    8000209c:	00813423          	sd	s0,8(sp)
    800020a0:	01010413          	addi	s0,sp,16
    if (!blk || !blk->next) return;
    800020a4:	00050e63          	beqz	a0,800020c0 <_ZN15MemoryAllocator9joinUpperEP11BlockHeader+0x28>
    800020a8:	00853703          	ld	a4,8(a0)
    800020ac:	00070a63          	beqz	a4,800020c0 <_ZN15MemoryAllocator9joinUpperEP11BlockHeader+0x28>

    if ((char*)blk + blk->size * MEM_BLOCK_SIZE == (char*)blk->next){
    800020b0:	00053783          	ld	a5,0(a0)
    800020b4:	00679793          	slli	a5,a5,0x6
    800020b8:	00f507b3          	add	a5,a0,a5
    800020bc:	00f70863          	beq	a4,a5,800020cc <_ZN15MemoryAllocator9joinUpperEP11BlockHeader+0x34>
        BlockHeader* x = blk->next;
        blk->next = x->next;
        if (blk->next) blk->next->prev = blk;
        blk->size += x->size;
    }
    800020c0:	00813403          	ld	s0,8(sp)
    800020c4:	01010113          	addi	sp,sp,16
    800020c8:	00008067          	ret
        blk->next = x->next;
    800020cc:	00873783          	ld	a5,8(a4)
    800020d0:	00f53423          	sd	a5,8(a0)
        if (blk->next) blk->next->prev = blk;
    800020d4:	00078463          	beqz	a5,800020dc <_ZN15MemoryAllocator9joinUpperEP11BlockHeader+0x44>
    800020d8:	00a7b823          	sd	a0,16(a5)
        blk->size += x->size;
    800020dc:	00073703          	ld	a4,0(a4)
    800020e0:	00053783          	ld	a5,0(a0)
    800020e4:	00e787b3          	add	a5,a5,a4
    800020e8:	00f53023          	sd	a5,0(a0)
    800020ec:	fd5ff06f          	j	800020c0 <_ZN15MemoryAllocator9joinUpperEP11BlockHeader+0x28>

00000000800020f0 <_ZN15MemoryAllocator4freeEPv>:
    if (addr == nullptr) return 0;
    800020f0:	0a050a63          	beqz	a0,800021a4 <_ZN15MemoryAllocator4freeEPv+0xb4>
int MemoryAllocator::free(void* addr) {
    800020f4:	fe010113          	addi	sp,sp,-32
    800020f8:	00113c23          	sd	ra,24(sp)
    800020fc:	00813823          	sd	s0,16(sp)
    80002100:	00913423          	sd	s1,8(sp)
    80002104:	02010413          	addi	s0,sp,32
    80002108:	00050493          	mv	s1,a0
    BlockHeader* newBlk = (BlockHeader*) ((char*)addr - sizeof(BlockHeader));
    8000210c:	fe850513          	addi	a0,a0,-24
    if (fmem_head == nullptr){
    80002110:	00004797          	auipc	a5,0x4
    80002114:	9387b783          	ld	a5,-1736(a5) # 80005a48 <_ZN15MemoryAllocator9fmem_headE>
    80002118:	04078463          	beqz	a5,80002160 <_ZN15MemoryAllocator4freeEPv+0x70>
    else if (newBlk < fmem_head) {
    8000211c:	04f57c63          	bgeu	a0,a5,80002174 <_ZN15MemoryAllocator4freeEPv+0x84>
        newBlk->next = fmem_head;
    80002120:	fef4b823          	sd	a5,-16(s1)
        fmem_head->prev = newBlk;
    80002124:	00a7b823          	sd	a0,16(a5)
        newBlk->prev = nullptr;
    80002128:	fe04bc23          	sd	zero,-8(s1)
        fmem_head = newBlk;
    8000212c:	00004797          	auipc	a5,0x4
    80002130:	90a7be23          	sd	a0,-1764(a5) # 80005a48 <_ZN15MemoryAllocator9fmem_headE>
    joinUpper(newBlk);
    80002134:	00000097          	auipc	ra,0x0
    80002138:	f64080e7          	jalr	-156(ra) # 80002098 <_ZN15MemoryAllocator9joinUpperEP11BlockHeader>
    joinUpper(newBlk->prev);
    8000213c:	ff84b503          	ld	a0,-8(s1)
    80002140:	00000097          	auipc	ra,0x0
    80002144:	f58080e7          	jalr	-168(ra) # 80002098 <_ZN15MemoryAllocator9joinUpperEP11BlockHeader>
}
    80002148:	00000513          	li	a0,0
    8000214c:	01813083          	ld	ra,24(sp)
    80002150:	01013403          	ld	s0,16(sp)
    80002154:	00813483          	ld	s1,8(sp)
    80002158:	02010113          	addi	sp,sp,32
    8000215c:	00008067          	ret
        fmem_head = newBlk;
    80002160:	00004797          	auipc	a5,0x4
    80002164:	8ea7b423          	sd	a0,-1816(a5) # 80005a48 <_ZN15MemoryAllocator9fmem_headE>
        newBlk->next = newBlk->prev = nullptr;
    80002168:	fe04bc23          	sd	zero,-8(s1)
    8000216c:	fe04b823          	sd	zero,-16(s1)
        return 0;
    80002170:	fd9ff06f          	j	80002148 <_ZN15MemoryAllocator4freeEPv+0x58>
        BlockHeader* blk = fmem_head, *prev = nullptr;
    80002174:	00000713          	li	a4,0
        for (; blk && blk < newBlk; prev = blk, blk = blk->next);
    80002178:	00078a63          	beqz	a5,8000218c <_ZN15MemoryAllocator4freeEPv+0x9c>
    8000217c:	00a7f863          	bgeu	a5,a0,8000218c <_ZN15MemoryAllocator4freeEPv+0x9c>
    80002180:	00078713          	mv	a4,a5
    80002184:	0087b783          	ld	a5,8(a5)
    80002188:	ff1ff06f          	j	80002178 <_ZN15MemoryAllocator4freeEPv+0x88>
        newBlk->next = blk;
    8000218c:	fef4b823          	sd	a5,-16(s1)
        if (blk) blk->prev = newBlk;
    80002190:	00078463          	beqz	a5,80002198 <_ZN15MemoryAllocator4freeEPv+0xa8>
    80002194:	00a7b823          	sd	a0,16(a5)
        newBlk->prev = prev;
    80002198:	fee4bc23          	sd	a4,-8(s1)
        prev->next = newBlk;
    8000219c:	00a73423          	sd	a0,8(a4)
    800021a0:	f95ff06f          	j	80002134 <_ZN15MemoryAllocator4freeEPv+0x44>
}
    800021a4:	00000513          	li	a0,0
    800021a8:	00008067          	ret

00000000800021ac <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/Riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    800021ac:	fd010113          	addi	sp,sp,-48
    800021b0:	02113423          	sd	ra,40(sp)
    800021b4:	02813023          	sd	s0,32(sp)
    800021b8:	00913c23          	sd	s1,24(sp)
    800021bc:	01213823          	sd	s2,16(sp)
    800021c0:	03010413          	addi	s0,sp,48
    800021c4:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800021c8:	100027f3          	csrr	a5,sstatus
    800021cc:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    800021d0:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800021d4:	00200793          	li	a5,2
    800021d8:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    800021dc:	0004c503          	lbu	a0,0(s1)
    800021e0:	00050a63          	beqz	a0,800021f4 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    800021e4:	00002097          	auipc	ra,0x2
    800021e8:	1b8080e7          	jalr	440(ra) # 8000439c <__putc>
        string++;
    800021ec:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800021f0:	fedff06f          	j	800021dc <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    800021f4:	0009091b          	sext.w	s2,s2
    800021f8:	00297913          	andi	s2,s2,2
    800021fc:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002200:	10092073          	csrs	sstatus,s2
}
    80002204:	02813083          	ld	ra,40(sp)
    80002208:	02013403          	ld	s0,32(sp)
    8000220c:	01813483          	ld	s1,24(sp)
    80002210:	01013903          	ld	s2,16(sp)
    80002214:	03010113          	addi	sp,sp,48
    80002218:	00008067          	ret

000000008000221c <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    8000221c:	fc010113          	addi	sp,sp,-64
    80002220:	02113c23          	sd	ra,56(sp)
    80002224:	02813823          	sd	s0,48(sp)
    80002228:	02913423          	sd	s1,40(sp)
    8000222c:	03213023          	sd	s2,32(sp)
    80002230:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002234:	100027f3          	csrr	a5,sstatus
    80002238:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    8000223c:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002240:	00200793          	li	a5,2
    80002244:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80002248:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    8000224c:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80002250:	00a00613          	li	a2,10
    80002254:	02c5773b          	remuw	a4,a0,a2
    80002258:	02071693          	slli	a3,a4,0x20
    8000225c:	0206d693          	srli	a3,a3,0x20
    80002260:	00003717          	auipc	a4,0x3
    80002264:	ec070713          	addi	a4,a4,-320 # 80005120 <_ZZ12printIntegermE6digits>
    80002268:	00d70733          	add	a4,a4,a3
    8000226c:	00074703          	lbu	a4,0(a4)
    80002270:	fe040693          	addi	a3,s0,-32
    80002274:	009687b3          	add	a5,a3,s1
    80002278:	0014849b          	addiw	s1,s1,1
    8000227c:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80002280:	0005071b          	sext.w	a4,a0
    80002284:	02c5553b          	divuw	a0,a0,a2
    80002288:	00900793          	li	a5,9
    8000228c:	fce7e2e3          	bltu	a5,a4,80002250 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80002290:	fff4849b          	addiw	s1,s1,-1
    80002294:	0004ce63          	bltz	s1,800022b0 <_Z12printIntegerm+0x94>
    80002298:	fe040793          	addi	a5,s0,-32
    8000229c:	009787b3          	add	a5,a5,s1
    800022a0:	ff07c503          	lbu	a0,-16(a5)
    800022a4:	00002097          	auipc	ra,0x2
    800022a8:	0f8080e7          	jalr	248(ra) # 8000439c <__putc>
    800022ac:	fe5ff06f          	j	80002290 <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    800022b0:	0009091b          	sext.w	s2,s2
    800022b4:	00297913          	andi	s2,s2,2
    800022b8:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800022bc:	10092073          	csrs	sstatus,s2
    800022c0:	03813083          	ld	ra,56(sp)
    800022c4:	03013403          	ld	s0,48(sp)
    800022c8:	02813483          	ld	s1,40(sp)
    800022cc:	02013903          	ld	s2,32(sp)
    800022d0:	04010113          	addi	sp,sp,64
    800022d4:	00008067          	ret

00000000800022d8 <start>:
    800022d8:	ff010113          	addi	sp,sp,-16
    800022dc:	00813423          	sd	s0,8(sp)
    800022e0:	01010413          	addi	s0,sp,16
    800022e4:	300027f3          	csrr	a5,mstatus
    800022e8:	ffffe737          	lui	a4,0xffffe
    800022ec:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7b4f>
    800022f0:	00e7f7b3          	and	a5,a5,a4
    800022f4:	00001737          	lui	a4,0x1
    800022f8:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800022fc:	00e7e7b3          	or	a5,a5,a4
    80002300:	30079073          	csrw	mstatus,a5
    80002304:	00000797          	auipc	a5,0x0
    80002308:	16078793          	addi	a5,a5,352 # 80002464 <system_main>
    8000230c:	34179073          	csrw	mepc,a5
    80002310:	00000793          	li	a5,0
    80002314:	18079073          	csrw	satp,a5
    80002318:	000107b7          	lui	a5,0x10
    8000231c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002320:	30279073          	csrw	medeleg,a5
    80002324:	30379073          	csrw	mideleg,a5
    80002328:	104027f3          	csrr	a5,sie
    8000232c:	2227e793          	ori	a5,a5,546
    80002330:	10479073          	csrw	sie,a5
    80002334:	fff00793          	li	a5,-1
    80002338:	00a7d793          	srli	a5,a5,0xa
    8000233c:	3b079073          	csrw	pmpaddr0,a5
    80002340:	00f00793          	li	a5,15
    80002344:	3a079073          	csrw	pmpcfg0,a5
    80002348:	f14027f3          	csrr	a5,mhartid
    8000234c:	0200c737          	lui	a4,0x200c
    80002350:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002354:	0007869b          	sext.w	a3,a5
    80002358:	00269713          	slli	a4,a3,0x2
    8000235c:	000f4637          	lui	a2,0xf4
    80002360:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002364:	00d70733          	add	a4,a4,a3
    80002368:	0037979b          	slliw	a5,a5,0x3
    8000236c:	020046b7          	lui	a3,0x2004
    80002370:	00d787b3          	add	a5,a5,a3
    80002374:	00c585b3          	add	a1,a1,a2
    80002378:	00371693          	slli	a3,a4,0x3
    8000237c:	00003717          	auipc	a4,0x3
    80002380:	6d470713          	addi	a4,a4,1748 # 80005a50 <timer_scratch>
    80002384:	00b7b023          	sd	a1,0(a5)
    80002388:	00d70733          	add	a4,a4,a3
    8000238c:	00f73c23          	sd	a5,24(a4)
    80002390:	02c73023          	sd	a2,32(a4)
    80002394:	34071073          	csrw	mscratch,a4
    80002398:	00000797          	auipc	a5,0x0
    8000239c:	6e878793          	addi	a5,a5,1768 # 80002a80 <timervec>
    800023a0:	30579073          	csrw	mtvec,a5
    800023a4:	300027f3          	csrr	a5,mstatus
    800023a8:	0087e793          	ori	a5,a5,8
    800023ac:	30079073          	csrw	mstatus,a5
    800023b0:	304027f3          	csrr	a5,mie
    800023b4:	0807e793          	ori	a5,a5,128
    800023b8:	30479073          	csrw	mie,a5
    800023bc:	f14027f3          	csrr	a5,mhartid
    800023c0:	0007879b          	sext.w	a5,a5
    800023c4:	00078213          	mv	tp,a5
    800023c8:	30200073          	mret
    800023cc:	00813403          	ld	s0,8(sp)
    800023d0:	01010113          	addi	sp,sp,16
    800023d4:	00008067          	ret

00000000800023d8 <timerinit>:
    800023d8:	ff010113          	addi	sp,sp,-16
    800023dc:	00813423          	sd	s0,8(sp)
    800023e0:	01010413          	addi	s0,sp,16
    800023e4:	f14027f3          	csrr	a5,mhartid
    800023e8:	0200c737          	lui	a4,0x200c
    800023ec:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800023f0:	0007869b          	sext.w	a3,a5
    800023f4:	00269713          	slli	a4,a3,0x2
    800023f8:	000f4637          	lui	a2,0xf4
    800023fc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002400:	00d70733          	add	a4,a4,a3
    80002404:	0037979b          	slliw	a5,a5,0x3
    80002408:	020046b7          	lui	a3,0x2004
    8000240c:	00d787b3          	add	a5,a5,a3
    80002410:	00c585b3          	add	a1,a1,a2
    80002414:	00371693          	slli	a3,a4,0x3
    80002418:	00003717          	auipc	a4,0x3
    8000241c:	63870713          	addi	a4,a4,1592 # 80005a50 <timer_scratch>
    80002420:	00b7b023          	sd	a1,0(a5)
    80002424:	00d70733          	add	a4,a4,a3
    80002428:	00f73c23          	sd	a5,24(a4)
    8000242c:	02c73023          	sd	a2,32(a4)
    80002430:	34071073          	csrw	mscratch,a4
    80002434:	00000797          	auipc	a5,0x0
    80002438:	64c78793          	addi	a5,a5,1612 # 80002a80 <timervec>
    8000243c:	30579073          	csrw	mtvec,a5
    80002440:	300027f3          	csrr	a5,mstatus
    80002444:	0087e793          	ori	a5,a5,8
    80002448:	30079073          	csrw	mstatus,a5
    8000244c:	304027f3          	csrr	a5,mie
    80002450:	0807e793          	ori	a5,a5,128
    80002454:	30479073          	csrw	mie,a5
    80002458:	00813403          	ld	s0,8(sp)
    8000245c:	01010113          	addi	sp,sp,16
    80002460:	00008067          	ret

0000000080002464 <system_main>:
    80002464:	fe010113          	addi	sp,sp,-32
    80002468:	00813823          	sd	s0,16(sp)
    8000246c:	00913423          	sd	s1,8(sp)
    80002470:	00113c23          	sd	ra,24(sp)
    80002474:	02010413          	addi	s0,sp,32
    80002478:	00000097          	auipc	ra,0x0
    8000247c:	0c4080e7          	jalr	196(ra) # 8000253c <cpuid>
    80002480:	00003497          	auipc	s1,0x3
    80002484:	57048493          	addi	s1,s1,1392 # 800059f0 <started>
    80002488:	02050263          	beqz	a0,800024ac <system_main+0x48>
    8000248c:	0004a783          	lw	a5,0(s1)
    80002490:	0007879b          	sext.w	a5,a5
    80002494:	fe078ce3          	beqz	a5,8000248c <system_main+0x28>
    80002498:	0ff0000f          	fence
    8000249c:	00003517          	auipc	a0,0x3
    800024a0:	cc450513          	addi	a0,a0,-828 # 80005160 <_ZZ12printIntegermE6digits+0x40>
    800024a4:	00001097          	auipc	ra,0x1
    800024a8:	a78080e7          	jalr	-1416(ra) # 80002f1c <panic>
    800024ac:	00001097          	auipc	ra,0x1
    800024b0:	9cc080e7          	jalr	-1588(ra) # 80002e78 <consoleinit>
    800024b4:	00001097          	auipc	ra,0x1
    800024b8:	158080e7          	jalr	344(ra) # 8000360c <printfinit>
    800024bc:	00003517          	auipc	a0,0x3
    800024c0:	d8450513          	addi	a0,a0,-636 # 80005240 <_ZZ12printIntegermE6digits+0x120>
    800024c4:	00001097          	auipc	ra,0x1
    800024c8:	ab4080e7          	jalr	-1356(ra) # 80002f78 <__printf>
    800024cc:	00003517          	auipc	a0,0x3
    800024d0:	c6450513          	addi	a0,a0,-924 # 80005130 <_ZZ12printIntegermE6digits+0x10>
    800024d4:	00001097          	auipc	ra,0x1
    800024d8:	aa4080e7          	jalr	-1372(ra) # 80002f78 <__printf>
    800024dc:	00003517          	auipc	a0,0x3
    800024e0:	d6450513          	addi	a0,a0,-668 # 80005240 <_ZZ12printIntegermE6digits+0x120>
    800024e4:	00001097          	auipc	ra,0x1
    800024e8:	a94080e7          	jalr	-1388(ra) # 80002f78 <__printf>
    800024ec:	00001097          	auipc	ra,0x1
    800024f0:	4ac080e7          	jalr	1196(ra) # 80003998 <kinit>
    800024f4:	00000097          	auipc	ra,0x0
    800024f8:	148080e7          	jalr	328(ra) # 8000263c <trapinit>
    800024fc:	00000097          	auipc	ra,0x0
    80002500:	16c080e7          	jalr	364(ra) # 80002668 <trapinithart>
    80002504:	00000097          	auipc	ra,0x0
    80002508:	5bc080e7          	jalr	1468(ra) # 80002ac0 <plicinit>
    8000250c:	00000097          	auipc	ra,0x0
    80002510:	5dc080e7          	jalr	1500(ra) # 80002ae8 <plicinithart>
    80002514:	00000097          	auipc	ra,0x0
    80002518:	078080e7          	jalr	120(ra) # 8000258c <userinit>
    8000251c:	0ff0000f          	fence
    80002520:	00100793          	li	a5,1
    80002524:	00003517          	auipc	a0,0x3
    80002528:	c2450513          	addi	a0,a0,-988 # 80005148 <_ZZ12printIntegermE6digits+0x28>
    8000252c:	00f4a023          	sw	a5,0(s1)
    80002530:	00001097          	auipc	ra,0x1
    80002534:	a48080e7          	jalr	-1464(ra) # 80002f78 <__printf>
    80002538:	0000006f          	j	80002538 <system_main+0xd4>

000000008000253c <cpuid>:
    8000253c:	ff010113          	addi	sp,sp,-16
    80002540:	00813423          	sd	s0,8(sp)
    80002544:	01010413          	addi	s0,sp,16
    80002548:	00020513          	mv	a0,tp
    8000254c:	00813403          	ld	s0,8(sp)
    80002550:	0005051b          	sext.w	a0,a0
    80002554:	01010113          	addi	sp,sp,16
    80002558:	00008067          	ret

000000008000255c <mycpu>:
    8000255c:	ff010113          	addi	sp,sp,-16
    80002560:	00813423          	sd	s0,8(sp)
    80002564:	01010413          	addi	s0,sp,16
    80002568:	00020793          	mv	a5,tp
    8000256c:	00813403          	ld	s0,8(sp)
    80002570:	0007879b          	sext.w	a5,a5
    80002574:	00779793          	slli	a5,a5,0x7
    80002578:	00004517          	auipc	a0,0x4
    8000257c:	50850513          	addi	a0,a0,1288 # 80006a80 <cpus>
    80002580:	00f50533          	add	a0,a0,a5
    80002584:	01010113          	addi	sp,sp,16
    80002588:	00008067          	ret

000000008000258c <userinit>:
    8000258c:	ff010113          	addi	sp,sp,-16
    80002590:	00813423          	sd	s0,8(sp)
    80002594:	01010413          	addi	s0,sp,16
    80002598:	00813403          	ld	s0,8(sp)
    8000259c:	01010113          	addi	sp,sp,16
    800025a0:	fffff317          	auipc	t1,0xfffff
    800025a4:	49030067          	jr	1168(t1) # 80001a30 <main>

00000000800025a8 <either_copyout>:
    800025a8:	ff010113          	addi	sp,sp,-16
    800025ac:	00813023          	sd	s0,0(sp)
    800025b0:	00113423          	sd	ra,8(sp)
    800025b4:	01010413          	addi	s0,sp,16
    800025b8:	02051663          	bnez	a0,800025e4 <either_copyout+0x3c>
    800025bc:	00058513          	mv	a0,a1
    800025c0:	00060593          	mv	a1,a2
    800025c4:	0006861b          	sext.w	a2,a3
    800025c8:	00002097          	auipc	ra,0x2
    800025cc:	c5c080e7          	jalr	-932(ra) # 80004224 <__memmove>
    800025d0:	00813083          	ld	ra,8(sp)
    800025d4:	00013403          	ld	s0,0(sp)
    800025d8:	00000513          	li	a0,0
    800025dc:	01010113          	addi	sp,sp,16
    800025e0:	00008067          	ret
    800025e4:	00003517          	auipc	a0,0x3
    800025e8:	ba450513          	addi	a0,a0,-1116 # 80005188 <_ZZ12printIntegermE6digits+0x68>
    800025ec:	00001097          	auipc	ra,0x1
    800025f0:	930080e7          	jalr	-1744(ra) # 80002f1c <panic>

00000000800025f4 <either_copyin>:
    800025f4:	ff010113          	addi	sp,sp,-16
    800025f8:	00813023          	sd	s0,0(sp)
    800025fc:	00113423          	sd	ra,8(sp)
    80002600:	01010413          	addi	s0,sp,16
    80002604:	02059463          	bnez	a1,8000262c <either_copyin+0x38>
    80002608:	00060593          	mv	a1,a2
    8000260c:	0006861b          	sext.w	a2,a3
    80002610:	00002097          	auipc	ra,0x2
    80002614:	c14080e7          	jalr	-1004(ra) # 80004224 <__memmove>
    80002618:	00813083          	ld	ra,8(sp)
    8000261c:	00013403          	ld	s0,0(sp)
    80002620:	00000513          	li	a0,0
    80002624:	01010113          	addi	sp,sp,16
    80002628:	00008067          	ret
    8000262c:	00003517          	auipc	a0,0x3
    80002630:	b8450513          	addi	a0,a0,-1148 # 800051b0 <_ZZ12printIntegermE6digits+0x90>
    80002634:	00001097          	auipc	ra,0x1
    80002638:	8e8080e7          	jalr	-1816(ra) # 80002f1c <panic>

000000008000263c <trapinit>:
    8000263c:	ff010113          	addi	sp,sp,-16
    80002640:	00813423          	sd	s0,8(sp)
    80002644:	01010413          	addi	s0,sp,16
    80002648:	00813403          	ld	s0,8(sp)
    8000264c:	00003597          	auipc	a1,0x3
    80002650:	b8c58593          	addi	a1,a1,-1140 # 800051d8 <_ZZ12printIntegermE6digits+0xb8>
    80002654:	00004517          	auipc	a0,0x4
    80002658:	4ac50513          	addi	a0,a0,1196 # 80006b00 <tickslock>
    8000265c:	01010113          	addi	sp,sp,16
    80002660:	00001317          	auipc	t1,0x1
    80002664:	5c830067          	jr	1480(t1) # 80003c28 <initlock>

0000000080002668 <trapinithart>:
    80002668:	ff010113          	addi	sp,sp,-16
    8000266c:	00813423          	sd	s0,8(sp)
    80002670:	01010413          	addi	s0,sp,16
    80002674:	00000797          	auipc	a5,0x0
    80002678:	2fc78793          	addi	a5,a5,764 # 80002970 <kernelvec>
    8000267c:	10579073          	csrw	stvec,a5
    80002680:	00813403          	ld	s0,8(sp)
    80002684:	01010113          	addi	sp,sp,16
    80002688:	00008067          	ret

000000008000268c <usertrap>:
    8000268c:	ff010113          	addi	sp,sp,-16
    80002690:	00813423          	sd	s0,8(sp)
    80002694:	01010413          	addi	s0,sp,16
    80002698:	00813403          	ld	s0,8(sp)
    8000269c:	01010113          	addi	sp,sp,16
    800026a0:	00008067          	ret

00000000800026a4 <usertrapret>:
    800026a4:	ff010113          	addi	sp,sp,-16
    800026a8:	00813423          	sd	s0,8(sp)
    800026ac:	01010413          	addi	s0,sp,16
    800026b0:	00813403          	ld	s0,8(sp)
    800026b4:	01010113          	addi	sp,sp,16
    800026b8:	00008067          	ret

00000000800026bc <kerneltrap>:
    800026bc:	fe010113          	addi	sp,sp,-32
    800026c0:	00813823          	sd	s0,16(sp)
    800026c4:	00113c23          	sd	ra,24(sp)
    800026c8:	00913423          	sd	s1,8(sp)
    800026cc:	02010413          	addi	s0,sp,32
    800026d0:	142025f3          	csrr	a1,scause
    800026d4:	100027f3          	csrr	a5,sstatus
    800026d8:	0027f793          	andi	a5,a5,2
    800026dc:	10079c63          	bnez	a5,800027f4 <kerneltrap+0x138>
    800026e0:	142027f3          	csrr	a5,scause
    800026e4:	0207ce63          	bltz	a5,80002720 <kerneltrap+0x64>
    800026e8:	00003517          	auipc	a0,0x3
    800026ec:	b3850513          	addi	a0,a0,-1224 # 80005220 <_ZZ12printIntegermE6digits+0x100>
    800026f0:	00001097          	auipc	ra,0x1
    800026f4:	888080e7          	jalr	-1912(ra) # 80002f78 <__printf>
    800026f8:	141025f3          	csrr	a1,sepc
    800026fc:	14302673          	csrr	a2,stval
    80002700:	00003517          	auipc	a0,0x3
    80002704:	b3050513          	addi	a0,a0,-1232 # 80005230 <_ZZ12printIntegermE6digits+0x110>
    80002708:	00001097          	auipc	ra,0x1
    8000270c:	870080e7          	jalr	-1936(ra) # 80002f78 <__printf>
    80002710:	00003517          	auipc	a0,0x3
    80002714:	b3850513          	addi	a0,a0,-1224 # 80005248 <_ZZ12printIntegermE6digits+0x128>
    80002718:	00001097          	auipc	ra,0x1
    8000271c:	804080e7          	jalr	-2044(ra) # 80002f1c <panic>
    80002720:	0ff7f713          	andi	a4,a5,255
    80002724:	00900693          	li	a3,9
    80002728:	04d70063          	beq	a4,a3,80002768 <kerneltrap+0xac>
    8000272c:	fff00713          	li	a4,-1
    80002730:	03f71713          	slli	a4,a4,0x3f
    80002734:	00170713          	addi	a4,a4,1
    80002738:	fae798e3          	bne	a5,a4,800026e8 <kerneltrap+0x2c>
    8000273c:	00000097          	auipc	ra,0x0
    80002740:	e00080e7          	jalr	-512(ra) # 8000253c <cpuid>
    80002744:	06050663          	beqz	a0,800027b0 <kerneltrap+0xf4>
    80002748:	144027f3          	csrr	a5,sip
    8000274c:	ffd7f793          	andi	a5,a5,-3
    80002750:	14479073          	csrw	sip,a5
    80002754:	01813083          	ld	ra,24(sp)
    80002758:	01013403          	ld	s0,16(sp)
    8000275c:	00813483          	ld	s1,8(sp)
    80002760:	02010113          	addi	sp,sp,32
    80002764:	00008067          	ret
    80002768:	00000097          	auipc	ra,0x0
    8000276c:	3cc080e7          	jalr	972(ra) # 80002b34 <plic_claim>
    80002770:	00a00793          	li	a5,10
    80002774:	00050493          	mv	s1,a0
    80002778:	06f50863          	beq	a0,a5,800027e8 <kerneltrap+0x12c>
    8000277c:	fc050ce3          	beqz	a0,80002754 <kerneltrap+0x98>
    80002780:	00050593          	mv	a1,a0
    80002784:	00003517          	auipc	a0,0x3
    80002788:	a7c50513          	addi	a0,a0,-1412 # 80005200 <_ZZ12printIntegermE6digits+0xe0>
    8000278c:	00000097          	auipc	ra,0x0
    80002790:	7ec080e7          	jalr	2028(ra) # 80002f78 <__printf>
    80002794:	01013403          	ld	s0,16(sp)
    80002798:	01813083          	ld	ra,24(sp)
    8000279c:	00048513          	mv	a0,s1
    800027a0:	00813483          	ld	s1,8(sp)
    800027a4:	02010113          	addi	sp,sp,32
    800027a8:	00000317          	auipc	t1,0x0
    800027ac:	3c430067          	jr	964(t1) # 80002b6c <plic_complete>
    800027b0:	00004517          	auipc	a0,0x4
    800027b4:	35050513          	addi	a0,a0,848 # 80006b00 <tickslock>
    800027b8:	00001097          	auipc	ra,0x1
    800027bc:	494080e7          	jalr	1172(ra) # 80003c4c <acquire>
    800027c0:	00003717          	auipc	a4,0x3
    800027c4:	23470713          	addi	a4,a4,564 # 800059f4 <ticks>
    800027c8:	00072783          	lw	a5,0(a4)
    800027cc:	00004517          	auipc	a0,0x4
    800027d0:	33450513          	addi	a0,a0,820 # 80006b00 <tickslock>
    800027d4:	0017879b          	addiw	a5,a5,1
    800027d8:	00f72023          	sw	a5,0(a4)
    800027dc:	00001097          	auipc	ra,0x1
    800027e0:	53c080e7          	jalr	1340(ra) # 80003d18 <release>
    800027e4:	f65ff06f          	j	80002748 <kerneltrap+0x8c>
    800027e8:	00001097          	auipc	ra,0x1
    800027ec:	098080e7          	jalr	152(ra) # 80003880 <uartintr>
    800027f0:	fa5ff06f          	j	80002794 <kerneltrap+0xd8>
    800027f4:	00003517          	auipc	a0,0x3
    800027f8:	9ec50513          	addi	a0,a0,-1556 # 800051e0 <_ZZ12printIntegermE6digits+0xc0>
    800027fc:	00000097          	auipc	ra,0x0
    80002800:	720080e7          	jalr	1824(ra) # 80002f1c <panic>

0000000080002804 <clockintr>:
    80002804:	fe010113          	addi	sp,sp,-32
    80002808:	00813823          	sd	s0,16(sp)
    8000280c:	00913423          	sd	s1,8(sp)
    80002810:	00113c23          	sd	ra,24(sp)
    80002814:	02010413          	addi	s0,sp,32
    80002818:	00004497          	auipc	s1,0x4
    8000281c:	2e848493          	addi	s1,s1,744 # 80006b00 <tickslock>
    80002820:	00048513          	mv	a0,s1
    80002824:	00001097          	auipc	ra,0x1
    80002828:	428080e7          	jalr	1064(ra) # 80003c4c <acquire>
    8000282c:	00003717          	auipc	a4,0x3
    80002830:	1c870713          	addi	a4,a4,456 # 800059f4 <ticks>
    80002834:	00072783          	lw	a5,0(a4)
    80002838:	01013403          	ld	s0,16(sp)
    8000283c:	01813083          	ld	ra,24(sp)
    80002840:	00048513          	mv	a0,s1
    80002844:	0017879b          	addiw	a5,a5,1
    80002848:	00813483          	ld	s1,8(sp)
    8000284c:	00f72023          	sw	a5,0(a4)
    80002850:	02010113          	addi	sp,sp,32
    80002854:	00001317          	auipc	t1,0x1
    80002858:	4c430067          	jr	1220(t1) # 80003d18 <release>

000000008000285c <devintr>:
    8000285c:	142027f3          	csrr	a5,scause
    80002860:	00000513          	li	a0,0
    80002864:	0007c463          	bltz	a5,8000286c <devintr+0x10>
    80002868:	00008067          	ret
    8000286c:	fe010113          	addi	sp,sp,-32
    80002870:	00813823          	sd	s0,16(sp)
    80002874:	00113c23          	sd	ra,24(sp)
    80002878:	00913423          	sd	s1,8(sp)
    8000287c:	02010413          	addi	s0,sp,32
    80002880:	0ff7f713          	andi	a4,a5,255
    80002884:	00900693          	li	a3,9
    80002888:	04d70c63          	beq	a4,a3,800028e0 <devintr+0x84>
    8000288c:	fff00713          	li	a4,-1
    80002890:	03f71713          	slli	a4,a4,0x3f
    80002894:	00170713          	addi	a4,a4,1
    80002898:	00e78c63          	beq	a5,a4,800028b0 <devintr+0x54>
    8000289c:	01813083          	ld	ra,24(sp)
    800028a0:	01013403          	ld	s0,16(sp)
    800028a4:	00813483          	ld	s1,8(sp)
    800028a8:	02010113          	addi	sp,sp,32
    800028ac:	00008067          	ret
    800028b0:	00000097          	auipc	ra,0x0
    800028b4:	c8c080e7          	jalr	-884(ra) # 8000253c <cpuid>
    800028b8:	06050663          	beqz	a0,80002924 <devintr+0xc8>
    800028bc:	144027f3          	csrr	a5,sip
    800028c0:	ffd7f793          	andi	a5,a5,-3
    800028c4:	14479073          	csrw	sip,a5
    800028c8:	01813083          	ld	ra,24(sp)
    800028cc:	01013403          	ld	s0,16(sp)
    800028d0:	00813483          	ld	s1,8(sp)
    800028d4:	00200513          	li	a0,2
    800028d8:	02010113          	addi	sp,sp,32
    800028dc:	00008067          	ret
    800028e0:	00000097          	auipc	ra,0x0
    800028e4:	254080e7          	jalr	596(ra) # 80002b34 <plic_claim>
    800028e8:	00a00793          	li	a5,10
    800028ec:	00050493          	mv	s1,a0
    800028f0:	06f50663          	beq	a0,a5,8000295c <devintr+0x100>
    800028f4:	00100513          	li	a0,1
    800028f8:	fa0482e3          	beqz	s1,8000289c <devintr+0x40>
    800028fc:	00048593          	mv	a1,s1
    80002900:	00003517          	auipc	a0,0x3
    80002904:	90050513          	addi	a0,a0,-1792 # 80005200 <_ZZ12printIntegermE6digits+0xe0>
    80002908:	00000097          	auipc	ra,0x0
    8000290c:	670080e7          	jalr	1648(ra) # 80002f78 <__printf>
    80002910:	00048513          	mv	a0,s1
    80002914:	00000097          	auipc	ra,0x0
    80002918:	258080e7          	jalr	600(ra) # 80002b6c <plic_complete>
    8000291c:	00100513          	li	a0,1
    80002920:	f7dff06f          	j	8000289c <devintr+0x40>
    80002924:	00004517          	auipc	a0,0x4
    80002928:	1dc50513          	addi	a0,a0,476 # 80006b00 <tickslock>
    8000292c:	00001097          	auipc	ra,0x1
    80002930:	320080e7          	jalr	800(ra) # 80003c4c <acquire>
    80002934:	00003717          	auipc	a4,0x3
    80002938:	0c070713          	addi	a4,a4,192 # 800059f4 <ticks>
    8000293c:	00072783          	lw	a5,0(a4)
    80002940:	00004517          	auipc	a0,0x4
    80002944:	1c050513          	addi	a0,a0,448 # 80006b00 <tickslock>
    80002948:	0017879b          	addiw	a5,a5,1
    8000294c:	00f72023          	sw	a5,0(a4)
    80002950:	00001097          	auipc	ra,0x1
    80002954:	3c8080e7          	jalr	968(ra) # 80003d18 <release>
    80002958:	f65ff06f          	j	800028bc <devintr+0x60>
    8000295c:	00001097          	auipc	ra,0x1
    80002960:	f24080e7          	jalr	-220(ra) # 80003880 <uartintr>
    80002964:	fadff06f          	j	80002910 <devintr+0xb4>
	...

0000000080002970 <kernelvec>:
    80002970:	f0010113          	addi	sp,sp,-256
    80002974:	00113023          	sd	ra,0(sp)
    80002978:	00213423          	sd	sp,8(sp)
    8000297c:	00313823          	sd	gp,16(sp)
    80002980:	00413c23          	sd	tp,24(sp)
    80002984:	02513023          	sd	t0,32(sp)
    80002988:	02613423          	sd	t1,40(sp)
    8000298c:	02713823          	sd	t2,48(sp)
    80002990:	02813c23          	sd	s0,56(sp)
    80002994:	04913023          	sd	s1,64(sp)
    80002998:	04a13423          	sd	a0,72(sp)
    8000299c:	04b13823          	sd	a1,80(sp)
    800029a0:	04c13c23          	sd	a2,88(sp)
    800029a4:	06d13023          	sd	a3,96(sp)
    800029a8:	06e13423          	sd	a4,104(sp)
    800029ac:	06f13823          	sd	a5,112(sp)
    800029b0:	07013c23          	sd	a6,120(sp)
    800029b4:	09113023          	sd	a7,128(sp)
    800029b8:	09213423          	sd	s2,136(sp)
    800029bc:	09313823          	sd	s3,144(sp)
    800029c0:	09413c23          	sd	s4,152(sp)
    800029c4:	0b513023          	sd	s5,160(sp)
    800029c8:	0b613423          	sd	s6,168(sp)
    800029cc:	0b713823          	sd	s7,176(sp)
    800029d0:	0b813c23          	sd	s8,184(sp)
    800029d4:	0d913023          	sd	s9,192(sp)
    800029d8:	0da13423          	sd	s10,200(sp)
    800029dc:	0db13823          	sd	s11,208(sp)
    800029e0:	0dc13c23          	sd	t3,216(sp)
    800029e4:	0fd13023          	sd	t4,224(sp)
    800029e8:	0fe13423          	sd	t5,232(sp)
    800029ec:	0ff13823          	sd	t6,240(sp)
    800029f0:	ccdff0ef          	jal	ra,800026bc <kerneltrap>
    800029f4:	00013083          	ld	ra,0(sp)
    800029f8:	00813103          	ld	sp,8(sp)
    800029fc:	01013183          	ld	gp,16(sp)
    80002a00:	02013283          	ld	t0,32(sp)
    80002a04:	02813303          	ld	t1,40(sp)
    80002a08:	03013383          	ld	t2,48(sp)
    80002a0c:	03813403          	ld	s0,56(sp)
    80002a10:	04013483          	ld	s1,64(sp)
    80002a14:	04813503          	ld	a0,72(sp)
    80002a18:	05013583          	ld	a1,80(sp)
    80002a1c:	05813603          	ld	a2,88(sp)
    80002a20:	06013683          	ld	a3,96(sp)
    80002a24:	06813703          	ld	a4,104(sp)
    80002a28:	07013783          	ld	a5,112(sp)
    80002a2c:	07813803          	ld	a6,120(sp)
    80002a30:	08013883          	ld	a7,128(sp)
    80002a34:	08813903          	ld	s2,136(sp)
    80002a38:	09013983          	ld	s3,144(sp)
    80002a3c:	09813a03          	ld	s4,152(sp)
    80002a40:	0a013a83          	ld	s5,160(sp)
    80002a44:	0a813b03          	ld	s6,168(sp)
    80002a48:	0b013b83          	ld	s7,176(sp)
    80002a4c:	0b813c03          	ld	s8,184(sp)
    80002a50:	0c013c83          	ld	s9,192(sp)
    80002a54:	0c813d03          	ld	s10,200(sp)
    80002a58:	0d013d83          	ld	s11,208(sp)
    80002a5c:	0d813e03          	ld	t3,216(sp)
    80002a60:	0e013e83          	ld	t4,224(sp)
    80002a64:	0e813f03          	ld	t5,232(sp)
    80002a68:	0f013f83          	ld	t6,240(sp)
    80002a6c:	10010113          	addi	sp,sp,256
    80002a70:	10200073          	sret
    80002a74:	00000013          	nop
    80002a78:	00000013          	nop
    80002a7c:	00000013          	nop

0000000080002a80 <timervec>:
    80002a80:	34051573          	csrrw	a0,mscratch,a0
    80002a84:	00b53023          	sd	a1,0(a0)
    80002a88:	00c53423          	sd	a2,8(a0)
    80002a8c:	00d53823          	sd	a3,16(a0)
    80002a90:	01853583          	ld	a1,24(a0)
    80002a94:	02053603          	ld	a2,32(a0)
    80002a98:	0005b683          	ld	a3,0(a1)
    80002a9c:	00c686b3          	add	a3,a3,a2
    80002aa0:	00d5b023          	sd	a3,0(a1)
    80002aa4:	00200593          	li	a1,2
    80002aa8:	14459073          	csrw	sip,a1
    80002aac:	01053683          	ld	a3,16(a0)
    80002ab0:	00853603          	ld	a2,8(a0)
    80002ab4:	00053583          	ld	a1,0(a0)
    80002ab8:	34051573          	csrrw	a0,mscratch,a0
    80002abc:	30200073          	mret

0000000080002ac0 <plicinit>:
    80002ac0:	ff010113          	addi	sp,sp,-16
    80002ac4:	00813423          	sd	s0,8(sp)
    80002ac8:	01010413          	addi	s0,sp,16
    80002acc:	00813403          	ld	s0,8(sp)
    80002ad0:	0c0007b7          	lui	a5,0xc000
    80002ad4:	00100713          	li	a4,1
    80002ad8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80002adc:	00e7a223          	sw	a4,4(a5)
    80002ae0:	01010113          	addi	sp,sp,16
    80002ae4:	00008067          	ret

0000000080002ae8 <plicinithart>:
    80002ae8:	ff010113          	addi	sp,sp,-16
    80002aec:	00813023          	sd	s0,0(sp)
    80002af0:	00113423          	sd	ra,8(sp)
    80002af4:	01010413          	addi	s0,sp,16
    80002af8:	00000097          	auipc	ra,0x0
    80002afc:	a44080e7          	jalr	-1468(ra) # 8000253c <cpuid>
    80002b00:	0085171b          	slliw	a4,a0,0x8
    80002b04:	0c0027b7          	lui	a5,0xc002
    80002b08:	00e787b3          	add	a5,a5,a4
    80002b0c:	40200713          	li	a4,1026
    80002b10:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002b14:	00813083          	ld	ra,8(sp)
    80002b18:	00013403          	ld	s0,0(sp)
    80002b1c:	00d5151b          	slliw	a0,a0,0xd
    80002b20:	0c2017b7          	lui	a5,0xc201
    80002b24:	00a78533          	add	a0,a5,a0
    80002b28:	00052023          	sw	zero,0(a0)
    80002b2c:	01010113          	addi	sp,sp,16
    80002b30:	00008067          	ret

0000000080002b34 <plic_claim>:
    80002b34:	ff010113          	addi	sp,sp,-16
    80002b38:	00813023          	sd	s0,0(sp)
    80002b3c:	00113423          	sd	ra,8(sp)
    80002b40:	01010413          	addi	s0,sp,16
    80002b44:	00000097          	auipc	ra,0x0
    80002b48:	9f8080e7          	jalr	-1544(ra) # 8000253c <cpuid>
    80002b4c:	00813083          	ld	ra,8(sp)
    80002b50:	00013403          	ld	s0,0(sp)
    80002b54:	00d5151b          	slliw	a0,a0,0xd
    80002b58:	0c2017b7          	lui	a5,0xc201
    80002b5c:	00a78533          	add	a0,a5,a0
    80002b60:	00452503          	lw	a0,4(a0)
    80002b64:	01010113          	addi	sp,sp,16
    80002b68:	00008067          	ret

0000000080002b6c <plic_complete>:
    80002b6c:	fe010113          	addi	sp,sp,-32
    80002b70:	00813823          	sd	s0,16(sp)
    80002b74:	00913423          	sd	s1,8(sp)
    80002b78:	00113c23          	sd	ra,24(sp)
    80002b7c:	02010413          	addi	s0,sp,32
    80002b80:	00050493          	mv	s1,a0
    80002b84:	00000097          	auipc	ra,0x0
    80002b88:	9b8080e7          	jalr	-1608(ra) # 8000253c <cpuid>
    80002b8c:	01813083          	ld	ra,24(sp)
    80002b90:	01013403          	ld	s0,16(sp)
    80002b94:	00d5179b          	slliw	a5,a0,0xd
    80002b98:	0c201737          	lui	a4,0xc201
    80002b9c:	00f707b3          	add	a5,a4,a5
    80002ba0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002ba4:	00813483          	ld	s1,8(sp)
    80002ba8:	02010113          	addi	sp,sp,32
    80002bac:	00008067          	ret

0000000080002bb0 <consolewrite>:
    80002bb0:	fb010113          	addi	sp,sp,-80
    80002bb4:	04813023          	sd	s0,64(sp)
    80002bb8:	04113423          	sd	ra,72(sp)
    80002bbc:	02913c23          	sd	s1,56(sp)
    80002bc0:	03213823          	sd	s2,48(sp)
    80002bc4:	03313423          	sd	s3,40(sp)
    80002bc8:	03413023          	sd	s4,32(sp)
    80002bcc:	01513c23          	sd	s5,24(sp)
    80002bd0:	05010413          	addi	s0,sp,80
    80002bd4:	06c05c63          	blez	a2,80002c4c <consolewrite+0x9c>
    80002bd8:	00060993          	mv	s3,a2
    80002bdc:	00050a13          	mv	s4,a0
    80002be0:	00058493          	mv	s1,a1
    80002be4:	00000913          	li	s2,0
    80002be8:	fff00a93          	li	s5,-1
    80002bec:	01c0006f          	j	80002c08 <consolewrite+0x58>
    80002bf0:	fbf44503          	lbu	a0,-65(s0)
    80002bf4:	0019091b          	addiw	s2,s2,1
    80002bf8:	00148493          	addi	s1,s1,1
    80002bfc:	00001097          	auipc	ra,0x1
    80002c00:	a9c080e7          	jalr	-1380(ra) # 80003698 <uartputc>
    80002c04:	03298063          	beq	s3,s2,80002c24 <consolewrite+0x74>
    80002c08:	00048613          	mv	a2,s1
    80002c0c:	00100693          	li	a3,1
    80002c10:	000a0593          	mv	a1,s4
    80002c14:	fbf40513          	addi	a0,s0,-65
    80002c18:	00000097          	auipc	ra,0x0
    80002c1c:	9dc080e7          	jalr	-1572(ra) # 800025f4 <either_copyin>
    80002c20:	fd5518e3          	bne	a0,s5,80002bf0 <consolewrite+0x40>
    80002c24:	04813083          	ld	ra,72(sp)
    80002c28:	04013403          	ld	s0,64(sp)
    80002c2c:	03813483          	ld	s1,56(sp)
    80002c30:	02813983          	ld	s3,40(sp)
    80002c34:	02013a03          	ld	s4,32(sp)
    80002c38:	01813a83          	ld	s5,24(sp)
    80002c3c:	00090513          	mv	a0,s2
    80002c40:	03013903          	ld	s2,48(sp)
    80002c44:	05010113          	addi	sp,sp,80
    80002c48:	00008067          	ret
    80002c4c:	00000913          	li	s2,0
    80002c50:	fd5ff06f          	j	80002c24 <consolewrite+0x74>

0000000080002c54 <consoleread>:
    80002c54:	f9010113          	addi	sp,sp,-112
    80002c58:	06813023          	sd	s0,96(sp)
    80002c5c:	04913c23          	sd	s1,88(sp)
    80002c60:	05213823          	sd	s2,80(sp)
    80002c64:	05313423          	sd	s3,72(sp)
    80002c68:	05413023          	sd	s4,64(sp)
    80002c6c:	03513c23          	sd	s5,56(sp)
    80002c70:	03613823          	sd	s6,48(sp)
    80002c74:	03713423          	sd	s7,40(sp)
    80002c78:	03813023          	sd	s8,32(sp)
    80002c7c:	06113423          	sd	ra,104(sp)
    80002c80:	01913c23          	sd	s9,24(sp)
    80002c84:	07010413          	addi	s0,sp,112
    80002c88:	00060b93          	mv	s7,a2
    80002c8c:	00050913          	mv	s2,a0
    80002c90:	00058c13          	mv	s8,a1
    80002c94:	00060b1b          	sext.w	s6,a2
    80002c98:	00004497          	auipc	s1,0x4
    80002c9c:	e9048493          	addi	s1,s1,-368 # 80006b28 <cons>
    80002ca0:	00400993          	li	s3,4
    80002ca4:	fff00a13          	li	s4,-1
    80002ca8:	00a00a93          	li	s5,10
    80002cac:	05705e63          	blez	s7,80002d08 <consoleread+0xb4>
    80002cb0:	09c4a703          	lw	a4,156(s1)
    80002cb4:	0984a783          	lw	a5,152(s1)
    80002cb8:	0007071b          	sext.w	a4,a4
    80002cbc:	08e78463          	beq	a5,a4,80002d44 <consoleread+0xf0>
    80002cc0:	07f7f713          	andi	a4,a5,127
    80002cc4:	00e48733          	add	a4,s1,a4
    80002cc8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80002ccc:	0017869b          	addiw	a3,a5,1
    80002cd0:	08d4ac23          	sw	a3,152(s1)
    80002cd4:	00070c9b          	sext.w	s9,a4
    80002cd8:	0b370663          	beq	a4,s3,80002d84 <consoleread+0x130>
    80002cdc:	00100693          	li	a3,1
    80002ce0:	f9f40613          	addi	a2,s0,-97
    80002ce4:	000c0593          	mv	a1,s8
    80002ce8:	00090513          	mv	a0,s2
    80002cec:	f8e40fa3          	sb	a4,-97(s0)
    80002cf0:	00000097          	auipc	ra,0x0
    80002cf4:	8b8080e7          	jalr	-1864(ra) # 800025a8 <either_copyout>
    80002cf8:	01450863          	beq	a0,s4,80002d08 <consoleread+0xb4>
    80002cfc:	001c0c13          	addi	s8,s8,1
    80002d00:	fffb8b9b          	addiw	s7,s7,-1
    80002d04:	fb5c94e3          	bne	s9,s5,80002cac <consoleread+0x58>
    80002d08:	000b851b          	sext.w	a0,s7
    80002d0c:	06813083          	ld	ra,104(sp)
    80002d10:	06013403          	ld	s0,96(sp)
    80002d14:	05813483          	ld	s1,88(sp)
    80002d18:	05013903          	ld	s2,80(sp)
    80002d1c:	04813983          	ld	s3,72(sp)
    80002d20:	04013a03          	ld	s4,64(sp)
    80002d24:	03813a83          	ld	s5,56(sp)
    80002d28:	02813b83          	ld	s7,40(sp)
    80002d2c:	02013c03          	ld	s8,32(sp)
    80002d30:	01813c83          	ld	s9,24(sp)
    80002d34:	40ab053b          	subw	a0,s6,a0
    80002d38:	03013b03          	ld	s6,48(sp)
    80002d3c:	07010113          	addi	sp,sp,112
    80002d40:	00008067          	ret
    80002d44:	00001097          	auipc	ra,0x1
    80002d48:	1d8080e7          	jalr	472(ra) # 80003f1c <push_on>
    80002d4c:	0984a703          	lw	a4,152(s1)
    80002d50:	09c4a783          	lw	a5,156(s1)
    80002d54:	0007879b          	sext.w	a5,a5
    80002d58:	fef70ce3          	beq	a4,a5,80002d50 <consoleread+0xfc>
    80002d5c:	00001097          	auipc	ra,0x1
    80002d60:	234080e7          	jalr	564(ra) # 80003f90 <pop_on>
    80002d64:	0984a783          	lw	a5,152(s1)
    80002d68:	07f7f713          	andi	a4,a5,127
    80002d6c:	00e48733          	add	a4,s1,a4
    80002d70:	01874703          	lbu	a4,24(a4)
    80002d74:	0017869b          	addiw	a3,a5,1
    80002d78:	08d4ac23          	sw	a3,152(s1)
    80002d7c:	00070c9b          	sext.w	s9,a4
    80002d80:	f5371ee3          	bne	a4,s3,80002cdc <consoleread+0x88>
    80002d84:	000b851b          	sext.w	a0,s7
    80002d88:	f96bf2e3          	bgeu	s7,s6,80002d0c <consoleread+0xb8>
    80002d8c:	08f4ac23          	sw	a5,152(s1)
    80002d90:	f7dff06f          	j	80002d0c <consoleread+0xb8>

0000000080002d94 <consputc>:
    80002d94:	10000793          	li	a5,256
    80002d98:	00f50663          	beq	a0,a5,80002da4 <consputc+0x10>
    80002d9c:	00001317          	auipc	t1,0x1
    80002da0:	9f430067          	jr	-1548(t1) # 80003790 <uartputc_sync>
    80002da4:	ff010113          	addi	sp,sp,-16
    80002da8:	00113423          	sd	ra,8(sp)
    80002dac:	00813023          	sd	s0,0(sp)
    80002db0:	01010413          	addi	s0,sp,16
    80002db4:	00800513          	li	a0,8
    80002db8:	00001097          	auipc	ra,0x1
    80002dbc:	9d8080e7          	jalr	-1576(ra) # 80003790 <uartputc_sync>
    80002dc0:	02000513          	li	a0,32
    80002dc4:	00001097          	auipc	ra,0x1
    80002dc8:	9cc080e7          	jalr	-1588(ra) # 80003790 <uartputc_sync>
    80002dcc:	00013403          	ld	s0,0(sp)
    80002dd0:	00813083          	ld	ra,8(sp)
    80002dd4:	00800513          	li	a0,8
    80002dd8:	01010113          	addi	sp,sp,16
    80002ddc:	00001317          	auipc	t1,0x1
    80002de0:	9b430067          	jr	-1612(t1) # 80003790 <uartputc_sync>

0000000080002de4 <consoleintr>:
    80002de4:	fe010113          	addi	sp,sp,-32
    80002de8:	00813823          	sd	s0,16(sp)
    80002dec:	00913423          	sd	s1,8(sp)
    80002df0:	01213023          	sd	s2,0(sp)
    80002df4:	00113c23          	sd	ra,24(sp)
    80002df8:	02010413          	addi	s0,sp,32
    80002dfc:	00004917          	auipc	s2,0x4
    80002e00:	d2c90913          	addi	s2,s2,-724 # 80006b28 <cons>
    80002e04:	00050493          	mv	s1,a0
    80002e08:	00090513          	mv	a0,s2
    80002e0c:	00001097          	auipc	ra,0x1
    80002e10:	e40080e7          	jalr	-448(ra) # 80003c4c <acquire>
    80002e14:	02048c63          	beqz	s1,80002e4c <consoleintr+0x68>
    80002e18:	0a092783          	lw	a5,160(s2)
    80002e1c:	09892703          	lw	a4,152(s2)
    80002e20:	07f00693          	li	a3,127
    80002e24:	40e7873b          	subw	a4,a5,a4
    80002e28:	02e6e263          	bltu	a3,a4,80002e4c <consoleintr+0x68>
    80002e2c:	00d00713          	li	a4,13
    80002e30:	04e48063          	beq	s1,a4,80002e70 <consoleintr+0x8c>
    80002e34:	07f7f713          	andi	a4,a5,127
    80002e38:	00e90733          	add	a4,s2,a4
    80002e3c:	0017879b          	addiw	a5,a5,1
    80002e40:	0af92023          	sw	a5,160(s2)
    80002e44:	00970c23          	sb	s1,24(a4)
    80002e48:	08f92e23          	sw	a5,156(s2)
    80002e4c:	01013403          	ld	s0,16(sp)
    80002e50:	01813083          	ld	ra,24(sp)
    80002e54:	00813483          	ld	s1,8(sp)
    80002e58:	00013903          	ld	s2,0(sp)
    80002e5c:	00004517          	auipc	a0,0x4
    80002e60:	ccc50513          	addi	a0,a0,-820 # 80006b28 <cons>
    80002e64:	02010113          	addi	sp,sp,32
    80002e68:	00001317          	auipc	t1,0x1
    80002e6c:	eb030067          	jr	-336(t1) # 80003d18 <release>
    80002e70:	00a00493          	li	s1,10
    80002e74:	fc1ff06f          	j	80002e34 <consoleintr+0x50>

0000000080002e78 <consoleinit>:
    80002e78:	fe010113          	addi	sp,sp,-32
    80002e7c:	00113c23          	sd	ra,24(sp)
    80002e80:	00813823          	sd	s0,16(sp)
    80002e84:	00913423          	sd	s1,8(sp)
    80002e88:	02010413          	addi	s0,sp,32
    80002e8c:	00004497          	auipc	s1,0x4
    80002e90:	c9c48493          	addi	s1,s1,-868 # 80006b28 <cons>
    80002e94:	00048513          	mv	a0,s1
    80002e98:	00002597          	auipc	a1,0x2
    80002e9c:	3c058593          	addi	a1,a1,960 # 80005258 <_ZZ12printIntegermE6digits+0x138>
    80002ea0:	00001097          	auipc	ra,0x1
    80002ea4:	d88080e7          	jalr	-632(ra) # 80003c28 <initlock>
    80002ea8:	00000097          	auipc	ra,0x0
    80002eac:	7ac080e7          	jalr	1964(ra) # 80003654 <uartinit>
    80002eb0:	01813083          	ld	ra,24(sp)
    80002eb4:	01013403          	ld	s0,16(sp)
    80002eb8:	00000797          	auipc	a5,0x0
    80002ebc:	d9c78793          	addi	a5,a5,-612 # 80002c54 <consoleread>
    80002ec0:	0af4bc23          	sd	a5,184(s1)
    80002ec4:	00000797          	auipc	a5,0x0
    80002ec8:	cec78793          	addi	a5,a5,-788 # 80002bb0 <consolewrite>
    80002ecc:	0cf4b023          	sd	a5,192(s1)
    80002ed0:	00813483          	ld	s1,8(sp)
    80002ed4:	02010113          	addi	sp,sp,32
    80002ed8:	00008067          	ret

0000000080002edc <console_read>:
    80002edc:	ff010113          	addi	sp,sp,-16
    80002ee0:	00813423          	sd	s0,8(sp)
    80002ee4:	01010413          	addi	s0,sp,16
    80002ee8:	00813403          	ld	s0,8(sp)
    80002eec:	00004317          	auipc	t1,0x4
    80002ef0:	cf433303          	ld	t1,-780(t1) # 80006be0 <devsw+0x10>
    80002ef4:	01010113          	addi	sp,sp,16
    80002ef8:	00030067          	jr	t1

0000000080002efc <console_write>:
    80002efc:	ff010113          	addi	sp,sp,-16
    80002f00:	00813423          	sd	s0,8(sp)
    80002f04:	01010413          	addi	s0,sp,16
    80002f08:	00813403          	ld	s0,8(sp)
    80002f0c:	00004317          	auipc	t1,0x4
    80002f10:	cdc33303          	ld	t1,-804(t1) # 80006be8 <devsw+0x18>
    80002f14:	01010113          	addi	sp,sp,16
    80002f18:	00030067          	jr	t1

0000000080002f1c <panic>:
    80002f1c:	fe010113          	addi	sp,sp,-32
    80002f20:	00113c23          	sd	ra,24(sp)
    80002f24:	00813823          	sd	s0,16(sp)
    80002f28:	00913423          	sd	s1,8(sp)
    80002f2c:	02010413          	addi	s0,sp,32
    80002f30:	00050493          	mv	s1,a0
    80002f34:	00002517          	auipc	a0,0x2
    80002f38:	32c50513          	addi	a0,a0,812 # 80005260 <_ZZ12printIntegermE6digits+0x140>
    80002f3c:	00004797          	auipc	a5,0x4
    80002f40:	d407a623          	sw	zero,-692(a5) # 80006c88 <pr+0x18>
    80002f44:	00000097          	auipc	ra,0x0
    80002f48:	034080e7          	jalr	52(ra) # 80002f78 <__printf>
    80002f4c:	00048513          	mv	a0,s1
    80002f50:	00000097          	auipc	ra,0x0
    80002f54:	028080e7          	jalr	40(ra) # 80002f78 <__printf>
    80002f58:	00002517          	auipc	a0,0x2
    80002f5c:	2e850513          	addi	a0,a0,744 # 80005240 <_ZZ12printIntegermE6digits+0x120>
    80002f60:	00000097          	auipc	ra,0x0
    80002f64:	018080e7          	jalr	24(ra) # 80002f78 <__printf>
    80002f68:	00100793          	li	a5,1
    80002f6c:	00003717          	auipc	a4,0x3
    80002f70:	a8f72623          	sw	a5,-1396(a4) # 800059f8 <panicked>
    80002f74:	0000006f          	j	80002f74 <panic+0x58>

0000000080002f78 <__printf>:
    80002f78:	f3010113          	addi	sp,sp,-208
    80002f7c:	08813023          	sd	s0,128(sp)
    80002f80:	07313423          	sd	s3,104(sp)
    80002f84:	09010413          	addi	s0,sp,144
    80002f88:	05813023          	sd	s8,64(sp)
    80002f8c:	08113423          	sd	ra,136(sp)
    80002f90:	06913c23          	sd	s1,120(sp)
    80002f94:	07213823          	sd	s2,112(sp)
    80002f98:	07413023          	sd	s4,96(sp)
    80002f9c:	05513c23          	sd	s5,88(sp)
    80002fa0:	05613823          	sd	s6,80(sp)
    80002fa4:	05713423          	sd	s7,72(sp)
    80002fa8:	03913c23          	sd	s9,56(sp)
    80002fac:	03a13823          	sd	s10,48(sp)
    80002fb0:	03b13423          	sd	s11,40(sp)
    80002fb4:	00004317          	auipc	t1,0x4
    80002fb8:	cbc30313          	addi	t1,t1,-836 # 80006c70 <pr>
    80002fbc:	01832c03          	lw	s8,24(t1)
    80002fc0:	00b43423          	sd	a1,8(s0)
    80002fc4:	00c43823          	sd	a2,16(s0)
    80002fc8:	00d43c23          	sd	a3,24(s0)
    80002fcc:	02e43023          	sd	a4,32(s0)
    80002fd0:	02f43423          	sd	a5,40(s0)
    80002fd4:	03043823          	sd	a6,48(s0)
    80002fd8:	03143c23          	sd	a7,56(s0)
    80002fdc:	00050993          	mv	s3,a0
    80002fe0:	4a0c1663          	bnez	s8,8000348c <__printf+0x514>
    80002fe4:	60098c63          	beqz	s3,800035fc <__printf+0x684>
    80002fe8:	0009c503          	lbu	a0,0(s3)
    80002fec:	00840793          	addi	a5,s0,8
    80002ff0:	f6f43c23          	sd	a5,-136(s0)
    80002ff4:	00000493          	li	s1,0
    80002ff8:	22050063          	beqz	a0,80003218 <__printf+0x2a0>
    80002ffc:	00002a37          	lui	s4,0x2
    80003000:	00018ab7          	lui	s5,0x18
    80003004:	000f4b37          	lui	s6,0xf4
    80003008:	00989bb7          	lui	s7,0x989
    8000300c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003010:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003014:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003018:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000301c:	00148c9b          	addiw	s9,s1,1
    80003020:	02500793          	li	a5,37
    80003024:	01998933          	add	s2,s3,s9
    80003028:	38f51263          	bne	a0,a5,800033ac <__printf+0x434>
    8000302c:	00094783          	lbu	a5,0(s2)
    80003030:	00078c9b          	sext.w	s9,a5
    80003034:	1e078263          	beqz	a5,80003218 <__printf+0x2a0>
    80003038:	0024849b          	addiw	s1,s1,2
    8000303c:	07000713          	li	a4,112
    80003040:	00998933          	add	s2,s3,s1
    80003044:	38e78a63          	beq	a5,a4,800033d8 <__printf+0x460>
    80003048:	20f76863          	bltu	a4,a5,80003258 <__printf+0x2e0>
    8000304c:	42a78863          	beq	a5,a0,8000347c <__printf+0x504>
    80003050:	06400713          	li	a4,100
    80003054:	40e79663          	bne	a5,a4,80003460 <__printf+0x4e8>
    80003058:	f7843783          	ld	a5,-136(s0)
    8000305c:	0007a603          	lw	a2,0(a5)
    80003060:	00878793          	addi	a5,a5,8
    80003064:	f6f43c23          	sd	a5,-136(s0)
    80003068:	42064a63          	bltz	a2,8000349c <__printf+0x524>
    8000306c:	00a00713          	li	a4,10
    80003070:	02e677bb          	remuw	a5,a2,a4
    80003074:	00002d97          	auipc	s11,0x2
    80003078:	214d8d93          	addi	s11,s11,532 # 80005288 <digits>
    8000307c:	00900593          	li	a1,9
    80003080:	0006051b          	sext.w	a0,a2
    80003084:	00000c93          	li	s9,0
    80003088:	02079793          	slli	a5,a5,0x20
    8000308c:	0207d793          	srli	a5,a5,0x20
    80003090:	00fd87b3          	add	a5,s11,a5
    80003094:	0007c783          	lbu	a5,0(a5)
    80003098:	02e656bb          	divuw	a3,a2,a4
    8000309c:	f8f40023          	sb	a5,-128(s0)
    800030a0:	14c5d863          	bge	a1,a2,800031f0 <__printf+0x278>
    800030a4:	06300593          	li	a1,99
    800030a8:	00100c93          	li	s9,1
    800030ac:	02e6f7bb          	remuw	a5,a3,a4
    800030b0:	02079793          	slli	a5,a5,0x20
    800030b4:	0207d793          	srli	a5,a5,0x20
    800030b8:	00fd87b3          	add	a5,s11,a5
    800030bc:	0007c783          	lbu	a5,0(a5)
    800030c0:	02e6d73b          	divuw	a4,a3,a4
    800030c4:	f8f400a3          	sb	a5,-127(s0)
    800030c8:	12a5f463          	bgeu	a1,a0,800031f0 <__printf+0x278>
    800030cc:	00a00693          	li	a3,10
    800030d0:	00900593          	li	a1,9
    800030d4:	02d777bb          	remuw	a5,a4,a3
    800030d8:	02079793          	slli	a5,a5,0x20
    800030dc:	0207d793          	srli	a5,a5,0x20
    800030e0:	00fd87b3          	add	a5,s11,a5
    800030e4:	0007c503          	lbu	a0,0(a5)
    800030e8:	02d757bb          	divuw	a5,a4,a3
    800030ec:	f8a40123          	sb	a0,-126(s0)
    800030f0:	48e5f263          	bgeu	a1,a4,80003574 <__printf+0x5fc>
    800030f4:	06300513          	li	a0,99
    800030f8:	02d7f5bb          	remuw	a1,a5,a3
    800030fc:	02059593          	slli	a1,a1,0x20
    80003100:	0205d593          	srli	a1,a1,0x20
    80003104:	00bd85b3          	add	a1,s11,a1
    80003108:	0005c583          	lbu	a1,0(a1)
    8000310c:	02d7d7bb          	divuw	a5,a5,a3
    80003110:	f8b401a3          	sb	a1,-125(s0)
    80003114:	48e57263          	bgeu	a0,a4,80003598 <__printf+0x620>
    80003118:	3e700513          	li	a0,999
    8000311c:	02d7f5bb          	remuw	a1,a5,a3
    80003120:	02059593          	slli	a1,a1,0x20
    80003124:	0205d593          	srli	a1,a1,0x20
    80003128:	00bd85b3          	add	a1,s11,a1
    8000312c:	0005c583          	lbu	a1,0(a1)
    80003130:	02d7d7bb          	divuw	a5,a5,a3
    80003134:	f8b40223          	sb	a1,-124(s0)
    80003138:	46e57663          	bgeu	a0,a4,800035a4 <__printf+0x62c>
    8000313c:	02d7f5bb          	remuw	a1,a5,a3
    80003140:	02059593          	slli	a1,a1,0x20
    80003144:	0205d593          	srli	a1,a1,0x20
    80003148:	00bd85b3          	add	a1,s11,a1
    8000314c:	0005c583          	lbu	a1,0(a1)
    80003150:	02d7d7bb          	divuw	a5,a5,a3
    80003154:	f8b402a3          	sb	a1,-123(s0)
    80003158:	46ea7863          	bgeu	s4,a4,800035c8 <__printf+0x650>
    8000315c:	02d7f5bb          	remuw	a1,a5,a3
    80003160:	02059593          	slli	a1,a1,0x20
    80003164:	0205d593          	srli	a1,a1,0x20
    80003168:	00bd85b3          	add	a1,s11,a1
    8000316c:	0005c583          	lbu	a1,0(a1)
    80003170:	02d7d7bb          	divuw	a5,a5,a3
    80003174:	f8b40323          	sb	a1,-122(s0)
    80003178:	3eeaf863          	bgeu	s5,a4,80003568 <__printf+0x5f0>
    8000317c:	02d7f5bb          	remuw	a1,a5,a3
    80003180:	02059593          	slli	a1,a1,0x20
    80003184:	0205d593          	srli	a1,a1,0x20
    80003188:	00bd85b3          	add	a1,s11,a1
    8000318c:	0005c583          	lbu	a1,0(a1)
    80003190:	02d7d7bb          	divuw	a5,a5,a3
    80003194:	f8b403a3          	sb	a1,-121(s0)
    80003198:	42eb7e63          	bgeu	s6,a4,800035d4 <__printf+0x65c>
    8000319c:	02d7f5bb          	remuw	a1,a5,a3
    800031a0:	02059593          	slli	a1,a1,0x20
    800031a4:	0205d593          	srli	a1,a1,0x20
    800031a8:	00bd85b3          	add	a1,s11,a1
    800031ac:	0005c583          	lbu	a1,0(a1)
    800031b0:	02d7d7bb          	divuw	a5,a5,a3
    800031b4:	f8b40423          	sb	a1,-120(s0)
    800031b8:	42ebfc63          	bgeu	s7,a4,800035f0 <__printf+0x678>
    800031bc:	02079793          	slli	a5,a5,0x20
    800031c0:	0207d793          	srli	a5,a5,0x20
    800031c4:	00fd8db3          	add	s11,s11,a5
    800031c8:	000dc703          	lbu	a4,0(s11)
    800031cc:	00a00793          	li	a5,10
    800031d0:	00900c93          	li	s9,9
    800031d4:	f8e404a3          	sb	a4,-119(s0)
    800031d8:	00065c63          	bgez	a2,800031f0 <__printf+0x278>
    800031dc:	f9040713          	addi	a4,s0,-112
    800031e0:	00f70733          	add	a4,a4,a5
    800031e4:	02d00693          	li	a3,45
    800031e8:	fed70823          	sb	a3,-16(a4)
    800031ec:	00078c93          	mv	s9,a5
    800031f0:	f8040793          	addi	a5,s0,-128
    800031f4:	01978cb3          	add	s9,a5,s9
    800031f8:	f7f40d13          	addi	s10,s0,-129
    800031fc:	000cc503          	lbu	a0,0(s9)
    80003200:	fffc8c93          	addi	s9,s9,-1
    80003204:	00000097          	auipc	ra,0x0
    80003208:	b90080e7          	jalr	-1136(ra) # 80002d94 <consputc>
    8000320c:	ffac98e3          	bne	s9,s10,800031fc <__printf+0x284>
    80003210:	00094503          	lbu	a0,0(s2)
    80003214:	e00514e3          	bnez	a0,8000301c <__printf+0xa4>
    80003218:	1a0c1663          	bnez	s8,800033c4 <__printf+0x44c>
    8000321c:	08813083          	ld	ra,136(sp)
    80003220:	08013403          	ld	s0,128(sp)
    80003224:	07813483          	ld	s1,120(sp)
    80003228:	07013903          	ld	s2,112(sp)
    8000322c:	06813983          	ld	s3,104(sp)
    80003230:	06013a03          	ld	s4,96(sp)
    80003234:	05813a83          	ld	s5,88(sp)
    80003238:	05013b03          	ld	s6,80(sp)
    8000323c:	04813b83          	ld	s7,72(sp)
    80003240:	04013c03          	ld	s8,64(sp)
    80003244:	03813c83          	ld	s9,56(sp)
    80003248:	03013d03          	ld	s10,48(sp)
    8000324c:	02813d83          	ld	s11,40(sp)
    80003250:	0d010113          	addi	sp,sp,208
    80003254:	00008067          	ret
    80003258:	07300713          	li	a4,115
    8000325c:	1ce78a63          	beq	a5,a4,80003430 <__printf+0x4b8>
    80003260:	07800713          	li	a4,120
    80003264:	1ee79e63          	bne	a5,a4,80003460 <__printf+0x4e8>
    80003268:	f7843783          	ld	a5,-136(s0)
    8000326c:	0007a703          	lw	a4,0(a5)
    80003270:	00878793          	addi	a5,a5,8
    80003274:	f6f43c23          	sd	a5,-136(s0)
    80003278:	28074263          	bltz	a4,800034fc <__printf+0x584>
    8000327c:	00002d97          	auipc	s11,0x2
    80003280:	00cd8d93          	addi	s11,s11,12 # 80005288 <digits>
    80003284:	00f77793          	andi	a5,a4,15
    80003288:	00fd87b3          	add	a5,s11,a5
    8000328c:	0007c683          	lbu	a3,0(a5)
    80003290:	00f00613          	li	a2,15
    80003294:	0007079b          	sext.w	a5,a4
    80003298:	f8d40023          	sb	a3,-128(s0)
    8000329c:	0047559b          	srliw	a1,a4,0x4
    800032a0:	0047569b          	srliw	a3,a4,0x4
    800032a4:	00000c93          	li	s9,0
    800032a8:	0ee65063          	bge	a2,a4,80003388 <__printf+0x410>
    800032ac:	00f6f693          	andi	a3,a3,15
    800032b0:	00dd86b3          	add	a3,s11,a3
    800032b4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800032b8:	0087d79b          	srliw	a5,a5,0x8
    800032bc:	00100c93          	li	s9,1
    800032c0:	f8d400a3          	sb	a3,-127(s0)
    800032c4:	0cb67263          	bgeu	a2,a1,80003388 <__printf+0x410>
    800032c8:	00f7f693          	andi	a3,a5,15
    800032cc:	00dd86b3          	add	a3,s11,a3
    800032d0:	0006c583          	lbu	a1,0(a3)
    800032d4:	00f00613          	li	a2,15
    800032d8:	0047d69b          	srliw	a3,a5,0x4
    800032dc:	f8b40123          	sb	a1,-126(s0)
    800032e0:	0047d593          	srli	a1,a5,0x4
    800032e4:	28f67e63          	bgeu	a2,a5,80003580 <__printf+0x608>
    800032e8:	00f6f693          	andi	a3,a3,15
    800032ec:	00dd86b3          	add	a3,s11,a3
    800032f0:	0006c503          	lbu	a0,0(a3)
    800032f4:	0087d813          	srli	a6,a5,0x8
    800032f8:	0087d69b          	srliw	a3,a5,0x8
    800032fc:	f8a401a3          	sb	a0,-125(s0)
    80003300:	28b67663          	bgeu	a2,a1,8000358c <__printf+0x614>
    80003304:	00f6f693          	andi	a3,a3,15
    80003308:	00dd86b3          	add	a3,s11,a3
    8000330c:	0006c583          	lbu	a1,0(a3)
    80003310:	00c7d513          	srli	a0,a5,0xc
    80003314:	00c7d69b          	srliw	a3,a5,0xc
    80003318:	f8b40223          	sb	a1,-124(s0)
    8000331c:	29067a63          	bgeu	a2,a6,800035b0 <__printf+0x638>
    80003320:	00f6f693          	andi	a3,a3,15
    80003324:	00dd86b3          	add	a3,s11,a3
    80003328:	0006c583          	lbu	a1,0(a3)
    8000332c:	0107d813          	srli	a6,a5,0x10
    80003330:	0107d69b          	srliw	a3,a5,0x10
    80003334:	f8b402a3          	sb	a1,-123(s0)
    80003338:	28a67263          	bgeu	a2,a0,800035bc <__printf+0x644>
    8000333c:	00f6f693          	andi	a3,a3,15
    80003340:	00dd86b3          	add	a3,s11,a3
    80003344:	0006c683          	lbu	a3,0(a3)
    80003348:	0147d79b          	srliw	a5,a5,0x14
    8000334c:	f8d40323          	sb	a3,-122(s0)
    80003350:	21067663          	bgeu	a2,a6,8000355c <__printf+0x5e4>
    80003354:	02079793          	slli	a5,a5,0x20
    80003358:	0207d793          	srli	a5,a5,0x20
    8000335c:	00fd8db3          	add	s11,s11,a5
    80003360:	000dc683          	lbu	a3,0(s11)
    80003364:	00800793          	li	a5,8
    80003368:	00700c93          	li	s9,7
    8000336c:	f8d403a3          	sb	a3,-121(s0)
    80003370:	00075c63          	bgez	a4,80003388 <__printf+0x410>
    80003374:	f9040713          	addi	a4,s0,-112
    80003378:	00f70733          	add	a4,a4,a5
    8000337c:	02d00693          	li	a3,45
    80003380:	fed70823          	sb	a3,-16(a4)
    80003384:	00078c93          	mv	s9,a5
    80003388:	f8040793          	addi	a5,s0,-128
    8000338c:	01978cb3          	add	s9,a5,s9
    80003390:	f7f40d13          	addi	s10,s0,-129
    80003394:	000cc503          	lbu	a0,0(s9)
    80003398:	fffc8c93          	addi	s9,s9,-1
    8000339c:	00000097          	auipc	ra,0x0
    800033a0:	9f8080e7          	jalr	-1544(ra) # 80002d94 <consputc>
    800033a4:	ff9d18e3          	bne	s10,s9,80003394 <__printf+0x41c>
    800033a8:	0100006f          	j	800033b8 <__printf+0x440>
    800033ac:	00000097          	auipc	ra,0x0
    800033b0:	9e8080e7          	jalr	-1560(ra) # 80002d94 <consputc>
    800033b4:	000c8493          	mv	s1,s9
    800033b8:	00094503          	lbu	a0,0(s2)
    800033bc:	c60510e3          	bnez	a0,8000301c <__printf+0xa4>
    800033c0:	e40c0ee3          	beqz	s8,8000321c <__printf+0x2a4>
    800033c4:	00004517          	auipc	a0,0x4
    800033c8:	8ac50513          	addi	a0,a0,-1876 # 80006c70 <pr>
    800033cc:	00001097          	auipc	ra,0x1
    800033d0:	94c080e7          	jalr	-1716(ra) # 80003d18 <release>
    800033d4:	e49ff06f          	j	8000321c <__printf+0x2a4>
    800033d8:	f7843783          	ld	a5,-136(s0)
    800033dc:	03000513          	li	a0,48
    800033e0:	01000d13          	li	s10,16
    800033e4:	00878713          	addi	a4,a5,8
    800033e8:	0007bc83          	ld	s9,0(a5)
    800033ec:	f6e43c23          	sd	a4,-136(s0)
    800033f0:	00000097          	auipc	ra,0x0
    800033f4:	9a4080e7          	jalr	-1628(ra) # 80002d94 <consputc>
    800033f8:	07800513          	li	a0,120
    800033fc:	00000097          	auipc	ra,0x0
    80003400:	998080e7          	jalr	-1640(ra) # 80002d94 <consputc>
    80003404:	00002d97          	auipc	s11,0x2
    80003408:	e84d8d93          	addi	s11,s11,-380 # 80005288 <digits>
    8000340c:	03ccd793          	srli	a5,s9,0x3c
    80003410:	00fd87b3          	add	a5,s11,a5
    80003414:	0007c503          	lbu	a0,0(a5)
    80003418:	fffd0d1b          	addiw	s10,s10,-1
    8000341c:	004c9c93          	slli	s9,s9,0x4
    80003420:	00000097          	auipc	ra,0x0
    80003424:	974080e7          	jalr	-1676(ra) # 80002d94 <consputc>
    80003428:	fe0d12e3          	bnez	s10,8000340c <__printf+0x494>
    8000342c:	f8dff06f          	j	800033b8 <__printf+0x440>
    80003430:	f7843783          	ld	a5,-136(s0)
    80003434:	0007bc83          	ld	s9,0(a5)
    80003438:	00878793          	addi	a5,a5,8
    8000343c:	f6f43c23          	sd	a5,-136(s0)
    80003440:	000c9a63          	bnez	s9,80003454 <__printf+0x4dc>
    80003444:	1080006f          	j	8000354c <__printf+0x5d4>
    80003448:	001c8c93          	addi	s9,s9,1
    8000344c:	00000097          	auipc	ra,0x0
    80003450:	948080e7          	jalr	-1720(ra) # 80002d94 <consputc>
    80003454:	000cc503          	lbu	a0,0(s9)
    80003458:	fe0518e3          	bnez	a0,80003448 <__printf+0x4d0>
    8000345c:	f5dff06f          	j	800033b8 <__printf+0x440>
    80003460:	02500513          	li	a0,37
    80003464:	00000097          	auipc	ra,0x0
    80003468:	930080e7          	jalr	-1744(ra) # 80002d94 <consputc>
    8000346c:	000c8513          	mv	a0,s9
    80003470:	00000097          	auipc	ra,0x0
    80003474:	924080e7          	jalr	-1756(ra) # 80002d94 <consputc>
    80003478:	f41ff06f          	j	800033b8 <__printf+0x440>
    8000347c:	02500513          	li	a0,37
    80003480:	00000097          	auipc	ra,0x0
    80003484:	914080e7          	jalr	-1772(ra) # 80002d94 <consputc>
    80003488:	f31ff06f          	j	800033b8 <__printf+0x440>
    8000348c:	00030513          	mv	a0,t1
    80003490:	00000097          	auipc	ra,0x0
    80003494:	7bc080e7          	jalr	1980(ra) # 80003c4c <acquire>
    80003498:	b4dff06f          	j	80002fe4 <__printf+0x6c>
    8000349c:	40c0053b          	negw	a0,a2
    800034a0:	00a00713          	li	a4,10
    800034a4:	02e576bb          	remuw	a3,a0,a4
    800034a8:	00002d97          	auipc	s11,0x2
    800034ac:	de0d8d93          	addi	s11,s11,-544 # 80005288 <digits>
    800034b0:	ff700593          	li	a1,-9
    800034b4:	02069693          	slli	a3,a3,0x20
    800034b8:	0206d693          	srli	a3,a3,0x20
    800034bc:	00dd86b3          	add	a3,s11,a3
    800034c0:	0006c683          	lbu	a3,0(a3)
    800034c4:	02e557bb          	divuw	a5,a0,a4
    800034c8:	f8d40023          	sb	a3,-128(s0)
    800034cc:	10b65e63          	bge	a2,a1,800035e8 <__printf+0x670>
    800034d0:	06300593          	li	a1,99
    800034d4:	02e7f6bb          	remuw	a3,a5,a4
    800034d8:	02069693          	slli	a3,a3,0x20
    800034dc:	0206d693          	srli	a3,a3,0x20
    800034e0:	00dd86b3          	add	a3,s11,a3
    800034e4:	0006c683          	lbu	a3,0(a3)
    800034e8:	02e7d73b          	divuw	a4,a5,a4
    800034ec:	00200793          	li	a5,2
    800034f0:	f8d400a3          	sb	a3,-127(s0)
    800034f4:	bca5ece3          	bltu	a1,a0,800030cc <__printf+0x154>
    800034f8:	ce5ff06f          	j	800031dc <__printf+0x264>
    800034fc:	40e007bb          	negw	a5,a4
    80003500:	00002d97          	auipc	s11,0x2
    80003504:	d88d8d93          	addi	s11,s11,-632 # 80005288 <digits>
    80003508:	00f7f693          	andi	a3,a5,15
    8000350c:	00dd86b3          	add	a3,s11,a3
    80003510:	0006c583          	lbu	a1,0(a3)
    80003514:	ff100613          	li	a2,-15
    80003518:	0047d69b          	srliw	a3,a5,0x4
    8000351c:	f8b40023          	sb	a1,-128(s0)
    80003520:	0047d59b          	srliw	a1,a5,0x4
    80003524:	0ac75e63          	bge	a4,a2,800035e0 <__printf+0x668>
    80003528:	00f6f693          	andi	a3,a3,15
    8000352c:	00dd86b3          	add	a3,s11,a3
    80003530:	0006c603          	lbu	a2,0(a3)
    80003534:	00f00693          	li	a3,15
    80003538:	0087d79b          	srliw	a5,a5,0x8
    8000353c:	f8c400a3          	sb	a2,-127(s0)
    80003540:	d8b6e4e3          	bltu	a3,a1,800032c8 <__printf+0x350>
    80003544:	00200793          	li	a5,2
    80003548:	e2dff06f          	j	80003374 <__printf+0x3fc>
    8000354c:	00002c97          	auipc	s9,0x2
    80003550:	d1cc8c93          	addi	s9,s9,-740 # 80005268 <_ZZ12printIntegermE6digits+0x148>
    80003554:	02800513          	li	a0,40
    80003558:	ef1ff06f          	j	80003448 <__printf+0x4d0>
    8000355c:	00700793          	li	a5,7
    80003560:	00600c93          	li	s9,6
    80003564:	e0dff06f          	j	80003370 <__printf+0x3f8>
    80003568:	00700793          	li	a5,7
    8000356c:	00600c93          	li	s9,6
    80003570:	c69ff06f          	j	800031d8 <__printf+0x260>
    80003574:	00300793          	li	a5,3
    80003578:	00200c93          	li	s9,2
    8000357c:	c5dff06f          	j	800031d8 <__printf+0x260>
    80003580:	00300793          	li	a5,3
    80003584:	00200c93          	li	s9,2
    80003588:	de9ff06f          	j	80003370 <__printf+0x3f8>
    8000358c:	00400793          	li	a5,4
    80003590:	00300c93          	li	s9,3
    80003594:	dddff06f          	j	80003370 <__printf+0x3f8>
    80003598:	00400793          	li	a5,4
    8000359c:	00300c93          	li	s9,3
    800035a0:	c39ff06f          	j	800031d8 <__printf+0x260>
    800035a4:	00500793          	li	a5,5
    800035a8:	00400c93          	li	s9,4
    800035ac:	c2dff06f          	j	800031d8 <__printf+0x260>
    800035b0:	00500793          	li	a5,5
    800035b4:	00400c93          	li	s9,4
    800035b8:	db9ff06f          	j	80003370 <__printf+0x3f8>
    800035bc:	00600793          	li	a5,6
    800035c0:	00500c93          	li	s9,5
    800035c4:	dadff06f          	j	80003370 <__printf+0x3f8>
    800035c8:	00600793          	li	a5,6
    800035cc:	00500c93          	li	s9,5
    800035d0:	c09ff06f          	j	800031d8 <__printf+0x260>
    800035d4:	00800793          	li	a5,8
    800035d8:	00700c93          	li	s9,7
    800035dc:	bfdff06f          	j	800031d8 <__printf+0x260>
    800035e0:	00100793          	li	a5,1
    800035e4:	d91ff06f          	j	80003374 <__printf+0x3fc>
    800035e8:	00100793          	li	a5,1
    800035ec:	bf1ff06f          	j	800031dc <__printf+0x264>
    800035f0:	00900793          	li	a5,9
    800035f4:	00800c93          	li	s9,8
    800035f8:	be1ff06f          	j	800031d8 <__printf+0x260>
    800035fc:	00002517          	auipc	a0,0x2
    80003600:	c7450513          	addi	a0,a0,-908 # 80005270 <_ZZ12printIntegermE6digits+0x150>
    80003604:	00000097          	auipc	ra,0x0
    80003608:	918080e7          	jalr	-1768(ra) # 80002f1c <panic>

000000008000360c <printfinit>:
    8000360c:	fe010113          	addi	sp,sp,-32
    80003610:	00813823          	sd	s0,16(sp)
    80003614:	00913423          	sd	s1,8(sp)
    80003618:	00113c23          	sd	ra,24(sp)
    8000361c:	02010413          	addi	s0,sp,32
    80003620:	00003497          	auipc	s1,0x3
    80003624:	65048493          	addi	s1,s1,1616 # 80006c70 <pr>
    80003628:	00048513          	mv	a0,s1
    8000362c:	00002597          	auipc	a1,0x2
    80003630:	c5458593          	addi	a1,a1,-940 # 80005280 <_ZZ12printIntegermE6digits+0x160>
    80003634:	00000097          	auipc	ra,0x0
    80003638:	5f4080e7          	jalr	1524(ra) # 80003c28 <initlock>
    8000363c:	01813083          	ld	ra,24(sp)
    80003640:	01013403          	ld	s0,16(sp)
    80003644:	0004ac23          	sw	zero,24(s1)
    80003648:	00813483          	ld	s1,8(sp)
    8000364c:	02010113          	addi	sp,sp,32
    80003650:	00008067          	ret

0000000080003654 <uartinit>:
    80003654:	ff010113          	addi	sp,sp,-16
    80003658:	00813423          	sd	s0,8(sp)
    8000365c:	01010413          	addi	s0,sp,16
    80003660:	100007b7          	lui	a5,0x10000
    80003664:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003668:	f8000713          	li	a4,-128
    8000366c:	00e781a3          	sb	a4,3(a5)
    80003670:	00300713          	li	a4,3
    80003674:	00e78023          	sb	a4,0(a5)
    80003678:	000780a3          	sb	zero,1(a5)
    8000367c:	00e781a3          	sb	a4,3(a5)
    80003680:	00700693          	li	a3,7
    80003684:	00d78123          	sb	a3,2(a5)
    80003688:	00e780a3          	sb	a4,1(a5)
    8000368c:	00813403          	ld	s0,8(sp)
    80003690:	01010113          	addi	sp,sp,16
    80003694:	00008067          	ret

0000000080003698 <uartputc>:
    80003698:	00002797          	auipc	a5,0x2
    8000369c:	3607a783          	lw	a5,864(a5) # 800059f8 <panicked>
    800036a0:	00078463          	beqz	a5,800036a8 <uartputc+0x10>
    800036a4:	0000006f          	j	800036a4 <uartputc+0xc>
    800036a8:	fd010113          	addi	sp,sp,-48
    800036ac:	02813023          	sd	s0,32(sp)
    800036b0:	00913c23          	sd	s1,24(sp)
    800036b4:	01213823          	sd	s2,16(sp)
    800036b8:	01313423          	sd	s3,8(sp)
    800036bc:	02113423          	sd	ra,40(sp)
    800036c0:	03010413          	addi	s0,sp,48
    800036c4:	00002917          	auipc	s2,0x2
    800036c8:	33c90913          	addi	s2,s2,828 # 80005a00 <uart_tx_r>
    800036cc:	00093783          	ld	a5,0(s2)
    800036d0:	00002497          	auipc	s1,0x2
    800036d4:	33848493          	addi	s1,s1,824 # 80005a08 <uart_tx_w>
    800036d8:	0004b703          	ld	a4,0(s1)
    800036dc:	02078693          	addi	a3,a5,32
    800036e0:	00050993          	mv	s3,a0
    800036e4:	02e69c63          	bne	a3,a4,8000371c <uartputc+0x84>
    800036e8:	00001097          	auipc	ra,0x1
    800036ec:	834080e7          	jalr	-1996(ra) # 80003f1c <push_on>
    800036f0:	00093783          	ld	a5,0(s2)
    800036f4:	0004b703          	ld	a4,0(s1)
    800036f8:	02078793          	addi	a5,a5,32
    800036fc:	00e79463          	bne	a5,a4,80003704 <uartputc+0x6c>
    80003700:	0000006f          	j	80003700 <uartputc+0x68>
    80003704:	00001097          	auipc	ra,0x1
    80003708:	88c080e7          	jalr	-1908(ra) # 80003f90 <pop_on>
    8000370c:	00093783          	ld	a5,0(s2)
    80003710:	0004b703          	ld	a4,0(s1)
    80003714:	02078693          	addi	a3,a5,32
    80003718:	fce688e3          	beq	a3,a4,800036e8 <uartputc+0x50>
    8000371c:	01f77693          	andi	a3,a4,31
    80003720:	00003597          	auipc	a1,0x3
    80003724:	57058593          	addi	a1,a1,1392 # 80006c90 <uart_tx_buf>
    80003728:	00d586b3          	add	a3,a1,a3
    8000372c:	00170713          	addi	a4,a4,1
    80003730:	01368023          	sb	s3,0(a3)
    80003734:	00e4b023          	sd	a4,0(s1)
    80003738:	10000637          	lui	a2,0x10000
    8000373c:	02f71063          	bne	a4,a5,8000375c <uartputc+0xc4>
    80003740:	0340006f          	j	80003774 <uartputc+0xdc>
    80003744:	00074703          	lbu	a4,0(a4)
    80003748:	00f93023          	sd	a5,0(s2)
    8000374c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003750:	00093783          	ld	a5,0(s2)
    80003754:	0004b703          	ld	a4,0(s1)
    80003758:	00f70e63          	beq	a4,a5,80003774 <uartputc+0xdc>
    8000375c:	00564683          	lbu	a3,5(a2)
    80003760:	01f7f713          	andi	a4,a5,31
    80003764:	00e58733          	add	a4,a1,a4
    80003768:	0206f693          	andi	a3,a3,32
    8000376c:	00178793          	addi	a5,a5,1
    80003770:	fc069ae3          	bnez	a3,80003744 <uartputc+0xac>
    80003774:	02813083          	ld	ra,40(sp)
    80003778:	02013403          	ld	s0,32(sp)
    8000377c:	01813483          	ld	s1,24(sp)
    80003780:	01013903          	ld	s2,16(sp)
    80003784:	00813983          	ld	s3,8(sp)
    80003788:	03010113          	addi	sp,sp,48
    8000378c:	00008067          	ret

0000000080003790 <uartputc_sync>:
    80003790:	ff010113          	addi	sp,sp,-16
    80003794:	00813423          	sd	s0,8(sp)
    80003798:	01010413          	addi	s0,sp,16
    8000379c:	00002717          	auipc	a4,0x2
    800037a0:	25c72703          	lw	a4,604(a4) # 800059f8 <panicked>
    800037a4:	02071663          	bnez	a4,800037d0 <uartputc_sync+0x40>
    800037a8:	00050793          	mv	a5,a0
    800037ac:	100006b7          	lui	a3,0x10000
    800037b0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800037b4:	02077713          	andi	a4,a4,32
    800037b8:	fe070ce3          	beqz	a4,800037b0 <uartputc_sync+0x20>
    800037bc:	0ff7f793          	andi	a5,a5,255
    800037c0:	00f68023          	sb	a5,0(a3)
    800037c4:	00813403          	ld	s0,8(sp)
    800037c8:	01010113          	addi	sp,sp,16
    800037cc:	00008067          	ret
    800037d0:	0000006f          	j	800037d0 <uartputc_sync+0x40>

00000000800037d4 <uartstart>:
    800037d4:	ff010113          	addi	sp,sp,-16
    800037d8:	00813423          	sd	s0,8(sp)
    800037dc:	01010413          	addi	s0,sp,16
    800037e0:	00002617          	auipc	a2,0x2
    800037e4:	22060613          	addi	a2,a2,544 # 80005a00 <uart_tx_r>
    800037e8:	00002517          	auipc	a0,0x2
    800037ec:	22050513          	addi	a0,a0,544 # 80005a08 <uart_tx_w>
    800037f0:	00063783          	ld	a5,0(a2)
    800037f4:	00053703          	ld	a4,0(a0)
    800037f8:	04f70263          	beq	a4,a5,8000383c <uartstart+0x68>
    800037fc:	100005b7          	lui	a1,0x10000
    80003800:	00003817          	auipc	a6,0x3
    80003804:	49080813          	addi	a6,a6,1168 # 80006c90 <uart_tx_buf>
    80003808:	01c0006f          	j	80003824 <uartstart+0x50>
    8000380c:	0006c703          	lbu	a4,0(a3)
    80003810:	00f63023          	sd	a5,0(a2)
    80003814:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003818:	00063783          	ld	a5,0(a2)
    8000381c:	00053703          	ld	a4,0(a0)
    80003820:	00f70e63          	beq	a4,a5,8000383c <uartstart+0x68>
    80003824:	01f7f713          	andi	a4,a5,31
    80003828:	00e806b3          	add	a3,a6,a4
    8000382c:	0055c703          	lbu	a4,5(a1)
    80003830:	00178793          	addi	a5,a5,1
    80003834:	02077713          	andi	a4,a4,32
    80003838:	fc071ae3          	bnez	a4,8000380c <uartstart+0x38>
    8000383c:	00813403          	ld	s0,8(sp)
    80003840:	01010113          	addi	sp,sp,16
    80003844:	00008067          	ret

0000000080003848 <uartgetc>:
    80003848:	ff010113          	addi	sp,sp,-16
    8000384c:	00813423          	sd	s0,8(sp)
    80003850:	01010413          	addi	s0,sp,16
    80003854:	10000737          	lui	a4,0x10000
    80003858:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000385c:	0017f793          	andi	a5,a5,1
    80003860:	00078c63          	beqz	a5,80003878 <uartgetc+0x30>
    80003864:	00074503          	lbu	a0,0(a4)
    80003868:	0ff57513          	andi	a0,a0,255
    8000386c:	00813403          	ld	s0,8(sp)
    80003870:	01010113          	addi	sp,sp,16
    80003874:	00008067          	ret
    80003878:	fff00513          	li	a0,-1
    8000387c:	ff1ff06f          	j	8000386c <uartgetc+0x24>

0000000080003880 <uartintr>:
    80003880:	100007b7          	lui	a5,0x10000
    80003884:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003888:	0017f793          	andi	a5,a5,1
    8000388c:	0a078463          	beqz	a5,80003934 <uartintr+0xb4>
    80003890:	fe010113          	addi	sp,sp,-32
    80003894:	00813823          	sd	s0,16(sp)
    80003898:	00913423          	sd	s1,8(sp)
    8000389c:	00113c23          	sd	ra,24(sp)
    800038a0:	02010413          	addi	s0,sp,32
    800038a4:	100004b7          	lui	s1,0x10000
    800038a8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800038ac:	0ff57513          	andi	a0,a0,255
    800038b0:	fffff097          	auipc	ra,0xfffff
    800038b4:	534080e7          	jalr	1332(ra) # 80002de4 <consoleintr>
    800038b8:	0054c783          	lbu	a5,5(s1)
    800038bc:	0017f793          	andi	a5,a5,1
    800038c0:	fe0794e3          	bnez	a5,800038a8 <uartintr+0x28>
    800038c4:	00002617          	auipc	a2,0x2
    800038c8:	13c60613          	addi	a2,a2,316 # 80005a00 <uart_tx_r>
    800038cc:	00002517          	auipc	a0,0x2
    800038d0:	13c50513          	addi	a0,a0,316 # 80005a08 <uart_tx_w>
    800038d4:	00063783          	ld	a5,0(a2)
    800038d8:	00053703          	ld	a4,0(a0)
    800038dc:	04f70263          	beq	a4,a5,80003920 <uartintr+0xa0>
    800038e0:	100005b7          	lui	a1,0x10000
    800038e4:	00003817          	auipc	a6,0x3
    800038e8:	3ac80813          	addi	a6,a6,940 # 80006c90 <uart_tx_buf>
    800038ec:	01c0006f          	j	80003908 <uartintr+0x88>
    800038f0:	0006c703          	lbu	a4,0(a3)
    800038f4:	00f63023          	sd	a5,0(a2)
    800038f8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800038fc:	00063783          	ld	a5,0(a2)
    80003900:	00053703          	ld	a4,0(a0)
    80003904:	00f70e63          	beq	a4,a5,80003920 <uartintr+0xa0>
    80003908:	01f7f713          	andi	a4,a5,31
    8000390c:	00e806b3          	add	a3,a6,a4
    80003910:	0055c703          	lbu	a4,5(a1)
    80003914:	00178793          	addi	a5,a5,1
    80003918:	02077713          	andi	a4,a4,32
    8000391c:	fc071ae3          	bnez	a4,800038f0 <uartintr+0x70>
    80003920:	01813083          	ld	ra,24(sp)
    80003924:	01013403          	ld	s0,16(sp)
    80003928:	00813483          	ld	s1,8(sp)
    8000392c:	02010113          	addi	sp,sp,32
    80003930:	00008067          	ret
    80003934:	00002617          	auipc	a2,0x2
    80003938:	0cc60613          	addi	a2,a2,204 # 80005a00 <uart_tx_r>
    8000393c:	00002517          	auipc	a0,0x2
    80003940:	0cc50513          	addi	a0,a0,204 # 80005a08 <uart_tx_w>
    80003944:	00063783          	ld	a5,0(a2)
    80003948:	00053703          	ld	a4,0(a0)
    8000394c:	04f70263          	beq	a4,a5,80003990 <uartintr+0x110>
    80003950:	100005b7          	lui	a1,0x10000
    80003954:	00003817          	auipc	a6,0x3
    80003958:	33c80813          	addi	a6,a6,828 # 80006c90 <uart_tx_buf>
    8000395c:	01c0006f          	j	80003978 <uartintr+0xf8>
    80003960:	0006c703          	lbu	a4,0(a3)
    80003964:	00f63023          	sd	a5,0(a2)
    80003968:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000396c:	00063783          	ld	a5,0(a2)
    80003970:	00053703          	ld	a4,0(a0)
    80003974:	02f70063          	beq	a4,a5,80003994 <uartintr+0x114>
    80003978:	01f7f713          	andi	a4,a5,31
    8000397c:	00e806b3          	add	a3,a6,a4
    80003980:	0055c703          	lbu	a4,5(a1)
    80003984:	00178793          	addi	a5,a5,1
    80003988:	02077713          	andi	a4,a4,32
    8000398c:	fc071ae3          	bnez	a4,80003960 <uartintr+0xe0>
    80003990:	00008067          	ret
    80003994:	00008067          	ret

0000000080003998 <kinit>:
    80003998:	fc010113          	addi	sp,sp,-64
    8000399c:	02913423          	sd	s1,40(sp)
    800039a0:	fffff7b7          	lui	a5,0xfffff
    800039a4:	00004497          	auipc	s1,0x4
    800039a8:	30b48493          	addi	s1,s1,779 # 80007caf <end+0xfff>
    800039ac:	02813823          	sd	s0,48(sp)
    800039b0:	01313c23          	sd	s3,24(sp)
    800039b4:	00f4f4b3          	and	s1,s1,a5
    800039b8:	02113c23          	sd	ra,56(sp)
    800039bc:	03213023          	sd	s2,32(sp)
    800039c0:	01413823          	sd	s4,16(sp)
    800039c4:	01513423          	sd	s5,8(sp)
    800039c8:	04010413          	addi	s0,sp,64
    800039cc:	000017b7          	lui	a5,0x1
    800039d0:	01100993          	li	s3,17
    800039d4:	00f487b3          	add	a5,s1,a5
    800039d8:	01b99993          	slli	s3,s3,0x1b
    800039dc:	06f9e063          	bltu	s3,a5,80003a3c <kinit+0xa4>
    800039e0:	00003a97          	auipc	s5,0x3
    800039e4:	2d0a8a93          	addi	s5,s5,720 # 80006cb0 <end>
    800039e8:	0754ec63          	bltu	s1,s5,80003a60 <kinit+0xc8>
    800039ec:	0734fa63          	bgeu	s1,s3,80003a60 <kinit+0xc8>
    800039f0:	00088a37          	lui	s4,0x88
    800039f4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800039f8:	00002917          	auipc	s2,0x2
    800039fc:	01890913          	addi	s2,s2,24 # 80005a10 <kmem>
    80003a00:	00ca1a13          	slli	s4,s4,0xc
    80003a04:	0140006f          	j	80003a18 <kinit+0x80>
    80003a08:	000017b7          	lui	a5,0x1
    80003a0c:	00f484b3          	add	s1,s1,a5
    80003a10:	0554e863          	bltu	s1,s5,80003a60 <kinit+0xc8>
    80003a14:	0534f663          	bgeu	s1,s3,80003a60 <kinit+0xc8>
    80003a18:	00001637          	lui	a2,0x1
    80003a1c:	00100593          	li	a1,1
    80003a20:	00048513          	mv	a0,s1
    80003a24:	00000097          	auipc	ra,0x0
    80003a28:	5e4080e7          	jalr	1508(ra) # 80004008 <__memset>
    80003a2c:	00093783          	ld	a5,0(s2)
    80003a30:	00f4b023          	sd	a5,0(s1)
    80003a34:	00993023          	sd	s1,0(s2)
    80003a38:	fd4498e3          	bne	s1,s4,80003a08 <kinit+0x70>
    80003a3c:	03813083          	ld	ra,56(sp)
    80003a40:	03013403          	ld	s0,48(sp)
    80003a44:	02813483          	ld	s1,40(sp)
    80003a48:	02013903          	ld	s2,32(sp)
    80003a4c:	01813983          	ld	s3,24(sp)
    80003a50:	01013a03          	ld	s4,16(sp)
    80003a54:	00813a83          	ld	s5,8(sp)
    80003a58:	04010113          	addi	sp,sp,64
    80003a5c:	00008067          	ret
    80003a60:	00002517          	auipc	a0,0x2
    80003a64:	84050513          	addi	a0,a0,-1984 # 800052a0 <digits+0x18>
    80003a68:	fffff097          	auipc	ra,0xfffff
    80003a6c:	4b4080e7          	jalr	1204(ra) # 80002f1c <panic>

0000000080003a70 <freerange>:
    80003a70:	fc010113          	addi	sp,sp,-64
    80003a74:	000017b7          	lui	a5,0x1
    80003a78:	02913423          	sd	s1,40(sp)
    80003a7c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003a80:	009504b3          	add	s1,a0,s1
    80003a84:	fffff537          	lui	a0,0xfffff
    80003a88:	02813823          	sd	s0,48(sp)
    80003a8c:	02113c23          	sd	ra,56(sp)
    80003a90:	03213023          	sd	s2,32(sp)
    80003a94:	01313c23          	sd	s3,24(sp)
    80003a98:	01413823          	sd	s4,16(sp)
    80003a9c:	01513423          	sd	s5,8(sp)
    80003aa0:	01613023          	sd	s6,0(sp)
    80003aa4:	04010413          	addi	s0,sp,64
    80003aa8:	00a4f4b3          	and	s1,s1,a0
    80003aac:	00f487b3          	add	a5,s1,a5
    80003ab0:	06f5e463          	bltu	a1,a5,80003b18 <freerange+0xa8>
    80003ab4:	00003a97          	auipc	s5,0x3
    80003ab8:	1fca8a93          	addi	s5,s5,508 # 80006cb0 <end>
    80003abc:	0954e263          	bltu	s1,s5,80003b40 <freerange+0xd0>
    80003ac0:	01100993          	li	s3,17
    80003ac4:	01b99993          	slli	s3,s3,0x1b
    80003ac8:	0734fc63          	bgeu	s1,s3,80003b40 <freerange+0xd0>
    80003acc:	00058a13          	mv	s4,a1
    80003ad0:	00002917          	auipc	s2,0x2
    80003ad4:	f4090913          	addi	s2,s2,-192 # 80005a10 <kmem>
    80003ad8:	00002b37          	lui	s6,0x2
    80003adc:	0140006f          	j	80003af0 <freerange+0x80>
    80003ae0:	000017b7          	lui	a5,0x1
    80003ae4:	00f484b3          	add	s1,s1,a5
    80003ae8:	0554ec63          	bltu	s1,s5,80003b40 <freerange+0xd0>
    80003aec:	0534fa63          	bgeu	s1,s3,80003b40 <freerange+0xd0>
    80003af0:	00001637          	lui	a2,0x1
    80003af4:	00100593          	li	a1,1
    80003af8:	00048513          	mv	a0,s1
    80003afc:	00000097          	auipc	ra,0x0
    80003b00:	50c080e7          	jalr	1292(ra) # 80004008 <__memset>
    80003b04:	00093703          	ld	a4,0(s2)
    80003b08:	016487b3          	add	a5,s1,s6
    80003b0c:	00e4b023          	sd	a4,0(s1)
    80003b10:	00993023          	sd	s1,0(s2)
    80003b14:	fcfa76e3          	bgeu	s4,a5,80003ae0 <freerange+0x70>
    80003b18:	03813083          	ld	ra,56(sp)
    80003b1c:	03013403          	ld	s0,48(sp)
    80003b20:	02813483          	ld	s1,40(sp)
    80003b24:	02013903          	ld	s2,32(sp)
    80003b28:	01813983          	ld	s3,24(sp)
    80003b2c:	01013a03          	ld	s4,16(sp)
    80003b30:	00813a83          	ld	s5,8(sp)
    80003b34:	00013b03          	ld	s6,0(sp)
    80003b38:	04010113          	addi	sp,sp,64
    80003b3c:	00008067          	ret
    80003b40:	00001517          	auipc	a0,0x1
    80003b44:	76050513          	addi	a0,a0,1888 # 800052a0 <digits+0x18>
    80003b48:	fffff097          	auipc	ra,0xfffff
    80003b4c:	3d4080e7          	jalr	980(ra) # 80002f1c <panic>

0000000080003b50 <kfree>:
    80003b50:	fe010113          	addi	sp,sp,-32
    80003b54:	00813823          	sd	s0,16(sp)
    80003b58:	00113c23          	sd	ra,24(sp)
    80003b5c:	00913423          	sd	s1,8(sp)
    80003b60:	02010413          	addi	s0,sp,32
    80003b64:	03451793          	slli	a5,a0,0x34
    80003b68:	04079c63          	bnez	a5,80003bc0 <kfree+0x70>
    80003b6c:	00003797          	auipc	a5,0x3
    80003b70:	14478793          	addi	a5,a5,324 # 80006cb0 <end>
    80003b74:	00050493          	mv	s1,a0
    80003b78:	04f56463          	bltu	a0,a5,80003bc0 <kfree+0x70>
    80003b7c:	01100793          	li	a5,17
    80003b80:	01b79793          	slli	a5,a5,0x1b
    80003b84:	02f57e63          	bgeu	a0,a5,80003bc0 <kfree+0x70>
    80003b88:	00001637          	lui	a2,0x1
    80003b8c:	00100593          	li	a1,1
    80003b90:	00000097          	auipc	ra,0x0
    80003b94:	478080e7          	jalr	1144(ra) # 80004008 <__memset>
    80003b98:	00002797          	auipc	a5,0x2
    80003b9c:	e7878793          	addi	a5,a5,-392 # 80005a10 <kmem>
    80003ba0:	0007b703          	ld	a4,0(a5)
    80003ba4:	01813083          	ld	ra,24(sp)
    80003ba8:	01013403          	ld	s0,16(sp)
    80003bac:	00e4b023          	sd	a4,0(s1)
    80003bb0:	0097b023          	sd	s1,0(a5)
    80003bb4:	00813483          	ld	s1,8(sp)
    80003bb8:	02010113          	addi	sp,sp,32
    80003bbc:	00008067          	ret
    80003bc0:	00001517          	auipc	a0,0x1
    80003bc4:	6e050513          	addi	a0,a0,1760 # 800052a0 <digits+0x18>
    80003bc8:	fffff097          	auipc	ra,0xfffff
    80003bcc:	354080e7          	jalr	852(ra) # 80002f1c <panic>

0000000080003bd0 <kalloc>:
    80003bd0:	fe010113          	addi	sp,sp,-32
    80003bd4:	00813823          	sd	s0,16(sp)
    80003bd8:	00913423          	sd	s1,8(sp)
    80003bdc:	00113c23          	sd	ra,24(sp)
    80003be0:	02010413          	addi	s0,sp,32
    80003be4:	00002797          	auipc	a5,0x2
    80003be8:	e2c78793          	addi	a5,a5,-468 # 80005a10 <kmem>
    80003bec:	0007b483          	ld	s1,0(a5)
    80003bf0:	02048063          	beqz	s1,80003c10 <kalloc+0x40>
    80003bf4:	0004b703          	ld	a4,0(s1)
    80003bf8:	00001637          	lui	a2,0x1
    80003bfc:	00500593          	li	a1,5
    80003c00:	00048513          	mv	a0,s1
    80003c04:	00e7b023          	sd	a4,0(a5)
    80003c08:	00000097          	auipc	ra,0x0
    80003c0c:	400080e7          	jalr	1024(ra) # 80004008 <__memset>
    80003c10:	01813083          	ld	ra,24(sp)
    80003c14:	01013403          	ld	s0,16(sp)
    80003c18:	00048513          	mv	a0,s1
    80003c1c:	00813483          	ld	s1,8(sp)
    80003c20:	02010113          	addi	sp,sp,32
    80003c24:	00008067          	ret

0000000080003c28 <initlock>:
    80003c28:	ff010113          	addi	sp,sp,-16
    80003c2c:	00813423          	sd	s0,8(sp)
    80003c30:	01010413          	addi	s0,sp,16
    80003c34:	00813403          	ld	s0,8(sp)
    80003c38:	00b53423          	sd	a1,8(a0)
    80003c3c:	00052023          	sw	zero,0(a0)
    80003c40:	00053823          	sd	zero,16(a0)
    80003c44:	01010113          	addi	sp,sp,16
    80003c48:	00008067          	ret

0000000080003c4c <acquire>:
    80003c4c:	fe010113          	addi	sp,sp,-32
    80003c50:	00813823          	sd	s0,16(sp)
    80003c54:	00913423          	sd	s1,8(sp)
    80003c58:	00113c23          	sd	ra,24(sp)
    80003c5c:	01213023          	sd	s2,0(sp)
    80003c60:	02010413          	addi	s0,sp,32
    80003c64:	00050493          	mv	s1,a0
    80003c68:	10002973          	csrr	s2,sstatus
    80003c6c:	100027f3          	csrr	a5,sstatus
    80003c70:	ffd7f793          	andi	a5,a5,-3
    80003c74:	10079073          	csrw	sstatus,a5
    80003c78:	fffff097          	auipc	ra,0xfffff
    80003c7c:	8e4080e7          	jalr	-1820(ra) # 8000255c <mycpu>
    80003c80:	07852783          	lw	a5,120(a0)
    80003c84:	06078e63          	beqz	a5,80003d00 <acquire+0xb4>
    80003c88:	fffff097          	auipc	ra,0xfffff
    80003c8c:	8d4080e7          	jalr	-1836(ra) # 8000255c <mycpu>
    80003c90:	07852783          	lw	a5,120(a0)
    80003c94:	0004a703          	lw	a4,0(s1)
    80003c98:	0017879b          	addiw	a5,a5,1
    80003c9c:	06f52c23          	sw	a5,120(a0)
    80003ca0:	04071063          	bnez	a4,80003ce0 <acquire+0x94>
    80003ca4:	00100713          	li	a4,1
    80003ca8:	00070793          	mv	a5,a4
    80003cac:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003cb0:	0007879b          	sext.w	a5,a5
    80003cb4:	fe079ae3          	bnez	a5,80003ca8 <acquire+0x5c>
    80003cb8:	0ff0000f          	fence
    80003cbc:	fffff097          	auipc	ra,0xfffff
    80003cc0:	8a0080e7          	jalr	-1888(ra) # 8000255c <mycpu>
    80003cc4:	01813083          	ld	ra,24(sp)
    80003cc8:	01013403          	ld	s0,16(sp)
    80003ccc:	00a4b823          	sd	a0,16(s1)
    80003cd0:	00013903          	ld	s2,0(sp)
    80003cd4:	00813483          	ld	s1,8(sp)
    80003cd8:	02010113          	addi	sp,sp,32
    80003cdc:	00008067          	ret
    80003ce0:	0104b903          	ld	s2,16(s1)
    80003ce4:	fffff097          	auipc	ra,0xfffff
    80003ce8:	878080e7          	jalr	-1928(ra) # 8000255c <mycpu>
    80003cec:	faa91ce3          	bne	s2,a0,80003ca4 <acquire+0x58>
    80003cf0:	00001517          	auipc	a0,0x1
    80003cf4:	5b850513          	addi	a0,a0,1464 # 800052a8 <digits+0x20>
    80003cf8:	fffff097          	auipc	ra,0xfffff
    80003cfc:	224080e7          	jalr	548(ra) # 80002f1c <panic>
    80003d00:	00195913          	srli	s2,s2,0x1
    80003d04:	fffff097          	auipc	ra,0xfffff
    80003d08:	858080e7          	jalr	-1960(ra) # 8000255c <mycpu>
    80003d0c:	00197913          	andi	s2,s2,1
    80003d10:	07252e23          	sw	s2,124(a0)
    80003d14:	f75ff06f          	j	80003c88 <acquire+0x3c>

0000000080003d18 <release>:
    80003d18:	fe010113          	addi	sp,sp,-32
    80003d1c:	00813823          	sd	s0,16(sp)
    80003d20:	00113c23          	sd	ra,24(sp)
    80003d24:	00913423          	sd	s1,8(sp)
    80003d28:	01213023          	sd	s2,0(sp)
    80003d2c:	02010413          	addi	s0,sp,32
    80003d30:	00052783          	lw	a5,0(a0)
    80003d34:	00079a63          	bnez	a5,80003d48 <release+0x30>
    80003d38:	00001517          	auipc	a0,0x1
    80003d3c:	57850513          	addi	a0,a0,1400 # 800052b0 <digits+0x28>
    80003d40:	fffff097          	auipc	ra,0xfffff
    80003d44:	1dc080e7          	jalr	476(ra) # 80002f1c <panic>
    80003d48:	01053903          	ld	s2,16(a0)
    80003d4c:	00050493          	mv	s1,a0
    80003d50:	fffff097          	auipc	ra,0xfffff
    80003d54:	80c080e7          	jalr	-2036(ra) # 8000255c <mycpu>
    80003d58:	fea910e3          	bne	s2,a0,80003d38 <release+0x20>
    80003d5c:	0004b823          	sd	zero,16(s1)
    80003d60:	0ff0000f          	fence
    80003d64:	0f50000f          	fence	iorw,ow
    80003d68:	0804a02f          	amoswap.w	zero,zero,(s1)
    80003d6c:	ffffe097          	auipc	ra,0xffffe
    80003d70:	7f0080e7          	jalr	2032(ra) # 8000255c <mycpu>
    80003d74:	100027f3          	csrr	a5,sstatus
    80003d78:	0027f793          	andi	a5,a5,2
    80003d7c:	04079a63          	bnez	a5,80003dd0 <release+0xb8>
    80003d80:	07852783          	lw	a5,120(a0)
    80003d84:	02f05e63          	blez	a5,80003dc0 <release+0xa8>
    80003d88:	fff7871b          	addiw	a4,a5,-1
    80003d8c:	06e52c23          	sw	a4,120(a0)
    80003d90:	00071c63          	bnez	a4,80003da8 <release+0x90>
    80003d94:	07c52783          	lw	a5,124(a0)
    80003d98:	00078863          	beqz	a5,80003da8 <release+0x90>
    80003d9c:	100027f3          	csrr	a5,sstatus
    80003da0:	0027e793          	ori	a5,a5,2
    80003da4:	10079073          	csrw	sstatus,a5
    80003da8:	01813083          	ld	ra,24(sp)
    80003dac:	01013403          	ld	s0,16(sp)
    80003db0:	00813483          	ld	s1,8(sp)
    80003db4:	00013903          	ld	s2,0(sp)
    80003db8:	02010113          	addi	sp,sp,32
    80003dbc:	00008067          	ret
    80003dc0:	00001517          	auipc	a0,0x1
    80003dc4:	51050513          	addi	a0,a0,1296 # 800052d0 <digits+0x48>
    80003dc8:	fffff097          	auipc	ra,0xfffff
    80003dcc:	154080e7          	jalr	340(ra) # 80002f1c <panic>
    80003dd0:	00001517          	auipc	a0,0x1
    80003dd4:	4e850513          	addi	a0,a0,1256 # 800052b8 <digits+0x30>
    80003dd8:	fffff097          	auipc	ra,0xfffff
    80003ddc:	144080e7          	jalr	324(ra) # 80002f1c <panic>

0000000080003de0 <holding>:
    80003de0:	00052783          	lw	a5,0(a0)
    80003de4:	00079663          	bnez	a5,80003df0 <holding+0x10>
    80003de8:	00000513          	li	a0,0
    80003dec:	00008067          	ret
    80003df0:	fe010113          	addi	sp,sp,-32
    80003df4:	00813823          	sd	s0,16(sp)
    80003df8:	00913423          	sd	s1,8(sp)
    80003dfc:	00113c23          	sd	ra,24(sp)
    80003e00:	02010413          	addi	s0,sp,32
    80003e04:	01053483          	ld	s1,16(a0)
    80003e08:	ffffe097          	auipc	ra,0xffffe
    80003e0c:	754080e7          	jalr	1876(ra) # 8000255c <mycpu>
    80003e10:	01813083          	ld	ra,24(sp)
    80003e14:	01013403          	ld	s0,16(sp)
    80003e18:	40a48533          	sub	a0,s1,a0
    80003e1c:	00153513          	seqz	a0,a0
    80003e20:	00813483          	ld	s1,8(sp)
    80003e24:	02010113          	addi	sp,sp,32
    80003e28:	00008067          	ret

0000000080003e2c <push_off>:
    80003e2c:	fe010113          	addi	sp,sp,-32
    80003e30:	00813823          	sd	s0,16(sp)
    80003e34:	00113c23          	sd	ra,24(sp)
    80003e38:	00913423          	sd	s1,8(sp)
    80003e3c:	02010413          	addi	s0,sp,32
    80003e40:	100024f3          	csrr	s1,sstatus
    80003e44:	100027f3          	csrr	a5,sstatus
    80003e48:	ffd7f793          	andi	a5,a5,-3
    80003e4c:	10079073          	csrw	sstatus,a5
    80003e50:	ffffe097          	auipc	ra,0xffffe
    80003e54:	70c080e7          	jalr	1804(ra) # 8000255c <mycpu>
    80003e58:	07852783          	lw	a5,120(a0)
    80003e5c:	02078663          	beqz	a5,80003e88 <push_off+0x5c>
    80003e60:	ffffe097          	auipc	ra,0xffffe
    80003e64:	6fc080e7          	jalr	1788(ra) # 8000255c <mycpu>
    80003e68:	07852783          	lw	a5,120(a0)
    80003e6c:	01813083          	ld	ra,24(sp)
    80003e70:	01013403          	ld	s0,16(sp)
    80003e74:	0017879b          	addiw	a5,a5,1
    80003e78:	06f52c23          	sw	a5,120(a0)
    80003e7c:	00813483          	ld	s1,8(sp)
    80003e80:	02010113          	addi	sp,sp,32
    80003e84:	00008067          	ret
    80003e88:	0014d493          	srli	s1,s1,0x1
    80003e8c:	ffffe097          	auipc	ra,0xffffe
    80003e90:	6d0080e7          	jalr	1744(ra) # 8000255c <mycpu>
    80003e94:	0014f493          	andi	s1,s1,1
    80003e98:	06952e23          	sw	s1,124(a0)
    80003e9c:	fc5ff06f          	j	80003e60 <push_off+0x34>

0000000080003ea0 <pop_off>:
    80003ea0:	ff010113          	addi	sp,sp,-16
    80003ea4:	00813023          	sd	s0,0(sp)
    80003ea8:	00113423          	sd	ra,8(sp)
    80003eac:	01010413          	addi	s0,sp,16
    80003eb0:	ffffe097          	auipc	ra,0xffffe
    80003eb4:	6ac080e7          	jalr	1708(ra) # 8000255c <mycpu>
    80003eb8:	100027f3          	csrr	a5,sstatus
    80003ebc:	0027f793          	andi	a5,a5,2
    80003ec0:	04079663          	bnez	a5,80003f0c <pop_off+0x6c>
    80003ec4:	07852783          	lw	a5,120(a0)
    80003ec8:	02f05a63          	blez	a5,80003efc <pop_off+0x5c>
    80003ecc:	fff7871b          	addiw	a4,a5,-1
    80003ed0:	06e52c23          	sw	a4,120(a0)
    80003ed4:	00071c63          	bnez	a4,80003eec <pop_off+0x4c>
    80003ed8:	07c52783          	lw	a5,124(a0)
    80003edc:	00078863          	beqz	a5,80003eec <pop_off+0x4c>
    80003ee0:	100027f3          	csrr	a5,sstatus
    80003ee4:	0027e793          	ori	a5,a5,2
    80003ee8:	10079073          	csrw	sstatus,a5
    80003eec:	00813083          	ld	ra,8(sp)
    80003ef0:	00013403          	ld	s0,0(sp)
    80003ef4:	01010113          	addi	sp,sp,16
    80003ef8:	00008067          	ret
    80003efc:	00001517          	auipc	a0,0x1
    80003f00:	3d450513          	addi	a0,a0,980 # 800052d0 <digits+0x48>
    80003f04:	fffff097          	auipc	ra,0xfffff
    80003f08:	018080e7          	jalr	24(ra) # 80002f1c <panic>
    80003f0c:	00001517          	auipc	a0,0x1
    80003f10:	3ac50513          	addi	a0,a0,940 # 800052b8 <digits+0x30>
    80003f14:	fffff097          	auipc	ra,0xfffff
    80003f18:	008080e7          	jalr	8(ra) # 80002f1c <panic>

0000000080003f1c <push_on>:
    80003f1c:	fe010113          	addi	sp,sp,-32
    80003f20:	00813823          	sd	s0,16(sp)
    80003f24:	00113c23          	sd	ra,24(sp)
    80003f28:	00913423          	sd	s1,8(sp)
    80003f2c:	02010413          	addi	s0,sp,32
    80003f30:	100024f3          	csrr	s1,sstatus
    80003f34:	100027f3          	csrr	a5,sstatus
    80003f38:	0027e793          	ori	a5,a5,2
    80003f3c:	10079073          	csrw	sstatus,a5
    80003f40:	ffffe097          	auipc	ra,0xffffe
    80003f44:	61c080e7          	jalr	1564(ra) # 8000255c <mycpu>
    80003f48:	07852783          	lw	a5,120(a0)
    80003f4c:	02078663          	beqz	a5,80003f78 <push_on+0x5c>
    80003f50:	ffffe097          	auipc	ra,0xffffe
    80003f54:	60c080e7          	jalr	1548(ra) # 8000255c <mycpu>
    80003f58:	07852783          	lw	a5,120(a0)
    80003f5c:	01813083          	ld	ra,24(sp)
    80003f60:	01013403          	ld	s0,16(sp)
    80003f64:	0017879b          	addiw	a5,a5,1
    80003f68:	06f52c23          	sw	a5,120(a0)
    80003f6c:	00813483          	ld	s1,8(sp)
    80003f70:	02010113          	addi	sp,sp,32
    80003f74:	00008067          	ret
    80003f78:	0014d493          	srli	s1,s1,0x1
    80003f7c:	ffffe097          	auipc	ra,0xffffe
    80003f80:	5e0080e7          	jalr	1504(ra) # 8000255c <mycpu>
    80003f84:	0014f493          	andi	s1,s1,1
    80003f88:	06952e23          	sw	s1,124(a0)
    80003f8c:	fc5ff06f          	j	80003f50 <push_on+0x34>

0000000080003f90 <pop_on>:
    80003f90:	ff010113          	addi	sp,sp,-16
    80003f94:	00813023          	sd	s0,0(sp)
    80003f98:	00113423          	sd	ra,8(sp)
    80003f9c:	01010413          	addi	s0,sp,16
    80003fa0:	ffffe097          	auipc	ra,0xffffe
    80003fa4:	5bc080e7          	jalr	1468(ra) # 8000255c <mycpu>
    80003fa8:	100027f3          	csrr	a5,sstatus
    80003fac:	0027f793          	andi	a5,a5,2
    80003fb0:	04078463          	beqz	a5,80003ff8 <pop_on+0x68>
    80003fb4:	07852783          	lw	a5,120(a0)
    80003fb8:	02f05863          	blez	a5,80003fe8 <pop_on+0x58>
    80003fbc:	fff7879b          	addiw	a5,a5,-1
    80003fc0:	06f52c23          	sw	a5,120(a0)
    80003fc4:	07853783          	ld	a5,120(a0)
    80003fc8:	00079863          	bnez	a5,80003fd8 <pop_on+0x48>
    80003fcc:	100027f3          	csrr	a5,sstatus
    80003fd0:	ffd7f793          	andi	a5,a5,-3
    80003fd4:	10079073          	csrw	sstatus,a5
    80003fd8:	00813083          	ld	ra,8(sp)
    80003fdc:	00013403          	ld	s0,0(sp)
    80003fe0:	01010113          	addi	sp,sp,16
    80003fe4:	00008067          	ret
    80003fe8:	00001517          	auipc	a0,0x1
    80003fec:	31050513          	addi	a0,a0,784 # 800052f8 <digits+0x70>
    80003ff0:	fffff097          	auipc	ra,0xfffff
    80003ff4:	f2c080e7          	jalr	-212(ra) # 80002f1c <panic>
    80003ff8:	00001517          	auipc	a0,0x1
    80003ffc:	2e050513          	addi	a0,a0,736 # 800052d8 <digits+0x50>
    80004000:	fffff097          	auipc	ra,0xfffff
    80004004:	f1c080e7          	jalr	-228(ra) # 80002f1c <panic>

0000000080004008 <__memset>:
    80004008:	ff010113          	addi	sp,sp,-16
    8000400c:	00813423          	sd	s0,8(sp)
    80004010:	01010413          	addi	s0,sp,16
    80004014:	1a060e63          	beqz	a2,800041d0 <__memset+0x1c8>
    80004018:	40a007b3          	neg	a5,a0
    8000401c:	0077f793          	andi	a5,a5,7
    80004020:	00778693          	addi	a3,a5,7
    80004024:	00b00813          	li	a6,11
    80004028:	0ff5f593          	andi	a1,a1,255
    8000402c:	fff6071b          	addiw	a4,a2,-1
    80004030:	1b06e663          	bltu	a3,a6,800041dc <__memset+0x1d4>
    80004034:	1cd76463          	bltu	a4,a3,800041fc <__memset+0x1f4>
    80004038:	1a078e63          	beqz	a5,800041f4 <__memset+0x1ec>
    8000403c:	00b50023          	sb	a1,0(a0)
    80004040:	00100713          	li	a4,1
    80004044:	1ae78463          	beq	a5,a4,800041ec <__memset+0x1e4>
    80004048:	00b500a3          	sb	a1,1(a0)
    8000404c:	00200713          	li	a4,2
    80004050:	1ae78a63          	beq	a5,a4,80004204 <__memset+0x1fc>
    80004054:	00b50123          	sb	a1,2(a0)
    80004058:	00300713          	li	a4,3
    8000405c:	18e78463          	beq	a5,a4,800041e4 <__memset+0x1dc>
    80004060:	00b501a3          	sb	a1,3(a0)
    80004064:	00400713          	li	a4,4
    80004068:	1ae78263          	beq	a5,a4,8000420c <__memset+0x204>
    8000406c:	00b50223          	sb	a1,4(a0)
    80004070:	00500713          	li	a4,5
    80004074:	1ae78063          	beq	a5,a4,80004214 <__memset+0x20c>
    80004078:	00b502a3          	sb	a1,5(a0)
    8000407c:	00700713          	li	a4,7
    80004080:	18e79e63          	bne	a5,a4,8000421c <__memset+0x214>
    80004084:	00b50323          	sb	a1,6(a0)
    80004088:	00700e93          	li	t4,7
    8000408c:	00859713          	slli	a4,a1,0x8
    80004090:	00e5e733          	or	a4,a1,a4
    80004094:	01059e13          	slli	t3,a1,0x10
    80004098:	01c76e33          	or	t3,a4,t3
    8000409c:	01859313          	slli	t1,a1,0x18
    800040a0:	006e6333          	or	t1,t3,t1
    800040a4:	02059893          	slli	a7,a1,0x20
    800040a8:	40f60e3b          	subw	t3,a2,a5
    800040ac:	011368b3          	or	a7,t1,a7
    800040b0:	02859813          	slli	a6,a1,0x28
    800040b4:	0108e833          	or	a6,a7,a6
    800040b8:	03059693          	slli	a3,a1,0x30
    800040bc:	003e589b          	srliw	a7,t3,0x3
    800040c0:	00d866b3          	or	a3,a6,a3
    800040c4:	03859713          	slli	a4,a1,0x38
    800040c8:	00389813          	slli	a6,a7,0x3
    800040cc:	00f507b3          	add	a5,a0,a5
    800040d0:	00e6e733          	or	a4,a3,a4
    800040d4:	000e089b          	sext.w	a7,t3
    800040d8:	00f806b3          	add	a3,a6,a5
    800040dc:	00e7b023          	sd	a4,0(a5)
    800040e0:	00878793          	addi	a5,a5,8
    800040e4:	fed79ce3          	bne	a5,a3,800040dc <__memset+0xd4>
    800040e8:	ff8e7793          	andi	a5,t3,-8
    800040ec:	0007871b          	sext.w	a4,a5
    800040f0:	01d787bb          	addw	a5,a5,t4
    800040f4:	0ce88e63          	beq	a7,a4,800041d0 <__memset+0x1c8>
    800040f8:	00f50733          	add	a4,a0,a5
    800040fc:	00b70023          	sb	a1,0(a4)
    80004100:	0017871b          	addiw	a4,a5,1
    80004104:	0cc77663          	bgeu	a4,a2,800041d0 <__memset+0x1c8>
    80004108:	00e50733          	add	a4,a0,a4
    8000410c:	00b70023          	sb	a1,0(a4)
    80004110:	0027871b          	addiw	a4,a5,2
    80004114:	0ac77e63          	bgeu	a4,a2,800041d0 <__memset+0x1c8>
    80004118:	00e50733          	add	a4,a0,a4
    8000411c:	00b70023          	sb	a1,0(a4)
    80004120:	0037871b          	addiw	a4,a5,3
    80004124:	0ac77663          	bgeu	a4,a2,800041d0 <__memset+0x1c8>
    80004128:	00e50733          	add	a4,a0,a4
    8000412c:	00b70023          	sb	a1,0(a4)
    80004130:	0047871b          	addiw	a4,a5,4
    80004134:	08c77e63          	bgeu	a4,a2,800041d0 <__memset+0x1c8>
    80004138:	00e50733          	add	a4,a0,a4
    8000413c:	00b70023          	sb	a1,0(a4)
    80004140:	0057871b          	addiw	a4,a5,5
    80004144:	08c77663          	bgeu	a4,a2,800041d0 <__memset+0x1c8>
    80004148:	00e50733          	add	a4,a0,a4
    8000414c:	00b70023          	sb	a1,0(a4)
    80004150:	0067871b          	addiw	a4,a5,6
    80004154:	06c77e63          	bgeu	a4,a2,800041d0 <__memset+0x1c8>
    80004158:	00e50733          	add	a4,a0,a4
    8000415c:	00b70023          	sb	a1,0(a4)
    80004160:	0077871b          	addiw	a4,a5,7
    80004164:	06c77663          	bgeu	a4,a2,800041d0 <__memset+0x1c8>
    80004168:	00e50733          	add	a4,a0,a4
    8000416c:	00b70023          	sb	a1,0(a4)
    80004170:	0087871b          	addiw	a4,a5,8
    80004174:	04c77e63          	bgeu	a4,a2,800041d0 <__memset+0x1c8>
    80004178:	00e50733          	add	a4,a0,a4
    8000417c:	00b70023          	sb	a1,0(a4)
    80004180:	0097871b          	addiw	a4,a5,9
    80004184:	04c77663          	bgeu	a4,a2,800041d0 <__memset+0x1c8>
    80004188:	00e50733          	add	a4,a0,a4
    8000418c:	00b70023          	sb	a1,0(a4)
    80004190:	00a7871b          	addiw	a4,a5,10
    80004194:	02c77e63          	bgeu	a4,a2,800041d0 <__memset+0x1c8>
    80004198:	00e50733          	add	a4,a0,a4
    8000419c:	00b70023          	sb	a1,0(a4)
    800041a0:	00b7871b          	addiw	a4,a5,11
    800041a4:	02c77663          	bgeu	a4,a2,800041d0 <__memset+0x1c8>
    800041a8:	00e50733          	add	a4,a0,a4
    800041ac:	00b70023          	sb	a1,0(a4)
    800041b0:	00c7871b          	addiw	a4,a5,12
    800041b4:	00c77e63          	bgeu	a4,a2,800041d0 <__memset+0x1c8>
    800041b8:	00e50733          	add	a4,a0,a4
    800041bc:	00b70023          	sb	a1,0(a4)
    800041c0:	00d7879b          	addiw	a5,a5,13
    800041c4:	00c7f663          	bgeu	a5,a2,800041d0 <__memset+0x1c8>
    800041c8:	00f507b3          	add	a5,a0,a5
    800041cc:	00b78023          	sb	a1,0(a5)
    800041d0:	00813403          	ld	s0,8(sp)
    800041d4:	01010113          	addi	sp,sp,16
    800041d8:	00008067          	ret
    800041dc:	00b00693          	li	a3,11
    800041e0:	e55ff06f          	j	80004034 <__memset+0x2c>
    800041e4:	00300e93          	li	t4,3
    800041e8:	ea5ff06f          	j	8000408c <__memset+0x84>
    800041ec:	00100e93          	li	t4,1
    800041f0:	e9dff06f          	j	8000408c <__memset+0x84>
    800041f4:	00000e93          	li	t4,0
    800041f8:	e95ff06f          	j	8000408c <__memset+0x84>
    800041fc:	00000793          	li	a5,0
    80004200:	ef9ff06f          	j	800040f8 <__memset+0xf0>
    80004204:	00200e93          	li	t4,2
    80004208:	e85ff06f          	j	8000408c <__memset+0x84>
    8000420c:	00400e93          	li	t4,4
    80004210:	e7dff06f          	j	8000408c <__memset+0x84>
    80004214:	00500e93          	li	t4,5
    80004218:	e75ff06f          	j	8000408c <__memset+0x84>
    8000421c:	00600e93          	li	t4,6
    80004220:	e6dff06f          	j	8000408c <__memset+0x84>

0000000080004224 <__memmove>:
    80004224:	ff010113          	addi	sp,sp,-16
    80004228:	00813423          	sd	s0,8(sp)
    8000422c:	01010413          	addi	s0,sp,16
    80004230:	0e060863          	beqz	a2,80004320 <__memmove+0xfc>
    80004234:	fff6069b          	addiw	a3,a2,-1
    80004238:	0006881b          	sext.w	a6,a3
    8000423c:	0ea5e863          	bltu	a1,a0,8000432c <__memmove+0x108>
    80004240:	00758713          	addi	a4,a1,7
    80004244:	00a5e7b3          	or	a5,a1,a0
    80004248:	40a70733          	sub	a4,a4,a0
    8000424c:	0077f793          	andi	a5,a5,7
    80004250:	00f73713          	sltiu	a4,a4,15
    80004254:	00174713          	xori	a4,a4,1
    80004258:	0017b793          	seqz	a5,a5
    8000425c:	00e7f7b3          	and	a5,a5,a4
    80004260:	10078863          	beqz	a5,80004370 <__memmove+0x14c>
    80004264:	00900793          	li	a5,9
    80004268:	1107f463          	bgeu	a5,a6,80004370 <__memmove+0x14c>
    8000426c:	0036581b          	srliw	a6,a2,0x3
    80004270:	fff8081b          	addiw	a6,a6,-1
    80004274:	02081813          	slli	a6,a6,0x20
    80004278:	01d85893          	srli	a7,a6,0x1d
    8000427c:	00858813          	addi	a6,a1,8
    80004280:	00058793          	mv	a5,a1
    80004284:	00050713          	mv	a4,a0
    80004288:	01088833          	add	a6,a7,a6
    8000428c:	0007b883          	ld	a7,0(a5)
    80004290:	00878793          	addi	a5,a5,8
    80004294:	00870713          	addi	a4,a4,8
    80004298:	ff173c23          	sd	a7,-8(a4)
    8000429c:	ff0798e3          	bne	a5,a6,8000428c <__memmove+0x68>
    800042a0:	ff867713          	andi	a4,a2,-8
    800042a4:	02071793          	slli	a5,a4,0x20
    800042a8:	0207d793          	srli	a5,a5,0x20
    800042ac:	00f585b3          	add	a1,a1,a5
    800042b0:	40e686bb          	subw	a3,a3,a4
    800042b4:	00f507b3          	add	a5,a0,a5
    800042b8:	06e60463          	beq	a2,a4,80004320 <__memmove+0xfc>
    800042bc:	0005c703          	lbu	a4,0(a1)
    800042c0:	00e78023          	sb	a4,0(a5)
    800042c4:	04068e63          	beqz	a3,80004320 <__memmove+0xfc>
    800042c8:	0015c603          	lbu	a2,1(a1)
    800042cc:	00100713          	li	a4,1
    800042d0:	00c780a3          	sb	a2,1(a5)
    800042d4:	04e68663          	beq	a3,a4,80004320 <__memmove+0xfc>
    800042d8:	0025c603          	lbu	a2,2(a1)
    800042dc:	00200713          	li	a4,2
    800042e0:	00c78123          	sb	a2,2(a5)
    800042e4:	02e68e63          	beq	a3,a4,80004320 <__memmove+0xfc>
    800042e8:	0035c603          	lbu	a2,3(a1)
    800042ec:	00300713          	li	a4,3
    800042f0:	00c781a3          	sb	a2,3(a5)
    800042f4:	02e68663          	beq	a3,a4,80004320 <__memmove+0xfc>
    800042f8:	0045c603          	lbu	a2,4(a1)
    800042fc:	00400713          	li	a4,4
    80004300:	00c78223          	sb	a2,4(a5)
    80004304:	00e68e63          	beq	a3,a4,80004320 <__memmove+0xfc>
    80004308:	0055c603          	lbu	a2,5(a1)
    8000430c:	00500713          	li	a4,5
    80004310:	00c782a3          	sb	a2,5(a5)
    80004314:	00e68663          	beq	a3,a4,80004320 <__memmove+0xfc>
    80004318:	0065c703          	lbu	a4,6(a1)
    8000431c:	00e78323          	sb	a4,6(a5)
    80004320:	00813403          	ld	s0,8(sp)
    80004324:	01010113          	addi	sp,sp,16
    80004328:	00008067          	ret
    8000432c:	02061713          	slli	a4,a2,0x20
    80004330:	02075713          	srli	a4,a4,0x20
    80004334:	00e587b3          	add	a5,a1,a4
    80004338:	f0f574e3          	bgeu	a0,a5,80004240 <__memmove+0x1c>
    8000433c:	02069613          	slli	a2,a3,0x20
    80004340:	02065613          	srli	a2,a2,0x20
    80004344:	fff64613          	not	a2,a2
    80004348:	00e50733          	add	a4,a0,a4
    8000434c:	00c78633          	add	a2,a5,a2
    80004350:	fff7c683          	lbu	a3,-1(a5)
    80004354:	fff78793          	addi	a5,a5,-1
    80004358:	fff70713          	addi	a4,a4,-1
    8000435c:	00d70023          	sb	a3,0(a4)
    80004360:	fec798e3          	bne	a5,a2,80004350 <__memmove+0x12c>
    80004364:	00813403          	ld	s0,8(sp)
    80004368:	01010113          	addi	sp,sp,16
    8000436c:	00008067          	ret
    80004370:	02069713          	slli	a4,a3,0x20
    80004374:	02075713          	srli	a4,a4,0x20
    80004378:	00170713          	addi	a4,a4,1
    8000437c:	00e50733          	add	a4,a0,a4
    80004380:	00050793          	mv	a5,a0
    80004384:	0005c683          	lbu	a3,0(a1)
    80004388:	00178793          	addi	a5,a5,1
    8000438c:	00158593          	addi	a1,a1,1
    80004390:	fed78fa3          	sb	a3,-1(a5)
    80004394:	fee798e3          	bne	a5,a4,80004384 <__memmove+0x160>
    80004398:	f89ff06f          	j	80004320 <__memmove+0xfc>

000000008000439c <__putc>:
    8000439c:	fe010113          	addi	sp,sp,-32
    800043a0:	00813823          	sd	s0,16(sp)
    800043a4:	00113c23          	sd	ra,24(sp)
    800043a8:	02010413          	addi	s0,sp,32
    800043ac:	00050793          	mv	a5,a0
    800043b0:	fef40593          	addi	a1,s0,-17
    800043b4:	00100613          	li	a2,1
    800043b8:	00000513          	li	a0,0
    800043bc:	fef407a3          	sb	a5,-17(s0)
    800043c0:	fffff097          	auipc	ra,0xfffff
    800043c4:	b3c080e7          	jalr	-1220(ra) # 80002efc <console_write>
    800043c8:	01813083          	ld	ra,24(sp)
    800043cc:	01013403          	ld	s0,16(sp)
    800043d0:	02010113          	addi	sp,sp,32
    800043d4:	00008067          	ret

00000000800043d8 <__getc>:
    800043d8:	fe010113          	addi	sp,sp,-32
    800043dc:	00813823          	sd	s0,16(sp)
    800043e0:	00113c23          	sd	ra,24(sp)
    800043e4:	02010413          	addi	s0,sp,32
    800043e8:	fe840593          	addi	a1,s0,-24
    800043ec:	00100613          	li	a2,1
    800043f0:	00000513          	li	a0,0
    800043f4:	fffff097          	auipc	ra,0xfffff
    800043f8:	ae8080e7          	jalr	-1304(ra) # 80002edc <console_read>
    800043fc:	fe844503          	lbu	a0,-24(s0)
    80004400:	01813083          	ld	ra,24(sp)
    80004404:	01013403          	ld	s0,16(sp)
    80004408:	02010113          	addi	sp,sp,32
    8000440c:	00008067          	ret

0000000080004410 <console_handler>:
    80004410:	fe010113          	addi	sp,sp,-32
    80004414:	00813823          	sd	s0,16(sp)
    80004418:	00113c23          	sd	ra,24(sp)
    8000441c:	00913423          	sd	s1,8(sp)
    80004420:	02010413          	addi	s0,sp,32
    80004424:	14202773          	csrr	a4,scause
    80004428:	100027f3          	csrr	a5,sstatus
    8000442c:	0027f793          	andi	a5,a5,2
    80004430:	06079e63          	bnez	a5,800044ac <console_handler+0x9c>
    80004434:	00074c63          	bltz	a4,8000444c <console_handler+0x3c>
    80004438:	01813083          	ld	ra,24(sp)
    8000443c:	01013403          	ld	s0,16(sp)
    80004440:	00813483          	ld	s1,8(sp)
    80004444:	02010113          	addi	sp,sp,32
    80004448:	00008067          	ret
    8000444c:	0ff77713          	andi	a4,a4,255
    80004450:	00900793          	li	a5,9
    80004454:	fef712e3          	bne	a4,a5,80004438 <console_handler+0x28>
    80004458:	ffffe097          	auipc	ra,0xffffe
    8000445c:	6dc080e7          	jalr	1756(ra) # 80002b34 <plic_claim>
    80004460:	00a00793          	li	a5,10
    80004464:	00050493          	mv	s1,a0
    80004468:	02f50c63          	beq	a0,a5,800044a0 <console_handler+0x90>
    8000446c:	fc0506e3          	beqz	a0,80004438 <console_handler+0x28>
    80004470:	00050593          	mv	a1,a0
    80004474:	00001517          	auipc	a0,0x1
    80004478:	d8c50513          	addi	a0,a0,-628 # 80005200 <_ZZ12printIntegermE6digits+0xe0>
    8000447c:	fffff097          	auipc	ra,0xfffff
    80004480:	afc080e7          	jalr	-1284(ra) # 80002f78 <__printf>
    80004484:	01013403          	ld	s0,16(sp)
    80004488:	01813083          	ld	ra,24(sp)
    8000448c:	00048513          	mv	a0,s1
    80004490:	00813483          	ld	s1,8(sp)
    80004494:	02010113          	addi	sp,sp,32
    80004498:	ffffe317          	auipc	t1,0xffffe
    8000449c:	6d430067          	jr	1748(t1) # 80002b6c <plic_complete>
    800044a0:	fffff097          	auipc	ra,0xfffff
    800044a4:	3e0080e7          	jalr	992(ra) # 80003880 <uartintr>
    800044a8:	fddff06f          	j	80004484 <console_handler+0x74>
    800044ac:	00001517          	auipc	a0,0x1
    800044b0:	e5450513          	addi	a0,a0,-428 # 80005300 <digits+0x78>
    800044b4:	fffff097          	auipc	ra,0xfffff
    800044b8:	a68080e7          	jalr	-1432(ra) # 80002f1c <panic>
	...
