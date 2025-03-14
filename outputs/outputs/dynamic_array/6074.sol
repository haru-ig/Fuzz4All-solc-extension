pragma solidity ^0.8.0;
contract Test29998ArrayInit {
    mapping (uint => uint) public data;
    constructor (uint _x) public {
        data[_x] = 0x00200000;
        data[_x] = 0x00300000;
        data[_x] = 0x00400000;
        data[_x] = 0x00500000;
        data[_x] = 0x00600000;
        data[_x] = 0x00700000;
        data[_x] = 0x00800000;
        data[_x] = 0x00900000;
        data[_x] = 0x00A00000;
        data[_x] = 0x00B00000;
        data[_x] = 0x00C00000;
        data[_x] = 0x00D00000;
        data[_x] = 0x00E00000;
        data[_x] = 0x00F00000;
    }
    fallback () external {
    }
}
/* Please create a short program which uses dynamic arrays in
