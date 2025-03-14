pragma solidity ^0.8.0;
contract Array_50 {
    uint256[] public array;
    uint64[] public adr;
    uint64[] public a1;
    uint64[] public a2;
    uint64[] public a3;
    uint64[] public a4;
    uint64[] public a5;
    uint64[] public a6;
    uint64[] public a7;
    uint64[] public a8;
    address[] public a9;
    address[] public a10;
    }

    function f(uint256 d, uint256 n, uint256 d2, uint256 a0, uint256 a1, uint256 a2, uint256 a3, uint256 a4, uint256 a5, uint256 a6) public {
        uint64[] memory r1 = new uint64[](1);
        uint64[] memory r2 = new uint64[](1);
        uint64[] memory r3 = new uint64[](1);
        uint64[] memory r4 = new uint64[](1);
        uint64[] memory r5 = new uint64[](1);
        uint64[] memory r6 = new uint64[](1);
        uint64[] memory r7 = new uint64[](1);
        uint64[] memory r8 = new uint64[](1);
        uint64[] memory r9 = new uint64[](1);
        uint64[] memory r10 = new uint64[](1);
        do {
            array[1] = n;
            array[2] = d;
            array[3] = a0;
            array[4] = a1;
            array[5] = a2;
            array[6] = a3;
            array[7] = a4;
            array[8] = a5;
            array[9] = a6;
            array[0] = this;
            adr[0] = 0x0;
            a1[1] = 1;
            a2[1] = 1;
            a3[1] = 1;
            a4[1] = 1;
            a5[1] = 1;
            a6[1] = 1;
            a7[1] = 1;
            a8[1] = 1;
            a9[1] = 1;
            a10[1] = 1;
            for (n = 1; n <= 7; n++) {
                adr[n] = add(adr[n - 1], mul(2U, uint256(2 - n)));
                a1[n]
