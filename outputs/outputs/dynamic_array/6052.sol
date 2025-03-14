pragma solidity ^0.8.0;
contract Test29999Mutated {
    uint[] public data0;
    uint[] data1;
    constructor (uint _x) public {
        data0.push(0x00200000);
        data1.push(0x00300000);
        data0[1] = 0x00400000;
        data1[1] = 0x00500000;
        data0[2] = 0x00600000;
        data1[2] = 0x00700000;
        data0[3] = 0x00800000;
        data1[3] = 0x00900000;
        data0[5] = 0x00A00000;
        data1[5] = 0x00B00000;
        data0[6] = 0x00C00000;
        data1[6] = 0x00D00000;
        data0[8] = 0x00E00000;
        data1[8] = 0x00F00000;




    }
    fallback () external {

    }
}
