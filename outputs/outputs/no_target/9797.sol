pragma solidity ^0.8.0;
contract c {

    struct M1 {
        uint m1;
    }
    struct M2 {
        uint m2;
    }
    struct M3 {
        uint m3;
    }

    uint m0;
    uint m1;
    uint m2;
    uint m3;
    uint m4;
    uint m5;
    uint m6;
    uint32 m7;
    uint256 m8;
    uint8 m9;
    uint m10;
    uint16 m11;
    uint m12;
    uint256[2] m13;
    bytes[2][3] m14;
    M1[2] m15;
    M2[2][2] m16;
    M3[3] m17;

    struct M10 {
        uint m10;
    }
    struct M11 {
        uint m11;
    }

    address a;
    mapping (uint => uint) s;
    event a1 (uint a1, uint a2);
    function f1() public returns (uint32 r) {
        M1[2] memory M16;
        M10 memory M11 = M10(0);
        M11.m11 = a1;
        M16[1] = M10(M11);
        M1[1].m1 = a1;
        M1[1] = M10(M10(0));
        M10 memory M14 = M10(0);
        M10 memory M13 = M10(0);
        M13.m10 = a1;
        M10 memory M14b;
        M16[1] = M10(M13);
        M16[1] = M14;
        M16[1] = M14b;
        M16[1] = M14b;
        M16[1] = M14b;
        M16[1] = M14b;
        M16[1] = M14b;
        M16[1] = M14b;
        M16[19][18] memory M14b;
        M10 memory M14;
        M11 memory M15;
        M15.m11 = a1;
        M16[1][0] = M10(M15);
        M11 memory M15b;
        M15.m11 = a1;
        M15.m11 = a1;
        M16[2][1][1] = M14b;
        M11 memory M15b;
        M15.m11 = a1;
        M10 memory M15;
        M11 memory M15b;
        M10 memory M15b;
        M10 memory M15
