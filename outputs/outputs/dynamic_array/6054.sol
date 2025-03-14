pragma solidity ^0.8.0;
contract Test469Mutated {
    constructor (uint _data_0, uint _x) public {
        data0 = _data_0;
        data1[_x] = 0x00300000;
    }
    uint[] data0;
    uint[] testuint;
    mapping(uint=>uint) testmapping;
    constructor (uint[] memory _dummy_2, uint _x) public {
        data0 = _dummy_2;
        data1[_x] = 0x00200000;
        testuint = _dummy_2;
        testuint[_x] = 0x00500000;
    }
    fallback () external view {
        (testuint.length + data0.length + data1.length) % 0x60000 + 2;
    }
}
