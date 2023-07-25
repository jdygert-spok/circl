// Code generated by command: go run src.go -out ../../f1600x4_amd64.s -stubs ../../f1600x4stubs_amd64.go -pkg keccakf1600. DO NOT EDIT.

//+build amd64,!gccgo

#include "textflag.h"

// func f1600x4AVX2(state *uint64, rc *[24]uint64, turbo bool)
// Requires: AVX, AVX2
TEXT ·f1600x4AVX2(SB), NOSPLIT, $0-17
	MOVQ    state+0(FP), AX
	MOVQ    rc+8(FP), CX
	MOVQ    $0x0000000000000006, DX
	MOVBQZX turbo+16(FP), BX
	TESTQ   BX, BX
	JZ      loop
	MOVQ    $0x0000000000000003, DX
	ADDQ    $0x60, CX

loop:
	VMOVDQA      (AX), Y0
	VMOVDQA      32(AX), Y1
	VMOVDQA      64(AX), Y2
	VMOVDQA      96(AX), Y3
	VMOVDQA      128(AX), Y4
	VPXOR        160(AX), Y0, Y0
	VPXOR        192(AX), Y1, Y1
	VPXOR        224(AX), Y2, Y2
	VPXOR        256(AX), Y3, Y3
	VPXOR        288(AX), Y4, Y4
	VPXOR        320(AX), Y0, Y0
	VPXOR        352(AX), Y1, Y1
	VPXOR        384(AX), Y2, Y2
	VPXOR        416(AX), Y3, Y3
	VPXOR        448(AX), Y4, Y4
	VPXOR        480(AX), Y0, Y0
	VPXOR        512(AX), Y1, Y1
	VPXOR        544(AX), Y2, Y2
	VPXOR        576(AX), Y3, Y3
	VPXOR        608(AX), Y4, Y4
	VPXOR        640(AX), Y0, Y0
	VPXOR        672(AX), Y1, Y1
	VPXOR        704(AX), Y2, Y2
	VPXOR        736(AX), Y3, Y3
	VPXOR        768(AX), Y4, Y4
	VPSLLQ       $0x01, Y1, Y5
	VPSLLQ       $0x01, Y2, Y6
	VPSLLQ       $0x01, Y3, Y7
	VPSLLQ       $0x01, Y4, Y8
	VPSLLQ       $0x01, Y0, Y9
	VPSRLQ       $0x3f, Y1, Y10
	VPSRLQ       $0x3f, Y2, Y11
	VPSRLQ       $0x3f, Y3, Y12
	VPSRLQ       $0x3f, Y4, Y13
	VPSRLQ       $0x3f, Y0, Y14
	VPOR         Y5, Y10, Y10
	VPOR         Y6, Y11, Y11
	VPOR         Y7, Y12, Y12
	VPOR         Y8, Y13, Y13
	VPOR         Y9, Y14, Y14
	VPXOR        Y10, Y4, Y10
	VPXOR        Y11, Y0, Y11
	VPXOR        Y12, Y1, Y12
	VPXOR        Y13, Y2, Y13
	VPXOR        Y14, Y3, Y14
	VPXOR        (AX), Y10, Y0
	VPXOR        192(AX), Y11, Y1
	VPXOR        384(AX), Y12, Y2
	VPXOR        576(AX), Y13, Y3
	VPXOR        768(AX), Y14, Y4
	VPSLLQ       $0x2c, Y1, Y6
	VPSLLQ       $0x2b, Y2, Y7
	VPSLLQ       $0x15, Y3, Y8
	VPSLLQ       $0x0e, Y4, Y9
	VPSRLQ       $0x14, Y1, Y1
	VPSRLQ       $0x15, Y2, Y2
	VPSRLQ       $0x2b, Y3, Y3
	VPSRLQ       $0x32, Y4, Y4
	VPOR         Y6, Y1, Y1
	VPOR         Y7, Y2, Y2
	VPOR         Y8, Y3, Y3
	VPOR         Y9, Y4, Y4
	VPANDN       Y2, Y1, Y5
	VPANDN       Y3, Y2, Y6
	VPANDN       Y4, Y3, Y7
	VPANDN       Y0, Y4, Y8
	VPANDN       Y1, Y0, Y9
	VPXOR        Y0, Y5, Y5
	VPXOR        Y1, Y6, Y6
	VPXOR        Y2, Y7, Y7
	VPXOR        Y3, Y8, Y8
	VPXOR        Y4, Y9, Y9
	VPBROADCASTQ (CX), Y0
	VPXOR        Y0, Y5, Y5
	VMOVDQA      Y5, (AX)
	VMOVDQA      Y6, 192(AX)
	VMOVDQA      Y7, 384(AX)
	VMOVDQA      Y8, 576(AX)
	VMOVDQA      Y9, 768(AX)
	VPXOR        96(AX), Y13, Y0
	VPXOR        288(AX), Y14, Y1
	VPXOR        320(AX), Y10, Y2
	VPXOR        512(AX), Y11, Y3
	VPXOR        704(AX), Y12, Y4
	VPSLLQ       $0x1c, Y0, Y5
	VPSLLQ       $0x14, Y1, Y6
	VPSLLQ       $0x03, Y2, Y7
	VPSLLQ       $0x2d, Y3, Y8
	VPSLLQ       $0x3d, Y4, Y9
	VPSRLQ       $0x24, Y0, Y0
	VPSRLQ       $0x2c, Y1, Y1
	VPSRLQ       $0x3d, Y2, Y2
	VPSRLQ       $0x13, Y3, Y3
	VPSRLQ       $0x03, Y4, Y4
	VPOR         Y5, Y0, Y0
	VPOR         Y6, Y1, Y1
	VPOR         Y7, Y2, Y2
	VPOR         Y8, Y3, Y3
	VPOR         Y9, Y4, Y4
	VPANDN       Y2, Y1, Y5
	VPANDN       Y3, Y2, Y6
	VPANDN       Y4, Y3, Y7
	VPANDN       Y0, Y4, Y8
	VPANDN       Y1, Y0, Y9
	VPXOR        Y0, Y5, Y5
	VPXOR        Y1, Y6, Y6
	VPXOR        Y2, Y7, Y7
	VPXOR        Y3, Y8, Y8
	VPXOR        Y4, Y9, Y9
	VMOVDQA      Y5, 320(AX)
	VMOVDQA      Y6, 512(AX)
	VMOVDQA      Y7, 704(AX)
	VMOVDQA      Y8, 96(AX)
	VMOVDQA      Y9, 288(AX)
	VPXOR        32(AX), Y11, Y0
	VPXOR        224(AX), Y12, Y1
	VPXOR        416(AX), Y13, Y2
	VPXOR        608(AX), Y14, Y3
	VPXOR        640(AX), Y10, Y4
	VPSLLQ       $0x01, Y0, Y5
	VPSLLQ       $0x06, Y1, Y6
	VPSLLQ       $0x19, Y2, Y7
	VPSLLQ       $0x08, Y3, Y8
	VPSLLQ       $0x12, Y4, Y9
	VPSRLQ       $0x3f, Y0, Y0
	VPSRLQ       $0x3a, Y1, Y1
	VPSRLQ       $0x27, Y2, Y2
	VPSRLQ       $0x38, Y3, Y3
	VPSRLQ       $0x2e, Y4, Y4
	VPOR         Y5, Y0, Y0
	VPOR         Y6, Y1, Y1
	VPOR         Y7, Y2, Y2
	VPOR         Y8, Y3, Y3
	VPOR         Y9, Y4, Y4
	VPANDN       Y2, Y1, Y5
	VPANDN       Y3, Y2, Y6
	VPANDN       Y4, Y3, Y7
	VPANDN       Y0, Y4, Y8
	VPANDN       Y1, Y0, Y9
	VPXOR        Y0, Y5, Y5
	VPXOR        Y1, Y6, Y6
	VPXOR        Y2, Y7, Y7
	VPXOR        Y3, Y8, Y8
	VPXOR        Y4, Y9, Y9
	VMOVDQA      Y5, 640(AX)
	VMOVDQA      Y6, 32(AX)
	VMOVDQA      Y7, 224(AX)
	VMOVDQA      Y8, 416(AX)
	VMOVDQA      Y9, 608(AX)
	VPXOR        128(AX), Y14, Y0
	VPXOR        160(AX), Y10, Y1
	VPXOR        352(AX), Y11, Y2
	VPXOR        544(AX), Y12, Y3
	VPXOR        736(AX), Y13, Y4
	VPSLLQ       $0x1b, Y0, Y5
	VPSLLQ       $0x24, Y1, Y6
	VPSLLQ       $0x0a, Y2, Y7
	VPSLLQ       $0x0f, Y3, Y8
	VPSLLQ       $0x38, Y4, Y9
	VPSRLQ       $0x25, Y0, Y0
	VPSRLQ       $0x1c, Y1, Y1
	VPSRLQ       $0x36, Y2, Y2
	VPSRLQ       $0x31, Y3, Y3
	VPSRLQ       $0x08, Y4, Y4
	VPOR         Y5, Y0, Y0
	VPOR         Y6, Y1, Y1
	VPOR         Y7, Y2, Y2
	VPOR         Y8, Y3, Y3
	VPOR         Y9, Y4, Y4
	VPANDN       Y2, Y1, Y5
	VPANDN       Y3, Y2, Y6
	VPANDN       Y4, Y3, Y7
	VPANDN       Y0, Y4, Y8
	VPANDN       Y1, Y0, Y9
	VPXOR        Y0, Y5, Y5
	VPXOR        Y1, Y6, Y6
	VPXOR        Y2, Y7, Y7
	VPXOR        Y3, Y8, Y8
	VPXOR        Y4, Y9, Y9
	VMOVDQA      Y5, 160(AX)
	VMOVDQA      Y6, 352(AX)
	VMOVDQA      Y7, 544(AX)
	VMOVDQA      Y8, 736(AX)
	VMOVDQA      Y9, 128(AX)
	VPXOR        64(AX), Y12, Y0
	VPXOR        256(AX), Y13, Y1
	VPXOR        448(AX), Y14, Y2
	VPXOR        480(AX), Y10, Y3
	VPXOR        672(AX), Y11, Y4
	VPSLLQ       $0x3e, Y0, Y5
	VPSLLQ       $0x37, Y1, Y6
	VPSLLQ       $0x27, Y2, Y7
	VPSLLQ       $0x29, Y3, Y8
	VPSLLQ       $0x02, Y4, Y9
	VPSRLQ       $0x02, Y0, Y0
	VPSRLQ       $0x09, Y1, Y1
	VPSRLQ       $0x19, Y2, Y2
	VPSRLQ       $0x17, Y3, Y3
	VPSRLQ       $0x3e, Y4, Y4
	VPOR         Y5, Y0, Y0
	VPOR         Y6, Y1, Y1
	VPOR         Y7, Y2, Y2
	VPOR         Y8, Y3, Y3
	VPOR         Y9, Y4, Y4
	VPANDN       Y2, Y1, Y5
	VPANDN       Y3, Y2, Y6
	VPANDN       Y4, Y3, Y7
	VPANDN       Y0, Y4, Y8
	VPANDN       Y1, Y0, Y9
	VPXOR        Y0, Y5, Y5
	VPXOR        Y1, Y6, Y6
	VPXOR        Y2, Y7, Y7
	VPXOR        Y3, Y8, Y8
	VPXOR        Y4, Y9, Y9
	VMOVDQA      Y5, 480(AX)
	VMOVDQA      Y6, 672(AX)
	VMOVDQA      Y7, 64(AX)
	VMOVDQA      Y8, 256(AX)
	VMOVDQA      Y9, 448(AX)
	VMOVDQA      (AX), Y0
	VMOVDQA      32(AX), Y1
	VMOVDQA      64(AX), Y2
	VMOVDQA      96(AX), Y3
	VMOVDQA      128(AX), Y4
	VPXOR        160(AX), Y0, Y0
	VPXOR        192(AX), Y1, Y1
	VPXOR        224(AX), Y2, Y2
	VPXOR        256(AX), Y3, Y3
	VPXOR        288(AX), Y4, Y4
	VPXOR        320(AX), Y0, Y0
	VPXOR        352(AX), Y1, Y1
	VPXOR        384(AX), Y2, Y2
	VPXOR        416(AX), Y3, Y3
	VPXOR        448(AX), Y4, Y4
	VPXOR        480(AX), Y0, Y0
	VPXOR        512(AX), Y1, Y1
	VPXOR        544(AX), Y2, Y2
	VPXOR        576(AX), Y3, Y3
	VPXOR        608(AX), Y4, Y4
	VPXOR        640(AX), Y0, Y0
	VPXOR        672(AX), Y1, Y1
	VPXOR        704(AX), Y2, Y2
	VPXOR        736(AX), Y3, Y3
	VPXOR        768(AX), Y4, Y4
	VPSLLQ       $0x01, Y1, Y5
	VPSLLQ       $0x01, Y2, Y6
	VPSLLQ       $0x01, Y3, Y7
	VPSLLQ       $0x01, Y4, Y8
	VPSLLQ       $0x01, Y0, Y9
	VPSRLQ       $0x3f, Y1, Y10
	VPSRLQ       $0x3f, Y2, Y11
	VPSRLQ       $0x3f, Y3, Y12
	VPSRLQ       $0x3f, Y4, Y13
	VPSRLQ       $0x3f, Y0, Y14
	VPOR         Y5, Y10, Y10
	VPOR         Y6, Y11, Y11
	VPOR         Y7, Y12, Y12
	VPOR         Y8, Y13, Y13
	VPOR         Y9, Y14, Y14
	VPXOR        Y10, Y4, Y10
	VPXOR        Y11, Y0, Y11
	VPXOR        Y12, Y1, Y12
	VPXOR        Y13, Y2, Y13
	VPXOR        Y14, Y3, Y14
	VPXOR        (AX), Y10, Y0
	VPXOR        512(AX), Y11, Y1
	VPXOR        224(AX), Y12, Y2
	VPXOR        736(AX), Y13, Y3
	VPXOR        448(AX), Y14, Y4
	VPSLLQ       $0x2c, Y1, Y6
	VPSLLQ       $0x2b, Y2, Y7
	VPSLLQ       $0x15, Y3, Y8
	VPSLLQ       $0x0e, Y4, Y9
	VPSRLQ       $0x14, Y1, Y1
	VPSRLQ       $0x15, Y2, Y2
	VPSRLQ       $0x2b, Y3, Y3
	VPSRLQ       $0x32, Y4, Y4
	VPOR         Y6, Y1, Y1
	VPOR         Y7, Y2, Y2
	VPOR         Y8, Y3, Y3
	VPOR         Y9, Y4, Y4
	VPANDN       Y2, Y1, Y5
	VPANDN       Y3, Y2, Y6
	VPANDN       Y4, Y3, Y7
	VPANDN       Y0, Y4, Y8
	VPANDN       Y1, Y0, Y9
	VPXOR        Y0, Y5, Y5
	VPXOR        Y1, Y6, Y6
	VPXOR        Y2, Y7, Y7
	VPXOR        Y3, Y8, Y8
	VPXOR        Y4, Y9, Y9
	VPBROADCASTQ 8(CX), Y0
	VPXOR        Y0, Y5, Y5
	VMOVDQA      Y5, (AX)
	VMOVDQA      Y6, 512(AX)
	VMOVDQA      Y7, 224(AX)
	VMOVDQA      Y8, 736(AX)
	VMOVDQA      Y9, 448(AX)
	VPXOR        576(AX), Y13, Y0
	VPXOR        288(AX), Y14, Y1
	VPXOR        640(AX), Y10, Y2
	VPXOR        352(AX), Y11, Y3
	VPXOR        64(AX), Y12, Y4
	VPSLLQ       $0x1c, Y0, Y5
	VPSLLQ       $0x14, Y1, Y6
	VPSLLQ       $0x03, Y2, Y7
	VPSLLQ       $0x2d, Y3, Y8
	VPSLLQ       $0x3d, Y4, Y9
	VPSRLQ       $0x24, Y0, Y0
	VPSRLQ       $0x2c, Y1, Y1
	VPSRLQ       $0x3d, Y2, Y2
	VPSRLQ       $0x13, Y3, Y3
	VPSRLQ       $0x03, Y4, Y4
	VPOR         Y5, Y0, Y0
	VPOR         Y6, Y1, Y1
	VPOR         Y7, Y2, Y2
	VPOR         Y8, Y3, Y3
	VPOR         Y9, Y4, Y4
	VPANDN       Y2, Y1, Y5
	VPANDN       Y3, Y2, Y6
	VPANDN       Y4, Y3, Y7
	VPANDN       Y0, Y4, Y8
	VPANDN       Y1, Y0, Y9
	VPXOR        Y0, Y5, Y5
	VPXOR        Y1, Y6, Y6
	VPXOR        Y2, Y7, Y7
	VPXOR        Y3, Y8, Y8
	VPXOR        Y4, Y9, Y9
	VMOVDQA      Y5, 640(AX)
	VMOVDQA      Y6, 352(AX)
	VMOVDQA      Y7, 64(AX)
	VMOVDQA      Y8, 576(AX)
	VMOVDQA      Y9, 288(AX)
	VPXOR        192(AX), Y11, Y0
	VPXOR        704(AX), Y12, Y1
	VPXOR        416(AX), Y13, Y2
	VPXOR        128(AX), Y14, Y3
	VPXOR        480(AX), Y10, Y4
	VPSLLQ       $0x01, Y0, Y5
	VPSLLQ       $0x06, Y1, Y6
	VPSLLQ       $0x19, Y2, Y7
	VPSLLQ       $0x08, Y3, Y8
	VPSLLQ       $0x12, Y4, Y9
	VPSRLQ       $0x3f, Y0, Y0
	VPSRLQ       $0x3a, Y1, Y1
	VPSRLQ       $0x27, Y2, Y2
	VPSRLQ       $0x38, Y3, Y3
	VPSRLQ       $0x2e, Y4, Y4
	VPOR         Y5, Y0, Y0
	VPOR         Y6, Y1, Y1
	VPOR         Y7, Y2, Y2
	VPOR         Y8, Y3, Y3
	VPOR         Y9, Y4, Y4
	VPANDN       Y2, Y1, Y5
	VPANDN       Y3, Y2, Y6
	VPANDN       Y4, Y3, Y7
	VPANDN       Y0, Y4, Y8
	VPANDN       Y1, Y0, Y9
	VPXOR        Y0, Y5, Y5
	VPXOR        Y1, Y6, Y6
	VPXOR        Y2, Y7, Y7
	VPXOR        Y3, Y8, Y8
	VPXOR        Y4, Y9, Y9
	VMOVDQA      Y5, 480(AX)
	VMOVDQA      Y6, 192(AX)
	VMOVDQA      Y7, 704(AX)
	VMOVDQA      Y8, 416(AX)
	VMOVDQA      Y9, 128(AX)
	VPXOR        768(AX), Y14, Y0
	VPXOR        320(AX), Y10, Y1
	VPXOR        32(AX), Y11, Y2
	VPXOR        544(AX), Y12, Y3
	VPXOR        256(AX), Y13, Y4
	VPSLLQ       $0x1b, Y0, Y5
	VPSLLQ       $0x24, Y1, Y6
	VPSLLQ       $0x0a, Y2, Y7
	VPSLLQ       $0x0f, Y3, Y8
	VPSLLQ       $0x38, Y4, Y9
	VPSRLQ       $0x25, Y0, Y0
	VPSRLQ       $0x1c, Y1, Y1
	VPSRLQ       $0x36, Y2, Y2
	VPSRLQ       $0x31, Y3, Y3
	VPSRLQ       $0x08, Y4, Y4
	VPOR         Y5, Y0, Y0
	VPOR         Y6, Y1, Y1
	VPOR         Y7, Y2, Y2
	VPOR         Y8, Y3, Y3
	VPOR         Y9, Y4, Y4
	VPANDN       Y2, Y1, Y5
	VPANDN       Y3, Y2, Y6
	VPANDN       Y4, Y3, Y7
	VPANDN       Y0, Y4, Y8
	VPANDN       Y1, Y0, Y9
	VPXOR        Y0, Y5, Y5
	VPXOR        Y1, Y6, Y6
	VPXOR        Y2, Y7, Y7
	VPXOR        Y3, Y8, Y8
	VPXOR        Y4, Y9, Y9
	VMOVDQA      Y5, 320(AX)
	VMOVDQA      Y6, 32(AX)
	VMOVDQA      Y7, 544(AX)
	VMOVDQA      Y8, 256(AX)
	VMOVDQA      Y9, 768(AX)
	VPXOR        384(AX), Y12, Y0
	VPXOR        96(AX), Y13, Y1
	VPXOR        608(AX), Y14, Y2
	VPXOR        160(AX), Y10, Y3
	VPXOR        672(AX), Y11, Y4
	VPSLLQ       $0x3e, Y0, Y5
	VPSLLQ       $0x37, Y1, Y6
	VPSLLQ       $0x27, Y2, Y7
	VPSLLQ       $0x29, Y3, Y8
	VPSLLQ       $0x02, Y4, Y9
	VPSRLQ       $0x02, Y0, Y0
	VPSRLQ       $0x09, Y1, Y1
	VPSRLQ       $0x19, Y2, Y2
	VPSRLQ       $0x17, Y3, Y3
	VPSRLQ       $0x3e, Y4, Y4
	VPOR         Y5, Y0, Y0
	VPOR         Y6, Y1, Y1
	VPOR         Y7, Y2, Y2
	VPOR         Y8, Y3, Y3
	VPOR         Y9, Y4, Y4
	VPANDN       Y2, Y1, Y5
	VPANDN       Y3, Y2, Y6
	VPANDN       Y4, Y3, Y7
	VPANDN       Y0, Y4, Y8
	VPANDN       Y1, Y0, Y9
	VPXOR        Y0, Y5, Y5
	VPXOR        Y1, Y6, Y6
	VPXOR        Y2, Y7, Y7
	VPXOR        Y3, Y8, Y8
	VPXOR        Y4, Y9, Y9
	VMOVDQA      Y5, 160(AX)
	VMOVDQA      Y6, 672(AX)
	VMOVDQA      Y7, 384(AX)
	VMOVDQA      Y8, 96(AX)
	VMOVDQA      Y9, 608(AX)
	VMOVDQA      (AX), Y0
	VMOVDQA      32(AX), Y1
	VMOVDQA      64(AX), Y2
	VMOVDQA      96(AX), Y3
	VMOVDQA      128(AX), Y4
	VPXOR        160(AX), Y0, Y0
	VPXOR        192(AX), Y1, Y1
	VPXOR        224(AX), Y2, Y2
	VPXOR        256(AX), Y3, Y3
	VPXOR        288(AX), Y4, Y4
	VPXOR        320(AX), Y0, Y0
	VPXOR        352(AX), Y1, Y1
	VPXOR        384(AX), Y2, Y2
	VPXOR        416(AX), Y3, Y3
	VPXOR        448(AX), Y4, Y4
	VPXOR        480(AX), Y0, Y0
	VPXOR        512(AX), Y1, Y1
	VPXOR        544(AX), Y2, Y2
	VPXOR        576(AX), Y3, Y3
	VPXOR        608(AX), Y4, Y4
	VPXOR        640(AX), Y0, Y0
	VPXOR        672(AX), Y1, Y1
	VPXOR        704(AX), Y2, Y2
	VPXOR        736(AX), Y3, Y3
	VPXOR        768(AX), Y4, Y4
	VPSLLQ       $0x01, Y1, Y5
	VPSLLQ       $0x01, Y2, Y6
	VPSLLQ       $0x01, Y3, Y7
	VPSLLQ       $0x01, Y4, Y8
	VPSLLQ       $0x01, Y0, Y9
	VPSRLQ       $0x3f, Y1, Y10
	VPSRLQ       $0x3f, Y2, Y11
	VPSRLQ       $0x3f, Y3, Y12
	VPSRLQ       $0x3f, Y4, Y13
	VPSRLQ       $0x3f, Y0, Y14
	VPOR         Y5, Y10, Y10
	VPOR         Y6, Y11, Y11
	VPOR         Y7, Y12, Y12
	VPOR         Y8, Y13, Y13
	VPOR         Y9, Y14, Y14
	VPXOR        Y10, Y4, Y10
	VPXOR        Y11, Y0, Y11
	VPXOR        Y12, Y1, Y12
	VPXOR        Y13, Y2, Y13
	VPXOR        Y14, Y3, Y14
	VPXOR        (AX), Y10, Y0
	VPXOR        352(AX), Y11, Y1
	VPXOR        704(AX), Y12, Y2
	VPXOR        256(AX), Y13, Y3
	VPXOR        608(AX), Y14, Y4
	VPSLLQ       $0x2c, Y1, Y6
	VPSLLQ       $0x2b, Y2, Y7
	VPSLLQ       $0x15, Y3, Y8
	VPSLLQ       $0x0e, Y4, Y9
	VPSRLQ       $0x14, Y1, Y1
	VPSRLQ       $0x15, Y2, Y2
	VPSRLQ       $0x2b, Y3, Y3
	VPSRLQ       $0x32, Y4, Y4
	VPOR         Y6, Y1, Y1
	VPOR         Y7, Y2, Y2
	VPOR         Y8, Y3, Y3
	VPOR         Y9, Y4, Y4
	VPANDN       Y2, Y1, Y5
	VPANDN       Y3, Y2, Y6
	VPANDN       Y4, Y3, Y7
	VPANDN       Y0, Y4, Y8
	VPANDN       Y1, Y0, Y9
	VPXOR        Y0, Y5, Y5
	VPXOR        Y1, Y6, Y6
	VPXOR        Y2, Y7, Y7
	VPXOR        Y3, Y8, Y8
	VPXOR        Y4, Y9, Y9
	VPBROADCASTQ 16(CX), Y0
	VPXOR        Y0, Y5, Y5
	VMOVDQA      Y5, (AX)
	VMOVDQA      Y6, 352(AX)
	VMOVDQA      Y7, 704(AX)
	VMOVDQA      Y8, 256(AX)
	VMOVDQA      Y9, 608(AX)
	VPXOR        736(AX), Y13, Y0
	VPXOR        288(AX), Y14, Y1
	VPXOR        480(AX), Y10, Y2
	VPXOR        32(AX), Y11, Y3
	VPXOR        384(AX), Y12, Y4
	VPSLLQ       $0x1c, Y0, Y5
	VPSLLQ       $0x14, Y1, Y6
	VPSLLQ       $0x03, Y2, Y7
	VPSLLQ       $0x2d, Y3, Y8
	VPSLLQ       $0x3d, Y4, Y9
	VPSRLQ       $0x24, Y0, Y0
	VPSRLQ       $0x2c, Y1, Y1
	VPSRLQ       $0x3d, Y2, Y2
	VPSRLQ       $0x13, Y3, Y3
	VPSRLQ       $0x03, Y4, Y4
	VPOR         Y5, Y0, Y0
	VPOR         Y6, Y1, Y1
	VPOR         Y7, Y2, Y2
	VPOR         Y8, Y3, Y3
	VPOR         Y9, Y4, Y4
	VPANDN       Y2, Y1, Y5
	VPANDN       Y3, Y2, Y6
	VPANDN       Y4, Y3, Y7
	VPANDN       Y0, Y4, Y8
	VPANDN       Y1, Y0, Y9
	VPXOR        Y0, Y5, Y5
	VPXOR        Y1, Y6, Y6
	VPXOR        Y2, Y7, Y7
	VPXOR        Y3, Y8, Y8
	VPXOR        Y4, Y9, Y9
	VMOVDQA      Y5, 480(AX)
	VMOVDQA      Y6, 32(AX)
	VMOVDQA      Y7, 384(AX)
	VMOVDQA      Y8, 736(AX)
	VMOVDQA      Y9, 288(AX)
	VPXOR        512(AX), Y11, Y0
	VPXOR        64(AX), Y12, Y1
	VPXOR        416(AX), Y13, Y2
	VPXOR        768(AX), Y14, Y3
	VPXOR        160(AX), Y10, Y4
	VPSLLQ       $0x01, Y0, Y5
	VPSLLQ       $0x06, Y1, Y6
	VPSLLQ       $0x19, Y2, Y7
	VPSLLQ       $0x08, Y3, Y8
	VPSLLQ       $0x12, Y4, Y9
	VPSRLQ       $0x3f, Y0, Y0
	VPSRLQ       $0x3a, Y1, Y1
	VPSRLQ       $0x27, Y2, Y2
	VPSRLQ       $0x38, Y3, Y3
	VPSRLQ       $0x2e, Y4, Y4
	VPOR         Y5, Y0, Y0
	VPOR         Y6, Y1, Y1
	VPOR         Y7, Y2, Y2
	VPOR         Y8, Y3, Y3
	VPOR         Y9, Y4, Y4
	VPANDN       Y2, Y1, Y5
	VPANDN       Y3, Y2, Y6
	VPANDN       Y4, Y3, Y7
	VPANDN       Y0, Y4, Y8
	VPANDN       Y1, Y0, Y9
	VPXOR        Y0, Y5, Y5
	VPXOR        Y1, Y6, Y6
	VPXOR        Y2, Y7, Y7
	VPXOR        Y3, Y8, Y8
	VPXOR        Y4, Y9, Y9
	VMOVDQA      Y5, 160(AX)
	VMOVDQA      Y6, 512(AX)
	VMOVDQA      Y7, 64(AX)
	VMOVDQA      Y8, 416(AX)
	VMOVDQA      Y9, 768(AX)
	VPXOR        448(AX), Y14, Y0
	VPXOR        640(AX), Y10, Y1
	VPXOR        192(AX), Y11, Y2
	VPXOR        544(AX), Y12, Y3
	VPXOR        96(AX), Y13, Y4
	VPSLLQ       $0x1b, Y0, Y5
	VPSLLQ       $0x24, Y1, Y6
	VPSLLQ       $0x0a, Y2, Y7
	VPSLLQ       $0x0f, Y3, Y8
	VPSLLQ       $0x38, Y4, Y9
	VPSRLQ       $0x25, Y0, Y0
	VPSRLQ       $0x1c, Y1, Y1
	VPSRLQ       $0x36, Y2, Y2
	VPSRLQ       $0x31, Y3, Y3
	VPSRLQ       $0x08, Y4, Y4
	VPOR         Y5, Y0, Y0
	VPOR         Y6, Y1, Y1
	VPOR         Y7, Y2, Y2
	VPOR         Y8, Y3, Y3
	VPOR         Y9, Y4, Y4
	VPANDN       Y2, Y1, Y5
	VPANDN       Y3, Y2, Y6
	VPANDN       Y4, Y3, Y7
	VPANDN       Y0, Y4, Y8
	VPANDN       Y1, Y0, Y9
	VPXOR        Y0, Y5, Y5
	VPXOR        Y1, Y6, Y6
	VPXOR        Y2, Y7, Y7
	VPXOR        Y3, Y8, Y8
	VPXOR        Y4, Y9, Y9
	VMOVDQA      Y5, 640(AX)
	VMOVDQA      Y6, 192(AX)
	VMOVDQA      Y7, 544(AX)
	VMOVDQA      Y8, 96(AX)
	VMOVDQA      Y9, 448(AX)
	VPXOR        224(AX), Y12, Y0
	VPXOR        576(AX), Y13, Y1
	VPXOR        128(AX), Y14, Y2
	VPXOR        320(AX), Y10, Y3
	VPXOR        672(AX), Y11, Y4
	VPSLLQ       $0x3e, Y0, Y5
	VPSLLQ       $0x37, Y1, Y6
	VPSLLQ       $0x27, Y2, Y7
	VPSLLQ       $0x29, Y3, Y8
	VPSLLQ       $0x02, Y4, Y9
	VPSRLQ       $0x02, Y0, Y0
	VPSRLQ       $0x09, Y1, Y1
	VPSRLQ       $0x19, Y2, Y2
	VPSRLQ       $0x17, Y3, Y3
	VPSRLQ       $0x3e, Y4, Y4
	VPOR         Y5, Y0, Y0
	VPOR         Y6, Y1, Y1
	VPOR         Y7, Y2, Y2
	VPOR         Y8, Y3, Y3
	VPOR         Y9, Y4, Y4
	VPANDN       Y2, Y1, Y5
	VPANDN       Y3, Y2, Y6
	VPANDN       Y4, Y3, Y7
	VPANDN       Y0, Y4, Y8
	VPANDN       Y1, Y0, Y9
	VPXOR        Y0, Y5, Y5
	VPXOR        Y1, Y6, Y6
	VPXOR        Y2, Y7, Y7
	VPXOR        Y3, Y8, Y8
	VPXOR        Y4, Y9, Y9
	VMOVDQA      Y5, 320(AX)
	VMOVDQA      Y6, 672(AX)
	VMOVDQA      Y7, 224(AX)
	VMOVDQA      Y8, 576(AX)
	VMOVDQA      Y9, 128(AX)
	VMOVDQA      (AX), Y0
	VMOVDQA      32(AX), Y1
	VMOVDQA      64(AX), Y2
	VMOVDQA      96(AX), Y3
	VMOVDQA      128(AX), Y4
	VPXOR        160(AX), Y0, Y0
	VPXOR        192(AX), Y1, Y1
	VPXOR        224(AX), Y2, Y2
	VPXOR        256(AX), Y3, Y3
	VPXOR        288(AX), Y4, Y4
	VPXOR        320(AX), Y0, Y0
	VPXOR        352(AX), Y1, Y1
	VPXOR        384(AX), Y2, Y2
	VPXOR        416(AX), Y3, Y3
	VPXOR        448(AX), Y4, Y4
	VPXOR        480(AX), Y0, Y0
	VPXOR        512(AX), Y1, Y1
	VPXOR        544(AX), Y2, Y2
	VPXOR        576(AX), Y3, Y3
	VPXOR        608(AX), Y4, Y4
	VPXOR        640(AX), Y0, Y0
	VPXOR        672(AX), Y1, Y1
	VPXOR        704(AX), Y2, Y2
	VPXOR        736(AX), Y3, Y3
	VPXOR        768(AX), Y4, Y4
	VPSLLQ       $0x01, Y1, Y5
	VPSLLQ       $0x01, Y2, Y6
	VPSLLQ       $0x01, Y3, Y7
	VPSLLQ       $0x01, Y4, Y8
	VPSLLQ       $0x01, Y0, Y9
	VPSRLQ       $0x3f, Y1, Y10
	VPSRLQ       $0x3f, Y2, Y11
	VPSRLQ       $0x3f, Y3, Y12
	VPSRLQ       $0x3f, Y4, Y13
	VPSRLQ       $0x3f, Y0, Y14
	VPOR         Y5, Y10, Y10
	VPOR         Y6, Y11, Y11
	VPOR         Y7, Y12, Y12
	VPOR         Y8, Y13, Y13
	VPOR         Y9, Y14, Y14
	VPXOR        Y10, Y4, Y10
	VPXOR        Y11, Y0, Y11
	VPXOR        Y12, Y1, Y12
	VPXOR        Y13, Y2, Y13
	VPXOR        Y14, Y3, Y14
	VPXOR        (AX), Y10, Y0
	VPXOR        32(AX), Y11, Y1
	VPXOR        64(AX), Y12, Y2
	VPXOR        96(AX), Y13, Y3
	VPXOR        128(AX), Y14, Y4
	VPSLLQ       $0x2c, Y1, Y6
	VPSLLQ       $0x2b, Y2, Y7
	VPSLLQ       $0x15, Y3, Y8
	VPSLLQ       $0x0e, Y4, Y9
	VPSRLQ       $0x14, Y1, Y1
	VPSRLQ       $0x15, Y2, Y2
	VPSRLQ       $0x2b, Y3, Y3
	VPSRLQ       $0x32, Y4, Y4
	VPOR         Y6, Y1, Y1
	VPOR         Y7, Y2, Y2
	VPOR         Y8, Y3, Y3
	VPOR         Y9, Y4, Y4
	VPANDN       Y2, Y1, Y5
	VPANDN       Y3, Y2, Y6
	VPANDN       Y4, Y3, Y7
	VPANDN       Y0, Y4, Y8
	VPANDN       Y1, Y0, Y9
	VPXOR        Y0, Y5, Y5
	VPXOR        Y1, Y6, Y6
	VPXOR        Y2, Y7, Y7
	VPXOR        Y3, Y8, Y8
	VPXOR        Y4, Y9, Y9
	VPBROADCASTQ 24(CX), Y0
	VPXOR        Y0, Y5, Y5
	VMOVDQA      Y5, (AX)
	VMOVDQA      Y6, 32(AX)
	VMOVDQA      Y7, 64(AX)
	VMOVDQA      Y8, 96(AX)
	VMOVDQA      Y9, 128(AX)
	VPXOR        256(AX), Y13, Y0
	VPXOR        288(AX), Y14, Y1
	VPXOR        160(AX), Y10, Y2
	VPXOR        192(AX), Y11, Y3
	VPXOR        224(AX), Y12, Y4
	VPSLLQ       $0x1c, Y0, Y5
	VPSLLQ       $0x14, Y1, Y6
	VPSLLQ       $0x03, Y2, Y7
	VPSLLQ       $0x2d, Y3, Y8
	VPSLLQ       $0x3d, Y4, Y9
	VPSRLQ       $0x24, Y0, Y0
	VPSRLQ       $0x2c, Y1, Y1
	VPSRLQ       $0x3d, Y2, Y2
	VPSRLQ       $0x13, Y3, Y3
	VPSRLQ       $0x03, Y4, Y4
	VPOR         Y5, Y0, Y0
	VPOR         Y6, Y1, Y1
	VPOR         Y7, Y2, Y2
	VPOR         Y8, Y3, Y3
	VPOR         Y9, Y4, Y4
	VPANDN       Y2, Y1, Y5
	VPANDN       Y3, Y2, Y6
	VPANDN       Y4, Y3, Y7
	VPANDN       Y0, Y4, Y8
	VPANDN       Y1, Y0, Y9
	VPXOR        Y0, Y5, Y5
	VPXOR        Y1, Y6, Y6
	VPXOR        Y2, Y7, Y7
	VPXOR        Y3, Y8, Y8
	VPXOR        Y4, Y9, Y9
	VMOVDQA      Y5, 160(AX)
	VMOVDQA      Y6, 192(AX)
	VMOVDQA      Y7, 224(AX)
	VMOVDQA      Y8, 256(AX)
	VMOVDQA      Y9, 288(AX)
	VPXOR        352(AX), Y11, Y0
	VPXOR        384(AX), Y12, Y1
	VPXOR        416(AX), Y13, Y2
	VPXOR        448(AX), Y14, Y3
	VPXOR        320(AX), Y10, Y4
	VPSLLQ       $0x01, Y0, Y5
	VPSLLQ       $0x06, Y1, Y6
	VPSLLQ       $0x19, Y2, Y7
	VPSLLQ       $0x08, Y3, Y8
	VPSLLQ       $0x12, Y4, Y9
	VPSRLQ       $0x3f, Y0, Y0
	VPSRLQ       $0x3a, Y1, Y1
	VPSRLQ       $0x27, Y2, Y2
	VPSRLQ       $0x38, Y3, Y3
	VPSRLQ       $0x2e, Y4, Y4
	VPOR         Y5, Y0, Y0
	VPOR         Y6, Y1, Y1
	VPOR         Y7, Y2, Y2
	VPOR         Y8, Y3, Y3
	VPOR         Y9, Y4, Y4
	VPANDN       Y2, Y1, Y5
	VPANDN       Y3, Y2, Y6
	VPANDN       Y4, Y3, Y7
	VPANDN       Y0, Y4, Y8
	VPANDN       Y1, Y0, Y9
	VPXOR        Y0, Y5, Y5
	VPXOR        Y1, Y6, Y6
	VPXOR        Y2, Y7, Y7
	VPXOR        Y3, Y8, Y8
	VPXOR        Y4, Y9, Y9
	VMOVDQA      Y5, 320(AX)
	VMOVDQA      Y6, 352(AX)
	VMOVDQA      Y7, 384(AX)
	VMOVDQA      Y8, 416(AX)
	VMOVDQA      Y9, 448(AX)
	VPXOR        608(AX), Y14, Y0
	VPXOR        480(AX), Y10, Y1
	VPXOR        512(AX), Y11, Y2
	VPXOR        544(AX), Y12, Y3
	VPXOR        576(AX), Y13, Y4
	VPSLLQ       $0x1b, Y0, Y5
	VPSLLQ       $0x24, Y1, Y6
	VPSLLQ       $0x0a, Y2, Y7
	VPSLLQ       $0x0f, Y3, Y8
	VPSLLQ       $0x38, Y4, Y9
	VPSRLQ       $0x25, Y0, Y0
	VPSRLQ       $0x1c, Y1, Y1
	VPSRLQ       $0x36, Y2, Y2
	VPSRLQ       $0x31, Y3, Y3
	VPSRLQ       $0x08, Y4, Y4
	VPOR         Y5, Y0, Y0
	VPOR         Y6, Y1, Y1
	VPOR         Y7, Y2, Y2
	VPOR         Y8, Y3, Y3
	VPOR         Y9, Y4, Y4
	VPANDN       Y2, Y1, Y5
	VPANDN       Y3, Y2, Y6
	VPANDN       Y4, Y3, Y7
	VPANDN       Y0, Y4, Y8
	VPANDN       Y1, Y0, Y9
	VPXOR        Y0, Y5, Y5
	VPXOR        Y1, Y6, Y6
	VPXOR        Y2, Y7, Y7
	VPXOR        Y3, Y8, Y8
	VPXOR        Y4, Y9, Y9
	VMOVDQA      Y5, 480(AX)
	VMOVDQA      Y6, 512(AX)
	VMOVDQA      Y7, 544(AX)
	VMOVDQA      Y8, 576(AX)
	VMOVDQA      Y9, 608(AX)
	VPXOR        704(AX), Y12, Y0
	VPXOR        736(AX), Y13, Y1
	VPXOR        768(AX), Y14, Y2
	VPXOR        640(AX), Y10, Y3
	VPXOR        672(AX), Y11, Y4
	VPSLLQ       $0x3e, Y0, Y5
	VPSLLQ       $0x37, Y1, Y6
	VPSLLQ       $0x27, Y2, Y7
	VPSLLQ       $0x29, Y3, Y8
	VPSLLQ       $0x02, Y4, Y9
	VPSRLQ       $0x02, Y0, Y0
	VPSRLQ       $0x09, Y1, Y1
	VPSRLQ       $0x19, Y2, Y2
	VPSRLQ       $0x17, Y3, Y3
	VPSRLQ       $0x3e, Y4, Y4
	VPOR         Y5, Y0, Y0
	VPOR         Y6, Y1, Y1
	VPOR         Y7, Y2, Y2
	VPOR         Y8, Y3, Y3
	VPOR         Y9, Y4, Y4
	VPANDN       Y2, Y1, Y5
	VPANDN       Y3, Y2, Y6
	VPANDN       Y4, Y3, Y7
	VPANDN       Y0, Y4, Y8
	VPANDN       Y1, Y0, Y9
	VPXOR        Y0, Y5, Y5
	VPXOR        Y1, Y6, Y6
	VPXOR        Y2, Y7, Y7
	VPXOR        Y3, Y8, Y8
	VPXOR        Y4, Y9, Y9
	VMOVDQA      Y5, 640(AX)
	VMOVDQA      Y6, 672(AX)
	VMOVDQA      Y7, 704(AX)
	VMOVDQA      Y8, 736(AX)
	VMOVDQA      Y9, 768(AX)
	ADDQ         $0x20, CX
	SUBQ         $0x00000001, DX
	JNZ          loop
	RET
