pragma solidity ^0.8.0;
contract Example {
    uint x;
    uint y;
    uint z;
    constructor(uint _x) public {
        uint _tmp = _x + 10;
        if (z > _x) revert("Invalid input");
        z = _tmp;
        x = 10;
    }
}
