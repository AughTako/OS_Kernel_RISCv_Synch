
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	8a013103          	ld	sp,-1888(sp) # 800058a0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	084020ef          	jal	ra,800020a0 <start>

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
    80001084:	8a22b023          	sd	sp,-1888(t0) # 80005920 <backupSP>
    call _ZN5Riscv16interruptHandlerEv
    80001088:	265000ef          	jal	ra,80001aec <_ZN5Riscv16interruptHandlerEv>

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

000000008000128c <_Z13thread_createPP3CCBPFvvE>:

int thread_create(thread_t* handle, void (*start_routine)()){ //, void* args ){
    8000128c:	ff010113          	addi	sp,sp,-16
    80001290:	00813423          	sd	s0,8(sp)
    80001294:	01010413          	addi	s0,sp,16
    //__asm__ volatile("mv a4, %0" : : "r" (stackSpace));
    //__asm__ volatile("mv a3, %0" : : "r" (args));
    __asm__ volatile("mv a2, %0" : : "r" (start_routine));
    80001298:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    8000129c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x11");
    800012a0:	01100513          	li	a0,17
    __asm__ volatile("ecall");
    800012a4:	00000073          	ecall
    //Scheduler::put(*handle);
    //(*handle)->setStart(true);
    return 0;
}
    800012a8:	00000513          	li	a0,0
    800012ac:	00813403          	ld	s0,8(sp)
    800012b0:	01010113          	addi	sp,sp,16
    800012b4:	00008067          	ret

00000000800012b8 <_Z15thread_dispatchv>:

void thread_dispatch(){
    800012b8:	ff010113          	addi	sp,sp,-16
    800012bc:	00813423          	sd	s0,8(sp)
    800012c0:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    800012c4:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    800012c8:	00000073          	ecall
}
    800012cc:	00813403          	ld	s0,8(sp)
    800012d0:	01010113          	addi	sp,sp,16
    800012d4:	00008067          	ret

00000000800012d8 <_Z11thread_exitv>:

int thread_exit(){
    800012d8:	ff010113          	addi	sp,sp,-16
    800012dc:	00813423          	sd	s0,8(sp)
    800012e0:	01010413          	addi	s0,sp,16
    __asm__ volatile ("li a0, 0x13");
    800012e4:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    800012e8:	00000073          	ecall
    return 0;
}
    800012ec:	00000513          	li	a0,0
    800012f0:	00813403          	ld	s0,8(sp)
    800012f4:	01010113          	addi	sp,sp,16
    800012f8:	00008067          	ret

00000000800012fc <_ZL9fibonaccim>:
#include "../lib/hw.h"
#include "../h/ccb.hpp"
#include "../h/print.hpp"

static uint64 fibonacci(uint64 n)
{
    800012fc:	fe010113          	addi	sp,sp,-32
    80001300:	00113c23          	sd	ra,24(sp)
    80001304:	00813823          	sd	s0,16(sp)
    80001308:	00913423          	sd	s1,8(sp)
    8000130c:	01213023          	sd	s2,0(sp)
    80001310:	02010413          	addi	s0,sp,32
    80001314:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001318:	00100793          	li	a5,1
    8000131c:	02a7f663          	bgeu	a5,a0,80001348 <_ZL9fibonaccim+0x4c>
    if (n % 4 == 0) thread_dispatch();
    80001320:	00357793          	andi	a5,a0,3
    80001324:	02078e63          	beqz	a5,80001360 <_ZL9fibonaccim+0x64>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001328:	fff48513          	addi	a0,s1,-1
    8000132c:	00000097          	auipc	ra,0x0
    80001330:	fd0080e7          	jalr	-48(ra) # 800012fc <_ZL9fibonaccim>
    80001334:	00050913          	mv	s2,a0
    80001338:	ffe48513          	addi	a0,s1,-2
    8000133c:	00000097          	auipc	ra,0x0
    80001340:	fc0080e7          	jalr	-64(ra) # 800012fc <_ZL9fibonaccim>
    80001344:	00a90533          	add	a0,s2,a0
}
    80001348:	01813083          	ld	ra,24(sp)
    8000134c:	01013403          	ld	s0,16(sp)
    80001350:	00813483          	ld	s1,8(sp)
    80001354:	00013903          	ld	s2,0(sp)
    80001358:	02010113          	addi	sp,sp,32
    8000135c:	00008067          	ret
    if (n % 4 == 0) thread_dispatch();
    80001360:	00000097          	auipc	ra,0x0
    80001364:	f58080e7          	jalr	-168(ra) # 800012b8 <_Z15thread_dispatchv>
    80001368:	fc1ff06f          	j	80001328 <_ZL9fibonaccim+0x2c>

000000008000136c <_Z11workerBodyAv>:

void workerBodyA()
{
    8000136c:	fe010113          	addi	sp,sp,-32
    80001370:	00113c23          	sd	ra,24(sp)
    80001374:	00813823          	sd	s0,16(sp)
    80001378:	00913423          	sd	s1,8(sp)
    8000137c:	01213023          	sd	s2,0(sp)
    80001380:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80001384:	00000493          	li	s1,0
    80001388:	0380006f          	j	800013c0 <_Z11workerBodyAv+0x54>
    for (; i < 3; i++)
    {
        printString("A: i=");
    8000138c:	00004517          	auipc	a0,0x4
    80001390:	c9450513          	addi	a0,a0,-876 # 80005020 <CONSOLE_STATUS+0x10>
    80001394:	00001097          	auipc	ra,0x1
    80001398:	be0080e7          	jalr	-1056(ra) # 80001f74 <_Z11printStringPKc>
        printInteger(i);
    8000139c:	00048513          	mv	a0,s1
    800013a0:	00001097          	auipc	ra,0x1
    800013a4:	c44080e7          	jalr	-956(ra) # 80001fe4 <_Z12printIntegerm>
        printString("\n");
    800013a8:	00004517          	auipc	a0,0x4
    800013ac:	d2050513          	addi	a0,a0,-736 # 800050c8 <CONSOLE_STATUS+0xb8>
    800013b0:	00001097          	auipc	ra,0x1
    800013b4:	bc4080e7          	jalr	-1084(ra) # 80001f74 <_Z11printStringPKc>
    for (; i < 3; i++)
    800013b8:	0014849b          	addiw	s1,s1,1
    800013bc:	0ff4f493          	andi	s1,s1,255
    800013c0:	00200793          	li	a5,2
    800013c4:	fc97f4e3          	bgeu	a5,s1,8000138c <_Z11workerBodyAv+0x20>
    }

    printString("A: yield\n");
    800013c8:	00004517          	auipc	a0,0x4
    800013cc:	c6050513          	addi	a0,a0,-928 # 80005028 <CONSOLE_STATUS+0x18>
    800013d0:	00001097          	auipc	ra,0x1
    800013d4:	ba4080e7          	jalr	-1116(ra) # 80001f74 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800013d8:	00700313          	li	t1,7
    thread_dispatch();
    800013dc:	00000097          	auipc	ra,0x0
    800013e0:	edc080e7          	jalr	-292(ra) # 800012b8 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800013e4:	00030913          	mv	s2,t1

    printString("A: t1=");
    800013e8:	00004517          	auipc	a0,0x4
    800013ec:	c5050513          	addi	a0,a0,-944 # 80005038 <CONSOLE_STATUS+0x28>
    800013f0:	00001097          	auipc	ra,0x1
    800013f4:	b84080e7          	jalr	-1148(ra) # 80001f74 <_Z11printStringPKc>
    printInteger(t1);
    800013f8:	00090513          	mv	a0,s2
    800013fc:	00001097          	auipc	ra,0x1
    80001400:	be8080e7          	jalr	-1048(ra) # 80001fe4 <_Z12printIntegerm>
    printString("\n");
    80001404:	00004517          	auipc	a0,0x4
    80001408:	cc450513          	addi	a0,a0,-828 # 800050c8 <CONSOLE_STATUS+0xb8>
    8000140c:	00001097          	auipc	ra,0x1
    80001410:	b68080e7          	jalr	-1176(ra) # 80001f74 <_Z11printStringPKc>

    uint64 result = fibonacci(20);
    80001414:	01400513          	li	a0,20
    80001418:	00000097          	auipc	ra,0x0
    8000141c:	ee4080e7          	jalr	-284(ra) # 800012fc <_ZL9fibonaccim>
    80001420:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    80001424:	00004517          	auipc	a0,0x4
    80001428:	c1c50513          	addi	a0,a0,-996 # 80005040 <CONSOLE_STATUS+0x30>
    8000142c:	00001097          	auipc	ra,0x1
    80001430:	b48080e7          	jalr	-1208(ra) # 80001f74 <_Z11printStringPKc>
    printInteger(result);
    80001434:	00090513          	mv	a0,s2
    80001438:	00001097          	auipc	ra,0x1
    8000143c:	bac080e7          	jalr	-1108(ra) # 80001fe4 <_Z12printIntegerm>
    printString("\n");
    80001440:	00004517          	auipc	a0,0x4
    80001444:	c8850513          	addi	a0,a0,-888 # 800050c8 <CONSOLE_STATUS+0xb8>
    80001448:	00001097          	auipc	ra,0x1
    8000144c:	b2c080e7          	jalr	-1236(ra) # 80001f74 <_Z11printStringPKc>
    80001450:	0380006f          	j	80001488 <_Z11workerBodyAv+0x11c>

    for (; i < 6; i++)
    {
        printString("A: i=");
    80001454:	00004517          	auipc	a0,0x4
    80001458:	bcc50513          	addi	a0,a0,-1076 # 80005020 <CONSOLE_STATUS+0x10>
    8000145c:	00001097          	auipc	ra,0x1
    80001460:	b18080e7          	jalr	-1256(ra) # 80001f74 <_Z11printStringPKc>
        printInteger(i);
    80001464:	00048513          	mv	a0,s1
    80001468:	00001097          	auipc	ra,0x1
    8000146c:	b7c080e7          	jalr	-1156(ra) # 80001fe4 <_Z12printIntegerm>
        printString("\n");
    80001470:	00004517          	auipc	a0,0x4
    80001474:	c5850513          	addi	a0,a0,-936 # 800050c8 <CONSOLE_STATUS+0xb8>
    80001478:	00001097          	auipc	ra,0x1
    8000147c:	afc080e7          	jalr	-1284(ra) # 80001f74 <_Z11printStringPKc>
    for (; i < 6; i++)
    80001480:	0014849b          	addiw	s1,s1,1
    80001484:	0ff4f493          	andi	s1,s1,255
    80001488:	00500793          	li	a5,5
    8000148c:	fc97f4e3          	bgeu	a5,s1,80001454 <_Z11workerBodyAv+0xe8>
    }
    printString("A:    F I N I S H E D");
    80001490:	00004517          	auipc	a0,0x4
    80001494:	bc050513          	addi	a0,a0,-1088 # 80005050 <CONSOLE_STATUS+0x40>
    80001498:	00001097          	auipc	ra,0x1
    8000149c:	adc080e7          	jalr	-1316(ra) # 80001f74 <_Z11printStringPKc>
    CCB::running->setFinished(true);
    800014a0:	00004797          	auipc	a5,0x4
    800014a4:	4087b783          	ld	a5,1032(a5) # 800058a8 <_GLOBAL_OFFSET_TABLE_+0x30>
    800014a8:	0007b783          	ld	a5,0(a5)
        MemoryAllocator::free(address);
    }

    bool isFinished() const { return finished; }

    void setFinished(bool value) { finished = value;}
    800014ac:	00100713          	li	a4,1
    800014b0:	02e78023          	sb	a4,32(a5)
    thread_dispatch();
    800014b4:	00000097          	auipc	ra,0x0
    800014b8:	e04080e7          	jalr	-508(ra) # 800012b8 <_Z15thread_dispatchv>
}
    800014bc:	01813083          	ld	ra,24(sp)
    800014c0:	01013403          	ld	s0,16(sp)
    800014c4:	00813483          	ld	s1,8(sp)
    800014c8:	00013903          	ld	s2,0(sp)
    800014cc:	02010113          	addi	sp,sp,32
    800014d0:	00008067          	ret

00000000800014d4 <_Z11workerBodyBv>:

