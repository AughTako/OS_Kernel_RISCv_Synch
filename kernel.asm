
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	88013103          	ld	sp,-1920(sp) # 80005880 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	010020ef          	jal	ra,8000202c <start>

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
    80001084:	8822b023          	sd	sp,-1920(t0) # 80005900 <backupSP>
    call _ZN5Riscv16interruptHandlerEv
    80001088:	241000ef          	jal	ra,80001ac8 <_ZN5Riscv16interruptHandlerEv>

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
        stackSpace = mem_alloc(sizeof(uint64) * DEFAULT_STACK_SIZE);
        if(!stackSpace) return -1;
    }*/
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

00000000800012d8 <_ZL9fibonaccim>:
#include "../lib/hw.h"
#include "../h/ccb.hpp"
#include "../h/print.hpp"

static uint64 fibonacci(uint64 n)
{
    800012d8:	fe010113          	addi	sp,sp,-32
    800012dc:	00113c23          	sd	ra,24(sp)
    800012e0:	00813823          	sd	s0,16(sp)
    800012e4:	00913423          	sd	s1,8(sp)
    800012e8:	01213023          	sd	s2,0(sp)
    800012ec:	02010413          	addi	s0,sp,32
    800012f0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800012f4:	00100793          	li	a5,1
    800012f8:	02a7f663          	bgeu	a5,a0,80001324 <_ZL9fibonaccim+0x4c>
    if (n % 4 == 0) thread_dispatch();
    800012fc:	00357793          	andi	a5,a0,3
    80001300:	02078e63          	beqz	a5,8000133c <_ZL9fibonaccim+0x64>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001304:	fff48513          	addi	a0,s1,-1
    80001308:	00000097          	auipc	ra,0x0
    8000130c:	fd0080e7          	jalr	-48(ra) # 800012d8 <_ZL9fibonaccim>
    80001310:	00050913          	mv	s2,a0
    80001314:	ffe48513          	addi	a0,s1,-2
    80001318:	00000097          	auipc	ra,0x0
    8000131c:	fc0080e7          	jalr	-64(ra) # 800012d8 <_ZL9fibonaccim>
    80001320:	00a90533          	add	a0,s2,a0
}
    80001324:	01813083          	ld	ra,24(sp)
    80001328:	01013403          	ld	s0,16(sp)
    8000132c:	00813483          	ld	s1,8(sp)
    80001330:	00013903          	ld	s2,0(sp)
    80001334:	02010113          	addi	sp,sp,32
    80001338:	00008067          	ret
    if (n % 4 == 0) thread_dispatch();
    8000133c:	00000097          	auipc	ra,0x0
    80001340:	f7c080e7          	jalr	-132(ra) # 800012b8 <_Z15thread_dispatchv>
    80001344:	fc1ff06f          	j	80001304 <_ZL9fibonaccim+0x2c>

0000000080001348 <_Z11workerBodyAv>:

void workerBodyA()
{
    80001348:	fe010113          	addi	sp,sp,-32
    8000134c:	00113c23          	sd	ra,24(sp)
    80001350:	00813823          	sd	s0,16(sp)
    80001354:	00913423          	sd	s1,8(sp)
    80001358:	01213023          	sd	s2,0(sp)
    8000135c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80001360:	00000493          	li	s1,0
    80001364:	0380006f          	j	8000139c <_Z11workerBodyAv+0x54>
    for (; i < 3; i++)
    {
        printString("A: i=");
    80001368:	00004517          	auipc	a0,0x4
    8000136c:	cb850513          	addi	a0,a0,-840 # 80005020 <CONSOLE_STATUS+0x10>
    80001370:	00001097          	auipc	ra,0x1
    80001374:	b90080e7          	jalr	-1136(ra) # 80001f00 <_Z11printStringPKc>
        printInteger(i);
    80001378:	00048513          	mv	a0,s1
    8000137c:	00001097          	auipc	ra,0x1
    80001380:	bf4080e7          	jalr	-1036(ra) # 80001f70 <_Z12printIntegerm>
        printString("\n");
    80001384:	00004517          	auipc	a0,0x4
    80001388:	d4450513          	addi	a0,a0,-700 # 800050c8 <CONSOLE_STATUS+0xb8>
    8000138c:	00001097          	auipc	ra,0x1
    80001390:	b74080e7          	jalr	-1164(ra) # 80001f00 <_Z11printStringPKc>
    for (; i < 3; i++)
    80001394:	0014849b          	addiw	s1,s1,1
    80001398:	0ff4f493          	andi	s1,s1,255
    8000139c:	00200793          	li	a5,2
    800013a0:	fc97f4e3          	bgeu	a5,s1,80001368 <_Z11workerBodyAv+0x20>
    }

    printString("A: yield\n");
    800013a4:	00004517          	auipc	a0,0x4
    800013a8:	c8450513          	addi	a0,a0,-892 # 80005028 <CONSOLE_STATUS+0x18>
    800013ac:	00001097          	auipc	ra,0x1
    800013b0:	b54080e7          	jalr	-1196(ra) # 80001f00 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800013b4:	00700313          	li	t1,7
    thread_dispatch();
    800013b8:	00000097          	auipc	ra,0x0
    800013bc:	f00080e7          	jalr	-256(ra) # 800012b8 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800013c0:	00030913          	mv	s2,t1

    printString("A: t1=");
    800013c4:	00004517          	auipc	a0,0x4
    800013c8:	c7450513          	addi	a0,a0,-908 # 80005038 <CONSOLE_STATUS+0x28>
    800013cc:	00001097          	auipc	ra,0x1
    800013d0:	b34080e7          	jalr	-1228(ra) # 80001f00 <_Z11printStringPKc>
    printInteger(t1);
    800013d4:	00090513          	mv	a0,s2
    800013d8:	00001097          	auipc	ra,0x1
    800013dc:	b98080e7          	jalr	-1128(ra) # 80001f70 <_Z12printIntegerm>
    printString("\n");
    800013e0:	00004517          	auipc	a0,0x4
    800013e4:	ce850513          	addi	a0,a0,-792 # 800050c8 <CONSOLE_STATUS+0xb8>
    800013e8:	00001097          	auipc	ra,0x1
    800013ec:	b18080e7          	jalr	-1256(ra) # 80001f00 <_Z11printStringPKc>

    uint64 result = fibonacci(20);
    800013f0:	01400513          	li	a0,20
    800013f4:	00000097          	auipc	ra,0x0
    800013f8:	ee4080e7          	jalr	-284(ra) # 800012d8 <_ZL9fibonaccim>
    800013fc:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    80001400:	00004517          	auipc	a0,0x4
    80001404:	c4050513          	addi	a0,a0,-960 # 80005040 <CONSOLE_STATUS+0x30>
    80001408:	00001097          	auipc	ra,0x1
    8000140c:	af8080e7          	jalr	-1288(ra) # 80001f00 <_Z11printStringPKc>
    printInteger(result);
    80001410:	00090513          	mv	a0,s2
    80001414:	00001097          	auipc	ra,0x1
    80001418:	b5c080e7          	jalr	-1188(ra) # 80001f70 <_Z12printIntegerm>
    printString("\n");
    8000141c:	00004517          	auipc	a0,0x4
    80001420:	cac50513          	addi	a0,a0,-852 # 800050c8 <CONSOLE_STATUS+0xb8>
    80001424:	00001097          	auipc	ra,0x1
    80001428:	adc080e7          	jalr	-1316(ra) # 80001f00 <_Z11printStringPKc>
    8000142c:	0380006f          	j	80001464 <_Z11workerBodyAv+0x11c>

    for (; i < 6; i++)
    {
        printString("A: i=");
    80001430:	00004517          	auipc	a0,0x4
    80001434:	bf050513          	addi	a0,a0,-1040 # 80005020 <CONSOLE_STATUS+0x10>
    80001438:	00001097          	auipc	ra,0x1
    8000143c:	ac8080e7          	jalr	-1336(ra) # 80001f00 <_Z11printStringPKc>
        printInteger(i);
    80001440:	00048513          	mv	a0,s1
    80001444:	00001097          	auipc	ra,0x1
    80001448:	b2c080e7          	jalr	-1236(ra) # 80001f70 <_Z12printIntegerm>
        printString("\n");
    8000144c:	00004517          	auipc	a0,0x4
    80001450:	c7c50513          	addi	a0,a0,-900 # 800050c8 <CONSOLE_STATUS+0xb8>
    80001454:	00001097          	auipc	ra,0x1
    80001458:	aac080e7          	jalr	-1364(ra) # 80001f00 <_Z11printStringPKc>
    for (; i < 6; i++)
    8000145c:	0014849b          	addiw	s1,s1,1
    80001460:	0ff4f493          	andi	s1,s1,255
    80001464:	00500793          	li	a5,5
    80001468:	fc97f4e3          	bgeu	a5,s1,80001430 <_Z11workerBodyAv+0xe8>
    }
    printString("A:    F I N I S H E D");
    8000146c:	00004517          	auipc	a0,0x4
    80001470:	be450513          	addi	a0,a0,-1052 # 80005050 <CONSOLE_STATUS+0x40>
    80001474:	00001097          	auipc	ra,0x1
    80001478:	a8c080e7          	jalr	-1396(ra) # 80001f00 <_Z11printStringPKc>
    CCB::running->setFinished(true);
    8000147c:	00004797          	auipc	a5,0x4
    80001480:	40c7b783          	ld	a5,1036(a5) # 80005888 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001484:	0007b783          	ld	a5,0(a5)
        MemoryAllocator::free(address);
    }

    bool isFinished() const { return finished; }

    void setFinished(bool value) { finished = value;}
    80001488:	00100713          	li	a4,1
    8000148c:	02e78023          	sb	a4,32(a5)
    thread_dispatch();
    80001490:	00000097          	auipc	ra,0x0
    80001494:	e28080e7          	jalr	-472(ra) # 800012b8 <_Z15thread_dispatchv>
}
    80001498:	01813083          	ld	ra,24(sp)
    8000149c:	01013403          	ld	s0,16(sp)
    800014a0:	00813483          	ld	s1,8(sp)
    800014a4:	00013903          	ld	s2,0(sp)
    800014a8:	02010113          	addi	sp,sp,32
    800014ac:	00008067          	ret

00000000800014b0 <_Z11workerBodyBv>:

