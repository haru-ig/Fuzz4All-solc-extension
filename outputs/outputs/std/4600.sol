pragma solidity ^0.8.0;
contract SampleMemory {
    uint256[10] public data;
    constructor() public {
        data[0] = 1;
        data[1] = 2;
        data[2] = 3;
        data[3] = 4;
        data[4] = 5;
        data[5] = 6;
        data[6] = UINT256_MAX;
        data[7] = 7;
        data[8] = 8;
        data[9] = 9;
        data[10] = 10;
    }
}
