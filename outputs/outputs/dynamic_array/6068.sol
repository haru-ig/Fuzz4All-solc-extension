pragma solidity ^0.8.0;
contract Test30000Mutated {
    uint[] public data0;
    uint[] data1;
    constructor (uint _x) public {
        data0.push(0x00200000);
        uint[] memory temp;
        data1.push(temp);
        data0[1] = 0x00300000;
        data1[1] = 0x00400000;
        data0[2] = 0x00500000;
        uint[] memory temp1;
        data1[2] = temp1;
        data1[2][0] = 0x00500000;
        uint[] memory temp2;
        data0[3] = temp2;
        data0[3][0] = 0x00600000;
        uint[] memory temp3;
        data1[3] = temp3;
        data1[3][1] = 0x00700000;
        uint[] memory temp4;
        data0[5] = temp4;
        data0[5][1] = 0x00800000;
        uint[] memory temp5;
        data1[5] = temp5;
        data1[5][2] = 0x009
