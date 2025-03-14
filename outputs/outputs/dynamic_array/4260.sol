pragma solidity ^0.8.0;
contract G2 {
    uint8[] _x = [1, 2, 3];
    uint8[] _y = new uint8[](4);
    uint8[] _z;

    constructor() public {
        _z = _x;
    }
}
