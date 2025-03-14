pragma solidity ^0.8.0;
contract G5 {
    uint[3] _data;
    constructor() public {
        _data[1] = new uint[](3);
        _data[2] = new uint[](3);
        _data[2][0] = 5;
        _data[2][1] = 4;
        _data[2][2] = 3;
    }
}
