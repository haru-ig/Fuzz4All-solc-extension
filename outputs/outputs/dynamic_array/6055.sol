pragma solidity ^0.8.0;
contract Mock29999Mutated {
    uint[] public data0;
    uint[] data1;
    constructor () public {
    }
    function create2 (uint _size) external {
        data0.push(0x00200000);
        data1.push(0x00300000);
        data0[2] = 0x00400000;
        data1[2] = 0x00500000;
        data0[3] = 0x00600000;
        data1[3] = 0x00700000;
        data0[8] = 0x00800000;
        data1[8] = 0x00900000;
        data0[_size] = 0x00A00000;
        data1[_size] = 0x00B00000;
        data0++;
        data1++;
    }
    fallback () external {
    }
    receive () external pure returns (uint) {
        return 0;
    }
}
