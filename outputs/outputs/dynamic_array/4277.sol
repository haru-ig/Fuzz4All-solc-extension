pragma solidity ^0.8.0;
contract G1 {
    mapping(uint8 => uint8) _data;
    constructor() public {
        _data[2] = 9;
        _data[8] += _data[2];
    }
}
contract G2 {
    mapping(uint => uint[]) _data;
    constructor() public {
        _data[9] = new uint[](2);
        _data[8] = new uint[](2);
        _data[8][0] += _data[9][0];
        _data[8][1] += _data[9][1];
    }
}
