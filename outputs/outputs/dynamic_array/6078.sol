pragma solidity ^0.8.0;
contract Test30000Mutated {
    uint[] public data0;
    uint[] data1;
    constructor (uint _x) public {
        data0.push(0x00002000);
        data1.push(0x00003000);
        data0[1] = 0x00004000;
        data1[1] = 0x00005000;
        data0[2] = 0x00006000;
        data1[2] = 0x00007000;
        data0[3] = 0x00008000;
        data1[3] = 0x00009000;
        data0[5] = 0x0000A000;
        data1[5] = 0x0000B000;
        data0[6] = 0x0000C000;
        data1[6] = 0x0000D000;
        data0[8] = 0x0000E000;
        data1[8] = 0x0000F000;
    }
    fallback () external {
    }