void workerBodyB()
{
    800014d4:	fe010113          	addi	sp,sp,-32
    800014d8:	00113c23          	sd	ra,24(sp)
    800014dc:	00813823          	sd	s0,16(sp)
    800014e0:	00913423          	sd	s1,8(sp)
    800014e4:	01213023          	sd	s2,0(sp)
    800014e8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800014ec:	00a00493          	li	s1,10
    800014f0:	0380006f          	j	80001528 <_Z11workerBodyBv+0x54>
    for (; i < 13; i++)
    {
        printString("B: i=");
    800014f4:	00004517          	auipc	a0,0x4
    800014f8:	b7450513          	addi	a0,a0,-1164 # 80005068 <CONSOLE_STATUS+0x58>
    800014fc:	00001097          	auipc	ra,0x1
    80001500:	a78080e7          	jalr	-1416(ra) # 80001f74 <_Z11printStringPKc>
        printInteger(i);
    80001504:	00048513          	mv	a0,s1
    80001508:	00001097          	auipc	ra,0x1
    8000150c:	adc080e7          	jalr	-1316(ra) # 80001fe4 <_Z12printIntegerm>
        printString("\n");
    80001510:	00004517          	auipc	a0,0x4
    80001514:	bb850513          	addi	a0,a0,-1096 # 800050c8 <CONSOLE_STATUS+0xb8>
    80001518:	00001097          	auipc	ra,0x1
    8000151c:	a5c080e7          	jalr	-1444(ra) # 80001f74 <_Z11printStringPKc>
    for (; i < 13; i++)
    80001520:	0014849b          	addiw	s1,s1,1
    80001524:	0ff4f493          	andi	s1,s1,255
    80001528:	00c00793          	li	a5,12
    8000152c:	fc97f4e3          	bgeu	a5,s1,800014f4 <_Z11workerBodyBv+0x20>
    }

    printString("B: yield\n");
    80001530:	00004517          	auipc	a0,0x4
    80001534:	b4050513          	addi	a0,a0,-1216 # 80005070 <CONSOLE_STATUS+0x60>
    80001538:	00001097          	auipc	ra,0x1
    8000153c:	a3c080e7          	jalr	-1476(ra) # 80001f74 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001540:	00500313          	li	t1,5
    thread_dispatch();
    80001544:	00000097          	auipc	ra,0x0
    80001548:	d74080e7          	jalr	-652(ra) # 800012b8 <_Z15thread_dispatchv>

    uint64 result = fibonacci(23);
    8000154c:	01700513          	li	a0,23
    80001550:	00000097          	auipc	ra,0x0
    80001554:	dac080e7          	jalr	-596(ra) # 800012fc <_ZL9fibonaccim>
    80001558:	00050913          	mv	s2,a0
    printString("B: fibonaci=");
    8000155c:	00004517          	auipc	a0,0x4
    80001560:	b2450513          	addi	a0,a0,-1244 # 80005080 <CONSOLE_STATUS+0x70>
    80001564:	00001097          	auipc	ra,0x1
    80001568:	a10080e7          	jalr	-1520(ra) # 80001f74 <_Z11printStringPKc>
    printInteger(result);
    8000156c:	00090513          	mv	a0,s2
    80001570:	00001097          	auipc	ra,0x1
    80001574:	a74080e7          	jalr	-1420(ra) # 80001fe4 <_Z12printIntegerm>
    printString("\n");
    80001578:	00004517          	auipc	a0,0x4
    8000157c:	b5050513          	addi	a0,a0,-1200 # 800050c8 <CONSOLE_STATUS+0xb8>
    80001580:	00001097          	auipc	ra,0x1
    80001584:	9f4080e7          	jalr	-1548(ra) # 80001f74 <_Z11printStringPKc>
    80001588:	0380006f          	j	800015c0 <_Z11workerBodyBv+0xec>

    for (; i < 16; i++)
    {
        printString("B: i=");
    8000158c:	00004517          	auipc	a0,0x4
    80001590:	adc50513          	addi	a0,a0,-1316 # 80005068 <CONSOLE_STATUS+0x58>
    80001594:	00001097          	auipc	ra,0x1
    80001598:	9e0080e7          	jalr	-1568(ra) # 80001f74 <_Z11printStringPKc>
        printInteger(i);
    8000159c:	00048513          	mv	a0,s1
    800015a0:	00001097          	auipc	ra,0x1
    800015a4:	a44080e7          	jalr	-1468(ra) # 80001fe4 <_Z12printIntegerm>
        printString("\n");
    800015a8:	00004517          	auipc	a0,0x4
    800015ac:	b2050513          	addi	a0,a0,-1248 # 800050c8 <CONSOLE_STATUS+0xb8>
    800015b0:	00001097          	auipc	ra,0x1
    800015b4:	9c4080e7          	jalr	-1596(ra) # 80001f74 <_Z11printStringPKc>
    for (; i < 16; i++)
    800015b8:	0014849b          	addiw	s1,s1,1
    800015bc:	0ff4f493          	andi	s1,s1,255
    800015c0:	00f00793          	li	a5,15
    800015c4:	fc97f4e3          	bgeu	a5,s1,8000158c <_Z11workerBodyBv+0xb8>
    }

    CCB::running->setFinished(true);
    800015c8:	00004797          	auipc	a5,0x4
    800015cc:	2e07b783          	ld	a5,736(a5) # 800058a8 <_GLOBAL_OFFSET_TABLE_+0x30>
    800015d0:	0007b783          	ld	a5,0(a5)
    800015d4:	00100713          	li	a4,1
    800015d8:	02e78023          	sb	a4,32(a5)
    thread_dispatch();
    800015dc:	00000097          	auipc	ra,0x0
    800015e0:	cdc080e7          	jalr	-804(ra) # 800012b8 <_Z15thread_dispatchv>
    800015e4:	01813083          	ld	ra,24(sp)
    800015e8:	01013403          	ld	s0,16(sp)
    800015ec:	00813483          	ld	s1,8(sp)
    800015f0:	00013903          	ld	s2,0(sp)
    800015f4:	02010113          	addi	sp,sp,32
    800015f8:	00008067          	ret

00000000800015fc <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(CCB *ccb)
{
    readyCoroutineQueue.addLast(ccb);
    800015fc:	ff010113          	addi	sp,sp,-16
    80001600:	00813423          	sd	s0,8(sp)
    80001604:	01010413          	addi	s0,sp,16
    80001608:	00100793          	li	a5,1
    8000160c:	00f50863          	beq	a0,a5,8000161c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001610:	00813403          	ld	s0,8(sp)
    80001614:	01010113          	addi	sp,sp,16
    80001618:	00008067          	ret
    8000161c:	000107b7          	lui	a5,0x10
    80001620:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001624:	fef596e3          	bne	a1,a5,80001610 <_Z41__static_initialization_and_destruction_0ii+0x14>

    void operator delete(void* address) {
        MemoryAllocator::free(address);
    }

    List() : head(0), tail(0) {}
    80001628:	00004797          	auipc	a5,0x4
    8000162c:	2e878793          	addi	a5,a5,744 # 80005910 <_ZN9Scheduler19readyCoroutineQueueE>
    80001630:	0007b023          	sd	zero,0(a5)
    80001634:	0007b423          	sd	zero,8(a5)
    80001638:	fd9ff06f          	j	80001610 <_Z41__static_initialization_and_destruction_0ii+0x14>

000000008000163c <_ZN9Scheduler3getEv>:
{
    8000163c:	fe010113          	addi	sp,sp,-32
    80001640:	00113c23          	sd	ra,24(sp)
    80001644:	00813823          	sd	s0,16(sp)
    80001648:	00913423          	sd	s1,8(sp)
    8000164c:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80001650:	00004517          	auipc	a0,0x4
    80001654:	2c053503          	ld	a0,704(a0) # 80005910 <_ZN9Scheduler19readyCoroutineQueueE>
    80001658:	04050263          	beqz	a0,8000169c <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    8000165c:	00853783          	ld	a5,8(a0)
    80001660:	00004717          	auipc	a4,0x4
    80001664:	2af73823          	sd	a5,688(a4) # 80005910 <_ZN9Scheduler19readyCoroutineQueueE>
        if (!head) { tail = 0; }
    80001668:	02078463          	beqz	a5,80001690 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    8000166c:	00053483          	ld	s1,0(a0)
            MemoryAllocator::free(address);
    80001670:	00001097          	auipc	ra,0x1
    80001674:	848080e7          	jalr	-1976(ra) # 80001eb8 <_ZN15MemoryAllocator4freeEPv>
}
    80001678:	00048513          	mv	a0,s1
    8000167c:	01813083          	ld	ra,24(sp)
    80001680:	01013403          	ld	s0,16(sp)
    80001684:	00813483          	ld	s1,8(sp)
    80001688:	02010113          	addi	sp,sp,32
    8000168c:	00008067          	ret
        if (!head) { tail = 0; }
    80001690:	00004797          	auipc	a5,0x4
    80001694:	2807b423          	sd	zero,648(a5) # 80005918 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80001698:	fd5ff06f          	j	8000166c <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    8000169c:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    800016a0:	fd9ff06f          	j	80001678 <_ZN9Scheduler3getEv+0x3c>

00000000800016a4 <_ZN9Scheduler3putEP3CCB>:
{
    800016a4:	fe010113          	addi	sp,sp,-32
    800016a8:	00113c23          	sd	ra,24(sp)
    800016ac:	00813823          	sd	s0,16(sp)
    800016b0:	00913423          	sd	s1,8(sp)
    800016b4:	02010413          	addi	s0,sp,32
    800016b8:	00050493          	mv	s1,a0
            return MemoryAllocator::allocateB(size);
    800016bc:	01000513          	li	a0,16
    800016c0:	00000097          	auipc	ra,0x0
    800016c4:	760080e7          	jalr	1888(ra) # 80001e20 <_ZN15MemoryAllocator9allocateBEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800016c8:	00953023          	sd	s1,0(a0)
    800016cc:	00053423          	sd	zero,8(a0)
        if (tail)
    800016d0:	00004797          	auipc	a5,0x4
    800016d4:	2487b783          	ld	a5,584(a5) # 80005918 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    800016d8:	02078263          	beqz	a5,800016fc <_ZN9Scheduler3putEP3CCB+0x58>
            tail->next = elem;
    800016dc:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800016e0:	00004797          	auipc	a5,0x4
    800016e4:	22a7bc23          	sd	a0,568(a5) # 80005918 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    800016e8:	01813083          	ld	ra,24(sp)
    800016ec:	01013403          	ld	s0,16(sp)
    800016f0:	00813483          	ld	s1,8(sp)
    800016f4:	02010113          	addi	sp,sp,32
    800016f8:	00008067          	ret
            head = tail = elem;
    800016fc:	00004797          	auipc	a5,0x4
    80001700:	21478793          	addi	a5,a5,532 # 80005910 <_ZN9Scheduler19readyCoroutineQueueE>
    80001704:	00a7b423          	sd	a0,8(a5)
    80001708:	00a7b023          	sd	a0,0(a5)
    8000170c:	fddff06f          	j	800016e8 <_ZN9Scheduler3putEP3CCB+0x44>

0000000080001710 <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    80001710:	ff010113          	addi	sp,sp,-16
    80001714:	00113423          	sd	ra,8(sp)
    80001718:	00813023          	sd	s0,0(sp)
    8000171c:	01010413          	addi	s0,sp,16
    80001720:	000105b7          	lui	a1,0x10
    80001724:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001728:	00100513          	li	a0,1
    8000172c:	00000097          	auipc	ra,0x0
    80001730:	ed0080e7          	jalr	-304(ra) # 800015fc <_Z41__static_initialization_and_destruction_0ii>
    80001734:	00813083          	ld	ra,8(sp)
    80001738:	00013403          	ld	s0,0(sp)
    8000173c:	01010113          	addi	sp,sp,16
    80001740:	00008067          	ret

0000000080001744 <main>:
#include "../h/workers.hpp"
#include "../h/print.hpp"
#include "../h/syscall_c.h"

uint64 backupSP;
void main(){
    80001744:	fc010113          	addi	sp,sp,-64
    80001748:	02113c23          	sd	ra,56(sp)
    8000174c:	02813823          	sd	s0,48(sp)
    80001750:	02913423          	sd	s1,40(sp)
    80001754:	03213023          	sd	s2,32(sp)
    80001758:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    8000175c:	10000793          	li	a5,256
    80001760:	1007a073          	csrs	sstatus,a5

    Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    Riscv::w_stvec((uint64) &Riscv::interruptRoutine);
    80001764:	00004797          	auipc	a5,0x4
    80001768:	11c7b783          	ld	a5,284(a5) # 80005880 <_GLOBAL_OFFSET_TABLE_+0x8>
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    8000176c:	10579073          	csrw	stvec,a5
    MemoryAllocator::init();
    80001770:	00000097          	auipc	ra,0x0
    80001774:	55c080e7          	jalr	1372(ra) # 80001ccc <_ZN15MemoryAllocator4initEv>


    CCB *coroutines[3];

    thread_create(&coroutines[0], nullptr);
    80001778:	00000593          	li	a1,0
    8000177c:	fc840513          	addi	a0,s0,-56
    80001780:	00000097          	auipc	ra,0x0
    80001784:	b0c080e7          	jalr	-1268(ra) # 8000128c <_Z13thread_createPP3CCBPFvvE>
    CCB::running = coroutines[0];
    80001788:	fc843703          	ld	a4,-56(s0)
    8000178c:	00004797          	auipc	a5,0x4
    80001790:	11c7b783          	ld	a5,284(a5) # 800058a8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001794:	00e7b023          	sd	a4,0(a5)
    //coroutines[0] = CCB::createCoroutine(nullptr);

    thread_create(&coroutines[1], &workerBodyA);
    80001798:	00004597          	auipc	a1,0x4
    8000179c:	1005b583          	ld	a1,256(a1) # 80005898 <_GLOBAL_OFFSET_TABLE_+0x20>
    800017a0:	fd040513          	addi	a0,s0,-48
    800017a4:	00000097          	auipc	ra,0x0
    800017a8:	ae8080e7          	jalr	-1304(ra) # 8000128c <_Z13thread_createPP3CCBPFvvE>
    printString("CoroutineA created\n");
    800017ac:	00004517          	auipc	a0,0x4
    800017b0:	8e450513          	addi	a0,a0,-1820 # 80005090 <CONSOLE_STATUS+0x80>
    800017b4:	00000097          	auipc	ra,0x0
    800017b8:	7c0080e7          	jalr	1984(ra) # 80001f74 <_Z11printStringPKc>
    //coroutines[1] = CCB::createCoroutine(&workerBodyA);

    thread_create(&coroutines[2], &workerBodyB);
    800017bc:	00004597          	auipc	a1,0x4
    800017c0:	0d45b583          	ld	a1,212(a1) # 80005890 <_GLOBAL_OFFSET_TABLE_+0x18>
    800017c4:	fd840513          	addi	a0,s0,-40
    800017c8:	00000097          	auipc	ra,0x0
    800017cc:	ac4080e7          	jalr	-1340(ra) # 8000128c <_Z13thread_createPP3CCBPFvvE>
    printString("CoroutineB created\n");
    800017d0:	00004517          	auipc	a0,0x4
    800017d4:	8d850513          	addi	a0,a0,-1832 # 800050a8 <CONSOLE_STATUS+0x98>
    800017d8:	00000097          	auipc	ra,0x0
    800017dc:	79c080e7          	jalr	1948(ra) # 80001f74 <_Z11printStringPKc>
    800017e0:	00c0006f          	j	800017ec <main+0xa8>
    //coroutines[2] = CCB::createCoroutine(&workerBodyB);

    while (!(coroutines[1]->isFinished() &&
             coroutines[2]->isFinished()))
    {
        thread_dispatch();
    800017e4:	00000097          	auipc	ra,0x0
    800017e8:	ad4080e7          	jalr	-1324(ra) # 800012b8 <_Z15thread_dispatchv>
    while (!(coroutines[1]->isFinished() &&
    800017ec:	fd043783          	ld	a5,-48(s0)
    bool isFinished() const { return finished; }
    800017f0:	0207c783          	lbu	a5,32(a5)
    800017f4:	fe0788e3          	beqz	a5,800017e4 <main+0xa0>
             coroutines[2]->isFinished()))
    800017f8:	fd843783          	ld	a5,-40(s0)
    800017fc:	0207c783          	lbu	a5,32(a5)
    while (!(coroutines[1]->isFinished() &&
    80001800:	fe0782e3          	beqz	a5,800017e4 <main+0xa0>
    80001804:	fc840493          	addi	s1,s0,-56
    80001808:	0140006f          	j	8000181c <main+0xd8>
        MemoryAllocator::free(address);
    8000180c:	00090513          	mv	a0,s2
    80001810:	00000097          	auipc	ra,0x0
    80001814:	6a8080e7          	jalr	1704(ra) # 80001eb8 <_ZN15MemoryAllocator4freeEPv>
    }

    for (auto &coroutine: coroutines)
    80001818:	00848493          	addi	s1,s1,8
    8000181c:	fe040793          	addi	a5,s0,-32
    80001820:	02f48063          	beq	s1,a5,80001840 <main+0xfc>
    {
        delete coroutine;
    80001824:	0004b903          	ld	s2,0(s1)
    80001828:	fe0908e3          	beqz	s2,80001818 <main+0xd4>
    ~CCB() { delete[] stack; }
    8000182c:	00893503          	ld	a0,8(s2)
    80001830:	fc050ee3          	beqz	a0,8000180c <main+0xc8>
    80001834:	00000097          	auipc	ra,0x0
    80001838:	264080e7          	jalr	612(ra) # 80001a98 <_ZdaPv>
    8000183c:	fd1ff06f          	j	8000180c <main+0xc8>
    }
    printString("Finished\n");
    80001840:	00004517          	auipc	a0,0x4
    80001844:	88050513          	addi	a0,a0,-1920 # 800050c0 <CONSOLE_STATUS+0xb0>
    80001848:	00000097          	auipc	ra,0x0
    8000184c:	72c080e7          	jalr	1836(ra) # 80001f74 <_Z11printStringPKc>

}
    80001850:	03813083          	ld	ra,56(sp)
    80001854:	03013403          	ld	s0,48(sp)
    80001858:	02813483          	ld	s1,40(sp)
    8000185c:	02013903          	ld	s2,32(sp)
    80001860:	04010113          	addi	sp,sp,64
    80001864:	00008067          	ret

0000000080001868 <_ZN3CCB13threadWrapperEv>:
    running = Scheduler::get();

    CCB::contextSwitch(&old->context, &running->context);
}

void CCB::threadWrapper() {
    80001868:	fe010113          	addi	sp,sp,-32
    8000186c:	00113c23          	sd	ra,24(sp)
    80001870:	00813823          	sd	s0,16(sp)
    80001874:	00913423          	sd	s1,8(sp)
    80001878:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    8000187c:	00000097          	auipc	ra,0x0
    80001880:	244080e7          	jalr	580(ra) # 80001ac0 <_ZN5Riscv10popSppSpieEv>
    running->body();
    80001884:	00004497          	auipc	s1,0x4
    80001888:	0a448493          	addi	s1,s1,164 # 80005928 <_ZN3CCB7runningE>
    8000188c:	0004b783          	ld	a5,0(s1)
    80001890:	0007b783          	ld	a5,0(a5)
    80001894:	000780e7          	jalr	a5
    running->setFinished(true);
    80001898:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value;}
    8000189c:	00100713          	li	a4,1
    800018a0:	02e78023          	sb	a4,32(a5)
    thread_dispatch();
    800018a4:	00000097          	auipc	ra,0x0
    800018a8:	a14080e7          	jalr	-1516(ra) # 800012b8 <_Z15thread_dispatchv>
    800018ac:	01813083          	ld	ra,24(sp)
    800018b0:	01013403          	ld	s0,16(sp)
    800018b4:	00813483          	ld	s1,8(sp)
    800018b8:	02010113          	addi	sp,sp,32
    800018bc:	00008067          	ret

00000000800018c0 <_ZN3CCB15createCoroutineEPFvvE>:
{
    800018c0:	fe010113          	addi	sp,sp,-32
    800018c4:	00113c23          	sd	ra,24(sp)
    800018c8:	00813823          	sd	s0,16(sp)
    800018cc:	00913423          	sd	s1,8(sp)
    800018d0:	01213023          	sd	s2,0(sp)
    800018d4:	02010413          	addi	s0,sp,32
    800018d8:	00050913          	mv	s2,a0
        return MemoryAllocator::allocateB(size);
    800018dc:	02800513          	li	a0,40
    800018e0:	00000097          	auipc	ra,0x0
    800018e4:	540080e7          	jalr	1344(ra) # 80001e20 <_ZN15MemoryAllocator9allocateBEm>
    800018e8:	00050493          	mv	s1,a0
            body(body),
            stack(body != nullptr ? (uint64*) MemoryAllocator::allocateB(sizeof(uint64) * STACK_SIZE) : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            finished(false)
    800018ec:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? (uint64*) MemoryAllocator::allocateB(sizeof(uint64) * STACK_SIZE) : nullptr),
    800018f0:	00090a63          	beqz	s2,80001904 <_ZN3CCB15createCoroutineEPFvvE+0x44>
    800018f4:	00002537          	lui	a0,0x2
    800018f8:	00000097          	auipc	ra,0x0
    800018fc:	528080e7          	jalr	1320(ra) # 80001e20 <_ZN15MemoryAllocator9allocateBEm>
    80001900:	0080006f          	j	80001908 <_ZN3CCB15createCoroutineEPFvvE+0x48>
    80001904:	00000513          	li	a0,0
            finished(false)
    80001908:	00a4b423          	sd	a0,8(s1)
    8000190c:	00000797          	auipc	a5,0x0
    80001910:	f5c78793          	addi	a5,a5,-164 # 80001868 <_ZN3CCB13threadWrapperEv>
    80001914:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001918:	02050463          	beqz	a0,80001940 <_ZN3CCB15createCoroutineEPFvvE+0x80>
    8000191c:	000027b7          	lui	a5,0x2
    80001920:	00f507b3          	add	a5,a0,a5
            finished(false)
    80001924:	00f4bc23          	sd	a5,24(s1)
    80001928:	02048023          	sb	zero,32(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    8000192c:	02090c63          	beqz	s2,80001964 <_ZN3CCB15createCoroutineEPFvvE+0xa4>
    80001930:	00048513          	mv	a0,s1
    80001934:	00000097          	auipc	ra,0x0
    80001938:	d70080e7          	jalr	-656(ra) # 800016a4 <_ZN9Scheduler3putEP3CCB>
    8000193c:	0280006f          	j	80001964 <_ZN3CCB15createCoroutineEPFvvE+0xa4>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001940:	00000793          	li	a5,0
    80001944:	fe1ff06f          	j	80001924 <_ZN3CCB15createCoroutineEPFvvE+0x64>
    80001948:	00050913          	mv	s2,a0
        MemoryAllocator::free(address);
    8000194c:	00048513          	mv	a0,s1
    80001950:	00000097          	auipc	ra,0x0
    80001954:	568080e7          	jalr	1384(ra) # 80001eb8 <_ZN15MemoryAllocator4freeEPv>
    80001958:	00090513          	mv	a0,s2
    8000195c:	00005097          	auipc	ra,0x5
    80001960:	0ac080e7          	jalr	172(ra) # 80006a08 <_Unwind_Resume>
}
    80001964:	00048513          	mv	a0,s1
    80001968:	01813083          	ld	ra,24(sp)
    8000196c:	01013403          	ld	s0,16(sp)
    80001970:	00813483          	ld	s1,8(sp)
    80001974:	00013903          	ld	s2,0(sp)
    80001978:	02010113          	addi	sp,sp,32
    8000197c:	00008067          	ret

0000000080001980 <_ZN3CCB8dispatchEv>:
{
    80001980:	fe010113          	addi	sp,sp,-32
    80001984:	00113c23          	sd	ra,24(sp)
    80001988:	00813823          	sd	s0,16(sp)
    8000198c:	00913423          	sd	s1,8(sp)
    80001990:	02010413          	addi	s0,sp,32
    CCB *old = running;
    80001994:	00004497          	auipc	s1,0x4
    80001998:	f944b483          	ld	s1,-108(s1) # 80005928 <_ZN3CCB7runningE>
    bool isFinished() const { return finished; }
    8000199c:	0204c783          	lbu	a5,32(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    800019a0:	02078c63          	beqz	a5,800019d8 <_ZN3CCB8dispatchEv+0x58>
    running = Scheduler::get();
    800019a4:	00000097          	auipc	ra,0x0
    800019a8:	c98080e7          	jalr	-872(ra) # 8000163c <_ZN9Scheduler3getEv>
    800019ac:	00004797          	auipc	a5,0x4
    800019b0:	f6a7be23          	sd	a0,-132(a5) # 80005928 <_ZN3CCB7runningE>
    CCB::contextSwitch(&old->context, &running->context);
    800019b4:	01050593          	addi	a1,a0,16 # 2010 <_entry-0x7fffdff0>
    800019b8:	01048513          	addi	a0,s1,16
    800019bc:	00000097          	auipc	ra,0x0
    800019c0:	84c080e7          	jalr	-1972(ra) # 80001208 <_ZN3CCB13contextSwitchEPNS_7ContextES1_>
}
    800019c4:	01813083          	ld	ra,24(sp)
    800019c8:	01013403          	ld	s0,16(sp)
    800019cc:	00813483          	ld	s1,8(sp)
    800019d0:	02010113          	addi	sp,sp,32
    800019d4:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    800019d8:	00048513          	mv	a0,s1
    800019dc:	00000097          	auipc	ra,0x0
    800019e0:	cc8080e7          	jalr	-824(ra) # 800016a4 <_ZN9Scheduler3putEP3CCB>
    800019e4:	fc1ff06f          	j	800019a4 <_ZN3CCB8dispatchEv+0x24>

00000000800019e8 <_ZN3CCB5yieldEv>:
{
    800019e8:	ff010113          	addi	sp,sp,-16
    800019ec:	00113423          	sd	ra,8(sp)
    800019f0:	00813023          	sd	s0,0(sp)
    800019f4:	01010413          	addi	s0,sp,16
    Riscv::pushRegisters();
    800019f8:	fffff097          	auipc	ra,0xfffff
    800019fc:	718080e7          	jalr	1816(ra) # 80001110 <_ZN5Riscv13pushRegistersEv>
    CCB::dispatch();
    80001a00:	00000097          	auipc	ra,0x0
    80001a04:	f80080e7          	jalr	-128(ra) # 80001980 <_ZN3CCB8dispatchEv>
    Riscv::popRegisters();
    80001a08:	fffff097          	auipc	ra,0xfffff
    80001a0c:	784080e7          	jalr	1924(ra) # 8000118c <_ZN5Riscv12popRegistersEv>
}
    80001a10:	00813083          	ld	ra,8(sp)
    80001a14:	00013403          	ld	s0,0(sp)
    80001a18:	01010113          	addi	sp,sp,16
    80001a1c:	00008067          	ret

0000000080001a20 <_Znwm>:
// Created by os on 6/22/22.
//
#include "../h/syscall_cpp.hpp"
#include "../h/syscall_c.h"

void* operator new(size_t size) {
    80001a20:	ff010113          	addi	sp,sp,-16
    80001a24:	00113423          	sd	ra,8(sp)
    80001a28:	00813023          	sd	s0,0(sp)
    80001a2c:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001a30:	fffff097          	auipc	ra,0xfffff
    80001a34:	7ec080e7          	jalr	2028(ra) # 8000121c <_Z9mem_allocm>
}
    80001a38:	00813083          	ld	ra,8(sp)
    80001a3c:	00013403          	ld	s0,0(sp)
    80001a40:	01010113          	addi	sp,sp,16
    80001a44:	00008067          	ret

0000000080001a48 <_Znam>:
void* operator new[](size_t size) {
    80001a48:	ff010113          	addi	sp,sp,-16
    80001a4c:	00113423          	sd	ra,8(sp)
    80001a50:	00813023          	sd	s0,0(sp)
    80001a54:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001a58:	fffff097          	auipc	ra,0xfffff
    80001a5c:	7c4080e7          	jalr	1988(ra) # 8000121c <_Z9mem_allocm>
}
    80001a60:	00813083          	ld	ra,8(sp)
    80001a64:	00013403          	ld	s0,0(sp)
    80001a68:	01010113          	addi	sp,sp,16
    80001a6c:	00008067          	ret

0000000080001a70 <_ZdlPv>:
void operator delete(void* address) {
    80001a70:	ff010113          	addi	sp,sp,-16
    80001a74:	00113423          	sd	ra,8(sp)
    80001a78:	00813023          	sd	s0,0(sp)
    80001a7c:	01010413          	addi	s0,sp,16
    mem_free(address);
    80001a80:	fffff097          	auipc	ra,0xfffff
    80001a84:	7e8080e7          	jalr	2024(ra) # 80001268 <_Z8mem_freePv>
}
    80001a88:	00813083          	ld	ra,8(sp)
    80001a8c:	00013403          	ld	s0,0(sp)
    80001a90:	01010113          	addi	sp,sp,16
    80001a94:	00008067          	ret

0000000080001a98 <_ZdaPv>:
void operator delete[](void* address) {
    80001a98:	ff010113          	addi	sp,sp,-16
    80001a9c:	00113423          	sd	ra,8(sp)
    80001aa0:	00813023          	sd	s0,0(sp)
    80001aa4:	01010413          	addi	s0,sp,16
    mem_free(address);
    80001aa8:	fffff097          	auipc	ra,0xfffff
    80001aac:	7c0080e7          	jalr	1984(ra) # 80001268 <_Z8mem_freePv>
}
    80001ab0:	00813083          	ld	ra,8(sp)
    80001ab4:	00013403          	ld	s0,0(sp)
    80001ab8:	01010113          	addi	sp,sp,16
    80001abc:	00008067          	ret

0000000080001ac0 <_ZN5Riscv10popSppSpieEv>:
#define THREAD_DISPATCH 0x13
extern uint64 backupSP;


void Riscv::popSppSpie()
{
    80001ac0:	ff010113          	addi	sp,sp,-16
    80001ac4:	00813423          	sd	s0,8(sp)
    80001ac8:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001acc:	14109073          	csrw	sepc,ra
    __asm__ volatile ("csrc sip, 0x02");
    80001ad0:	14417073          	csrci	sip,2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001ad4:	10000793          	li	a5,256
    80001ad8:	1007a073          	csrs	sstatus,a5
    ms_sstatus(SSTATUS_SPP);
    __asm__ volatile ("sret");
    80001adc:	10200073          	sret
}
    80001ae0:	00813403          	ld	s0,8(sp)
    80001ae4:	01010113          	addi	sp,sp,16
    80001ae8:	00008067          	ret

0000000080001aec <_ZN5Riscv16interruptHandlerEv>:

void Riscv::interruptHandler() {
    80001aec:	fa010113          	addi	sp,sp,-96
    80001af0:	04113c23          	sd	ra,88(sp)
    80001af4:	04813823          	sd	s0,80(sp)
    80001af8:	04913423          	sd	s1,72(sp)
    80001afc:	05213023          	sd	s2,64(sp)
    80001b00:	06010413          	addi	s0,sp,96
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001b04:	142027f3          	csrr	a5,scause
    80001b08:	faf43023          	sd	a5,-96(s0)
    return scause;
    80001b0c:	fa043703          	ld	a4,-96(s0)
    uint64 scause = Riscv::r_scause();
    if (scause == INTR_TIMER)
    80001b10:	fff00793          	li	a5,-1
    80001b14:	03f79793          	slli	a5,a5,0x3f
    80001b18:	00178793          	addi	a5,a5,1
    80001b1c:	04f70a63          	beq	a4,a5,80001b70 <_ZN5Riscv16interruptHandlerEv+0x84>
        //     w_sstatus(sstatus);
        //     w_sepc(sepc);
        // }
        // mc_sip(SIP_SSIP);
    }
    else if(scause == ECALL_USER || scause == ECALL_SUPERVISOR){
    80001b20:	ff870793          	addi	a5,a4,-8
    80001b24:	00100693          	li	a3,1
    80001b28:	06f6f063          	bgeu	a3,a5,80001b88 <_ZN5Riscv16interruptHandlerEv+0x9c>
            CCB::yield();
            w_sepc(r_sepc() + 4);
        }

    }
    else if (scause == 0x8000000000000009UL) {
    80001b2c:	fff00793          	li	a5,-1
    80001b30:	03f79793          	slli	a5,a5,0x3f
    80001b34:	00978793          	addi	a5,a5,9
    80001b38:	18f70463          	beq	a4,a5,80001cc0 <_ZN5Riscv16interruptHandlerEv+0x1d4>
        console_handler();
    }
    else {
        printString("Error ");
    80001b3c:	00003517          	auipc	a0,0x3
    80001b40:	59450513          	addi	a0,a0,1428 # 800050d0 <CONSOLE_STATUS+0xc0>
    80001b44:	00000097          	auipc	ra,0x0
    80001b48:	430080e7          	jalr	1072(ra) # 80001f74 <_Z11printStringPKc>
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001b4c:	142027f3          	csrr	a5,scause
    80001b50:	fcf43c23          	sd	a5,-40(s0)
    return scause;
    80001b54:	fd843503          	ld	a0,-40(s0)
        printInteger(r_scause());
    80001b58:	00000097          	auipc	ra,0x0
    80001b5c:	48c080e7          	jalr	1164(ra) # 80001fe4 <_Z12printIntegerm>
        printString("\n");
    80001b60:	00003517          	auipc	a0,0x3
    80001b64:	56850513          	addi	a0,a0,1384 # 800050c8 <CONSOLE_STATUS+0xb8>
    80001b68:	00000097          	auipc	ra,0x0
    80001b6c:	40c080e7          	jalr	1036(ra) # 80001f74 <_Z11printStringPKc>
    }
    80001b70:	05813083          	ld	ra,88(sp)
    80001b74:	05013403          	ld	s0,80(sp)
    80001b78:	04813483          	ld	s1,72(sp)
    80001b7c:	04013903          	ld	s2,64(sp)
    80001b80:	06010113          	addi	sp,sp,96
    80001b84:	00008067          	ret
        __asm__ volatile("mv %0, a0" : "=r" (intrId));
    80001b88:	00050793          	mv	a5,a0
        if(intrId == MEM_ALLOC){
    80001b8c:	00100713          	li	a4,1
    80001b90:	04e78c63          	beq	a5,a4,80001be8 <_ZN5Riscv16interruptHandlerEv+0xfc>
        else if(intrId == MEM_FREE){
    80001b94:	00200713          	li	a4,2
    80001b98:	08e78263          	beq	a5,a4,80001c1c <_ZN5Riscv16interruptHandlerEv+0x130>
        else if(intrId == THREAD_CREATE){
    80001b9c:	01100713          	li	a4,17
    80001ba0:	0ae78863          	beq	a5,a4,80001c50 <_ZN5Riscv16interruptHandlerEv+0x164>
        else if(intrId == THREAD_DISPATCH) {
    80001ba4:	01300713          	li	a4,19
    80001ba8:	0ee78463          	beq	a5,a4,80001c90 <_ZN5Riscv16interruptHandlerEv+0x1a4>
        else if(intrId == THREAD_EXIT){
    80001bac:	01200713          	li	a4,18
    80001bb0:	fce790e3          	bne	a5,a4,80001b70 <_ZN5Riscv16interruptHandlerEv+0x84>
            CCB::running->setFinished(true);
    80001bb4:	00004797          	auipc	a5,0x4
    80001bb8:	cf47b783          	ld	a5,-780(a5) # 800058a8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001bbc:	0007b783          	ld	a5,0(a5)
    void setFinished(bool value) { finished = value;}
    80001bc0:	00100713          	li	a4,1
    80001bc4:	02e78023          	sb	a4,32(a5)
            CCB::yield();
    80001bc8:	00000097          	auipc	ra,0x0
    80001bcc:	e20080e7          	jalr	-480(ra) # 800019e8 <_ZN3CCB5yieldEv>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001bd0:	141027f3          	csrr	a5,sepc
    80001bd4:	fcf43823          	sd	a5,-48(s0)
    return sepc;
    80001bd8:	fd043783          	ld	a5,-48(s0)
            w_sepc(r_sepc() + 4);
    80001bdc:	00478793          	addi	a5,a5,4
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001be0:	14179073          	csrw	sepc,a5
}
    80001be4:	f8dff06f          	j	80001b70 <_ZN5Riscv16interruptHandlerEv+0x84>
            asm ("mv %0, a1" : "=r" (numBlocks));
    80001be8:	00058513          	mv	a0,a1
            MemoryAllocator::allocate(numBlocks);
    80001bec:	00000097          	auipc	ra,0x0
    80001bf0:	134080e7          	jalr	308(ra) # 80001d20 <_ZN15MemoryAllocator8allocateEm>
            __asm__ volatile("sd a0, 0x50(%0)" : : "r" (backupSP));
    80001bf4:	00004797          	auipc	a5,0x4
    80001bf8:	cc47b783          	ld	a5,-828(a5) # 800058b8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001bfc:	0007b783          	ld	a5,0(a5)
    80001c00:	04a7b823          	sd	a0,80(a5)
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001c04:	141027f3          	csrr	a5,sepc
    80001c08:	faf43423          	sd	a5,-88(s0)
    return sepc;
    80001c0c:	fa843783          	ld	a5,-88(s0)
            w_sepc(r_sepc() + 4);
    80001c10:	00478793          	addi	a5,a5,4
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001c14:	14179073          	csrw	sepc,a5
}
    80001c18:	f59ff06f          	j	80001b70 <_ZN5Riscv16interruptHandlerEv+0x84>
            __asm__ volatile("mv %0, a1" : "=r" (address));
    80001c1c:	00058513          	mv	a0,a1
            MemoryAllocator::free(address);
    80001c20:	00000097          	auipc	ra,0x0
    80001c24:	298080e7          	jalr	664(ra) # 80001eb8 <_ZN15MemoryAllocator4freeEPv>
            __asm__ volatile("sd a0, 0x50(%0)" : : "r" (backupSP));
    80001c28:	00004797          	auipc	a5,0x4
    80001c2c:	c907b783          	ld	a5,-880(a5) # 800058b8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001c30:	0007b783          	ld	a5,0(a5)
    80001c34:	04a7b823          	sd	a0,80(a5)
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001c38:	141027f3          	csrr	a5,sepc
    80001c3c:	faf43823          	sd	a5,-80(s0)
    return sepc;
    80001c40:	fb043783          	ld	a5,-80(s0)
            w_sepc(r_sepc() + 4);
    80001c44:	00478793          	addi	a5,a5,4
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001c48:	14179073          	csrw	sepc,a5
}
    80001c4c:	f25ff06f          	j	80001b70 <_ZN5Riscv16interruptHandlerEv+0x84>
            __asm__ volatile ("mv %0, a1" : "=r" (handle));
    80001c50:	00058493          	mv	s1,a1
            __asm__ volatile ("mv %0, a2" : "=r" (body));
    80001c54:	00060513          	mv	a0,a2
            __asm__ volatile ("ld a3, 0x68(%0)" : : "r" (backupSP));
    80001c58:	00004797          	auipc	a5,0x4
    80001c5c:	c607b783          	ld	a5,-928(a5) # 800058b8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001c60:	0007b783          	ld	a5,0(a5)
    80001c64:	0687b683          	ld	a3,104(a5)
            __asm__ volatile ("mv %0, a3" : "=r" (args));
    80001c68:	00068793          	mv	a5,a3
            *handle = CCB::createCoroutine(body);
    80001c6c:	00000097          	auipc	ra,0x0
    80001c70:	c54080e7          	jalr	-940(ra) # 800018c0 <_ZN3CCB15createCoroutineEPFvvE>
    80001c74:	00a4b023          	sd	a0,0(s1)
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001c78:	141027f3          	csrr	a5,sepc
    80001c7c:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    80001c80:	fb843783          	ld	a5,-72(s0)
            w_sepc(r_sepc() + 4);
    80001c84:	00478793          	addi	a5,a5,4
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001c88:	14179073          	csrw	sepc,a5
}
    80001c8c:	ee5ff06f          	j	80001b70 <_ZN5Riscv16interruptHandlerEv+0x84>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001c90:	141027f3          	csrr	a5,sepc
    80001c94:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80001c98:	fc843483          	ld	s1,-56(s0)
            uint64 sepc = r_sepc() + 4;
    80001c9c:	00448493          	addi	s1,s1,4
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001ca0:	100027f3          	csrr	a5,sstatus
    80001ca4:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80001ca8:	fc043903          	ld	s2,-64(s0)
            CCB::dispatch();
    80001cac:	00000097          	auipc	ra,0x0
    80001cb0:	cd4080e7          	jalr	-812(ra) # 80001980 <_ZN3CCB8dispatchEv>
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001cb4:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001cb8:	14149073          	csrw	sepc,s1
}
    80001cbc:	eb5ff06f          	j	80001b70 <_ZN5Riscv16interruptHandlerEv+0x84>
        console_handler();
    80001cc0:	00002097          	auipc	ra,0x2
    80001cc4:	510080e7          	jalr	1296(ra) # 800041d0 <console_handler>
    80001cc8:	ea9ff06f          	j	80001b70 <_ZN5Riscv16interruptHandlerEv+0x84>

0000000080001ccc <_ZN15MemoryAllocator4initEv>:

#include "../h/MemoryAllocator.hpp"

BlockHeader* MemoryAllocator::fmem_head = nullptr;

void MemoryAllocator::init() {
    80001ccc:	ff010113          	addi	sp,sp,-16
    80001cd0:	00813423          	sd	s0,8(sp)
    80001cd4:	01010413          	addi	s0,sp,16
    fmem_head = (BlockHeader*) HEAP_START_ADDR;
    80001cd8:	00004797          	auipc	a5,0x4
    80001cdc:	bb07b783          	ld	a5,-1104(a5) # 80005888 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001ce0:	0007b703          	ld	a4,0(a5)
    80001ce4:	00004697          	auipc	a3,0x4
    80001ce8:	c4c68693          	addi	a3,a3,-948 # 80005930 <_ZN15MemoryAllocator9fmem_headE>
    80001cec:	00e6b023          	sd	a4,0(a3)
    fmem_head->size = (((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR) / MEM_BLOCK_SIZE);
    80001cf0:	00004797          	auipc	a5,0x4
    80001cf4:	bc07b783          	ld	a5,-1088(a5) # 800058b0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001cf8:	0007b783          	ld	a5,0(a5)
    80001cfc:	40e787b3          	sub	a5,a5,a4
    80001d00:	0067d793          	srli	a5,a5,0x6
    80001d04:	00f73023          	sd	a5,0(a4)
    fmem_head->prev = fmem_head->next = nullptr;
    80001d08:	0006b783          	ld	a5,0(a3)
    80001d0c:	0007b423          	sd	zero,8(a5)
    80001d10:	0007b823          	sd	zero,16(a5)
}
    80001d14:	00813403          	ld	s0,8(sp)
    80001d18:	01010113          	addi	sp,sp,16
    80001d1c:	00008067          	ret

0000000080001d20 <_ZN15MemoryAllocator8allocateEm>:
void *MemoryAllocator::allocateB(size_t size) {
    uint64 numOfBlocks = (size+sizeof(BlockHeader))/MEM_BLOCK_SIZE + ((size+sizeof(BlockHeader)) % MEM_BLOCK_SIZE > 0 ? 1 : 0);
    return allocate(numOfBlocks);
}

void* MemoryAllocator::allocate(size_t numOfBlocks) {
    80001d20:	ff010113          	addi	sp,sp,-16
    80001d24:	00813423          	sd	s0,8(sp)
    80001d28:	01010413          	addi	s0,sp,16
    80001d2c:	00050713          	mv	a4,a0
    if (fmem_head == nullptr) return nullptr;
    80001d30:	00004517          	auipc	a0,0x4
    80001d34:	c0053503          	ld	a0,-1024(a0) # 80005930 <_ZN15MemoryAllocator9fmem_headE>
    80001d38:	08050a63          	beqz	a0,80001dcc <_ZN15MemoryAllocator8allocateEm+0xac>

    BlockHeader* blk = nullptr;
    80001d3c:	00000793          	li	a5,0
    80001d40:	0140006f          	j	80001d54 <_ZN15MemoryAllocator8allocateEm+0x34>
    for (BlockHeader* curr = fmem_head; curr; curr = curr->next)
        if ((!blk && curr->size >= numOfBlocks) || (blk && curr->size >= numOfBlocks && blk->size > curr->size)) blk = curr;
    80001d44:	00053683          	ld	a3,0(a0)
    80001d48:	00e6ea63          	bltu	a3,a4,80001d5c <_ZN15MemoryAllocator8allocateEm+0x3c>
    80001d4c:	00050793          	mv	a5,a0
    for (BlockHeader* curr = fmem_head; curr; curr = curr->next)
    80001d50:	00853503          	ld	a0,8(a0)
    80001d54:	02050263          	beqz	a0,80001d78 <_ZN15MemoryAllocator8allocateEm+0x58>
        if ((!blk && curr->size >= numOfBlocks) || (blk && curr->size >= numOfBlocks && blk->size > curr->size)) blk = curr;
    80001d58:	fe0786e3          	beqz	a5,80001d44 <_ZN15MemoryAllocator8allocateEm+0x24>
    80001d5c:	fe078ae3          	beqz	a5,80001d50 <_ZN15MemoryAllocator8allocateEm+0x30>
    80001d60:	00053683          	ld	a3,0(a0)
    80001d64:	fee6e6e3          	bltu	a3,a4,80001d50 <_ZN15MemoryAllocator8allocateEm+0x30>
    80001d68:	0007b603          	ld	a2,0(a5)
    80001d6c:	fec6f2e3          	bgeu	a3,a2,80001d50 <_ZN15MemoryAllocator8allocateEm+0x30>
    80001d70:	00050793          	mv	a5,a0
    80001d74:	fddff06f          	j	80001d50 <_ZN15MemoryAllocator8allocateEm+0x30>

    if (!blk) return nullptr;
    80001d78:	0a078063          	beqz	a5,80001e18 <_ZN15MemoryAllocator8allocateEm+0xf8>

    size_t remainingNumOfBlocks = blk->size - numOfBlocks;
    80001d7c:	0007b683          	ld	a3,0(a5)
    80001d80:	40e68633          	sub	a2,a3,a4
    if (remainingNumOfBlocks > 0) {
    80001d84:	06e68063          	beq	a3,a4,80001de4 <_ZN15MemoryAllocator8allocateEm+0xc4>
        blk->size = numOfBlocks;
    80001d88:	00e7b023          	sd	a4,0(a5)
        BlockHeader* newBlk = (BlockHeader*)((char*)blk + numOfBlocks*MEM_BLOCK_SIZE);
    80001d8c:	00671713          	slli	a4,a4,0x6
    80001d90:	00e78733          	add	a4,a5,a4

        if (blk->next) blk->next->prev = newBlk;
    80001d94:	0087b683          	ld	a3,8(a5)
    80001d98:	00068463          	beqz	a3,80001da0 <_ZN15MemoryAllocator8allocateEm+0x80>
    80001d9c:	00e6b823          	sd	a4,16(a3)
        if (blk->prev) blk->prev->next = newBlk;
    80001da0:	0107b683          	ld	a3,16(a5)
    80001da4:	02068a63          	beqz	a3,80001dd8 <_ZN15MemoryAllocator8allocateEm+0xb8>
    80001da8:	00e6b423          	sd	a4,8(a3)
        else fmem_head = newBlk;

        newBlk->next = blk->next;
    80001dac:	0087b683          	ld	a3,8(a5)
    80001db0:	00d73423          	sd	a3,8(a4)
        newBlk->prev = blk->prev;
    80001db4:	0107b683          	ld	a3,16(a5)
    80001db8:	00d73823          	sd	a3,16(a4)
        newBlk->size = remainingNumOfBlocks;
    80001dbc:	00c73023          	sd	a2,0(a4)
    else {
        if (blk->next) blk->next->prev = blk->prev;
        if (blk->prev) blk->prev->next = blk->next;
        else fmem_head = blk->next;
    }
    blk->next = blk->prev = nullptr;
    80001dc0:	0007b823          	sd	zero,16(a5)
    80001dc4:	0007b423          	sd	zero,8(a5)
    return (char*)blk + sizeof(BlockHeader);
    80001dc8:	01878513          	addi	a0,a5,24
}
    80001dcc:	00813403          	ld	s0,8(sp)
    80001dd0:	01010113          	addi	sp,sp,16
    80001dd4:	00008067          	ret
        else fmem_head = newBlk;
    80001dd8:	00004697          	auipc	a3,0x4
    80001ddc:	b4e6bc23          	sd	a4,-1192(a3) # 80005930 <_ZN15MemoryAllocator9fmem_headE>
    80001de0:	fcdff06f          	j	80001dac <_ZN15MemoryAllocator8allocateEm+0x8c>
        if (blk->next) blk->next->prev = blk->prev;
    80001de4:	0087b703          	ld	a4,8(a5)
    80001de8:	00070663          	beqz	a4,80001df4 <_ZN15MemoryAllocator8allocateEm+0xd4>
    80001dec:	0107b683          	ld	a3,16(a5)
    80001df0:	00d73823          	sd	a3,16(a4)
        if (blk->prev) blk->prev->next = blk->next;
    80001df4:	0107b703          	ld	a4,16(a5)
    80001df8:	00070863          	beqz	a4,80001e08 <_ZN15MemoryAllocator8allocateEm+0xe8>
    80001dfc:	0087b683          	ld	a3,8(a5)
    80001e00:	00d73423          	sd	a3,8(a4)
    80001e04:	fbdff06f          	j	80001dc0 <_ZN15MemoryAllocator8allocateEm+0xa0>
        else fmem_head = blk->next;
    80001e08:	0087b703          	ld	a4,8(a5)
    80001e0c:	00004697          	auipc	a3,0x4
    80001e10:	b2e6b223          	sd	a4,-1244(a3) # 80005930 <_ZN15MemoryAllocator9fmem_headE>
    80001e14:	fadff06f          	j	80001dc0 <_ZN15MemoryAllocator8allocateEm+0xa0>
    if (!blk) return nullptr;
    80001e18:	00078513          	mv	a0,a5
    80001e1c:	fb1ff06f          	j	80001dcc <_ZN15MemoryAllocator8allocateEm+0xac>

0000000080001e20 <_ZN15MemoryAllocator9allocateBEm>:
void *MemoryAllocator::allocateB(size_t size) {
    80001e20:	ff010113          	addi	sp,sp,-16
    80001e24:	00113423          	sd	ra,8(sp)
    80001e28:	00813023          	sd	s0,0(sp)
    80001e2c:	01010413          	addi	s0,sp,16
    uint64 numOfBlocks = (size+sizeof(BlockHeader))/MEM_BLOCK_SIZE + ((size+sizeof(BlockHeader)) % MEM_BLOCK_SIZE > 0 ? 1 : 0);
    80001e30:	01850513          	addi	a0,a0,24
    80001e34:	00655793          	srli	a5,a0,0x6
    80001e38:	03f57513          	andi	a0,a0,63
    80001e3c:	00050463          	beqz	a0,80001e44 <_ZN15MemoryAllocator9allocateBEm+0x24>
    80001e40:	00100513          	li	a0,1
    return allocate(numOfBlocks);
    80001e44:	00a78533          	add	a0,a5,a0
    80001e48:	00000097          	auipc	ra,0x0
    80001e4c:	ed8080e7          	jalr	-296(ra) # 80001d20 <_ZN15MemoryAllocator8allocateEm>
}
    80001e50:	00813083          	ld	ra,8(sp)
    80001e54:	00013403          	ld	s0,0(sp)
    80001e58:	01010113          	addi	sp,sp,16
    80001e5c:	00008067          	ret

0000000080001e60 <_ZN15MemoryAllocator9joinUpperEP11BlockHeader>:

    return 0;

}

void MemoryAllocator::joinUpper(BlockHeader * blk) {
    80001e60:	ff010113          	addi	sp,sp,-16
    80001e64:	00813423          	sd	s0,8(sp)
    80001e68:	01010413          	addi	s0,sp,16
    if (!blk || !blk->next) return;
    80001e6c:	00050e63          	beqz	a0,80001e88 <_ZN15MemoryAllocator9joinUpperEP11BlockHeader+0x28>
    80001e70:	00853703          	ld	a4,8(a0)
    80001e74:	00070a63          	beqz	a4,80001e88 <_ZN15MemoryAllocator9joinUpperEP11BlockHeader+0x28>

    if ((char*)blk + blk->size * MEM_BLOCK_SIZE == (char*)blk->next){
    80001e78:	00053783          	ld	a5,0(a0)
    80001e7c:	00679793          	slli	a5,a5,0x6
    80001e80:	00f507b3          	add	a5,a0,a5
    80001e84:	00f70863          	beq	a4,a5,80001e94 <_ZN15MemoryAllocator9joinUpperEP11BlockHeader+0x34>
        BlockHeader* x = blk->next;
        blk->next = x->next;
        if (blk->next) blk->next->prev = blk;
        blk->size += x->size;
    }
    80001e88:	00813403          	ld	s0,8(sp)
    80001e8c:	01010113          	addi	sp,sp,16
    80001e90:	00008067          	ret
        blk->next = x->next;
    80001e94:	00873783          	ld	a5,8(a4)
    80001e98:	00f53423          	sd	a5,8(a0)
        if (blk->next) blk->next->prev = blk;
    80001e9c:	00078463          	beqz	a5,80001ea4 <_ZN15MemoryAllocator9joinUpperEP11BlockHeader+0x44>
    80001ea0:	00a7b823          	sd	a0,16(a5)
        blk->size += x->size;
    80001ea4:	00073703          	ld	a4,0(a4)
    80001ea8:	00053783          	ld	a5,0(a0)
    80001eac:	00e787b3          	add	a5,a5,a4
    80001eb0:	00f53023          	sd	a5,0(a0)
    80001eb4:	fd5ff06f          	j	80001e88 <_ZN15MemoryAllocator9joinUpperEP11BlockHeader+0x28>

0000000080001eb8 <_ZN15MemoryAllocator4freeEPv>:
    if (addr == nullptr) return 0;
    80001eb8:	0a050a63          	beqz	a0,80001f6c <_ZN15MemoryAllocator4freeEPv+0xb4>
int MemoryAllocator::free(void* addr) {
    80001ebc:	fe010113          	addi	sp,sp,-32
    80001ec0:	00113c23          	sd	ra,24(sp)
    80001ec4:	00813823          	sd	s0,16(sp)
    80001ec8:	00913423          	sd	s1,8(sp)
    80001ecc:	02010413          	addi	s0,sp,32
    80001ed0:	00050493          	mv	s1,a0
    BlockHeader* newBlk = (BlockHeader*) ((char*)addr - sizeof(BlockHeader));
    80001ed4:	fe850513          	addi	a0,a0,-24
    if (fmem_head == nullptr){
    80001ed8:	00004797          	auipc	a5,0x4
    80001edc:	a587b783          	ld	a5,-1448(a5) # 80005930 <_ZN15MemoryAllocator9fmem_headE>
    80001ee0:	04078463          	beqz	a5,80001f28 <_ZN15MemoryAllocator4freeEPv+0x70>
    else if (newBlk < fmem_head) {
    80001ee4:	04f57c63          	bgeu	a0,a5,80001f3c <_ZN15MemoryAllocator4freeEPv+0x84>
        newBlk->next = fmem_head;
    80001ee8:	fef4b823          	sd	a5,-16(s1)
        fmem_head->prev = newBlk;
    80001eec:	00a7b823          	sd	a0,16(a5)
        newBlk->prev = nullptr;
    80001ef0:	fe04bc23          	sd	zero,-8(s1)
        fmem_head = newBlk;
    80001ef4:	00004797          	auipc	a5,0x4
    80001ef8:	a2a7be23          	sd	a0,-1476(a5) # 80005930 <_ZN15MemoryAllocator9fmem_headE>
    joinUpper(newBlk);
    80001efc:	00000097          	auipc	ra,0x0
    80001f00:	f64080e7          	jalr	-156(ra) # 80001e60 <_ZN15MemoryAllocator9joinUpperEP11BlockHeader>
    joinUpper(newBlk->prev);
    80001f04:	ff84b503          	ld	a0,-8(s1)
    80001f08:	00000097          	auipc	ra,0x0
    80001f0c:	f58080e7          	jalr	-168(ra) # 80001e60 <_ZN15MemoryAllocator9joinUpperEP11BlockHeader>
}
    80001f10:	00000513          	li	a0,0
    80001f14:	01813083          	ld	ra,24(sp)
    80001f18:	01013403          	ld	s0,16(sp)
    80001f1c:	00813483          	ld	s1,8(sp)
    80001f20:	02010113          	addi	sp,sp,32
    80001f24:	00008067          	ret
        fmem_head = newBlk;
    80001f28:	00004797          	auipc	a5,0x4
    80001f2c:	a0a7b423          	sd	a0,-1528(a5) # 80005930 <_ZN15MemoryAllocator9fmem_headE>
        newBlk->next = newBlk->prev = nullptr;
    80001f30:	fe04bc23          	sd	zero,-8(s1)
    80001f34:	fe04b823          	sd	zero,-16(s1)
        return 0;
    80001f38:	fd9ff06f          	j	80001f10 <_ZN15MemoryAllocator4freeEPv+0x58>
        BlockHeader* blk = fmem_head, *prev = nullptr;
    80001f3c:	00000713          	li	a4,0
        for (; blk && blk < newBlk; prev = blk, blk = blk->next);
    80001f40:	00078a63          	beqz	a5,80001f54 <_ZN15MemoryAllocator4freeEPv+0x9c>
    80001f44:	00a7f863          	bgeu	a5,a0,80001f54 <_ZN15MemoryAllocator4freeEPv+0x9c>
    80001f48:	00078713          	mv	a4,a5
    80001f4c:	0087b783          	ld	a5,8(a5)
    80001f50:	ff1ff06f          	j	80001f40 <_ZN15MemoryAllocator4freeEPv+0x88>
        newBlk->next = blk;
    80001f54:	fef4b823          	sd	a5,-16(s1)
        if (blk) blk->prev = newBlk;
    80001f58:	00078463          	beqz	a5,80001f60 <_ZN15MemoryAllocator4freeEPv+0xa8>
    80001f5c:	00a7b823          	sd	a0,16(a5)
        newBlk->prev = prev;
    80001f60:	fee4bc23          	sd	a4,-8(s1)
        prev->next = newBlk;
    80001f64:	00a73423          	sd	a0,8(a4)
    80001f68:	f95ff06f          	j	80001efc <_ZN15MemoryAllocator4freeEPv+0x44>
}
    80001f6c:	00000513          	li	a0,0
    80001f70:	00008067          	ret

0000000080001f74 <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/Riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80001f74:	fd010113          	addi	sp,sp,-48
    80001f78:	02113423          	sd	ra,40(sp)
    80001f7c:	02813023          	sd	s0,32(sp)
    80001f80:	00913c23          	sd	s1,24(sp)
    80001f84:	01213823          	sd	s2,16(sp)
    80001f88:	03010413          	addi	s0,sp,48
    80001f8c:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001f90:	100027f3          	csrr	a5,sstatus
    80001f94:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80001f98:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001f9c:	00200793          	li	a5,2
    80001fa0:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    80001fa4:	0004c503          	lbu	a0,0(s1)
    80001fa8:	00050a63          	beqz	a0,80001fbc <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80001fac:	00002097          	auipc	ra,0x2
    80001fb0:	1b0080e7          	jalr	432(ra) # 8000415c <__putc>
        string++;
    80001fb4:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001fb8:	fedff06f          	j	80001fa4 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001fbc:	0009091b          	sext.w	s2,s2
    80001fc0:	00297913          	andi	s2,s2,2
    80001fc4:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001fc8:	10092073          	csrs	sstatus,s2
}
    80001fcc:	02813083          	ld	ra,40(sp)
    80001fd0:	02013403          	ld	s0,32(sp)
    80001fd4:	01813483          	ld	s1,24(sp)
    80001fd8:	01013903          	ld	s2,16(sp)
    80001fdc:	03010113          	addi	sp,sp,48
    80001fe0:	00008067          	ret

0000000080001fe4 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80001fe4:	fc010113          	addi	sp,sp,-64
    80001fe8:	02113c23          	sd	ra,56(sp)
    80001fec:	02813823          	sd	s0,48(sp)
    80001ff0:	02913423          	sd	s1,40(sp)
    80001ff4:	03213023          	sd	s2,32(sp)
    80001ff8:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001ffc:	100027f3          	csrr	a5,sstatus
    80002000:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80002004:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002008:	00200793          	li	a5,2
    8000200c:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80002010:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80002014:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80002018:	00a00613          	li	a2,10
    8000201c:	02c5773b          	remuw	a4,a0,a2
    80002020:	02071693          	slli	a3,a4,0x20
    80002024:	0206d693          	srli	a3,a3,0x20
    80002028:	00003717          	auipc	a4,0x3
    8000202c:	0b070713          	addi	a4,a4,176 # 800050d8 <_ZZ12printIntegermE6digits>
    80002030:	00d70733          	add	a4,a4,a3
    80002034:	00074703          	lbu	a4,0(a4)
    80002038:	fe040693          	addi	a3,s0,-32
    8000203c:	009687b3          	add	a5,a3,s1
    80002040:	0014849b          	addiw	s1,s1,1
    80002044:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80002048:	0005071b          	sext.w	a4,a0
    8000204c:	02c5553b          	divuw	a0,a0,a2
    80002050:	00900793          	li	a5,9
    80002054:	fce7e2e3          	bltu	a5,a4,80002018 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80002058:	fff4849b          	addiw	s1,s1,-1
    8000205c:	0004ce63          	bltz	s1,80002078 <_Z12printIntegerm+0x94>
    80002060:	fe040793          	addi	a5,s0,-32
    80002064:	009787b3          	add	a5,a5,s1
    80002068:	ff07c503          	lbu	a0,-16(a5)
    8000206c:	00002097          	auipc	ra,0x2
    80002070:	0f0080e7          	jalr	240(ra) # 8000415c <__putc>
    80002074:	fe5ff06f          	j	80002058 <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002078:	0009091b          	sext.w	s2,s2
    8000207c:	00297913          	andi	s2,s2,2
    80002080:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002084:	10092073          	csrs	sstatus,s2
    80002088:	03813083          	ld	ra,56(sp)
    8000208c:	03013403          	ld	s0,48(sp)
    80002090:	02813483          	ld	s1,40(sp)
    80002094:	02013903          	ld	s2,32(sp)
    80002098:	04010113          	addi	sp,sp,64
    8000209c:	00008067          	ret

00000000800020a0 <start>:
    800020a0:	ff010113          	addi	sp,sp,-16
    800020a4:	00813423          	sd	s0,8(sp)
    800020a8:	01010413          	addi	s0,sp,16
    800020ac:	300027f3          	csrr	a5,mstatus
    800020b0:	ffffe737          	lui	a4,0xffffe
    800020b4:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7c5f>
    800020b8:	00e7f7b3          	and	a5,a5,a4
    800020bc:	00001737          	lui	a4,0x1
    800020c0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800020c4:	00e7e7b3          	or	a5,a5,a4
    800020c8:	30079073          	csrw	mstatus,a5
    800020cc:	00000797          	auipc	a5,0x0
    800020d0:	16078793          	addi	a5,a5,352 # 8000222c <system_main>
    800020d4:	34179073          	csrw	mepc,a5
    800020d8:	00000793          	li	a5,0
    800020dc:	18079073          	csrw	satp,a5
    800020e0:	000107b7          	lui	a5,0x10
    800020e4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800020e8:	30279073          	csrw	medeleg,a5
    800020ec:	30379073          	csrw	mideleg,a5
    800020f0:	104027f3          	csrr	a5,sie
    800020f4:	2227e793          	ori	a5,a5,546
    800020f8:	10479073          	csrw	sie,a5
    800020fc:	fff00793          	li	a5,-1
    80002100:	00a7d793          	srli	a5,a5,0xa
    80002104:	3b079073          	csrw	pmpaddr0,a5
    80002108:	00f00793          	li	a5,15
    8000210c:	3a079073          	csrw	pmpcfg0,a5
    80002110:	f14027f3          	csrr	a5,mhartid
    80002114:	0200c737          	lui	a4,0x200c
    80002118:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000211c:	0007869b          	sext.w	a3,a5
    80002120:	00269713          	slli	a4,a3,0x2
    80002124:	000f4637          	lui	a2,0xf4
    80002128:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000212c:	00d70733          	add	a4,a4,a3
    80002130:	0037979b          	slliw	a5,a5,0x3
    80002134:	020046b7          	lui	a3,0x2004
    80002138:	00d787b3          	add	a5,a5,a3
    8000213c:	00c585b3          	add	a1,a1,a2
    80002140:	00371693          	slli	a3,a4,0x3
    80002144:	00003717          	auipc	a4,0x3
    80002148:	7fc70713          	addi	a4,a4,2044 # 80005940 <timer_scratch>
    8000214c:	00b7b023          	sd	a1,0(a5)
    80002150:	00d70733          	add	a4,a4,a3
    80002154:	00f73c23          	sd	a5,24(a4)
    80002158:	02c73023          	sd	a2,32(a4)
    8000215c:	34071073          	csrw	mscratch,a4
    80002160:	00000797          	auipc	a5,0x0
    80002164:	6e078793          	addi	a5,a5,1760 # 80002840 <timervec>
    80002168:	30579073          	csrw	mtvec,a5
    8000216c:	300027f3          	csrr	a5,mstatus
    80002170:	0087e793          	ori	a5,a5,8
    80002174:	30079073          	csrw	mstatus,a5
    80002178:	304027f3          	csrr	a5,mie
    8000217c:	0807e793          	ori	a5,a5,128
    80002180:	30479073          	csrw	mie,a5
    80002184:	f14027f3          	csrr	a5,mhartid
    80002188:	0007879b          	sext.w	a5,a5
    8000218c:	00078213          	mv	tp,a5
    80002190:	30200073          	mret
    80002194:	00813403          	ld	s0,8(sp)
    80002198:	01010113          	addi	sp,sp,16
    8000219c:	00008067          	ret

00000000800021a0 <timerinit>:
    800021a0:	ff010113          	addi	sp,sp,-16
    800021a4:	00813423          	sd	s0,8(sp)
    800021a8:	01010413          	addi	s0,sp,16
    800021ac:	f14027f3          	csrr	a5,mhartid
    800021b0:	0200c737          	lui	a4,0x200c
    800021b4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800021b8:	0007869b          	sext.w	a3,a5
    800021bc:	00269713          	slli	a4,a3,0x2
    800021c0:	000f4637          	lui	a2,0xf4
    800021c4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800021c8:	00d70733          	add	a4,a4,a3
    800021cc:	0037979b          	slliw	a5,a5,0x3
    800021d0:	020046b7          	lui	a3,0x2004
    800021d4:	00d787b3          	add	a5,a5,a3
    800021d8:	00c585b3          	add	a1,a1,a2
    800021dc:	00371693          	slli	a3,a4,0x3
    800021e0:	00003717          	auipc	a4,0x3
    800021e4:	76070713          	addi	a4,a4,1888 # 80005940 <timer_scratch>
    800021e8:	00b7b023          	sd	a1,0(a5)
    800021ec:	00d70733          	add	a4,a4,a3
    800021f0:	00f73c23          	sd	a5,24(a4)
    800021f4:	02c73023          	sd	a2,32(a4)
    800021f8:	34071073          	csrw	mscratch,a4
    800021fc:	00000797          	auipc	a5,0x0
    80002200:	64478793          	addi	a5,a5,1604 # 80002840 <timervec>
    80002204:	30579073          	csrw	mtvec,a5
    80002208:	300027f3          	csrr	a5,mstatus
    8000220c:	0087e793          	ori	a5,a5,8
    80002210:	30079073          	csrw	mstatus,a5
    80002214:	304027f3          	csrr	a5,mie
    80002218:	0807e793          	ori	a5,a5,128
    8000221c:	30479073          	csrw	mie,a5
    80002220:	00813403          	ld	s0,8(sp)
    80002224:	01010113          	addi	sp,sp,16
    80002228:	00008067          	ret

000000008000222c <system_main>:
    8000222c:	fe010113          	addi	sp,sp,-32
    80002230:	00813823          	sd	s0,16(sp)
    80002234:	00913423          	sd	s1,8(sp)
    80002238:	00113c23          	sd	ra,24(sp)
    8000223c:	02010413          	addi	s0,sp,32
    80002240:	00000097          	auipc	ra,0x0
    80002244:	0c4080e7          	jalr	196(ra) # 80002304 <cpuid>
    80002248:	00003497          	auipc	s1,0x3
    8000224c:	69848493          	addi	s1,s1,1688 # 800058e0 <started>
    80002250:	02050263          	beqz	a0,80002274 <system_main+0x48>
    80002254:	0004a783          	lw	a5,0(s1)
    80002258:	0007879b          	sext.w	a5,a5
    8000225c:	fe078ce3          	beqz	a5,80002254 <system_main+0x28>
    80002260:	0ff0000f          	fence
    80002264:	00003517          	auipc	a0,0x3
    80002268:	eb450513          	addi	a0,a0,-332 # 80005118 <_ZZ12printIntegermE6digits+0x40>
    8000226c:	00001097          	auipc	ra,0x1
    80002270:	a70080e7          	jalr	-1424(ra) # 80002cdc <panic>
    80002274:	00001097          	auipc	ra,0x1
    80002278:	9c4080e7          	jalr	-1596(ra) # 80002c38 <consoleinit>
    8000227c:	00001097          	auipc	ra,0x1
    80002280:	150080e7          	jalr	336(ra) # 800033cc <printfinit>
    80002284:	00003517          	auipc	a0,0x3
    80002288:	e4450513          	addi	a0,a0,-444 # 800050c8 <CONSOLE_STATUS+0xb8>
    8000228c:	00001097          	auipc	ra,0x1
    80002290:	aac080e7          	jalr	-1364(ra) # 80002d38 <__printf>
    80002294:	00003517          	auipc	a0,0x3
    80002298:	e5450513          	addi	a0,a0,-428 # 800050e8 <_ZZ12printIntegermE6digits+0x10>
    8000229c:	00001097          	auipc	ra,0x1
    800022a0:	a9c080e7          	jalr	-1380(ra) # 80002d38 <__printf>
    800022a4:	00003517          	auipc	a0,0x3
    800022a8:	e2450513          	addi	a0,a0,-476 # 800050c8 <CONSOLE_STATUS+0xb8>
    800022ac:	00001097          	auipc	ra,0x1
    800022b0:	a8c080e7          	jalr	-1396(ra) # 80002d38 <__printf>
    800022b4:	00001097          	auipc	ra,0x1
    800022b8:	4a4080e7          	jalr	1188(ra) # 80003758 <kinit>
    800022bc:	00000097          	auipc	ra,0x0
    800022c0:	148080e7          	jalr	328(ra) # 80002404 <trapinit>
    800022c4:	00000097          	auipc	ra,0x0
    800022c8:	16c080e7          	jalr	364(ra) # 80002430 <trapinithart>
    800022cc:	00000097          	auipc	ra,0x0
    800022d0:	5b4080e7          	jalr	1460(ra) # 80002880 <plicinit>
    800022d4:	00000097          	auipc	ra,0x0
    800022d8:	5d4080e7          	jalr	1492(ra) # 800028a8 <plicinithart>
    800022dc:	00000097          	auipc	ra,0x0
    800022e0:	078080e7          	jalr	120(ra) # 80002354 <userinit>
    800022e4:	0ff0000f          	fence
    800022e8:	00100793          	li	a5,1
    800022ec:	00003517          	auipc	a0,0x3
    800022f0:	e1450513          	addi	a0,a0,-492 # 80005100 <_ZZ12printIntegermE6digits+0x28>
    800022f4:	00f4a023          	sw	a5,0(s1)
    800022f8:	00001097          	auipc	ra,0x1
    800022fc:	a40080e7          	jalr	-1472(ra) # 80002d38 <__printf>
    80002300:	0000006f          	j	80002300 <system_main+0xd4>

0000000080002304 <cpuid>:
    80002304:	ff010113          	addi	sp,sp,-16
    80002308:	00813423          	sd	s0,8(sp)
    8000230c:	01010413          	addi	s0,sp,16
    80002310:	00020513          	mv	a0,tp
    80002314:	00813403          	ld	s0,8(sp)
    80002318:	0005051b          	sext.w	a0,a0
    8000231c:	01010113          	addi	sp,sp,16
    80002320:	00008067          	ret

0000000080002324 <mycpu>:
    80002324:	ff010113          	addi	sp,sp,-16
    80002328:	00813423          	sd	s0,8(sp)
    8000232c:	01010413          	addi	s0,sp,16
    80002330:	00020793          	mv	a5,tp
    80002334:	00813403          	ld	s0,8(sp)
    80002338:	0007879b          	sext.w	a5,a5
    8000233c:	00779793          	slli	a5,a5,0x7
    80002340:	00004517          	auipc	a0,0x4
    80002344:	63050513          	addi	a0,a0,1584 # 80006970 <cpus>
    80002348:	00f50533          	add	a0,a0,a5
    8000234c:	01010113          	addi	sp,sp,16
    80002350:	00008067          	ret

0000000080002354 <userinit>:
    80002354:	ff010113          	addi	sp,sp,-16
    80002358:	00813423          	sd	s0,8(sp)
    8000235c:	01010413          	addi	s0,sp,16
    80002360:	00813403          	ld	s0,8(sp)
    80002364:	01010113          	addi	sp,sp,16
    80002368:	fffff317          	auipc	t1,0xfffff
    8000236c:	3dc30067          	jr	988(t1) # 80001744 <main>

0000000080002370 <either_copyout>:
    80002370:	ff010113          	addi	sp,sp,-16
    80002374:	00813023          	sd	s0,0(sp)
    80002378:	00113423          	sd	ra,8(sp)
    8000237c:	01010413          	addi	s0,sp,16
    80002380:	02051663          	bnez	a0,800023ac <either_copyout+0x3c>
    80002384:	00058513          	mv	a0,a1
    80002388:	00060593          	mv	a1,a2
    8000238c:	0006861b          	sext.w	a2,a3
    80002390:	00002097          	auipc	ra,0x2
    80002394:	c54080e7          	jalr	-940(ra) # 80003fe4 <__memmove>
    80002398:	00813083          	ld	ra,8(sp)
    8000239c:	00013403          	ld	s0,0(sp)
    800023a0:	00000513          	li	a0,0
    800023a4:	01010113          	addi	sp,sp,16
    800023a8:	00008067          	ret
    800023ac:	00003517          	auipc	a0,0x3
    800023b0:	d9450513          	addi	a0,a0,-620 # 80005140 <_ZZ12printIntegermE6digits+0x68>
    800023b4:	00001097          	auipc	ra,0x1
    800023b8:	928080e7          	jalr	-1752(ra) # 80002cdc <panic>

00000000800023bc <either_copyin>:
    800023bc:	ff010113          	addi	sp,sp,-16
    800023c0:	00813023          	sd	s0,0(sp)
    800023c4:	00113423          	sd	ra,8(sp)
    800023c8:	01010413          	addi	s0,sp,16
    800023cc:	02059463          	bnez	a1,800023f4 <either_copyin+0x38>
    800023d0:	00060593          	mv	a1,a2
    800023d4:	0006861b          	sext.w	a2,a3
    800023d8:	00002097          	auipc	ra,0x2
    800023dc:	c0c080e7          	jalr	-1012(ra) # 80003fe4 <__memmove>
    800023e0:	00813083          	ld	ra,8(sp)
    800023e4:	00013403          	ld	s0,0(sp)
    800023e8:	00000513          	li	a0,0
    800023ec:	01010113          	addi	sp,sp,16
    800023f0:	00008067          	ret
    800023f4:	00003517          	auipc	a0,0x3
    800023f8:	d7450513          	addi	a0,a0,-652 # 80005168 <_ZZ12printIntegermE6digits+0x90>
    800023fc:	00001097          	auipc	ra,0x1
    80002400:	8e0080e7          	jalr	-1824(ra) # 80002cdc <panic>

0000000080002404 <trapinit>:
    80002404:	ff010113          	addi	sp,sp,-16
    80002408:	00813423          	sd	s0,8(sp)
    8000240c:	01010413          	addi	s0,sp,16
    80002410:	00813403          	ld	s0,8(sp)
    80002414:	00003597          	auipc	a1,0x3
    80002418:	d7c58593          	addi	a1,a1,-644 # 80005190 <_ZZ12printIntegermE6digits+0xb8>
    8000241c:	00004517          	auipc	a0,0x4
    80002420:	5d450513          	addi	a0,a0,1492 # 800069f0 <tickslock>
    80002424:	01010113          	addi	sp,sp,16
    80002428:	00001317          	auipc	t1,0x1
    8000242c:	5c030067          	jr	1472(t1) # 800039e8 <initlock>

0000000080002430 <trapinithart>:
    80002430:	ff010113          	addi	sp,sp,-16
    80002434:	00813423          	sd	s0,8(sp)
    80002438:	01010413          	addi	s0,sp,16
    8000243c:	00000797          	auipc	a5,0x0
    80002440:	2f478793          	addi	a5,a5,756 # 80002730 <kernelvec>
    80002444:	10579073          	csrw	stvec,a5
    80002448:	00813403          	ld	s0,8(sp)
    8000244c:	01010113          	addi	sp,sp,16
    80002450:	00008067          	ret

0000000080002454 <usertrap>:
    80002454:	ff010113          	addi	sp,sp,-16
    80002458:	00813423          	sd	s0,8(sp)
    8000245c:	01010413          	addi	s0,sp,16
    80002460:	00813403          	ld	s0,8(sp)
    80002464:	01010113          	addi	sp,sp,16
    80002468:	00008067          	ret

000000008000246c <usertrapret>:
    8000246c:	ff010113          	addi	sp,sp,-16
    80002470:	00813423          	sd	s0,8(sp)
    80002474:	01010413          	addi	s0,sp,16
    80002478:	00813403          	ld	s0,8(sp)
    8000247c:	01010113          	addi	sp,sp,16
    80002480:	00008067          	ret

0000000080002484 <kerneltrap>:
    80002484:	fe010113          	addi	sp,sp,-32
    80002488:	00813823          	sd	s0,16(sp)
    8000248c:	00113c23          	sd	ra,24(sp)
    80002490:	00913423          	sd	s1,8(sp)
    80002494:	02010413          	addi	s0,sp,32
    80002498:	142025f3          	csrr	a1,scause
    8000249c:	100027f3          	csrr	a5,sstatus
    800024a0:	0027f793          	andi	a5,a5,2
    800024a4:	10079c63          	bnez	a5,800025bc <kerneltrap+0x138>
    800024a8:	142027f3          	csrr	a5,scause
    800024ac:	0207ce63          	bltz	a5,800024e8 <kerneltrap+0x64>
    800024b0:	00003517          	auipc	a0,0x3
    800024b4:	d2850513          	addi	a0,a0,-728 # 800051d8 <_ZZ12printIntegermE6digits+0x100>
    800024b8:	00001097          	auipc	ra,0x1
    800024bc:	880080e7          	jalr	-1920(ra) # 80002d38 <__printf>
    800024c0:	141025f3          	csrr	a1,sepc
    800024c4:	14302673          	csrr	a2,stval
    800024c8:	00003517          	auipc	a0,0x3
    800024cc:	d2050513          	addi	a0,a0,-736 # 800051e8 <_ZZ12printIntegermE6digits+0x110>
    800024d0:	00001097          	auipc	ra,0x1
    800024d4:	868080e7          	jalr	-1944(ra) # 80002d38 <__printf>
    800024d8:	00003517          	auipc	a0,0x3
    800024dc:	d2850513          	addi	a0,a0,-728 # 80005200 <_ZZ12printIntegermE6digits+0x128>
    800024e0:	00000097          	auipc	ra,0x0
    800024e4:	7fc080e7          	jalr	2044(ra) # 80002cdc <panic>
    800024e8:	0ff7f713          	andi	a4,a5,255
    800024ec:	00900693          	li	a3,9
    800024f0:	04d70063          	beq	a4,a3,80002530 <kerneltrap+0xac>
    800024f4:	fff00713          	li	a4,-1
    800024f8:	03f71713          	slli	a4,a4,0x3f
    800024fc:	00170713          	addi	a4,a4,1
    80002500:	fae798e3          	bne	a5,a4,800024b0 <kerneltrap+0x2c>
    80002504:	00000097          	auipc	ra,0x0
    80002508:	e00080e7          	jalr	-512(ra) # 80002304 <cpuid>
    8000250c:	06050663          	beqz	a0,80002578 <kerneltrap+0xf4>
    80002510:	144027f3          	csrr	a5,sip
    80002514:	ffd7f793          	andi	a5,a5,-3
    80002518:	14479073          	csrw	sip,a5
    8000251c:	01813083          	ld	ra,24(sp)
    80002520:	01013403          	ld	s0,16(sp)
    80002524:	00813483          	ld	s1,8(sp)
    80002528:	02010113          	addi	sp,sp,32
    8000252c:	00008067          	ret
    80002530:	00000097          	auipc	ra,0x0
    80002534:	3c4080e7          	jalr	964(ra) # 800028f4 <plic_claim>
    80002538:	00a00793          	li	a5,10
    8000253c:	00050493          	mv	s1,a0
    80002540:	06f50863          	beq	a0,a5,800025b0 <kerneltrap+0x12c>
    80002544:	fc050ce3          	beqz	a0,8000251c <kerneltrap+0x98>
    80002548:	00050593          	mv	a1,a0
    8000254c:	00003517          	auipc	a0,0x3
    80002550:	c6c50513          	addi	a0,a0,-916 # 800051b8 <_ZZ12printIntegermE6digits+0xe0>
    80002554:	00000097          	auipc	ra,0x0
    80002558:	7e4080e7          	jalr	2020(ra) # 80002d38 <__printf>
    8000255c:	01013403          	ld	s0,16(sp)
    80002560:	01813083          	ld	ra,24(sp)
    80002564:	00048513          	mv	a0,s1
    80002568:	00813483          	ld	s1,8(sp)
    8000256c:	02010113          	addi	sp,sp,32
    80002570:	00000317          	auipc	t1,0x0
    80002574:	3bc30067          	jr	956(t1) # 8000292c <plic_complete>
    80002578:	00004517          	auipc	a0,0x4
    8000257c:	47850513          	addi	a0,a0,1144 # 800069f0 <tickslock>
    80002580:	00001097          	auipc	ra,0x1
    80002584:	48c080e7          	jalr	1164(ra) # 80003a0c <acquire>
    80002588:	00003717          	auipc	a4,0x3
    8000258c:	35c70713          	addi	a4,a4,860 # 800058e4 <ticks>
    80002590:	00072783          	lw	a5,0(a4)
    80002594:	00004517          	auipc	a0,0x4
    80002598:	45c50513          	addi	a0,a0,1116 # 800069f0 <tickslock>
    8000259c:	0017879b          	addiw	a5,a5,1
    800025a0:	00f72023          	sw	a5,0(a4)
    800025a4:	00001097          	auipc	ra,0x1
    800025a8:	534080e7          	jalr	1332(ra) # 80003ad8 <release>
    800025ac:	f65ff06f          	j	80002510 <kerneltrap+0x8c>
    800025b0:	00001097          	auipc	ra,0x1
    800025b4:	090080e7          	jalr	144(ra) # 80003640 <uartintr>
    800025b8:	fa5ff06f          	j	8000255c <kerneltrap+0xd8>
    800025bc:	00003517          	auipc	a0,0x3
    800025c0:	bdc50513          	addi	a0,a0,-1060 # 80005198 <_ZZ12printIntegermE6digits+0xc0>
    800025c4:	00000097          	auipc	ra,0x0
    800025c8:	718080e7          	jalr	1816(ra) # 80002cdc <panic>

00000000800025cc <clockintr>:
    800025cc:	fe010113          	addi	sp,sp,-32
    800025d0:	00813823          	sd	s0,16(sp)
    800025d4:	00913423          	sd	s1,8(sp)
    800025d8:	00113c23          	sd	ra,24(sp)
    800025dc:	02010413          	addi	s0,sp,32
    800025e0:	00004497          	auipc	s1,0x4
    800025e4:	41048493          	addi	s1,s1,1040 # 800069f0 <tickslock>
    800025e8:	00048513          	mv	a0,s1
    800025ec:	00001097          	auipc	ra,0x1
    800025f0:	420080e7          	jalr	1056(ra) # 80003a0c <acquire>
    800025f4:	00003717          	auipc	a4,0x3
    800025f8:	2f070713          	addi	a4,a4,752 # 800058e4 <ticks>
    800025fc:	00072783          	lw	a5,0(a4)
    80002600:	01013403          	ld	s0,16(sp)
    80002604:	01813083          	ld	ra,24(sp)
    80002608:	00048513          	mv	a0,s1
    8000260c:	0017879b          	addiw	a5,a5,1
    80002610:	00813483          	ld	s1,8(sp)
    80002614:	00f72023          	sw	a5,0(a4)
    80002618:	02010113          	addi	sp,sp,32
    8000261c:	00001317          	auipc	t1,0x1
    80002620:	4bc30067          	jr	1212(t1) # 80003ad8 <release>

0000000080002624 <devintr>:
    80002624:	142027f3          	csrr	a5,scause
    80002628:	00000513          	li	a0,0
    8000262c:	0007c463          	bltz	a5,80002634 <devintr+0x10>
    80002630:	00008067          	ret
    80002634:	fe010113          	addi	sp,sp,-32
    80002638:	00813823          	sd	s0,16(sp)
    8000263c:	00113c23          	sd	ra,24(sp)
    80002640:	00913423          	sd	s1,8(sp)
    80002644:	02010413          	addi	s0,sp,32
    80002648:	0ff7f713          	andi	a4,a5,255
    8000264c:	00900693          	li	a3,9
    80002650:	04d70c63          	beq	a4,a3,800026a8 <devintr+0x84>
    80002654:	fff00713          	li	a4,-1
    80002658:	03f71713          	slli	a4,a4,0x3f
    8000265c:	00170713          	addi	a4,a4,1
    80002660:	00e78c63          	beq	a5,a4,80002678 <devintr+0x54>
    80002664:	01813083          	ld	ra,24(sp)
    80002668:	01013403          	ld	s0,16(sp)
    8000266c:	00813483          	ld	s1,8(sp)
    80002670:	02010113          	addi	sp,sp,32
    80002674:	00008067          	ret
    80002678:	00000097          	auipc	ra,0x0
    8000267c:	c8c080e7          	jalr	-884(ra) # 80002304 <cpuid>
    80002680:	06050663          	beqz	a0,800026ec <devintr+0xc8>
    80002684:	144027f3          	csrr	a5,sip
    80002688:	ffd7f793          	andi	a5,a5,-3
    8000268c:	14479073          	csrw	sip,a5
    80002690:	01813083          	ld	ra,24(sp)
    80002694:	01013403          	ld	s0,16(sp)
    80002698:	00813483          	ld	s1,8(sp)
    8000269c:	00200513          	li	a0,2
    800026a0:	02010113          	addi	sp,sp,32
    800026a4:	00008067          	ret
    800026a8:	00000097          	auipc	ra,0x0
    800026ac:	24c080e7          	jalr	588(ra) # 800028f4 <plic_claim>
    800026b0:	00a00793          	li	a5,10
    800026b4:	00050493          	mv	s1,a0
    800026b8:	06f50663          	beq	a0,a5,80002724 <devintr+0x100>
    800026bc:	00100513          	li	a0,1
    800026c0:	fa0482e3          	beqz	s1,80002664 <devintr+0x40>
    800026c4:	00048593          	mv	a1,s1
    800026c8:	00003517          	auipc	a0,0x3
    800026cc:	af050513          	addi	a0,a0,-1296 # 800051b8 <_ZZ12printIntegermE6digits+0xe0>
    800026d0:	00000097          	auipc	ra,0x0
    800026d4:	668080e7          	jalr	1640(ra) # 80002d38 <__printf>
    800026d8:	00048513          	mv	a0,s1
    800026dc:	00000097          	auipc	ra,0x0
    800026e0:	250080e7          	jalr	592(ra) # 8000292c <plic_complete>
    800026e4:	00100513          	li	a0,1
    800026e8:	f7dff06f          	j	80002664 <devintr+0x40>
    800026ec:	00004517          	auipc	a0,0x4
    800026f0:	30450513          	addi	a0,a0,772 # 800069f0 <tickslock>
    800026f4:	00001097          	auipc	ra,0x1
    800026f8:	318080e7          	jalr	792(ra) # 80003a0c <acquire>
    800026fc:	00003717          	auipc	a4,0x3
    80002700:	1e870713          	addi	a4,a4,488 # 800058e4 <ticks>
    80002704:	00072783          	lw	a5,0(a4)
    80002708:	00004517          	auipc	a0,0x4
    8000270c:	2e850513          	addi	a0,a0,744 # 800069f0 <tickslock>
    80002710:	0017879b          	addiw	a5,a5,1
    80002714:	00f72023          	sw	a5,0(a4)
    80002718:	00001097          	auipc	ra,0x1
    8000271c:	3c0080e7          	jalr	960(ra) # 80003ad8 <release>
    80002720:	f65ff06f          	j	80002684 <devintr+0x60>
    80002724:	00001097          	auipc	ra,0x1
    80002728:	f1c080e7          	jalr	-228(ra) # 80003640 <uartintr>
    8000272c:	fadff06f          	j	800026d8 <devintr+0xb4>

0000000080002730 <kernelvec>:
    80002730:	f0010113          	addi	sp,sp,-256
    80002734:	00113023          	sd	ra,0(sp)
    80002738:	00213423          	sd	sp,8(sp)
    8000273c:	00313823          	sd	gp,16(sp)
    80002740:	00413c23          	sd	tp,24(sp)
    80002744:	02513023          	sd	t0,32(sp)
    80002748:	02613423          	sd	t1,40(sp)
    8000274c:	02713823          	sd	t2,48(sp)
    80002750:	02813c23          	sd	s0,56(sp)
    80002754:	04913023          	sd	s1,64(sp)
    80002758:	04a13423          	sd	a0,72(sp)
    8000275c:	04b13823          	sd	a1,80(sp)
    80002760:	04c13c23          	sd	a2,88(sp)
    80002764:	06d13023          	sd	a3,96(sp)
    80002768:	06e13423          	sd	a4,104(sp)
    8000276c:	06f13823          	sd	a5,112(sp)
    80002770:	07013c23          	sd	a6,120(sp)
    80002774:	09113023          	sd	a7,128(sp)
    80002778:	09213423          	sd	s2,136(sp)
    8000277c:	09313823          	sd	s3,144(sp)
    80002780:	09413c23          	sd	s4,152(sp)
    80002784:	0b513023          	sd	s5,160(sp)
    80002788:	0b613423          	sd	s6,168(sp)
    8000278c:	0b713823          	sd	s7,176(sp)
    80002790:	0b813c23          	sd	s8,184(sp)
    80002794:	0d913023          	sd	s9,192(sp)
    80002798:	0da13423          	sd	s10,200(sp)
    8000279c:	0db13823          	sd	s11,208(sp)
    800027a0:	0dc13c23          	sd	t3,216(sp)
    800027a4:	0fd13023          	sd	t4,224(sp)
    800027a8:	0fe13423          	sd	t5,232(sp)
    800027ac:	0ff13823          	sd	t6,240(sp)
    800027b0:	cd5ff0ef          	jal	ra,80002484 <kerneltrap>
    800027b4:	00013083          	ld	ra,0(sp)
    800027b8:	00813103          	ld	sp,8(sp)
    800027bc:	01013183          	ld	gp,16(sp)
    800027c0:	02013283          	ld	t0,32(sp)
    800027c4:	02813303          	ld	t1,40(sp)
    800027c8:	03013383          	ld	t2,48(sp)
    800027cc:	03813403          	ld	s0,56(sp)
    800027d0:	04013483          	ld	s1,64(sp)
    800027d4:	04813503          	ld	a0,72(sp)
    800027d8:	05013583          	ld	a1,80(sp)
    800027dc:	05813603          	ld	a2,88(sp)
    800027e0:	06013683          	ld	a3,96(sp)
    800027e4:	06813703          	ld	a4,104(sp)
    800027e8:	07013783          	ld	a5,112(sp)
    800027ec:	07813803          	ld	a6,120(sp)
    800027f0:	08013883          	ld	a7,128(sp)
    800027f4:	08813903          	ld	s2,136(sp)
    800027f8:	09013983          	ld	s3,144(sp)
    800027fc:	09813a03          	ld	s4,152(sp)
    80002800:	0a013a83          	ld	s5,160(sp)
    80002804:	0a813b03          	ld	s6,168(sp)
    80002808:	0b013b83          	ld	s7,176(sp)
    8000280c:	0b813c03          	ld	s8,184(sp)
    80002810:	0c013c83          	ld	s9,192(sp)
    80002814:	0c813d03          	ld	s10,200(sp)
    80002818:	0d013d83          	ld	s11,208(sp)
    8000281c:	0d813e03          	ld	t3,216(sp)
    80002820:	0e013e83          	ld	t4,224(sp)
    80002824:	0e813f03          	ld	t5,232(sp)
    80002828:	0f013f83          	ld	t6,240(sp)
    8000282c:	10010113          	addi	sp,sp,256
    80002830:	10200073          	sret
    80002834:	00000013          	nop
    80002838:	00000013          	nop
    8000283c:	00000013          	nop

0000000080002840 <timervec>:
    80002840:	34051573          	csrrw	a0,mscratch,a0
    80002844:	00b53023          	sd	a1,0(a0)
    80002848:	00c53423          	sd	a2,8(a0)
    8000284c:	00d53823          	sd	a3,16(a0)
    80002850:	01853583          	ld	a1,24(a0)
    80002854:	02053603          	ld	a2,32(a0)
    80002858:	0005b683          	ld	a3,0(a1)
    8000285c:	00c686b3          	add	a3,a3,a2
    80002860:	00d5b023          	sd	a3,0(a1)
    80002864:	00200593          	li	a1,2
    80002868:	14459073          	csrw	sip,a1
    8000286c:	01053683          	ld	a3,16(a0)
    80002870:	00853603          	ld	a2,8(a0)
    80002874:	00053583          	ld	a1,0(a0)
    80002878:	34051573          	csrrw	a0,mscratch,a0
    8000287c:	30200073          	mret

0000000080002880 <plicinit>:
    80002880:	ff010113          	addi	sp,sp,-16
    80002884:	00813423          	sd	s0,8(sp)
    80002888:	01010413          	addi	s0,sp,16
    8000288c:	00813403          	ld	s0,8(sp)
    80002890:	0c0007b7          	lui	a5,0xc000
    80002894:	00100713          	li	a4,1
    80002898:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000289c:	00e7a223          	sw	a4,4(a5)
    800028a0:	01010113          	addi	sp,sp,16
    800028a4:	00008067          	ret

00000000800028a8 <plicinithart>:
    800028a8:	ff010113          	addi	sp,sp,-16
    800028ac:	00813023          	sd	s0,0(sp)
    800028b0:	00113423          	sd	ra,8(sp)
    800028b4:	01010413          	addi	s0,sp,16
    800028b8:	00000097          	auipc	ra,0x0
    800028bc:	a4c080e7          	jalr	-1460(ra) # 80002304 <cpuid>
    800028c0:	0085171b          	slliw	a4,a0,0x8
    800028c4:	0c0027b7          	lui	a5,0xc002
    800028c8:	00e787b3          	add	a5,a5,a4
    800028cc:	40200713          	li	a4,1026
    800028d0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800028d4:	00813083          	ld	ra,8(sp)
    800028d8:	00013403          	ld	s0,0(sp)
    800028dc:	00d5151b          	slliw	a0,a0,0xd
    800028e0:	0c2017b7          	lui	a5,0xc201
    800028e4:	00a78533          	add	a0,a5,a0
    800028e8:	00052023          	sw	zero,0(a0)
    800028ec:	01010113          	addi	sp,sp,16
    800028f0:	00008067          	ret

00000000800028f4 <plic_claim>:
    800028f4:	ff010113          	addi	sp,sp,-16
    800028f8:	00813023          	sd	s0,0(sp)
    800028fc:	00113423          	sd	ra,8(sp)
    80002900:	01010413          	addi	s0,sp,16
    80002904:	00000097          	auipc	ra,0x0
    80002908:	a00080e7          	jalr	-1536(ra) # 80002304 <cpuid>
    8000290c:	00813083          	ld	ra,8(sp)
    80002910:	00013403          	ld	s0,0(sp)
    80002914:	00d5151b          	slliw	a0,a0,0xd
    80002918:	0c2017b7          	lui	a5,0xc201
    8000291c:	00a78533          	add	a0,a5,a0
    80002920:	00452503          	lw	a0,4(a0)
    80002924:	01010113          	addi	sp,sp,16
    80002928:	00008067          	ret

000000008000292c <plic_complete>:
    8000292c:	fe010113          	addi	sp,sp,-32
    80002930:	00813823          	sd	s0,16(sp)
    80002934:	00913423          	sd	s1,8(sp)
    80002938:	00113c23          	sd	ra,24(sp)
    8000293c:	02010413          	addi	s0,sp,32
    80002940:	00050493          	mv	s1,a0
    80002944:	00000097          	auipc	ra,0x0
    80002948:	9c0080e7          	jalr	-1600(ra) # 80002304 <cpuid>
    8000294c:	01813083          	ld	ra,24(sp)
    80002950:	01013403          	ld	s0,16(sp)
    80002954:	00d5179b          	slliw	a5,a0,0xd
    80002958:	0c201737          	lui	a4,0xc201
    8000295c:	00f707b3          	add	a5,a4,a5
    80002960:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002964:	00813483          	ld	s1,8(sp)
    80002968:	02010113          	addi	sp,sp,32
    8000296c:	00008067          	ret

0000000080002970 <consolewrite>:
    80002970:	fb010113          	addi	sp,sp,-80
    80002974:	04813023          	sd	s0,64(sp)
    80002978:	04113423          	sd	ra,72(sp)
    8000297c:	02913c23          	sd	s1,56(sp)
    80002980:	03213823          	sd	s2,48(sp)
    80002984:	03313423          	sd	s3,40(sp)
    80002988:	03413023          	sd	s4,32(sp)
    8000298c:	01513c23          	sd	s5,24(sp)
    80002990:	05010413          	addi	s0,sp,80
    80002994:	06c05c63          	blez	a2,80002a0c <consolewrite+0x9c>
    80002998:	00060993          	mv	s3,a2
    8000299c:	00050a13          	mv	s4,a0
    800029a0:	00058493          	mv	s1,a1
    800029a4:	00000913          	li	s2,0
    800029a8:	fff00a93          	li	s5,-1
    800029ac:	01c0006f          	j	800029c8 <consolewrite+0x58>
    800029b0:	fbf44503          	lbu	a0,-65(s0)
    800029b4:	0019091b          	addiw	s2,s2,1
    800029b8:	00148493          	addi	s1,s1,1
    800029bc:	00001097          	auipc	ra,0x1
    800029c0:	a9c080e7          	jalr	-1380(ra) # 80003458 <uartputc>
    800029c4:	03298063          	beq	s3,s2,800029e4 <consolewrite+0x74>
    800029c8:	00048613          	mv	a2,s1
    800029cc:	00100693          	li	a3,1
    800029d0:	000a0593          	mv	a1,s4
    800029d4:	fbf40513          	addi	a0,s0,-65
    800029d8:	00000097          	auipc	ra,0x0
    800029dc:	9e4080e7          	jalr	-1564(ra) # 800023bc <either_copyin>
    800029e0:	fd5518e3          	bne	a0,s5,800029b0 <consolewrite+0x40>
    800029e4:	04813083          	ld	ra,72(sp)
    800029e8:	04013403          	ld	s0,64(sp)
    800029ec:	03813483          	ld	s1,56(sp)
    800029f0:	02813983          	ld	s3,40(sp)
    800029f4:	02013a03          	ld	s4,32(sp)
    800029f8:	01813a83          	ld	s5,24(sp)
    800029fc:	00090513          	mv	a0,s2
    80002a00:	03013903          	ld	s2,48(sp)
    80002a04:	05010113          	addi	sp,sp,80
    80002a08:	00008067          	ret
    80002a0c:	00000913          	li	s2,0
    80002a10:	fd5ff06f          	j	800029e4 <consolewrite+0x74>

0000000080002a14 <consoleread>:
    80002a14:	f9010113          	addi	sp,sp,-112
    80002a18:	06813023          	sd	s0,96(sp)
    80002a1c:	04913c23          	sd	s1,88(sp)
    80002a20:	05213823          	sd	s2,80(sp)
    80002a24:	05313423          	sd	s3,72(sp)
    80002a28:	05413023          	sd	s4,64(sp)
    80002a2c:	03513c23          	sd	s5,56(sp)
    80002a30:	03613823          	sd	s6,48(sp)
    80002a34:	03713423          	sd	s7,40(sp)
    80002a38:	03813023          	sd	s8,32(sp)
    80002a3c:	06113423          	sd	ra,104(sp)
    80002a40:	01913c23          	sd	s9,24(sp)
    80002a44:	07010413          	addi	s0,sp,112
    80002a48:	00060b93          	mv	s7,a2
    80002a4c:	00050913          	mv	s2,a0
    80002a50:	00058c13          	mv	s8,a1
    80002a54:	00060b1b          	sext.w	s6,a2
    80002a58:	00004497          	auipc	s1,0x4
    80002a5c:	fc048493          	addi	s1,s1,-64 # 80006a18 <cons>
    80002a60:	00400993          	li	s3,4
    80002a64:	fff00a13          	li	s4,-1
    80002a68:	00a00a93          	li	s5,10
    80002a6c:	05705e63          	blez	s7,80002ac8 <consoleread+0xb4>
    80002a70:	09c4a703          	lw	a4,156(s1)
    80002a74:	0984a783          	lw	a5,152(s1)
    80002a78:	0007071b          	sext.w	a4,a4
    80002a7c:	08e78463          	beq	a5,a4,80002b04 <consoleread+0xf0>
    80002a80:	07f7f713          	andi	a4,a5,127
    80002a84:	00e48733          	add	a4,s1,a4
    80002a88:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80002a8c:	0017869b          	addiw	a3,a5,1
    80002a90:	08d4ac23          	sw	a3,152(s1)
    80002a94:	00070c9b          	sext.w	s9,a4
    80002a98:	0b370663          	beq	a4,s3,80002b44 <consoleread+0x130>
    80002a9c:	00100693          	li	a3,1
    80002aa0:	f9f40613          	addi	a2,s0,-97
    80002aa4:	000c0593          	mv	a1,s8
    80002aa8:	00090513          	mv	a0,s2
    80002aac:	f8e40fa3          	sb	a4,-97(s0)
    80002ab0:	00000097          	auipc	ra,0x0
    80002ab4:	8c0080e7          	jalr	-1856(ra) # 80002370 <either_copyout>
    80002ab8:	01450863          	beq	a0,s4,80002ac8 <consoleread+0xb4>
    80002abc:	001c0c13          	addi	s8,s8,1
    80002ac0:	fffb8b9b          	addiw	s7,s7,-1
    80002ac4:	fb5c94e3          	bne	s9,s5,80002a6c <consoleread+0x58>
    80002ac8:	000b851b          	sext.w	a0,s7
    80002acc:	06813083          	ld	ra,104(sp)
    80002ad0:	06013403          	ld	s0,96(sp)
    80002ad4:	05813483          	ld	s1,88(sp)
    80002ad8:	05013903          	ld	s2,80(sp)
    80002adc:	04813983          	ld	s3,72(sp)
    80002ae0:	04013a03          	ld	s4,64(sp)
    80002ae4:	03813a83          	ld	s5,56(sp)
    80002ae8:	02813b83          	ld	s7,40(sp)
    80002aec:	02013c03          	ld	s8,32(sp)
    80002af0:	01813c83          	ld	s9,24(sp)
    80002af4:	40ab053b          	subw	a0,s6,a0
    80002af8:	03013b03          	ld	s6,48(sp)
    80002afc:	07010113          	addi	sp,sp,112
    80002b00:	00008067          	ret
    80002b04:	00001097          	auipc	ra,0x1
    80002b08:	1d8080e7          	jalr	472(ra) # 80003cdc <push_on>
    80002b0c:	0984a703          	lw	a4,152(s1)
    80002b10:	09c4a783          	lw	a5,156(s1)
    80002b14:	0007879b          	sext.w	a5,a5
    80002b18:	fef70ce3          	beq	a4,a5,80002b10 <consoleread+0xfc>
    80002b1c:	00001097          	auipc	ra,0x1
    80002b20:	234080e7          	jalr	564(ra) # 80003d50 <pop_on>
    80002b24:	0984a783          	lw	a5,152(s1)
    80002b28:	07f7f713          	andi	a4,a5,127
    80002b2c:	00e48733          	add	a4,s1,a4
    80002b30:	01874703          	lbu	a4,24(a4)
    80002b34:	0017869b          	addiw	a3,a5,1
    80002b38:	08d4ac23          	sw	a3,152(s1)
    80002b3c:	00070c9b          	sext.w	s9,a4
    80002b40:	f5371ee3          	bne	a4,s3,80002a9c <consoleread+0x88>
    80002b44:	000b851b          	sext.w	a0,s7
    80002b48:	f96bf2e3          	bgeu	s7,s6,80002acc <consoleread+0xb8>
    80002b4c:	08f4ac23          	sw	a5,152(s1)
    80002b50:	f7dff06f          	j	80002acc <consoleread+0xb8>

0000000080002b54 <consputc>:
    80002b54:	10000793          	li	a5,256
    80002b58:	00f50663          	beq	a0,a5,80002b64 <consputc+0x10>
    80002b5c:	00001317          	auipc	t1,0x1
    80002b60:	9f430067          	jr	-1548(t1) # 80003550 <uartputc_sync>
    80002b64:	ff010113          	addi	sp,sp,-16
    80002b68:	00113423          	sd	ra,8(sp)
    80002b6c:	00813023          	sd	s0,0(sp)
    80002b70:	01010413          	addi	s0,sp,16
    80002b74:	00800513          	li	a0,8
    80002b78:	00001097          	auipc	ra,0x1
    80002b7c:	9d8080e7          	jalr	-1576(ra) # 80003550 <uartputc_sync>
    80002b80:	02000513          	li	a0,32
    80002b84:	00001097          	auipc	ra,0x1
    80002b88:	9cc080e7          	jalr	-1588(ra) # 80003550 <uartputc_sync>
    80002b8c:	00013403          	ld	s0,0(sp)
    80002b90:	00813083          	ld	ra,8(sp)
    80002b94:	00800513          	li	a0,8
    80002b98:	01010113          	addi	sp,sp,16
    80002b9c:	00001317          	auipc	t1,0x1
    80002ba0:	9b430067          	jr	-1612(t1) # 80003550 <uartputc_sync>

0000000080002ba4 <consoleintr>:
    80002ba4:	fe010113          	addi	sp,sp,-32
    80002ba8:	00813823          	sd	s0,16(sp)
    80002bac:	00913423          	sd	s1,8(sp)
    80002bb0:	01213023          	sd	s2,0(sp)
    80002bb4:	00113c23          	sd	ra,24(sp)
    80002bb8:	02010413          	addi	s0,sp,32
    80002bbc:	00004917          	auipc	s2,0x4
    80002bc0:	e5c90913          	addi	s2,s2,-420 # 80006a18 <cons>
    80002bc4:	00050493          	mv	s1,a0
    80002bc8:	00090513          	mv	a0,s2
    80002bcc:	00001097          	auipc	ra,0x1
    80002bd0:	e40080e7          	jalr	-448(ra) # 80003a0c <acquire>
    80002bd4:	02048c63          	beqz	s1,80002c0c <consoleintr+0x68>
    80002bd8:	0a092783          	lw	a5,160(s2)
    80002bdc:	09892703          	lw	a4,152(s2)
    80002be0:	07f00693          	li	a3,127
    80002be4:	40e7873b          	subw	a4,a5,a4
    80002be8:	02e6e263          	bltu	a3,a4,80002c0c <consoleintr+0x68>
    80002bec:	00d00713          	li	a4,13
    80002bf0:	04e48063          	beq	s1,a4,80002c30 <consoleintr+0x8c>
    80002bf4:	07f7f713          	andi	a4,a5,127
    80002bf8:	00e90733          	add	a4,s2,a4
    80002bfc:	0017879b          	addiw	a5,a5,1
    80002c00:	0af92023          	sw	a5,160(s2)
    80002c04:	00970c23          	sb	s1,24(a4)
    80002c08:	08f92e23          	sw	a5,156(s2)
    80002c0c:	01013403          	ld	s0,16(sp)
    80002c10:	01813083          	ld	ra,24(sp)
    80002c14:	00813483          	ld	s1,8(sp)
    80002c18:	00013903          	ld	s2,0(sp)
    80002c1c:	00004517          	auipc	a0,0x4
    80002c20:	dfc50513          	addi	a0,a0,-516 # 80006a18 <cons>
    80002c24:	02010113          	addi	sp,sp,32
    80002c28:	00001317          	auipc	t1,0x1
    80002c2c:	eb030067          	jr	-336(t1) # 80003ad8 <release>
    80002c30:	00a00493          	li	s1,10
    80002c34:	fc1ff06f          	j	80002bf4 <consoleintr+0x50>

0000000080002c38 <consoleinit>:
    80002c38:	fe010113          	addi	sp,sp,-32
    80002c3c:	00113c23          	sd	ra,24(sp)
    80002c40:	00813823          	sd	s0,16(sp)
    80002c44:	00913423          	sd	s1,8(sp)
    80002c48:	02010413          	addi	s0,sp,32
    80002c4c:	00004497          	auipc	s1,0x4
    80002c50:	dcc48493          	addi	s1,s1,-564 # 80006a18 <cons>
    80002c54:	00048513          	mv	a0,s1
    80002c58:	00002597          	auipc	a1,0x2
    80002c5c:	5b858593          	addi	a1,a1,1464 # 80005210 <_ZZ12printIntegermE6digits+0x138>
    80002c60:	00001097          	auipc	ra,0x1
    80002c64:	d88080e7          	jalr	-632(ra) # 800039e8 <initlock>
    80002c68:	00000097          	auipc	ra,0x0
    80002c6c:	7ac080e7          	jalr	1964(ra) # 80003414 <uartinit>
    80002c70:	01813083          	ld	ra,24(sp)
    80002c74:	01013403          	ld	s0,16(sp)
    80002c78:	00000797          	auipc	a5,0x0
    80002c7c:	d9c78793          	addi	a5,a5,-612 # 80002a14 <consoleread>
    80002c80:	0af4bc23          	sd	a5,184(s1)
    80002c84:	00000797          	auipc	a5,0x0
    80002c88:	cec78793          	addi	a5,a5,-788 # 80002970 <consolewrite>
    80002c8c:	0cf4b023          	sd	a5,192(s1)
    80002c90:	00813483          	ld	s1,8(sp)
    80002c94:	02010113          	addi	sp,sp,32
    80002c98:	00008067          	ret

0000000080002c9c <console_read>:
    80002c9c:	ff010113          	addi	sp,sp,-16
    80002ca0:	00813423          	sd	s0,8(sp)
    80002ca4:	01010413          	addi	s0,sp,16
    80002ca8:	00813403          	ld	s0,8(sp)
    80002cac:	00004317          	auipc	t1,0x4
    80002cb0:	e2433303          	ld	t1,-476(t1) # 80006ad0 <devsw+0x10>
    80002cb4:	01010113          	addi	sp,sp,16
    80002cb8:	00030067          	jr	t1

0000000080002cbc <console_write>:
    80002cbc:	ff010113          	addi	sp,sp,-16
    80002cc0:	00813423          	sd	s0,8(sp)
    80002cc4:	01010413          	addi	s0,sp,16
    80002cc8:	00813403          	ld	s0,8(sp)
    80002ccc:	00004317          	auipc	t1,0x4
    80002cd0:	e0c33303          	ld	t1,-500(t1) # 80006ad8 <devsw+0x18>
    80002cd4:	01010113          	addi	sp,sp,16
    80002cd8:	00030067          	jr	t1

0000000080002cdc <panic>:
    80002cdc:	fe010113          	addi	sp,sp,-32
    80002ce0:	00113c23          	sd	ra,24(sp)
    80002ce4:	00813823          	sd	s0,16(sp)
    80002ce8:	00913423          	sd	s1,8(sp)
    80002cec:	02010413          	addi	s0,sp,32
    80002cf0:	00050493          	mv	s1,a0
    80002cf4:	00002517          	auipc	a0,0x2
    80002cf8:	52450513          	addi	a0,a0,1316 # 80005218 <_ZZ12printIntegermE6digits+0x140>
    80002cfc:	00004797          	auipc	a5,0x4
    80002d00:	e607ae23          	sw	zero,-388(a5) # 80006b78 <pr+0x18>
    80002d04:	00000097          	auipc	ra,0x0
    80002d08:	034080e7          	jalr	52(ra) # 80002d38 <__printf>
    80002d0c:	00048513          	mv	a0,s1
    80002d10:	00000097          	auipc	ra,0x0
    80002d14:	028080e7          	jalr	40(ra) # 80002d38 <__printf>
    80002d18:	00002517          	auipc	a0,0x2
    80002d1c:	3b050513          	addi	a0,a0,944 # 800050c8 <CONSOLE_STATUS+0xb8>
    80002d20:	00000097          	auipc	ra,0x0
    80002d24:	018080e7          	jalr	24(ra) # 80002d38 <__printf>
    80002d28:	00100793          	li	a5,1
    80002d2c:	00003717          	auipc	a4,0x3
    80002d30:	baf72e23          	sw	a5,-1092(a4) # 800058e8 <panicked>
    80002d34:	0000006f          	j	80002d34 <panic+0x58>

0000000080002d38 <__printf>:
    80002d38:	f3010113          	addi	sp,sp,-208
    80002d3c:	08813023          	sd	s0,128(sp)
    80002d40:	07313423          	sd	s3,104(sp)
    80002d44:	09010413          	addi	s0,sp,144
    80002d48:	05813023          	sd	s8,64(sp)
    80002d4c:	08113423          	sd	ra,136(sp)
    80002d50:	06913c23          	sd	s1,120(sp)
    80002d54:	07213823          	sd	s2,112(sp)
    80002d58:	07413023          	sd	s4,96(sp)
    80002d5c:	05513c23          	sd	s5,88(sp)
    80002d60:	05613823          	sd	s6,80(sp)
    80002d64:	05713423          	sd	s7,72(sp)
    80002d68:	03913c23          	sd	s9,56(sp)
    80002d6c:	03a13823          	sd	s10,48(sp)
    80002d70:	03b13423          	sd	s11,40(sp)
    80002d74:	00004317          	auipc	t1,0x4
    80002d78:	dec30313          	addi	t1,t1,-532 # 80006b60 <pr>
    80002d7c:	01832c03          	lw	s8,24(t1)
    80002d80:	00b43423          	sd	a1,8(s0)
    80002d84:	00c43823          	sd	a2,16(s0)
    80002d88:	00d43c23          	sd	a3,24(s0)
    80002d8c:	02e43023          	sd	a4,32(s0)
    80002d90:	02f43423          	sd	a5,40(s0)
    80002d94:	03043823          	sd	a6,48(s0)
    80002d98:	03143c23          	sd	a7,56(s0)
    80002d9c:	00050993          	mv	s3,a0
    80002da0:	4a0c1663          	bnez	s8,8000324c <__printf+0x514>
    80002da4:	60098c63          	beqz	s3,800033bc <__printf+0x684>
    80002da8:	0009c503          	lbu	a0,0(s3)
    80002dac:	00840793          	addi	a5,s0,8
    80002db0:	f6f43c23          	sd	a5,-136(s0)
    80002db4:	00000493          	li	s1,0
    80002db8:	22050063          	beqz	a0,80002fd8 <__printf+0x2a0>
    80002dbc:	00002a37          	lui	s4,0x2
    80002dc0:	00018ab7          	lui	s5,0x18
    80002dc4:	000f4b37          	lui	s6,0xf4
    80002dc8:	00989bb7          	lui	s7,0x989
    80002dcc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002dd0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002dd4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002dd8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002ddc:	00148c9b          	addiw	s9,s1,1
    80002de0:	02500793          	li	a5,37
    80002de4:	01998933          	add	s2,s3,s9
    80002de8:	38f51263          	bne	a0,a5,8000316c <__printf+0x434>
    80002dec:	00094783          	lbu	a5,0(s2)
    80002df0:	00078c9b          	sext.w	s9,a5
    80002df4:	1e078263          	beqz	a5,80002fd8 <__printf+0x2a0>
    80002df8:	0024849b          	addiw	s1,s1,2
    80002dfc:	07000713          	li	a4,112
    80002e00:	00998933          	add	s2,s3,s1
    80002e04:	38e78a63          	beq	a5,a4,80003198 <__printf+0x460>
    80002e08:	20f76863          	bltu	a4,a5,80003018 <__printf+0x2e0>
    80002e0c:	42a78863          	beq	a5,a0,8000323c <__printf+0x504>
    80002e10:	06400713          	li	a4,100
    80002e14:	40e79663          	bne	a5,a4,80003220 <__printf+0x4e8>
    80002e18:	f7843783          	ld	a5,-136(s0)
    80002e1c:	0007a603          	lw	a2,0(a5)
    80002e20:	00878793          	addi	a5,a5,8
    80002e24:	f6f43c23          	sd	a5,-136(s0)
    80002e28:	42064a63          	bltz	a2,8000325c <__printf+0x524>
    80002e2c:	00a00713          	li	a4,10
    80002e30:	02e677bb          	remuw	a5,a2,a4
    80002e34:	00002d97          	auipc	s11,0x2
    80002e38:	40cd8d93          	addi	s11,s11,1036 # 80005240 <digits>
    80002e3c:	00900593          	li	a1,9
    80002e40:	0006051b          	sext.w	a0,a2
    80002e44:	00000c93          	li	s9,0
    80002e48:	02079793          	slli	a5,a5,0x20
    80002e4c:	0207d793          	srli	a5,a5,0x20
    80002e50:	00fd87b3          	add	a5,s11,a5
    80002e54:	0007c783          	lbu	a5,0(a5)
    80002e58:	02e656bb          	divuw	a3,a2,a4
    80002e5c:	f8f40023          	sb	a5,-128(s0)
    80002e60:	14c5d863          	bge	a1,a2,80002fb0 <__printf+0x278>
    80002e64:	06300593          	li	a1,99
    80002e68:	00100c93          	li	s9,1
    80002e6c:	02e6f7bb          	remuw	a5,a3,a4
    80002e70:	02079793          	slli	a5,a5,0x20
    80002e74:	0207d793          	srli	a5,a5,0x20
    80002e78:	00fd87b3          	add	a5,s11,a5
    80002e7c:	0007c783          	lbu	a5,0(a5)
    80002e80:	02e6d73b          	divuw	a4,a3,a4
    80002e84:	f8f400a3          	sb	a5,-127(s0)
    80002e88:	12a5f463          	bgeu	a1,a0,80002fb0 <__printf+0x278>
    80002e8c:	00a00693          	li	a3,10
    80002e90:	00900593          	li	a1,9
    80002e94:	02d777bb          	remuw	a5,a4,a3
    80002e98:	02079793          	slli	a5,a5,0x20
    80002e9c:	0207d793          	srli	a5,a5,0x20
    80002ea0:	00fd87b3          	add	a5,s11,a5
    80002ea4:	0007c503          	lbu	a0,0(a5)
    80002ea8:	02d757bb          	divuw	a5,a4,a3
    80002eac:	f8a40123          	sb	a0,-126(s0)
    80002eb0:	48e5f263          	bgeu	a1,a4,80003334 <__printf+0x5fc>
    80002eb4:	06300513          	li	a0,99
    80002eb8:	02d7f5bb          	remuw	a1,a5,a3
    80002ebc:	02059593          	slli	a1,a1,0x20
    80002ec0:	0205d593          	srli	a1,a1,0x20
    80002ec4:	00bd85b3          	add	a1,s11,a1
    80002ec8:	0005c583          	lbu	a1,0(a1)
    80002ecc:	02d7d7bb          	divuw	a5,a5,a3
    80002ed0:	f8b401a3          	sb	a1,-125(s0)
    80002ed4:	48e57263          	bgeu	a0,a4,80003358 <__printf+0x620>
    80002ed8:	3e700513          	li	a0,999
    80002edc:	02d7f5bb          	remuw	a1,a5,a3
    80002ee0:	02059593          	slli	a1,a1,0x20
    80002ee4:	0205d593          	srli	a1,a1,0x20
    80002ee8:	00bd85b3          	add	a1,s11,a1
    80002eec:	0005c583          	lbu	a1,0(a1)
    80002ef0:	02d7d7bb          	divuw	a5,a5,a3
    80002ef4:	f8b40223          	sb	a1,-124(s0)
    80002ef8:	46e57663          	bgeu	a0,a4,80003364 <__printf+0x62c>
    80002efc:	02d7f5bb          	remuw	a1,a5,a3
    80002f00:	02059593          	slli	a1,a1,0x20
    80002f04:	0205d593          	srli	a1,a1,0x20
    80002f08:	00bd85b3          	add	a1,s11,a1
    80002f0c:	0005c583          	lbu	a1,0(a1)
    80002f10:	02d7d7bb          	divuw	a5,a5,a3
    80002f14:	f8b402a3          	sb	a1,-123(s0)
    80002f18:	46ea7863          	bgeu	s4,a4,80003388 <__printf+0x650>
    80002f1c:	02d7f5bb          	remuw	a1,a5,a3
    80002f20:	02059593          	slli	a1,a1,0x20
    80002f24:	0205d593          	srli	a1,a1,0x20
    80002f28:	00bd85b3          	add	a1,s11,a1
    80002f2c:	0005c583          	lbu	a1,0(a1)
    80002f30:	02d7d7bb          	divuw	a5,a5,a3
    80002f34:	f8b40323          	sb	a1,-122(s0)
    80002f38:	3eeaf863          	bgeu	s5,a4,80003328 <__printf+0x5f0>
    80002f3c:	02d7f5bb          	remuw	a1,a5,a3
    80002f40:	02059593          	slli	a1,a1,0x20
    80002f44:	0205d593          	srli	a1,a1,0x20
    80002f48:	00bd85b3          	add	a1,s11,a1
    80002f4c:	0005c583          	lbu	a1,0(a1)
    80002f50:	02d7d7bb          	divuw	a5,a5,a3
    80002f54:	f8b403a3          	sb	a1,-121(s0)
    80002f58:	42eb7e63          	bgeu	s6,a4,80003394 <__printf+0x65c>
    80002f5c:	02d7f5bb          	remuw	a1,a5,a3
    80002f60:	02059593          	slli	a1,a1,0x20
    80002f64:	0205d593          	srli	a1,a1,0x20
    80002f68:	00bd85b3          	add	a1,s11,a1
    80002f6c:	0005c583          	lbu	a1,0(a1)
    80002f70:	02d7d7bb          	divuw	a5,a5,a3
    80002f74:	f8b40423          	sb	a1,-120(s0)
    80002f78:	42ebfc63          	bgeu	s7,a4,800033b0 <__printf+0x678>
    80002f7c:	02079793          	slli	a5,a5,0x20
    80002f80:	0207d793          	srli	a5,a5,0x20
    80002f84:	00fd8db3          	add	s11,s11,a5
    80002f88:	000dc703          	lbu	a4,0(s11)
    80002f8c:	00a00793          	li	a5,10
    80002f90:	00900c93          	li	s9,9
    80002f94:	f8e404a3          	sb	a4,-119(s0)
    80002f98:	00065c63          	bgez	a2,80002fb0 <__printf+0x278>
    80002f9c:	f9040713          	addi	a4,s0,-112
    80002fa0:	00f70733          	add	a4,a4,a5
    80002fa4:	02d00693          	li	a3,45
    80002fa8:	fed70823          	sb	a3,-16(a4)
    80002fac:	00078c93          	mv	s9,a5
    80002fb0:	f8040793          	addi	a5,s0,-128
    80002fb4:	01978cb3          	add	s9,a5,s9
    80002fb8:	f7f40d13          	addi	s10,s0,-129
    80002fbc:	000cc503          	lbu	a0,0(s9)
    80002fc0:	fffc8c93          	addi	s9,s9,-1
    80002fc4:	00000097          	auipc	ra,0x0
    80002fc8:	b90080e7          	jalr	-1136(ra) # 80002b54 <consputc>
    80002fcc:	ffac98e3          	bne	s9,s10,80002fbc <__printf+0x284>
    80002fd0:	00094503          	lbu	a0,0(s2)
    80002fd4:	e00514e3          	bnez	a0,80002ddc <__printf+0xa4>
    80002fd8:	1a0c1663          	bnez	s8,80003184 <__printf+0x44c>
    80002fdc:	08813083          	ld	ra,136(sp)
    80002fe0:	08013403          	ld	s0,128(sp)
    80002fe4:	07813483          	ld	s1,120(sp)
    80002fe8:	07013903          	ld	s2,112(sp)
    80002fec:	06813983          	ld	s3,104(sp)
    80002ff0:	06013a03          	ld	s4,96(sp)
    80002ff4:	05813a83          	ld	s5,88(sp)
    80002ff8:	05013b03          	ld	s6,80(sp)
    80002ffc:	04813b83          	ld	s7,72(sp)
    80003000:	04013c03          	ld	s8,64(sp)
    80003004:	03813c83          	ld	s9,56(sp)
    80003008:	03013d03          	ld	s10,48(sp)
    8000300c:	02813d83          	ld	s11,40(sp)
    80003010:	0d010113          	addi	sp,sp,208
    80003014:	00008067          	ret
    80003018:	07300713          	li	a4,115
    8000301c:	1ce78a63          	beq	a5,a4,800031f0 <__printf+0x4b8>
    80003020:	07800713          	li	a4,120
    80003024:	1ee79e63          	bne	a5,a4,80003220 <__printf+0x4e8>
    80003028:	f7843783          	ld	a5,-136(s0)
    8000302c:	0007a703          	lw	a4,0(a5)
    80003030:	00878793          	addi	a5,a5,8
    80003034:	f6f43c23          	sd	a5,-136(s0)
    80003038:	28074263          	bltz	a4,800032bc <__printf+0x584>
    8000303c:	00002d97          	auipc	s11,0x2
    80003040:	204d8d93          	addi	s11,s11,516 # 80005240 <digits>
    80003044:	00f77793          	andi	a5,a4,15
    80003048:	00fd87b3          	add	a5,s11,a5
    8000304c:	0007c683          	lbu	a3,0(a5)
    80003050:	00f00613          	li	a2,15
    80003054:	0007079b          	sext.w	a5,a4
    80003058:	f8d40023          	sb	a3,-128(s0)
    8000305c:	0047559b          	srliw	a1,a4,0x4
    80003060:	0047569b          	srliw	a3,a4,0x4
    80003064:	00000c93          	li	s9,0
    80003068:	0ee65063          	bge	a2,a4,80003148 <__printf+0x410>
    8000306c:	00f6f693          	andi	a3,a3,15
    80003070:	00dd86b3          	add	a3,s11,a3
    80003074:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003078:	0087d79b          	srliw	a5,a5,0x8
    8000307c:	00100c93          	li	s9,1
    80003080:	f8d400a3          	sb	a3,-127(s0)
    80003084:	0cb67263          	bgeu	a2,a1,80003148 <__printf+0x410>
    80003088:	00f7f693          	andi	a3,a5,15
    8000308c:	00dd86b3          	add	a3,s11,a3
    80003090:	0006c583          	lbu	a1,0(a3)
    80003094:	00f00613          	li	a2,15
    80003098:	0047d69b          	srliw	a3,a5,0x4
    8000309c:	f8b40123          	sb	a1,-126(s0)
    800030a0:	0047d593          	srli	a1,a5,0x4
    800030a4:	28f67e63          	bgeu	a2,a5,80003340 <__printf+0x608>
    800030a8:	00f6f693          	andi	a3,a3,15
    800030ac:	00dd86b3          	add	a3,s11,a3
    800030b0:	0006c503          	lbu	a0,0(a3)
    800030b4:	0087d813          	srli	a6,a5,0x8
    800030b8:	0087d69b          	srliw	a3,a5,0x8
    800030bc:	f8a401a3          	sb	a0,-125(s0)
    800030c0:	28b67663          	bgeu	a2,a1,8000334c <__printf+0x614>
    800030c4:	00f6f693          	andi	a3,a3,15
    800030c8:	00dd86b3          	add	a3,s11,a3
    800030cc:	0006c583          	lbu	a1,0(a3)
    800030d0:	00c7d513          	srli	a0,a5,0xc
    800030d4:	00c7d69b          	srliw	a3,a5,0xc
    800030d8:	f8b40223          	sb	a1,-124(s0)
    800030dc:	29067a63          	bgeu	a2,a6,80003370 <__printf+0x638>
    800030e0:	00f6f693          	andi	a3,a3,15
    800030e4:	00dd86b3          	add	a3,s11,a3
    800030e8:	0006c583          	lbu	a1,0(a3)
    800030ec:	0107d813          	srli	a6,a5,0x10
    800030f0:	0107d69b          	srliw	a3,a5,0x10
    800030f4:	f8b402a3          	sb	a1,-123(s0)
    800030f8:	28a67263          	bgeu	a2,a0,8000337c <__printf+0x644>
    800030fc:	00f6f693          	andi	a3,a3,15
    80003100:	00dd86b3          	add	a3,s11,a3
    80003104:	0006c683          	lbu	a3,0(a3)
    80003108:	0147d79b          	srliw	a5,a5,0x14
    8000310c:	f8d40323          	sb	a3,-122(s0)
    80003110:	21067663          	bgeu	a2,a6,8000331c <__printf+0x5e4>
    80003114:	02079793          	slli	a5,a5,0x20
    80003118:	0207d793          	srli	a5,a5,0x20
    8000311c:	00fd8db3          	add	s11,s11,a5
    80003120:	000dc683          	lbu	a3,0(s11)
    80003124:	00800793          	li	a5,8
    80003128:	00700c93          	li	s9,7
    8000312c:	f8d403a3          	sb	a3,-121(s0)
    80003130:	00075c63          	bgez	a4,80003148 <__printf+0x410>
    80003134:	f9040713          	addi	a4,s0,-112
    80003138:	00f70733          	add	a4,a4,a5
    8000313c:	02d00693          	li	a3,45
    80003140:	fed70823          	sb	a3,-16(a4)
    80003144:	00078c93          	mv	s9,a5
    80003148:	f8040793          	addi	a5,s0,-128
    8000314c:	01978cb3          	add	s9,a5,s9
    80003150:	f7f40d13          	addi	s10,s0,-129
    80003154:	000cc503          	lbu	a0,0(s9)
    80003158:	fffc8c93          	addi	s9,s9,-1
    8000315c:	00000097          	auipc	ra,0x0
    80003160:	9f8080e7          	jalr	-1544(ra) # 80002b54 <consputc>
    80003164:	ff9d18e3          	bne	s10,s9,80003154 <__printf+0x41c>
    80003168:	0100006f          	j	80003178 <__printf+0x440>
    8000316c:	00000097          	auipc	ra,0x0
    80003170:	9e8080e7          	jalr	-1560(ra) # 80002b54 <consputc>
    80003174:	000c8493          	mv	s1,s9
    80003178:	00094503          	lbu	a0,0(s2)
    8000317c:	c60510e3          	bnez	a0,80002ddc <__printf+0xa4>
    80003180:	e40c0ee3          	beqz	s8,80002fdc <__printf+0x2a4>
    80003184:	00004517          	auipc	a0,0x4
    80003188:	9dc50513          	addi	a0,a0,-1572 # 80006b60 <pr>
    8000318c:	00001097          	auipc	ra,0x1
    80003190:	94c080e7          	jalr	-1716(ra) # 80003ad8 <release>
    80003194:	e49ff06f          	j	80002fdc <__printf+0x2a4>
    80003198:	f7843783          	ld	a5,-136(s0)
    8000319c:	03000513          	li	a0,48
    800031a0:	01000d13          	li	s10,16
    800031a4:	00878713          	addi	a4,a5,8
    800031a8:	0007bc83          	ld	s9,0(a5)
    800031ac:	f6e43c23          	sd	a4,-136(s0)
    800031b0:	00000097          	auipc	ra,0x0
    800031b4:	9a4080e7          	jalr	-1628(ra) # 80002b54 <consputc>
    800031b8:	07800513          	li	a0,120
    800031bc:	00000097          	auipc	ra,0x0
    800031c0:	998080e7          	jalr	-1640(ra) # 80002b54 <consputc>
    800031c4:	00002d97          	auipc	s11,0x2
    800031c8:	07cd8d93          	addi	s11,s11,124 # 80005240 <digits>
    800031cc:	03ccd793          	srli	a5,s9,0x3c
    800031d0:	00fd87b3          	add	a5,s11,a5
    800031d4:	0007c503          	lbu	a0,0(a5)
    800031d8:	fffd0d1b          	addiw	s10,s10,-1
    800031dc:	004c9c93          	slli	s9,s9,0x4
    800031e0:	00000097          	auipc	ra,0x0
    800031e4:	974080e7          	jalr	-1676(ra) # 80002b54 <consputc>
    800031e8:	fe0d12e3          	bnez	s10,800031cc <__printf+0x494>
    800031ec:	f8dff06f          	j	80003178 <__printf+0x440>
    800031f0:	f7843783          	ld	a5,-136(s0)
    800031f4:	0007bc83          	ld	s9,0(a5)
    800031f8:	00878793          	addi	a5,a5,8
    800031fc:	f6f43c23          	sd	a5,-136(s0)
    80003200:	000c9a63          	bnez	s9,80003214 <__printf+0x4dc>
    80003204:	1080006f          	j	8000330c <__printf+0x5d4>
    80003208:	001c8c93          	addi	s9,s9,1
    8000320c:	00000097          	auipc	ra,0x0
    80003210:	948080e7          	jalr	-1720(ra) # 80002b54 <consputc>
    80003214:	000cc503          	lbu	a0,0(s9)
    80003218:	fe0518e3          	bnez	a0,80003208 <__printf+0x4d0>
    8000321c:	f5dff06f          	j	80003178 <__printf+0x440>
    80003220:	02500513          	li	a0,37
    80003224:	00000097          	auipc	ra,0x0
    80003228:	930080e7          	jalr	-1744(ra) # 80002b54 <consputc>
    8000322c:	000c8513          	mv	a0,s9
    80003230:	00000097          	auipc	ra,0x0
    80003234:	924080e7          	jalr	-1756(ra) # 80002b54 <consputc>
    80003238:	f41ff06f          	j	80003178 <__printf+0x440>
    8000323c:	02500513          	li	a0,37
    80003240:	00000097          	auipc	ra,0x0
    80003244:	914080e7          	jalr	-1772(ra) # 80002b54 <consputc>
    80003248:	f31ff06f          	j	80003178 <__printf+0x440>
    8000324c:	00030513          	mv	a0,t1
    80003250:	00000097          	auipc	ra,0x0
    80003254:	7bc080e7          	jalr	1980(ra) # 80003a0c <acquire>
    80003258:	b4dff06f          	j	80002da4 <__printf+0x6c>
    8000325c:	40c0053b          	negw	a0,a2
    80003260:	00a00713          	li	a4,10
    80003264:	02e576bb          	remuw	a3,a0,a4
    80003268:	00002d97          	auipc	s11,0x2
    8000326c:	fd8d8d93          	addi	s11,s11,-40 # 80005240 <digits>
    80003270:	ff700593          	li	a1,-9
    80003274:	02069693          	slli	a3,a3,0x20
    80003278:	0206d693          	srli	a3,a3,0x20
    8000327c:	00dd86b3          	add	a3,s11,a3
    80003280:	0006c683          	lbu	a3,0(a3)
    80003284:	02e557bb          	divuw	a5,a0,a4
    80003288:	f8d40023          	sb	a3,-128(s0)
    8000328c:	10b65e63          	bge	a2,a1,800033a8 <__printf+0x670>
    80003290:	06300593          	li	a1,99
    80003294:	02e7f6bb          	remuw	a3,a5,a4
    80003298:	02069693          	slli	a3,a3,0x20
    8000329c:	0206d693          	srli	a3,a3,0x20
    800032a0:	00dd86b3          	add	a3,s11,a3
    800032a4:	0006c683          	lbu	a3,0(a3)
    800032a8:	02e7d73b          	divuw	a4,a5,a4
    800032ac:	00200793          	li	a5,2
    800032b0:	f8d400a3          	sb	a3,-127(s0)
    800032b4:	bca5ece3          	bltu	a1,a0,80002e8c <__printf+0x154>
    800032b8:	ce5ff06f          	j	80002f9c <__printf+0x264>
    800032bc:	40e007bb          	negw	a5,a4
    800032c0:	00002d97          	auipc	s11,0x2
    800032c4:	f80d8d93          	addi	s11,s11,-128 # 80005240 <digits>
    800032c8:	00f7f693          	andi	a3,a5,15
    800032cc:	00dd86b3          	add	a3,s11,a3
    800032d0:	0006c583          	lbu	a1,0(a3)
    800032d4:	ff100613          	li	a2,-15
    800032d8:	0047d69b          	srliw	a3,a5,0x4
    800032dc:	f8b40023          	sb	a1,-128(s0)
    800032e0:	0047d59b          	srliw	a1,a5,0x4
    800032e4:	0ac75e63          	bge	a4,a2,800033a0 <__printf+0x668>
    800032e8:	00f6f693          	andi	a3,a3,15
    800032ec:	00dd86b3          	add	a3,s11,a3
    800032f0:	0006c603          	lbu	a2,0(a3)
    800032f4:	00f00693          	li	a3,15
    800032f8:	0087d79b          	srliw	a5,a5,0x8
    800032fc:	f8c400a3          	sb	a2,-127(s0)
    80003300:	d8b6e4e3          	bltu	a3,a1,80003088 <__printf+0x350>
    80003304:	00200793          	li	a5,2
    80003308:	e2dff06f          	j	80003134 <__printf+0x3fc>
    8000330c:	00002c97          	auipc	s9,0x2
    80003310:	f14c8c93          	addi	s9,s9,-236 # 80005220 <_ZZ12printIntegermE6digits+0x148>
    80003314:	02800513          	li	a0,40
    80003318:	ef1ff06f          	j	80003208 <__printf+0x4d0>
    8000331c:	00700793          	li	a5,7
    80003320:	00600c93          	li	s9,6
    80003324:	e0dff06f          	j	80003130 <__printf+0x3f8>
    80003328:	00700793          	li	a5,7
    8000332c:	00600c93          	li	s9,6
    80003330:	c69ff06f          	j	80002f98 <__printf+0x260>
    80003334:	00300793          	li	a5,3
    80003338:	00200c93          	li	s9,2
    8000333c:	c5dff06f          	j	80002f98 <__printf+0x260>
    80003340:	00300793          	li	a5,3
    80003344:	00200c93          	li	s9,2
    80003348:	de9ff06f          	j	80003130 <__printf+0x3f8>
    8000334c:	00400793          	li	a5,4
    80003350:	00300c93          	li	s9,3
    80003354:	dddff06f          	j	80003130 <__printf+0x3f8>
    80003358:	00400793          	li	a5,4
    8000335c:	00300c93          	li	s9,3
    80003360:	c39ff06f          	j	80002f98 <__printf+0x260>
    80003364:	00500793          	li	a5,5
    80003368:	00400c93          	li	s9,4
    8000336c:	c2dff06f          	j	80002f98 <__printf+0x260>
    80003370:	00500793          	li	a5,5
    80003374:	00400c93          	li	s9,4
    80003378:	db9ff06f          	j	80003130 <__printf+0x3f8>
    8000337c:	00600793          	li	a5,6
    80003380:	00500c93          	li	s9,5
    80003384:	dadff06f          	j	80003130 <__printf+0x3f8>
    80003388:	00600793          	li	a5,6
    8000338c:	00500c93          	li	s9,5
    80003390:	c09ff06f          	j	80002f98 <__printf+0x260>
    80003394:	00800793          	li	a5,8
    80003398:	00700c93          	li	s9,7
    8000339c:	bfdff06f          	j	80002f98 <__printf+0x260>
    800033a0:	00100793          	li	a5,1
    800033a4:	d91ff06f          	j	80003134 <__printf+0x3fc>
    800033a8:	00100793          	li	a5,1
    800033ac:	bf1ff06f          	j	80002f9c <__printf+0x264>
    800033b0:	00900793          	li	a5,9
    800033b4:	00800c93          	li	s9,8
    800033b8:	be1ff06f          	j	80002f98 <__printf+0x260>
    800033bc:	00002517          	auipc	a0,0x2
    800033c0:	e6c50513          	addi	a0,a0,-404 # 80005228 <_ZZ12printIntegermE6digits+0x150>
    800033c4:	00000097          	auipc	ra,0x0
    800033c8:	918080e7          	jalr	-1768(ra) # 80002cdc <panic>

00000000800033cc <printfinit>:
    800033cc:	fe010113          	addi	sp,sp,-32
    800033d0:	00813823          	sd	s0,16(sp)
    800033d4:	00913423          	sd	s1,8(sp)
    800033d8:	00113c23          	sd	ra,24(sp)
    800033dc:	02010413          	addi	s0,sp,32
    800033e0:	00003497          	auipc	s1,0x3
    800033e4:	78048493          	addi	s1,s1,1920 # 80006b60 <pr>
    800033e8:	00048513          	mv	a0,s1
    800033ec:	00002597          	auipc	a1,0x2
    800033f0:	e4c58593          	addi	a1,a1,-436 # 80005238 <_ZZ12printIntegermE6digits+0x160>
    800033f4:	00000097          	auipc	ra,0x0
    800033f8:	5f4080e7          	jalr	1524(ra) # 800039e8 <initlock>
    800033fc:	01813083          	ld	ra,24(sp)
    80003400:	01013403          	ld	s0,16(sp)
    80003404:	0004ac23          	sw	zero,24(s1)
    80003408:	00813483          	ld	s1,8(sp)
    8000340c:	02010113          	addi	sp,sp,32
    80003410:	00008067          	ret

0000000080003414 <uartinit>:
    80003414:	ff010113          	addi	sp,sp,-16
    80003418:	00813423          	sd	s0,8(sp)
    8000341c:	01010413          	addi	s0,sp,16
    80003420:	100007b7          	lui	a5,0x10000
    80003424:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003428:	f8000713          	li	a4,-128
    8000342c:	00e781a3          	sb	a4,3(a5)
    80003430:	00300713          	li	a4,3
    80003434:	00e78023          	sb	a4,0(a5)
    80003438:	000780a3          	sb	zero,1(a5)
    8000343c:	00e781a3          	sb	a4,3(a5)
    80003440:	00700693          	li	a3,7
    80003444:	00d78123          	sb	a3,2(a5)
    80003448:	00e780a3          	sb	a4,1(a5)
    8000344c:	00813403          	ld	s0,8(sp)
    80003450:	01010113          	addi	sp,sp,16
    80003454:	00008067          	ret

0000000080003458 <uartputc>:
    80003458:	00002797          	auipc	a5,0x2
    8000345c:	4907a783          	lw	a5,1168(a5) # 800058e8 <panicked>
    80003460:	00078463          	beqz	a5,80003468 <uartputc+0x10>
    80003464:	0000006f          	j	80003464 <uartputc+0xc>
    80003468:	fd010113          	addi	sp,sp,-48
    8000346c:	02813023          	sd	s0,32(sp)
    80003470:	00913c23          	sd	s1,24(sp)
    80003474:	01213823          	sd	s2,16(sp)
    80003478:	01313423          	sd	s3,8(sp)
    8000347c:	02113423          	sd	ra,40(sp)
    80003480:	03010413          	addi	s0,sp,48
    80003484:	00002917          	auipc	s2,0x2
    80003488:	46c90913          	addi	s2,s2,1132 # 800058f0 <uart_tx_r>
    8000348c:	00093783          	ld	a5,0(s2)
    80003490:	00002497          	auipc	s1,0x2
    80003494:	46848493          	addi	s1,s1,1128 # 800058f8 <uart_tx_w>
    80003498:	0004b703          	ld	a4,0(s1)
    8000349c:	02078693          	addi	a3,a5,32
    800034a0:	00050993          	mv	s3,a0
    800034a4:	02e69c63          	bne	a3,a4,800034dc <uartputc+0x84>
    800034a8:	00001097          	auipc	ra,0x1
    800034ac:	834080e7          	jalr	-1996(ra) # 80003cdc <push_on>
    800034b0:	00093783          	ld	a5,0(s2)
    800034b4:	0004b703          	ld	a4,0(s1)
    800034b8:	02078793          	addi	a5,a5,32
    800034bc:	00e79463          	bne	a5,a4,800034c4 <uartputc+0x6c>
    800034c0:	0000006f          	j	800034c0 <uartputc+0x68>
    800034c4:	00001097          	auipc	ra,0x1
    800034c8:	88c080e7          	jalr	-1908(ra) # 80003d50 <pop_on>
    800034cc:	00093783          	ld	a5,0(s2)
    800034d0:	0004b703          	ld	a4,0(s1)
    800034d4:	02078693          	addi	a3,a5,32
    800034d8:	fce688e3          	beq	a3,a4,800034a8 <uartputc+0x50>
    800034dc:	01f77693          	andi	a3,a4,31
    800034e0:	00003597          	auipc	a1,0x3
    800034e4:	6a058593          	addi	a1,a1,1696 # 80006b80 <uart_tx_buf>
    800034e8:	00d586b3          	add	a3,a1,a3
    800034ec:	00170713          	addi	a4,a4,1
    800034f0:	01368023          	sb	s3,0(a3)
    800034f4:	00e4b023          	sd	a4,0(s1)
    800034f8:	10000637          	lui	a2,0x10000
    800034fc:	02f71063          	bne	a4,a5,8000351c <uartputc+0xc4>
    80003500:	0340006f          	j	80003534 <uartputc+0xdc>
    80003504:	00074703          	lbu	a4,0(a4)
    80003508:	00f93023          	sd	a5,0(s2)
    8000350c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003510:	00093783          	ld	a5,0(s2)
    80003514:	0004b703          	ld	a4,0(s1)
    80003518:	00f70e63          	beq	a4,a5,80003534 <uartputc+0xdc>
    8000351c:	00564683          	lbu	a3,5(a2)
    80003520:	01f7f713          	andi	a4,a5,31
    80003524:	00e58733          	add	a4,a1,a4
    80003528:	0206f693          	andi	a3,a3,32
    8000352c:	00178793          	addi	a5,a5,1
    80003530:	fc069ae3          	bnez	a3,80003504 <uartputc+0xac>
    80003534:	02813083          	ld	ra,40(sp)
    80003538:	02013403          	ld	s0,32(sp)
    8000353c:	01813483          	ld	s1,24(sp)
    80003540:	01013903          	ld	s2,16(sp)
    80003544:	00813983          	ld	s3,8(sp)
    80003548:	03010113          	addi	sp,sp,48
    8000354c:	00008067          	ret

0000000080003550 <uartputc_sync>:
    80003550:	ff010113          	addi	sp,sp,-16
    80003554:	00813423          	sd	s0,8(sp)
    80003558:	01010413          	addi	s0,sp,16
    8000355c:	00002717          	auipc	a4,0x2
    80003560:	38c72703          	lw	a4,908(a4) # 800058e8 <panicked>
    80003564:	02071663          	bnez	a4,80003590 <uartputc_sync+0x40>
    80003568:	00050793          	mv	a5,a0
    8000356c:	100006b7          	lui	a3,0x10000
    80003570:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003574:	02077713          	andi	a4,a4,32
    80003578:	fe070ce3          	beqz	a4,80003570 <uartputc_sync+0x20>
    8000357c:	0ff7f793          	andi	a5,a5,255
    80003580:	00f68023          	sb	a5,0(a3)
    80003584:	00813403          	ld	s0,8(sp)
    80003588:	01010113          	addi	sp,sp,16
    8000358c:	00008067          	ret
    80003590:	0000006f          	j	80003590 <uartputc_sync+0x40>

0000000080003594 <uartstart>:
    80003594:	ff010113          	addi	sp,sp,-16
    80003598:	00813423          	sd	s0,8(sp)
    8000359c:	01010413          	addi	s0,sp,16
    800035a0:	00002617          	auipc	a2,0x2
    800035a4:	35060613          	addi	a2,a2,848 # 800058f0 <uart_tx_r>
    800035a8:	00002517          	auipc	a0,0x2
    800035ac:	35050513          	addi	a0,a0,848 # 800058f8 <uart_tx_w>
    800035b0:	00063783          	ld	a5,0(a2)
    800035b4:	00053703          	ld	a4,0(a0)
    800035b8:	04f70263          	beq	a4,a5,800035fc <uartstart+0x68>
    800035bc:	100005b7          	lui	a1,0x10000
    800035c0:	00003817          	auipc	a6,0x3
    800035c4:	5c080813          	addi	a6,a6,1472 # 80006b80 <uart_tx_buf>
    800035c8:	01c0006f          	j	800035e4 <uartstart+0x50>
    800035cc:	0006c703          	lbu	a4,0(a3)
    800035d0:	00f63023          	sd	a5,0(a2)
    800035d4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800035d8:	00063783          	ld	a5,0(a2)
    800035dc:	00053703          	ld	a4,0(a0)
    800035e0:	00f70e63          	beq	a4,a5,800035fc <uartstart+0x68>
    800035e4:	01f7f713          	andi	a4,a5,31
    800035e8:	00e806b3          	add	a3,a6,a4
    800035ec:	0055c703          	lbu	a4,5(a1)
    800035f0:	00178793          	addi	a5,a5,1
    800035f4:	02077713          	andi	a4,a4,32
    800035f8:	fc071ae3          	bnez	a4,800035cc <uartstart+0x38>
    800035fc:	00813403          	ld	s0,8(sp)
    80003600:	01010113          	addi	sp,sp,16
    80003604:	00008067          	ret

0000000080003608 <uartgetc>:
    80003608:	ff010113          	addi	sp,sp,-16
    8000360c:	00813423          	sd	s0,8(sp)
    80003610:	01010413          	addi	s0,sp,16
    80003614:	10000737          	lui	a4,0x10000
    80003618:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000361c:	0017f793          	andi	a5,a5,1
    80003620:	00078c63          	beqz	a5,80003638 <uartgetc+0x30>
    80003624:	00074503          	lbu	a0,0(a4)
    80003628:	0ff57513          	andi	a0,a0,255
    8000362c:	00813403          	ld	s0,8(sp)
    80003630:	01010113          	addi	sp,sp,16
    80003634:	00008067          	ret
    80003638:	fff00513          	li	a0,-1
    8000363c:	ff1ff06f          	j	8000362c <uartgetc+0x24>

0000000080003640 <uartintr>:
    80003640:	100007b7          	lui	a5,0x10000
    80003644:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003648:	0017f793          	andi	a5,a5,1
    8000364c:	0a078463          	beqz	a5,800036f4 <uartintr+0xb4>
    80003650:	fe010113          	addi	sp,sp,-32
    80003654:	00813823          	sd	s0,16(sp)
    80003658:	00913423          	sd	s1,8(sp)
    8000365c:	00113c23          	sd	ra,24(sp)
    80003660:	02010413          	addi	s0,sp,32
    80003664:	100004b7          	lui	s1,0x10000
    80003668:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000366c:	0ff57513          	andi	a0,a0,255
    80003670:	fffff097          	auipc	ra,0xfffff
    80003674:	534080e7          	jalr	1332(ra) # 80002ba4 <consoleintr>
    80003678:	0054c783          	lbu	a5,5(s1)
    8000367c:	0017f793          	andi	a5,a5,1
    80003680:	fe0794e3          	bnez	a5,80003668 <uartintr+0x28>
    80003684:	00002617          	auipc	a2,0x2
    80003688:	26c60613          	addi	a2,a2,620 # 800058f0 <uart_tx_r>
    8000368c:	00002517          	auipc	a0,0x2
    80003690:	26c50513          	addi	a0,a0,620 # 800058f8 <uart_tx_w>
    80003694:	00063783          	ld	a5,0(a2)
    80003698:	00053703          	ld	a4,0(a0)
    8000369c:	04f70263          	beq	a4,a5,800036e0 <uartintr+0xa0>
    800036a0:	100005b7          	lui	a1,0x10000
    800036a4:	00003817          	auipc	a6,0x3
    800036a8:	4dc80813          	addi	a6,a6,1244 # 80006b80 <uart_tx_buf>
    800036ac:	01c0006f          	j	800036c8 <uartintr+0x88>
    800036b0:	0006c703          	lbu	a4,0(a3)
    800036b4:	00f63023          	sd	a5,0(a2)
    800036b8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800036bc:	00063783          	ld	a5,0(a2)
    800036c0:	00053703          	ld	a4,0(a0)
    800036c4:	00f70e63          	beq	a4,a5,800036e0 <uartintr+0xa0>
    800036c8:	01f7f713          	andi	a4,a5,31
    800036cc:	00e806b3          	add	a3,a6,a4
    800036d0:	0055c703          	lbu	a4,5(a1)
    800036d4:	00178793          	addi	a5,a5,1
    800036d8:	02077713          	andi	a4,a4,32
    800036dc:	fc071ae3          	bnez	a4,800036b0 <uartintr+0x70>
    800036e0:	01813083          	ld	ra,24(sp)
    800036e4:	01013403          	ld	s0,16(sp)
    800036e8:	00813483          	ld	s1,8(sp)
    800036ec:	02010113          	addi	sp,sp,32
    800036f0:	00008067          	ret
    800036f4:	00002617          	auipc	a2,0x2
    800036f8:	1fc60613          	addi	a2,a2,508 # 800058f0 <uart_tx_r>
    800036fc:	00002517          	auipc	a0,0x2
    80003700:	1fc50513          	addi	a0,a0,508 # 800058f8 <uart_tx_w>
    80003704:	00063783          	ld	a5,0(a2)
    80003708:	00053703          	ld	a4,0(a0)
    8000370c:	04f70263          	beq	a4,a5,80003750 <uartintr+0x110>
    80003710:	100005b7          	lui	a1,0x10000
    80003714:	00003817          	auipc	a6,0x3
    80003718:	46c80813          	addi	a6,a6,1132 # 80006b80 <uart_tx_buf>
    8000371c:	01c0006f          	j	80003738 <uartintr+0xf8>
    80003720:	0006c703          	lbu	a4,0(a3)
    80003724:	00f63023          	sd	a5,0(a2)
    80003728:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000372c:	00063783          	ld	a5,0(a2)
    80003730:	00053703          	ld	a4,0(a0)
    80003734:	02f70063          	beq	a4,a5,80003754 <uartintr+0x114>
    80003738:	01f7f713          	andi	a4,a5,31
    8000373c:	00e806b3          	add	a3,a6,a4
    80003740:	0055c703          	lbu	a4,5(a1)
    80003744:	00178793          	addi	a5,a5,1
    80003748:	02077713          	andi	a4,a4,32
    8000374c:	fc071ae3          	bnez	a4,80003720 <uartintr+0xe0>
    80003750:	00008067          	ret
    80003754:	00008067          	ret

0000000080003758 <kinit>:
    80003758:	fc010113          	addi	sp,sp,-64
    8000375c:	02913423          	sd	s1,40(sp)
    80003760:	fffff7b7          	lui	a5,0xfffff
    80003764:	00004497          	auipc	s1,0x4
    80003768:	43b48493          	addi	s1,s1,1083 # 80007b9f <end+0xfff>
    8000376c:	02813823          	sd	s0,48(sp)
    80003770:	01313c23          	sd	s3,24(sp)
    80003774:	00f4f4b3          	and	s1,s1,a5
    80003778:	02113c23          	sd	ra,56(sp)
    8000377c:	03213023          	sd	s2,32(sp)
    80003780:	01413823          	sd	s4,16(sp)
    80003784:	01513423          	sd	s5,8(sp)
    80003788:	04010413          	addi	s0,sp,64
    8000378c:	000017b7          	lui	a5,0x1
    80003790:	01100993          	li	s3,17
    80003794:	00f487b3          	add	a5,s1,a5
    80003798:	01b99993          	slli	s3,s3,0x1b
    8000379c:	06f9e063          	bltu	s3,a5,800037fc <kinit+0xa4>
    800037a0:	00003a97          	auipc	s5,0x3
    800037a4:	400a8a93          	addi	s5,s5,1024 # 80006ba0 <end>
    800037a8:	0754ec63          	bltu	s1,s5,80003820 <kinit+0xc8>
    800037ac:	0734fa63          	bgeu	s1,s3,80003820 <kinit+0xc8>
    800037b0:	00088a37          	lui	s4,0x88
    800037b4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800037b8:	00002917          	auipc	s2,0x2
    800037bc:	14890913          	addi	s2,s2,328 # 80005900 <kmem>
    800037c0:	00ca1a13          	slli	s4,s4,0xc
    800037c4:	0140006f          	j	800037d8 <kinit+0x80>
    800037c8:	000017b7          	lui	a5,0x1
    800037cc:	00f484b3          	add	s1,s1,a5
    800037d0:	0554e863          	bltu	s1,s5,80003820 <kinit+0xc8>
    800037d4:	0534f663          	bgeu	s1,s3,80003820 <kinit+0xc8>
    800037d8:	00001637          	lui	a2,0x1
    800037dc:	00100593          	li	a1,1
    800037e0:	00048513          	mv	a0,s1
    800037e4:	00000097          	auipc	ra,0x0
    800037e8:	5e4080e7          	jalr	1508(ra) # 80003dc8 <__memset>
    800037ec:	00093783          	ld	a5,0(s2)
    800037f0:	00f4b023          	sd	a5,0(s1)
    800037f4:	00993023          	sd	s1,0(s2)
    800037f8:	fd4498e3          	bne	s1,s4,800037c8 <kinit+0x70>
    800037fc:	03813083          	ld	ra,56(sp)
    80003800:	03013403          	ld	s0,48(sp)
    80003804:	02813483          	ld	s1,40(sp)
    80003808:	02013903          	ld	s2,32(sp)
    8000380c:	01813983          	ld	s3,24(sp)
    80003810:	01013a03          	ld	s4,16(sp)
    80003814:	00813a83          	ld	s5,8(sp)
    80003818:	04010113          	addi	sp,sp,64
    8000381c:	00008067          	ret
    80003820:	00002517          	auipc	a0,0x2
    80003824:	a3850513          	addi	a0,a0,-1480 # 80005258 <digits+0x18>
    80003828:	fffff097          	auipc	ra,0xfffff
    8000382c:	4b4080e7          	jalr	1204(ra) # 80002cdc <panic>

0000000080003830 <freerange>:
    80003830:	fc010113          	addi	sp,sp,-64
    80003834:	000017b7          	lui	a5,0x1
    80003838:	02913423          	sd	s1,40(sp)
    8000383c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003840:	009504b3          	add	s1,a0,s1
    80003844:	fffff537          	lui	a0,0xfffff
    80003848:	02813823          	sd	s0,48(sp)
    8000384c:	02113c23          	sd	ra,56(sp)
    80003850:	03213023          	sd	s2,32(sp)
    80003854:	01313c23          	sd	s3,24(sp)
    80003858:	01413823          	sd	s4,16(sp)
    8000385c:	01513423          	sd	s5,8(sp)
    80003860:	01613023          	sd	s6,0(sp)
    80003864:	04010413          	addi	s0,sp,64
    80003868:	00a4f4b3          	and	s1,s1,a0
    8000386c:	00f487b3          	add	a5,s1,a5
    80003870:	06f5e463          	bltu	a1,a5,800038d8 <freerange+0xa8>
    80003874:	00003a97          	auipc	s5,0x3
    80003878:	32ca8a93          	addi	s5,s5,812 # 80006ba0 <end>
    8000387c:	0954e263          	bltu	s1,s5,80003900 <freerange+0xd0>
    80003880:	01100993          	li	s3,17
    80003884:	01b99993          	slli	s3,s3,0x1b
    80003888:	0734fc63          	bgeu	s1,s3,80003900 <freerange+0xd0>
    8000388c:	00058a13          	mv	s4,a1
    80003890:	00002917          	auipc	s2,0x2
    80003894:	07090913          	addi	s2,s2,112 # 80005900 <kmem>
    80003898:	00002b37          	lui	s6,0x2
    8000389c:	0140006f          	j	800038b0 <freerange+0x80>
    800038a0:	000017b7          	lui	a5,0x1
    800038a4:	00f484b3          	add	s1,s1,a5
    800038a8:	0554ec63          	bltu	s1,s5,80003900 <freerange+0xd0>
    800038ac:	0534fa63          	bgeu	s1,s3,80003900 <freerange+0xd0>
    800038b0:	00001637          	lui	a2,0x1
    800038b4:	00100593          	li	a1,1
    800038b8:	00048513          	mv	a0,s1
    800038bc:	00000097          	auipc	ra,0x0
    800038c0:	50c080e7          	jalr	1292(ra) # 80003dc8 <__memset>
    800038c4:	00093703          	ld	a4,0(s2)
    800038c8:	016487b3          	add	a5,s1,s6
    800038cc:	00e4b023          	sd	a4,0(s1)
    800038d0:	00993023          	sd	s1,0(s2)
    800038d4:	fcfa76e3          	bgeu	s4,a5,800038a0 <freerange+0x70>
    800038d8:	03813083          	ld	ra,56(sp)
    800038dc:	03013403          	ld	s0,48(sp)
    800038e0:	02813483          	ld	s1,40(sp)
    800038e4:	02013903          	ld	s2,32(sp)
    800038e8:	01813983          	ld	s3,24(sp)
    800038ec:	01013a03          	ld	s4,16(sp)
    800038f0:	00813a83          	ld	s5,8(sp)
    800038f4:	00013b03          	ld	s6,0(sp)
    800038f8:	04010113          	addi	sp,sp,64
    800038fc:	00008067          	ret
    80003900:	00002517          	auipc	a0,0x2
    80003904:	95850513          	addi	a0,a0,-1704 # 80005258 <digits+0x18>
    80003908:	fffff097          	auipc	ra,0xfffff
    8000390c:	3d4080e7          	jalr	980(ra) # 80002cdc <panic>

0000000080003910 <kfree>:
    80003910:	fe010113          	addi	sp,sp,-32
    80003914:	00813823          	sd	s0,16(sp)
    80003918:	00113c23          	sd	ra,24(sp)
    8000391c:	00913423          	sd	s1,8(sp)
    80003920:	02010413          	addi	s0,sp,32
    80003924:	03451793          	slli	a5,a0,0x34
    80003928:	04079c63          	bnez	a5,80003980 <kfree+0x70>
    8000392c:	00003797          	auipc	a5,0x3
    80003930:	27478793          	addi	a5,a5,628 # 80006ba0 <end>
    80003934:	00050493          	mv	s1,a0
    80003938:	04f56463          	bltu	a0,a5,80003980 <kfree+0x70>
    8000393c:	01100793          	li	a5,17
    80003940:	01b79793          	slli	a5,a5,0x1b
    80003944:	02f57e63          	bgeu	a0,a5,80003980 <kfree+0x70>
    80003948:	00001637          	lui	a2,0x1
    8000394c:	00100593          	li	a1,1
    80003950:	00000097          	auipc	ra,0x0
    80003954:	478080e7          	jalr	1144(ra) # 80003dc8 <__memset>
    80003958:	00002797          	auipc	a5,0x2
    8000395c:	fa878793          	addi	a5,a5,-88 # 80005900 <kmem>
    80003960:	0007b703          	ld	a4,0(a5)
    80003964:	01813083          	ld	ra,24(sp)
    80003968:	01013403          	ld	s0,16(sp)
    8000396c:	00e4b023          	sd	a4,0(s1)
    80003970:	0097b023          	sd	s1,0(a5)
    80003974:	00813483          	ld	s1,8(sp)
    80003978:	02010113          	addi	sp,sp,32
    8000397c:	00008067          	ret
    80003980:	00002517          	auipc	a0,0x2
    80003984:	8d850513          	addi	a0,a0,-1832 # 80005258 <digits+0x18>
    80003988:	fffff097          	auipc	ra,0xfffff
    8000398c:	354080e7          	jalr	852(ra) # 80002cdc <panic>

0000000080003990 <kalloc>:
    80003990:	fe010113          	addi	sp,sp,-32
    80003994:	00813823          	sd	s0,16(sp)
    80003998:	00913423          	sd	s1,8(sp)
    8000399c:	00113c23          	sd	ra,24(sp)
    800039a0:	02010413          	addi	s0,sp,32
    800039a4:	00002797          	auipc	a5,0x2
    800039a8:	f5c78793          	addi	a5,a5,-164 # 80005900 <kmem>
    800039ac:	0007b483          	ld	s1,0(a5)
    800039b0:	02048063          	beqz	s1,800039d0 <kalloc+0x40>
    800039b4:	0004b703          	ld	a4,0(s1)
    800039b8:	00001637          	lui	a2,0x1
    800039bc:	00500593          	li	a1,5
    800039c0:	00048513          	mv	a0,s1
    800039c4:	00e7b023          	sd	a4,0(a5)
    800039c8:	00000097          	auipc	ra,0x0
    800039cc:	400080e7          	jalr	1024(ra) # 80003dc8 <__memset>
    800039d0:	01813083          	ld	ra,24(sp)
    800039d4:	01013403          	ld	s0,16(sp)
    800039d8:	00048513          	mv	a0,s1
    800039dc:	00813483          	ld	s1,8(sp)
    800039e0:	02010113          	addi	sp,sp,32
    800039e4:	00008067          	ret

00000000800039e8 <initlock>:
    800039e8:	ff010113          	addi	sp,sp,-16
    800039ec:	00813423          	sd	s0,8(sp)
    800039f0:	01010413          	addi	s0,sp,16
    800039f4:	00813403          	ld	s0,8(sp)
    800039f8:	00b53423          	sd	a1,8(a0)
    800039fc:	00052023          	sw	zero,0(a0)
    80003a00:	00053823          	sd	zero,16(a0)
    80003a04:	01010113          	addi	sp,sp,16
    80003a08:	00008067          	ret

0000000080003a0c <acquire>:
    80003a0c:	fe010113          	addi	sp,sp,-32
    80003a10:	00813823          	sd	s0,16(sp)
    80003a14:	00913423          	sd	s1,8(sp)
    80003a18:	00113c23          	sd	ra,24(sp)
    80003a1c:	01213023          	sd	s2,0(sp)
    80003a20:	02010413          	addi	s0,sp,32
    80003a24:	00050493          	mv	s1,a0
    80003a28:	10002973          	csrr	s2,sstatus
    80003a2c:	100027f3          	csrr	a5,sstatus
    80003a30:	ffd7f793          	andi	a5,a5,-3
    80003a34:	10079073          	csrw	sstatus,a5
    80003a38:	fffff097          	auipc	ra,0xfffff
    80003a3c:	8ec080e7          	jalr	-1812(ra) # 80002324 <mycpu>
    80003a40:	07852783          	lw	a5,120(a0)
    80003a44:	06078e63          	beqz	a5,80003ac0 <acquire+0xb4>
    80003a48:	fffff097          	auipc	ra,0xfffff
    80003a4c:	8dc080e7          	jalr	-1828(ra) # 80002324 <mycpu>
    80003a50:	07852783          	lw	a5,120(a0)
    80003a54:	0004a703          	lw	a4,0(s1)
    80003a58:	0017879b          	addiw	a5,a5,1
    80003a5c:	06f52c23          	sw	a5,120(a0)
    80003a60:	04071063          	bnez	a4,80003aa0 <acquire+0x94>
    80003a64:	00100713          	li	a4,1
    80003a68:	00070793          	mv	a5,a4
    80003a6c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003a70:	0007879b          	sext.w	a5,a5
    80003a74:	fe079ae3          	bnez	a5,80003a68 <acquire+0x5c>
    80003a78:	0ff0000f          	fence
    80003a7c:	fffff097          	auipc	ra,0xfffff
    80003a80:	8a8080e7          	jalr	-1880(ra) # 80002324 <mycpu>
    80003a84:	01813083          	ld	ra,24(sp)
    80003a88:	01013403          	ld	s0,16(sp)
    80003a8c:	00a4b823          	sd	a0,16(s1)
    80003a90:	00013903          	ld	s2,0(sp)
    80003a94:	00813483          	ld	s1,8(sp)
    80003a98:	02010113          	addi	sp,sp,32
    80003a9c:	00008067          	ret
    80003aa0:	0104b903          	ld	s2,16(s1)
    80003aa4:	fffff097          	auipc	ra,0xfffff
    80003aa8:	880080e7          	jalr	-1920(ra) # 80002324 <mycpu>
    80003aac:	faa91ce3          	bne	s2,a0,80003a64 <acquire+0x58>
    80003ab0:	00001517          	auipc	a0,0x1
    80003ab4:	7b050513          	addi	a0,a0,1968 # 80005260 <digits+0x20>
    80003ab8:	fffff097          	auipc	ra,0xfffff
    80003abc:	224080e7          	jalr	548(ra) # 80002cdc <panic>
    80003ac0:	00195913          	srli	s2,s2,0x1
    80003ac4:	fffff097          	auipc	ra,0xfffff
    80003ac8:	860080e7          	jalr	-1952(ra) # 80002324 <mycpu>
    80003acc:	00197913          	andi	s2,s2,1
    80003ad0:	07252e23          	sw	s2,124(a0)
    80003ad4:	f75ff06f          	j	80003a48 <acquire+0x3c>

0000000080003ad8 <release>:
    80003ad8:	fe010113          	addi	sp,sp,-32
    80003adc:	00813823          	sd	s0,16(sp)
    80003ae0:	00113c23          	sd	ra,24(sp)
    80003ae4:	00913423          	sd	s1,8(sp)
    80003ae8:	01213023          	sd	s2,0(sp)
    80003aec:	02010413          	addi	s0,sp,32
    80003af0:	00052783          	lw	a5,0(a0)
    80003af4:	00079a63          	bnez	a5,80003b08 <release+0x30>
    80003af8:	00001517          	auipc	a0,0x1
    80003afc:	77050513          	addi	a0,a0,1904 # 80005268 <digits+0x28>
    80003b00:	fffff097          	auipc	ra,0xfffff
    80003b04:	1dc080e7          	jalr	476(ra) # 80002cdc <panic>
    80003b08:	01053903          	ld	s2,16(a0)
    80003b0c:	00050493          	mv	s1,a0
    80003b10:	fffff097          	auipc	ra,0xfffff
    80003b14:	814080e7          	jalr	-2028(ra) # 80002324 <mycpu>
    80003b18:	fea910e3          	bne	s2,a0,80003af8 <release+0x20>
    80003b1c:	0004b823          	sd	zero,16(s1)
    80003b20:	0ff0000f          	fence
    80003b24:	0f50000f          	fence	iorw,ow
    80003b28:	0804a02f          	amoswap.w	zero,zero,(s1)
    80003b2c:	ffffe097          	auipc	ra,0xffffe
    80003b30:	7f8080e7          	jalr	2040(ra) # 80002324 <mycpu>
    80003b34:	100027f3          	csrr	a5,sstatus
    80003b38:	0027f793          	andi	a5,a5,2
    80003b3c:	04079a63          	bnez	a5,80003b90 <release+0xb8>
    80003b40:	07852783          	lw	a5,120(a0)
    80003b44:	02f05e63          	blez	a5,80003b80 <release+0xa8>
    80003b48:	fff7871b          	addiw	a4,a5,-1
    80003b4c:	06e52c23          	sw	a4,120(a0)
    80003b50:	00071c63          	bnez	a4,80003b68 <release+0x90>
    80003b54:	07c52783          	lw	a5,124(a0)
    80003b58:	00078863          	beqz	a5,80003b68 <release+0x90>
    80003b5c:	100027f3          	csrr	a5,sstatus
    80003b60:	0027e793          	ori	a5,a5,2
    80003b64:	10079073          	csrw	sstatus,a5
    80003b68:	01813083          	ld	ra,24(sp)
    80003b6c:	01013403          	ld	s0,16(sp)
    80003b70:	00813483          	ld	s1,8(sp)
    80003b74:	00013903          	ld	s2,0(sp)
    80003b78:	02010113          	addi	sp,sp,32
    80003b7c:	00008067          	ret
    80003b80:	00001517          	auipc	a0,0x1
    80003b84:	70850513          	addi	a0,a0,1800 # 80005288 <digits+0x48>
    80003b88:	fffff097          	auipc	ra,0xfffff
    80003b8c:	154080e7          	jalr	340(ra) # 80002cdc <panic>
    80003b90:	00001517          	auipc	a0,0x1
    80003b94:	6e050513          	addi	a0,a0,1760 # 80005270 <digits+0x30>
    80003b98:	fffff097          	auipc	ra,0xfffff
    80003b9c:	144080e7          	jalr	324(ra) # 80002cdc <panic>

0000000080003ba0 <holding>:
    80003ba0:	00052783          	lw	a5,0(a0)
    80003ba4:	00079663          	bnez	a5,80003bb0 <holding+0x10>
    80003ba8:	00000513          	li	a0,0
    80003bac:	00008067          	ret
    80003bb0:	fe010113          	addi	sp,sp,-32
    80003bb4:	00813823          	sd	s0,16(sp)
    80003bb8:	00913423          	sd	s1,8(sp)
    80003bbc:	00113c23          	sd	ra,24(sp)
    80003bc0:	02010413          	addi	s0,sp,32
    80003bc4:	01053483          	ld	s1,16(a0)
    80003bc8:	ffffe097          	auipc	ra,0xffffe
    80003bcc:	75c080e7          	jalr	1884(ra) # 80002324 <mycpu>
    80003bd0:	01813083          	ld	ra,24(sp)
    80003bd4:	01013403          	ld	s0,16(sp)
    80003bd8:	40a48533          	sub	a0,s1,a0
    80003bdc:	00153513          	seqz	a0,a0
    80003be0:	00813483          	ld	s1,8(sp)
    80003be4:	02010113          	addi	sp,sp,32
    80003be8:	00008067          	ret

0000000080003bec <push_off>:
    80003bec:	fe010113          	addi	sp,sp,-32
    80003bf0:	00813823          	sd	s0,16(sp)
    80003bf4:	00113c23          	sd	ra,24(sp)
    80003bf8:	00913423          	sd	s1,8(sp)
    80003bfc:	02010413          	addi	s0,sp,32
    80003c00:	100024f3          	csrr	s1,sstatus
    80003c04:	100027f3          	csrr	a5,sstatus
    80003c08:	ffd7f793          	andi	a5,a5,-3
    80003c0c:	10079073          	csrw	sstatus,a5
    80003c10:	ffffe097          	auipc	ra,0xffffe
    80003c14:	714080e7          	jalr	1812(ra) # 80002324 <mycpu>
    80003c18:	07852783          	lw	a5,120(a0)
    80003c1c:	02078663          	beqz	a5,80003c48 <push_off+0x5c>
    80003c20:	ffffe097          	auipc	ra,0xffffe
    80003c24:	704080e7          	jalr	1796(ra) # 80002324 <mycpu>
    80003c28:	07852783          	lw	a5,120(a0)
    80003c2c:	01813083          	ld	ra,24(sp)
    80003c30:	01013403          	ld	s0,16(sp)
    80003c34:	0017879b          	addiw	a5,a5,1
    80003c38:	06f52c23          	sw	a5,120(a0)
    80003c3c:	00813483          	ld	s1,8(sp)
    80003c40:	02010113          	addi	sp,sp,32
    80003c44:	00008067          	ret
    80003c48:	0014d493          	srli	s1,s1,0x1
    80003c4c:	ffffe097          	auipc	ra,0xffffe
    80003c50:	6d8080e7          	jalr	1752(ra) # 80002324 <mycpu>
    80003c54:	0014f493          	andi	s1,s1,1
    80003c58:	06952e23          	sw	s1,124(a0)
    80003c5c:	fc5ff06f          	j	80003c20 <push_off+0x34>

0000000080003c60 <pop_off>:
    80003c60:	ff010113          	addi	sp,sp,-16
    80003c64:	00813023          	sd	s0,0(sp)
    80003c68:	00113423          	sd	ra,8(sp)
    80003c6c:	01010413          	addi	s0,sp,16
    80003c70:	ffffe097          	auipc	ra,0xffffe
    80003c74:	6b4080e7          	jalr	1716(ra) # 80002324 <mycpu>
    80003c78:	100027f3          	csrr	a5,sstatus
    80003c7c:	0027f793          	andi	a5,a5,2
    80003c80:	04079663          	bnez	a5,80003ccc <pop_off+0x6c>
    80003c84:	07852783          	lw	a5,120(a0)
    80003c88:	02f05a63          	blez	a5,80003cbc <pop_off+0x5c>
    80003c8c:	fff7871b          	addiw	a4,a5,-1
    80003c90:	06e52c23          	sw	a4,120(a0)
    80003c94:	00071c63          	bnez	a4,80003cac <pop_off+0x4c>
    80003c98:	07c52783          	lw	a5,124(a0)
    80003c9c:	00078863          	beqz	a5,80003cac <pop_off+0x4c>
    80003ca0:	100027f3          	csrr	a5,sstatus
    80003ca4:	0027e793          	ori	a5,a5,2
    80003ca8:	10079073          	csrw	sstatus,a5
    80003cac:	00813083          	ld	ra,8(sp)
    80003cb0:	00013403          	ld	s0,0(sp)
    80003cb4:	01010113          	addi	sp,sp,16
    80003cb8:	00008067          	ret
    80003cbc:	00001517          	auipc	a0,0x1
    80003cc0:	5cc50513          	addi	a0,a0,1484 # 80005288 <digits+0x48>
    80003cc4:	fffff097          	auipc	ra,0xfffff
    80003cc8:	018080e7          	jalr	24(ra) # 80002cdc <panic>
    80003ccc:	00001517          	auipc	a0,0x1
    80003cd0:	5a450513          	addi	a0,a0,1444 # 80005270 <digits+0x30>
    80003cd4:	fffff097          	auipc	ra,0xfffff
    80003cd8:	008080e7          	jalr	8(ra) # 80002cdc <panic>

0000000080003cdc <push_on>:
    80003cdc:	fe010113          	addi	sp,sp,-32
    80003ce0:	00813823          	sd	s0,16(sp)
    80003ce4:	00113c23          	sd	ra,24(sp)
    80003ce8:	00913423          	sd	s1,8(sp)
    80003cec:	02010413          	addi	s0,sp,32
    80003cf0:	100024f3          	csrr	s1,sstatus
    80003cf4:	100027f3          	csrr	a5,sstatus
    80003cf8:	0027e793          	ori	a5,a5,2
    80003cfc:	10079073          	csrw	sstatus,a5
    80003d00:	ffffe097          	auipc	ra,0xffffe
    80003d04:	624080e7          	jalr	1572(ra) # 80002324 <mycpu>
    80003d08:	07852783          	lw	a5,120(a0)
    80003d0c:	02078663          	beqz	a5,80003d38 <push_on+0x5c>
    80003d10:	ffffe097          	auipc	ra,0xffffe
    80003d14:	614080e7          	jalr	1556(ra) # 80002324 <mycpu>
    80003d18:	07852783          	lw	a5,120(a0)
    80003d1c:	01813083          	ld	ra,24(sp)
    80003d20:	01013403          	ld	s0,16(sp)
    80003d24:	0017879b          	addiw	a5,a5,1
    80003d28:	06f52c23          	sw	a5,120(a0)
    80003d2c:	00813483          	ld	s1,8(sp)
    80003d30:	02010113          	addi	sp,sp,32
    80003d34:	00008067          	ret
    80003d38:	0014d493          	srli	s1,s1,0x1
    80003d3c:	ffffe097          	auipc	ra,0xffffe
    80003d40:	5e8080e7          	jalr	1512(ra) # 80002324 <mycpu>
    80003d44:	0014f493          	andi	s1,s1,1
    80003d48:	06952e23          	sw	s1,124(a0)
    80003d4c:	fc5ff06f          	j	80003d10 <push_on+0x34>

0000000080003d50 <pop_on>:
    80003d50:	ff010113          	addi	sp,sp,-16
    80003d54:	00813023          	sd	s0,0(sp)
    80003d58:	00113423          	sd	ra,8(sp)
    80003d5c:	01010413          	addi	s0,sp,16
    80003d60:	ffffe097          	auipc	ra,0xffffe
    80003d64:	5c4080e7          	jalr	1476(ra) # 80002324 <mycpu>
    80003d68:	100027f3          	csrr	a5,sstatus
    80003d6c:	0027f793          	andi	a5,a5,2
    80003d70:	04078463          	beqz	a5,80003db8 <pop_on+0x68>
    80003d74:	07852783          	lw	a5,120(a0)
    80003d78:	02f05863          	blez	a5,80003da8 <pop_on+0x58>
    80003d7c:	fff7879b          	addiw	a5,a5,-1
    80003d80:	06f52c23          	sw	a5,120(a0)
    80003d84:	07853783          	ld	a5,120(a0)
    80003d88:	00079863          	bnez	a5,80003d98 <pop_on+0x48>
    80003d8c:	100027f3          	csrr	a5,sstatus
    80003d90:	ffd7f793          	andi	a5,a5,-3
    80003d94:	10079073          	csrw	sstatus,a5
    80003d98:	00813083          	ld	ra,8(sp)
    80003d9c:	00013403          	ld	s0,0(sp)
    80003da0:	01010113          	addi	sp,sp,16
    80003da4:	00008067          	ret
    80003da8:	00001517          	auipc	a0,0x1
    80003dac:	50850513          	addi	a0,a0,1288 # 800052b0 <digits+0x70>
    80003db0:	fffff097          	auipc	ra,0xfffff
    80003db4:	f2c080e7          	jalr	-212(ra) # 80002cdc <panic>
    80003db8:	00001517          	auipc	a0,0x1
    80003dbc:	4d850513          	addi	a0,a0,1240 # 80005290 <digits+0x50>
    80003dc0:	fffff097          	auipc	ra,0xfffff
    80003dc4:	f1c080e7          	jalr	-228(ra) # 80002cdc <panic>

0000000080003dc8 <__memset>:
    80003dc8:	ff010113          	addi	sp,sp,-16
    80003dcc:	00813423          	sd	s0,8(sp)
    80003dd0:	01010413          	addi	s0,sp,16
    80003dd4:	1a060e63          	beqz	a2,80003f90 <__memset+0x1c8>
    80003dd8:	40a007b3          	neg	a5,a0
    80003ddc:	0077f793          	andi	a5,a5,7
    80003de0:	00778693          	addi	a3,a5,7
    80003de4:	00b00813          	li	a6,11
    80003de8:	0ff5f593          	andi	a1,a1,255
    80003dec:	fff6071b          	addiw	a4,a2,-1
    80003df0:	1b06e663          	bltu	a3,a6,80003f9c <__memset+0x1d4>
    80003df4:	1cd76463          	bltu	a4,a3,80003fbc <__memset+0x1f4>
    80003df8:	1a078e63          	beqz	a5,80003fb4 <__memset+0x1ec>
    80003dfc:	00b50023          	sb	a1,0(a0)
    80003e00:	00100713          	li	a4,1
    80003e04:	1ae78463          	beq	a5,a4,80003fac <__memset+0x1e4>
    80003e08:	00b500a3          	sb	a1,1(a0)
    80003e0c:	00200713          	li	a4,2
    80003e10:	1ae78a63          	beq	a5,a4,80003fc4 <__memset+0x1fc>
    80003e14:	00b50123          	sb	a1,2(a0)
    80003e18:	00300713          	li	a4,3
    80003e1c:	18e78463          	beq	a5,a4,80003fa4 <__memset+0x1dc>
    80003e20:	00b501a3          	sb	a1,3(a0)
    80003e24:	00400713          	li	a4,4
    80003e28:	1ae78263          	beq	a5,a4,80003fcc <__memset+0x204>
    80003e2c:	00b50223          	sb	a1,4(a0)
    80003e30:	00500713          	li	a4,5
    80003e34:	1ae78063          	beq	a5,a4,80003fd4 <__memset+0x20c>
    80003e38:	00b502a3          	sb	a1,5(a0)
    80003e3c:	00700713          	li	a4,7
    80003e40:	18e79e63          	bne	a5,a4,80003fdc <__memset+0x214>
    80003e44:	00b50323          	sb	a1,6(a0)
    80003e48:	00700e93          	li	t4,7
    80003e4c:	00859713          	slli	a4,a1,0x8
    80003e50:	00e5e733          	or	a4,a1,a4
    80003e54:	01059e13          	slli	t3,a1,0x10
    80003e58:	01c76e33          	or	t3,a4,t3
    80003e5c:	01859313          	slli	t1,a1,0x18
    80003e60:	006e6333          	or	t1,t3,t1
    80003e64:	02059893          	slli	a7,a1,0x20
    80003e68:	40f60e3b          	subw	t3,a2,a5
    80003e6c:	011368b3          	or	a7,t1,a7
    80003e70:	02859813          	slli	a6,a1,0x28
    80003e74:	0108e833          	or	a6,a7,a6
    80003e78:	03059693          	slli	a3,a1,0x30
    80003e7c:	003e589b          	srliw	a7,t3,0x3
    80003e80:	00d866b3          	or	a3,a6,a3
    80003e84:	03859713          	slli	a4,a1,0x38
    80003e88:	00389813          	slli	a6,a7,0x3
    80003e8c:	00f507b3          	add	a5,a0,a5
    80003e90:	00e6e733          	or	a4,a3,a4
    80003e94:	000e089b          	sext.w	a7,t3
    80003e98:	00f806b3          	add	a3,a6,a5
    80003e9c:	00e7b023          	sd	a4,0(a5)
    80003ea0:	00878793          	addi	a5,a5,8
    80003ea4:	fed79ce3          	bne	a5,a3,80003e9c <__memset+0xd4>
    80003ea8:	ff8e7793          	andi	a5,t3,-8
    80003eac:	0007871b          	sext.w	a4,a5
    80003eb0:	01d787bb          	addw	a5,a5,t4
    80003eb4:	0ce88e63          	beq	a7,a4,80003f90 <__memset+0x1c8>
    80003eb8:	00f50733          	add	a4,a0,a5
    80003ebc:	00b70023          	sb	a1,0(a4)
    80003ec0:	0017871b          	addiw	a4,a5,1
    80003ec4:	0cc77663          	bgeu	a4,a2,80003f90 <__memset+0x1c8>
    80003ec8:	00e50733          	add	a4,a0,a4
    80003ecc:	00b70023          	sb	a1,0(a4)
    80003ed0:	0027871b          	addiw	a4,a5,2
    80003ed4:	0ac77e63          	bgeu	a4,a2,80003f90 <__memset+0x1c8>
    80003ed8:	00e50733          	add	a4,a0,a4
    80003edc:	00b70023          	sb	a1,0(a4)
    80003ee0:	0037871b          	addiw	a4,a5,3
    80003ee4:	0ac77663          	bgeu	a4,a2,80003f90 <__memset+0x1c8>
    80003ee8:	00e50733          	add	a4,a0,a4
    80003eec:	00b70023          	sb	a1,0(a4)
    80003ef0:	0047871b          	addiw	a4,a5,4
    80003ef4:	08c77e63          	bgeu	a4,a2,80003f90 <__memset+0x1c8>
    80003ef8:	00e50733          	add	a4,a0,a4
    80003efc:	00b70023          	sb	a1,0(a4)
    80003f00:	0057871b          	addiw	a4,a5,5
    80003f04:	08c77663          	bgeu	a4,a2,80003f90 <__memset+0x1c8>
    80003f08:	00e50733          	add	a4,a0,a4
    80003f0c:	00b70023          	sb	a1,0(a4)
    80003f10:	0067871b          	addiw	a4,a5,6
    80003f14:	06c77e63          	bgeu	a4,a2,80003f90 <__memset+0x1c8>
    80003f18:	00e50733          	add	a4,a0,a4
    80003f1c:	00b70023          	sb	a1,0(a4)
    80003f20:	0077871b          	addiw	a4,a5,7
    80003f24:	06c77663          	bgeu	a4,a2,80003f90 <__memset+0x1c8>
    80003f28:	00e50733          	add	a4,a0,a4
    80003f2c:	00b70023          	sb	a1,0(a4)
    80003f30:	0087871b          	addiw	a4,a5,8
    80003f34:	04c77e63          	bgeu	a4,a2,80003f90 <__memset+0x1c8>
    80003f38:	00e50733          	add	a4,a0,a4
    80003f3c:	00b70023          	sb	a1,0(a4)
    80003f40:	0097871b          	addiw	a4,a5,9
    80003f44:	04c77663          	bgeu	a4,a2,80003f90 <__memset+0x1c8>
    80003f48:	00e50733          	add	a4,a0,a4
    80003f4c:	00b70023          	sb	a1,0(a4)
    80003f50:	00a7871b          	addiw	a4,a5,10
    80003f54:	02c77e63          	bgeu	a4,a2,80003f90 <__memset+0x1c8>
    80003f58:	00e50733          	add	a4,a0,a4
    80003f5c:	00b70023          	sb	a1,0(a4)
    80003f60:	00b7871b          	addiw	a4,a5,11
    80003f64:	02c77663          	bgeu	a4,a2,80003f90 <__memset+0x1c8>
    80003f68:	00e50733          	add	a4,a0,a4
    80003f6c:	00b70023          	sb	a1,0(a4)
    80003f70:	00c7871b          	addiw	a4,a5,12
    80003f74:	00c77e63          	bgeu	a4,a2,80003f90 <__memset+0x1c8>
    80003f78:	00e50733          	add	a4,a0,a4
    80003f7c:	00b70023          	sb	a1,0(a4)
    80003f80:	00d7879b          	addiw	a5,a5,13
    80003f84:	00c7f663          	bgeu	a5,a2,80003f90 <__memset+0x1c8>
    80003f88:	00f507b3          	add	a5,a0,a5
    80003f8c:	00b78023          	sb	a1,0(a5)
    80003f90:	00813403          	ld	s0,8(sp)
    80003f94:	01010113          	addi	sp,sp,16
    80003f98:	00008067          	ret
    80003f9c:	00b00693          	li	a3,11
    80003fa0:	e55ff06f          	j	80003df4 <__memset+0x2c>
    80003fa4:	00300e93          	li	t4,3
    80003fa8:	ea5ff06f          	j	80003e4c <__memset+0x84>
    80003fac:	00100e93          	li	t4,1
    80003fb0:	e9dff06f          	j	80003e4c <__memset+0x84>
    80003fb4:	00000e93          	li	t4,0
    80003fb8:	e95ff06f          	j	80003e4c <__memset+0x84>
    80003fbc:	00000793          	li	a5,0
    80003fc0:	ef9ff06f          	j	80003eb8 <__memset+0xf0>
    80003fc4:	00200e93          	li	t4,2
    80003fc8:	e85ff06f          	j	80003e4c <__memset+0x84>
    80003fcc:	00400e93          	li	t4,4
    80003fd0:	e7dff06f          	j	80003e4c <__memset+0x84>
    80003fd4:	00500e93          	li	t4,5
    80003fd8:	e75ff06f          	j	80003e4c <__memset+0x84>
    80003fdc:	00600e93          	li	t4,6
    80003fe0:	e6dff06f          	j	80003e4c <__memset+0x84>

0000000080003fe4 <__memmove>:
    80003fe4:	ff010113          	addi	sp,sp,-16
    80003fe8:	00813423          	sd	s0,8(sp)
    80003fec:	01010413          	addi	s0,sp,16
    80003ff0:	0e060863          	beqz	a2,800040e0 <__memmove+0xfc>
    80003ff4:	fff6069b          	addiw	a3,a2,-1
    80003ff8:	0006881b          	sext.w	a6,a3
    80003ffc:	0ea5e863          	bltu	a1,a0,800040ec <__memmove+0x108>
    80004000:	00758713          	addi	a4,a1,7
    80004004:	00a5e7b3          	or	a5,a1,a0
    80004008:	40a70733          	sub	a4,a4,a0
    8000400c:	0077f793          	andi	a5,a5,7
    80004010:	00f73713          	sltiu	a4,a4,15
    80004014:	00174713          	xori	a4,a4,1
    80004018:	0017b793          	seqz	a5,a5
    8000401c:	00e7f7b3          	and	a5,a5,a4
    80004020:	10078863          	beqz	a5,80004130 <__memmove+0x14c>
    80004024:	00900793          	li	a5,9
    80004028:	1107f463          	bgeu	a5,a6,80004130 <__memmove+0x14c>
    8000402c:	0036581b          	srliw	a6,a2,0x3
    80004030:	fff8081b          	addiw	a6,a6,-1
    80004034:	02081813          	slli	a6,a6,0x20
    80004038:	01d85893          	srli	a7,a6,0x1d
    8000403c:	00858813          	addi	a6,a1,8
    80004040:	00058793          	mv	a5,a1
    80004044:	00050713          	mv	a4,a0
    80004048:	01088833          	add	a6,a7,a6
    8000404c:	0007b883          	ld	a7,0(a5)
    80004050:	00878793          	addi	a5,a5,8
    80004054:	00870713          	addi	a4,a4,8
    80004058:	ff173c23          	sd	a7,-8(a4)
    8000405c:	ff0798e3          	bne	a5,a6,8000404c <__memmove+0x68>
    80004060:	ff867713          	andi	a4,a2,-8
    80004064:	02071793          	slli	a5,a4,0x20
    80004068:	0207d793          	srli	a5,a5,0x20
    8000406c:	00f585b3          	add	a1,a1,a5
    80004070:	40e686bb          	subw	a3,a3,a4
    80004074:	00f507b3          	add	a5,a0,a5
    80004078:	06e60463          	beq	a2,a4,800040e0 <__memmove+0xfc>
    8000407c:	0005c703          	lbu	a4,0(a1)
    80004080:	00e78023          	sb	a4,0(a5)
    80004084:	04068e63          	beqz	a3,800040e0 <__memmove+0xfc>
    80004088:	0015c603          	lbu	a2,1(a1)
    8000408c:	00100713          	li	a4,1
    80004090:	00c780a3          	sb	a2,1(a5)
    80004094:	04e68663          	beq	a3,a4,800040e0 <__memmove+0xfc>
    80004098:	0025c603          	lbu	a2,2(a1)
    8000409c:	00200713          	li	a4,2
    800040a0:	00c78123          	sb	a2,2(a5)
    800040a4:	02e68e63          	beq	a3,a4,800040e0 <__memmove+0xfc>
    800040a8:	0035c603          	lbu	a2,3(a1)
    800040ac:	00300713          	li	a4,3
    800040b0:	00c781a3          	sb	a2,3(a5)
    800040b4:	02e68663          	beq	a3,a4,800040e0 <__memmove+0xfc>
    800040b8:	0045c603          	lbu	a2,4(a1)
    800040bc:	00400713          	li	a4,4
    800040c0:	00c78223          	sb	a2,4(a5)
    800040c4:	00e68e63          	beq	a3,a4,800040e0 <__memmove+0xfc>
    800040c8:	0055c603          	lbu	a2,5(a1)
    800040cc:	00500713          	li	a4,5
    800040d0:	00c782a3          	sb	a2,5(a5)
    800040d4:	00e68663          	beq	a3,a4,800040e0 <__memmove+0xfc>
    800040d8:	0065c703          	lbu	a4,6(a1)
    800040dc:	00e78323          	sb	a4,6(a5)
    800040e0:	00813403          	ld	s0,8(sp)
    800040e4:	01010113          	addi	sp,sp,16
    800040e8:	00008067          	ret
    800040ec:	02061713          	slli	a4,a2,0x20
    800040f0:	02075713          	srli	a4,a4,0x20
    800040f4:	00e587b3          	add	a5,a1,a4
    800040f8:	f0f574e3          	bgeu	a0,a5,80004000 <__memmove+0x1c>
    800040fc:	02069613          	slli	a2,a3,0x20
    80004100:	02065613          	srli	a2,a2,0x20
    80004104:	fff64613          	not	a2,a2
    80004108:	00e50733          	add	a4,a0,a4
    8000410c:	00c78633          	add	a2,a5,a2
    80004110:	fff7c683          	lbu	a3,-1(a5)
    80004114:	fff78793          	addi	a5,a5,-1
    80004118:	fff70713          	addi	a4,a4,-1
    8000411c:	00d70023          	sb	a3,0(a4)
    80004120:	fec798e3          	bne	a5,a2,80004110 <__memmove+0x12c>
    80004124:	00813403          	ld	s0,8(sp)
    80004128:	01010113          	addi	sp,sp,16
    8000412c:	00008067          	ret
    80004130:	02069713          	slli	a4,a3,0x20
    80004134:	02075713          	srli	a4,a4,0x20
    80004138:	00170713          	addi	a4,a4,1
    8000413c:	00e50733          	add	a4,a0,a4
    80004140:	00050793          	mv	a5,a0
    80004144:	0005c683          	lbu	a3,0(a1)
    80004148:	00178793          	addi	a5,a5,1
    8000414c:	00158593          	addi	a1,a1,1
    80004150:	fed78fa3          	sb	a3,-1(a5)
    80004154:	fee798e3          	bne	a5,a4,80004144 <__memmove+0x160>
    80004158:	f89ff06f          	j	800040e0 <__memmove+0xfc>

000000008000415c <__putc>:
    8000415c:	fe010113          	addi	sp,sp,-32
    80004160:	00813823          	sd	s0,16(sp)
    80004164:	00113c23          	sd	ra,24(sp)
    80004168:	02010413          	addi	s0,sp,32
    8000416c:	00050793          	mv	a5,a0
    80004170:	fef40593          	addi	a1,s0,-17
    80004174:	00100613          	li	a2,1
    80004178:	00000513          	li	a0,0
    8000417c:	fef407a3          	sb	a5,-17(s0)
    80004180:	fffff097          	auipc	ra,0xfffff
    80004184:	b3c080e7          	jalr	-1220(ra) # 80002cbc <console_write>
    80004188:	01813083          	ld	ra,24(sp)
    8000418c:	01013403          	ld	s0,16(sp)
    80004190:	02010113          	addi	sp,sp,32
    80004194:	00008067          	ret

0000000080004198 <__getc>:
    80004198:	fe010113          	addi	sp,sp,-32
    8000419c:	00813823          	sd	s0,16(sp)
    800041a0:	00113c23          	sd	ra,24(sp)
    800041a4:	02010413          	addi	s0,sp,32
    800041a8:	fe840593          	addi	a1,s0,-24
    800041ac:	00100613          	li	a2,1
    800041b0:	00000513          	li	a0,0
    800041b4:	fffff097          	auipc	ra,0xfffff
    800041b8:	ae8080e7          	jalr	-1304(ra) # 80002c9c <console_read>
    800041bc:	fe844503          	lbu	a0,-24(s0)
    800041c0:	01813083          	ld	ra,24(sp)
    800041c4:	01013403          	ld	s0,16(sp)
    800041c8:	02010113          	addi	sp,sp,32
    800041cc:	00008067          	ret

00000000800041d0 <console_handler>:
    800041d0:	fe010113          	addi	sp,sp,-32
    800041d4:	00813823          	sd	s0,16(sp)
    800041d8:	00113c23          	sd	ra,24(sp)
    800041dc:	00913423          	sd	s1,8(sp)
    800041e0:	02010413          	addi	s0,sp,32
    800041e4:	14202773          	csrr	a4,scause
    800041e8:	100027f3          	csrr	a5,sstatus
    800041ec:	0027f793          	andi	a5,a5,2
    800041f0:	06079e63          	bnez	a5,8000426c <console_handler+0x9c>
    800041f4:	00074c63          	bltz	a4,8000420c <console_handler+0x3c>
    800041f8:	01813083          	ld	ra,24(sp)
    800041fc:	01013403          	ld	s0,16(sp)
    80004200:	00813483          	ld	s1,8(sp)
    80004204:	02010113          	addi	sp,sp,32
    80004208:	00008067          	ret
    8000420c:	0ff77713          	andi	a4,a4,255
    80004210:	00900793          	li	a5,9
    80004214:	fef712e3          	bne	a4,a5,800041f8 <console_handler+0x28>
    80004218:	ffffe097          	auipc	ra,0xffffe
    8000421c:	6dc080e7          	jalr	1756(ra) # 800028f4 <plic_claim>
    80004220:	00a00793          	li	a5,10
    80004224:	00050493          	mv	s1,a0
    80004228:	02f50c63          	beq	a0,a5,80004260 <console_handler+0x90>
    8000422c:	fc0506e3          	beqz	a0,800041f8 <console_handler+0x28>
    80004230:	00050593          	mv	a1,a0
    80004234:	00001517          	auipc	a0,0x1
    80004238:	f8450513          	addi	a0,a0,-124 # 800051b8 <_ZZ12printIntegermE6digits+0xe0>
    8000423c:	fffff097          	auipc	ra,0xfffff
    80004240:	afc080e7          	jalr	-1284(ra) # 80002d38 <__printf>
    80004244:	01013403          	ld	s0,16(sp)
    80004248:	01813083          	ld	ra,24(sp)
    8000424c:	00048513          	mv	a0,s1
    80004250:	00813483          	ld	s1,8(sp)
    80004254:	02010113          	addi	sp,sp,32
    80004258:	ffffe317          	auipc	t1,0xffffe
    8000425c:	6d430067          	jr	1748(t1) # 8000292c <plic_complete>
    80004260:	fffff097          	auipc	ra,0xfffff
    80004264:	3e0080e7          	jalr	992(ra) # 80003640 <uartintr>
    80004268:	fddff06f          	j	80004244 <console_handler+0x74>
    8000426c:	00001517          	auipc	a0,0x1
    80004270:	04c50513          	addi	a0,a0,76 # 800052b8 <digits+0x78>
    80004274:	fffff097          	auipc	ra,0xfffff
    80004278:	a68080e7          	jalr	-1432(ra) # 80002cdc <panic>
	...