void workerBodyB()
{
    800014b0:	fe010113          	addi	sp,sp,-32
    800014b4:	00113c23          	sd	ra,24(sp)
    800014b8:	00813823          	sd	s0,16(sp)
    800014bc:	00913423          	sd	s1,8(sp)
    800014c0:	01213023          	sd	s2,0(sp)
    800014c4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800014c8:	00a00493          	li	s1,10
    800014cc:	0380006f          	j	80001504 <_Z11workerBodyBv+0x54>
    for (; i < 13; i++)
    {
        printString("B: i=");
    800014d0:	00004517          	auipc	a0,0x4
    800014d4:	b9850513          	addi	a0,a0,-1128 # 80005068 <CONSOLE_STATUS+0x58>
    800014d8:	00001097          	auipc	ra,0x1
    800014dc:	a28080e7          	jalr	-1496(ra) # 80001f00 <_Z11printStringPKc>
        printInteger(i);
    800014e0:	00048513          	mv	a0,s1
    800014e4:	00001097          	auipc	ra,0x1
    800014e8:	a8c080e7          	jalr	-1396(ra) # 80001f70 <_Z12printIntegerm>
        printString("\n");
    800014ec:	00004517          	auipc	a0,0x4
    800014f0:	bdc50513          	addi	a0,a0,-1060 # 800050c8 <CONSOLE_STATUS+0xb8>
    800014f4:	00001097          	auipc	ra,0x1
    800014f8:	a0c080e7          	jalr	-1524(ra) # 80001f00 <_Z11printStringPKc>
    for (; i < 13; i++)
    800014fc:	0014849b          	addiw	s1,s1,1
    80001500:	0ff4f493          	andi	s1,s1,255
    80001504:	00c00793          	li	a5,12
    80001508:	fc97f4e3          	bgeu	a5,s1,800014d0 <_Z11workerBodyBv+0x20>
    }

    printString("B: yield\n");
    8000150c:	00004517          	auipc	a0,0x4
    80001510:	b6450513          	addi	a0,a0,-1180 # 80005070 <CONSOLE_STATUS+0x60>
    80001514:	00001097          	auipc	ra,0x1
    80001518:	9ec080e7          	jalr	-1556(ra) # 80001f00 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000151c:	00500313          	li	t1,5
    thread_dispatch();
    80001520:	00000097          	auipc	ra,0x0
    80001524:	d98080e7          	jalr	-616(ra) # 800012b8 <_Z15thread_dispatchv>

    uint64 result = fibonacci(23);
    80001528:	01700513          	li	a0,23
    8000152c:	00000097          	auipc	ra,0x0
    80001530:	dac080e7          	jalr	-596(ra) # 800012d8 <_ZL9fibonaccim>
    80001534:	00050913          	mv	s2,a0
    printString("B: fibonaci=");
    80001538:	00004517          	auipc	a0,0x4
    8000153c:	b4850513          	addi	a0,a0,-1208 # 80005080 <CONSOLE_STATUS+0x70>
    80001540:	00001097          	auipc	ra,0x1
    80001544:	9c0080e7          	jalr	-1600(ra) # 80001f00 <_Z11printStringPKc>
    printInteger(result);
    80001548:	00090513          	mv	a0,s2
    8000154c:	00001097          	auipc	ra,0x1
    80001550:	a24080e7          	jalr	-1500(ra) # 80001f70 <_Z12printIntegerm>
    printString("\n");
    80001554:	00004517          	auipc	a0,0x4
    80001558:	b7450513          	addi	a0,a0,-1164 # 800050c8 <CONSOLE_STATUS+0xb8>
    8000155c:	00001097          	auipc	ra,0x1
    80001560:	9a4080e7          	jalr	-1628(ra) # 80001f00 <_Z11printStringPKc>
    80001564:	0380006f          	j	8000159c <_Z11workerBodyBv+0xec>

    for (; i < 16; i++)
    {
        printString("B: i=");
    80001568:	00004517          	auipc	a0,0x4
    8000156c:	b0050513          	addi	a0,a0,-1280 # 80005068 <CONSOLE_STATUS+0x58>
    80001570:	00001097          	auipc	ra,0x1
    80001574:	990080e7          	jalr	-1648(ra) # 80001f00 <_Z11printStringPKc>
        printInteger(i);
    80001578:	00048513          	mv	a0,s1
    8000157c:	00001097          	auipc	ra,0x1
    80001580:	9f4080e7          	jalr	-1548(ra) # 80001f70 <_Z12printIntegerm>
        printString("\n");
    80001584:	00004517          	auipc	a0,0x4
    80001588:	b4450513          	addi	a0,a0,-1212 # 800050c8 <CONSOLE_STATUS+0xb8>
    8000158c:	00001097          	auipc	ra,0x1
    80001590:	974080e7          	jalr	-1676(ra) # 80001f00 <_Z11printStringPKc>
    for (; i < 16; i++)
    80001594:	0014849b          	addiw	s1,s1,1
    80001598:	0ff4f493          	andi	s1,s1,255
    8000159c:	00f00793          	li	a5,15
    800015a0:	fc97f4e3          	bgeu	a5,s1,80001568 <_Z11workerBodyBv+0xb8>
    }

    CCB::running->setFinished(true);
    800015a4:	00004797          	auipc	a5,0x4
    800015a8:	2e47b783          	ld	a5,740(a5) # 80005888 <_GLOBAL_OFFSET_TABLE_+0x30>
    800015ac:	0007b783          	ld	a5,0(a5)
    800015b0:	00100713          	li	a4,1
    800015b4:	02e78023          	sb	a4,32(a5)
    thread_dispatch();
    800015b8:	00000097          	auipc	ra,0x0
    800015bc:	d00080e7          	jalr	-768(ra) # 800012b8 <_Z15thread_dispatchv>
    800015c0:	01813083          	ld	ra,24(sp)
    800015c4:	01013403          	ld	s0,16(sp)
    800015c8:	00813483          	ld	s1,8(sp)
    800015cc:	00013903          	ld	s2,0(sp)
    800015d0:	02010113          	addi	sp,sp,32
    800015d4:	00008067          	ret

00000000800015d8 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(CCB *ccb)
{
    readyCoroutineQueue.addLast(ccb);
    800015d8:	ff010113          	addi	sp,sp,-16
    800015dc:	00813423          	sd	s0,8(sp)
    800015e0:	01010413          	addi	s0,sp,16
    800015e4:	00100793          	li	a5,1
    800015e8:	00f50863          	beq	a0,a5,800015f8 <_Z41__static_initialization_and_destruction_0ii+0x20>
    800015ec:	00813403          	ld	s0,8(sp)
    800015f0:	01010113          	addi	sp,sp,16
    800015f4:	00008067          	ret
    800015f8:	000107b7          	lui	a5,0x10
    800015fc:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001600:	fef596e3          	bne	a1,a5,800015ec <_Z41__static_initialization_and_destruction_0ii+0x14>

    void operator delete(void* address) {
        MemoryAllocator::free(address);
    }

    List() : head(0), tail(0) {}
    80001604:	00004797          	auipc	a5,0x4
    80001608:	2ec78793          	addi	a5,a5,748 # 800058f0 <_ZN9Scheduler19readyCoroutineQueueE>
    8000160c:	0007b023          	sd	zero,0(a5)
    80001610:	0007b423          	sd	zero,8(a5)
    80001614:	fd9ff06f          	j	800015ec <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001618 <_ZN9Scheduler3getEv>:
{
    80001618:	fe010113          	addi	sp,sp,-32
    8000161c:	00113c23          	sd	ra,24(sp)
    80001620:	00813823          	sd	s0,16(sp)
    80001624:	00913423          	sd	s1,8(sp)
    80001628:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    8000162c:	00004517          	auipc	a0,0x4
    80001630:	2c453503          	ld	a0,708(a0) # 800058f0 <_ZN9Scheduler19readyCoroutineQueueE>
    80001634:	04050263          	beqz	a0,80001678 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    80001638:	00853783          	ld	a5,8(a0)
    8000163c:	00004717          	auipc	a4,0x4
    80001640:	2af73a23          	sd	a5,692(a4) # 800058f0 <_ZN9Scheduler19readyCoroutineQueueE>
        if (!head) { tail = 0; }
    80001644:	02078463          	beqz	a5,8000166c <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    80001648:	00053483          	ld	s1,0(a0)
            MemoryAllocator::free(address);
    8000164c:	00000097          	auipc	ra,0x0
    80001650:	7f8080e7          	jalr	2040(ra) # 80001e44 <_ZN15MemoryAllocator4freeEPv>
}
    80001654:	00048513          	mv	a0,s1
    80001658:	01813083          	ld	ra,24(sp)
    8000165c:	01013403          	ld	s0,16(sp)
    80001660:	00813483          	ld	s1,8(sp)
    80001664:	02010113          	addi	sp,sp,32
    80001668:	00008067          	ret
        if (!head) { tail = 0; }
    8000166c:	00004797          	auipc	a5,0x4
    80001670:	2807b623          	sd	zero,652(a5) # 800058f8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80001674:	fd5ff06f          	j	80001648 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80001678:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    8000167c:	fd9ff06f          	j	80001654 <_ZN9Scheduler3getEv+0x3c>

0000000080001680 <_ZN9Scheduler3putEP3CCB>:
{
    80001680:	fe010113          	addi	sp,sp,-32
    80001684:	00113c23          	sd	ra,24(sp)
    80001688:	00813823          	sd	s0,16(sp)
    8000168c:	00913423          	sd	s1,8(sp)
    80001690:	02010413          	addi	s0,sp,32
    80001694:	00050493          	mv	s1,a0
            return MemoryAllocator::allocateB(size);
    80001698:	01000513          	li	a0,16
    8000169c:	00000097          	auipc	ra,0x0
    800016a0:	710080e7          	jalr	1808(ra) # 80001dac <_ZN15MemoryAllocator9allocateBEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800016a4:	00953023          	sd	s1,0(a0)
    800016a8:	00053423          	sd	zero,8(a0)
        if (tail)
    800016ac:	00004797          	auipc	a5,0x4
    800016b0:	24c7b783          	ld	a5,588(a5) # 800058f8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    800016b4:	02078263          	beqz	a5,800016d8 <_ZN9Scheduler3putEP3CCB+0x58>
            tail->next = elem;
    800016b8:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800016bc:	00004797          	auipc	a5,0x4
    800016c0:	22a7be23          	sd	a0,572(a5) # 800058f8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    800016c4:	01813083          	ld	ra,24(sp)
    800016c8:	01013403          	ld	s0,16(sp)
    800016cc:	00813483          	ld	s1,8(sp)
    800016d0:	02010113          	addi	sp,sp,32
    800016d4:	00008067          	ret
            head = tail = elem;
    800016d8:	00004797          	auipc	a5,0x4
    800016dc:	21878793          	addi	a5,a5,536 # 800058f0 <_ZN9Scheduler19readyCoroutineQueueE>
    800016e0:	00a7b423          	sd	a0,8(a5)
    800016e4:	00a7b023          	sd	a0,0(a5)
    800016e8:	fddff06f          	j	800016c4 <_ZN9Scheduler3putEP3CCB+0x44>

00000000800016ec <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    800016ec:	ff010113          	addi	sp,sp,-16
    800016f0:	00113423          	sd	ra,8(sp)
    800016f4:	00813023          	sd	s0,0(sp)
    800016f8:	01010413          	addi	s0,sp,16
    800016fc:	000105b7          	lui	a1,0x10
    80001700:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001704:	00100513          	li	a0,1
    80001708:	00000097          	auipc	ra,0x0
    8000170c:	ed0080e7          	jalr	-304(ra) # 800015d8 <_Z41__static_initialization_and_destruction_0ii>
    80001710:	00813083          	ld	ra,8(sp)
    80001714:	00013403          	ld	s0,0(sp)
    80001718:	01010113          	addi	sp,sp,16
    8000171c:	00008067          	ret

0000000080001720 <main>:
#include "../h/workers.hpp"
#include "../h/print.hpp"
#include "../h/syscall_c.h"

uint64 backupSP;
void main(){
    80001720:	fc010113          	addi	sp,sp,-64
    80001724:	02113c23          	sd	ra,56(sp)
    80001728:	02813823          	sd	s0,48(sp)
    8000172c:	02913423          	sd	s1,40(sp)
    80001730:	03213023          	sd	s2,32(sp)
    80001734:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001738:	10000793          	li	a5,256
    8000173c:	1007a073          	csrs	sstatus,a5

    Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    Riscv::w_stvec((uint64) &Riscv::interruptRoutine);
    80001740:	00004797          	auipc	a5,0x4
    80001744:	1207b783          	ld	a5,288(a5) # 80005860 <_GLOBAL_OFFSET_TABLE_+0x8>
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001748:	10579073          	csrw	stvec,a5
    MemoryAllocator::init();
    8000174c:	00000097          	auipc	ra,0x0
    80001750:	50c080e7          	jalr	1292(ra) # 80001c58 <_ZN15MemoryAllocator4initEv>


    CCB *coroutines[3];

    thread_create(&coroutines[0], nullptr);
    80001754:	00000593          	li	a1,0
    80001758:	fc840513          	addi	a0,s0,-56
    8000175c:	00000097          	auipc	ra,0x0
    80001760:	b30080e7          	jalr	-1232(ra) # 8000128c <_Z13thread_createPP3CCBPFvvE>
    CCB::running = coroutines[0];
    80001764:	fc843703          	ld	a4,-56(s0)
    80001768:	00004797          	auipc	a5,0x4
    8000176c:	1207b783          	ld	a5,288(a5) # 80005888 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001770:	00e7b023          	sd	a4,0(a5)
    //coroutines[0] = CCB::createCoroutine(nullptr);

    thread_create(&coroutines[1], &workerBodyA);
    80001774:	00004597          	auipc	a1,0x4
    80001778:	1045b583          	ld	a1,260(a1) # 80005878 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000177c:	fd040513          	addi	a0,s0,-48
    80001780:	00000097          	auipc	ra,0x0
    80001784:	b0c080e7          	jalr	-1268(ra) # 8000128c <_Z13thread_createPP3CCBPFvvE>
    printString("CoroutineA created\n");
    80001788:	00004517          	auipc	a0,0x4
    8000178c:	90850513          	addi	a0,a0,-1784 # 80005090 <CONSOLE_STATUS+0x80>
    80001790:	00000097          	auipc	ra,0x0
    80001794:	770080e7          	jalr	1904(ra) # 80001f00 <_Z11printStringPKc>
    //coroutines[1] = CCB::createCoroutine(&workerBodyA);

    thread_create(&coroutines[2], &workerBodyB);
    80001798:	00004597          	auipc	a1,0x4
    8000179c:	0d85b583          	ld	a1,216(a1) # 80005870 <_GLOBAL_OFFSET_TABLE_+0x18>
    800017a0:	fd840513          	addi	a0,s0,-40
    800017a4:	00000097          	auipc	ra,0x0
    800017a8:	ae8080e7          	jalr	-1304(ra) # 8000128c <_Z13thread_createPP3CCBPFvvE>
    printString("CoroutineB created\n");
    800017ac:	00004517          	auipc	a0,0x4
    800017b0:	8fc50513          	addi	a0,a0,-1796 # 800050a8 <CONSOLE_STATUS+0x98>
    800017b4:	00000097          	auipc	ra,0x0
    800017b8:	74c080e7          	jalr	1868(ra) # 80001f00 <_Z11printStringPKc>
    800017bc:	00c0006f          	j	800017c8 <main+0xa8>
    //coroutines[2] = CCB::createCoroutine(&workerBodyB);

    while (!(coroutines[1]->isFinished() &&
             coroutines[2]->isFinished()))
    {
        thread_dispatch();
    800017c0:	00000097          	auipc	ra,0x0
    800017c4:	af8080e7          	jalr	-1288(ra) # 800012b8 <_Z15thread_dispatchv>
    while (!(coroutines[1]->isFinished() &&
    800017c8:	fd043783          	ld	a5,-48(s0)
    bool isFinished() const { return finished; }
    800017cc:	0207c783          	lbu	a5,32(a5)
    800017d0:	fe0788e3          	beqz	a5,800017c0 <main+0xa0>
             coroutines[2]->isFinished()))
    800017d4:	fd843783          	ld	a5,-40(s0)
    800017d8:	0207c783          	lbu	a5,32(a5)
    while (!(coroutines[1]->isFinished() &&
    800017dc:	fe0782e3          	beqz	a5,800017c0 <main+0xa0>
    800017e0:	fc840493          	addi	s1,s0,-56
    800017e4:	0140006f          	j	800017f8 <main+0xd8>
        MemoryAllocator::free(address);
    800017e8:	00090513          	mv	a0,s2
    800017ec:	00000097          	auipc	ra,0x0
    800017f0:	658080e7          	jalr	1624(ra) # 80001e44 <_ZN15MemoryAllocator4freeEPv>
    }

    for (auto &coroutine: coroutines)
    800017f4:	00848493          	addi	s1,s1,8
    800017f8:	fe040793          	addi	a5,s0,-32
    800017fc:	02f48063          	beq	s1,a5,8000181c <main+0xfc>
    {
        delete coroutine;
    80001800:	0004b903          	ld	s2,0(s1)
    80001804:	fe0908e3          	beqz	s2,800017f4 <main+0xd4>
    ~CCB() { delete[] stack; }
    80001808:	00893503          	ld	a0,8(s2)
    8000180c:	fc050ee3          	beqz	a0,800017e8 <main+0xc8>
    80001810:	00000097          	auipc	ra,0x0
    80001814:	264080e7          	jalr	612(ra) # 80001a74 <_ZdaPv>
    80001818:	fd1ff06f          	j	800017e8 <main+0xc8>
    }
    printString("Finished\n");
    8000181c:	00004517          	auipc	a0,0x4
    80001820:	8a450513          	addi	a0,a0,-1884 # 800050c0 <CONSOLE_STATUS+0xb0>
    80001824:	00000097          	auipc	ra,0x0
    80001828:	6dc080e7          	jalr	1756(ra) # 80001f00 <_Z11printStringPKc>

}
    8000182c:	03813083          	ld	ra,56(sp)
    80001830:	03013403          	ld	s0,48(sp)
    80001834:	02813483          	ld	s1,40(sp)
    80001838:	02013903          	ld	s2,32(sp)
    8000183c:	04010113          	addi	sp,sp,64
    80001840:	00008067          	ret

0000000080001844 <_ZN3CCB13threadWrapperEv>:
    running = Scheduler::get();

    CCB::contextSwitch(&old->context, &running->context);
}

void CCB::threadWrapper() {
    80001844:	fe010113          	addi	sp,sp,-32
    80001848:	00113c23          	sd	ra,24(sp)
    8000184c:	00813823          	sd	s0,16(sp)
    80001850:	00913423          	sd	s1,8(sp)
    80001854:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80001858:	00000097          	auipc	ra,0x0
    8000185c:	244080e7          	jalr	580(ra) # 80001a9c <_ZN5Riscv10popSppSpieEv>
    running->body();
    80001860:	00004497          	auipc	s1,0x4
    80001864:	0a848493          	addi	s1,s1,168 # 80005908 <_ZN3CCB7runningE>
    80001868:	0004b783          	ld	a5,0(s1)
    8000186c:	0007b783          	ld	a5,0(a5)
    80001870:	000780e7          	jalr	a5
    running->setFinished(true);
    80001874:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value;}
    80001878:	00100713          	li	a4,1
    8000187c:	02e78023          	sb	a4,32(a5)
    thread_dispatch();
    80001880:	00000097          	auipc	ra,0x0
    80001884:	a38080e7          	jalr	-1480(ra) # 800012b8 <_Z15thread_dispatchv>
    80001888:	01813083          	ld	ra,24(sp)
    8000188c:	01013403          	ld	s0,16(sp)
    80001890:	00813483          	ld	s1,8(sp)
    80001894:	02010113          	addi	sp,sp,32
    80001898:	00008067          	ret

000000008000189c <_ZN3CCB15createCoroutineEPFvvE>:
{
    8000189c:	fe010113          	addi	sp,sp,-32
    800018a0:	00113c23          	sd	ra,24(sp)
    800018a4:	00813823          	sd	s0,16(sp)
    800018a8:	00913423          	sd	s1,8(sp)
    800018ac:	01213023          	sd	s2,0(sp)
    800018b0:	02010413          	addi	s0,sp,32
    800018b4:	00050913          	mv	s2,a0
        return MemoryAllocator::allocateB(size);
    800018b8:	02800513          	li	a0,40
    800018bc:	00000097          	auipc	ra,0x0
    800018c0:	4f0080e7          	jalr	1264(ra) # 80001dac <_ZN15MemoryAllocator9allocateBEm>
    800018c4:	00050493          	mv	s1,a0
            body(body),
            stack(body != nullptr ? (uint64*) MemoryAllocator::allocateB(sizeof(uint64) * STACK_SIZE) : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            finished(false)
    800018c8:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? (uint64*) MemoryAllocator::allocateB(sizeof(uint64) * STACK_SIZE) : nullptr),
    800018cc:	00090a63          	beqz	s2,800018e0 <_ZN3CCB15createCoroutineEPFvvE+0x44>
    800018d0:	00002537          	lui	a0,0x2
    800018d4:	00000097          	auipc	ra,0x0
    800018d8:	4d8080e7          	jalr	1240(ra) # 80001dac <_ZN15MemoryAllocator9allocateBEm>
    800018dc:	0080006f          	j	800018e4 <_ZN3CCB15createCoroutineEPFvvE+0x48>
    800018e0:	00000513          	li	a0,0
            finished(false)
    800018e4:	00a4b423          	sd	a0,8(s1)
    800018e8:	00000797          	auipc	a5,0x0
    800018ec:	f5c78793          	addi	a5,a5,-164 # 80001844 <_ZN3CCB13threadWrapperEv>
    800018f0:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    800018f4:	02050463          	beqz	a0,8000191c <_ZN3CCB15createCoroutineEPFvvE+0x80>
    800018f8:	000027b7          	lui	a5,0x2
    800018fc:	00f507b3          	add	a5,a0,a5
            finished(false)
    80001900:	00f4bc23          	sd	a5,24(s1)
    80001904:	02048023          	sb	zero,32(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    80001908:	02090c63          	beqz	s2,80001940 <_ZN3CCB15createCoroutineEPFvvE+0xa4>
    8000190c:	00048513          	mv	a0,s1
    80001910:	00000097          	auipc	ra,0x0
    80001914:	d70080e7          	jalr	-656(ra) # 80001680 <_ZN9Scheduler3putEP3CCB>
    80001918:	0280006f          	j	80001940 <_ZN3CCB15createCoroutineEPFvvE+0xa4>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    8000191c:	00000793          	li	a5,0
    80001920:	fe1ff06f          	j	80001900 <_ZN3CCB15createCoroutineEPFvvE+0x64>
    80001924:	00050913          	mv	s2,a0
        MemoryAllocator::free(address);
    80001928:	00048513          	mv	a0,s1
    8000192c:	00000097          	auipc	ra,0x0
    80001930:	518080e7          	jalr	1304(ra) # 80001e44 <_ZN15MemoryAllocator4freeEPv>
    80001934:	00090513          	mv	a0,s2
    80001938:	00005097          	auipc	ra,0x5
    8000193c:	0b0080e7          	jalr	176(ra) # 800069e8 <_Unwind_Resume>
}
    80001940:	00048513          	mv	a0,s1
    80001944:	01813083          	ld	ra,24(sp)
    80001948:	01013403          	ld	s0,16(sp)
    8000194c:	00813483          	ld	s1,8(sp)
    80001950:	00013903          	ld	s2,0(sp)
    80001954:	02010113          	addi	sp,sp,32
    80001958:	00008067          	ret

000000008000195c <_ZN3CCB8dispatchEv>:
{
    8000195c:	fe010113          	addi	sp,sp,-32
    80001960:	00113c23          	sd	ra,24(sp)
    80001964:	00813823          	sd	s0,16(sp)
    80001968:	00913423          	sd	s1,8(sp)
    8000196c:	02010413          	addi	s0,sp,32
    CCB *old = running;
    80001970:	00004497          	auipc	s1,0x4
    80001974:	f984b483          	ld	s1,-104(s1) # 80005908 <_ZN3CCB7runningE>
    bool isFinished() const { return finished; }
    80001978:	0204c783          	lbu	a5,32(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    8000197c:	02078c63          	beqz	a5,800019b4 <_ZN3CCB8dispatchEv+0x58>
    running = Scheduler::get();
    80001980:	00000097          	auipc	ra,0x0
    80001984:	c98080e7          	jalr	-872(ra) # 80001618 <_ZN9Scheduler3getEv>
    80001988:	00004797          	auipc	a5,0x4
    8000198c:	f8a7b023          	sd	a0,-128(a5) # 80005908 <_ZN3CCB7runningE>
    CCB::contextSwitch(&old->context, &running->context);
    80001990:	01050593          	addi	a1,a0,16 # 2010 <_entry-0x7fffdff0>
    80001994:	01048513          	addi	a0,s1,16
    80001998:	00000097          	auipc	ra,0x0
    8000199c:	870080e7          	jalr	-1936(ra) # 80001208 <_ZN3CCB13contextSwitchEPNS_7ContextES1_>
}
    800019a0:	01813083          	ld	ra,24(sp)
    800019a4:	01013403          	ld	s0,16(sp)
    800019a8:	00813483          	ld	s1,8(sp)
    800019ac:	02010113          	addi	sp,sp,32
    800019b0:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    800019b4:	00048513          	mv	a0,s1
    800019b8:	00000097          	auipc	ra,0x0
    800019bc:	cc8080e7          	jalr	-824(ra) # 80001680 <_ZN9Scheduler3putEP3CCB>
    800019c0:	fc1ff06f          	j	80001980 <_ZN3CCB8dispatchEv+0x24>

00000000800019c4 <_ZN3CCB5yieldEv>:
{
    800019c4:	ff010113          	addi	sp,sp,-16
    800019c8:	00113423          	sd	ra,8(sp)
    800019cc:	00813023          	sd	s0,0(sp)
    800019d0:	01010413          	addi	s0,sp,16
    Riscv::pushRegisters();
    800019d4:	fffff097          	auipc	ra,0xfffff
    800019d8:	73c080e7          	jalr	1852(ra) # 80001110 <_ZN5Riscv13pushRegistersEv>
    CCB::dispatch();
    800019dc:	00000097          	auipc	ra,0x0
    800019e0:	f80080e7          	jalr	-128(ra) # 8000195c <_ZN3CCB8dispatchEv>
    Riscv::popRegisters();
    800019e4:	fffff097          	auipc	ra,0xfffff
    800019e8:	7a8080e7          	jalr	1960(ra) # 8000118c <_ZN5Riscv12popRegistersEv>
}
    800019ec:	00813083          	ld	ra,8(sp)
    800019f0:	00013403          	ld	s0,0(sp)
    800019f4:	01010113          	addi	sp,sp,16
    800019f8:	00008067          	ret

00000000800019fc <_Znwm>:
// Created by os on 6/22/22.
//
#include "../h/syscall_cpp.hpp"
#include "../h/syscall_c.h"

void* operator new(size_t size) {
    800019fc:	ff010113          	addi	sp,sp,-16
    80001a00:	00113423          	sd	ra,8(sp)
    80001a04:	00813023          	sd	s0,0(sp)
    80001a08:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001a0c:	00000097          	auipc	ra,0x0
    80001a10:	810080e7          	jalr	-2032(ra) # 8000121c <_Z9mem_allocm>
}
    80001a14:	00813083          	ld	ra,8(sp)
    80001a18:	00013403          	ld	s0,0(sp)
    80001a1c:	01010113          	addi	sp,sp,16
    80001a20:	00008067          	ret

0000000080001a24 <_Znam>:
void* operator new[](size_t size) {
    80001a24:	ff010113          	addi	sp,sp,-16
    80001a28:	00113423          	sd	ra,8(sp)
    80001a2c:	00813023          	sd	s0,0(sp)
    80001a30:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001a34:	fffff097          	auipc	ra,0xfffff
    80001a38:	7e8080e7          	jalr	2024(ra) # 8000121c <_Z9mem_allocm>
}
    80001a3c:	00813083          	ld	ra,8(sp)
    80001a40:	00013403          	ld	s0,0(sp)
    80001a44:	01010113          	addi	sp,sp,16
    80001a48:	00008067          	ret

0000000080001a4c <_ZdlPv>:
void operator delete(void* address) {
    80001a4c:	ff010113          	addi	sp,sp,-16
    80001a50:	00113423          	sd	ra,8(sp)
    80001a54:	00813023          	sd	s0,0(sp)
    80001a58:	01010413          	addi	s0,sp,16
    mem_free(address);
    80001a5c:	00000097          	auipc	ra,0x0
    80001a60:	80c080e7          	jalr	-2036(ra) # 80001268 <_Z8mem_freePv>
}
    80001a64:	00813083          	ld	ra,8(sp)
    80001a68:	00013403          	ld	s0,0(sp)
    80001a6c:	01010113          	addi	sp,sp,16
    80001a70:	00008067          	ret

0000000080001a74 <_ZdaPv>:
void operator delete[](void* address) {
    80001a74:	ff010113          	addi	sp,sp,-16
    80001a78:	00113423          	sd	ra,8(sp)
    80001a7c:	00813023          	sd	s0,0(sp)
    80001a80:	01010413          	addi	s0,sp,16
    mem_free(address);
    80001a84:	fffff097          	auipc	ra,0xfffff
    80001a88:	7e4080e7          	jalr	2020(ra) # 80001268 <_Z8mem_freePv>
}
    80001a8c:	00813083          	ld	ra,8(sp)
    80001a90:	00013403          	ld	s0,0(sp)
    80001a94:	01010113          	addi	sp,sp,16
    80001a98:	00008067          	ret

0000000080001a9c <_ZN5Riscv10popSppSpieEv>:
#define THREAD_DISPATCH 0x13
extern uint64 backupSP;


void Riscv::popSppSpie()
{
    80001a9c:	ff010113          	addi	sp,sp,-16
    80001aa0:	00813423          	sd	s0,8(sp)
    80001aa4:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001aa8:	14109073          	csrw	sepc,ra
    __asm__ volatile ("csrc sip, 0x02");
    80001aac:	14417073          	csrci	sip,2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001ab0:	10000793          	li	a5,256
    80001ab4:	1007a073          	csrs	sstatus,a5
    ms_sstatus(SSTATUS_SPP);
    __asm__ volatile ("sret");
    80001ab8:	10200073          	sret
}
    80001abc:	00813403          	ld	s0,8(sp)
    80001ac0:	01010113          	addi	sp,sp,16
    80001ac4:	00008067          	ret

0000000080001ac8 <_ZN5Riscv16interruptHandlerEv>:

void Riscv::interruptHandler() {
    80001ac8:	fa010113          	addi	sp,sp,-96
    80001acc:	04113c23          	sd	ra,88(sp)
    80001ad0:	04813823          	sd	s0,80(sp)
    80001ad4:	04913423          	sd	s1,72(sp)
    80001ad8:	05213023          	sd	s2,64(sp)
    80001adc:	06010413          	addi	s0,sp,96
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001ae0:	142027f3          	csrr	a5,scause
    80001ae4:	faf43423          	sd	a5,-88(s0)
    return scause;
    80001ae8:	fa843703          	ld	a4,-88(s0)
    uint64 scause = Riscv::r_scause();
    if (scause == INTR_TIMER)
    80001aec:	fff00793          	li	a5,-1
    80001af0:	03f79793          	slli	a5,a5,0x3f
    80001af4:	00178793          	addi	a5,a5,1
    80001af8:	04f70a63          	beq	a4,a5,80001b4c <_ZN5Riscv16interruptHandlerEv+0x84>
        //     w_sstatus(sstatus);
        //     w_sepc(sepc);
        // }
        // mc_sip(SIP_SSIP);
    }
    else if(scause == ECALL_USER || scause == ECALL_SUPERVISOR){
    80001afc:	ff870793          	addi	a5,a4,-8
    80001b00:	00100693          	li	a3,1
    80001b04:	06f6f063          	bgeu	a3,a5,80001b64 <_ZN5Riscv16interruptHandlerEv+0x9c>
            w_sstatus(sstatus);
            w_sepc(sepc);
        }

    }
    else if (scause == 0x8000000000000009UL) {
    80001b08:	fff00793          	li	a5,-1
    80001b0c:	03f79793          	slli	a5,a5,0x3f
    80001b10:	00978793          	addi	a5,a5,9
    80001b14:	12f70c63          	beq	a4,a5,80001c4c <_ZN5Riscv16interruptHandlerEv+0x184>
        console_handler();
    }
    else {
        printString("Error ");
    80001b18:	00003517          	auipc	a0,0x3
    80001b1c:	5b850513          	addi	a0,a0,1464 # 800050d0 <CONSOLE_STATUS+0xc0>
    80001b20:	00000097          	auipc	ra,0x0
    80001b24:	3e0080e7          	jalr	992(ra) # 80001f00 <_Z11printStringPKc>
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001b28:	142027f3          	csrr	a5,scause
    80001b2c:	fcf43c23          	sd	a5,-40(s0)
    return scause;
    80001b30:	fd843503          	ld	a0,-40(s0)
        printInteger(r_scause());
    80001b34:	00000097          	auipc	ra,0x0
    80001b38:	43c080e7          	jalr	1084(ra) # 80001f70 <_Z12printIntegerm>
        printString("\n");
    80001b3c:	00003517          	auipc	a0,0x3
    80001b40:	58c50513          	addi	a0,a0,1420 # 800050c8 <CONSOLE_STATUS+0xb8>
    80001b44:	00000097          	auipc	ra,0x0
    80001b48:	3bc080e7          	jalr	956(ra) # 80001f00 <_Z11printStringPKc>
    }
    80001b4c:	05813083          	ld	ra,88(sp)
    80001b50:	05013403          	ld	s0,80(sp)
    80001b54:	04813483          	ld	s1,72(sp)
    80001b58:	04013903          	ld	s2,64(sp)
    80001b5c:	06010113          	addi	sp,sp,96
    80001b60:	00008067          	ret
        __asm__ volatile("mv %0, a0" : "=r" (intrId));
    80001b64:	00050793          	mv	a5,a0
        if(intrId == MEM_ALLOC){
    80001b68:	00100713          	li	a4,1
    80001b6c:	04e78663          	beq	a5,a4,80001bb8 <_ZN5Riscv16interruptHandlerEv+0xf0>
        else if(intrId == MEM_FREE){
    80001b70:	00200713          	li	a4,2
    80001b74:	06e78c63          	beq	a5,a4,80001bec <_ZN5Riscv16interruptHandlerEv+0x124>
        else if(intrId == THREAD_CREATE){
    80001b78:	01100713          	li	a4,17
    80001b7c:	0ae78263          	beq	a5,a4,80001c20 <_ZN5Riscv16interruptHandlerEv+0x158>
        else if(intrId == THREAD_DISPATCH) {
    80001b80:	01300713          	li	a4,19
    80001b84:	fce794e3          	bne	a5,a4,80001b4c <_ZN5Riscv16interruptHandlerEv+0x84>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001b88:	141027f3          	csrr	a5,sepc
    80001b8c:	fcf43823          	sd	a5,-48(s0)
    return sepc;
    80001b90:	fd043483          	ld	s1,-48(s0)
            uint64 sepc = r_sepc() + 4;
    80001b94:	00448493          	addi	s1,s1,4
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001b98:	100027f3          	csrr	a5,sstatus
    80001b9c:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001ba0:	fc843903          	ld	s2,-56(s0)
            CCB::dispatch();
    80001ba4:	00000097          	auipc	ra,0x0
    80001ba8:	db8080e7          	jalr	-584(ra) # 8000195c <_ZN3CCB8dispatchEv>
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001bac:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001bb0:	14149073          	csrw	sepc,s1
}
    80001bb4:	f99ff06f          	j	80001b4c <_ZN5Riscv16interruptHandlerEv+0x84>
            asm ("mv %0, a1" : "=r" (numBlocks));
    80001bb8:	00058513          	mv	a0,a1
            MemoryAllocator::allocate(numBlocks);
    80001bbc:	00000097          	auipc	ra,0x0
    80001bc0:	0f0080e7          	jalr	240(ra) # 80001cac <_ZN15MemoryAllocator8allocateEm>
            __asm__ volatile("sd a0, 0x50(%0)" : : "r" (backupSP));
    80001bc4:	00004797          	auipc	a5,0x4
    80001bc8:	cd47b783          	ld	a5,-812(a5) # 80005898 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001bcc:	0007b783          	ld	a5,0(a5)
    80001bd0:	04a7b823          	sd	a0,80(a5)
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001bd4:	141027f3          	csrr	a5,sepc
    80001bd8:	faf43823          	sd	a5,-80(s0)
    return sepc;
    80001bdc:	fb043783          	ld	a5,-80(s0)
            w_sepc(r_sepc() + 4);
    80001be0:	00478793          	addi	a5,a5,4
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001be4:	14179073          	csrw	sepc,a5
}
    80001be8:	f65ff06f          	j	80001b4c <_ZN5Riscv16interruptHandlerEv+0x84>
            __asm__ volatile("mv %0, a1" : "=r" (address));
    80001bec:	00058513          	mv	a0,a1
            MemoryAllocator::free(address);
    80001bf0:	00000097          	auipc	ra,0x0
    80001bf4:	254080e7          	jalr	596(ra) # 80001e44 <_ZN15MemoryAllocator4freeEPv>
            __asm__ volatile("sd a0, 0x50(%0)" : : "r" (backupSP));
    80001bf8:	00004797          	auipc	a5,0x4
    80001bfc:	ca07b783          	ld	a5,-864(a5) # 80005898 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001c00:	0007b783          	ld	a5,0(a5)
    80001c04:	04a7b823          	sd	a0,80(a5)
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001c08:	141027f3          	csrr	a5,sepc
    80001c0c:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    80001c10:	fb843783          	ld	a5,-72(s0)
            w_sepc(r_sepc() + 4);
    80001c14:	00478793          	addi	a5,a5,4
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001c18:	14179073          	csrw	sepc,a5
}
    80001c1c:	f31ff06f          	j	80001b4c <_ZN5Riscv16interruptHandlerEv+0x84>
            __asm__ volatile ("mv %0, a1" : "=r" (handle));
    80001c20:	00058493          	mv	s1,a1
            __asm__ volatile ("mv %0, a2" : "=r" (body));
    80001c24:	00060513          	mv	a0,a2
            *handle = CCB::createCoroutine(body);
    80001c28:	00000097          	auipc	ra,0x0
    80001c2c:	c74080e7          	jalr	-908(ra) # 8000189c <_ZN3CCB15createCoroutineEPFvvE>
    80001c30:	00a4b023          	sd	a0,0(s1)
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001c34:	141027f3          	csrr	a5,sepc
    80001c38:	fcf43023          	sd	a5,-64(s0)
    return sepc;
    80001c3c:	fc043783          	ld	a5,-64(s0)
            w_sepc(r_sepc() + 4);
    80001c40:	00478793          	addi	a5,a5,4
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001c44:	14179073          	csrw	sepc,a5
}
    80001c48:	f05ff06f          	j	80001b4c <_ZN5Riscv16interruptHandlerEv+0x84>
        console_handler();
    80001c4c:	00002097          	auipc	ra,0x2
    80001c50:	514080e7          	jalr	1300(ra) # 80004160 <console_handler>
    80001c54:	ef9ff06f          	j	80001b4c <_ZN5Riscv16interruptHandlerEv+0x84>

0000000080001c58 <_ZN15MemoryAllocator4initEv>:

#include "../h/MemoryAllocator.hpp"

BlockHeader* MemoryAllocator::fmem_head = nullptr;

void MemoryAllocator::init() {
    80001c58:	ff010113          	addi	sp,sp,-16
    80001c5c:	00813423          	sd	s0,8(sp)
    80001c60:	01010413          	addi	s0,sp,16
    fmem_head = (BlockHeader*) HEAP_START_ADDR;
    80001c64:	00004797          	auipc	a5,0x4
    80001c68:	c047b783          	ld	a5,-1020(a5) # 80005868 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001c6c:	0007b703          	ld	a4,0(a5)
    80001c70:	00004697          	auipc	a3,0x4
    80001c74:	ca068693          	addi	a3,a3,-864 # 80005910 <_ZN15MemoryAllocator9fmem_headE>
    80001c78:	00e6b023          	sd	a4,0(a3)
    fmem_head->size = (((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR) / MEM_BLOCK_SIZE);
    80001c7c:	00004797          	auipc	a5,0x4
    80001c80:	c147b783          	ld	a5,-1004(a5) # 80005890 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001c84:	0007b783          	ld	a5,0(a5)
    80001c88:	40e787b3          	sub	a5,a5,a4
    80001c8c:	0067d793          	srli	a5,a5,0x6
    80001c90:	00f73023          	sd	a5,0(a4)
    fmem_head->prev = fmem_head->next = nullptr;
    80001c94:	0006b783          	ld	a5,0(a3)
    80001c98:	0007b423          	sd	zero,8(a5)
    80001c9c:	0007b823          	sd	zero,16(a5)
}
    80001ca0:	00813403          	ld	s0,8(sp)
    80001ca4:	01010113          	addi	sp,sp,16
    80001ca8:	00008067          	ret

0000000080001cac <_ZN15MemoryAllocator8allocateEm>:
void *MemoryAllocator::allocate_bytes(size_t size) { return __mem_alloc(size);}
void* MemoryAllocator::allocate(size_t numOfBlocks) { return __mem_alloc(numOfBlocks * MEM_BLOCK_SIZE);}
int MemoryAllocator::free(void* addr) { return __mem_free(addr);}
*/

void* MemoryAllocator::allocate(size_t numOfBlocks) {
    80001cac:	ff010113          	addi	sp,sp,-16
    80001cb0:	00813423          	sd	s0,8(sp)
    80001cb4:	01010413          	addi	s0,sp,16
    80001cb8:	00050713          	mv	a4,a0
    if (fmem_head == nullptr) return nullptr;
    80001cbc:	00004517          	auipc	a0,0x4
    80001cc0:	c5453503          	ld	a0,-940(a0) # 80005910 <_ZN15MemoryAllocator9fmem_headE>
    80001cc4:	08050a63          	beqz	a0,80001d58 <_ZN15MemoryAllocator8allocateEm+0xac>

    BlockHeader* blk = nullptr;
    80001cc8:	00000793          	li	a5,0
    80001ccc:	0140006f          	j	80001ce0 <_ZN15MemoryAllocator8allocateEm+0x34>
    for (BlockHeader* curr = fmem_head; curr; curr = curr->next)
        if ((!blk && curr->size >= numOfBlocks) || (blk && curr->size >= numOfBlocks && blk->size > curr->size)) blk = curr;
    80001cd0:	00053683          	ld	a3,0(a0)
    80001cd4:	00e6ea63          	bltu	a3,a4,80001ce8 <_ZN15MemoryAllocator8allocateEm+0x3c>
    80001cd8:	00050793          	mv	a5,a0
    for (BlockHeader* curr = fmem_head; curr; curr = curr->next)
    80001cdc:	00853503          	ld	a0,8(a0)
    80001ce0:	02050263          	beqz	a0,80001d04 <_ZN15MemoryAllocator8allocateEm+0x58>
        if ((!blk && curr->size >= numOfBlocks) || (blk && curr->size >= numOfBlocks && blk->size > curr->size)) blk = curr;
    80001ce4:	fe0786e3          	beqz	a5,80001cd0 <_ZN15MemoryAllocator8allocateEm+0x24>
    80001ce8:	fe078ae3          	beqz	a5,80001cdc <_ZN15MemoryAllocator8allocateEm+0x30>
    80001cec:	00053683          	ld	a3,0(a0)
    80001cf0:	fee6e6e3          	bltu	a3,a4,80001cdc <_ZN15MemoryAllocator8allocateEm+0x30>
    80001cf4:	0007b603          	ld	a2,0(a5)
    80001cf8:	fec6f2e3          	bgeu	a3,a2,80001cdc <_ZN15MemoryAllocator8allocateEm+0x30>
    80001cfc:	00050793          	mv	a5,a0
    80001d00:	fddff06f          	j	80001cdc <_ZN15MemoryAllocator8allocateEm+0x30>

    if (!blk) return nullptr;
    80001d04:	0a078063          	beqz	a5,80001da4 <_ZN15MemoryAllocator8allocateEm+0xf8>

    size_t remainingNumOfBlocks = blk->size - numOfBlocks;
    80001d08:	0007b683          	ld	a3,0(a5)
    80001d0c:	40e68633          	sub	a2,a3,a4
    if (remainingNumOfBlocks > 0) {
    80001d10:	06e68063          	beq	a3,a4,80001d70 <_ZN15MemoryAllocator8allocateEm+0xc4>
        blk->size = numOfBlocks;
    80001d14:	00e7b023          	sd	a4,0(a5)
        BlockHeader* newBlk = (BlockHeader*)((char*)blk + numOfBlocks*MEM_BLOCK_SIZE);
    80001d18:	00671713          	slli	a4,a4,0x6
    80001d1c:	00e78733          	add	a4,a5,a4

        if (blk->next) blk->next->prev = newBlk;
    80001d20:	0087b683          	ld	a3,8(a5)
    80001d24:	00068463          	beqz	a3,80001d2c <_ZN15MemoryAllocator8allocateEm+0x80>
    80001d28:	00e6b823          	sd	a4,16(a3)
        if (blk->prev) blk->prev->next = newBlk;
    80001d2c:	0107b683          	ld	a3,16(a5)
    80001d30:	02068a63          	beqz	a3,80001d64 <_ZN15MemoryAllocator8allocateEm+0xb8>
    80001d34:	00e6b423          	sd	a4,8(a3)
        else fmem_head = newBlk;

        newBlk->next = blk->next;
    80001d38:	0087b683          	ld	a3,8(a5)
    80001d3c:	00d73423          	sd	a3,8(a4)
        newBlk->prev = blk->prev;
    80001d40:	0107b683          	ld	a3,16(a5)
    80001d44:	00d73823          	sd	a3,16(a4)
        newBlk->size = remainingNumOfBlocks;
    80001d48:	00c73023          	sd	a2,0(a4)
    else {
        if (blk->next) blk->next->prev = blk->prev;
        if (blk->prev) blk->prev->next = blk->next;
        else fmem_head = blk->next;
    }
    blk->next = blk->prev = nullptr;
    80001d4c:	0007b823          	sd	zero,16(a5)
    80001d50:	0007b423          	sd	zero,8(a5)
    return (char*)blk + sizeof(BlockHeader);
    80001d54:	01878513          	addi	a0,a5,24
}
    80001d58:	00813403          	ld	s0,8(sp)
    80001d5c:	01010113          	addi	sp,sp,16
    80001d60:	00008067          	ret
        else fmem_head = newBlk;
    80001d64:	00004697          	auipc	a3,0x4
    80001d68:	bae6b623          	sd	a4,-1108(a3) # 80005910 <_ZN15MemoryAllocator9fmem_headE>
    80001d6c:	fcdff06f          	j	80001d38 <_ZN15MemoryAllocator8allocateEm+0x8c>
        if (blk->next) blk->next->prev = blk->prev;
    80001d70:	0087b703          	ld	a4,8(a5)
    80001d74:	00070663          	beqz	a4,80001d80 <_ZN15MemoryAllocator8allocateEm+0xd4>
    80001d78:	0107b683          	ld	a3,16(a5)
    80001d7c:	00d73823          	sd	a3,16(a4)
        if (blk->prev) blk->prev->next = blk->next;
    80001d80:	0107b703          	ld	a4,16(a5)
    80001d84:	00070863          	beqz	a4,80001d94 <_ZN15MemoryAllocator8allocateEm+0xe8>
    80001d88:	0087b683          	ld	a3,8(a5)
    80001d8c:	00d73423          	sd	a3,8(a4)
    80001d90:	fbdff06f          	j	80001d4c <_ZN15MemoryAllocator8allocateEm+0xa0>
        else fmem_head = blk->next;
    80001d94:	0087b703          	ld	a4,8(a5)
    80001d98:	00004697          	auipc	a3,0x4
    80001d9c:	b6e6bc23          	sd	a4,-1160(a3) # 80005910 <_ZN15MemoryAllocator9fmem_headE>
    80001da0:	fadff06f          	j	80001d4c <_ZN15MemoryAllocator8allocateEm+0xa0>
    if (!blk) return nullptr;
    80001da4:	00078513          	mv	a0,a5
    80001da8:	fb1ff06f          	j	80001d58 <_ZN15MemoryAllocator8allocateEm+0xac>

0000000080001dac <_ZN15MemoryAllocator9allocateBEm>:
void *MemoryAllocator::allocateB(size_t size) {
    80001dac:	ff010113          	addi	sp,sp,-16
    80001db0:	00113423          	sd	ra,8(sp)
    80001db4:	00813023          	sd	s0,0(sp)
    80001db8:	01010413          	addi	s0,sp,16
    uint64 numOfBlocks = (size+sizeof(BlockHeader))/MEM_BLOCK_SIZE + ((size+sizeof(BlockHeader)) % MEM_BLOCK_SIZE > 0 ? 1 : 0);
    80001dbc:	01850513          	addi	a0,a0,24
    80001dc0:	00655793          	srli	a5,a0,0x6
    80001dc4:	03f57513          	andi	a0,a0,63
    80001dc8:	00050463          	beqz	a0,80001dd0 <_ZN15MemoryAllocator9allocateBEm+0x24>
    80001dcc:	00100513          	li	a0,1
    return allocate(numOfBlocks);
    80001dd0:	00a78533          	add	a0,a5,a0
    80001dd4:	00000097          	auipc	ra,0x0
    80001dd8:	ed8080e7          	jalr	-296(ra) # 80001cac <_ZN15MemoryAllocator8allocateEm>
}
    80001ddc:	00813083          	ld	ra,8(sp)
    80001de0:	00013403          	ld	s0,0(sp)
    80001de4:	01010113          	addi	sp,sp,16
    80001de8:	00008067          	ret

0000000080001dec <_ZN15MemoryAllocator9joinUpperEP11BlockHeader>:

    return 0;

}

void MemoryAllocator::joinUpper(BlockHeader * blk) {
    80001dec:	ff010113          	addi	sp,sp,-16
    80001df0:	00813423          	sd	s0,8(sp)
    80001df4:	01010413          	addi	s0,sp,16
    if (!blk || !blk->next) return;
    80001df8:	00050e63          	beqz	a0,80001e14 <_ZN15MemoryAllocator9joinUpperEP11BlockHeader+0x28>
    80001dfc:	00853703          	ld	a4,8(a0)
    80001e00:	00070a63          	beqz	a4,80001e14 <_ZN15MemoryAllocator9joinUpperEP11BlockHeader+0x28>

    if ((char*)blk + blk->size * MEM_BLOCK_SIZE == (char*)blk->next){
    80001e04:	00053783          	ld	a5,0(a0)
    80001e08:	00679793          	slli	a5,a5,0x6
    80001e0c:	00f507b3          	add	a5,a0,a5
    80001e10:	00f70863          	beq	a4,a5,80001e20 <_ZN15MemoryAllocator9joinUpperEP11BlockHeader+0x34>
        BlockHeader* x = blk->next;
        blk->next = x->next;
        if (blk->next) blk->next->prev = blk;
        blk->size += x->size;
    }
    80001e14:	00813403          	ld	s0,8(sp)
    80001e18:	01010113          	addi	sp,sp,16
    80001e1c:	00008067          	ret
        blk->next = x->next;
    80001e20:	00873783          	ld	a5,8(a4)
    80001e24:	00f53423          	sd	a5,8(a0)
        if (blk->next) blk->next->prev = blk;
    80001e28:	00078463          	beqz	a5,80001e30 <_ZN15MemoryAllocator9joinUpperEP11BlockHeader+0x44>
    80001e2c:	00a7b823          	sd	a0,16(a5)
        blk->size += x->size;
    80001e30:	00073703          	ld	a4,0(a4)
    80001e34:	00053783          	ld	a5,0(a0)
    80001e38:	00e787b3          	add	a5,a5,a4
    80001e3c:	00f53023          	sd	a5,0(a0)
    80001e40:	fd5ff06f          	j	80001e14 <_ZN15MemoryAllocator9joinUpperEP11BlockHeader+0x28>

0000000080001e44 <_ZN15MemoryAllocator4freeEPv>:
    if (addr == nullptr) return 0;
    80001e44:	0a050a63          	beqz	a0,80001ef8 <_ZN15MemoryAllocator4freeEPv+0xb4>
int MemoryAllocator::free(void* addr) {
    80001e48:	fe010113          	addi	sp,sp,-32
    80001e4c:	00113c23          	sd	ra,24(sp)
    80001e50:	00813823          	sd	s0,16(sp)
    80001e54:	00913423          	sd	s1,8(sp)
    80001e58:	02010413          	addi	s0,sp,32
    80001e5c:	00050493          	mv	s1,a0
    BlockHeader* newBlk = (BlockHeader*) ((char*)addr - sizeof(BlockHeader));
    80001e60:	fe850513          	addi	a0,a0,-24
    if (fmem_head == nullptr){
    80001e64:	00004797          	auipc	a5,0x4
    80001e68:	aac7b783          	ld	a5,-1364(a5) # 80005910 <_ZN15MemoryAllocator9fmem_headE>
    80001e6c:	04078463          	beqz	a5,80001eb4 <_ZN15MemoryAllocator4freeEPv+0x70>
    else if (newBlk < fmem_head) {
    80001e70:	04f57c63          	bgeu	a0,a5,80001ec8 <_ZN15MemoryAllocator4freeEPv+0x84>
        newBlk->next = fmem_head;
    80001e74:	fef4b823          	sd	a5,-16(s1)
        fmem_head->prev = newBlk;
    80001e78:	00a7b823          	sd	a0,16(a5)
        newBlk->prev = nullptr;
    80001e7c:	fe04bc23          	sd	zero,-8(s1)
        fmem_head = newBlk;
    80001e80:	00004797          	auipc	a5,0x4
    80001e84:	a8a7b823          	sd	a0,-1392(a5) # 80005910 <_ZN15MemoryAllocator9fmem_headE>
    joinUpper(newBlk);
    80001e88:	00000097          	auipc	ra,0x0
    80001e8c:	f64080e7          	jalr	-156(ra) # 80001dec <_ZN15MemoryAllocator9joinUpperEP11BlockHeader>
    joinUpper(newBlk->prev);
    80001e90:	ff84b503          	ld	a0,-8(s1)
    80001e94:	00000097          	auipc	ra,0x0
    80001e98:	f58080e7          	jalr	-168(ra) # 80001dec <_ZN15MemoryAllocator9joinUpperEP11BlockHeader>
}
    80001e9c:	00000513          	li	a0,0
    80001ea0:	01813083          	ld	ra,24(sp)
    80001ea4:	01013403          	ld	s0,16(sp)
    80001ea8:	00813483          	ld	s1,8(sp)
    80001eac:	02010113          	addi	sp,sp,32
    80001eb0:	00008067          	ret
        fmem_head = newBlk;
    80001eb4:	00004797          	auipc	a5,0x4
    80001eb8:	a4a7be23          	sd	a0,-1444(a5) # 80005910 <_ZN15MemoryAllocator9fmem_headE>
        newBlk->next = newBlk->prev = nullptr;
    80001ebc:	fe04bc23          	sd	zero,-8(s1)
    80001ec0:	fe04b823          	sd	zero,-16(s1)
        return 0;
    80001ec4:	fd9ff06f          	j	80001e9c <_ZN15MemoryAllocator4freeEPv+0x58>
        BlockHeader* blk = fmem_head, *prev = nullptr;
    80001ec8:	00000713          	li	a4,0
        for (; blk && blk < newBlk; prev = blk, blk = blk->next);
    80001ecc:	00078a63          	beqz	a5,80001ee0 <_ZN15MemoryAllocator4freeEPv+0x9c>
    80001ed0:	00a7f863          	bgeu	a5,a0,80001ee0 <_ZN15MemoryAllocator4freeEPv+0x9c>
    80001ed4:	00078713          	mv	a4,a5
    80001ed8:	0087b783          	ld	a5,8(a5)
    80001edc:	ff1ff06f          	j	80001ecc <_ZN15MemoryAllocator4freeEPv+0x88>
        newBlk->next = blk;
    80001ee0:	fef4b823          	sd	a5,-16(s1)
        if (blk) blk->prev = newBlk;
    80001ee4:	00078463          	beqz	a5,80001eec <_ZN15MemoryAllocator4freeEPv+0xa8>
    80001ee8:	00a7b823          	sd	a0,16(a5)
        newBlk->prev = prev;
    80001eec:	fee4bc23          	sd	a4,-8(s1)
        prev->next = newBlk;
    80001ef0:	00a73423          	sd	a0,8(a4)
    80001ef4:	f95ff06f          	j	80001e88 <_ZN15MemoryAllocator4freeEPv+0x44>
}
    80001ef8:	00000513          	li	a0,0
    80001efc:	00008067          	ret

0000000080001f00 <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/Riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80001f00:	fd010113          	addi	sp,sp,-48
    80001f04:	02113423          	sd	ra,40(sp)
    80001f08:	02813023          	sd	s0,32(sp)
    80001f0c:	00913c23          	sd	s1,24(sp)
    80001f10:	01213823          	sd	s2,16(sp)
    80001f14:	03010413          	addi	s0,sp,48
    80001f18:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001f1c:	100027f3          	csrr	a5,sstatus
    80001f20:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80001f24:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001f28:	00200793          	li	a5,2
    80001f2c:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    80001f30:	0004c503          	lbu	a0,0(s1)
    80001f34:	00050a63          	beqz	a0,80001f48 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80001f38:	00002097          	auipc	ra,0x2
    80001f3c:	1b4080e7          	jalr	436(ra) # 800040ec <__putc>
        string++;
    80001f40:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001f44:	fedff06f          	j	80001f30 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001f48:	0009091b          	sext.w	s2,s2
    80001f4c:	00297913          	andi	s2,s2,2
    80001f50:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001f54:	10092073          	csrs	sstatus,s2
}
    80001f58:	02813083          	ld	ra,40(sp)
    80001f5c:	02013403          	ld	s0,32(sp)
    80001f60:	01813483          	ld	s1,24(sp)
    80001f64:	01013903          	ld	s2,16(sp)
    80001f68:	03010113          	addi	sp,sp,48
    80001f6c:	00008067          	ret

0000000080001f70 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80001f70:	fc010113          	addi	sp,sp,-64
    80001f74:	02113c23          	sd	ra,56(sp)
    80001f78:	02813823          	sd	s0,48(sp)
    80001f7c:	02913423          	sd	s1,40(sp)
    80001f80:	03213023          	sd	s2,32(sp)
    80001f84:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001f88:	100027f3          	csrr	a5,sstatus
    80001f8c:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001f90:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001f94:	00200793          	li	a5,2
    80001f98:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80001f9c:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80001fa0:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80001fa4:	00a00613          	li	a2,10
    80001fa8:	02c5773b          	remuw	a4,a0,a2
    80001fac:	02071693          	slli	a3,a4,0x20
    80001fb0:	0206d693          	srli	a3,a3,0x20
    80001fb4:	00003717          	auipc	a4,0x3
    80001fb8:	12470713          	addi	a4,a4,292 # 800050d8 <_ZZ12printIntegermE6digits>
    80001fbc:	00d70733          	add	a4,a4,a3
    80001fc0:	00074703          	lbu	a4,0(a4)
    80001fc4:	fe040693          	addi	a3,s0,-32
    80001fc8:	009687b3          	add	a5,a3,s1
    80001fcc:	0014849b          	addiw	s1,s1,1
    80001fd0:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80001fd4:	0005071b          	sext.w	a4,a0
    80001fd8:	02c5553b          	divuw	a0,a0,a2
    80001fdc:	00900793          	li	a5,9
    80001fe0:	fce7e2e3          	bltu	a5,a4,80001fa4 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80001fe4:	fff4849b          	addiw	s1,s1,-1
    80001fe8:	0004ce63          	bltz	s1,80002004 <_Z12printIntegerm+0x94>
    80001fec:	fe040793          	addi	a5,s0,-32
    80001ff0:	009787b3          	add	a5,a5,s1
    80001ff4:	ff07c503          	lbu	a0,-16(a5)
    80001ff8:	00002097          	auipc	ra,0x2
    80001ffc:	0f4080e7          	jalr	244(ra) # 800040ec <__putc>
    80002000:	fe5ff06f          	j	80001fe4 <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002004:	0009091b          	sext.w	s2,s2
    80002008:	00297913          	andi	s2,s2,2
    8000200c:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002010:	10092073          	csrs	sstatus,s2
    80002014:	03813083          	ld	ra,56(sp)
    80002018:	03013403          	ld	s0,48(sp)
    8000201c:	02813483          	ld	s1,40(sp)
    80002020:	02013903          	ld	s2,32(sp)
    80002024:	04010113          	addi	sp,sp,64
    80002028:	00008067          	ret

000000008000202c <start>:
    8000202c:	ff010113          	addi	sp,sp,-16
    80002030:	00813423          	sd	s0,8(sp)
    80002034:	01010413          	addi	s0,sp,16
    80002038:	300027f3          	csrr	a5,mstatus
    8000203c:	ffffe737          	lui	a4,0xffffe
    80002040:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7c7f>
    80002044:	00e7f7b3          	and	a5,a5,a4
    80002048:	00001737          	lui	a4,0x1
    8000204c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002050:	00e7e7b3          	or	a5,a5,a4
    80002054:	30079073          	csrw	mstatus,a5
    80002058:	00000797          	auipc	a5,0x0
    8000205c:	16078793          	addi	a5,a5,352 # 800021b8 <system_main>
    80002060:	34179073          	csrw	mepc,a5
    80002064:	00000793          	li	a5,0
    80002068:	18079073          	csrw	satp,a5
    8000206c:	000107b7          	lui	a5,0x10
    80002070:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002074:	30279073          	csrw	medeleg,a5
    80002078:	30379073          	csrw	mideleg,a5
    8000207c:	104027f3          	csrr	a5,sie
    80002080:	2227e793          	ori	a5,a5,546
    80002084:	10479073          	csrw	sie,a5
    80002088:	fff00793          	li	a5,-1
    8000208c:	00a7d793          	srli	a5,a5,0xa
    80002090:	3b079073          	csrw	pmpaddr0,a5
    80002094:	00f00793          	li	a5,15
    80002098:	3a079073          	csrw	pmpcfg0,a5
    8000209c:	f14027f3          	csrr	a5,mhartid
    800020a0:	0200c737          	lui	a4,0x200c
    800020a4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800020a8:	0007869b          	sext.w	a3,a5
    800020ac:	00269713          	slli	a4,a3,0x2
    800020b0:	000f4637          	lui	a2,0xf4
    800020b4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800020b8:	00d70733          	add	a4,a4,a3
    800020bc:	0037979b          	slliw	a5,a5,0x3
    800020c0:	020046b7          	lui	a3,0x2004
    800020c4:	00d787b3          	add	a5,a5,a3
    800020c8:	00c585b3          	add	a1,a1,a2
    800020cc:	00371693          	slli	a3,a4,0x3
    800020d0:	00004717          	auipc	a4,0x4
    800020d4:	85070713          	addi	a4,a4,-1968 # 80005920 <timer_scratch>
    800020d8:	00b7b023          	sd	a1,0(a5)
    800020dc:	00d70733          	add	a4,a4,a3
    800020e0:	00f73c23          	sd	a5,24(a4)
    800020e4:	02c73023          	sd	a2,32(a4)
    800020e8:	34071073          	csrw	mscratch,a4
    800020ec:	00000797          	auipc	a5,0x0
    800020f0:	6e478793          	addi	a5,a5,1764 # 800027d0 <timervec>
    800020f4:	30579073          	csrw	mtvec,a5
    800020f8:	300027f3          	csrr	a5,mstatus
    800020fc:	0087e793          	ori	a5,a5,8
    80002100:	30079073          	csrw	mstatus,a5
    80002104:	304027f3          	csrr	a5,mie
    80002108:	0807e793          	ori	a5,a5,128
    8000210c:	30479073          	csrw	mie,a5
    80002110:	f14027f3          	csrr	a5,mhartid
    80002114:	0007879b          	sext.w	a5,a5
    80002118:	00078213          	mv	tp,a5
    8000211c:	30200073          	mret
    80002120:	00813403          	ld	s0,8(sp)
    80002124:	01010113          	addi	sp,sp,16
    80002128:	00008067          	ret

000000008000212c <timerinit>:
    8000212c:	ff010113          	addi	sp,sp,-16
    80002130:	00813423          	sd	s0,8(sp)
    80002134:	01010413          	addi	s0,sp,16
    80002138:	f14027f3          	csrr	a5,mhartid
    8000213c:	0200c737          	lui	a4,0x200c
    80002140:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002144:	0007869b          	sext.w	a3,a5
    80002148:	00269713          	slli	a4,a3,0x2
    8000214c:	000f4637          	lui	a2,0xf4
    80002150:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002154:	00d70733          	add	a4,a4,a3
    80002158:	0037979b          	slliw	a5,a5,0x3
    8000215c:	020046b7          	lui	a3,0x2004
    80002160:	00d787b3          	add	a5,a5,a3
    80002164:	00c585b3          	add	a1,a1,a2
    80002168:	00371693          	slli	a3,a4,0x3
    8000216c:	00003717          	auipc	a4,0x3
    80002170:	7b470713          	addi	a4,a4,1972 # 80005920 <timer_scratch>
    80002174:	00b7b023          	sd	a1,0(a5)
    80002178:	00d70733          	add	a4,a4,a3
    8000217c:	00f73c23          	sd	a5,24(a4)
    80002180:	02c73023          	sd	a2,32(a4)
    80002184:	34071073          	csrw	mscratch,a4
    80002188:	00000797          	auipc	a5,0x0
    8000218c:	64878793          	addi	a5,a5,1608 # 800027d0 <timervec>
    80002190:	30579073          	csrw	mtvec,a5
    80002194:	300027f3          	csrr	a5,mstatus
    80002198:	0087e793          	ori	a5,a5,8
    8000219c:	30079073          	csrw	mstatus,a5
    800021a0:	304027f3          	csrr	a5,mie
    800021a4:	0807e793          	ori	a5,a5,128
    800021a8:	30479073          	csrw	mie,a5
    800021ac:	00813403          	ld	s0,8(sp)
    800021b0:	01010113          	addi	sp,sp,16
    800021b4:	00008067          	ret

00000000800021b8 <system_main>:
    800021b8:	fe010113          	addi	sp,sp,-32
    800021bc:	00813823          	sd	s0,16(sp)
    800021c0:	00913423          	sd	s1,8(sp)
    800021c4:	00113c23          	sd	ra,24(sp)
    800021c8:	02010413          	addi	s0,sp,32
    800021cc:	00000097          	auipc	ra,0x0
    800021d0:	0c4080e7          	jalr	196(ra) # 80002290 <cpuid>
    800021d4:	00003497          	auipc	s1,0x3
    800021d8:	6ec48493          	addi	s1,s1,1772 # 800058c0 <started>
    800021dc:	02050263          	beqz	a0,80002200 <system_main+0x48>
    800021e0:	0004a783          	lw	a5,0(s1)
    800021e4:	0007879b          	sext.w	a5,a5
    800021e8:	fe078ce3          	beqz	a5,800021e0 <system_main+0x28>
    800021ec:	0ff0000f          	fence
    800021f0:	00003517          	auipc	a0,0x3
    800021f4:	f2850513          	addi	a0,a0,-216 # 80005118 <_ZZ12printIntegermE6digits+0x40>
    800021f8:	00001097          	auipc	ra,0x1
    800021fc:	a74080e7          	jalr	-1420(ra) # 80002c6c <panic>
    80002200:	00001097          	auipc	ra,0x1
    80002204:	9c8080e7          	jalr	-1592(ra) # 80002bc8 <consoleinit>
    80002208:	00001097          	auipc	ra,0x1
    8000220c:	154080e7          	jalr	340(ra) # 8000335c <printfinit>
    80002210:	00003517          	auipc	a0,0x3
    80002214:	eb850513          	addi	a0,a0,-328 # 800050c8 <CONSOLE_STATUS+0xb8>
    80002218:	00001097          	auipc	ra,0x1
    8000221c:	ab0080e7          	jalr	-1360(ra) # 80002cc8 <__printf>
    80002220:	00003517          	auipc	a0,0x3
    80002224:	ec850513          	addi	a0,a0,-312 # 800050e8 <_ZZ12printIntegermE6digits+0x10>
    80002228:	00001097          	auipc	ra,0x1
    8000222c:	aa0080e7          	jalr	-1376(ra) # 80002cc8 <__printf>
    80002230:	00003517          	auipc	a0,0x3
    80002234:	e9850513          	addi	a0,a0,-360 # 800050c8 <CONSOLE_STATUS+0xb8>
    80002238:	00001097          	auipc	ra,0x1
    8000223c:	a90080e7          	jalr	-1392(ra) # 80002cc8 <__printf>
    80002240:	00001097          	auipc	ra,0x1
    80002244:	4a8080e7          	jalr	1192(ra) # 800036e8 <kinit>
    80002248:	00000097          	auipc	ra,0x0
    8000224c:	148080e7          	jalr	328(ra) # 80002390 <trapinit>
    80002250:	00000097          	auipc	ra,0x0
    80002254:	16c080e7          	jalr	364(ra) # 800023bc <trapinithart>
    80002258:	00000097          	auipc	ra,0x0
    8000225c:	5b8080e7          	jalr	1464(ra) # 80002810 <plicinit>
    80002260:	00000097          	auipc	ra,0x0
    80002264:	5d8080e7          	jalr	1496(ra) # 80002838 <plicinithart>
    80002268:	00000097          	auipc	ra,0x0
    8000226c:	078080e7          	jalr	120(ra) # 800022e0 <userinit>
    80002270:	0ff0000f          	fence
    80002274:	00100793          	li	a5,1
    80002278:	00003517          	auipc	a0,0x3
    8000227c:	e8850513          	addi	a0,a0,-376 # 80005100 <_ZZ12printIntegermE6digits+0x28>
    80002280:	00f4a023          	sw	a5,0(s1)
    80002284:	00001097          	auipc	ra,0x1
    80002288:	a44080e7          	jalr	-1468(ra) # 80002cc8 <__printf>
    8000228c:	0000006f          	j	8000228c <system_main+0xd4>

0000000080002290 <cpuid>:
    80002290:	ff010113          	addi	sp,sp,-16
    80002294:	00813423          	sd	s0,8(sp)
    80002298:	01010413          	addi	s0,sp,16
    8000229c:	00020513          	mv	a0,tp
    800022a0:	00813403          	ld	s0,8(sp)
    800022a4:	0005051b          	sext.w	a0,a0
    800022a8:	01010113          	addi	sp,sp,16
    800022ac:	00008067          	ret

00000000800022b0 <mycpu>:
    800022b0:	ff010113          	addi	sp,sp,-16
    800022b4:	00813423          	sd	s0,8(sp)
    800022b8:	01010413          	addi	s0,sp,16
    800022bc:	00020793          	mv	a5,tp
    800022c0:	00813403          	ld	s0,8(sp)
    800022c4:	0007879b          	sext.w	a5,a5
    800022c8:	00779793          	slli	a5,a5,0x7
    800022cc:	00004517          	auipc	a0,0x4
    800022d0:	68450513          	addi	a0,a0,1668 # 80006950 <cpus>
    800022d4:	00f50533          	add	a0,a0,a5
    800022d8:	01010113          	addi	sp,sp,16
    800022dc:	00008067          	ret

00000000800022e0 <userinit>:
    800022e0:	ff010113          	addi	sp,sp,-16
    800022e4:	00813423          	sd	s0,8(sp)
    800022e8:	01010413          	addi	s0,sp,16
    800022ec:	00813403          	ld	s0,8(sp)
    800022f0:	01010113          	addi	sp,sp,16
    800022f4:	fffff317          	auipc	t1,0xfffff
    800022f8:	42c30067          	jr	1068(t1) # 80001720 <main>

00000000800022fc <either_copyout>:
    800022fc:	ff010113          	addi	sp,sp,-16
    80002300:	00813023          	sd	s0,0(sp)
    80002304:	00113423          	sd	ra,8(sp)
    80002308:	01010413          	addi	s0,sp,16
    8000230c:	02051663          	bnez	a0,80002338 <either_copyout+0x3c>
    80002310:	00058513          	mv	a0,a1
    80002314:	00060593          	mv	a1,a2
    80002318:	0006861b          	sext.w	a2,a3
    8000231c:	00002097          	auipc	ra,0x2
    80002320:	c58080e7          	jalr	-936(ra) # 80003f74 <__memmove>
    80002324:	00813083          	ld	ra,8(sp)
    80002328:	00013403          	ld	s0,0(sp)
    8000232c:	00000513          	li	a0,0
    80002330:	01010113          	addi	sp,sp,16
    80002334:	00008067          	ret
    80002338:	00003517          	auipc	a0,0x3
    8000233c:	e0850513          	addi	a0,a0,-504 # 80005140 <_ZZ12printIntegermE6digits+0x68>
    80002340:	00001097          	auipc	ra,0x1
    80002344:	92c080e7          	jalr	-1748(ra) # 80002c6c <panic>

0000000080002348 <either_copyin>:
    80002348:	ff010113          	addi	sp,sp,-16
    8000234c:	00813023          	sd	s0,0(sp)
    80002350:	00113423          	sd	ra,8(sp)
    80002354:	01010413          	addi	s0,sp,16
    80002358:	02059463          	bnez	a1,80002380 <either_copyin+0x38>
    8000235c:	00060593          	mv	a1,a2
    80002360:	0006861b          	sext.w	a2,a3
    80002364:	00002097          	auipc	ra,0x2
    80002368:	c10080e7          	jalr	-1008(ra) # 80003f74 <__memmove>
    8000236c:	00813083          	ld	ra,8(sp)
    80002370:	00013403          	ld	s0,0(sp)
    80002374:	00000513          	li	a0,0
    80002378:	01010113          	addi	sp,sp,16
    8000237c:	00008067          	ret
    80002380:	00003517          	auipc	a0,0x3
    80002384:	de850513          	addi	a0,a0,-536 # 80005168 <_ZZ12printIntegermE6digits+0x90>
    80002388:	00001097          	auipc	ra,0x1
    8000238c:	8e4080e7          	jalr	-1820(ra) # 80002c6c <panic>

0000000080002390 <trapinit>:
    80002390:	ff010113          	addi	sp,sp,-16
    80002394:	00813423          	sd	s0,8(sp)
    80002398:	01010413          	addi	s0,sp,16
    8000239c:	00813403          	ld	s0,8(sp)
    800023a0:	00003597          	auipc	a1,0x3
    800023a4:	df058593          	addi	a1,a1,-528 # 80005190 <_ZZ12printIntegermE6digits+0xb8>
    800023a8:	00004517          	auipc	a0,0x4
    800023ac:	62850513          	addi	a0,a0,1576 # 800069d0 <tickslock>
    800023b0:	01010113          	addi	sp,sp,16
    800023b4:	00001317          	auipc	t1,0x1
    800023b8:	5c430067          	jr	1476(t1) # 80003978 <initlock>

00000000800023bc <trapinithart>:
    800023bc:	ff010113          	addi	sp,sp,-16
    800023c0:	00813423          	sd	s0,8(sp)
    800023c4:	01010413          	addi	s0,sp,16
    800023c8:	00000797          	auipc	a5,0x0
    800023cc:	2f878793          	addi	a5,a5,760 # 800026c0 <kernelvec>
    800023d0:	10579073          	csrw	stvec,a5
    800023d4:	00813403          	ld	s0,8(sp)
    800023d8:	01010113          	addi	sp,sp,16
    800023dc:	00008067          	ret

00000000800023e0 <usertrap>:
    800023e0:	ff010113          	addi	sp,sp,-16
    800023e4:	00813423          	sd	s0,8(sp)
    800023e8:	01010413          	addi	s0,sp,16
    800023ec:	00813403          	ld	s0,8(sp)
    800023f0:	01010113          	addi	sp,sp,16
    800023f4:	00008067          	ret

00000000800023f8 <usertrapret>:
    800023f8:	ff010113          	addi	sp,sp,-16
    800023fc:	00813423          	sd	s0,8(sp)
    80002400:	01010413          	addi	s0,sp,16
    80002404:	00813403          	ld	s0,8(sp)
    80002408:	01010113          	addi	sp,sp,16
    8000240c:	00008067          	ret

0000000080002410 <kerneltrap>:
    80002410:	fe010113          	addi	sp,sp,-32
    80002414:	00813823          	sd	s0,16(sp)
    80002418:	00113c23          	sd	ra,24(sp)
    8000241c:	00913423          	sd	s1,8(sp)
    80002420:	02010413          	addi	s0,sp,32
    80002424:	142025f3          	csrr	a1,scause
    80002428:	100027f3          	csrr	a5,sstatus
    8000242c:	0027f793          	andi	a5,a5,2
    80002430:	10079c63          	bnez	a5,80002548 <kerneltrap+0x138>
    80002434:	142027f3          	csrr	a5,scause
    80002438:	0207ce63          	bltz	a5,80002474 <kerneltrap+0x64>
    8000243c:	00003517          	auipc	a0,0x3
    80002440:	d9c50513          	addi	a0,a0,-612 # 800051d8 <_ZZ12printIntegermE6digits+0x100>
    80002444:	00001097          	auipc	ra,0x1
    80002448:	884080e7          	jalr	-1916(ra) # 80002cc8 <__printf>
    8000244c:	141025f3          	csrr	a1,sepc
    80002450:	14302673          	csrr	a2,stval
    80002454:	00003517          	auipc	a0,0x3
    80002458:	d9450513          	addi	a0,a0,-620 # 800051e8 <_ZZ12printIntegermE6digits+0x110>
    8000245c:	00001097          	auipc	ra,0x1
    80002460:	86c080e7          	jalr	-1940(ra) # 80002cc8 <__printf>
    80002464:	00003517          	auipc	a0,0x3
    80002468:	d9c50513          	addi	a0,a0,-612 # 80005200 <_ZZ12printIntegermE6digits+0x128>
    8000246c:	00001097          	auipc	ra,0x1
    80002470:	800080e7          	jalr	-2048(ra) # 80002c6c <panic>
    80002474:	0ff7f713          	andi	a4,a5,255
    80002478:	00900693          	li	a3,9
    8000247c:	04d70063          	beq	a4,a3,800024bc <kerneltrap+0xac>
    80002480:	fff00713          	li	a4,-1
    80002484:	03f71713          	slli	a4,a4,0x3f
    80002488:	00170713          	addi	a4,a4,1
    8000248c:	fae798e3          	bne	a5,a4,8000243c <kerneltrap+0x2c>
    80002490:	00000097          	auipc	ra,0x0
    80002494:	e00080e7          	jalr	-512(ra) # 80002290 <cpuid>
    80002498:	06050663          	beqz	a0,80002504 <kerneltrap+0xf4>
    8000249c:	144027f3          	csrr	a5,sip
    800024a0:	ffd7f793          	andi	a5,a5,-3
    800024a4:	14479073          	csrw	sip,a5
    800024a8:	01813083          	ld	ra,24(sp)
    800024ac:	01013403          	ld	s0,16(sp)
    800024b0:	00813483          	ld	s1,8(sp)
    800024b4:	02010113          	addi	sp,sp,32
    800024b8:	00008067          	ret
    800024bc:	00000097          	auipc	ra,0x0
    800024c0:	3c8080e7          	jalr	968(ra) # 80002884 <plic_claim>
    800024c4:	00a00793          	li	a5,10
    800024c8:	00050493          	mv	s1,a0
    800024cc:	06f50863          	beq	a0,a5,8000253c <kerneltrap+0x12c>
    800024d0:	fc050ce3          	beqz	a0,800024a8 <kerneltrap+0x98>
    800024d4:	00050593          	mv	a1,a0
    800024d8:	00003517          	auipc	a0,0x3
    800024dc:	ce050513          	addi	a0,a0,-800 # 800051b8 <_ZZ12printIntegermE6digits+0xe0>
    800024e0:	00000097          	auipc	ra,0x0
    800024e4:	7e8080e7          	jalr	2024(ra) # 80002cc8 <__printf>
    800024e8:	01013403          	ld	s0,16(sp)
    800024ec:	01813083          	ld	ra,24(sp)
    800024f0:	00048513          	mv	a0,s1
    800024f4:	00813483          	ld	s1,8(sp)
    800024f8:	02010113          	addi	sp,sp,32
    800024fc:	00000317          	auipc	t1,0x0
    80002500:	3c030067          	jr	960(t1) # 800028bc <plic_complete>
    80002504:	00004517          	auipc	a0,0x4
    80002508:	4cc50513          	addi	a0,a0,1228 # 800069d0 <tickslock>
    8000250c:	00001097          	auipc	ra,0x1
    80002510:	490080e7          	jalr	1168(ra) # 8000399c <acquire>
    80002514:	00003717          	auipc	a4,0x3
    80002518:	3b070713          	addi	a4,a4,944 # 800058c4 <ticks>
    8000251c:	00072783          	lw	a5,0(a4)
    80002520:	00004517          	auipc	a0,0x4
    80002524:	4b050513          	addi	a0,a0,1200 # 800069d0 <tickslock>
    80002528:	0017879b          	addiw	a5,a5,1
    8000252c:	00f72023          	sw	a5,0(a4)
    80002530:	00001097          	auipc	ra,0x1
    80002534:	538080e7          	jalr	1336(ra) # 80003a68 <release>
    80002538:	f65ff06f          	j	8000249c <kerneltrap+0x8c>
    8000253c:	00001097          	auipc	ra,0x1
    80002540:	094080e7          	jalr	148(ra) # 800035d0 <uartintr>
    80002544:	fa5ff06f          	j	800024e8 <kerneltrap+0xd8>
    80002548:	00003517          	auipc	a0,0x3
    8000254c:	c5050513          	addi	a0,a0,-944 # 80005198 <_ZZ12printIntegermE6digits+0xc0>
    80002550:	00000097          	auipc	ra,0x0
    80002554:	71c080e7          	jalr	1820(ra) # 80002c6c <panic>

0000000080002558 <clockintr>:
    80002558:	fe010113          	addi	sp,sp,-32
    8000255c:	00813823          	sd	s0,16(sp)
    80002560:	00913423          	sd	s1,8(sp)
    80002564:	00113c23          	sd	ra,24(sp)
    80002568:	02010413          	addi	s0,sp,32
    8000256c:	00004497          	auipc	s1,0x4
    80002570:	46448493          	addi	s1,s1,1124 # 800069d0 <tickslock>
    80002574:	00048513          	mv	a0,s1
    80002578:	00001097          	auipc	ra,0x1
    8000257c:	424080e7          	jalr	1060(ra) # 8000399c <acquire>
    80002580:	00003717          	auipc	a4,0x3
    80002584:	34470713          	addi	a4,a4,836 # 800058c4 <ticks>
    80002588:	00072783          	lw	a5,0(a4)
    8000258c:	01013403          	ld	s0,16(sp)
    80002590:	01813083          	ld	ra,24(sp)
    80002594:	00048513          	mv	a0,s1
    80002598:	0017879b          	addiw	a5,a5,1
    8000259c:	00813483          	ld	s1,8(sp)
    800025a0:	00f72023          	sw	a5,0(a4)
    800025a4:	02010113          	addi	sp,sp,32
    800025a8:	00001317          	auipc	t1,0x1
    800025ac:	4c030067          	jr	1216(t1) # 80003a68 <release>

00000000800025b0 <devintr>:
    800025b0:	142027f3          	csrr	a5,scause
    800025b4:	00000513          	li	a0,0
    800025b8:	0007c463          	bltz	a5,800025c0 <devintr+0x10>
    800025bc:	00008067          	ret
    800025c0:	fe010113          	addi	sp,sp,-32
    800025c4:	00813823          	sd	s0,16(sp)
    800025c8:	00113c23          	sd	ra,24(sp)
    800025cc:	00913423          	sd	s1,8(sp)
    800025d0:	02010413          	addi	s0,sp,32
    800025d4:	0ff7f713          	andi	a4,a5,255
    800025d8:	00900693          	li	a3,9
    800025dc:	04d70c63          	beq	a4,a3,80002634 <devintr+0x84>
    800025e0:	fff00713          	li	a4,-1
    800025e4:	03f71713          	slli	a4,a4,0x3f
    800025e8:	00170713          	addi	a4,a4,1
    800025ec:	00e78c63          	beq	a5,a4,80002604 <devintr+0x54>
    800025f0:	01813083          	ld	ra,24(sp)
    800025f4:	01013403          	ld	s0,16(sp)
    800025f8:	00813483          	ld	s1,8(sp)
    800025fc:	02010113          	addi	sp,sp,32
    80002600:	00008067          	ret
    80002604:	00000097          	auipc	ra,0x0
    80002608:	c8c080e7          	jalr	-884(ra) # 80002290 <cpuid>
    8000260c:	06050663          	beqz	a0,80002678 <devintr+0xc8>
    80002610:	144027f3          	csrr	a5,sip
    80002614:	ffd7f793          	andi	a5,a5,-3
    80002618:	14479073          	csrw	sip,a5
    8000261c:	01813083          	ld	ra,24(sp)
    80002620:	01013403          	ld	s0,16(sp)
    80002624:	00813483          	ld	s1,8(sp)
    80002628:	00200513          	li	a0,2
    8000262c:	02010113          	addi	sp,sp,32
    80002630:	00008067          	ret
    80002634:	00000097          	auipc	ra,0x0
    80002638:	250080e7          	jalr	592(ra) # 80002884 <plic_claim>
    8000263c:	00a00793          	li	a5,10
    80002640:	00050493          	mv	s1,a0
    80002644:	06f50663          	beq	a0,a5,800026b0 <devintr+0x100>
    80002648:	00100513          	li	a0,1
    8000264c:	fa0482e3          	beqz	s1,800025f0 <devintr+0x40>
    80002650:	00048593          	mv	a1,s1
    80002654:	00003517          	auipc	a0,0x3
    80002658:	b6450513          	addi	a0,a0,-1180 # 800051b8 <_ZZ12printIntegermE6digits+0xe0>
    8000265c:	00000097          	auipc	ra,0x0
    80002660:	66c080e7          	jalr	1644(ra) # 80002cc8 <__printf>
    80002664:	00048513          	mv	a0,s1
    80002668:	00000097          	auipc	ra,0x0
    8000266c:	254080e7          	jalr	596(ra) # 800028bc <plic_complete>
    80002670:	00100513          	li	a0,1
    80002674:	f7dff06f          	j	800025f0 <devintr+0x40>
    80002678:	00004517          	auipc	a0,0x4
    8000267c:	35850513          	addi	a0,a0,856 # 800069d0 <tickslock>
    80002680:	00001097          	auipc	ra,0x1
    80002684:	31c080e7          	jalr	796(ra) # 8000399c <acquire>
    80002688:	00003717          	auipc	a4,0x3
    8000268c:	23c70713          	addi	a4,a4,572 # 800058c4 <ticks>
    80002690:	00072783          	lw	a5,0(a4)
    80002694:	00004517          	auipc	a0,0x4
    80002698:	33c50513          	addi	a0,a0,828 # 800069d0 <tickslock>
    8000269c:	0017879b          	addiw	a5,a5,1
    800026a0:	00f72023          	sw	a5,0(a4)
    800026a4:	00001097          	auipc	ra,0x1
    800026a8:	3c4080e7          	jalr	964(ra) # 80003a68 <release>
    800026ac:	f65ff06f          	j	80002610 <devintr+0x60>
    800026b0:	00001097          	auipc	ra,0x1
    800026b4:	f20080e7          	jalr	-224(ra) # 800035d0 <uartintr>
    800026b8:	fadff06f          	j	80002664 <devintr+0xb4>
    800026bc:	0000                	unimp
	...

00000000800026c0 <kernelvec>:
    800026c0:	f0010113          	addi	sp,sp,-256
    800026c4:	00113023          	sd	ra,0(sp)
    800026c8:	00213423          	sd	sp,8(sp)
    800026cc:	00313823          	sd	gp,16(sp)
    800026d0:	00413c23          	sd	tp,24(sp)
    800026d4:	02513023          	sd	t0,32(sp)
    800026d8:	02613423          	sd	t1,40(sp)
    800026dc:	02713823          	sd	t2,48(sp)
    800026e0:	02813c23          	sd	s0,56(sp)
    800026e4:	04913023          	sd	s1,64(sp)
    800026e8:	04a13423          	sd	a0,72(sp)
    800026ec:	04b13823          	sd	a1,80(sp)
    800026f0:	04c13c23          	sd	a2,88(sp)
    800026f4:	06d13023          	sd	a3,96(sp)
    800026f8:	06e13423          	sd	a4,104(sp)
    800026fc:	06f13823          	sd	a5,112(sp)
    80002700:	07013c23          	sd	a6,120(sp)
    80002704:	09113023          	sd	a7,128(sp)
    80002708:	09213423          	sd	s2,136(sp)
    8000270c:	09313823          	sd	s3,144(sp)
    80002710:	09413c23          	sd	s4,152(sp)
    80002714:	0b513023          	sd	s5,160(sp)
    80002718:	0b613423          	sd	s6,168(sp)
    8000271c:	0b713823          	sd	s7,176(sp)
    80002720:	0b813c23          	sd	s8,184(sp)
    80002724:	0d913023          	sd	s9,192(sp)
    80002728:	0da13423          	sd	s10,200(sp)
    8000272c:	0db13823          	sd	s11,208(sp)
    80002730:	0dc13c23          	sd	t3,216(sp)
    80002734:	0fd13023          	sd	t4,224(sp)
    80002738:	0fe13423          	sd	t5,232(sp)
    8000273c:	0ff13823          	sd	t6,240(sp)
    80002740:	cd1ff0ef          	jal	ra,80002410 <kerneltrap>
    80002744:	00013083          	ld	ra,0(sp)
    80002748:	00813103          	ld	sp,8(sp)
    8000274c:	01013183          	ld	gp,16(sp)
    80002750:	02013283          	ld	t0,32(sp)
    80002754:	02813303          	ld	t1,40(sp)
    80002758:	03013383          	ld	t2,48(sp)
    8000275c:	03813403          	ld	s0,56(sp)
    80002760:	04013483          	ld	s1,64(sp)
    80002764:	04813503          	ld	a0,72(sp)
    80002768:	05013583          	ld	a1,80(sp)
    8000276c:	05813603          	ld	a2,88(sp)
    80002770:	06013683          	ld	a3,96(sp)
    80002774:	06813703          	ld	a4,104(sp)
    80002778:	07013783          	ld	a5,112(sp)
    8000277c:	07813803          	ld	a6,120(sp)
    80002780:	08013883          	ld	a7,128(sp)
    80002784:	08813903          	ld	s2,136(sp)
    80002788:	09013983          	ld	s3,144(sp)
    8000278c:	09813a03          	ld	s4,152(sp)
    80002790:	0a013a83          	ld	s5,160(sp)
    80002794:	0a813b03          	ld	s6,168(sp)
    80002798:	0b013b83          	ld	s7,176(sp)
    8000279c:	0b813c03          	ld	s8,184(sp)
    800027a0:	0c013c83          	ld	s9,192(sp)
    800027a4:	0c813d03          	ld	s10,200(sp)
    800027a8:	0d013d83          	ld	s11,208(sp)
    800027ac:	0d813e03          	ld	t3,216(sp)
    800027b0:	0e013e83          	ld	t4,224(sp)
    800027b4:	0e813f03          	ld	t5,232(sp)
    800027b8:	0f013f83          	ld	t6,240(sp)
    800027bc:	10010113          	addi	sp,sp,256
    800027c0:	10200073          	sret
    800027c4:	00000013          	nop
    800027c8:	00000013          	nop
    800027cc:	00000013          	nop

00000000800027d0 <timervec>:
    800027d0:	34051573          	csrrw	a0,mscratch,a0
    800027d4:	00b53023          	sd	a1,0(a0)
    800027d8:	00c53423          	sd	a2,8(a0)
    800027dc:	00d53823          	sd	a3,16(a0)
    800027e0:	01853583          	ld	a1,24(a0)
    800027e4:	02053603          	ld	a2,32(a0)
    800027e8:	0005b683          	ld	a3,0(a1)
    800027ec:	00c686b3          	add	a3,a3,a2
    800027f0:	00d5b023          	sd	a3,0(a1)
    800027f4:	00200593          	li	a1,2
    800027f8:	14459073          	csrw	sip,a1
    800027fc:	01053683          	ld	a3,16(a0)
    80002800:	00853603          	ld	a2,8(a0)
    80002804:	00053583          	ld	a1,0(a0)
    80002808:	34051573          	csrrw	a0,mscratch,a0
    8000280c:	30200073          	mret

0000000080002810 <plicinit>:
    80002810:	ff010113          	addi	sp,sp,-16
    80002814:	00813423          	sd	s0,8(sp)
    80002818:	01010413          	addi	s0,sp,16
    8000281c:	00813403          	ld	s0,8(sp)
    80002820:	0c0007b7          	lui	a5,0xc000
    80002824:	00100713          	li	a4,1
    80002828:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000282c:	00e7a223          	sw	a4,4(a5)
    80002830:	01010113          	addi	sp,sp,16
    80002834:	00008067          	ret

0000000080002838 <plicinithart>:
    80002838:	ff010113          	addi	sp,sp,-16
    8000283c:	00813023          	sd	s0,0(sp)
    80002840:	00113423          	sd	ra,8(sp)
    80002844:	01010413          	addi	s0,sp,16
    80002848:	00000097          	auipc	ra,0x0
    8000284c:	a48080e7          	jalr	-1464(ra) # 80002290 <cpuid>
    80002850:	0085171b          	slliw	a4,a0,0x8
    80002854:	0c0027b7          	lui	a5,0xc002
    80002858:	00e787b3          	add	a5,a5,a4
    8000285c:	40200713          	li	a4,1026
    80002860:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002864:	00813083          	ld	ra,8(sp)
    80002868:	00013403          	ld	s0,0(sp)
    8000286c:	00d5151b          	slliw	a0,a0,0xd
    80002870:	0c2017b7          	lui	a5,0xc201
    80002874:	00a78533          	add	a0,a5,a0
    80002878:	00052023          	sw	zero,0(a0)
    8000287c:	01010113          	addi	sp,sp,16
    80002880:	00008067          	ret

0000000080002884 <plic_claim>:
    80002884:	ff010113          	addi	sp,sp,-16
    80002888:	00813023          	sd	s0,0(sp)
    8000288c:	00113423          	sd	ra,8(sp)
    80002890:	01010413          	addi	s0,sp,16
    80002894:	00000097          	auipc	ra,0x0
    80002898:	9fc080e7          	jalr	-1540(ra) # 80002290 <cpuid>
    8000289c:	00813083          	ld	ra,8(sp)
    800028a0:	00013403          	ld	s0,0(sp)
    800028a4:	00d5151b          	slliw	a0,a0,0xd
    800028a8:	0c2017b7          	lui	a5,0xc201
    800028ac:	00a78533          	add	a0,a5,a0
    800028b0:	00452503          	lw	a0,4(a0)
    800028b4:	01010113          	addi	sp,sp,16
    800028b8:	00008067          	ret

00000000800028bc <plic_complete>:
    800028bc:	fe010113          	addi	sp,sp,-32
    800028c0:	00813823          	sd	s0,16(sp)
    800028c4:	00913423          	sd	s1,8(sp)
    800028c8:	00113c23          	sd	ra,24(sp)
    800028cc:	02010413          	addi	s0,sp,32
    800028d0:	00050493          	mv	s1,a0
    800028d4:	00000097          	auipc	ra,0x0
    800028d8:	9bc080e7          	jalr	-1604(ra) # 80002290 <cpuid>
    800028dc:	01813083          	ld	ra,24(sp)
    800028e0:	01013403          	ld	s0,16(sp)
    800028e4:	00d5179b          	slliw	a5,a0,0xd
    800028e8:	0c201737          	lui	a4,0xc201
    800028ec:	00f707b3          	add	a5,a4,a5
    800028f0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800028f4:	00813483          	ld	s1,8(sp)
    800028f8:	02010113          	addi	sp,sp,32
    800028fc:	00008067          	ret

0000000080002900 <consolewrite>:
    80002900:	fb010113          	addi	sp,sp,-80
    80002904:	04813023          	sd	s0,64(sp)
    80002908:	04113423          	sd	ra,72(sp)
    8000290c:	02913c23          	sd	s1,56(sp)
    80002910:	03213823          	sd	s2,48(sp)
    80002914:	03313423          	sd	s3,40(sp)
    80002918:	03413023          	sd	s4,32(sp)
    8000291c:	01513c23          	sd	s5,24(sp)
    80002920:	05010413          	addi	s0,sp,80
    80002924:	06c05c63          	blez	a2,8000299c <consolewrite+0x9c>
    80002928:	00060993          	mv	s3,a2
    8000292c:	00050a13          	mv	s4,a0
    80002930:	00058493          	mv	s1,a1
    80002934:	00000913          	li	s2,0
    80002938:	fff00a93          	li	s5,-1
    8000293c:	01c0006f          	j	80002958 <consolewrite+0x58>
    80002940:	fbf44503          	lbu	a0,-65(s0)
    80002944:	0019091b          	addiw	s2,s2,1
    80002948:	00148493          	addi	s1,s1,1
    8000294c:	00001097          	auipc	ra,0x1
    80002950:	a9c080e7          	jalr	-1380(ra) # 800033e8 <uartputc>
    80002954:	03298063          	beq	s3,s2,80002974 <consolewrite+0x74>
    80002958:	00048613          	mv	a2,s1
    8000295c:	00100693          	li	a3,1
    80002960:	000a0593          	mv	a1,s4
    80002964:	fbf40513          	addi	a0,s0,-65
    80002968:	00000097          	auipc	ra,0x0
    8000296c:	9e0080e7          	jalr	-1568(ra) # 80002348 <either_copyin>
    80002970:	fd5518e3          	bne	a0,s5,80002940 <consolewrite+0x40>
    80002974:	04813083          	ld	ra,72(sp)
    80002978:	04013403          	ld	s0,64(sp)
    8000297c:	03813483          	ld	s1,56(sp)
    80002980:	02813983          	ld	s3,40(sp)
    80002984:	02013a03          	ld	s4,32(sp)
    80002988:	01813a83          	ld	s5,24(sp)
    8000298c:	00090513          	mv	a0,s2
    80002990:	03013903          	ld	s2,48(sp)
    80002994:	05010113          	addi	sp,sp,80
    80002998:	00008067          	ret
    8000299c:	00000913          	li	s2,0
    800029a0:	fd5ff06f          	j	80002974 <consolewrite+0x74>

00000000800029a4 <consoleread>:
    800029a4:	f9010113          	addi	sp,sp,-112
    800029a8:	06813023          	sd	s0,96(sp)
    800029ac:	04913c23          	sd	s1,88(sp)
    800029b0:	05213823          	sd	s2,80(sp)
    800029b4:	05313423          	sd	s3,72(sp)
    800029b8:	05413023          	sd	s4,64(sp)
    800029bc:	03513c23          	sd	s5,56(sp)
    800029c0:	03613823          	sd	s6,48(sp)
    800029c4:	03713423          	sd	s7,40(sp)
    800029c8:	03813023          	sd	s8,32(sp)
    800029cc:	06113423          	sd	ra,104(sp)
    800029d0:	01913c23          	sd	s9,24(sp)
    800029d4:	07010413          	addi	s0,sp,112
    800029d8:	00060b93          	mv	s7,a2
    800029dc:	00050913          	mv	s2,a0
    800029e0:	00058c13          	mv	s8,a1
    800029e4:	00060b1b          	sext.w	s6,a2
    800029e8:	00004497          	auipc	s1,0x4
    800029ec:	01048493          	addi	s1,s1,16 # 800069f8 <cons>
    800029f0:	00400993          	li	s3,4
    800029f4:	fff00a13          	li	s4,-1
    800029f8:	00a00a93          	li	s5,10
    800029fc:	05705e63          	blez	s7,80002a58 <consoleread+0xb4>
    80002a00:	09c4a703          	lw	a4,156(s1)
    80002a04:	0984a783          	lw	a5,152(s1)
    80002a08:	0007071b          	sext.w	a4,a4
    80002a0c:	08e78463          	beq	a5,a4,80002a94 <consoleread+0xf0>
    80002a10:	07f7f713          	andi	a4,a5,127
    80002a14:	00e48733          	add	a4,s1,a4
    80002a18:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80002a1c:	0017869b          	addiw	a3,a5,1
    80002a20:	08d4ac23          	sw	a3,152(s1)
    80002a24:	00070c9b          	sext.w	s9,a4
    80002a28:	0b370663          	beq	a4,s3,80002ad4 <consoleread+0x130>
    80002a2c:	00100693          	li	a3,1
    80002a30:	f9f40613          	addi	a2,s0,-97
    80002a34:	000c0593          	mv	a1,s8
    80002a38:	00090513          	mv	a0,s2
    80002a3c:	f8e40fa3          	sb	a4,-97(s0)
    80002a40:	00000097          	auipc	ra,0x0
    80002a44:	8bc080e7          	jalr	-1860(ra) # 800022fc <either_copyout>
    80002a48:	01450863          	beq	a0,s4,80002a58 <consoleread+0xb4>
    80002a4c:	001c0c13          	addi	s8,s8,1
    80002a50:	fffb8b9b          	addiw	s7,s7,-1
    80002a54:	fb5c94e3          	bne	s9,s5,800029fc <consoleread+0x58>
    80002a58:	000b851b          	sext.w	a0,s7
    80002a5c:	06813083          	ld	ra,104(sp)
    80002a60:	06013403          	ld	s0,96(sp)
    80002a64:	05813483          	ld	s1,88(sp)
    80002a68:	05013903          	ld	s2,80(sp)
    80002a6c:	04813983          	ld	s3,72(sp)
    80002a70:	04013a03          	ld	s4,64(sp)
    80002a74:	03813a83          	ld	s5,56(sp)
    80002a78:	02813b83          	ld	s7,40(sp)
    80002a7c:	02013c03          	ld	s8,32(sp)
    80002a80:	01813c83          	ld	s9,24(sp)
    80002a84:	40ab053b          	subw	a0,s6,a0
    80002a88:	03013b03          	ld	s6,48(sp)
    80002a8c:	07010113          	addi	sp,sp,112
    80002a90:	00008067          	ret
    80002a94:	00001097          	auipc	ra,0x1
    80002a98:	1d8080e7          	jalr	472(ra) # 80003c6c <push_on>
    80002a9c:	0984a703          	lw	a4,152(s1)
    80002aa0:	09c4a783          	lw	a5,156(s1)
    80002aa4:	0007879b          	sext.w	a5,a5
    80002aa8:	fef70ce3          	beq	a4,a5,80002aa0 <consoleread+0xfc>
    80002aac:	00001097          	auipc	ra,0x1
    80002ab0:	234080e7          	jalr	564(ra) # 80003ce0 <pop_on>
    80002ab4:	0984a783          	lw	a5,152(s1)
    80002ab8:	07f7f713          	andi	a4,a5,127
    80002abc:	00e48733          	add	a4,s1,a4
    80002ac0:	01874703          	lbu	a4,24(a4)
    80002ac4:	0017869b          	addiw	a3,a5,1
    80002ac8:	08d4ac23          	sw	a3,152(s1)
    80002acc:	00070c9b          	sext.w	s9,a4
    80002ad0:	f5371ee3          	bne	a4,s3,80002a2c <consoleread+0x88>
    80002ad4:	000b851b          	sext.w	a0,s7
    80002ad8:	f96bf2e3          	bgeu	s7,s6,80002a5c <consoleread+0xb8>
    80002adc:	08f4ac23          	sw	a5,152(s1)
    80002ae0:	f7dff06f          	j	80002a5c <consoleread+0xb8>

0000000080002ae4 <consputc>:
    80002ae4:	10000793          	li	a5,256
    80002ae8:	00f50663          	beq	a0,a5,80002af4 <consputc+0x10>
    80002aec:	00001317          	auipc	t1,0x1
    80002af0:	9f430067          	jr	-1548(t1) # 800034e0 <uartputc_sync>
    80002af4:	ff010113          	addi	sp,sp,-16
    80002af8:	00113423          	sd	ra,8(sp)
    80002afc:	00813023          	sd	s0,0(sp)
    80002b00:	01010413          	addi	s0,sp,16
    80002b04:	00800513          	li	a0,8
    80002b08:	00001097          	auipc	ra,0x1
    80002b0c:	9d8080e7          	jalr	-1576(ra) # 800034e0 <uartputc_sync>
    80002b10:	02000513          	li	a0,32
    80002b14:	00001097          	auipc	ra,0x1
    80002b18:	9cc080e7          	jalr	-1588(ra) # 800034e0 <uartputc_sync>
    80002b1c:	00013403          	ld	s0,0(sp)
    80002b20:	00813083          	ld	ra,8(sp)
    80002b24:	00800513          	li	a0,8
    80002b28:	01010113          	addi	sp,sp,16
    80002b2c:	00001317          	auipc	t1,0x1
    80002b30:	9b430067          	jr	-1612(t1) # 800034e0 <uartputc_sync>

0000000080002b34 <consoleintr>:
    80002b34:	fe010113          	addi	sp,sp,-32
    80002b38:	00813823          	sd	s0,16(sp)
    80002b3c:	00913423          	sd	s1,8(sp)
    80002b40:	01213023          	sd	s2,0(sp)
    80002b44:	00113c23          	sd	ra,24(sp)
    80002b48:	02010413          	addi	s0,sp,32
    80002b4c:	00004917          	auipc	s2,0x4
    80002b50:	eac90913          	addi	s2,s2,-340 # 800069f8 <cons>
    80002b54:	00050493          	mv	s1,a0
    80002b58:	00090513          	mv	a0,s2
    80002b5c:	00001097          	auipc	ra,0x1
    80002b60:	e40080e7          	jalr	-448(ra) # 8000399c <acquire>
    80002b64:	02048c63          	beqz	s1,80002b9c <consoleintr+0x68>
    80002b68:	0a092783          	lw	a5,160(s2)
    80002b6c:	09892703          	lw	a4,152(s2)
    80002b70:	07f00693          	li	a3,127
    80002b74:	40e7873b          	subw	a4,a5,a4
    80002b78:	02e6e263          	bltu	a3,a4,80002b9c <consoleintr+0x68>
    80002b7c:	00d00713          	li	a4,13
    80002b80:	04e48063          	beq	s1,a4,80002bc0 <consoleintr+0x8c>
    80002b84:	07f7f713          	andi	a4,a5,127
    80002b88:	00e90733          	add	a4,s2,a4
    80002b8c:	0017879b          	addiw	a5,a5,1
    80002b90:	0af92023          	sw	a5,160(s2)
    80002b94:	00970c23          	sb	s1,24(a4)
    80002b98:	08f92e23          	sw	a5,156(s2)
    80002b9c:	01013403          	ld	s0,16(sp)
    80002ba0:	01813083          	ld	ra,24(sp)
    80002ba4:	00813483          	ld	s1,8(sp)
    80002ba8:	00013903          	ld	s2,0(sp)
    80002bac:	00004517          	auipc	a0,0x4
    80002bb0:	e4c50513          	addi	a0,a0,-436 # 800069f8 <cons>
    80002bb4:	02010113          	addi	sp,sp,32
    80002bb8:	00001317          	auipc	t1,0x1
    80002bbc:	eb030067          	jr	-336(t1) # 80003a68 <release>
    80002bc0:	00a00493          	li	s1,10
    80002bc4:	fc1ff06f          	j	80002b84 <consoleintr+0x50>

0000000080002bc8 <consoleinit>:
    80002bc8:	fe010113          	addi	sp,sp,-32
    80002bcc:	00113c23          	sd	ra,24(sp)
    80002bd0:	00813823          	sd	s0,16(sp)
    80002bd4:	00913423          	sd	s1,8(sp)
    80002bd8:	02010413          	addi	s0,sp,32
    80002bdc:	00004497          	auipc	s1,0x4
    80002be0:	e1c48493          	addi	s1,s1,-484 # 800069f8 <cons>
    80002be4:	00048513          	mv	a0,s1
    80002be8:	00002597          	auipc	a1,0x2
    80002bec:	62858593          	addi	a1,a1,1576 # 80005210 <_ZZ12printIntegermE6digits+0x138>
    80002bf0:	00001097          	auipc	ra,0x1
    80002bf4:	d88080e7          	jalr	-632(ra) # 80003978 <initlock>
    80002bf8:	00000097          	auipc	ra,0x0
    80002bfc:	7ac080e7          	jalr	1964(ra) # 800033a4 <uartinit>
    80002c00:	01813083          	ld	ra,24(sp)
    80002c04:	01013403          	ld	s0,16(sp)
    80002c08:	00000797          	auipc	a5,0x0
    80002c0c:	d9c78793          	addi	a5,a5,-612 # 800029a4 <consoleread>
    80002c10:	0af4bc23          	sd	a5,184(s1)
    80002c14:	00000797          	auipc	a5,0x0
    80002c18:	cec78793          	addi	a5,a5,-788 # 80002900 <consolewrite>
    80002c1c:	0cf4b023          	sd	a5,192(s1)
    80002c20:	00813483          	ld	s1,8(sp)
    80002c24:	02010113          	addi	sp,sp,32
    80002c28:	00008067          	ret

0000000080002c2c <console_read>:
    80002c2c:	ff010113          	addi	sp,sp,-16
    80002c30:	00813423          	sd	s0,8(sp)
    80002c34:	01010413          	addi	s0,sp,16
    80002c38:	00813403          	ld	s0,8(sp)
    80002c3c:	00004317          	auipc	t1,0x4
    80002c40:	e7433303          	ld	t1,-396(t1) # 80006ab0 <devsw+0x10>
    80002c44:	01010113          	addi	sp,sp,16
    80002c48:	00030067          	jr	t1

0000000080002c4c <console_write>:
    80002c4c:	ff010113          	addi	sp,sp,-16
    80002c50:	00813423          	sd	s0,8(sp)
    80002c54:	01010413          	addi	s0,sp,16
    80002c58:	00813403          	ld	s0,8(sp)
    80002c5c:	00004317          	auipc	t1,0x4
    80002c60:	e5c33303          	ld	t1,-420(t1) # 80006ab8 <devsw+0x18>
    80002c64:	01010113          	addi	sp,sp,16
    80002c68:	00030067          	jr	t1

0000000080002c6c <panic>:
    80002c6c:	fe010113          	addi	sp,sp,-32
    80002c70:	00113c23          	sd	ra,24(sp)
    80002c74:	00813823          	sd	s0,16(sp)
    80002c78:	00913423          	sd	s1,8(sp)
    80002c7c:	02010413          	addi	s0,sp,32
    80002c80:	00050493          	mv	s1,a0
    80002c84:	00002517          	auipc	a0,0x2
    80002c88:	59450513          	addi	a0,a0,1428 # 80005218 <_ZZ12printIntegermE6digits+0x140>
    80002c8c:	00004797          	auipc	a5,0x4
    80002c90:	ec07a623          	sw	zero,-308(a5) # 80006b58 <pr+0x18>
    80002c94:	00000097          	auipc	ra,0x0
    80002c98:	034080e7          	jalr	52(ra) # 80002cc8 <__printf>
    80002c9c:	00048513          	mv	a0,s1
    80002ca0:	00000097          	auipc	ra,0x0
    80002ca4:	028080e7          	jalr	40(ra) # 80002cc8 <__printf>
    80002ca8:	00002517          	auipc	a0,0x2
    80002cac:	42050513          	addi	a0,a0,1056 # 800050c8 <CONSOLE_STATUS+0xb8>
    80002cb0:	00000097          	auipc	ra,0x0
    80002cb4:	018080e7          	jalr	24(ra) # 80002cc8 <__printf>
    80002cb8:	00100793          	li	a5,1
    80002cbc:	00003717          	auipc	a4,0x3
    80002cc0:	c0f72623          	sw	a5,-1012(a4) # 800058c8 <panicked>
    80002cc4:	0000006f          	j	80002cc4 <panic+0x58>

0000000080002cc8 <__printf>:
    80002cc8:	f3010113          	addi	sp,sp,-208
    80002ccc:	08813023          	sd	s0,128(sp)
    80002cd0:	07313423          	sd	s3,104(sp)
    80002cd4:	09010413          	addi	s0,sp,144
    80002cd8:	05813023          	sd	s8,64(sp)
    80002cdc:	08113423          	sd	ra,136(sp)
    80002ce0:	06913c23          	sd	s1,120(sp)
    80002ce4:	07213823          	sd	s2,112(sp)
    80002ce8:	07413023          	sd	s4,96(sp)
    80002cec:	05513c23          	sd	s5,88(sp)
    80002cf0:	05613823          	sd	s6,80(sp)
    80002cf4:	05713423          	sd	s7,72(sp)
    80002cf8:	03913c23          	sd	s9,56(sp)
    80002cfc:	03a13823          	sd	s10,48(sp)
    80002d00:	03b13423          	sd	s11,40(sp)
    80002d04:	00004317          	auipc	t1,0x4
    80002d08:	e3c30313          	addi	t1,t1,-452 # 80006b40 <pr>
    80002d0c:	01832c03          	lw	s8,24(t1)
    80002d10:	00b43423          	sd	a1,8(s0)
    80002d14:	00c43823          	sd	a2,16(s0)
    80002d18:	00d43c23          	sd	a3,24(s0)
    80002d1c:	02e43023          	sd	a4,32(s0)
    80002d20:	02f43423          	sd	a5,40(s0)
    80002d24:	03043823          	sd	a6,48(s0)
    80002d28:	03143c23          	sd	a7,56(s0)
    80002d2c:	00050993          	mv	s3,a0
    80002d30:	4a0c1663          	bnez	s8,800031dc <__printf+0x514>
    80002d34:	60098c63          	beqz	s3,8000334c <__printf+0x684>
    80002d38:	0009c503          	lbu	a0,0(s3)
    80002d3c:	00840793          	addi	a5,s0,8
    80002d40:	f6f43c23          	sd	a5,-136(s0)
    80002d44:	00000493          	li	s1,0
    80002d48:	22050063          	beqz	a0,80002f68 <__printf+0x2a0>
    80002d4c:	00002a37          	lui	s4,0x2
    80002d50:	00018ab7          	lui	s5,0x18
    80002d54:	000f4b37          	lui	s6,0xf4
    80002d58:	00989bb7          	lui	s7,0x989
    80002d5c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002d60:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002d64:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002d68:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002d6c:	00148c9b          	addiw	s9,s1,1
    80002d70:	02500793          	li	a5,37
    80002d74:	01998933          	add	s2,s3,s9
    80002d78:	38f51263          	bne	a0,a5,800030fc <__printf+0x434>
    80002d7c:	00094783          	lbu	a5,0(s2)
    80002d80:	00078c9b          	sext.w	s9,a5
    80002d84:	1e078263          	beqz	a5,80002f68 <__printf+0x2a0>
    80002d88:	0024849b          	addiw	s1,s1,2
    80002d8c:	07000713          	li	a4,112
    80002d90:	00998933          	add	s2,s3,s1
    80002d94:	38e78a63          	beq	a5,a4,80003128 <__printf+0x460>
    80002d98:	20f76863          	bltu	a4,a5,80002fa8 <__printf+0x2e0>
    80002d9c:	42a78863          	beq	a5,a0,800031cc <__printf+0x504>
    80002da0:	06400713          	li	a4,100
    80002da4:	40e79663          	bne	a5,a4,800031b0 <__printf+0x4e8>
    80002da8:	f7843783          	ld	a5,-136(s0)
    80002dac:	0007a603          	lw	a2,0(a5)
    80002db0:	00878793          	addi	a5,a5,8
    80002db4:	f6f43c23          	sd	a5,-136(s0)
    80002db8:	42064a63          	bltz	a2,800031ec <__printf+0x524>
    80002dbc:	00a00713          	li	a4,10
    80002dc0:	02e677bb          	remuw	a5,a2,a4
    80002dc4:	00002d97          	auipc	s11,0x2
    80002dc8:	47cd8d93          	addi	s11,s11,1148 # 80005240 <digits>
    80002dcc:	00900593          	li	a1,9
    80002dd0:	0006051b          	sext.w	a0,a2
    80002dd4:	00000c93          	li	s9,0
    80002dd8:	02079793          	slli	a5,a5,0x20
    80002ddc:	0207d793          	srli	a5,a5,0x20
    80002de0:	00fd87b3          	add	a5,s11,a5
    80002de4:	0007c783          	lbu	a5,0(a5)
    80002de8:	02e656bb          	divuw	a3,a2,a4
    80002dec:	f8f40023          	sb	a5,-128(s0)
    80002df0:	14c5d863          	bge	a1,a2,80002f40 <__printf+0x278>
    80002df4:	06300593          	li	a1,99
    80002df8:	00100c93          	li	s9,1
    80002dfc:	02e6f7bb          	remuw	a5,a3,a4
    80002e00:	02079793          	slli	a5,a5,0x20
    80002e04:	0207d793          	srli	a5,a5,0x20
    80002e08:	00fd87b3          	add	a5,s11,a5
    80002e0c:	0007c783          	lbu	a5,0(a5)
    80002e10:	02e6d73b          	divuw	a4,a3,a4
    80002e14:	f8f400a3          	sb	a5,-127(s0)
    80002e18:	12a5f463          	bgeu	a1,a0,80002f40 <__printf+0x278>
    80002e1c:	00a00693          	li	a3,10
    80002e20:	00900593          	li	a1,9
    80002e24:	02d777bb          	remuw	a5,a4,a3
    80002e28:	02079793          	slli	a5,a5,0x20
    80002e2c:	0207d793          	srli	a5,a5,0x20
    80002e30:	00fd87b3          	add	a5,s11,a5
    80002e34:	0007c503          	lbu	a0,0(a5)
    80002e38:	02d757bb          	divuw	a5,a4,a3
    80002e3c:	f8a40123          	sb	a0,-126(s0)
    80002e40:	48e5f263          	bgeu	a1,a4,800032c4 <__printf+0x5fc>
    80002e44:	06300513          	li	a0,99
    80002e48:	02d7f5bb          	remuw	a1,a5,a3
    80002e4c:	02059593          	slli	a1,a1,0x20
    80002e50:	0205d593          	srli	a1,a1,0x20
    80002e54:	00bd85b3          	add	a1,s11,a1
    80002e58:	0005c583          	lbu	a1,0(a1)
    80002e5c:	02d7d7bb          	divuw	a5,a5,a3
    80002e60:	f8b401a3          	sb	a1,-125(s0)
    80002e64:	48e57263          	bgeu	a0,a4,800032e8 <__printf+0x620>
    80002e68:	3e700513          	li	a0,999
    80002e6c:	02d7f5bb          	remuw	a1,a5,a3
    80002e70:	02059593          	slli	a1,a1,0x20
    80002e74:	0205d593          	srli	a1,a1,0x20
    80002e78:	00bd85b3          	add	a1,s11,a1
    80002e7c:	0005c583          	lbu	a1,0(a1)
    80002e80:	02d7d7bb          	divuw	a5,a5,a3
    80002e84:	f8b40223          	sb	a1,-124(s0)
    80002e88:	46e57663          	bgeu	a0,a4,800032f4 <__printf+0x62c>
    80002e8c:	02d7f5bb          	remuw	a1,a5,a3
    80002e90:	02059593          	slli	a1,a1,0x20
    80002e94:	0205d593          	srli	a1,a1,0x20
    80002e98:	00bd85b3          	add	a1,s11,a1
    80002e9c:	0005c583          	lbu	a1,0(a1)
    80002ea0:	02d7d7bb          	divuw	a5,a5,a3
    80002ea4:	f8b402a3          	sb	a1,-123(s0)
    80002ea8:	46ea7863          	bgeu	s4,a4,80003318 <__printf+0x650>
    80002eac:	02d7f5bb          	remuw	a1,a5,a3
    80002eb0:	02059593          	slli	a1,a1,0x20
    80002eb4:	0205d593          	srli	a1,a1,0x20
    80002eb8:	00bd85b3          	add	a1,s11,a1
    80002ebc:	0005c583          	lbu	a1,0(a1)
    80002ec0:	02d7d7bb          	divuw	a5,a5,a3
    80002ec4:	f8b40323          	sb	a1,-122(s0)
    80002ec8:	3eeaf863          	bgeu	s5,a4,800032b8 <__printf+0x5f0>
    80002ecc:	02d7f5bb          	remuw	a1,a5,a3
    80002ed0:	02059593          	slli	a1,a1,0x20
    80002ed4:	0205d593          	srli	a1,a1,0x20
    80002ed8:	00bd85b3          	add	a1,s11,a1
    80002edc:	0005c583          	lbu	a1,0(a1)
    80002ee0:	02d7d7bb          	divuw	a5,a5,a3
    80002ee4:	f8b403a3          	sb	a1,-121(s0)
    80002ee8:	42eb7e63          	bgeu	s6,a4,80003324 <__printf+0x65c>
    80002eec:	02d7f5bb          	remuw	a1,a5,a3
    80002ef0:	02059593          	slli	a1,a1,0x20
    80002ef4:	0205d593          	srli	a1,a1,0x20
    80002ef8:	00bd85b3          	add	a1,s11,a1
    80002efc:	0005c583          	lbu	a1,0(a1)
    80002f00:	02d7d7bb          	divuw	a5,a5,a3
    80002f04:	f8b40423          	sb	a1,-120(s0)
    80002f08:	42ebfc63          	bgeu	s7,a4,80003340 <__printf+0x678>
    80002f0c:	02079793          	slli	a5,a5,0x20
    80002f10:	0207d793          	srli	a5,a5,0x20
    80002f14:	00fd8db3          	add	s11,s11,a5
    80002f18:	000dc703          	lbu	a4,0(s11)
    80002f1c:	00a00793          	li	a5,10
    80002f20:	00900c93          	li	s9,9
    80002f24:	f8e404a3          	sb	a4,-119(s0)
    80002f28:	00065c63          	bgez	a2,80002f40 <__printf+0x278>
    80002f2c:	f9040713          	addi	a4,s0,-112
    80002f30:	00f70733          	add	a4,a4,a5
    80002f34:	02d00693          	li	a3,45
    80002f38:	fed70823          	sb	a3,-16(a4)
    80002f3c:	00078c93          	mv	s9,a5
    80002f40:	f8040793          	addi	a5,s0,-128
    80002f44:	01978cb3          	add	s9,a5,s9
    80002f48:	f7f40d13          	addi	s10,s0,-129
    80002f4c:	000cc503          	lbu	a0,0(s9)
    80002f50:	fffc8c93          	addi	s9,s9,-1
    80002f54:	00000097          	auipc	ra,0x0
    80002f58:	b90080e7          	jalr	-1136(ra) # 80002ae4 <consputc>
    80002f5c:	ffac98e3          	bne	s9,s10,80002f4c <__printf+0x284>
    80002f60:	00094503          	lbu	a0,0(s2)
    80002f64:	e00514e3          	bnez	a0,80002d6c <__printf+0xa4>
    80002f68:	1a0c1663          	bnez	s8,80003114 <__printf+0x44c>
    80002f6c:	08813083          	ld	ra,136(sp)
    80002f70:	08013403          	ld	s0,128(sp)
    80002f74:	07813483          	ld	s1,120(sp)
    80002f78:	07013903          	ld	s2,112(sp)
    80002f7c:	06813983          	ld	s3,104(sp)
    80002f80:	06013a03          	ld	s4,96(sp)
    80002f84:	05813a83          	ld	s5,88(sp)
    80002f88:	05013b03          	ld	s6,80(sp)
    80002f8c:	04813b83          	ld	s7,72(sp)
    80002f90:	04013c03          	ld	s8,64(sp)
    80002f94:	03813c83          	ld	s9,56(sp)
    80002f98:	03013d03          	ld	s10,48(sp)
    80002f9c:	02813d83          	ld	s11,40(sp)
    80002fa0:	0d010113          	addi	sp,sp,208
    80002fa4:	00008067          	ret
    80002fa8:	07300713          	li	a4,115
    80002fac:	1ce78a63          	beq	a5,a4,80003180 <__printf+0x4b8>
    80002fb0:	07800713          	li	a4,120
    80002fb4:	1ee79e63          	bne	a5,a4,800031b0 <__printf+0x4e8>
    80002fb8:	f7843783          	ld	a5,-136(s0)
    80002fbc:	0007a703          	lw	a4,0(a5)
    80002fc0:	00878793          	addi	a5,a5,8
    80002fc4:	f6f43c23          	sd	a5,-136(s0)
    80002fc8:	28074263          	bltz	a4,8000324c <__printf+0x584>
    80002fcc:	00002d97          	auipc	s11,0x2
    80002fd0:	274d8d93          	addi	s11,s11,628 # 80005240 <digits>
    80002fd4:	00f77793          	andi	a5,a4,15
    80002fd8:	00fd87b3          	add	a5,s11,a5
    80002fdc:	0007c683          	lbu	a3,0(a5)
    80002fe0:	00f00613          	li	a2,15
    80002fe4:	0007079b          	sext.w	a5,a4
    80002fe8:	f8d40023          	sb	a3,-128(s0)
    80002fec:	0047559b          	srliw	a1,a4,0x4
    80002ff0:	0047569b          	srliw	a3,a4,0x4
    80002ff4:	00000c93          	li	s9,0
    80002ff8:	0ee65063          	bge	a2,a4,800030d8 <__printf+0x410>
    80002ffc:	00f6f693          	andi	a3,a3,15
    80003000:	00dd86b3          	add	a3,s11,a3
    80003004:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003008:	0087d79b          	srliw	a5,a5,0x8
    8000300c:	00100c93          	li	s9,1
    80003010:	f8d400a3          	sb	a3,-127(s0)
    80003014:	0cb67263          	bgeu	a2,a1,800030d8 <__printf+0x410>
    80003018:	00f7f693          	andi	a3,a5,15
    8000301c:	00dd86b3          	add	a3,s11,a3
    80003020:	0006c583          	lbu	a1,0(a3)
    80003024:	00f00613          	li	a2,15
    80003028:	0047d69b          	srliw	a3,a5,0x4
    8000302c:	f8b40123          	sb	a1,-126(s0)
    80003030:	0047d593          	srli	a1,a5,0x4
    80003034:	28f67e63          	bgeu	a2,a5,800032d0 <__printf+0x608>
    80003038:	00f6f693          	andi	a3,a3,15
    8000303c:	00dd86b3          	add	a3,s11,a3
    80003040:	0006c503          	lbu	a0,0(a3)
    80003044:	0087d813          	srli	a6,a5,0x8
    80003048:	0087d69b          	srliw	a3,a5,0x8
    8000304c:	f8a401a3          	sb	a0,-125(s0)
    80003050:	28b67663          	bgeu	a2,a1,800032dc <__printf+0x614>
    80003054:	00f6f693          	andi	a3,a3,15
    80003058:	00dd86b3          	add	a3,s11,a3
    8000305c:	0006c583          	lbu	a1,0(a3)
    80003060:	00c7d513          	srli	a0,a5,0xc
    80003064:	00c7d69b          	srliw	a3,a5,0xc
    80003068:	f8b40223          	sb	a1,-124(s0)
    8000306c:	29067a63          	bgeu	a2,a6,80003300 <__printf+0x638>
    80003070:	00f6f693          	andi	a3,a3,15
    80003074:	00dd86b3          	add	a3,s11,a3
    80003078:	0006c583          	lbu	a1,0(a3)
    8000307c:	0107d813          	srli	a6,a5,0x10
    80003080:	0107d69b          	srliw	a3,a5,0x10
    80003084:	f8b402a3          	sb	a1,-123(s0)
    80003088:	28a67263          	bgeu	a2,a0,8000330c <__printf+0x644>
    8000308c:	00f6f693          	andi	a3,a3,15
    80003090:	00dd86b3          	add	a3,s11,a3
    80003094:	0006c683          	lbu	a3,0(a3)
    80003098:	0147d79b          	srliw	a5,a5,0x14
    8000309c:	f8d40323          	sb	a3,-122(s0)
    800030a0:	21067663          	bgeu	a2,a6,800032ac <__printf+0x5e4>
    800030a4:	02079793          	slli	a5,a5,0x20
    800030a8:	0207d793          	srli	a5,a5,0x20
    800030ac:	00fd8db3          	add	s11,s11,a5
    800030b0:	000dc683          	lbu	a3,0(s11)
    800030b4:	00800793          	li	a5,8
    800030b8:	00700c93          	li	s9,7
    800030bc:	f8d403a3          	sb	a3,-121(s0)
    800030c0:	00075c63          	bgez	a4,800030d8 <__printf+0x410>
    800030c4:	f9040713          	addi	a4,s0,-112
    800030c8:	00f70733          	add	a4,a4,a5
    800030cc:	02d00693          	li	a3,45
    800030d0:	fed70823          	sb	a3,-16(a4)
    800030d4:	00078c93          	mv	s9,a5
    800030d8:	f8040793          	addi	a5,s0,-128
    800030dc:	01978cb3          	add	s9,a5,s9
    800030e0:	f7f40d13          	addi	s10,s0,-129
    800030e4:	000cc503          	lbu	a0,0(s9)
    800030e8:	fffc8c93          	addi	s9,s9,-1
    800030ec:	00000097          	auipc	ra,0x0
    800030f0:	9f8080e7          	jalr	-1544(ra) # 80002ae4 <consputc>
    800030f4:	ff9d18e3          	bne	s10,s9,800030e4 <__printf+0x41c>
    800030f8:	0100006f          	j	80003108 <__printf+0x440>
    800030fc:	00000097          	auipc	ra,0x0
    80003100:	9e8080e7          	jalr	-1560(ra) # 80002ae4 <consputc>
    80003104:	000c8493          	mv	s1,s9
    80003108:	00094503          	lbu	a0,0(s2)
    8000310c:	c60510e3          	bnez	a0,80002d6c <__printf+0xa4>
    80003110:	e40c0ee3          	beqz	s8,80002f6c <__printf+0x2a4>
    80003114:	00004517          	auipc	a0,0x4
    80003118:	a2c50513          	addi	a0,a0,-1492 # 80006b40 <pr>
    8000311c:	00001097          	auipc	ra,0x1
    80003120:	94c080e7          	jalr	-1716(ra) # 80003a68 <release>
    80003124:	e49ff06f          	j	80002f6c <__printf+0x2a4>
    80003128:	f7843783          	ld	a5,-136(s0)
    8000312c:	03000513          	li	a0,48
    80003130:	01000d13          	li	s10,16
    80003134:	00878713          	addi	a4,a5,8
    80003138:	0007bc83          	ld	s9,0(a5)
    8000313c:	f6e43c23          	sd	a4,-136(s0)
    80003140:	00000097          	auipc	ra,0x0
    80003144:	9a4080e7          	jalr	-1628(ra) # 80002ae4 <consputc>
    80003148:	07800513          	li	a0,120
    8000314c:	00000097          	auipc	ra,0x0
    80003150:	998080e7          	jalr	-1640(ra) # 80002ae4 <consputc>
    80003154:	00002d97          	auipc	s11,0x2
    80003158:	0ecd8d93          	addi	s11,s11,236 # 80005240 <digits>
    8000315c:	03ccd793          	srli	a5,s9,0x3c
    80003160:	00fd87b3          	add	a5,s11,a5
    80003164:	0007c503          	lbu	a0,0(a5)
    80003168:	fffd0d1b          	addiw	s10,s10,-1
    8000316c:	004c9c93          	slli	s9,s9,0x4
    80003170:	00000097          	auipc	ra,0x0
    80003174:	974080e7          	jalr	-1676(ra) # 80002ae4 <consputc>
    80003178:	fe0d12e3          	bnez	s10,8000315c <__printf+0x494>
    8000317c:	f8dff06f          	j	80003108 <__printf+0x440>
    80003180:	f7843783          	ld	a5,-136(s0)
    80003184:	0007bc83          	ld	s9,0(a5)
    80003188:	00878793          	addi	a5,a5,8
    8000318c:	f6f43c23          	sd	a5,-136(s0)
    80003190:	000c9a63          	bnez	s9,800031a4 <__printf+0x4dc>
    80003194:	1080006f          	j	8000329c <__printf+0x5d4>
    80003198:	001c8c93          	addi	s9,s9,1
    8000319c:	00000097          	auipc	ra,0x0
    800031a0:	948080e7          	jalr	-1720(ra) # 80002ae4 <consputc>
    800031a4:	000cc503          	lbu	a0,0(s9)
    800031a8:	fe0518e3          	bnez	a0,80003198 <__printf+0x4d0>
    800031ac:	f5dff06f          	j	80003108 <__printf+0x440>
    800031b0:	02500513          	li	a0,37
    800031b4:	00000097          	auipc	ra,0x0
    800031b8:	930080e7          	jalr	-1744(ra) # 80002ae4 <consputc>
    800031bc:	000c8513          	mv	a0,s9
    800031c0:	00000097          	auipc	ra,0x0
    800031c4:	924080e7          	jalr	-1756(ra) # 80002ae4 <consputc>
    800031c8:	f41ff06f          	j	80003108 <__printf+0x440>
    800031cc:	02500513          	li	a0,37
    800031d0:	00000097          	auipc	ra,0x0
    800031d4:	914080e7          	jalr	-1772(ra) # 80002ae4 <consputc>
    800031d8:	f31ff06f          	j	80003108 <__printf+0x440>
    800031dc:	00030513          	mv	a0,t1
    800031e0:	00000097          	auipc	ra,0x0
    800031e4:	7bc080e7          	jalr	1980(ra) # 8000399c <acquire>
    800031e8:	b4dff06f          	j	80002d34 <__printf+0x6c>
    800031ec:	40c0053b          	negw	a0,a2
    800031f0:	00a00713          	li	a4,10
    800031f4:	02e576bb          	remuw	a3,a0,a4
    800031f8:	00002d97          	auipc	s11,0x2
    800031fc:	048d8d93          	addi	s11,s11,72 # 80005240 <digits>
    80003200:	ff700593          	li	a1,-9
    80003204:	02069693          	slli	a3,a3,0x20
    80003208:	0206d693          	srli	a3,a3,0x20
    8000320c:	00dd86b3          	add	a3,s11,a3
    80003210:	0006c683          	lbu	a3,0(a3)
    80003214:	02e557bb          	divuw	a5,a0,a4
    80003218:	f8d40023          	sb	a3,-128(s0)
    8000321c:	10b65e63          	bge	a2,a1,80003338 <__printf+0x670>
    80003220:	06300593          	li	a1,99
    80003224:	02e7f6bb          	remuw	a3,a5,a4
    80003228:	02069693          	slli	a3,a3,0x20
    8000322c:	0206d693          	srli	a3,a3,0x20
    80003230:	00dd86b3          	add	a3,s11,a3
    80003234:	0006c683          	lbu	a3,0(a3)
    80003238:	02e7d73b          	divuw	a4,a5,a4
    8000323c:	00200793          	li	a5,2
    80003240:	f8d400a3          	sb	a3,-127(s0)
    80003244:	bca5ece3          	bltu	a1,a0,80002e1c <__printf+0x154>
    80003248:	ce5ff06f          	j	80002f2c <__printf+0x264>
    8000324c:	40e007bb          	negw	a5,a4
    80003250:	00002d97          	auipc	s11,0x2
    80003254:	ff0d8d93          	addi	s11,s11,-16 # 80005240 <digits>
    80003258:	00f7f693          	andi	a3,a5,15
    8000325c:	00dd86b3          	add	a3,s11,a3
    80003260:	0006c583          	lbu	a1,0(a3)
    80003264:	ff100613          	li	a2,-15
    80003268:	0047d69b          	srliw	a3,a5,0x4
    8000326c:	f8b40023          	sb	a1,-128(s0)
    80003270:	0047d59b          	srliw	a1,a5,0x4
    80003274:	0ac75e63          	bge	a4,a2,80003330 <__printf+0x668>
    80003278:	00f6f693          	andi	a3,a3,15
    8000327c:	00dd86b3          	add	a3,s11,a3
    80003280:	0006c603          	lbu	a2,0(a3)
    80003284:	00f00693          	li	a3,15
    80003288:	0087d79b          	srliw	a5,a5,0x8
    8000328c:	f8c400a3          	sb	a2,-127(s0)
    80003290:	d8b6e4e3          	bltu	a3,a1,80003018 <__printf+0x350>
    80003294:	00200793          	li	a5,2
    80003298:	e2dff06f          	j	800030c4 <__printf+0x3fc>
    8000329c:	00002c97          	auipc	s9,0x2
    800032a0:	f84c8c93          	addi	s9,s9,-124 # 80005220 <_ZZ12printIntegermE6digits+0x148>
    800032a4:	02800513          	li	a0,40
    800032a8:	ef1ff06f          	j	80003198 <__printf+0x4d0>
    800032ac:	00700793          	li	a5,7
    800032b0:	00600c93          	li	s9,6
    800032b4:	e0dff06f          	j	800030c0 <__printf+0x3f8>
    800032b8:	00700793          	li	a5,7
    800032bc:	00600c93          	li	s9,6
    800032c0:	c69ff06f          	j	80002f28 <__printf+0x260>
    800032c4:	00300793          	li	a5,3
    800032c8:	00200c93          	li	s9,2
    800032cc:	c5dff06f          	j	80002f28 <__printf+0x260>
    800032d0:	00300793          	li	a5,3
    800032d4:	00200c93          	li	s9,2
    800032d8:	de9ff06f          	j	800030c0 <__printf+0x3f8>
    800032dc:	00400793          	li	a5,4
    800032e0:	00300c93          	li	s9,3
    800032e4:	dddff06f          	j	800030c0 <__printf+0x3f8>
    800032e8:	00400793          	li	a5,4
    800032ec:	00300c93          	li	s9,3
    800032f0:	c39ff06f          	j	80002f28 <__printf+0x260>
    800032f4:	00500793          	li	a5,5
    800032f8:	00400c93          	li	s9,4
    800032fc:	c2dff06f          	j	80002f28 <__printf+0x260>
    80003300:	00500793          	li	a5,5
    80003304:	00400c93          	li	s9,4
    80003308:	db9ff06f          	j	800030c0 <__printf+0x3f8>
    8000330c:	00600793          	li	a5,6
    80003310:	00500c93          	li	s9,5
    80003314:	dadff06f          	j	800030c0 <__printf+0x3f8>
    80003318:	00600793          	li	a5,6
    8000331c:	00500c93          	li	s9,5
    80003320:	c09ff06f          	j	80002f28 <__printf+0x260>
    80003324:	00800793          	li	a5,8
    80003328:	00700c93          	li	s9,7
    8000332c:	bfdff06f          	j	80002f28 <__printf+0x260>
    80003330:	00100793          	li	a5,1
    80003334:	d91ff06f          	j	800030c4 <__printf+0x3fc>
    80003338:	00100793          	li	a5,1
    8000333c:	bf1ff06f          	j	80002f2c <__printf+0x264>
    80003340:	00900793          	li	a5,9
    80003344:	00800c93          	li	s9,8
    80003348:	be1ff06f          	j	80002f28 <__printf+0x260>
    8000334c:	00002517          	auipc	a0,0x2
    80003350:	edc50513          	addi	a0,a0,-292 # 80005228 <_ZZ12printIntegermE6digits+0x150>
    80003354:	00000097          	auipc	ra,0x0
    80003358:	918080e7          	jalr	-1768(ra) # 80002c6c <panic>

000000008000335c <printfinit>:
    8000335c:	fe010113          	addi	sp,sp,-32
    80003360:	00813823          	sd	s0,16(sp)
    80003364:	00913423          	sd	s1,8(sp)
    80003368:	00113c23          	sd	ra,24(sp)
    8000336c:	02010413          	addi	s0,sp,32
    80003370:	00003497          	auipc	s1,0x3
    80003374:	7d048493          	addi	s1,s1,2000 # 80006b40 <pr>
    80003378:	00048513          	mv	a0,s1
    8000337c:	00002597          	auipc	a1,0x2
    80003380:	ebc58593          	addi	a1,a1,-324 # 80005238 <_ZZ12printIntegermE6digits+0x160>
    80003384:	00000097          	auipc	ra,0x0
    80003388:	5f4080e7          	jalr	1524(ra) # 80003978 <initlock>
    8000338c:	01813083          	ld	ra,24(sp)
    80003390:	01013403          	ld	s0,16(sp)
    80003394:	0004ac23          	sw	zero,24(s1)
    80003398:	00813483          	ld	s1,8(sp)
    8000339c:	02010113          	addi	sp,sp,32
    800033a0:	00008067          	ret

00000000800033a4 <uartinit>:
    800033a4:	ff010113          	addi	sp,sp,-16
    800033a8:	00813423          	sd	s0,8(sp)
    800033ac:	01010413          	addi	s0,sp,16
    800033b0:	100007b7          	lui	a5,0x10000
    800033b4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800033b8:	f8000713          	li	a4,-128
    800033bc:	00e781a3          	sb	a4,3(a5)
    800033c0:	00300713          	li	a4,3
    800033c4:	00e78023          	sb	a4,0(a5)
    800033c8:	000780a3          	sb	zero,1(a5)
    800033cc:	00e781a3          	sb	a4,3(a5)
    800033d0:	00700693          	li	a3,7
    800033d4:	00d78123          	sb	a3,2(a5)
    800033d8:	00e780a3          	sb	a4,1(a5)
    800033dc:	00813403          	ld	s0,8(sp)
    800033e0:	01010113          	addi	sp,sp,16
    800033e4:	00008067          	ret

00000000800033e8 <uartputc>:
    800033e8:	00002797          	auipc	a5,0x2
    800033ec:	4e07a783          	lw	a5,1248(a5) # 800058c8 <panicked>
    800033f0:	00078463          	beqz	a5,800033f8 <uartputc+0x10>
    800033f4:	0000006f          	j	800033f4 <uartputc+0xc>
    800033f8:	fd010113          	addi	sp,sp,-48
    800033fc:	02813023          	sd	s0,32(sp)
    80003400:	00913c23          	sd	s1,24(sp)
    80003404:	01213823          	sd	s2,16(sp)
    80003408:	01313423          	sd	s3,8(sp)
    8000340c:	02113423          	sd	ra,40(sp)
    80003410:	03010413          	addi	s0,sp,48
    80003414:	00002917          	auipc	s2,0x2
    80003418:	4bc90913          	addi	s2,s2,1212 # 800058d0 <uart_tx_r>
    8000341c:	00093783          	ld	a5,0(s2)
    80003420:	00002497          	auipc	s1,0x2
    80003424:	4b848493          	addi	s1,s1,1208 # 800058d8 <uart_tx_w>
    80003428:	0004b703          	ld	a4,0(s1)
    8000342c:	02078693          	addi	a3,a5,32
    80003430:	00050993          	mv	s3,a0
    80003434:	02e69c63          	bne	a3,a4,8000346c <uartputc+0x84>
    80003438:	00001097          	auipc	ra,0x1
    8000343c:	834080e7          	jalr	-1996(ra) # 80003c6c <push_on>
    80003440:	00093783          	ld	a5,0(s2)
    80003444:	0004b703          	ld	a4,0(s1)
    80003448:	02078793          	addi	a5,a5,32
    8000344c:	00e79463          	bne	a5,a4,80003454 <uartputc+0x6c>
    80003450:	0000006f          	j	80003450 <uartputc+0x68>
    80003454:	00001097          	auipc	ra,0x1
    80003458:	88c080e7          	jalr	-1908(ra) # 80003ce0 <pop_on>
    8000345c:	00093783          	ld	a5,0(s2)
    80003460:	0004b703          	ld	a4,0(s1)
    80003464:	02078693          	addi	a3,a5,32
    80003468:	fce688e3          	beq	a3,a4,80003438 <uartputc+0x50>
    8000346c:	01f77693          	andi	a3,a4,31
    80003470:	00003597          	auipc	a1,0x3
    80003474:	6f058593          	addi	a1,a1,1776 # 80006b60 <uart_tx_buf>
    80003478:	00d586b3          	add	a3,a1,a3
    8000347c:	00170713          	addi	a4,a4,1
    80003480:	01368023          	sb	s3,0(a3)
    80003484:	00e4b023          	sd	a4,0(s1)
    80003488:	10000637          	lui	a2,0x10000
    8000348c:	02f71063          	bne	a4,a5,800034ac <uartputc+0xc4>
    80003490:	0340006f          	j	800034c4 <uartputc+0xdc>
    80003494:	00074703          	lbu	a4,0(a4)
    80003498:	00f93023          	sd	a5,0(s2)
    8000349c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800034a0:	00093783          	ld	a5,0(s2)
    800034a4:	0004b703          	ld	a4,0(s1)
    800034a8:	00f70e63          	beq	a4,a5,800034c4 <uartputc+0xdc>
    800034ac:	00564683          	lbu	a3,5(a2)
    800034b0:	01f7f713          	andi	a4,a5,31
    800034b4:	00e58733          	add	a4,a1,a4
    800034b8:	0206f693          	andi	a3,a3,32
    800034bc:	00178793          	addi	a5,a5,1
    800034c0:	fc069ae3          	bnez	a3,80003494 <uartputc+0xac>
    800034c4:	02813083          	ld	ra,40(sp)
    800034c8:	02013403          	ld	s0,32(sp)
    800034cc:	01813483          	ld	s1,24(sp)
    800034d0:	01013903          	ld	s2,16(sp)
    800034d4:	00813983          	ld	s3,8(sp)
    800034d8:	03010113          	addi	sp,sp,48
    800034dc:	00008067          	ret

00000000800034e0 <uartputc_sync>:
    800034e0:	ff010113          	addi	sp,sp,-16
    800034e4:	00813423          	sd	s0,8(sp)
    800034e8:	01010413          	addi	s0,sp,16
    800034ec:	00002717          	auipc	a4,0x2
    800034f0:	3dc72703          	lw	a4,988(a4) # 800058c8 <panicked>
    800034f4:	02071663          	bnez	a4,80003520 <uartputc_sync+0x40>
    800034f8:	00050793          	mv	a5,a0
    800034fc:	100006b7          	lui	a3,0x10000
    80003500:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003504:	02077713          	andi	a4,a4,32
    80003508:	fe070ce3          	beqz	a4,80003500 <uartputc_sync+0x20>
    8000350c:	0ff7f793          	andi	a5,a5,255
    80003510:	00f68023          	sb	a5,0(a3)
    80003514:	00813403          	ld	s0,8(sp)
    80003518:	01010113          	addi	sp,sp,16
    8000351c:	00008067          	ret
    80003520:	0000006f          	j	80003520 <uartputc_sync+0x40>

0000000080003524 <uartstart>:
    80003524:	ff010113          	addi	sp,sp,-16
    80003528:	00813423          	sd	s0,8(sp)
    8000352c:	01010413          	addi	s0,sp,16
    80003530:	00002617          	auipc	a2,0x2
    80003534:	3a060613          	addi	a2,a2,928 # 800058d0 <uart_tx_r>
    80003538:	00002517          	auipc	a0,0x2
    8000353c:	3a050513          	addi	a0,a0,928 # 800058d8 <uart_tx_w>
    80003540:	00063783          	ld	a5,0(a2)
    80003544:	00053703          	ld	a4,0(a0)
    80003548:	04f70263          	beq	a4,a5,8000358c <uartstart+0x68>
    8000354c:	100005b7          	lui	a1,0x10000
    80003550:	00003817          	auipc	a6,0x3
    80003554:	61080813          	addi	a6,a6,1552 # 80006b60 <uart_tx_buf>
    80003558:	01c0006f          	j	80003574 <uartstart+0x50>
    8000355c:	0006c703          	lbu	a4,0(a3)
    80003560:	00f63023          	sd	a5,0(a2)
    80003564:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003568:	00063783          	ld	a5,0(a2)
    8000356c:	00053703          	ld	a4,0(a0)
    80003570:	00f70e63          	beq	a4,a5,8000358c <uartstart+0x68>
    80003574:	01f7f713          	andi	a4,a5,31
    80003578:	00e806b3          	add	a3,a6,a4
    8000357c:	0055c703          	lbu	a4,5(a1)
    80003580:	00178793          	addi	a5,a5,1
    80003584:	02077713          	andi	a4,a4,32
    80003588:	fc071ae3          	bnez	a4,8000355c <uartstart+0x38>
    8000358c:	00813403          	ld	s0,8(sp)
    80003590:	01010113          	addi	sp,sp,16
    80003594:	00008067          	ret

0000000080003598 <uartgetc>:
    80003598:	ff010113          	addi	sp,sp,-16
    8000359c:	00813423          	sd	s0,8(sp)
    800035a0:	01010413          	addi	s0,sp,16
    800035a4:	10000737          	lui	a4,0x10000
    800035a8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800035ac:	0017f793          	andi	a5,a5,1
    800035b0:	00078c63          	beqz	a5,800035c8 <uartgetc+0x30>
    800035b4:	00074503          	lbu	a0,0(a4)
    800035b8:	0ff57513          	andi	a0,a0,255
    800035bc:	00813403          	ld	s0,8(sp)
    800035c0:	01010113          	addi	sp,sp,16
    800035c4:	00008067          	ret
    800035c8:	fff00513          	li	a0,-1
    800035cc:	ff1ff06f          	j	800035bc <uartgetc+0x24>

00000000800035d0 <uartintr>:
    800035d0:	100007b7          	lui	a5,0x10000
    800035d4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800035d8:	0017f793          	andi	a5,a5,1
    800035dc:	0a078463          	beqz	a5,80003684 <uartintr+0xb4>
    800035e0:	fe010113          	addi	sp,sp,-32
    800035e4:	00813823          	sd	s0,16(sp)
    800035e8:	00913423          	sd	s1,8(sp)
    800035ec:	00113c23          	sd	ra,24(sp)
    800035f0:	02010413          	addi	s0,sp,32
    800035f4:	100004b7          	lui	s1,0x10000
    800035f8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800035fc:	0ff57513          	andi	a0,a0,255
    80003600:	fffff097          	auipc	ra,0xfffff
    80003604:	534080e7          	jalr	1332(ra) # 80002b34 <consoleintr>
    80003608:	0054c783          	lbu	a5,5(s1)
    8000360c:	0017f793          	andi	a5,a5,1
    80003610:	fe0794e3          	bnez	a5,800035f8 <uartintr+0x28>
    80003614:	00002617          	auipc	a2,0x2
    80003618:	2bc60613          	addi	a2,a2,700 # 800058d0 <uart_tx_r>
    8000361c:	00002517          	auipc	a0,0x2
    80003620:	2bc50513          	addi	a0,a0,700 # 800058d8 <uart_tx_w>
    80003624:	00063783          	ld	a5,0(a2)
    80003628:	00053703          	ld	a4,0(a0)
    8000362c:	04f70263          	beq	a4,a5,80003670 <uartintr+0xa0>
    80003630:	100005b7          	lui	a1,0x10000
    80003634:	00003817          	auipc	a6,0x3
    80003638:	52c80813          	addi	a6,a6,1324 # 80006b60 <uart_tx_buf>
    8000363c:	01c0006f          	j	80003658 <uartintr+0x88>
    80003640:	0006c703          	lbu	a4,0(a3)
    80003644:	00f63023          	sd	a5,0(a2)
    80003648:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000364c:	00063783          	ld	a5,0(a2)
    80003650:	00053703          	ld	a4,0(a0)
    80003654:	00f70e63          	beq	a4,a5,80003670 <uartintr+0xa0>
    80003658:	01f7f713          	andi	a4,a5,31
    8000365c:	00e806b3          	add	a3,a6,a4
    80003660:	0055c703          	lbu	a4,5(a1)
    80003664:	00178793          	addi	a5,a5,1
    80003668:	02077713          	andi	a4,a4,32
    8000366c:	fc071ae3          	bnez	a4,80003640 <uartintr+0x70>
    80003670:	01813083          	ld	ra,24(sp)
    80003674:	01013403          	ld	s0,16(sp)
    80003678:	00813483          	ld	s1,8(sp)
    8000367c:	02010113          	addi	sp,sp,32
    80003680:	00008067          	ret
    80003684:	00002617          	auipc	a2,0x2
    80003688:	24c60613          	addi	a2,a2,588 # 800058d0 <uart_tx_r>
    8000368c:	00002517          	auipc	a0,0x2
    80003690:	24c50513          	addi	a0,a0,588 # 800058d8 <uart_tx_w>
    80003694:	00063783          	ld	a5,0(a2)
    80003698:	00053703          	ld	a4,0(a0)
    8000369c:	04f70263          	beq	a4,a5,800036e0 <uartintr+0x110>
    800036a0:	100005b7          	lui	a1,0x10000
    800036a4:	00003817          	auipc	a6,0x3
    800036a8:	4bc80813          	addi	a6,a6,1212 # 80006b60 <uart_tx_buf>
    800036ac:	01c0006f          	j	800036c8 <uartintr+0xf8>
    800036b0:	0006c703          	lbu	a4,0(a3)
    800036b4:	00f63023          	sd	a5,0(a2)
    800036b8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800036bc:	00063783          	ld	a5,0(a2)
    800036c0:	00053703          	ld	a4,0(a0)
    800036c4:	02f70063          	beq	a4,a5,800036e4 <uartintr+0x114>
    800036c8:	01f7f713          	andi	a4,a5,31
    800036cc:	00e806b3          	add	a3,a6,a4
    800036d0:	0055c703          	lbu	a4,5(a1)
    800036d4:	00178793          	addi	a5,a5,1
    800036d8:	02077713          	andi	a4,a4,32
    800036dc:	fc071ae3          	bnez	a4,800036b0 <uartintr+0xe0>
    800036e0:	00008067          	ret
    800036e4:	00008067          	ret

00000000800036e8 <kinit>:
    800036e8:	fc010113          	addi	sp,sp,-64
    800036ec:	02913423          	sd	s1,40(sp)
    800036f0:	fffff7b7          	lui	a5,0xfffff
    800036f4:	00004497          	auipc	s1,0x4
    800036f8:	48b48493          	addi	s1,s1,1163 # 80007b7f <end+0xfff>
    800036fc:	02813823          	sd	s0,48(sp)
    80003700:	01313c23          	sd	s3,24(sp)
    80003704:	00f4f4b3          	and	s1,s1,a5
    80003708:	02113c23          	sd	ra,56(sp)
    8000370c:	03213023          	sd	s2,32(sp)
    80003710:	01413823          	sd	s4,16(sp)
    80003714:	01513423          	sd	s5,8(sp)
    80003718:	04010413          	addi	s0,sp,64
    8000371c:	000017b7          	lui	a5,0x1
    80003720:	01100993          	li	s3,17
    80003724:	00f487b3          	add	a5,s1,a5
    80003728:	01b99993          	slli	s3,s3,0x1b
    8000372c:	06f9e063          	bltu	s3,a5,8000378c <kinit+0xa4>
    80003730:	00003a97          	auipc	s5,0x3
    80003734:	450a8a93          	addi	s5,s5,1104 # 80006b80 <end>
    80003738:	0754ec63          	bltu	s1,s5,800037b0 <kinit+0xc8>
    8000373c:	0734fa63          	bgeu	s1,s3,800037b0 <kinit+0xc8>
    80003740:	00088a37          	lui	s4,0x88
    80003744:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003748:	00002917          	auipc	s2,0x2
    8000374c:	19890913          	addi	s2,s2,408 # 800058e0 <kmem>
    80003750:	00ca1a13          	slli	s4,s4,0xc
    80003754:	0140006f          	j	80003768 <kinit+0x80>
    80003758:	000017b7          	lui	a5,0x1
    8000375c:	00f484b3          	add	s1,s1,a5
    80003760:	0554e863          	bltu	s1,s5,800037b0 <kinit+0xc8>
    80003764:	0534f663          	bgeu	s1,s3,800037b0 <kinit+0xc8>
    80003768:	00001637          	lui	a2,0x1
    8000376c:	00100593          	li	a1,1
    80003770:	00048513          	mv	a0,s1
    80003774:	00000097          	auipc	ra,0x0
    80003778:	5e4080e7          	jalr	1508(ra) # 80003d58 <__memset>
    8000377c:	00093783          	ld	a5,0(s2)
    80003780:	00f4b023          	sd	a5,0(s1)
    80003784:	00993023          	sd	s1,0(s2)
    80003788:	fd4498e3          	bne	s1,s4,80003758 <kinit+0x70>
    8000378c:	03813083          	ld	ra,56(sp)
    80003790:	03013403          	ld	s0,48(sp)
    80003794:	02813483          	ld	s1,40(sp)
    80003798:	02013903          	ld	s2,32(sp)
    8000379c:	01813983          	ld	s3,24(sp)
    800037a0:	01013a03          	ld	s4,16(sp)
    800037a4:	00813a83          	ld	s5,8(sp)
    800037a8:	04010113          	addi	sp,sp,64
    800037ac:	00008067          	ret
    800037b0:	00002517          	auipc	a0,0x2
    800037b4:	aa850513          	addi	a0,a0,-1368 # 80005258 <digits+0x18>
    800037b8:	fffff097          	auipc	ra,0xfffff
    800037bc:	4b4080e7          	jalr	1204(ra) # 80002c6c <panic>

00000000800037c0 <freerange>:
    800037c0:	fc010113          	addi	sp,sp,-64
    800037c4:	000017b7          	lui	a5,0x1
    800037c8:	02913423          	sd	s1,40(sp)
    800037cc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800037d0:	009504b3          	add	s1,a0,s1
    800037d4:	fffff537          	lui	a0,0xfffff
    800037d8:	02813823          	sd	s0,48(sp)
    800037dc:	02113c23          	sd	ra,56(sp)
    800037e0:	03213023          	sd	s2,32(sp)
    800037e4:	01313c23          	sd	s3,24(sp)
    800037e8:	01413823          	sd	s4,16(sp)
    800037ec:	01513423          	sd	s5,8(sp)
    800037f0:	01613023          	sd	s6,0(sp)
    800037f4:	04010413          	addi	s0,sp,64
    800037f8:	00a4f4b3          	and	s1,s1,a0
    800037fc:	00f487b3          	add	a5,s1,a5
    80003800:	06f5e463          	bltu	a1,a5,80003868 <freerange+0xa8>
    80003804:	00003a97          	auipc	s5,0x3
    80003808:	37ca8a93          	addi	s5,s5,892 # 80006b80 <end>
    8000380c:	0954e263          	bltu	s1,s5,80003890 <freerange+0xd0>
    80003810:	01100993          	li	s3,17
    80003814:	01b99993          	slli	s3,s3,0x1b
    80003818:	0734fc63          	bgeu	s1,s3,80003890 <freerange+0xd0>
    8000381c:	00058a13          	mv	s4,a1
    80003820:	00002917          	auipc	s2,0x2
    80003824:	0c090913          	addi	s2,s2,192 # 800058e0 <kmem>
    80003828:	00002b37          	lui	s6,0x2
    8000382c:	0140006f          	j	80003840 <freerange+0x80>
    80003830:	000017b7          	lui	a5,0x1
    80003834:	00f484b3          	add	s1,s1,a5
    80003838:	0554ec63          	bltu	s1,s5,80003890 <freerange+0xd0>
    8000383c:	0534fa63          	bgeu	s1,s3,80003890 <freerange+0xd0>
    80003840:	00001637          	lui	a2,0x1
    80003844:	00100593          	li	a1,1
    80003848:	00048513          	mv	a0,s1
    8000384c:	00000097          	auipc	ra,0x0
    80003850:	50c080e7          	jalr	1292(ra) # 80003d58 <__memset>
    80003854:	00093703          	ld	a4,0(s2)
    80003858:	016487b3          	add	a5,s1,s6
    8000385c:	00e4b023          	sd	a4,0(s1)
    80003860:	00993023          	sd	s1,0(s2)
    80003864:	fcfa76e3          	bgeu	s4,a5,80003830 <freerange+0x70>
    80003868:	03813083          	ld	ra,56(sp)
    8000386c:	03013403          	ld	s0,48(sp)
    80003870:	02813483          	ld	s1,40(sp)
    80003874:	02013903          	ld	s2,32(sp)
    80003878:	01813983          	ld	s3,24(sp)
    8000387c:	01013a03          	ld	s4,16(sp)
    80003880:	00813a83          	ld	s5,8(sp)
    80003884:	00013b03          	ld	s6,0(sp)
    80003888:	04010113          	addi	sp,sp,64
    8000388c:	00008067          	ret
    80003890:	00002517          	auipc	a0,0x2
    80003894:	9c850513          	addi	a0,a0,-1592 # 80005258 <digits+0x18>
    80003898:	fffff097          	auipc	ra,0xfffff
    8000389c:	3d4080e7          	jalr	980(ra) # 80002c6c <panic>

00000000800038a0 <kfree>:
    800038a0:	fe010113          	addi	sp,sp,-32
    800038a4:	00813823          	sd	s0,16(sp)
    800038a8:	00113c23          	sd	ra,24(sp)
    800038ac:	00913423          	sd	s1,8(sp)
    800038b0:	02010413          	addi	s0,sp,32
    800038b4:	03451793          	slli	a5,a0,0x34
    800038b8:	04079c63          	bnez	a5,80003910 <kfree+0x70>
    800038bc:	00003797          	auipc	a5,0x3
    800038c0:	2c478793          	addi	a5,a5,708 # 80006b80 <end>
    800038c4:	00050493          	mv	s1,a0
    800038c8:	04f56463          	bltu	a0,a5,80003910 <kfree+0x70>
    800038cc:	01100793          	li	a5,17
    800038d0:	01b79793          	slli	a5,a5,0x1b
    800038d4:	02f57e63          	bgeu	a0,a5,80003910 <kfree+0x70>
    800038d8:	00001637          	lui	a2,0x1
    800038dc:	00100593          	li	a1,1
    800038e0:	00000097          	auipc	ra,0x0
    800038e4:	478080e7          	jalr	1144(ra) # 80003d58 <__memset>
    800038e8:	00002797          	auipc	a5,0x2
    800038ec:	ff878793          	addi	a5,a5,-8 # 800058e0 <kmem>
    800038f0:	0007b703          	ld	a4,0(a5)
    800038f4:	01813083          	ld	ra,24(sp)
    800038f8:	01013403          	ld	s0,16(sp)
    800038fc:	00e4b023          	sd	a4,0(s1)
    80003900:	0097b023          	sd	s1,0(a5)
    80003904:	00813483          	ld	s1,8(sp)
    80003908:	02010113          	addi	sp,sp,32
    8000390c:	00008067          	ret
    80003910:	00002517          	auipc	a0,0x2
    80003914:	94850513          	addi	a0,a0,-1720 # 80005258 <digits+0x18>
    80003918:	fffff097          	auipc	ra,0xfffff
    8000391c:	354080e7          	jalr	852(ra) # 80002c6c <panic>

0000000080003920 <kalloc>:
    80003920:	fe010113          	addi	sp,sp,-32
    80003924:	00813823          	sd	s0,16(sp)
    80003928:	00913423          	sd	s1,8(sp)
    8000392c:	00113c23          	sd	ra,24(sp)
    80003930:	02010413          	addi	s0,sp,32
    80003934:	00002797          	auipc	a5,0x2
    80003938:	fac78793          	addi	a5,a5,-84 # 800058e0 <kmem>
    8000393c:	0007b483          	ld	s1,0(a5)
    80003940:	02048063          	beqz	s1,80003960 <kalloc+0x40>
    80003944:	0004b703          	ld	a4,0(s1)
    80003948:	00001637          	lui	a2,0x1
    8000394c:	00500593          	li	a1,5
    80003950:	00048513          	mv	a0,s1
    80003954:	00e7b023          	sd	a4,0(a5)
    80003958:	00000097          	auipc	ra,0x0
    8000395c:	400080e7          	jalr	1024(ra) # 80003d58 <__memset>
    80003960:	01813083          	ld	ra,24(sp)
    80003964:	01013403          	ld	s0,16(sp)
    80003968:	00048513          	mv	a0,s1
    8000396c:	00813483          	ld	s1,8(sp)
    80003970:	02010113          	addi	sp,sp,32
    80003974:	00008067          	ret

0000000080003978 <initlock>:
    80003978:	ff010113          	addi	sp,sp,-16
    8000397c:	00813423          	sd	s0,8(sp)
    80003980:	01010413          	addi	s0,sp,16
    80003984:	00813403          	ld	s0,8(sp)
    80003988:	00b53423          	sd	a1,8(a0)
    8000398c:	00052023          	sw	zero,0(a0)
    80003990:	00053823          	sd	zero,16(a0)
    80003994:	01010113          	addi	sp,sp,16
    80003998:	00008067          	ret

000000008000399c <acquire>:
    8000399c:	fe010113          	addi	sp,sp,-32
    800039a0:	00813823          	sd	s0,16(sp)
    800039a4:	00913423          	sd	s1,8(sp)
    800039a8:	00113c23          	sd	ra,24(sp)
    800039ac:	01213023          	sd	s2,0(sp)
    800039b0:	02010413          	addi	s0,sp,32
    800039b4:	00050493          	mv	s1,a0
    800039b8:	10002973          	csrr	s2,sstatus
    800039bc:	100027f3          	csrr	a5,sstatus
    800039c0:	ffd7f793          	andi	a5,a5,-3
    800039c4:	10079073          	csrw	sstatus,a5
    800039c8:	fffff097          	auipc	ra,0xfffff
    800039cc:	8e8080e7          	jalr	-1816(ra) # 800022b0 <mycpu>
    800039d0:	07852783          	lw	a5,120(a0)
    800039d4:	06078e63          	beqz	a5,80003a50 <acquire+0xb4>
    800039d8:	fffff097          	auipc	ra,0xfffff
    800039dc:	8d8080e7          	jalr	-1832(ra) # 800022b0 <mycpu>
    800039e0:	07852783          	lw	a5,120(a0)
    800039e4:	0004a703          	lw	a4,0(s1)
    800039e8:	0017879b          	addiw	a5,a5,1
    800039ec:	06f52c23          	sw	a5,120(a0)
    800039f0:	04071063          	bnez	a4,80003a30 <acquire+0x94>
    800039f4:	00100713          	li	a4,1
    800039f8:	00070793          	mv	a5,a4
    800039fc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003a00:	0007879b          	sext.w	a5,a5
    80003a04:	fe079ae3          	bnez	a5,800039f8 <acquire+0x5c>
    80003a08:	0ff0000f          	fence
    80003a0c:	fffff097          	auipc	ra,0xfffff
    80003a10:	8a4080e7          	jalr	-1884(ra) # 800022b0 <mycpu>
    80003a14:	01813083          	ld	ra,24(sp)
    80003a18:	01013403          	ld	s0,16(sp)
    80003a1c:	00a4b823          	sd	a0,16(s1)
    80003a20:	00013903          	ld	s2,0(sp)
    80003a24:	00813483          	ld	s1,8(sp)
    80003a28:	02010113          	addi	sp,sp,32
    80003a2c:	00008067          	ret
    80003a30:	0104b903          	ld	s2,16(s1)
    80003a34:	fffff097          	auipc	ra,0xfffff
    80003a38:	87c080e7          	jalr	-1924(ra) # 800022b0 <mycpu>
    80003a3c:	faa91ce3          	bne	s2,a0,800039f4 <acquire+0x58>
    80003a40:	00002517          	auipc	a0,0x2
    80003a44:	82050513          	addi	a0,a0,-2016 # 80005260 <digits+0x20>
    80003a48:	fffff097          	auipc	ra,0xfffff
    80003a4c:	224080e7          	jalr	548(ra) # 80002c6c <panic>
    80003a50:	00195913          	srli	s2,s2,0x1
    80003a54:	fffff097          	auipc	ra,0xfffff
    80003a58:	85c080e7          	jalr	-1956(ra) # 800022b0 <mycpu>
    80003a5c:	00197913          	andi	s2,s2,1
    80003a60:	07252e23          	sw	s2,124(a0)
    80003a64:	f75ff06f          	j	800039d8 <acquire+0x3c>

0000000080003a68 <release>:
    80003a68:	fe010113          	addi	sp,sp,-32
    80003a6c:	00813823          	sd	s0,16(sp)
    80003a70:	00113c23          	sd	ra,24(sp)
    80003a74:	00913423          	sd	s1,8(sp)
    80003a78:	01213023          	sd	s2,0(sp)
    80003a7c:	02010413          	addi	s0,sp,32
    80003a80:	00052783          	lw	a5,0(a0)
    80003a84:	00079a63          	bnez	a5,80003a98 <release+0x30>
    80003a88:	00001517          	auipc	a0,0x1
    80003a8c:	7e050513          	addi	a0,a0,2016 # 80005268 <digits+0x28>
    80003a90:	fffff097          	auipc	ra,0xfffff
    80003a94:	1dc080e7          	jalr	476(ra) # 80002c6c <panic>
    80003a98:	01053903          	ld	s2,16(a0)
    80003a9c:	00050493          	mv	s1,a0
    80003aa0:	fffff097          	auipc	ra,0xfffff
    80003aa4:	810080e7          	jalr	-2032(ra) # 800022b0 <mycpu>
    80003aa8:	fea910e3          	bne	s2,a0,80003a88 <release+0x20>
    80003aac:	0004b823          	sd	zero,16(s1)
    80003ab0:	0ff0000f          	fence
    80003ab4:	0f50000f          	fence	iorw,ow
    80003ab8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80003abc:	ffffe097          	auipc	ra,0xffffe
    80003ac0:	7f4080e7          	jalr	2036(ra) # 800022b0 <mycpu>
    80003ac4:	100027f3          	csrr	a5,sstatus
    80003ac8:	0027f793          	andi	a5,a5,2
    80003acc:	04079a63          	bnez	a5,80003b20 <release+0xb8>
    80003ad0:	07852783          	lw	a5,120(a0)
    80003ad4:	02f05e63          	blez	a5,80003b10 <release+0xa8>
    80003ad8:	fff7871b          	addiw	a4,a5,-1
    80003adc:	06e52c23          	sw	a4,120(a0)
    80003ae0:	00071c63          	bnez	a4,80003af8 <release+0x90>
    80003ae4:	07c52783          	lw	a5,124(a0)
    80003ae8:	00078863          	beqz	a5,80003af8 <release+0x90>
    80003aec:	100027f3          	csrr	a5,sstatus
    80003af0:	0027e793          	ori	a5,a5,2
    80003af4:	10079073          	csrw	sstatus,a5
    80003af8:	01813083          	ld	ra,24(sp)
    80003afc:	01013403          	ld	s0,16(sp)
    80003b00:	00813483          	ld	s1,8(sp)
    80003b04:	00013903          	ld	s2,0(sp)
    80003b08:	02010113          	addi	sp,sp,32
    80003b0c:	00008067          	ret
    80003b10:	00001517          	auipc	a0,0x1
    80003b14:	77850513          	addi	a0,a0,1912 # 80005288 <digits+0x48>
    80003b18:	fffff097          	auipc	ra,0xfffff
    80003b1c:	154080e7          	jalr	340(ra) # 80002c6c <panic>
    80003b20:	00001517          	auipc	a0,0x1
    80003b24:	75050513          	addi	a0,a0,1872 # 80005270 <digits+0x30>
    80003b28:	fffff097          	auipc	ra,0xfffff
    80003b2c:	144080e7          	jalr	324(ra) # 80002c6c <panic>

0000000080003b30 <holding>:
    80003b30:	00052783          	lw	a5,0(a0)
    80003b34:	00079663          	bnez	a5,80003b40 <holding+0x10>
    80003b38:	00000513          	li	a0,0
    80003b3c:	00008067          	ret
    80003b40:	fe010113          	addi	sp,sp,-32
    80003b44:	00813823          	sd	s0,16(sp)
    80003b48:	00913423          	sd	s1,8(sp)
    80003b4c:	00113c23          	sd	ra,24(sp)
    80003b50:	02010413          	addi	s0,sp,32
    80003b54:	01053483          	ld	s1,16(a0)
    80003b58:	ffffe097          	auipc	ra,0xffffe
    80003b5c:	758080e7          	jalr	1880(ra) # 800022b0 <mycpu>
    80003b60:	01813083          	ld	ra,24(sp)
    80003b64:	01013403          	ld	s0,16(sp)
    80003b68:	40a48533          	sub	a0,s1,a0
    80003b6c:	00153513          	seqz	a0,a0
    80003b70:	00813483          	ld	s1,8(sp)
    80003b74:	02010113          	addi	sp,sp,32
    80003b78:	00008067          	ret

0000000080003b7c <push_off>:
    80003b7c:	fe010113          	addi	sp,sp,-32
    80003b80:	00813823          	sd	s0,16(sp)
    80003b84:	00113c23          	sd	ra,24(sp)
    80003b88:	00913423          	sd	s1,8(sp)
    80003b8c:	02010413          	addi	s0,sp,32
    80003b90:	100024f3          	csrr	s1,sstatus
    80003b94:	100027f3          	csrr	a5,sstatus
    80003b98:	ffd7f793          	andi	a5,a5,-3
    80003b9c:	10079073          	csrw	sstatus,a5
    80003ba0:	ffffe097          	auipc	ra,0xffffe
    80003ba4:	710080e7          	jalr	1808(ra) # 800022b0 <mycpu>
    80003ba8:	07852783          	lw	a5,120(a0)
    80003bac:	02078663          	beqz	a5,80003bd8 <push_off+0x5c>
    80003bb0:	ffffe097          	auipc	ra,0xffffe
    80003bb4:	700080e7          	jalr	1792(ra) # 800022b0 <mycpu>
    80003bb8:	07852783          	lw	a5,120(a0)
    80003bbc:	01813083          	ld	ra,24(sp)
    80003bc0:	01013403          	ld	s0,16(sp)
    80003bc4:	0017879b          	addiw	a5,a5,1
    80003bc8:	06f52c23          	sw	a5,120(a0)
    80003bcc:	00813483          	ld	s1,8(sp)
    80003bd0:	02010113          	addi	sp,sp,32
    80003bd4:	00008067          	ret
    80003bd8:	0014d493          	srli	s1,s1,0x1
    80003bdc:	ffffe097          	auipc	ra,0xffffe
    80003be0:	6d4080e7          	jalr	1748(ra) # 800022b0 <mycpu>
    80003be4:	0014f493          	andi	s1,s1,1
    80003be8:	06952e23          	sw	s1,124(a0)
    80003bec:	fc5ff06f          	j	80003bb0 <push_off+0x34>

0000000080003bf0 <pop_off>:
    80003bf0:	ff010113          	addi	sp,sp,-16
    80003bf4:	00813023          	sd	s0,0(sp)
    80003bf8:	00113423          	sd	ra,8(sp)
    80003bfc:	01010413          	addi	s0,sp,16
    80003c00:	ffffe097          	auipc	ra,0xffffe
    80003c04:	6b0080e7          	jalr	1712(ra) # 800022b0 <mycpu>
    80003c08:	100027f3          	csrr	a5,sstatus
    80003c0c:	0027f793          	andi	a5,a5,2
    80003c10:	04079663          	bnez	a5,80003c5c <pop_off+0x6c>
    80003c14:	07852783          	lw	a5,120(a0)
    80003c18:	02f05a63          	blez	a5,80003c4c <pop_off+0x5c>
    80003c1c:	fff7871b          	addiw	a4,a5,-1
    80003c20:	06e52c23          	sw	a4,120(a0)
    80003c24:	00071c63          	bnez	a4,80003c3c <pop_off+0x4c>
    80003c28:	07c52783          	lw	a5,124(a0)
    80003c2c:	00078863          	beqz	a5,80003c3c <pop_off+0x4c>
    80003c30:	100027f3          	csrr	a5,sstatus
    80003c34:	0027e793          	ori	a5,a5,2
    80003c38:	10079073          	csrw	sstatus,a5
    80003c3c:	00813083          	ld	ra,8(sp)
    80003c40:	00013403          	ld	s0,0(sp)
    80003c44:	01010113          	addi	sp,sp,16
    80003c48:	00008067          	ret
    80003c4c:	00001517          	auipc	a0,0x1
    80003c50:	63c50513          	addi	a0,a0,1596 # 80005288 <digits+0x48>
    80003c54:	fffff097          	auipc	ra,0xfffff
    80003c58:	018080e7          	jalr	24(ra) # 80002c6c <panic>
    80003c5c:	00001517          	auipc	a0,0x1
    80003c60:	61450513          	addi	a0,a0,1556 # 80005270 <digits+0x30>
    80003c64:	fffff097          	auipc	ra,0xfffff
    80003c68:	008080e7          	jalr	8(ra) # 80002c6c <panic>

0000000080003c6c <push_on>:
    80003c6c:	fe010113          	addi	sp,sp,-32
    80003c70:	00813823          	sd	s0,16(sp)
    80003c74:	00113c23          	sd	ra,24(sp)
    80003c78:	00913423          	sd	s1,8(sp)
    80003c7c:	02010413          	addi	s0,sp,32
    80003c80:	100024f3          	csrr	s1,sstatus
    80003c84:	100027f3          	csrr	a5,sstatus
    80003c88:	0027e793          	ori	a5,a5,2
    80003c8c:	10079073          	csrw	sstatus,a5
    80003c90:	ffffe097          	auipc	ra,0xffffe
    80003c94:	620080e7          	jalr	1568(ra) # 800022b0 <mycpu>
    80003c98:	07852783          	lw	a5,120(a0)
    80003c9c:	02078663          	beqz	a5,80003cc8 <push_on+0x5c>
    80003ca0:	ffffe097          	auipc	ra,0xffffe
    80003ca4:	610080e7          	jalr	1552(ra) # 800022b0 <mycpu>
    80003ca8:	07852783          	lw	a5,120(a0)
    80003cac:	01813083          	ld	ra,24(sp)
    80003cb0:	01013403          	ld	s0,16(sp)
    80003cb4:	0017879b          	addiw	a5,a5,1
    80003cb8:	06f52c23          	sw	a5,120(a0)
    80003cbc:	00813483          	ld	s1,8(sp)
    80003cc0:	02010113          	addi	sp,sp,32
    80003cc4:	00008067          	ret
    80003cc8:	0014d493          	srli	s1,s1,0x1
    80003ccc:	ffffe097          	auipc	ra,0xffffe
    80003cd0:	5e4080e7          	jalr	1508(ra) # 800022b0 <mycpu>
    80003cd4:	0014f493          	andi	s1,s1,1
    80003cd8:	06952e23          	sw	s1,124(a0)
    80003cdc:	fc5ff06f          	j	80003ca0 <push_on+0x34>

0000000080003ce0 <pop_on>:
    80003ce0:	ff010113          	addi	sp,sp,-16
    80003ce4:	00813023          	sd	s0,0(sp)
    80003ce8:	00113423          	sd	ra,8(sp)
    80003cec:	01010413          	addi	s0,sp,16
    80003cf0:	ffffe097          	auipc	ra,0xffffe
    80003cf4:	5c0080e7          	jalr	1472(ra) # 800022b0 <mycpu>
    80003cf8:	100027f3          	csrr	a5,sstatus
    80003cfc:	0027f793          	andi	a5,a5,2
    80003d00:	04078463          	beqz	a5,80003d48 <pop_on+0x68>
    80003d04:	07852783          	lw	a5,120(a0)
    80003d08:	02f05863          	blez	a5,80003d38 <pop_on+0x58>
    80003d0c:	fff7879b          	addiw	a5,a5,-1
    80003d10:	06f52c23          	sw	a5,120(a0)
    80003d14:	07853783          	ld	a5,120(a0)
    80003d18:	00079863          	bnez	a5,80003d28 <pop_on+0x48>
    80003d1c:	100027f3          	csrr	a5,sstatus
    80003d20:	ffd7f793          	andi	a5,a5,-3
    80003d24:	10079073          	csrw	sstatus,a5
    80003d28:	00813083          	ld	ra,8(sp)
    80003d2c:	00013403          	ld	s0,0(sp)
    80003d30:	01010113          	addi	sp,sp,16
    80003d34:	00008067          	ret
    80003d38:	00001517          	auipc	a0,0x1
    80003d3c:	57850513          	addi	a0,a0,1400 # 800052b0 <digits+0x70>
    80003d40:	fffff097          	auipc	ra,0xfffff
    80003d44:	f2c080e7          	jalr	-212(ra) # 80002c6c <panic>
    80003d48:	00001517          	auipc	a0,0x1
    80003d4c:	54850513          	addi	a0,a0,1352 # 80005290 <digits+0x50>
    80003d50:	fffff097          	auipc	ra,0xfffff
    80003d54:	f1c080e7          	jalr	-228(ra) # 80002c6c <panic>

0000000080003d58 <__memset>:
    80003d58:	ff010113          	addi	sp,sp,-16
    80003d5c:	00813423          	sd	s0,8(sp)
    80003d60:	01010413          	addi	s0,sp,16
    80003d64:	1a060e63          	beqz	a2,80003f20 <__memset+0x1c8>
    80003d68:	40a007b3          	neg	a5,a0
    80003d6c:	0077f793          	andi	a5,a5,7
    80003d70:	00778693          	addi	a3,a5,7
    80003d74:	00b00813          	li	a6,11
    80003d78:	0ff5f593          	andi	a1,a1,255
    80003d7c:	fff6071b          	addiw	a4,a2,-1
    80003d80:	1b06e663          	bltu	a3,a6,80003f2c <__memset+0x1d4>
    80003d84:	1cd76463          	bltu	a4,a3,80003f4c <__memset+0x1f4>
    80003d88:	1a078e63          	beqz	a5,80003f44 <__memset+0x1ec>
    80003d8c:	00b50023          	sb	a1,0(a0)
    80003d90:	00100713          	li	a4,1
    80003d94:	1ae78463          	beq	a5,a4,80003f3c <__memset+0x1e4>
    80003d98:	00b500a3          	sb	a1,1(a0)
    80003d9c:	00200713          	li	a4,2
    80003da0:	1ae78a63          	beq	a5,a4,80003f54 <__memset+0x1fc>
    80003da4:	00b50123          	sb	a1,2(a0)
    80003da8:	00300713          	li	a4,3
    80003dac:	18e78463          	beq	a5,a4,80003f34 <__memset+0x1dc>
    80003db0:	00b501a3          	sb	a1,3(a0)
    80003db4:	00400713          	li	a4,4
    80003db8:	1ae78263          	beq	a5,a4,80003f5c <__memset+0x204>
    80003dbc:	00b50223          	sb	a1,4(a0)
    80003dc0:	00500713          	li	a4,5
    80003dc4:	1ae78063          	beq	a5,a4,80003f64 <__memset+0x20c>
    80003dc8:	00b502a3          	sb	a1,5(a0)
    80003dcc:	00700713          	li	a4,7
    80003dd0:	18e79e63          	bne	a5,a4,80003f6c <__memset+0x214>
    80003dd4:	00b50323          	sb	a1,6(a0)
    80003dd8:	00700e93          	li	t4,7
    80003ddc:	00859713          	slli	a4,a1,0x8
    80003de0:	00e5e733          	or	a4,a1,a4
    80003de4:	01059e13          	slli	t3,a1,0x10
    80003de8:	01c76e33          	or	t3,a4,t3
    80003dec:	01859313          	slli	t1,a1,0x18
    80003df0:	006e6333          	or	t1,t3,t1
    80003df4:	02059893          	slli	a7,a1,0x20
    80003df8:	40f60e3b          	subw	t3,a2,a5
    80003dfc:	011368b3          	or	a7,t1,a7
    80003e00:	02859813          	slli	a6,a1,0x28
    80003e04:	0108e833          	or	a6,a7,a6
    80003e08:	03059693          	slli	a3,a1,0x30
    80003e0c:	003e589b          	srliw	a7,t3,0x3
    80003e10:	00d866b3          	or	a3,a6,a3
    80003e14:	03859713          	slli	a4,a1,0x38
    80003e18:	00389813          	slli	a6,a7,0x3
    80003e1c:	00f507b3          	add	a5,a0,a5
    80003e20:	00e6e733          	or	a4,a3,a4
    80003e24:	000e089b          	sext.w	a7,t3
    80003e28:	00f806b3          	add	a3,a6,a5
    80003e2c:	00e7b023          	sd	a4,0(a5)
    80003e30:	00878793          	addi	a5,a5,8
    80003e34:	fed79ce3          	bne	a5,a3,80003e2c <__memset+0xd4>
    80003e38:	ff8e7793          	andi	a5,t3,-8
    80003e3c:	0007871b          	sext.w	a4,a5
    80003e40:	01d787bb          	addw	a5,a5,t4
    80003e44:	0ce88e63          	beq	a7,a4,80003f20 <__memset+0x1c8>
    80003e48:	00f50733          	add	a4,a0,a5
    80003e4c:	00b70023          	sb	a1,0(a4)
    80003e50:	0017871b          	addiw	a4,a5,1
    80003e54:	0cc77663          	bgeu	a4,a2,80003f20 <__memset+0x1c8>
    80003e58:	00e50733          	add	a4,a0,a4
    80003e5c:	00b70023          	sb	a1,0(a4)
    80003e60:	0027871b          	addiw	a4,a5,2
    80003e64:	0ac77e63          	bgeu	a4,a2,80003f20 <__memset+0x1c8>
    80003e68:	00e50733          	add	a4,a0,a4
    80003e6c:	00b70023          	sb	a1,0(a4)
    80003e70:	0037871b          	addiw	a4,a5,3
    80003e74:	0ac77663          	bgeu	a4,a2,80003f20 <__memset+0x1c8>
    80003e78:	00e50733          	add	a4,a0,a4
    80003e7c:	00b70023          	sb	a1,0(a4)
    80003e80:	0047871b          	addiw	a4,a5,4
    80003e84:	08c77e63          	bgeu	a4,a2,80003f20 <__memset+0x1c8>
    80003e88:	00e50733          	add	a4,a0,a4
    80003e8c:	00b70023          	sb	a1,0(a4)
    80003e90:	0057871b          	addiw	a4,a5,5
    80003e94:	08c77663          	bgeu	a4,a2,80003f20 <__memset+0x1c8>
    80003e98:	00e50733          	add	a4,a0,a4
    80003e9c:	00b70023          	sb	a1,0(a4)
    80003ea0:	0067871b          	addiw	a4,a5,6
    80003ea4:	06c77e63          	bgeu	a4,a2,80003f20 <__memset+0x1c8>
    80003ea8:	00e50733          	add	a4,a0,a4
    80003eac:	00b70023          	sb	a1,0(a4)
    80003eb0:	0077871b          	addiw	a4,a5,7
    80003eb4:	06c77663          	bgeu	a4,a2,80003f20 <__memset+0x1c8>
    80003eb8:	00e50733          	add	a4,a0,a4
    80003ebc:	00b70023          	sb	a1,0(a4)
    80003ec0:	0087871b          	addiw	a4,a5,8
    80003ec4:	04c77e63          	bgeu	a4,a2,80003f20 <__memset+0x1c8>
    80003ec8:	00e50733          	add	a4,a0,a4
    80003ecc:	00b70023          	sb	a1,0(a4)
    80003ed0:	0097871b          	addiw	a4,a5,9
    80003ed4:	04c77663          	bgeu	a4,a2,80003f20 <__memset+0x1c8>
    80003ed8:	00e50733          	add	a4,a0,a4
    80003edc:	00b70023          	sb	a1,0(a4)
    80003ee0:	00a7871b          	addiw	a4,a5,10
    80003ee4:	02c77e63          	bgeu	a4,a2,80003f20 <__memset+0x1c8>
    80003ee8:	00e50733          	add	a4,a0,a4
    80003eec:	00b70023          	sb	a1,0(a4)
    80003ef0:	00b7871b          	addiw	a4,a5,11
    80003ef4:	02c77663          	bgeu	a4,a2,80003f20 <__memset+0x1c8>
    80003ef8:	00e50733          	add	a4,a0,a4
    80003efc:	00b70023          	sb	a1,0(a4)
    80003f00:	00c7871b          	addiw	a4,a5,12
    80003f04:	00c77e63          	bgeu	a4,a2,80003f20 <__memset+0x1c8>
    80003f08:	00e50733          	add	a4,a0,a4
    80003f0c:	00b70023          	sb	a1,0(a4)
    80003f10:	00d7879b          	addiw	a5,a5,13
    80003f14:	00c7f663          	bgeu	a5,a2,80003f20 <__memset+0x1c8>
    80003f18:	00f507b3          	add	a5,a0,a5
    80003f1c:	00b78023          	sb	a1,0(a5)
    80003f20:	00813403          	ld	s0,8(sp)
    80003f24:	01010113          	addi	sp,sp,16
    80003f28:	00008067          	ret
    80003f2c:	00b00693          	li	a3,11
    80003f30:	e55ff06f          	j	80003d84 <__memset+0x2c>
    80003f34:	00300e93          	li	t4,3
    80003f38:	ea5ff06f          	j	80003ddc <__memset+0x84>
    80003f3c:	00100e93          	li	t4,1
    80003f40:	e9dff06f          	j	80003ddc <__memset+0x84>
    80003f44:	00000e93          	li	t4,0
    80003f48:	e95ff06f          	j	80003ddc <__memset+0x84>
    80003f4c:	00000793          	li	a5,0
    80003f50:	ef9ff06f          	j	80003e48 <__memset+0xf0>
    80003f54:	00200e93          	li	t4,2
    80003f58:	e85ff06f          	j	80003ddc <__memset+0x84>
    80003f5c:	00400e93          	li	t4,4
    80003f60:	e7dff06f          	j	80003ddc <__memset+0x84>
    80003f64:	00500e93          	li	t4,5
    80003f68:	e75ff06f          	j	80003ddc <__memset+0x84>
    80003f6c:	00600e93          	li	t4,6
    80003f70:	e6dff06f          	j	80003ddc <__memset+0x84>

0000000080003f74 <__memmove>:
    80003f74:	ff010113          	addi	sp,sp,-16
    80003f78:	00813423          	sd	s0,8(sp)
    80003f7c:	01010413          	addi	s0,sp,16
    80003f80:	0e060863          	beqz	a2,80004070 <__memmove+0xfc>
    80003f84:	fff6069b          	addiw	a3,a2,-1
    80003f88:	0006881b          	sext.w	a6,a3
    80003f8c:	0ea5e863          	bltu	a1,a0,8000407c <__memmove+0x108>
    80003f90:	00758713          	addi	a4,a1,7
    80003f94:	00a5e7b3          	or	a5,a1,a0
    80003f98:	40a70733          	sub	a4,a4,a0
    80003f9c:	0077f793          	andi	a5,a5,7
    80003fa0:	00f73713          	sltiu	a4,a4,15
    80003fa4:	00174713          	xori	a4,a4,1
    80003fa8:	0017b793          	seqz	a5,a5
    80003fac:	00e7f7b3          	and	a5,a5,a4
    80003fb0:	10078863          	beqz	a5,800040c0 <__memmove+0x14c>
    80003fb4:	00900793          	li	a5,9
    80003fb8:	1107f463          	bgeu	a5,a6,800040c0 <__memmove+0x14c>
    80003fbc:	0036581b          	srliw	a6,a2,0x3
    80003fc0:	fff8081b          	addiw	a6,a6,-1
    80003fc4:	02081813          	slli	a6,a6,0x20
    80003fc8:	01d85893          	srli	a7,a6,0x1d
    80003fcc:	00858813          	addi	a6,a1,8
    80003fd0:	00058793          	mv	a5,a1
    80003fd4:	00050713          	mv	a4,a0
    80003fd8:	01088833          	add	a6,a7,a6
    80003fdc:	0007b883          	ld	a7,0(a5)
    80003fe0:	00878793          	addi	a5,a5,8
    80003fe4:	00870713          	addi	a4,a4,8
    80003fe8:	ff173c23          	sd	a7,-8(a4)
    80003fec:	ff0798e3          	bne	a5,a6,80003fdc <__memmove+0x68>
    80003ff0:	ff867713          	andi	a4,a2,-8
    80003ff4:	02071793          	slli	a5,a4,0x20
    80003ff8:	0207d793          	srli	a5,a5,0x20
    80003ffc:	00f585b3          	add	a1,a1,a5
    80004000:	40e686bb          	subw	a3,a3,a4
    80004004:	00f507b3          	add	a5,a0,a5
    80004008:	06e60463          	beq	a2,a4,80004070 <__memmove+0xfc>
    8000400c:	0005c703          	lbu	a4,0(a1)
    80004010:	00e78023          	sb	a4,0(a5)
    80004014:	04068e63          	beqz	a3,80004070 <__memmove+0xfc>
    80004018:	0015c603          	lbu	a2,1(a1)
    8000401c:	00100713          	li	a4,1
    80004020:	00c780a3          	sb	a2,1(a5)
    80004024:	04e68663          	beq	a3,a4,80004070 <__memmove+0xfc>
    80004028:	0025c603          	lbu	a2,2(a1)
    8000402c:	00200713          	li	a4,2
    80004030:	00c78123          	sb	a2,2(a5)
    80004034:	02e68e63          	beq	a3,a4,80004070 <__memmove+0xfc>
    80004038:	0035c603          	lbu	a2,3(a1)
    8000403c:	00300713          	li	a4,3
    80004040:	00c781a3          	sb	a2,3(a5)
    80004044:	02e68663          	beq	a3,a4,80004070 <__memmove+0xfc>
    80004048:	0045c603          	lbu	a2,4(a1)
    8000404c:	00400713          	li	a4,4
    80004050:	00c78223          	sb	a2,4(a5)
    80004054:	00e68e63          	beq	a3,a4,80004070 <__memmove+0xfc>
    80004058:	0055c603          	lbu	a2,5(a1)
    8000405c:	00500713          	li	a4,5
    80004060:	00c782a3          	sb	a2,5(a5)
    80004064:	00e68663          	beq	a3,a4,80004070 <__memmove+0xfc>
    80004068:	0065c703          	lbu	a4,6(a1)
    8000406c:	00e78323          	sb	a4,6(a5)
    80004070:	00813403          	ld	s0,8(sp)
    80004074:	01010113          	addi	sp,sp,16
    80004078:	00008067          	ret
    8000407c:	02061713          	slli	a4,a2,0x20
    80004080:	02075713          	srli	a4,a4,0x20
    80004084:	00e587b3          	add	a5,a1,a4
    80004088:	f0f574e3          	bgeu	a0,a5,80003f90 <__memmove+0x1c>
    8000408c:	02069613          	slli	a2,a3,0x20
    80004090:	02065613          	srli	a2,a2,0x20
    80004094:	fff64613          	not	a2,a2
    80004098:	00e50733          	add	a4,a0,a4
    8000409c:	00c78633          	add	a2,a5,a2
    800040a0:	fff7c683          	lbu	a3,-1(a5)
    800040a4:	fff78793          	addi	a5,a5,-1
    800040a8:	fff70713          	addi	a4,a4,-1
    800040ac:	00d70023          	sb	a3,0(a4)
    800040b0:	fec798e3          	bne	a5,a2,800040a0 <__memmove+0x12c>
    800040b4:	00813403          	ld	s0,8(sp)
    800040b8:	01010113          	addi	sp,sp,16
    800040bc:	00008067          	ret
    800040c0:	02069713          	slli	a4,a3,0x20
    800040c4:	02075713          	srli	a4,a4,0x20
    800040c8:	00170713          	addi	a4,a4,1
    800040cc:	00e50733          	add	a4,a0,a4
    800040d0:	00050793          	mv	a5,a0
    800040d4:	0005c683          	lbu	a3,0(a1)
    800040d8:	00178793          	addi	a5,a5,1
    800040dc:	00158593          	addi	a1,a1,1
    800040e0:	fed78fa3          	sb	a3,-1(a5)
    800040e4:	fee798e3          	bne	a5,a4,800040d4 <__memmove+0x160>
    800040e8:	f89ff06f          	j	80004070 <__memmove+0xfc>

00000000800040ec <__putc>:
    800040ec:	fe010113          	addi	sp,sp,-32
    800040f0:	00813823          	sd	s0,16(sp)
    800040f4:	00113c23          	sd	ra,24(sp)
    800040f8:	02010413          	addi	s0,sp,32
    800040fc:	00050793          	mv	a5,a0
    80004100:	fef40593          	addi	a1,s0,-17
    80004104:	00100613          	li	a2,1
    80004108:	00000513          	li	a0,0
    8000410c:	fef407a3          	sb	a5,-17(s0)
    80004110:	fffff097          	auipc	ra,0xfffff
    80004114:	b3c080e7          	jalr	-1220(ra) # 80002c4c <console_write>
    80004118:	01813083          	ld	ra,24(sp)
    8000411c:	01013403          	ld	s0,16(sp)
    80004120:	02010113          	addi	sp,sp,32
    80004124:	00008067          	ret

0000000080004128 <__getc>:
    80004128:	fe010113          	addi	sp,sp,-32
    8000412c:	00813823          	sd	s0,16(sp)
    80004130:	00113c23          	sd	ra,24(sp)
    80004134:	02010413          	addi	s0,sp,32
    80004138:	fe840593          	addi	a1,s0,-24
    8000413c:	00100613          	li	a2,1
    80004140:	00000513          	li	a0,0
    80004144:	fffff097          	auipc	ra,0xfffff
    80004148:	ae8080e7          	jalr	-1304(ra) # 80002c2c <console_read>
    8000414c:	fe844503          	lbu	a0,-24(s0)
    80004150:	01813083          	ld	ra,24(sp)
    80004154:	01013403          	ld	s0,16(sp)
    80004158:	02010113          	addi	sp,sp,32
    8000415c:	00008067          	ret

0000000080004160 <console_handler>:
    80004160:	fe010113          	addi	sp,sp,-32
    80004164:	00813823          	sd	s0,16(sp)
    80004168:	00113c23          	sd	ra,24(sp)
    8000416c:	00913423          	sd	s1,8(sp)
    80004170:	02010413          	addi	s0,sp,32
    80004174:	14202773          	csrr	a4,scause
    80004178:	100027f3          	csrr	a5,sstatus
    8000417c:	0027f793          	andi	a5,a5,2
    80004180:	06079e63          	bnez	a5,800041fc <console_handler+0x9c>
    80004184:	00074c63          	bltz	a4,8000419c <console_handler+0x3c>
    80004188:	01813083          	ld	ra,24(sp)
    8000418c:	01013403          	ld	s0,16(sp)
    80004190:	00813483          	ld	s1,8(sp)
    80004194:	02010113          	addi	sp,sp,32
    80004198:	00008067          	ret
    8000419c:	0ff77713          	andi	a4,a4,255
    800041a0:	00900793          	li	a5,9
    800041a4:	fef712e3          	bne	a4,a5,80004188 <console_handler+0x28>
    800041a8:	ffffe097          	auipc	ra,0xffffe
    800041ac:	6dc080e7          	jalr	1756(ra) # 80002884 <plic_claim>
    800041b0:	00a00793          	li	a5,10
    800041b4:	00050493          	mv	s1,a0
    800041b8:	02f50c63          	beq	a0,a5,800041f0 <console_handler+0x90>
    800041bc:	fc0506e3          	beqz	a0,80004188 <console_handler+0x28>
    800041c0:	00050593          	mv	a1,a0
    800041c4:	00001517          	auipc	a0,0x1
    800041c8:	ff450513          	addi	a0,a0,-12 # 800051b8 <_ZZ12printIntegermE6digits+0xe0>
    800041cc:	fffff097          	auipc	ra,0xfffff
    800041d0:	afc080e7          	jalr	-1284(ra) # 80002cc8 <__printf>
    800041d4:	01013403          	ld	s0,16(sp)
    800041d8:	01813083          	ld	ra,24(sp)
    800041dc:	00048513          	mv	a0,s1
    800041e0:	00813483          	ld	s1,8(sp)
    800041e4:	02010113          	addi	sp,sp,32
    800041e8:	ffffe317          	auipc	t1,0xffffe
    800041ec:	6d430067          	jr	1748(t1) # 800028bc <plic_complete>
    800041f0:	fffff097          	auipc	ra,0xfffff
    800041f4:	3e0080e7          	jalr	992(ra) # 800035d0 <uartintr>
    800041f8:	fddff06f          	j	800041d4 <console_handler+0x74>
    800041fc:	00001517          	auipc	a0,0x1
    80004200:	0bc50513          	addi	a0,a0,188 # 800052b8 <digits+0x78>
    80004204:	fffff097          	auipc	ra,0xfffff
    80004208:	a68080e7          	jalr	-1432(ra) # 80002c6c <panic>
	...
